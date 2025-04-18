; ModuleID = 'src/coucal.c'
source_filename = "src/coucal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_coucal = type { ptr, i64, i64, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon = type { [16 x %struct.coucal_item], i64 }
%struct.coucal_item = type { ptr, %union.coucal_value, %struct.coucal_hashkeys }
%union.coucal_value = type { i64 }
%struct.coucal_hashkeys = type { i32, i32 }
%struct.anon.0 = type { ptr, i64, i64, i64 }
%struct.anon.1 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.2 = type { %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6 }
%struct.anon.3 = type { ptr, ptr }
%struct.anon.4 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.5 = type { ptr, ptr, ptr, ptr }
%struct.anon.6 = type { ptr, ptr, ptr }
%union.anon = type { [4 x i32] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.struct_coucal_enum = type { ptr, i64 }

@.str = private unnamed_addr constant [59 x i8] c"stash size still full despite %ld elements used out of %ld\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [46 x i8] c"coucal_is_acceptable_pow2(hashtable->lg_size)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"src/coucal.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [60 x i8] c"** hashtable allocation error: could not allocate %ld bytes\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"! \22hashtable allocation error\22\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [17 x i8] c"pos >= prev_size\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [55 x i8] c"! \22hashtable unexpected internal error (bad position)\22\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [35 x i8] c"expanded hashtable to %ld elements\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [51 x i8] c"! \22hashtable duplicate key when merging the stash\22\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [34 x i8] c"hashtable->stash.size <= old_size\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [35 x i8] c"reduced stash size from %ld to %ld\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [29 x i8] c"stash has still %ld elements\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [21 x i8] c"hashtable->used != 0\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [41 x i8] c"debug:moved item from stash (%d entries)\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [36 x i8] c"( dup == NULL ) == ( free == NULL )\00", align 1, !dbg !69
@global_log_handler = internal global ptr null, align 8, !dbg !74
@global_assert_handler = internal global ptr null, align 8, !dbg !407
@the_empty_string = internal global [1 x i8] zeroinitializer, align 1, !dbg !268
@.str.15 = private unnamed_addr constant [28 x i8] c"the_empty_string[0] == '\\0'\00", align 1, !dbg !251
@.str.16 = private unnamed_addr constant [49 x i8] c"hashtable->pool.size <= hashtable->pool.capacity\00", align 1, !dbg !256
@.str.17 = private unnamed_addr constant [32 x i8] c"hashtable->pool.size < capacity\00", align 1, !dbg !261
@.str.18 = private unnamed_addr constant [55 x i8] c"len + hashtable->pool.size <= hashtable->pool.capacity\00", align 1, !dbg !266
@.str.19 = private unnamed_addr constant [34 x i8] c"hashtable->custom.key.dup == NULL\00", align 1, !dbg !273
@.str.20 = private unnamed_addr constant [72 x i8] c"** hashtable string pool allocation error: could not allocate %ld bytes\00", align 1, !dbg !275
@.str.21 = private unnamed_addr constant [43 x i8] c"! \22hashtable string pool allocation error\22\00", align 1, !dbg !280
@.str.22 = private unnamed_addr constant [34 x i8] c"offset < hashtable->pool.capacity\00", align 1, !dbg !285
@.str.23 = private unnamed_addr constant [51 x i8] c"reallocated string pool for %ld strings: %ld bytes\00", align 1, !dbg !287
@.str.24 = private unnamed_addr constant [72 x i8] c"** hashtable string pool compaction error: could not allocate %ld bytes\00", align 1, !dbg !289
@.str.25 = private unnamed_addr constant [43 x i8] c"! \22hashtable string pool compaction error\22\00", align 1, !dbg !291
@.str.26 = private unnamed_addr constant [16 x i8] c"dest < max_dest\00", align 1, !dbg !293
@.str.27 = private unnamed_addr constant [20 x i8] c"&dest[i] < max_dest\00", align 1, !dbg !296
@.str.28 = private unnamed_addr constant [33 x i8] c"hashtable->pool.size <= capacity\00", align 1, !dbg !301
@.str.29 = private unnamed_addr constant [62 x i8] c"compacted string pool for %ld strings: %ld bytes => %ld bytes\00", align 1, !dbg !306
@.str.30 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1, !dbg !311
@stderr = external global ptr, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"[%p] \00", align 1, !dbg !316
@.str.32 = private unnamed_addr constant [33 x i8] c"hashtable %s: %s failed at %s:%d\00", align 1, !dbg !321
@.str.33 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1, !dbg !323
@.str.34 = private unnamed_addr constant [32 x i8] c"assertion '%s' failed at %s:%d\0A\00", align 1, !dbg !328
@.str.35 = private unnamed_addr constant [38 x i8] c"debug:collision with '%s' at %ld (%x)\00", align 1, !dbg !330
@.str.36 = private unnamed_addr constant [39 x i8] c"\09debug:placing cuckoo '%s' at %ld (%x)\00", align 1, !dbg !335
@.str.37 = private unnamed_addr constant [20 x i8] c"debug:free position\00", align 1, !dbg !340
@.str.38 = private unnamed_addr constant [18 x i8] c"\09debug:position 1\00", align 1, !dbg !342
@.str.39 = private unnamed_addr constant [18 x i8] c"\09debug:position 2\00", align 1, !dbg !347
@.str.40 = private unnamed_addr constant [50 x i8] c"! \22hashtable internal error: unexpected position\22\00", align 1, !dbg !349
@.str.41 = private unnamed_addr constant [45 x i8] c"used stash because of collision (%d entries)\00", align 1, !dbg !354
@.str.42 = private unnamed_addr constant [69 x i8] c"stash[%u]: key='%s' value='%s' pos1=%d pos2=%d hash1=%04x hash2=%04x\00", align 1, !dbg !359
@.str.43 = private unnamed_addr constant [81 x i8] c"\09.. collisionning with key='%s' value='%s' pos1=%d pos2=%d hash1=%04x hash2=%04x\00", align 1, !dbg !364
@.str.44 = private unnamed_addr constant [41 x i8] c"\09.. collisionning with a free slot (%d)!\00", align 1, !dbg !369
@.str.45 = private unnamed_addr constant [53 x i8] c"! \22hashtable internal error: cuckoo/stash collision\22\00", align 1, !dbg !371
@.str.46 = private unnamed_addr constant [4 x i8] c"ret\00", align 1, !dbg !376
@.str.47 = private unnamed_addr constant [41 x i8] c"debug:deleted item in stash (%d entries)\00", align 1, !dbg !381
@.str.48 = private unnamed_addr constant [57 x i8] c"*name != '\\0' || !\22duplicate or bad string pool release\22\00", align 1, !dbg !383
@.str.49 = private unnamed_addr constant [32 x i8] c"hashtable->pool.used < capacity\00", align 1, !dbg !388
@.str.50 = private unnamed_addr constant [245 x i8] c"hashtable %s%s%ssummary: size=%ld (lg2=%ld) used=%ld stash-size=%ld pool-size=%ld pool-capacity=%ld pool-used=%ld writes=%ld (new=%ld) moved=%ld stashed=%ld max-stash-size=%ld avg-moved=%g rehash=%ld pool-compact=%ld pool-realloc=%ld memory=%ld\00", align 1, !dbg !390
@.str.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !395
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !400
@.str.53 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1, !dbg !402

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_get_name(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !422
  %3 = load ptr, ptr %2, align 8, !dbg !423
  %4 = getelementptr inbounds %struct.struct_coucal, ptr %3, i32 0, i32 6, !dbg !424
  %5 = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 2, !dbg !425
  %6 = getelementptr inbounds %struct.anon.5, ptr %5, i32 0, i32 3, !dbg !426
  %7 = load ptr, ptr %6, align 8, !dbg !426
  ret ptr %7, !dbg !427
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_hash_data(ptr noundef %0, i64 noundef %1) #0 !dbg !428 {
  %3 = alloca %struct.coucal_hashkeys, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.anon, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !431, metadata !DIExpression()), !dbg !432
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata ptr %6, metadata !435, metadata !DIExpression()), !dbg !437
  %8 = load ptr, ptr %4, align 8, !dbg !438
  store ptr %8, ptr %6, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %7, metadata !439, metadata !DIExpression()), !dbg !445
  %9 = load ptr, ptr %6, align 8, !dbg !446
  %10 = load i64, ptr %5, align 8, !dbg !447
  %11 = trunc i64 %10 to i32, !dbg !448
  call void @MurmurHash3_x86_128(ptr noundef %9, i32 noundef %11, i32 noundef 42, ptr noundef %7), !dbg !449
  %12 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2, !dbg !450
  %13 = load i32, ptr %12, align 4, !dbg !450
  %14 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 0, !dbg !451
  %15 = load i32, ptr %14, align 4, !dbg !452
  %16 = xor i32 %15, %13, !dbg !452
  store i32 %16, ptr %14, align 4, !dbg !452
  %17 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3, !dbg !453
  %18 = load i32, ptr %17, align 4, !dbg !453
  %19 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1, !dbg !454
  %20 = load i32, ptr %19, align 4, !dbg !455
  %21 = xor i32 %20, %18, !dbg !455
  store i32 %21, ptr %19, align 4, !dbg !455
  %22 = getelementptr inbounds %struct.coucal_hashkeys, ptr %7, i32 0, i32 0, !dbg !456
  %23 = load i32, ptr %22, align 4, !dbg !456
  %24 = getelementptr inbounds %struct.coucal_hashkeys, ptr %7, i32 0, i32 1, !dbg !458
  %25 = load i32, ptr %24, align 4, !dbg !458
  %26 = icmp eq i32 %23, %25, !dbg !459
  br i1 %26, label %27, label %32, !dbg !460

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.coucal_hashkeys, ptr %7, i32 0, i32 1, !dbg !461
  %29 = load i32, ptr %28, align 4, !dbg !461
  %30 = xor i32 %29, -1, !dbg !463
  %31 = getelementptr inbounds %struct.coucal_hashkeys, ptr %7, i32 0, i32 1, !dbg !464
  store i32 %30, ptr %31, align 4, !dbg !465
  br label %32, !dbg !466

32:                                               ; preds = %27, %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %7, i64 8, i1 false), !dbg !467
  %33 = load i64, ptr %3, align 4, !dbg !468
  ret i64 %33, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MurmurHash3_x86_128(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !469 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !476, metadata !DIExpression()), !dbg !477
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !478, metadata !DIExpression()), !dbg !479
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata ptr %9, metadata !482, metadata !DIExpression()), !dbg !483
  %30 = load ptr, ptr %5, align 8, !dbg !484
  store ptr %30, ptr %9, align 8, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %10, metadata !485, metadata !DIExpression()), !dbg !486
  %31 = load i32, ptr %6, align 4, !dbg !487
  %32 = sdiv i32 %31, 16, !dbg !488
  store i32 %32, ptr %10, align 4, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %11, metadata !489, metadata !DIExpression()), !dbg !490
  %33 = load i32, ptr %7, align 4, !dbg !491
  store i32 %33, ptr %11, align 4, !dbg !490
  call void @llvm.dbg.declare(metadata ptr %12, metadata !492, metadata !DIExpression()), !dbg !493
  %34 = load i32, ptr %7, align 4, !dbg !494
  store i32 %34, ptr %12, align 4, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %13, metadata !495, metadata !DIExpression()), !dbg !496
  %35 = load i32, ptr %7, align 4, !dbg !497
  store i32 %35, ptr %13, align 4, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %14, metadata !498, metadata !DIExpression()), !dbg !499
  %36 = load i32, ptr %7, align 4, !dbg !500
  store i32 %36, ptr %14, align 4, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %15, metadata !501, metadata !DIExpression()), !dbg !502
  store i32 597399067, ptr %15, align 4, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %16, metadata !503, metadata !DIExpression()), !dbg !504
  store i32 -1425107063, ptr %16, align 4, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %17, metadata !505, metadata !DIExpression()), !dbg !506
  store i32 951274213, ptr %17, align 4, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %18, metadata !507, metadata !DIExpression()), !dbg !508
  store i32 -1578923117, ptr %18, align 4, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %19, metadata !509, metadata !DIExpression()), !dbg !510
  %37 = load ptr, ptr %9, align 8, !dbg !511
  %38 = load i32, ptr %10, align 4, !dbg !512
  %39 = mul nsw i32 %38, 16, !dbg !513
  %40 = sext i32 %39 to i64, !dbg !514
  %41 = getelementptr inbounds i8, ptr %37, i64 %40, !dbg !514
  store ptr %41, ptr %19, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %20, metadata !515, metadata !DIExpression()), !dbg !516
  %42 = load i32, ptr %10, align 4, !dbg !517
  %43 = sub nsw i32 0, %42, !dbg !519
  store i32 %43, ptr %20, align 4, !dbg !520
  br label %44, !dbg !521

44:                                               ; preds = %136, %4
  %45 = load i32, ptr %20, align 4, !dbg !522
  %46 = icmp ne i32 %45, 0, !dbg !524
  br i1 %46, label %47, label %139, !dbg !524

47:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %21, metadata !525, metadata !DIExpression()), !dbg !527
  %48 = load ptr, ptr %19, align 8, !dbg !528
  %49 = load i32, ptr %20, align 4, !dbg !529
  %50 = mul nsw i32 %49, 4, !dbg !530
  %51 = add nsw i32 %50, 0, !dbg !531
  %52 = call i32 @getblock32(ptr noundef %48, i32 noundef %51), !dbg !532
  store i32 %52, ptr %21, align 4, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %22, metadata !533, metadata !DIExpression()), !dbg !534
  %53 = load ptr, ptr %19, align 8, !dbg !535
  %54 = load i32, ptr %20, align 4, !dbg !536
  %55 = mul nsw i32 %54, 4, !dbg !537
  %56 = add nsw i32 %55, 1, !dbg !538
  %57 = call i32 @getblock32(ptr noundef %53, i32 noundef %56), !dbg !539
  store i32 %57, ptr %22, align 4, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %23, metadata !540, metadata !DIExpression()), !dbg !541
  %58 = load ptr, ptr %19, align 8, !dbg !542
  %59 = load i32, ptr %20, align 4, !dbg !543
  %60 = mul nsw i32 %59, 4, !dbg !544
  %61 = add nsw i32 %60, 2, !dbg !545
  %62 = call i32 @getblock32(ptr noundef %58, i32 noundef %61), !dbg !546
  store i32 %62, ptr %23, align 4, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %24, metadata !547, metadata !DIExpression()), !dbg !548
  %63 = load ptr, ptr %19, align 8, !dbg !549
  %64 = load i32, ptr %20, align 4, !dbg !550
  %65 = mul nsw i32 %64, 4, !dbg !551
  %66 = add nsw i32 %65, 3, !dbg !552
  %67 = call i32 @getblock32(ptr noundef %63, i32 noundef %66), !dbg !553
  store i32 %67, ptr %24, align 4, !dbg !548
  %68 = load i32, ptr %21, align 4, !dbg !554
  %69 = mul i32 %68, 597399067, !dbg !554
  store i32 %69, ptr %21, align 4, !dbg !554
  %70 = load i32, ptr %21, align 4, !dbg !555
  %71 = call i32 @rotl32(i32 noundef %70, i8 noundef signext 15), !dbg !555
  store i32 %71, ptr %21, align 4, !dbg !556
  %72 = load i32, ptr %21, align 4, !dbg !557
  %73 = mul i32 %72, -1425107063, !dbg !557
  store i32 %73, ptr %21, align 4, !dbg !557
  %74 = load i32, ptr %21, align 4, !dbg !558
  %75 = load i32, ptr %11, align 4, !dbg !559
  %76 = xor i32 %75, %74, !dbg !559
  store i32 %76, ptr %11, align 4, !dbg !559
  %77 = load i32, ptr %11, align 4, !dbg !560
  %78 = call i32 @rotl32(i32 noundef %77, i8 noundef signext 19), !dbg !560
  store i32 %78, ptr %11, align 4, !dbg !561
  %79 = load i32, ptr %12, align 4, !dbg !562
  %80 = load i32, ptr %11, align 4, !dbg !563
  %81 = add i32 %80, %79, !dbg !563
  store i32 %81, ptr %11, align 4, !dbg !563
  %82 = load i32, ptr %11, align 4, !dbg !564
  %83 = mul i32 %82, 5, !dbg !565
  %84 = add i32 %83, 1444728091, !dbg !566
  store i32 %84, ptr %11, align 4, !dbg !567
  %85 = load i32, ptr %22, align 4, !dbg !568
  %86 = mul i32 %85, -1425107063, !dbg !568
  store i32 %86, ptr %22, align 4, !dbg !568
  %87 = load i32, ptr %22, align 4, !dbg !569
  %88 = call i32 @rotl32(i32 noundef %87, i8 noundef signext 16), !dbg !569
  store i32 %88, ptr %22, align 4, !dbg !570
  %89 = load i32, ptr %22, align 4, !dbg !571
  %90 = mul i32 %89, 951274213, !dbg !571
  store i32 %90, ptr %22, align 4, !dbg !571
  %91 = load i32, ptr %22, align 4, !dbg !572
  %92 = load i32, ptr %12, align 4, !dbg !573
  %93 = xor i32 %92, %91, !dbg !573
  store i32 %93, ptr %12, align 4, !dbg !573
  %94 = load i32, ptr %12, align 4, !dbg !574
  %95 = call i32 @rotl32(i32 noundef %94, i8 noundef signext 17), !dbg !574
  store i32 %95, ptr %12, align 4, !dbg !575
  %96 = load i32, ptr %13, align 4, !dbg !576
  %97 = load i32, ptr %12, align 4, !dbg !577
  %98 = add i32 %97, %96, !dbg !577
  store i32 %98, ptr %12, align 4, !dbg !577
  %99 = load i32, ptr %12, align 4, !dbg !578
  %100 = mul i32 %99, 5, !dbg !579
  %101 = add i32 %100, 197830471, !dbg !580
  store i32 %101, ptr %12, align 4, !dbg !581
  %102 = load i32, ptr %23, align 4, !dbg !582
  %103 = mul i32 %102, 951274213, !dbg !582
  store i32 %103, ptr %23, align 4, !dbg !582
  %104 = load i32, ptr %23, align 4, !dbg !583
  %105 = call i32 @rotl32(i32 noundef %104, i8 noundef signext 17), !dbg !583
  store i32 %105, ptr %23, align 4, !dbg !584
  %106 = load i32, ptr %23, align 4, !dbg !585
  %107 = mul i32 %106, -1578923117, !dbg !585
  store i32 %107, ptr %23, align 4, !dbg !585
  %108 = load i32, ptr %23, align 4, !dbg !586
  %109 = load i32, ptr %13, align 4, !dbg !587
  %110 = xor i32 %109, %108, !dbg !587
  store i32 %110, ptr %13, align 4, !dbg !587
  %111 = load i32, ptr %13, align 4, !dbg !588
  %112 = call i32 @rotl32(i32 noundef %111, i8 noundef signext 15), !dbg !588
  store i32 %112, ptr %13, align 4, !dbg !589
  %113 = load i32, ptr %14, align 4, !dbg !590
  %114 = load i32, ptr %13, align 4, !dbg !591
  %115 = add i32 %114, %113, !dbg !591
  store i32 %115, ptr %13, align 4, !dbg !591
  %116 = load i32, ptr %13, align 4, !dbg !592
  %117 = mul i32 %116, 5, !dbg !593
  %118 = add i32 %117, -1764942795, !dbg !594
  store i32 %118, ptr %13, align 4, !dbg !595
  %119 = load i32, ptr %24, align 4, !dbg !596
  %120 = mul i32 %119, -1578923117, !dbg !596
  store i32 %120, ptr %24, align 4, !dbg !596
  %121 = load i32, ptr %24, align 4, !dbg !597
  %122 = call i32 @rotl32(i32 noundef %121, i8 noundef signext 18), !dbg !597
  store i32 %122, ptr %24, align 4, !dbg !598
  %123 = load i32, ptr %24, align 4, !dbg !599
  %124 = mul i32 %123, 597399067, !dbg !599
  store i32 %124, ptr %24, align 4, !dbg !599
  %125 = load i32, ptr %24, align 4, !dbg !600
  %126 = load i32, ptr %14, align 4, !dbg !601
  %127 = xor i32 %126, %125, !dbg !601
  store i32 %127, ptr %14, align 4, !dbg !601
  %128 = load i32, ptr %14, align 4, !dbg !602
  %129 = call i32 @rotl32(i32 noundef %128, i8 noundef signext 13), !dbg !602
  store i32 %129, ptr %14, align 4, !dbg !603
  %130 = load i32, ptr %11, align 4, !dbg !604
  %131 = load i32, ptr %14, align 4, !dbg !605
  %132 = add i32 %131, %130, !dbg !605
  store i32 %132, ptr %14, align 4, !dbg !605
  %133 = load i32, ptr %14, align 4, !dbg !606
  %134 = mul i32 %133, 5, !dbg !607
  %135 = add i32 %134, 850148119, !dbg !608
  store i32 %135, ptr %14, align 4, !dbg !609
  br label %136, !dbg !610

136:                                              ; preds = %47
  %137 = load i32, ptr %20, align 4, !dbg !611
  %138 = add nsw i32 %137, 1, !dbg !611
  store i32 %138, ptr %20, align 4, !dbg !611
  br label %44, !dbg !612, !llvm.loop !613

139:                                              ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %25, metadata !616, metadata !DIExpression()), !dbg !618
  %140 = load ptr, ptr %9, align 8, !dbg !619
  %141 = load i32, ptr %10, align 4, !dbg !620
  %142 = mul nsw i32 %141, 16, !dbg !621
  %143 = sext i32 %142 to i64, !dbg !622
  %144 = getelementptr inbounds i8, ptr %140, i64 %143, !dbg !622
  store ptr %144, ptr %25, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %26, metadata !623, metadata !DIExpression()), !dbg !624
  store i32 0, ptr %26, align 4, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %27, metadata !625, metadata !DIExpression()), !dbg !626
  store i32 0, ptr %27, align 4, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %28, metadata !627, metadata !DIExpression()), !dbg !628
  store i32 0, ptr %28, align 4, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %29, metadata !629, metadata !DIExpression()), !dbg !630
  store i32 0, ptr %29, align 4, !dbg !630
  %145 = load i32, ptr %6, align 4, !dbg !631
  %146 = and i32 %145, 15, !dbg !632
  switch i32 %146, label %303 [
    i32 15, label %147
    i32 14, label %155
    i32 13, label %163
    i32 12, label %180
    i32 11, label %188
    i32 10, label %196
    i32 9, label %204
    i32 8, label %221
    i32 7, label %229
    i32 6, label %237
    i32 5, label %245
    i32 4, label %262
    i32 3, label %270
    i32 2, label %278
    i32 1, label %286
  ], !dbg !633

147:                                              ; preds = %139
  %148 = load ptr, ptr %25, align 8, !dbg !634
  %149 = getelementptr inbounds i8, ptr %148, i64 14, !dbg !634
  %150 = load i8, ptr %149, align 1, !dbg !634
  %151 = zext i8 %150 to i32, !dbg !634
  %152 = shl i32 %151, 16, !dbg !636
  %153 = load i32, ptr %29, align 4, !dbg !637
  %154 = xor i32 %153, %152, !dbg !637
  store i32 %154, ptr %29, align 4, !dbg !637
  br label %155, !dbg !638

155:                                              ; preds = %139, %147
  %156 = load ptr, ptr %25, align 8, !dbg !639
  %157 = getelementptr inbounds i8, ptr %156, i64 13, !dbg !639
  %158 = load i8, ptr %157, align 1, !dbg !639
  %159 = zext i8 %158 to i32, !dbg !639
  %160 = shl i32 %159, 8, !dbg !640
  %161 = load i32, ptr %29, align 4, !dbg !641
  %162 = xor i32 %161, %160, !dbg !641
  store i32 %162, ptr %29, align 4, !dbg !641
  br label %163, !dbg !642

163:                                              ; preds = %139, %155
  %164 = load ptr, ptr %25, align 8, !dbg !643
  %165 = getelementptr inbounds i8, ptr %164, i64 12, !dbg !643
  %166 = load i8, ptr %165, align 1, !dbg !643
  %167 = zext i8 %166 to i32, !dbg !643
  %168 = shl i32 %167, 0, !dbg !644
  %169 = load i32, ptr %29, align 4, !dbg !645
  %170 = xor i32 %169, %168, !dbg !645
  store i32 %170, ptr %29, align 4, !dbg !645
  %171 = load i32, ptr %29, align 4, !dbg !646
  %172 = mul i32 %171, -1578923117, !dbg !646
  store i32 %172, ptr %29, align 4, !dbg !646
  %173 = load i32, ptr %29, align 4, !dbg !647
  %174 = call i32 @rotl32(i32 noundef %173, i8 noundef signext 18), !dbg !647
  store i32 %174, ptr %29, align 4, !dbg !648
  %175 = load i32, ptr %29, align 4, !dbg !649
  %176 = mul i32 %175, 597399067, !dbg !649
  store i32 %176, ptr %29, align 4, !dbg !649
  %177 = load i32, ptr %29, align 4, !dbg !650
  %178 = load i32, ptr %14, align 4, !dbg !651
  %179 = xor i32 %178, %177, !dbg !651
  store i32 %179, ptr %14, align 4, !dbg !651
  br label %180, !dbg !652

180:                                              ; preds = %139, %163
  %181 = load ptr, ptr %25, align 8, !dbg !653
  %182 = getelementptr inbounds i8, ptr %181, i64 11, !dbg !653
  %183 = load i8, ptr %182, align 1, !dbg !653
  %184 = zext i8 %183 to i32, !dbg !653
  %185 = shl i32 %184, 24, !dbg !654
  %186 = load i32, ptr %28, align 4, !dbg !655
  %187 = xor i32 %186, %185, !dbg !655
  store i32 %187, ptr %28, align 4, !dbg !655
  br label %188, !dbg !656

188:                                              ; preds = %139, %180
  %189 = load ptr, ptr %25, align 8, !dbg !657
  %190 = getelementptr inbounds i8, ptr %189, i64 10, !dbg !657
  %191 = load i8, ptr %190, align 1, !dbg !657
  %192 = zext i8 %191 to i32, !dbg !657
  %193 = shl i32 %192, 16, !dbg !658
  %194 = load i32, ptr %28, align 4, !dbg !659
  %195 = xor i32 %194, %193, !dbg !659
  store i32 %195, ptr %28, align 4, !dbg !659
  br label %196, !dbg !660

196:                                              ; preds = %139, %188
  %197 = load ptr, ptr %25, align 8, !dbg !661
  %198 = getelementptr inbounds i8, ptr %197, i64 9, !dbg !661
  %199 = load i8, ptr %198, align 1, !dbg !661
  %200 = zext i8 %199 to i32, !dbg !661
  %201 = shl i32 %200, 8, !dbg !662
  %202 = load i32, ptr %28, align 4, !dbg !663
  %203 = xor i32 %202, %201, !dbg !663
  store i32 %203, ptr %28, align 4, !dbg !663
  br label %204, !dbg !664

204:                                              ; preds = %139, %196
  %205 = load ptr, ptr %25, align 8, !dbg !665
  %206 = getelementptr inbounds i8, ptr %205, i64 8, !dbg !665
  %207 = load i8, ptr %206, align 1, !dbg !665
  %208 = zext i8 %207 to i32, !dbg !665
  %209 = shl i32 %208, 0, !dbg !666
  %210 = load i32, ptr %28, align 4, !dbg !667
  %211 = xor i32 %210, %209, !dbg !667
  store i32 %211, ptr %28, align 4, !dbg !667
  %212 = load i32, ptr %28, align 4, !dbg !668
  %213 = mul i32 %212, 951274213, !dbg !668
  store i32 %213, ptr %28, align 4, !dbg !668
  %214 = load i32, ptr %28, align 4, !dbg !669
  %215 = call i32 @rotl32(i32 noundef %214, i8 noundef signext 17), !dbg !669
  store i32 %215, ptr %28, align 4, !dbg !670
  %216 = load i32, ptr %28, align 4, !dbg !671
  %217 = mul i32 %216, -1578923117, !dbg !671
  store i32 %217, ptr %28, align 4, !dbg !671
  %218 = load i32, ptr %28, align 4, !dbg !672
  %219 = load i32, ptr %13, align 4, !dbg !673
  %220 = xor i32 %219, %218, !dbg !673
  store i32 %220, ptr %13, align 4, !dbg !673
  br label %221, !dbg !674

221:                                              ; preds = %139, %204
  %222 = load ptr, ptr %25, align 8, !dbg !675
  %223 = getelementptr inbounds i8, ptr %222, i64 7, !dbg !675
  %224 = load i8, ptr %223, align 1, !dbg !675
  %225 = zext i8 %224 to i32, !dbg !675
  %226 = shl i32 %225, 24, !dbg !676
  %227 = load i32, ptr %27, align 4, !dbg !677
  %228 = xor i32 %227, %226, !dbg !677
  store i32 %228, ptr %27, align 4, !dbg !677
  br label %229, !dbg !678

229:                                              ; preds = %139, %221
  %230 = load ptr, ptr %25, align 8, !dbg !679
  %231 = getelementptr inbounds i8, ptr %230, i64 6, !dbg !679
  %232 = load i8, ptr %231, align 1, !dbg !679
  %233 = zext i8 %232 to i32, !dbg !679
  %234 = shl i32 %233, 16, !dbg !680
  %235 = load i32, ptr %27, align 4, !dbg !681
  %236 = xor i32 %235, %234, !dbg !681
  store i32 %236, ptr %27, align 4, !dbg !681
  br label %237, !dbg !682

237:                                              ; preds = %139, %229
  %238 = load ptr, ptr %25, align 8, !dbg !683
  %239 = getelementptr inbounds i8, ptr %238, i64 5, !dbg !683
  %240 = load i8, ptr %239, align 1, !dbg !683
  %241 = zext i8 %240 to i32, !dbg !683
  %242 = shl i32 %241, 8, !dbg !684
  %243 = load i32, ptr %27, align 4, !dbg !685
  %244 = xor i32 %243, %242, !dbg !685
  store i32 %244, ptr %27, align 4, !dbg !685
  br label %245, !dbg !686

245:                                              ; preds = %139, %237
  %246 = load ptr, ptr %25, align 8, !dbg !687
  %247 = getelementptr inbounds i8, ptr %246, i64 4, !dbg !687
  %248 = load i8, ptr %247, align 1, !dbg !687
  %249 = zext i8 %248 to i32, !dbg !687
  %250 = shl i32 %249, 0, !dbg !688
  %251 = load i32, ptr %27, align 4, !dbg !689
  %252 = xor i32 %251, %250, !dbg !689
  store i32 %252, ptr %27, align 4, !dbg !689
  %253 = load i32, ptr %27, align 4, !dbg !690
  %254 = mul i32 %253, -1425107063, !dbg !690
  store i32 %254, ptr %27, align 4, !dbg !690
  %255 = load i32, ptr %27, align 4, !dbg !691
  %256 = call i32 @rotl32(i32 noundef %255, i8 noundef signext 16), !dbg !691
  store i32 %256, ptr %27, align 4, !dbg !692
  %257 = load i32, ptr %27, align 4, !dbg !693
  %258 = mul i32 %257, 951274213, !dbg !693
  store i32 %258, ptr %27, align 4, !dbg !693
  %259 = load i32, ptr %27, align 4, !dbg !694
  %260 = load i32, ptr %12, align 4, !dbg !695
  %261 = xor i32 %260, %259, !dbg !695
  store i32 %261, ptr %12, align 4, !dbg !695
  br label %262, !dbg !696

262:                                              ; preds = %139, %245
  %263 = load ptr, ptr %25, align 8, !dbg !697
  %264 = getelementptr inbounds i8, ptr %263, i64 3, !dbg !697
  %265 = load i8, ptr %264, align 1, !dbg !697
  %266 = zext i8 %265 to i32, !dbg !697
  %267 = shl i32 %266, 24, !dbg !698
  %268 = load i32, ptr %26, align 4, !dbg !699
  %269 = xor i32 %268, %267, !dbg !699
  store i32 %269, ptr %26, align 4, !dbg !699
  br label %270, !dbg !700

270:                                              ; preds = %139, %262
  %271 = load ptr, ptr %25, align 8, !dbg !701
  %272 = getelementptr inbounds i8, ptr %271, i64 2, !dbg !701
  %273 = load i8, ptr %272, align 1, !dbg !701
  %274 = zext i8 %273 to i32, !dbg !701
  %275 = shl i32 %274, 16, !dbg !702
  %276 = load i32, ptr %26, align 4, !dbg !703
  %277 = xor i32 %276, %275, !dbg !703
  store i32 %277, ptr %26, align 4, !dbg !703
  br label %278, !dbg !704

278:                                              ; preds = %139, %270
  %279 = load ptr, ptr %25, align 8, !dbg !705
  %280 = getelementptr inbounds i8, ptr %279, i64 1, !dbg !705
  %281 = load i8, ptr %280, align 1, !dbg !705
  %282 = zext i8 %281 to i32, !dbg !705
  %283 = shl i32 %282, 8, !dbg !706
  %284 = load i32, ptr %26, align 4, !dbg !707
  %285 = xor i32 %284, %283, !dbg !707
  store i32 %285, ptr %26, align 4, !dbg !707
  br label %286, !dbg !708

286:                                              ; preds = %139, %278
  %287 = load ptr, ptr %25, align 8, !dbg !709
  %288 = getelementptr inbounds i8, ptr %287, i64 0, !dbg !709
  %289 = load i8, ptr %288, align 1, !dbg !709
  %290 = zext i8 %289 to i32, !dbg !709
  %291 = shl i32 %290, 0, !dbg !710
  %292 = load i32, ptr %26, align 4, !dbg !711
  %293 = xor i32 %292, %291, !dbg !711
  store i32 %293, ptr %26, align 4, !dbg !711
  %294 = load i32, ptr %26, align 4, !dbg !712
  %295 = mul i32 %294, 597399067, !dbg !712
  store i32 %295, ptr %26, align 4, !dbg !712
  %296 = load i32, ptr %26, align 4, !dbg !713
  %297 = call i32 @rotl32(i32 noundef %296, i8 noundef signext 15), !dbg !713
  store i32 %297, ptr %26, align 4, !dbg !714
  %298 = load i32, ptr %26, align 4, !dbg !715
  %299 = mul i32 %298, -1425107063, !dbg !715
  store i32 %299, ptr %26, align 4, !dbg !715
  %300 = load i32, ptr %26, align 4, !dbg !716
  %301 = load i32, ptr %11, align 4, !dbg !717
  %302 = xor i32 %301, %300, !dbg !717
  store i32 %302, ptr %11, align 4, !dbg !717
  br label %303, !dbg !718

303:                                              ; preds = %286, %139
  %304 = load i32, ptr %6, align 4, !dbg !719
  %305 = load i32, ptr %11, align 4, !dbg !720
  %306 = xor i32 %305, %304, !dbg !720
  store i32 %306, ptr %11, align 4, !dbg !720
  %307 = load i32, ptr %6, align 4, !dbg !721
  %308 = load i32, ptr %12, align 4, !dbg !722
  %309 = xor i32 %308, %307, !dbg !722
  store i32 %309, ptr %12, align 4, !dbg !722
  %310 = load i32, ptr %6, align 4, !dbg !723
  %311 = load i32, ptr %13, align 4, !dbg !724
  %312 = xor i32 %311, %310, !dbg !724
  store i32 %312, ptr %13, align 4, !dbg !724
  %313 = load i32, ptr %6, align 4, !dbg !725
  %314 = load i32, ptr %14, align 4, !dbg !726
  %315 = xor i32 %314, %313, !dbg !726
  store i32 %315, ptr %14, align 4, !dbg !726
  %316 = load i32, ptr %12, align 4, !dbg !727
  %317 = load i32, ptr %11, align 4, !dbg !728
  %318 = add i32 %317, %316, !dbg !728
  store i32 %318, ptr %11, align 4, !dbg !728
  %319 = load i32, ptr %13, align 4, !dbg !729
  %320 = load i32, ptr %11, align 4, !dbg !730
  %321 = add i32 %320, %319, !dbg !730
  store i32 %321, ptr %11, align 4, !dbg !730
  %322 = load i32, ptr %14, align 4, !dbg !731
  %323 = load i32, ptr %11, align 4, !dbg !732
  %324 = add i32 %323, %322, !dbg !732
  store i32 %324, ptr %11, align 4, !dbg !732
  %325 = load i32, ptr %11, align 4, !dbg !733
  %326 = load i32, ptr %12, align 4, !dbg !734
  %327 = add i32 %326, %325, !dbg !734
  store i32 %327, ptr %12, align 4, !dbg !734
  %328 = load i32, ptr %11, align 4, !dbg !735
  %329 = load i32, ptr %13, align 4, !dbg !736
  %330 = add i32 %329, %328, !dbg !736
  store i32 %330, ptr %13, align 4, !dbg !736
  %331 = load i32, ptr %11, align 4, !dbg !737
  %332 = load i32, ptr %14, align 4, !dbg !738
  %333 = add i32 %332, %331, !dbg !738
  store i32 %333, ptr %14, align 4, !dbg !738
  %334 = load i32, ptr %11, align 4, !dbg !739
  %335 = call i32 @fmix32(i32 noundef %334), !dbg !740
  store i32 %335, ptr %11, align 4, !dbg !741
  %336 = load i32, ptr %12, align 4, !dbg !742
  %337 = call i32 @fmix32(i32 noundef %336), !dbg !743
  store i32 %337, ptr %12, align 4, !dbg !744
  %338 = load i32, ptr %13, align 4, !dbg !745
  %339 = call i32 @fmix32(i32 noundef %338), !dbg !746
  store i32 %339, ptr %13, align 4, !dbg !747
  %340 = load i32, ptr %14, align 4, !dbg !748
  %341 = call i32 @fmix32(i32 noundef %340), !dbg !749
  store i32 %341, ptr %14, align 4, !dbg !750
  %342 = load i32, ptr %12, align 4, !dbg !751
  %343 = load i32, ptr %11, align 4, !dbg !752
  %344 = add i32 %343, %342, !dbg !752
  store i32 %344, ptr %11, align 4, !dbg !752
  %345 = load i32, ptr %13, align 4, !dbg !753
  %346 = load i32, ptr %11, align 4, !dbg !754
  %347 = add i32 %346, %345, !dbg !754
  store i32 %347, ptr %11, align 4, !dbg !754
  %348 = load i32, ptr %14, align 4, !dbg !755
  %349 = load i32, ptr %11, align 4, !dbg !756
  %350 = add i32 %349, %348, !dbg !756
  store i32 %350, ptr %11, align 4, !dbg !756
  %351 = load i32, ptr %11, align 4, !dbg !757
  %352 = load i32, ptr %12, align 4, !dbg !758
  %353 = add i32 %352, %351, !dbg !758
  store i32 %353, ptr %12, align 4, !dbg !758
  %354 = load i32, ptr %11, align 4, !dbg !759
  %355 = load i32, ptr %13, align 4, !dbg !760
  %356 = add i32 %355, %354, !dbg !760
  store i32 %356, ptr %13, align 4, !dbg !760
  %357 = load i32, ptr %11, align 4, !dbg !761
  %358 = load i32, ptr %14, align 4, !dbg !762
  %359 = add i32 %358, %357, !dbg !762
  store i32 %359, ptr %14, align 4, !dbg !762
  %360 = load i32, ptr %11, align 4, !dbg !763
  %361 = load ptr, ptr %8, align 8, !dbg !764
  %362 = getelementptr inbounds i32, ptr %361, i64 0, !dbg !765
  store i32 %360, ptr %362, align 4, !dbg !766
  %363 = load i32, ptr %12, align 4, !dbg !767
  %364 = load ptr, ptr %8, align 8, !dbg !768
  %365 = getelementptr inbounds i32, ptr %364, i64 1, !dbg !769
  store i32 %363, ptr %365, align 4, !dbg !770
  %366 = load i32, ptr %13, align 4, !dbg !771
  %367 = load ptr, ptr %8, align 8, !dbg !772
  %368 = getelementptr inbounds i32, ptr %367, i64 2, !dbg !773
  store i32 %366, ptr %368, align 4, !dbg !774
  %369 = load i32, ptr %14, align 4, !dbg !775
  %370 = load ptr, ptr %8, align 8, !dbg !776
  %371 = getelementptr inbounds i32, ptr %370, i64 3, !dbg !777
  store i32 %369, ptr %371, align 4, !dbg !778
  ret void, !dbg !779
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_hash_string(ptr noundef %0) #0 !dbg !780 {
  %2 = alloca %struct.coucal_hashkeys, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !783, metadata !DIExpression()), !dbg !784
  %4 = load ptr, ptr %3, align 8, !dbg !785
  %5 = load ptr, ptr %3, align 8, !dbg !786
  %6 = call i64 @strlen(ptr noundef %5) #12, !dbg !787
  %7 = call i64 @coucal_hash_data(ptr noundef %4, i64 noundef %6), !dbg !788
  store i64 %7, ptr %2, align 4, !dbg !788
  %8 = load i64, ptr %2, align 4, !dbg !789
  ret i64 %8, !dbg !789
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_calc_hashes(ptr noundef %0, ptr noundef %1) #0 !dbg !790 {
  %3 = alloca %struct.coucal_hashkeys, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !793, metadata !DIExpression()), !dbg !794
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !795, metadata !DIExpression()), !dbg !796
  %6 = load ptr, ptr %4, align 8, !dbg !797
  %7 = getelementptr inbounds %struct.struct_coucal, ptr %6, i32 0, i32 6, !dbg !798
  %8 = getelementptr inbounds %struct.anon.2, ptr %7, i32 0, i32 1, !dbg !799
  %9 = getelementptr inbounds %struct.anon.4, ptr %8, i32 0, i32 2, !dbg !800
  %10 = load ptr, ptr %9, align 8, !dbg !800
  %11 = icmp eq ptr %10, null, !dbg !801
  br i1 %11, label %12, label %15, !dbg !797

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !802
  %14 = call i64 @coucal_hash_string(ptr noundef %13), !dbg !803
  store i64 %14, ptr %3, align 4, !dbg !803
  br label %28, !dbg !797

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !dbg !804
  %17 = getelementptr inbounds %struct.struct_coucal, ptr %16, i32 0, i32 6, !dbg !805
  %18 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1, !dbg !806
  %19 = getelementptr inbounds %struct.anon.4, ptr %18, i32 0, i32 2, !dbg !807
  %20 = load ptr, ptr %19, align 8, !dbg !807
  %21 = load ptr, ptr %4, align 8, !dbg !808
  %22 = getelementptr inbounds %struct.struct_coucal, ptr %21, i32 0, i32 6, !dbg !809
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 1, !dbg !810
  %24 = getelementptr inbounds %struct.anon.4, ptr %23, i32 0, i32 4, !dbg !811
  %25 = load ptr, ptr %24, align 8, !dbg !811
  %26 = load ptr, ptr %5, align 8, !dbg !812
  %27 = call i64 %20(ptr noundef %25, ptr noundef %26), !dbg !804
  store i64 %27, ptr %3, align 4, !dbg !804
  br label %28, !dbg !797

28:                                               ; preds = %15, %12
  %29 = load i64, ptr %3, align 4, !dbg !813
  ret i64 %29, !dbg !813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_read_pvoid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !814 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.coucal_value, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !818, metadata !DIExpression()), !dbg !819
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !820, metadata !DIExpression()), !dbg !821
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata ptr %7, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !825
  call void @llvm.dbg.declare(metadata ptr %8, metadata !826, metadata !DIExpression()), !dbg !827
  %9 = load ptr, ptr %4, align 8, !dbg !828
  %10 = load ptr, ptr %5, align 8, !dbg !829
  %11 = load ptr, ptr %6, align 8, !dbg !830
  %12 = icmp ne ptr %11, null, !dbg !831
  br i1 %12, label %13, label %14, !dbg !832

13:                                               ; preds = %3
  br label %15, !dbg !832

14:                                               ; preds = %3
  br label %15, !dbg !832

15:                                               ; preds = %14, %13
  %16 = phi ptr [ %7, %13 ], [ null, %14 ], !dbg !832
  %17 = call i32 @coucal_read_value(ptr noundef %9, ptr noundef %10, ptr noundef %16), !dbg !833
  store i32 %17, ptr %8, align 4, !dbg !827
  %18 = load ptr, ptr %6, align 8, !dbg !834
  %19 = icmp ne ptr %18, null, !dbg !836
  br i1 %19, label %20, label %23, !dbg !837

20:                                               ; preds = %15
  %21 = load ptr, ptr %7, align 8, !dbg !838
  %22 = load ptr, ptr %6, align 8, !dbg !839
  store ptr %21, ptr %22, align 8, !dbg !840
  br label %23, !dbg !841

23:                                               ; preds = %20, %15
  %24 = load i32, ptr %8, align 4, !dbg !842
  ret i32 %24, !dbg !843
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_read_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !844 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !848, metadata !DIExpression()), !dbg !849
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !850, metadata !DIExpression()), !dbg !851
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata ptr %8, metadata !854, metadata !DIExpression()), !dbg !856
  %9 = load ptr, ptr %5, align 8, !dbg !857
  %10 = load ptr, ptr %6, align 8, !dbg !858
  %11 = call ptr @coucal_fetch_value(ptr noundef %9, ptr noundef %10), !dbg !859
  store ptr %11, ptr %8, align 8, !dbg !856
  %12 = load ptr, ptr %8, align 8, !dbg !860
  %13 = icmp ne ptr %12, null, !dbg !862
  br i1 %13, label %14, label %21, !dbg !863

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !dbg !864
  %16 = icmp ne ptr %15, null, !dbg !867
  br i1 %16, label %17, label %20, !dbg !868

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8, !dbg !869
  %19 = load ptr, ptr %8, align 8, !dbg !871
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %19, i64 8, i1 false), !dbg !872
  br label %20, !dbg !873

20:                                               ; preds = %17, %14
  store i32 1, ptr %4, align 4, !dbg !874
  br label %22, !dbg !874

21:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !875
  br label %22, !dbg !875

22:                                               ; preds = %21, %20
  %23 = load i32, ptr %4, align 4, !dbg !876
  ret i32 %23, !dbg !876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_get_pvoid(ptr noundef %0, ptr noundef %1) #0 !dbg !877 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !880, metadata !DIExpression()), !dbg !881
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata ptr %6, metadata !884, metadata !DIExpression()), !dbg !885
  %7 = load ptr, ptr %4, align 8, !dbg !886
  %8 = load ptr, ptr %5, align 8, !dbg !888
  %9 = call i32 @coucal_read_pvoid(ptr noundef %7, ptr noundef %8, ptr noundef %6), !dbg !889
  %10 = icmp ne i32 %9, 0, !dbg !889
  br i1 %10, label %12, label %11, !dbg !890

11:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !891
  br label %14, !dbg !891

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !dbg !893
  store ptr %13, ptr %3, align 8, !dbg !894
  br label %14, !dbg !894

14:                                               ; preds = %12, %11
  %15 = load ptr, ptr %3, align 8, !dbg !895
  ret ptr %15, !dbg !895
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_write_pvoid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !896 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.coucal_value, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !899, metadata !DIExpression()), !dbg !900
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !901, metadata !DIExpression()), !dbg !902
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata ptr %7, metadata !905, metadata !DIExpression()), !dbg !906
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !906
  %8 = load ptr, ptr %6, align 8, !dbg !907
  store ptr %8, ptr %7, align 8, !dbg !908
  %9 = load ptr, ptr %4, align 8, !dbg !909
  %10 = load ptr, ptr %5, align 8, !dbg !910
  %11 = getelementptr inbounds %union.coucal_value, ptr %7, i32 0, i32 0, !dbg !911
  %12 = load i64, ptr %11, align 8, !dbg !911
  %13 = call i32 @coucal_write_value(ptr noundef %9, ptr noundef %10, i64 %12), !dbg !911
  ret i32 %13, !dbg !912
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_write_value(ptr noundef %0, ptr noundef %1, i64 %2) #0 !dbg !913 {
  %4 = alloca %union.coucal_value, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [16 x %struct.coucal_item], align 16
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %union.coucal_value, ptr %4, i32 0, i32 0
  store i64 %2, ptr %22, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !916, metadata !DIExpression()), !dbg !917
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata ptr %4, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata ptr %7, metadata !922, metadata !DIExpression()), !dbg !923
  %23 = load ptr, ptr %5, align 8, !dbg !924
  %24 = load ptr, ptr %6, align 8, !dbg !925
  %25 = getelementptr inbounds %union.coucal_value, ptr %4, i32 0, i32 0, !dbg !926
  %26 = load i64, ptr %25, align 8, !dbg !926
  %27 = call i32 @coucal_write_value_(ptr noundef %23, ptr noundef %24, i64 %26), !dbg !926
  store i32 %27, ptr %7, align 4, !dbg !923
  %28 = load i32, ptr %7, align 4, !dbg !927
  %29 = icmp ne i32 %28, 0, !dbg !927
  br i1 %29, label %30, label %306, !dbg !929

30:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !930, metadata !DIExpression()), !dbg !933
  %31 = load ptr, ptr %5, align 8, !dbg !934
  %32 = getelementptr inbounds %struct.struct_coucal, ptr %31, i32 0, i32 1, !dbg !934
  %33 = load i64, ptr %32, align 8, !dbg !934
  %34 = sub i64 %33, 1, !dbg !934
  %35 = shl i64 1, %34, !dbg !934
  store i64 %35, ptr %8, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %9, metadata !935, metadata !DIExpression()), !dbg !936
  store i64 8, ptr %9, align 8, !dbg !936
  %36 = load ptr, ptr %5, align 8, !dbg !937
  %37 = getelementptr inbounds %struct.struct_coucal, ptr %36, i32 0, i32 2, !dbg !938
  %38 = load i64, ptr %37, align 8, !dbg !939
  %39 = add i64 %38, 1, !dbg !939
  store i64 %39, ptr %37, align 8, !dbg !939
  %40 = load ptr, ptr %5, align 8, !dbg !940
  %41 = getelementptr inbounds %struct.struct_coucal, ptr %40, i32 0, i32 2, !dbg !942
  %42 = load i64, ptr %41, align 8, !dbg !942
  %43 = load i64, ptr %8, align 8, !dbg !943
  %44 = icmp uge i64 %42, %43, !dbg !944
  br i1 %44, label %51, label %45, !dbg !945

45:                                               ; preds = %30
  %46 = load ptr, ptr %5, align 8, !dbg !946
  %47 = getelementptr inbounds %struct.struct_coucal, ptr %46, i32 0, i32 3, !dbg !947
  %48 = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 1, !dbg !948
  %49 = load i64, ptr %48, align 8, !dbg !948
  %50 = icmp uge i64 %49, 8, !dbg !949
  br i1 %50, label %51, label %305, !dbg !950

51:                                               ; preds = %45, %30
  call void @llvm.dbg.declare(metadata ptr %10, metadata !951, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.declare(metadata ptr %11, metadata !954, metadata !DIExpression()), !dbg !955
  %52 = load ptr, ptr %5, align 8, !dbg !956
  %53 = getelementptr inbounds %struct.struct_coucal, ptr %52, i32 0, i32 1, !dbg !957
  %54 = load i64, ptr %53, align 8, !dbg !957
  store i64 %54, ptr %11, align 8, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %12, metadata !958, metadata !DIExpression()), !dbg !959
  %55 = load i64, ptr %8, align 8, !dbg !960
  %56 = mul i64 %55, 2, !dbg !961
  store i64 %56, ptr %12, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %13, metadata !962, metadata !DIExpression()), !dbg !963
  %57 = load i64, ptr %12, align 8, !dbg !964
  %58 = mul i64 %57, 24, !dbg !965
  store i64 %58, ptr %13, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %14, metadata !966, metadata !DIExpression()), !dbg !967
  %59 = load i64, ptr %13, align 8, !dbg !968
  %60 = mul i64 %59, 2, !dbg !969
  store i64 %60, ptr %14, align 8, !dbg !967
  %61 = load ptr, ptr %5, align 8, !dbg !970
  %62 = getelementptr inbounds %struct.struct_coucal, ptr %61, i32 0, i32 3, !dbg !972
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1, !dbg !973
  %64 = load i64, ptr %63, align 8, !dbg !973
  %65 = icmp uge i64 %64, 8, !dbg !974
  br i1 %65, label %66, label %83, !dbg !975

66:                                               ; preds = %51
  %67 = load i64, ptr %8, align 8, !dbg !976
  %68 = icmp ugt i64 %67, 65536, !dbg !977
  br i1 %68, label %69, label %83, !dbg !978

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8, !dbg !979
  %71 = getelementptr inbounds %struct.struct_coucal, ptr %70, i32 0, i32 2, !dbg !980
  %72 = load i64, ptr %71, align 8, !dbg !980
  %73 = load i64, ptr %8, align 8, !dbg !981
  %74 = udiv i64 %73, 4, !dbg !982
  %75 = icmp ult i64 %72, %74, !dbg !983
  br i1 %75, label %76, label %83, !dbg !984

76:                                               ; preds = %69
  %77 = load ptr, ptr %5, align 8, !dbg !985
  %78 = load ptr, ptr %5, align 8, !dbg !987
  %79 = getelementptr inbounds %struct.struct_coucal, ptr %78, i32 0, i32 2, !dbg !988
  %80 = load i64, ptr %79, align 8, !dbg !988
  %81 = load i64, ptr %8, align 8, !dbg !989
  %82 = mul i64 %81, 2, !dbg !990
  call void (ptr, ptr, ...) @coucal_warning(ptr noundef %77, ptr noundef @.str, i64 noundef %80, i64 noundef %82), !dbg !991
  br label %83, !dbg !992

83:                                               ; preds = %76, %69, %66, %51
  %84 = load ptr, ptr %5, align 8, !dbg !993
  %85 = getelementptr inbounds %struct.struct_coucal, ptr %84, i32 0, i32 5, !dbg !994
  %86 = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 5, !dbg !995
  %87 = load i64, ptr %86, align 8, !dbg !996
  %88 = add i64 %87, 1, !dbg !996
  store i64 %88, ptr %86, align 8, !dbg !996
  %89 = load ptr, ptr %5, align 8, !dbg !997
  %90 = getelementptr inbounds %struct.struct_coucal, ptr %89, i32 0, i32 1, !dbg !998
  %91 = load i64, ptr %90, align 8, !dbg !999
  %92 = add i64 %91, 1, !dbg !999
  store i64 %92, ptr %90, align 8, !dbg !999
  %93 = load ptr, ptr %5, align 8, !dbg !1000
  %94 = getelementptr inbounds %struct.struct_coucal, ptr %93, i32 0, i32 1, !dbg !1000
  %95 = load i64, ptr %94, align 8, !dbg !1000
  %96 = call i32 @coucal_is_acceptable_pow2(i64 noundef %95), !dbg !1000
  %97 = icmp ne i32 %96, 0, !dbg !1000
  br i1 %97, label %100, label %98, !dbg !1000

98:                                               ; preds = %83
  %99 = load ptr, ptr %5, align 8, !dbg !1000
  call void @coucal_assert_failed(ptr noundef %99, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 1077), !dbg !1000
  br label %100, !dbg !1000

100:                                              ; preds = %98, %83
  %101 = phi i1 [ true, %83 ], [ false, %98 ]
  %102 = zext i1 %101 to i32, !dbg !1000
  %103 = load ptr, ptr %5, align 8, !dbg !1001
  %104 = getelementptr inbounds %struct.struct_coucal, ptr %103, i32 0, i32 0, !dbg !1002
  %105 = load ptr, ptr %104, align 8, !dbg !1002
  %106 = load i64, ptr %14, align 8, !dbg !1003
  %107 = call ptr @realloc(ptr noundef %105, i64 noundef %106) #13, !dbg !1004
  %108 = load ptr, ptr %5, align 8, !dbg !1005
  %109 = getelementptr inbounds %struct.struct_coucal, ptr %108, i32 0, i32 0, !dbg !1006
  store ptr %107, ptr %109, align 8, !dbg !1007
  %110 = load ptr, ptr %5, align 8, !dbg !1008
  %111 = getelementptr inbounds %struct.struct_coucal, ptr %110, i32 0, i32 0, !dbg !1010
  %112 = load ptr, ptr %111, align 8, !dbg !1010
  %113 = icmp eq ptr %112, null, !dbg !1011
  br i1 %113, label %114, label %118, !dbg !1012

114:                                              ; preds = %100
  %115 = load ptr, ptr %5, align 8, !dbg !1013
  %116 = load i64, ptr %14, align 8, !dbg !1015
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %115, ptr noundef @.str.3, i64 noundef %116), !dbg !1016
  %117 = load ptr, ptr %5, align 8, !dbg !1017
  call void @coucal_assert_failed(ptr noundef %117, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 1085), !dbg !1017
  br label %118, !dbg !1018

118:                                              ; preds = %114, %100
  %119 = load ptr, ptr %5, align 8, !dbg !1019
  %120 = getelementptr inbounds %struct.struct_coucal, ptr %119, i32 0, i32 0, !dbg !1020
  %121 = load ptr, ptr %120, align 8, !dbg !1020
  %122 = load i64, ptr %12, align 8, !dbg !1021
  %123 = getelementptr inbounds %struct.coucal_item, ptr %121, i64 %122, !dbg !1019
  %124 = load i64, ptr %13, align 8, !dbg !1022
  call void @llvm.memset.p0.i64(ptr align 8 %123, i8 0, i64 %124, i1 false), !dbg !1023
  store i64 0, ptr %10, align 8, !dbg !1024
  br label %125, !dbg !1026

125:                                              ; preds = %229, %118
  %126 = load i64, ptr %10, align 8, !dbg !1027
  %127 = load i64, ptr %12, align 8, !dbg !1029
  %128 = icmp ult i64 %126, %127, !dbg !1030
  br i1 %128, label %129, label %232, !dbg !1031

129:                                              ; preds = %125
  %130 = load ptr, ptr %5, align 8, !dbg !1032
  %131 = load i64, ptr %10, align 8, !dbg !1035
  %132 = call i32 @coucal_is_free(ptr noundef %130, i64 noundef %131), !dbg !1036
  %133 = icmp ne i32 %132, 0, !dbg !1036
  br i1 %133, label %228, label %134, !dbg !1037

134:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1038, metadata !DIExpression()), !dbg !1043
  %135 = load ptr, ptr %5, align 8, !dbg !1044
  %136 = getelementptr inbounds %struct.struct_coucal, ptr %135, i32 0, i32 0, !dbg !1045
  %137 = load ptr, ptr %136, align 8, !dbg !1045
  %138 = load i64, ptr %10, align 8, !dbg !1046
  %139 = getelementptr inbounds %struct.coucal_item, ptr %137, i64 %138, !dbg !1044
  %140 = getelementptr inbounds %struct.coucal_item, ptr %139, i32 0, i32 2, !dbg !1047
  store ptr %140, ptr %15, align 8, !dbg !1043
  %141 = load i64, ptr %11, align 8, !dbg !1048
  %142 = load ptr, ptr %15, align 8, !dbg !1050
  %143 = getelementptr inbounds %struct.coucal_hashkeys, ptr %142, i32 0, i32 0, !dbg !1051
  %144 = load i32, ptr %143, align 4, !dbg !1051
  %145 = call i64 @coucal_hash_to_pos_(i64 noundef %141, i32 noundef %144), !dbg !1052
  %146 = load i64, ptr %10, align 8, !dbg !1053
  %147 = icmp eq i64 %145, %146, !dbg !1054
  br i1 %147, label %148, label %182, !dbg !1055

148:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1056, metadata !DIExpression()), !dbg !1058
  %149 = load ptr, ptr %5, align 8, !dbg !1059
  %150 = load ptr, ptr %15, align 8, !dbg !1060
  %151 = getelementptr inbounds %struct.coucal_hashkeys, ptr %150, i32 0, i32 0, !dbg !1061
  %152 = load i32, ptr %151, align 4, !dbg !1061
  %153 = call i64 @coucal_hash_to_pos(ptr noundef %149, i32 noundef %152), !dbg !1062
  store i64 %153, ptr %16, align 8, !dbg !1058
  %154 = load i64, ptr %16, align 8, !dbg !1063
  %155 = load i64, ptr %10, align 8, !dbg !1065
  %156 = icmp ne i64 %154, %155, !dbg !1066
  br i1 %156, label %157, label %181, !dbg !1067

157:                                              ; preds = %148
  %158 = load i64, ptr %16, align 8, !dbg !1068
  %159 = load i64, ptr %12, align 8, !dbg !1068
  %160 = icmp uge i64 %158, %159, !dbg !1068
  br i1 %160, label %163, label %161, !dbg !1068

161:                                              ; preds = %157
  %162 = load ptr, ptr %5, align 8, !dbg !1068
  call void @coucal_assert_failed(ptr noundef %162, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 1101), !dbg !1068
  br label %163, !dbg !1068

163:                                              ; preds = %161, %157
  %164 = phi i1 [ true, %157 ], [ false, %161 ]
  %165 = zext i1 %164 to i32, !dbg !1068
  %166 = load ptr, ptr %5, align 8, !dbg !1070
  %167 = getelementptr inbounds %struct.struct_coucal, ptr %166, i32 0, i32 0, !dbg !1071
  %168 = load ptr, ptr %167, align 8, !dbg !1071
  %169 = load i64, ptr %16, align 8, !dbg !1072
  %170 = getelementptr inbounds %struct.coucal_item, ptr %168, i64 %169, !dbg !1070
  %171 = load ptr, ptr %5, align 8, !dbg !1073
  %172 = getelementptr inbounds %struct.struct_coucal, ptr %171, i32 0, i32 0, !dbg !1074
  %173 = load ptr, ptr %172, align 8, !dbg !1074
  %174 = load i64, ptr %10, align 8, !dbg !1075
  %175 = getelementptr inbounds %struct.coucal_item, ptr %173, i64 %174, !dbg !1073
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %170, ptr align 8 %175, i64 24, i1 false), !dbg !1073
  %176 = load ptr, ptr %5, align 8, !dbg !1076
  %177 = getelementptr inbounds %struct.struct_coucal, ptr %176, i32 0, i32 0, !dbg !1077
  %178 = load ptr, ptr %177, align 8, !dbg !1077
  %179 = load i64, ptr %10, align 8, !dbg !1078
  %180 = getelementptr inbounds %struct.coucal_item, ptr %178, i64 %179, !dbg !1076
  call void @llvm.memset.p0.i64(ptr align 8 %180, i8 0, i64 24, i1 false), !dbg !1079
  br label %181, !dbg !1080

181:                                              ; preds = %163, %148
  br label %227, !dbg !1081

182:                                              ; preds = %134
  %183 = load i64, ptr %11, align 8, !dbg !1082
  %184 = load ptr, ptr %15, align 8, !dbg !1084
  %185 = getelementptr inbounds %struct.coucal_hashkeys, ptr %184, i32 0, i32 1, !dbg !1085
  %186 = load i32, ptr %185, align 4, !dbg !1085
  %187 = call i64 @coucal_hash_to_pos_(i64 noundef %183, i32 noundef %186), !dbg !1086
  %188 = load i64, ptr %10, align 8, !dbg !1087
  %189 = icmp eq i64 %187, %188, !dbg !1088
  br i1 %189, label %190, label %224, !dbg !1089

190:                                              ; preds = %182
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1090, metadata !DIExpression()), !dbg !1092
  %191 = load ptr, ptr %5, align 8, !dbg !1093
  %192 = load ptr, ptr %15, align 8, !dbg !1094
  %193 = getelementptr inbounds %struct.coucal_hashkeys, ptr %192, i32 0, i32 1, !dbg !1095
  %194 = load i32, ptr %193, align 4, !dbg !1095
  %195 = call i64 @coucal_hash_to_pos(ptr noundef %191, i32 noundef %194), !dbg !1096
  store i64 %195, ptr %17, align 8, !dbg !1092
  %196 = load i64, ptr %17, align 8, !dbg !1097
  %197 = load i64, ptr %10, align 8, !dbg !1099
  %198 = icmp ne i64 %196, %197, !dbg !1100
  br i1 %198, label %199, label %223, !dbg !1101

199:                                              ; preds = %190
  %200 = load i64, ptr %17, align 8, !dbg !1102
  %201 = load i64, ptr %12, align 8, !dbg !1102
  %202 = icmp uge i64 %200, %201, !dbg !1102
  br i1 %202, label %205, label %203, !dbg !1102

203:                                              ; preds = %199
  %204 = load ptr, ptr %5, align 8, !dbg !1102
  call void @coucal_assert_failed(ptr noundef %204, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 1110), !dbg !1102
  br label %205, !dbg !1102

205:                                              ; preds = %203, %199
  %206 = phi i1 [ true, %199 ], [ false, %203 ]
  %207 = zext i1 %206 to i32, !dbg !1102
  %208 = load ptr, ptr %5, align 8, !dbg !1104
  %209 = getelementptr inbounds %struct.struct_coucal, ptr %208, i32 0, i32 0, !dbg !1105
  %210 = load ptr, ptr %209, align 8, !dbg !1105
  %211 = load i64, ptr %17, align 8, !dbg !1106
  %212 = getelementptr inbounds %struct.coucal_item, ptr %210, i64 %211, !dbg !1104
  %213 = load ptr, ptr %5, align 8, !dbg !1107
  %214 = getelementptr inbounds %struct.struct_coucal, ptr %213, i32 0, i32 0, !dbg !1108
  %215 = load ptr, ptr %214, align 8, !dbg !1108
  %216 = load i64, ptr %10, align 8, !dbg !1109
  %217 = getelementptr inbounds %struct.coucal_item, ptr %215, i64 %216, !dbg !1107
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %212, ptr align 8 %217, i64 24, i1 false), !dbg !1107
  %218 = load ptr, ptr %5, align 8, !dbg !1110
  %219 = getelementptr inbounds %struct.struct_coucal, ptr %218, i32 0, i32 0, !dbg !1111
  %220 = load ptr, ptr %219, align 8, !dbg !1111
  %221 = load i64, ptr %10, align 8, !dbg !1112
  %222 = getelementptr inbounds %struct.coucal_item, ptr %220, i64 %221, !dbg !1110
  call void @llvm.memset.p0.i64(ptr align 8 %222, i8 0, i64 24, i1 false), !dbg !1113
  br label %223, !dbg !1114

223:                                              ; preds = %205, %190
  br label %226, !dbg !1115

224:                                              ; preds = %182
  %225 = load ptr, ptr %5, align 8, !dbg !1116
  call void @coucal_assert_failed(ptr noundef %225, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 1116), !dbg !1116
  br label %226

226:                                              ; preds = %224, %223
  br label %227

227:                                              ; preds = %226, %181
  br label %228, !dbg !1118

228:                                              ; preds = %227, %129
  br label %229, !dbg !1119

229:                                              ; preds = %228
  %230 = load i64, ptr %10, align 8, !dbg !1120
  %231 = add i64 %230, 1, !dbg !1120
  store i64 %231, ptr %10, align 8, !dbg !1120
  br label %125, !dbg !1121, !llvm.loop !1122

232:                                              ; preds = %125
  %233 = load ptr, ptr %5, align 8, !dbg !1124
  %234 = load ptr, ptr %5, align 8, !dbg !1125
  %235 = getelementptr inbounds %struct.struct_coucal, ptr %234, i32 0, i32 1, !dbg !1125
  %236 = load i64, ptr %235, align 8, !dbg !1125
  %237 = shl i64 1, %236, !dbg !1125
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %233, ptr noundef @.str.7, i64 noundef %237), !dbg !1126
  %238 = load ptr, ptr %5, align 8, !dbg !1127
  %239 = getelementptr inbounds %struct.struct_coucal, ptr %238, i32 0, i32 3, !dbg !1129
  %240 = getelementptr inbounds %struct.anon, ptr %239, i32 0, i32 1, !dbg !1130
  %241 = load i64, ptr %240, align 8, !dbg !1130
  %242 = icmp ne i64 %241, 0, !dbg !1131
  br i1 %242, label %243, label %304, !dbg !1132

243:                                              ; preds = %232
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1133, metadata !DIExpression()), !dbg !1135
  %244 = load ptr, ptr %5, align 8, !dbg !1136
  %245 = getelementptr inbounds %struct.struct_coucal, ptr %244, i32 0, i32 3, !dbg !1137
  %246 = getelementptr inbounds %struct.anon, ptr %245, i32 0, i32 1, !dbg !1138
  %247 = load i64, ptr %246, align 8, !dbg !1138
  store i64 %247, ptr %18, align 8, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1141, metadata !DIExpression()), !dbg !1142
  %248 = load ptr, ptr %5, align 8, !dbg !1143
  %249 = getelementptr inbounds %struct.struct_coucal, ptr %248, i32 0, i32 3, !dbg !1144
  %250 = getelementptr inbounds %struct.anon, ptr %249, i32 0, i32 0, !dbg !1145
  %251 = getelementptr inbounds [16 x %struct.coucal_item], ptr %250, i64 0, i64 0, !dbg !1146
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %20, ptr align 8 %251, i64 384, i1 false), !dbg !1146
  %252 = load ptr, ptr %5, align 8, !dbg !1147
  %253 = getelementptr inbounds %struct.struct_coucal, ptr %252, i32 0, i32 3, !dbg !1148
  %254 = getelementptr inbounds %struct.anon, ptr %253, i32 0, i32 1, !dbg !1149
  store i64 0, ptr %254, align 8, !dbg !1150
  store i64 0, ptr %19, align 8, !dbg !1151
  br label %255, !dbg !1153

255:                                              ; preds = %269, %243
  %256 = load i64, ptr %19, align 8, !dbg !1154
  %257 = load i64, ptr %18, align 8, !dbg !1156
  %258 = icmp ult i64 %256, %257, !dbg !1157
  br i1 %258, label %259, label %272, !dbg !1158

259:                                              ; preds = %255
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1159, metadata !DIExpression()), !dbg !1161
  %260 = load ptr, ptr %5, align 8, !dbg !1162
  %261 = load i64, ptr %19, align 8, !dbg !1163
  %262 = getelementptr inbounds [16 x %struct.coucal_item], ptr %20, i64 0, i64 %261, !dbg !1164
  %263 = call i32 @coucal_add_item_(ptr noundef %260, ptr noundef byval(%struct.coucal_item) align 8 %262), !dbg !1165
  store i32 %263, ptr %21, align 4, !dbg !1161
  %264 = load i32, ptr %21, align 4, !dbg !1166
  %265 = icmp eq i32 %264, 0, !dbg !1168
  br i1 %265, label %266, label %268, !dbg !1169

266:                                              ; preds = %259
  %267 = load ptr, ptr %5, align 8, !dbg !1170
  call void @coucal_assert_failed(ptr noundef %267, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 1139), !dbg !1170
  br label %268, !dbg !1172

268:                                              ; preds = %266, %259
  br label %269, !dbg !1173

269:                                              ; preds = %268
  %270 = load i64, ptr %19, align 8, !dbg !1174
  %271 = add i64 %270, 1, !dbg !1174
  store i64 %271, ptr %19, align 8, !dbg !1174
  br label %255, !dbg !1175, !llvm.loop !1176

272:                                              ; preds = %255
  %273 = load ptr, ptr %5, align 8, !dbg !1178
  %274 = getelementptr inbounds %struct.struct_coucal, ptr %273, i32 0, i32 3, !dbg !1178
  %275 = getelementptr inbounds %struct.anon, ptr %274, i32 0, i32 1, !dbg !1178
  %276 = load i64, ptr %275, align 8, !dbg !1178
  %277 = load i64, ptr %18, align 8, !dbg !1178
  %278 = icmp ule i64 %276, %277, !dbg !1178
  br i1 %278, label %281, label %279, !dbg !1178

279:                                              ; preds = %272
  %280 = load ptr, ptr %5, align 8, !dbg !1178
  call void @coucal_assert_failed(ptr noundef %280, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 1144), !dbg !1178
  br label %281, !dbg !1178

281:                                              ; preds = %279, %272
  %282 = phi i1 [ true, %272 ], [ false, %279 ]
  %283 = zext i1 %282 to i32, !dbg !1178
  %284 = load ptr, ptr %5, align 8, !dbg !1179
  %285 = getelementptr inbounds %struct.struct_coucal, ptr %284, i32 0, i32 3, !dbg !1181
  %286 = getelementptr inbounds %struct.anon, ptr %285, i32 0, i32 1, !dbg !1182
  %287 = load i64, ptr %286, align 8, !dbg !1182
  %288 = load i64, ptr %18, align 8, !dbg !1183
  %289 = icmp ult i64 %287, %288, !dbg !1184
  br i1 %289, label %290, label %297, !dbg !1185

290:                                              ; preds = %281
  %291 = load ptr, ptr %5, align 8, !dbg !1186
  %292 = load i64, ptr %18, align 8, !dbg !1188
  %293 = load ptr, ptr %5, align 8, !dbg !1189
  %294 = getelementptr inbounds %struct.struct_coucal, ptr %293, i32 0, i32 3, !dbg !1190
  %295 = getelementptr inbounds %struct.anon, ptr %294, i32 0, i32 1, !dbg !1191
  %296 = load i64, ptr %295, align 8, !dbg !1191
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %291, ptr noundef @.str.10, i64 noundef %292, i64 noundef %296), !dbg !1192
  br label %303, !dbg !1193

297:                                              ; preds = %281
  %298 = load ptr, ptr %5, align 8, !dbg !1194
  %299 = load ptr, ptr %5, align 8, !dbg !1196
  %300 = getelementptr inbounds %struct.struct_coucal, ptr %299, i32 0, i32 3, !dbg !1197
  %301 = getelementptr inbounds %struct.anon, ptr %300, i32 0, i32 1, !dbg !1198
  %302 = load i64, ptr %301, align 8, !dbg !1198
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %298, ptr noundef @.str.11, i64 noundef %302), !dbg !1199
  br label %303

303:                                              ; preds = %297, %290
  br label %304, !dbg !1200

304:                                              ; preds = %303, %232
  br label %305, !dbg !1201

305:                                              ; preds = %304, %45
  br label %306, !dbg !1202

306:                                              ; preds = %305, %3
  %307 = load i32, ptr %7, align 4, !dbg !1203
  ret i32 %307, !dbg !1204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_add_pvoid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1205 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.coucal_value, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1208, metadata !DIExpression()), !dbg !1209
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1210, metadata !DIExpression()), !dbg !1211
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !1215
  %8 = load ptr, ptr %6, align 8, !dbg !1216
  store ptr %8, ptr %7, align 8, !dbg !1217
  %9 = load ptr, ptr %4, align 8, !dbg !1218
  %10 = load ptr, ptr %5, align 8, !dbg !1219
  %11 = getelementptr inbounds %union.coucal_value, ptr %7, i32 0, i32 0, !dbg !1220
  %12 = load i64, ptr %11, align 8, !dbg !1220
  %13 = call i32 @coucal_write_value(ptr noundef %9, ptr noundef %10, i64 %12), !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1222 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.coucal_value, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1226
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !1232
  %8 = load i64, ptr %6, align 8, !dbg !1233
  store i64 %8, ptr %7, align 8, !dbg !1234
  %9 = load ptr, ptr %4, align 8, !dbg !1235
  %10 = load ptr, ptr %5, align 8, !dbg !1236
  %11 = getelementptr inbounds %union.coucal_value, ptr %7, i32 0, i32 0, !dbg !1237
  %12 = load i64, ptr %11, align 8, !dbg !1237
  %13 = call i32 @coucal_write_value(ptr noundef %9, ptr noundef %10, i64 %12), !dbg !1237
  ret i32 %13, !dbg !1238
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_write_value_(ptr noundef %0, ptr noundef %1, i64 %2) #0 !dbg !1239 {
  %4 = alloca i32, align 4
  %5 = alloca %union.coucal_value, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.coucal_item, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.coucal_hashkeys, align 4
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %union.coucal_value, ptr %5, i32 0, i32 0
  store i64 %2, ptr %12, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1242, metadata !DIExpression()), !dbg !1243
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1252, metadata !DIExpression()), !dbg !1253
  %13 = load ptr, ptr %6, align 8, !dbg !1254
  %14 = load ptr, ptr %7, align 8, !dbg !1255
  %15 = call i64 @coucal_calc_hashes(ptr noundef %13, ptr noundef %14), !dbg !1256
  store i64 %15, ptr %10, align 4, !dbg !1256
  %16 = load ptr, ptr %6, align 8, !dbg !1257
  %17 = getelementptr inbounds %struct.struct_coucal, ptr %16, i32 0, i32 5, !dbg !1258
  %18 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 1, !dbg !1259
  %19 = load i64, ptr %18, align 8, !dbg !1260
  %20 = add i64 %19, 1, !dbg !1260
  store i64 %20, ptr %18, align 8, !dbg !1260
  %21 = load ptr, ptr %6, align 8, !dbg !1261
  %22 = getelementptr inbounds %struct.coucal_hashkeys, ptr %10, i32 0, i32 0, !dbg !1262
  %23 = load i32, ptr %22, align 4, !dbg !1262
  %24 = call i64 @coucal_hash_to_pos(ptr noundef %21, i32 noundef %23), !dbg !1263
  store i64 %24, ptr %9, align 8, !dbg !1264
  %25 = load ptr, ptr %6, align 8, !dbg !1265
  %26 = load i64, ptr %9, align 8, !dbg !1267
  %27 = load ptr, ptr %7, align 8, !dbg !1268
  %28 = call i32 @coucal_matches(ptr noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %10), !dbg !1269
  %29 = icmp ne i32 %28, 0, !dbg !1269
  br i1 %29, label %30, label %39, !dbg !1270

30:                                               ; preds = %3
  %31 = load ptr, ptr %6, align 8, !dbg !1271
  %32 = load i64, ptr %9, align 8, !dbg !1273
  call void @coucal_del_value(ptr noundef %31, i64 noundef %32), !dbg !1274
  %33 = load ptr, ptr %6, align 8, !dbg !1275
  %34 = getelementptr inbounds %struct.struct_coucal, ptr %33, i32 0, i32 0, !dbg !1276
  %35 = load ptr, ptr %34, align 8, !dbg !1276
  %36 = load i64, ptr %9, align 8, !dbg !1277
  %37 = getelementptr inbounds %struct.coucal_item, ptr %35, i64 %36, !dbg !1275
  %38 = getelementptr inbounds %struct.coucal_item, ptr %37, i32 0, i32 1, !dbg !1278
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %38, ptr align 8 %5, i64 8, i1 false), !dbg !1279
  store i32 0, ptr %4, align 4, !dbg !1280
  br label %115, !dbg !1280

39:                                               ; preds = %3
  %40 = load ptr, ptr %6, align 8, !dbg !1281
  %41 = getelementptr inbounds %struct.coucal_hashkeys, ptr %10, i32 0, i32 1, !dbg !1282
  %42 = load i32, ptr %41, align 4, !dbg !1282
  %43 = call i64 @coucal_hash_to_pos(ptr noundef %40, i32 noundef %42), !dbg !1283
  store i64 %43, ptr %9, align 8, !dbg !1284
  %44 = load ptr, ptr %6, align 8, !dbg !1285
  %45 = load i64, ptr %9, align 8, !dbg !1287
  %46 = load ptr, ptr %7, align 8, !dbg !1288
  %47 = call i32 @coucal_matches(ptr noundef %44, i64 noundef %45, ptr noundef %46, ptr noundef %10), !dbg !1289
  %48 = icmp ne i32 %47, 0, !dbg !1289
  br i1 %48, label %49, label %58, !dbg !1290

49:                                               ; preds = %39
  %50 = load ptr, ptr %6, align 8, !dbg !1291
  %51 = load i64, ptr %9, align 8, !dbg !1293
  call void @coucal_del_value(ptr noundef %50, i64 noundef %51), !dbg !1294
  %52 = load ptr, ptr %6, align 8, !dbg !1295
  %53 = getelementptr inbounds %struct.struct_coucal, ptr %52, i32 0, i32 0, !dbg !1296
  %54 = load ptr, ptr %53, align 8, !dbg !1296
  %55 = load i64, ptr %9, align 8, !dbg !1297
  %56 = getelementptr inbounds %struct.coucal_item, ptr %54, i64 %55, !dbg !1295
  %57 = getelementptr inbounds %struct.coucal_item, ptr %56, i32 0, i32 1, !dbg !1298
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 8 %5, i64 8, i1 false), !dbg !1299
  store i32 0, ptr %4, align 4, !dbg !1300
  br label %115, !dbg !1300

58:                                               ; preds = %39
  %59 = load ptr, ptr %6, align 8, !dbg !1301
  %60 = getelementptr inbounds %struct.struct_coucal, ptr %59, i32 0, i32 3, !dbg !1303
  %61 = getelementptr inbounds %struct.anon, ptr %60, i32 0, i32 1, !dbg !1304
  %62 = load i64, ptr %61, align 8, !dbg !1304
  %63 = icmp ne i64 %62, 0, !dbg !1305
  br i1 %63, label %64, label %101, !dbg !1306

64:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1307, metadata !DIExpression()), !dbg !1309
  store i64 0, ptr %11, align 8, !dbg !1310
  br label %65, !dbg !1312

65:                                               ; preds = %97, %64
  %66 = load i64, ptr %11, align 8, !dbg !1313
  %67 = load ptr, ptr %6, align 8, !dbg !1315
  %68 = getelementptr inbounds %struct.struct_coucal, ptr %67, i32 0, i32 3, !dbg !1316
  %69 = getelementptr inbounds %struct.anon, ptr %68, i32 0, i32 1, !dbg !1317
  %70 = load i64, ptr %69, align 8, !dbg !1317
  %71 = icmp ult i64 %66, %70, !dbg !1318
  br i1 %71, label %72, label %100, !dbg !1319

72:                                               ; preds = %65
  %73 = load ptr, ptr %6, align 8, !dbg !1320
  %74 = load ptr, ptr %6, align 8, !dbg !1323
  %75 = getelementptr inbounds %struct.struct_coucal, ptr %74, i32 0, i32 3, !dbg !1324
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 0, !dbg !1325
  %77 = load i64, ptr %11, align 8, !dbg !1326
  %78 = getelementptr inbounds [16 x %struct.coucal_item], ptr %76, i64 0, i64 %77, !dbg !1323
  %79 = load ptr, ptr %7, align 8, !dbg !1327
  %80 = call i32 @coucal_matches_(ptr noundef %73, ptr noundef %78, ptr noundef %79, ptr noundef %10), !dbg !1328
  %81 = icmp ne i32 %80, 0, !dbg !1328
  br i1 %81, label %82, label %96, !dbg !1329

82:                                               ; preds = %72
  %83 = load ptr, ptr %6, align 8, !dbg !1330
  %84 = load ptr, ptr %6, align 8, !dbg !1332
  %85 = getelementptr inbounds %struct.struct_coucal, ptr %84, i32 0, i32 3, !dbg !1333
  %86 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 0, !dbg !1334
  %87 = load i64, ptr %11, align 8, !dbg !1335
  %88 = getelementptr inbounds [16 x %struct.coucal_item], ptr %86, i64 0, i64 %87, !dbg !1332
  %89 = getelementptr inbounds %struct.coucal_item, ptr %88, i32 0, i32 1, !dbg !1336
  call void @coucal_del_value_(ptr noundef %83, ptr noundef %89), !dbg !1337
  %90 = load ptr, ptr %6, align 8, !dbg !1338
  %91 = getelementptr inbounds %struct.struct_coucal, ptr %90, i32 0, i32 3, !dbg !1339
  %92 = getelementptr inbounds %struct.anon, ptr %91, i32 0, i32 0, !dbg !1340
  %93 = load i64, ptr %11, align 8, !dbg !1341
  %94 = getelementptr inbounds [16 x %struct.coucal_item], ptr %92, i64 0, i64 %93, !dbg !1338
  %95 = getelementptr inbounds %struct.coucal_item, ptr %94, i32 0, i32 1, !dbg !1342
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %95, ptr align 8 %5, i64 8, i1 false), !dbg !1343
  store i32 0, ptr %4, align 4, !dbg !1344
  br label %115, !dbg !1344

96:                                               ; preds = %72
  br label %97, !dbg !1345

97:                                               ; preds = %96
  %98 = load i64, ptr %11, align 8, !dbg !1346
  %99 = add i64 %98, 1, !dbg !1346
  store i64 %99, ptr %11, align 8, !dbg !1346
  br label %65, !dbg !1347, !llvm.loop !1348

100:                                              ; preds = %65
  br label %101, !dbg !1350

101:                                              ; preds = %100, %58
  %102 = load ptr, ptr %6, align 8, !dbg !1351
  %103 = getelementptr inbounds %struct.struct_coucal, ptr %102, i32 0, i32 5, !dbg !1352
  %104 = getelementptr inbounds %struct.anon.1, ptr %103, i32 0, i32 2, !dbg !1353
  %105 = load i64, ptr %104, align 8, !dbg !1354
  %106 = add i64 %105, 1, !dbg !1354
  store i64 %106, ptr %104, align 8, !dbg !1354
  %107 = load ptr, ptr %6, align 8, !dbg !1355
  %108 = load ptr, ptr %7, align 8, !dbg !1356
  %109 = call ptr @coucal_dup_name(ptr noundef %107, ptr noundef %108), !dbg !1357
  %110 = getelementptr inbounds %struct.coucal_item, ptr %8, i32 0, i32 0, !dbg !1358
  store ptr %109, ptr %110, align 8, !dbg !1359
  %111 = getelementptr inbounds %struct.coucal_item, ptr %8, i32 0, i32 1, !dbg !1360
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %111, ptr align 8 %5, i64 8, i1 false), !dbg !1361
  %112 = getelementptr inbounds %struct.coucal_item, ptr %8, i32 0, i32 2, !dbg !1362
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %112, ptr align 4 %10, i64 8, i1 false), !dbg !1363
  %113 = load ptr, ptr %6, align 8, !dbg !1364
  %114 = call i32 @coucal_add_item_(ptr noundef %113, ptr noundef byval(%struct.coucal_item) align 8 %8), !dbg !1365
  store i32 %114, ptr %4, align 4, !dbg !1366
  br label %115, !dbg !1366

115:                                              ; preds = %101, %82, %49, %30
  %116 = load i32, ptr %4, align 4, !dbg !1367
  ret i32 %116, !dbg !1367
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_warning(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1368 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1372, metadata !DIExpression()), !dbg !1373
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1374, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1375, metadata !DIExpression()), !dbg !1373
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1373
  call void @llvm.va_start(ptr %6), !dbg !1373
  %7 = load ptr, ptr %3, align 8, !dbg !1373
  %8 = load ptr, ptr %4, align 8, !dbg !1373
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1373
  call void @coucal_log(ptr noundef %7, i32 noundef 1, ptr noundef %8, ptr noundef %9), !dbg !1373
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1373
  call void @llvm.va_end(ptr %10), !dbg !1373
  ret void, !dbg !1373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_is_acceptable_pow2(i64 noundef %0) #0 !dbg !1380 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1383, metadata !DIExpression()), !dbg !1384
  %3 = load i64, ptr %2, align 8, !dbg !1385
  %4 = icmp ule i64 %3, 32, !dbg !1386
  br i1 %4, label %5, label %8, !dbg !1387

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8, !dbg !1388
  %7 = icmp ult i64 %6, 64, !dbg !1389
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ], !dbg !1390
  %10 = zext i1 %9 to i32, !dbg !1387
  ret i32 %10, !dbg !1391
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_assert_failed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1392 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1395, metadata !DIExpression()), !dbg !1396
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1397, metadata !DIExpression()), !dbg !1398
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1401, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1403, metadata !DIExpression()), !dbg !1405
  %10 = load ptr, ptr %5, align 8, !dbg !1406
  %11 = call ptr @coucal_get_name(ptr noundef %10), !dbg !1407
  store ptr %11, ptr %9, align 8, !dbg !1405
  %12 = load ptr, ptr %5, align 8, !dbg !1408
  %13 = load ptr, ptr %9, align 8, !dbg !1409
  %14 = icmp ne ptr %13, null, !dbg !1410
  br i1 %14, label %15, label %17, !dbg !1409

15:                                               ; preds = %4
  %16 = load ptr, ptr %9, align 8, !dbg !1411
  br label %18, !dbg !1409

17:                                               ; preds = %4
  br label %18, !dbg !1409

18:                                               ; preds = %17, %15
  %19 = phi ptr [ %16, %15 ], [ @.str.33, %17 ], !dbg !1409
  %20 = load ptr, ptr %6, align 8, !dbg !1412
  %21 = load ptr, ptr %7, align 8, !dbg !1413
  %22 = load i32, ptr %8, align 4, !dbg !1414
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %12, ptr noundef @.str.32, ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22), !dbg !1415
  %23 = load ptr, ptr %5, align 8, !dbg !1416
  %24 = icmp ne ptr %23, null, !dbg !1418
  br i1 %24, label %25, label %46, !dbg !1419

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 8, !dbg !1420
  %27 = getelementptr inbounds %struct.struct_coucal, ptr %26, i32 0, i32 6, !dbg !1421
  %28 = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 2, !dbg !1422
  %29 = getelementptr inbounds %struct.anon.5, ptr %28, i32 0, i32 1, !dbg !1423
  %30 = load ptr, ptr %29, align 8, !dbg !1423
  %31 = icmp ne ptr %30, null, !dbg !1424
  br i1 %31, label %32, label %46, !dbg !1425

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 8, !dbg !1426
  %34 = getelementptr inbounds %struct.struct_coucal, ptr %33, i32 0, i32 6, !dbg !1428
  %35 = getelementptr inbounds %struct.anon.2, ptr %34, i32 0, i32 2, !dbg !1429
  %36 = getelementptr inbounds %struct.anon.5, ptr %35, i32 0, i32 1, !dbg !1430
  %37 = load ptr, ptr %36, align 8, !dbg !1430
  %38 = load ptr, ptr %5, align 8, !dbg !1431
  %39 = getelementptr inbounds %struct.struct_coucal, ptr %38, i32 0, i32 6, !dbg !1432
  %40 = getelementptr inbounds %struct.anon.2, ptr %39, i32 0, i32 2, !dbg !1433
  %41 = getelementptr inbounds %struct.anon.5, ptr %40, i32 0, i32 2, !dbg !1434
  %42 = load ptr, ptr %41, align 8, !dbg !1434
  %43 = load ptr, ptr %6, align 8, !dbg !1435
  %44 = load ptr, ptr %7, align 8, !dbg !1436
  %45 = load i32, ptr %8, align 4, !dbg !1437
  call void %37(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45), !dbg !1426
  br label %60, !dbg !1438

46:                                               ; preds = %25, %18
  %47 = load ptr, ptr @global_assert_handler, align 8, !dbg !1439
  %48 = icmp ne ptr %47, null, !dbg !1441
  br i1 %48, label %49, label %55, !dbg !1442

49:                                               ; preds = %46
  %50 = load ptr, ptr @global_assert_handler, align 8, !dbg !1443
  %51 = load ptr, ptr %5, align 8, !dbg !1445
  %52 = load ptr, ptr %6, align 8, !dbg !1446
  %53 = load ptr, ptr %7, align 8, !dbg !1447
  %54 = load i32, ptr %8, align 4, !dbg !1448
  call void %50(ptr noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef %54), !dbg !1443
  br label %59, !dbg !1449

55:                                               ; preds = %46
  %56 = load ptr, ptr %6, align 8, !dbg !1450
  %57 = load ptr, ptr %7, align 8, !dbg !1452
  %58 = load i32, ptr %8, align 4, !dbg !1453
  call void @coucal_fail(ptr noundef %56, ptr noundef %57, i32 noundef %58), !dbg !1454
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %32
  call void @abort() #14, !dbg !1455
  unreachable, !dbg !1455
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_crit(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1456 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !1458
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1459, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1460, metadata !DIExpression()), !dbg !1458
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1458
  call void @llvm.va_start(ptr %6), !dbg !1458
  %7 = load ptr, ptr %3, align 8, !dbg !1458
  %8 = load ptr, ptr %4, align 8, !dbg !1458
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1458
  call void @coucal_log(ptr noundef %7, i32 noundef 0, ptr noundef %8, ptr noundef %9), !dbg !1458
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1458
  call void @llvm.va_end(ptr %10), !dbg !1458
  ret void, !dbg !1458
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_is_free(ptr noundef %0, i64 noundef %1) #0 !dbg !1461 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1464, metadata !DIExpression()), !dbg !1465
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1466, metadata !DIExpression()), !dbg !1467
  %5 = load ptr, ptr %3, align 8, !dbg !1468
  %6 = getelementptr inbounds %struct.struct_coucal, ptr %5, i32 0, i32 0, !dbg !1469
  %7 = load ptr, ptr %6, align 8, !dbg !1469
  %8 = load i64, ptr %4, align 8, !dbg !1470
  %9 = getelementptr inbounds %struct.coucal_item, ptr %7, i64 %8, !dbg !1468
  %10 = getelementptr inbounds %struct.coucal_item, ptr %9, i32 0, i32 0, !dbg !1471
  %11 = load ptr, ptr %10, align 8, !dbg !1471
  %12 = icmp eq ptr %11, null, !dbg !1472
  %13 = zext i1 %12 to i32, !dbg !1472
  ret i32 %13, !dbg !1473
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coucal_hash_to_pos_(i64 noundef %0, i32 noundef %1) #0 !dbg !1474 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1481, metadata !DIExpression()), !dbg !1483
  %6 = load i64, ptr %3, align 8, !dbg !1484
  %7 = shl i64 1, %6, !dbg !1484
  %8 = sub i64 %7, 1, !dbg !1485
  %9 = trunc i64 %8 to i32, !dbg !1484
  store i32 %9, ptr %5, align 4, !dbg !1483
  %10 = load i32, ptr %4, align 4, !dbg !1486
  %11 = load i32, ptr %5, align 4, !dbg !1487
  %12 = and i32 %10, %11, !dbg !1488
  %13 = zext i32 %12 to i64, !dbg !1486
  ret i64 %13, !dbg !1489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coucal_hash_to_pos(ptr noundef %0, i32 noundef %1) #0 !dbg !1490 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1495, metadata !DIExpression()), !dbg !1496
  %5 = load ptr, ptr %3, align 8, !dbg !1497
  %6 = getelementptr inbounds %struct.struct_coucal, ptr %5, i32 0, i32 1, !dbg !1498
  %7 = load i64, ptr %6, align 8, !dbg !1498
  %8 = load i32, ptr %4, align 4, !dbg !1499
  %9 = call i64 @coucal_hash_to_pos_(i64 noundef %7, i32 noundef %8), !dbg !1500
  ret i64 %9, !dbg !1501
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_nolog(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1502 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !1504
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !1506
  %5 = load ptr, ptr %3, align 8, !dbg !1507
  %6 = load ptr, ptr %4, align 8, !dbg !1508
  ret void, !dbg !1509
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_add_item_(ptr noundef %0, ptr noundef byval(%struct.coucal_item) align 8 %1) #0 !dbg !1510 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.coucal_item, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1519, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1521, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1523, metadata !DIExpression()), !dbg !1524
  %21 = load ptr, ptr %4, align 8, !dbg !1525
  %22 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1526
  %23 = getelementptr inbounds %struct.coucal_hashkeys, ptr %22, i32 0, i32 0, !dbg !1527
  %24 = load i32, ptr %23, align 8, !dbg !1527
  %25 = call i64 @coucal_hash_to_pos(ptr noundef %21, i32 noundef %24), !dbg !1528
  store i64 %25, ptr %8, align 8, !dbg !1529
  %26 = load ptr, ptr %4, align 8, !dbg !1530
  %27 = load i64, ptr %8, align 8, !dbg !1532
  %28 = call i32 @coucal_is_free(ptr noundef %26, i64 noundef %27), !dbg !1533
  %29 = icmp ne i32 %28, 0, !dbg !1533
  br i1 %29, label %30, label %36, !dbg !1534

30:                                               ; preds = %2
  %31 = load ptr, ptr %4, align 8, !dbg !1535
  %32 = getelementptr inbounds %struct.struct_coucal, ptr %31, i32 0, i32 0, !dbg !1537
  %33 = load ptr, ptr %32, align 8, !dbg !1537
  %34 = load i64, ptr %8, align 8, !dbg !1538
  %35 = getelementptr inbounds %struct.coucal_item, ptr %33, i64 %34, !dbg !1535
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %1, i64 24, i1 false), !dbg !1539
  store i32 1, ptr %3, align 4, !dbg !1540
  br label %426, !dbg !1540

36:                                               ; preds = %2
  %37 = load ptr, ptr %4, align 8, !dbg !1541
  %38 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1543
  %39 = getelementptr inbounds %struct.coucal_hashkeys, ptr %38, i32 0, i32 1, !dbg !1544
  %40 = load i32, ptr %39, align 4, !dbg !1544
  %41 = call i64 @coucal_hash_to_pos(ptr noundef %37, i32 noundef %40), !dbg !1545
  store i64 %41, ptr %8, align 8, !dbg !1546
  %42 = load ptr, ptr %4, align 8, !dbg !1547
  %43 = load i64, ptr %8, align 8, !dbg !1549
  %44 = call i32 @coucal_is_free(ptr noundef %42, i64 noundef %43), !dbg !1550
  %45 = icmp ne i32 %44, 0, !dbg !1550
  br i1 %45, label %46, label %52, !dbg !1551

46:                                               ; preds = %36
  %47 = load ptr, ptr %4, align 8, !dbg !1552
  %48 = getelementptr inbounds %struct.struct_coucal, ptr %47, i32 0, i32 0, !dbg !1554
  %49 = load ptr, ptr %48, align 8, !dbg !1554
  %50 = load i64, ptr %8, align 8, !dbg !1555
  %51 = getelementptr inbounds %struct.coucal_item, ptr %49, i64 %50, !dbg !1552
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 8 %1, i64 24, i1 false), !dbg !1556
  store i32 1, ptr %3, align 4, !dbg !1557
  br label %426, !dbg !1557

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1558
  %54 = getelementptr inbounds %struct.coucal_hashkeys, ptr %53, i32 0, i32 0, !dbg !1560
  %55 = load i32, ptr %54, align 8, !dbg !1560
  store i32 %55, ptr %6, align 4, !dbg !1561
  store i32 %55, ptr %5, align 4, !dbg !1562
  %56 = load ptr, ptr %4, align 8, !dbg !1563
  %57 = load ptr, ptr %4, align 8, !dbg !1564
  %58 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 0, !dbg !1565
  %59 = load ptr, ptr %58, align 8, !dbg !1565
  %60 = call ptr @coucal_print_key(ptr noundef %57, ptr noundef %59), !dbg !1566
  %61 = load i64, ptr %8, align 8, !dbg !1567
  %62 = load i32, ptr %5, align 4, !dbg !1568
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %56, ptr noundef @.str.35, ptr noundef %60, i64 noundef %61, i32 noundef %62), !dbg !1569
  br label %63

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %4, align 8, !dbg !1570
  %66 = getelementptr inbounds %struct.struct_coucal, ptr %65, i32 0, i32 1, !dbg !1570
  %67 = load i64, ptr %66, align 8, !dbg !1570
  %68 = shl i64 1, %67, !dbg !1570
  store i64 %68, ptr %7, align 8, !dbg !1572
  br label %69, !dbg !1573

69:                                               ; preds = %145, %64
  %70 = load i64, ptr %7, align 8, !dbg !1574
  %71 = icmp ne i64 %70, 0, !dbg !1576
  br i1 %71, label %72, label %148, !dbg !1577

72:                                               ; preds = %69
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1578, metadata !DIExpression()), !dbg !1580
  %73 = load ptr, ptr %4, align 8, !dbg !1581
  %74 = load i32, ptr %5, align 4, !dbg !1582
  %75 = call i64 @coucal_hash_to_pos(ptr noundef %73, i32 noundef %74), !dbg !1583
  store i64 %75, ptr %9, align 8, !dbg !1580
  %76 = load ptr, ptr %4, align 8, !dbg !1584
  %77 = load ptr, ptr %4, align 8, !dbg !1585
  %78 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 0, !dbg !1586
  %79 = load ptr, ptr %78, align 8, !dbg !1586
  %80 = call ptr @coucal_print_key(ptr noundef %77, ptr noundef %79), !dbg !1587
  %81 = load i64, ptr %9, align 8, !dbg !1588
  %82 = load i32, ptr %5, align 4, !dbg !1589
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %76, ptr noundef @.str.36, ptr noundef %80, i64 noundef %81, i32 noundef %82), !dbg !1590
  %83 = load ptr, ptr %4, align 8, !dbg !1591
  %84 = load i64, ptr %9, align 8, !dbg !1593
  %85 = call i32 @coucal_is_free(ptr noundef %83, i64 noundef %84), !dbg !1594
  %86 = icmp ne i32 %85, 0, !dbg !1594
  br i1 %86, label %87, label %94, !dbg !1595

87:                                               ; preds = %72
  %88 = load ptr, ptr %4, align 8, !dbg !1596
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %88, ptr noundef @.str.37), !dbg !1598
  %89 = load ptr, ptr %4, align 8, !dbg !1599
  %90 = getelementptr inbounds %struct.struct_coucal, ptr %89, i32 0, i32 0, !dbg !1600
  %91 = load ptr, ptr %90, align 8, !dbg !1600
  %92 = load i64, ptr %9, align 8, !dbg !1601
  %93 = getelementptr inbounds %struct.coucal_item, ptr %91, i64 %92, !dbg !1599
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %93, ptr align 8 %1, i64 24, i1 false), !dbg !1602
  store i32 1, ptr %3, align 4, !dbg !1603
  br label %426, !dbg !1603

94:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1604, metadata !DIExpression()), !dbg !1607
  %95 = load ptr, ptr %4, align 8, !dbg !1608
  %96 = getelementptr inbounds %struct.struct_coucal, ptr %95, i32 0, i32 0, !dbg !1609
  %97 = load ptr, ptr %96, align 8, !dbg !1609
  %98 = load i64, ptr %9, align 8, !dbg !1610
  %99 = getelementptr inbounds %struct.coucal_item, ptr %97, i64 %98, !dbg !1608
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %99, i64 24, i1 false), !dbg !1608
  %100 = load ptr, ptr %4, align 8, !dbg !1611
  %101 = getelementptr inbounds %struct.struct_coucal, ptr %100, i32 0, i32 0, !dbg !1612
  %102 = load ptr, ptr %101, align 8, !dbg !1612
  %103 = load i64, ptr %9, align 8, !dbg !1613
  %104 = getelementptr inbounds %struct.coucal_item, ptr %102, i64 %103, !dbg !1611
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %104, ptr align 8 %1, i64 24, i1 false), !dbg !1614
  %105 = load ptr, ptr %4, align 8, !dbg !1615
  %106 = getelementptr inbounds %struct.struct_coucal, ptr %105, i32 0, i32 5, !dbg !1616
  %107 = getelementptr inbounds %struct.anon.1, ptr %106, i32 0, i32 3, !dbg !1617
  %108 = load i64, ptr %107, align 8, !dbg !1618
  %109 = add i64 %108, 1, !dbg !1618
  store i64 %109, ptr %107, align 8, !dbg !1618
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %10, i64 24, i1 false), !dbg !1619
  %110 = load i64, ptr %9, align 8, !dbg !1620
  %111 = load ptr, ptr %4, align 8, !dbg !1622
  %112 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1623
  %113 = getelementptr inbounds %struct.coucal_hashkeys, ptr %112, i32 0, i32 0, !dbg !1624
  %114 = load i32, ptr %113, align 8, !dbg !1624
  %115 = call i64 @coucal_hash_to_pos(ptr noundef %111, i32 noundef %114), !dbg !1625
  %116 = icmp eq i64 %110, %115, !dbg !1626
  br i1 %116, label %117, label %122, !dbg !1627

117:                                              ; preds = %94
  %118 = load ptr, ptr %4, align 8, !dbg !1628
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %118, ptr noundef @.str.38), !dbg !1630
  %119 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1631
  %120 = getelementptr inbounds %struct.coucal_hashkeys, ptr %119, i32 0, i32 1, !dbg !1632
  %121 = load i32, ptr %120, align 4, !dbg !1632
  store i32 %121, ptr %5, align 4, !dbg !1633
  br label %138, !dbg !1634

122:                                              ; preds = %94
  %123 = load i64, ptr %9, align 8, !dbg !1635
  %124 = load ptr, ptr %4, align 8, !dbg !1637
  %125 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1638
  %126 = getelementptr inbounds %struct.coucal_hashkeys, ptr %125, i32 0, i32 1, !dbg !1639
  %127 = load i32, ptr %126, align 4, !dbg !1639
  %128 = call i64 @coucal_hash_to_pos(ptr noundef %124, i32 noundef %127), !dbg !1640
  %129 = icmp eq i64 %123, %128, !dbg !1641
  br i1 %129, label %130, label %135, !dbg !1642

130:                                              ; preds = %122
  %131 = load ptr, ptr %4, align 8, !dbg !1643
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %131, ptr noundef @.str.39), !dbg !1645
  %132 = getelementptr inbounds %struct.coucal_item, ptr %1, i32 0, i32 2, !dbg !1646
  %133 = getelementptr inbounds %struct.coucal_hashkeys, ptr %132, i32 0, i32 0, !dbg !1647
  %134 = load i32, ptr %133, align 8, !dbg !1647
  store i32 %134, ptr %5, align 4, !dbg !1648
  br label %137, !dbg !1649

135:                                              ; preds = %122
  %136 = load ptr, ptr %4, align 8, !dbg !1650
  call void @coucal_assert_failed(ptr noundef %136, ptr noundef @.str.40, ptr noundef @.str.2, i32 noundef 950), !dbg !1650
  br label %137

137:                                              ; preds = %135, %130
  br label %138

138:                                              ; preds = %137, %117
  %139 = load i32, ptr %5, align 4, !dbg !1652
  %140 = load i32, ptr %6, align 4, !dbg !1654
  %141 = icmp eq i32 %139, %140, !dbg !1655
  br i1 %141, label %142, label %143, !dbg !1656

142:                                              ; preds = %138
  br label %148, !dbg !1657

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143
  br label %145, !dbg !1659

145:                                              ; preds = %144
  %146 = load i64, ptr %7, align 8, !dbg !1660
  %147 = add i64 %146, -1, !dbg !1660
  store i64 %147, ptr %7, align 8, !dbg !1660
  br label %69, !dbg !1661, !llvm.loop !1662

148:                                              ; preds = %142, %69
  %149 = load ptr, ptr %4, align 8, !dbg !1664
  %150 = getelementptr inbounds %struct.struct_coucal, ptr %149, i32 0, i32 3, !dbg !1666
  %151 = getelementptr inbounds %struct.anon, ptr %150, i32 0, i32 1, !dbg !1667
  %152 = load i64, ptr %151, align 8, !dbg !1667
  %153 = icmp ult i64 %152, 16, !dbg !1668
  br i1 %153, label %154, label %197, !dbg !1669

154:                                              ; preds = %148
  %155 = load ptr, ptr %4, align 8, !dbg !1670
  %156 = getelementptr inbounds %struct.struct_coucal, ptr %155, i32 0, i32 3, !dbg !1672
  %157 = getelementptr inbounds %struct.anon, ptr %156, i32 0, i32 0, !dbg !1673
  %158 = load ptr, ptr %4, align 8, !dbg !1674
  %159 = getelementptr inbounds %struct.struct_coucal, ptr %158, i32 0, i32 3, !dbg !1675
  %160 = getelementptr inbounds %struct.anon, ptr %159, i32 0, i32 1, !dbg !1676
  %161 = load i64, ptr %160, align 8, !dbg !1676
  %162 = getelementptr inbounds [16 x %struct.coucal_item], ptr %157, i64 0, i64 %161, !dbg !1670
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %162, ptr align 8 %1, i64 24, i1 false), !dbg !1677
  %163 = load ptr, ptr %4, align 8, !dbg !1678
  %164 = getelementptr inbounds %struct.struct_coucal, ptr %163, i32 0, i32 3, !dbg !1679
  %165 = getelementptr inbounds %struct.anon, ptr %164, i32 0, i32 1, !dbg !1680
  %166 = load i64, ptr %165, align 8, !dbg !1681
  %167 = add i64 %166, 1, !dbg !1681
  store i64 %167, ptr %165, align 8, !dbg !1681
  %168 = load ptr, ptr %4, align 8, !dbg !1682
  %169 = getelementptr inbounds %struct.struct_coucal, ptr %168, i32 0, i32 5, !dbg !1683
  %170 = getelementptr inbounds %struct.anon.1, ptr %169, i32 0, i32 4, !dbg !1684
  %171 = load i64, ptr %170, align 8, !dbg !1685
  %172 = add i64 %171, 1, !dbg !1685
  store i64 %172, ptr %170, align 8, !dbg !1685
  %173 = load ptr, ptr %4, align 8, !dbg !1686
  %174 = getelementptr inbounds %struct.struct_coucal, ptr %173, i32 0, i32 3, !dbg !1688
  %175 = getelementptr inbounds %struct.anon, ptr %174, i32 0, i32 1, !dbg !1689
  %176 = load i64, ptr %175, align 8, !dbg !1689
  %177 = load ptr, ptr %4, align 8, !dbg !1690
  %178 = getelementptr inbounds %struct.struct_coucal, ptr %177, i32 0, i32 5, !dbg !1691
  %179 = getelementptr inbounds %struct.anon.1, ptr %178, i32 0, i32 0, !dbg !1692
  %180 = load i64, ptr %179, align 8, !dbg !1692
  %181 = icmp ugt i64 %176, %180, !dbg !1693
  br i1 %181, label %182, label %190, !dbg !1694

182:                                              ; preds = %154
  %183 = load ptr, ptr %4, align 8, !dbg !1695
  %184 = getelementptr inbounds %struct.struct_coucal, ptr %183, i32 0, i32 3, !dbg !1697
  %185 = getelementptr inbounds %struct.anon, ptr %184, i32 0, i32 1, !dbg !1698
  %186 = load i64, ptr %185, align 8, !dbg !1698
  %187 = load ptr, ptr %4, align 8, !dbg !1699
  %188 = getelementptr inbounds %struct.struct_coucal, ptr %187, i32 0, i32 5, !dbg !1700
  %189 = getelementptr inbounds %struct.anon.1, ptr %188, i32 0, i32 0, !dbg !1701
  store i64 %186, ptr %189, align 8, !dbg !1702
  br label %190, !dbg !1703

190:                                              ; preds = %182, %154
  %191 = load ptr, ptr %4, align 8, !dbg !1704
  %192 = load ptr, ptr %4, align 8, !dbg !1705
  %193 = getelementptr inbounds %struct.struct_coucal, ptr %192, i32 0, i32 3, !dbg !1706
  %194 = getelementptr inbounds %struct.anon, ptr %193, i32 0, i32 1, !dbg !1707
  %195 = load i64, ptr %194, align 8, !dbg !1707
  %196 = trunc i64 %195 to i32, !dbg !1708
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %191, ptr noundef @.str.41, i32 noundef %196), !dbg !1709
  store i32 1, ptr %3, align 4, !dbg !1710
  br label %426, !dbg !1710

197:                                              ; preds = %148
  %198 = load ptr, ptr %4, align 8, !dbg !1711
  %199 = getelementptr inbounds %struct.struct_coucal, ptr %198, i32 0, i32 6, !dbg !1714
  %200 = getelementptr inbounds %struct.anon.2, ptr %199, i32 0, i32 3, !dbg !1715
  %201 = getelementptr inbounds %struct.anon.6, ptr %200, i32 0, i32 0, !dbg !1716
  %202 = load ptr, ptr %201, align 8, !dbg !1716
  %203 = icmp ne ptr %202, null, !dbg !1717
  br i1 %203, label %204, label %423, !dbg !1718

204:                                              ; preds = %197
  %205 = load ptr, ptr %4, align 8, !dbg !1719
  %206 = getelementptr inbounds %struct.struct_coucal, ptr %205, i32 0, i32 6, !dbg !1720
  %207 = getelementptr inbounds %struct.anon.2, ptr %206, i32 0, i32 3, !dbg !1721
  %208 = getelementptr inbounds %struct.anon.6, ptr %207, i32 0, i32 1, !dbg !1722
  %209 = load ptr, ptr %208, align 8, !dbg !1722
  %210 = icmp ne ptr %209, null, !dbg !1723
  br i1 %210, label %211, label %423, !dbg !1724

211:                                              ; preds = %204
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1725, metadata !DIExpression()), !dbg !1727
  store i64 0, ptr %11, align 8, !dbg !1728
  br label %212, !dbg !1730

212:                                              ; preds = %419, %211
  %213 = load i64, ptr %11, align 8, !dbg !1731
  %214 = load ptr, ptr %4, align 8, !dbg !1733
  %215 = getelementptr inbounds %struct.struct_coucal, ptr %214, i32 0, i32 3, !dbg !1734
  %216 = getelementptr inbounds %struct.anon, ptr %215, i32 0, i32 1, !dbg !1735
  %217 = load i64, ptr %216, align 8, !dbg !1735
  %218 = icmp ult i64 %213, %217, !dbg !1736
  br i1 %218, label %219, label %422, !dbg !1737

219:                                              ; preds = %212
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1738, metadata !DIExpression()), !dbg !1741
  %220 = load ptr, ptr %4, align 8, !dbg !1742
  %221 = getelementptr inbounds %struct.struct_coucal, ptr %220, i32 0, i32 3, !dbg !1743
  %222 = getelementptr inbounds %struct.anon, ptr %221, i32 0, i32 0, !dbg !1744
  %223 = load i64, ptr %11, align 8, !dbg !1745
  %224 = getelementptr inbounds [16 x %struct.coucal_item], ptr %222, i64 0, i64 %223, !dbg !1742
  store ptr %224, ptr %12, align 8, !dbg !1741
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1746, metadata !DIExpression()), !dbg !1747
  %225 = load ptr, ptr %4, align 8, !dbg !1748
  %226 = load ptr, ptr %12, align 8, !dbg !1749
  %227 = getelementptr inbounds %struct.coucal_item, ptr %226, i32 0, i32 2, !dbg !1750
  %228 = getelementptr inbounds %struct.coucal_hashkeys, ptr %227, i32 0, i32 0, !dbg !1751
  %229 = load i32, ptr %228, align 8, !dbg !1751
  %230 = call i64 @coucal_hash_to_pos(ptr noundef %225, i32 noundef %229), !dbg !1752
  store i64 %230, ptr %13, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1753, metadata !DIExpression()), !dbg !1754
  %231 = load ptr, ptr %4, align 8, !dbg !1755
  %232 = load ptr, ptr %12, align 8, !dbg !1756
  %233 = getelementptr inbounds %struct.coucal_item, ptr %232, i32 0, i32 2, !dbg !1757
  %234 = getelementptr inbounds %struct.coucal_hashkeys, ptr %233, i32 0, i32 1, !dbg !1758
  %235 = load i32, ptr %234, align 4, !dbg !1758
  %236 = call i64 @coucal_hash_to_pos(ptr noundef %231, i32 noundef %235), !dbg !1759
  store i64 %236, ptr %14, align 8, !dbg !1754
  %237 = load ptr, ptr %4, align 8, !dbg !1760
  %238 = load i64, ptr %11, align 8, !dbg !1761
  %239 = trunc i64 %238 to i32, !dbg !1762
  %240 = load ptr, ptr %4, align 8, !dbg !1763
  %241 = getelementptr inbounds %struct.struct_coucal, ptr %240, i32 0, i32 6, !dbg !1764
  %242 = getelementptr inbounds %struct.anon.2, ptr %241, i32 0, i32 3, !dbg !1765
  %243 = getelementptr inbounds %struct.anon.6, ptr %242, i32 0, i32 0, !dbg !1766
  %244 = load ptr, ptr %243, align 8, !dbg !1766
  %245 = load ptr, ptr %4, align 8, !dbg !1767
  %246 = getelementptr inbounds %struct.struct_coucal, ptr %245, i32 0, i32 6, !dbg !1768
  %247 = getelementptr inbounds %struct.anon.2, ptr %246, i32 0, i32 3, !dbg !1769
  %248 = getelementptr inbounds %struct.anon.6, ptr %247, i32 0, i32 2, !dbg !1770
  %249 = load ptr, ptr %248, align 8, !dbg !1770
  %250 = load ptr, ptr %12, align 8, !dbg !1771
  %251 = getelementptr inbounds %struct.coucal_item, ptr %250, i32 0, i32 0, !dbg !1772
  %252 = load ptr, ptr %251, align 8, !dbg !1772
  %253 = call ptr %244(ptr noundef %249, ptr noundef %252), !dbg !1763
  %254 = load ptr, ptr %4, align 8, !dbg !1773
  %255 = getelementptr inbounds %struct.struct_coucal, ptr %254, i32 0, i32 6, !dbg !1774
  %256 = getelementptr inbounds %struct.anon.2, ptr %255, i32 0, i32 3, !dbg !1775
  %257 = getelementptr inbounds %struct.anon.6, ptr %256, i32 0, i32 1, !dbg !1776
  %258 = load ptr, ptr %257, align 8, !dbg !1776
  %259 = load ptr, ptr %4, align 8, !dbg !1777
  %260 = getelementptr inbounds %struct.struct_coucal, ptr %259, i32 0, i32 6, !dbg !1778
  %261 = getelementptr inbounds %struct.anon.2, ptr %260, i32 0, i32 3, !dbg !1779
  %262 = getelementptr inbounds %struct.anon.6, ptr %261, i32 0, i32 2, !dbg !1780
  %263 = load ptr, ptr %262, align 8, !dbg !1780
  %264 = load ptr, ptr %12, align 8, !dbg !1781
  %265 = getelementptr inbounds %struct.coucal_item, ptr %264, i32 0, i32 1, !dbg !1782
  %266 = getelementptr inbounds %union.coucal_value, ptr %265, i32 0, i32 0, !dbg !1773
  %267 = load i64, ptr %266, align 8, !dbg !1773
  %268 = call ptr %258(ptr noundef %263, i64 %267), !dbg !1773
  %269 = load i64, ptr %13, align 8, !dbg !1783
  %270 = trunc i64 %269 to i32, !dbg !1784
  %271 = load i64, ptr %14, align 8, !dbg !1785
  %272 = trunc i64 %271 to i32, !dbg !1786
  %273 = load ptr, ptr %12, align 8, !dbg !1787
  %274 = getelementptr inbounds %struct.coucal_item, ptr %273, i32 0, i32 2, !dbg !1788
  %275 = getelementptr inbounds %struct.coucal_hashkeys, ptr %274, i32 0, i32 0, !dbg !1789
  %276 = load i32, ptr %275, align 8, !dbg !1789
  %277 = load ptr, ptr %12, align 8, !dbg !1790
  %278 = getelementptr inbounds %struct.coucal_item, ptr %277, i32 0, i32 2, !dbg !1791
  %279 = getelementptr inbounds %struct.coucal_hashkeys, ptr %278, i32 0, i32 1, !dbg !1792
  %280 = load i32, ptr %279, align 4, !dbg !1792
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %237, ptr noundef @.str.42, i32 noundef %239, ptr noundef %253, ptr noundef %268, i32 noundef %270, i32 noundef %272, i32 noundef %276, i32 noundef %280), !dbg !1793
  %281 = load ptr, ptr %4, align 8, !dbg !1794
  %282 = load i64, ptr %13, align 8, !dbg !1796
  %283 = call i32 @coucal_is_free(ptr noundef %281, i64 noundef %282), !dbg !1797
  %284 = icmp ne i32 %283, 0, !dbg !1797
  br i1 %284, label %345, label %285, !dbg !1798

285:                                              ; preds = %219
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1799, metadata !DIExpression()), !dbg !1801
  %286 = load ptr, ptr %4, align 8, !dbg !1802
  %287 = getelementptr inbounds %struct.struct_coucal, ptr %286, i32 0, i32 0, !dbg !1803
  %288 = load ptr, ptr %287, align 8, !dbg !1803
  %289 = load i64, ptr %13, align 8, !dbg !1804
  %290 = getelementptr inbounds %struct.coucal_item, ptr %288, i64 %289, !dbg !1802
  store ptr %290, ptr %15, align 8, !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1805, metadata !DIExpression()), !dbg !1806
  %291 = load ptr, ptr %4, align 8, !dbg !1807
  %292 = load ptr, ptr %15, align 8, !dbg !1808
  %293 = getelementptr inbounds %struct.coucal_item, ptr %292, i32 0, i32 2, !dbg !1809
  %294 = getelementptr inbounds %struct.coucal_hashkeys, ptr %293, i32 0, i32 0, !dbg !1810
  %295 = load i32, ptr %294, align 8, !dbg !1810
  %296 = call i64 @coucal_hash_to_pos(ptr noundef %291, i32 noundef %295), !dbg !1811
  store i64 %296, ptr %16, align 8, !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1812, metadata !DIExpression()), !dbg !1813
  %297 = load ptr, ptr %4, align 8, !dbg !1814
  %298 = load ptr, ptr %15, align 8, !dbg !1815
  %299 = getelementptr inbounds %struct.coucal_item, ptr %298, i32 0, i32 2, !dbg !1816
  %300 = getelementptr inbounds %struct.coucal_hashkeys, ptr %299, i32 0, i32 1, !dbg !1817
  %301 = load i32, ptr %300, align 4, !dbg !1817
  %302 = call i64 @coucal_hash_to_pos(ptr noundef %297, i32 noundef %301), !dbg !1818
  store i64 %302, ptr %17, align 8, !dbg !1813
  %303 = load ptr, ptr %4, align 8, !dbg !1819
  %304 = load ptr, ptr %4, align 8, !dbg !1820
  %305 = getelementptr inbounds %struct.struct_coucal, ptr %304, i32 0, i32 6, !dbg !1821
  %306 = getelementptr inbounds %struct.anon.2, ptr %305, i32 0, i32 3, !dbg !1822
  %307 = getelementptr inbounds %struct.anon.6, ptr %306, i32 0, i32 0, !dbg !1823
  %308 = load ptr, ptr %307, align 8, !dbg !1823
  %309 = load ptr, ptr %4, align 8, !dbg !1824
  %310 = getelementptr inbounds %struct.struct_coucal, ptr %309, i32 0, i32 6, !dbg !1825
  %311 = getelementptr inbounds %struct.anon.2, ptr %310, i32 0, i32 3, !dbg !1826
  %312 = getelementptr inbounds %struct.anon.6, ptr %311, i32 0, i32 2, !dbg !1827
  %313 = load ptr, ptr %312, align 8, !dbg !1827
  %314 = load ptr, ptr %15, align 8, !dbg !1828
  %315 = getelementptr inbounds %struct.coucal_item, ptr %314, i32 0, i32 0, !dbg !1829
  %316 = load ptr, ptr %315, align 8, !dbg !1829
  %317 = call ptr %308(ptr noundef %313, ptr noundef %316), !dbg !1820
  %318 = load ptr, ptr %4, align 8, !dbg !1830
  %319 = getelementptr inbounds %struct.struct_coucal, ptr %318, i32 0, i32 6, !dbg !1831
  %320 = getelementptr inbounds %struct.anon.2, ptr %319, i32 0, i32 3, !dbg !1832
  %321 = getelementptr inbounds %struct.anon.6, ptr %320, i32 0, i32 1, !dbg !1833
  %322 = load ptr, ptr %321, align 8, !dbg !1833
  %323 = load ptr, ptr %4, align 8, !dbg !1834
  %324 = getelementptr inbounds %struct.struct_coucal, ptr %323, i32 0, i32 6, !dbg !1835
  %325 = getelementptr inbounds %struct.anon.2, ptr %324, i32 0, i32 3, !dbg !1836
  %326 = getelementptr inbounds %struct.anon.6, ptr %325, i32 0, i32 2, !dbg !1837
  %327 = load ptr, ptr %326, align 8, !dbg !1837
  %328 = load ptr, ptr %15, align 8, !dbg !1838
  %329 = getelementptr inbounds %struct.coucal_item, ptr %328, i32 0, i32 1, !dbg !1839
  %330 = getelementptr inbounds %union.coucal_value, ptr %329, i32 0, i32 0, !dbg !1830
  %331 = load i64, ptr %330, align 8, !dbg !1830
  %332 = call ptr %322(ptr noundef %327, i64 %331), !dbg !1830
  %333 = load i64, ptr %16, align 8, !dbg !1840
  %334 = trunc i64 %333 to i32, !dbg !1841
  %335 = load i64, ptr %17, align 8, !dbg !1842
  %336 = trunc i64 %335 to i32, !dbg !1843
  %337 = load ptr, ptr %15, align 8, !dbg !1844
  %338 = getelementptr inbounds %struct.coucal_item, ptr %337, i32 0, i32 2, !dbg !1845
  %339 = getelementptr inbounds %struct.coucal_hashkeys, ptr %338, i32 0, i32 0, !dbg !1846
  %340 = load i32, ptr %339, align 8, !dbg !1846
  %341 = load ptr, ptr %15, align 8, !dbg !1847
  %342 = getelementptr inbounds %struct.coucal_item, ptr %341, i32 0, i32 2, !dbg !1848
  %343 = getelementptr inbounds %struct.coucal_hashkeys, ptr %342, i32 0, i32 1, !dbg !1849
  %344 = load i32, ptr %343, align 4, !dbg !1849
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %303, ptr noundef @.str.43, ptr noundef %317, ptr noundef %332, i32 noundef %334, i32 noundef %336, i32 noundef %340, i32 noundef %344), !dbg !1850
  br label %349, !dbg !1851

345:                                              ; preds = %219
  %346 = load ptr, ptr %4, align 8, !dbg !1852
  %347 = load i64, ptr %13, align 8, !dbg !1854
  %348 = trunc i64 %347 to i32, !dbg !1855
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %346, ptr noundef @.str.44, i32 noundef %348), !dbg !1856
  br label %349

349:                                              ; preds = %345, %285
  %350 = load ptr, ptr %4, align 8, !dbg !1857
  %351 = load i64, ptr %14, align 8, !dbg !1859
  %352 = call i32 @coucal_is_free(ptr noundef %350, i64 noundef %351), !dbg !1860
  %353 = icmp ne i32 %352, 0, !dbg !1860
  br i1 %353, label %414, label %354, !dbg !1861

354:                                              ; preds = %349
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1862, metadata !DIExpression()), !dbg !1864
  %355 = load ptr, ptr %4, align 8, !dbg !1865
  %356 = getelementptr inbounds %struct.struct_coucal, ptr %355, i32 0, i32 0, !dbg !1866
  %357 = load ptr, ptr %356, align 8, !dbg !1866
  %358 = load i64, ptr %14, align 8, !dbg !1867
  %359 = getelementptr inbounds %struct.coucal_item, ptr %357, i64 %358, !dbg !1865
  store ptr %359, ptr %18, align 8, !dbg !1864
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1868, metadata !DIExpression()), !dbg !1869
  %360 = load ptr, ptr %4, align 8, !dbg !1870
  %361 = load ptr, ptr %18, align 8, !dbg !1871
  %362 = getelementptr inbounds %struct.coucal_item, ptr %361, i32 0, i32 2, !dbg !1872
  %363 = getelementptr inbounds %struct.coucal_hashkeys, ptr %362, i32 0, i32 0, !dbg !1873
  %364 = load i32, ptr %363, align 8, !dbg !1873
  %365 = call i64 @coucal_hash_to_pos(ptr noundef %360, i32 noundef %364), !dbg !1874
  store i64 %365, ptr %19, align 8, !dbg !1869
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1875, metadata !DIExpression()), !dbg !1876
  %366 = load ptr, ptr %4, align 8, !dbg !1877
  %367 = load ptr, ptr %18, align 8, !dbg !1878
  %368 = getelementptr inbounds %struct.coucal_item, ptr %367, i32 0, i32 2, !dbg !1879
  %369 = getelementptr inbounds %struct.coucal_hashkeys, ptr %368, i32 0, i32 1, !dbg !1880
  %370 = load i32, ptr %369, align 4, !dbg !1880
  %371 = call i64 @coucal_hash_to_pos(ptr noundef %366, i32 noundef %370), !dbg !1881
  store i64 %371, ptr %20, align 8, !dbg !1876
  %372 = load ptr, ptr %4, align 8, !dbg !1882
  %373 = load ptr, ptr %4, align 8, !dbg !1883
  %374 = getelementptr inbounds %struct.struct_coucal, ptr %373, i32 0, i32 6, !dbg !1884
  %375 = getelementptr inbounds %struct.anon.2, ptr %374, i32 0, i32 3, !dbg !1885
  %376 = getelementptr inbounds %struct.anon.6, ptr %375, i32 0, i32 0, !dbg !1886
  %377 = load ptr, ptr %376, align 8, !dbg !1886
  %378 = load ptr, ptr %4, align 8, !dbg !1887
  %379 = getelementptr inbounds %struct.struct_coucal, ptr %378, i32 0, i32 6, !dbg !1888
  %380 = getelementptr inbounds %struct.anon.2, ptr %379, i32 0, i32 3, !dbg !1889
  %381 = getelementptr inbounds %struct.anon.6, ptr %380, i32 0, i32 2, !dbg !1890
  %382 = load ptr, ptr %381, align 8, !dbg !1890
  %383 = load ptr, ptr %18, align 8, !dbg !1891
  %384 = getelementptr inbounds %struct.coucal_item, ptr %383, i32 0, i32 0, !dbg !1892
  %385 = load ptr, ptr %384, align 8, !dbg !1892
  %386 = call ptr %377(ptr noundef %382, ptr noundef %385), !dbg !1883
  %387 = load ptr, ptr %4, align 8, !dbg !1893
  %388 = getelementptr inbounds %struct.struct_coucal, ptr %387, i32 0, i32 6, !dbg !1894
  %389 = getelementptr inbounds %struct.anon.2, ptr %388, i32 0, i32 3, !dbg !1895
  %390 = getelementptr inbounds %struct.anon.6, ptr %389, i32 0, i32 1, !dbg !1896
  %391 = load ptr, ptr %390, align 8, !dbg !1896
  %392 = load ptr, ptr %4, align 8, !dbg !1897
  %393 = getelementptr inbounds %struct.struct_coucal, ptr %392, i32 0, i32 6, !dbg !1898
  %394 = getelementptr inbounds %struct.anon.2, ptr %393, i32 0, i32 3, !dbg !1899
  %395 = getelementptr inbounds %struct.anon.6, ptr %394, i32 0, i32 2, !dbg !1900
  %396 = load ptr, ptr %395, align 8, !dbg !1900
  %397 = load ptr, ptr %18, align 8, !dbg !1901
  %398 = getelementptr inbounds %struct.coucal_item, ptr %397, i32 0, i32 1, !dbg !1902
  %399 = getelementptr inbounds %union.coucal_value, ptr %398, i32 0, i32 0, !dbg !1893
  %400 = load i64, ptr %399, align 8, !dbg !1893
  %401 = call ptr %391(ptr noundef %396, i64 %400), !dbg !1893
  %402 = load i64, ptr %19, align 8, !dbg !1903
  %403 = trunc i64 %402 to i32, !dbg !1904
  %404 = load i64, ptr %20, align 8, !dbg !1905
  %405 = trunc i64 %404 to i32, !dbg !1906
  %406 = load ptr, ptr %18, align 8, !dbg !1907
  %407 = getelementptr inbounds %struct.coucal_item, ptr %406, i32 0, i32 2, !dbg !1908
  %408 = getelementptr inbounds %struct.coucal_hashkeys, ptr %407, i32 0, i32 0, !dbg !1909
  %409 = load i32, ptr %408, align 8, !dbg !1909
  %410 = load ptr, ptr %18, align 8, !dbg !1910
  %411 = getelementptr inbounds %struct.coucal_item, ptr %410, i32 0, i32 2, !dbg !1911
  %412 = getelementptr inbounds %struct.coucal_hashkeys, ptr %411, i32 0, i32 1, !dbg !1912
  %413 = load i32, ptr %412, align 4, !dbg !1912
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %372, ptr noundef @.str.43, ptr noundef %386, ptr noundef %401, i32 noundef %403, i32 noundef %405, i32 noundef %409, i32 noundef %413), !dbg !1913
  br label %418, !dbg !1914

414:                                              ; preds = %349
  %415 = load ptr, ptr %4, align 8, !dbg !1915
  %416 = load i64, ptr %14, align 8, !dbg !1917
  %417 = trunc i64 %416 to i32, !dbg !1918
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %415, ptr noundef @.str.44, i32 noundef %417), !dbg !1919
  br label %418

418:                                              ; preds = %414, %354
  br label %419, !dbg !1920

419:                                              ; preds = %418
  %420 = load i64, ptr %11, align 8, !dbg !1921
  %421 = add i64 %420, 1, !dbg !1921
  store i64 %421, ptr %11, align 8, !dbg !1921
  br label %212, !dbg !1922, !llvm.loop !1923

422:                                              ; preds = %212
  br label %423, !dbg !1925

423:                                              ; preds = %422, %204, %197
  %424 = load ptr, ptr %4, align 8, !dbg !1926
  call void @coucal_log_stats(ptr noundef %424), !dbg !1927
  %425 = load ptr, ptr %4, align 8, !dbg !1928
  call void @coucal_assert_failed(ptr noundef %425, ptr noundef @.str.45, ptr noundef @.str.2, i32 noundef 1022), !dbg !1928
  store i32 -1, ptr %3, align 4, !dbg !1929
  br label %426, !dbg !1929

426:                                              ; preds = %423, %190, %87, %46, %30
  %427 = load i32, ptr %3, align 4, !dbg !1930
  ret i32 %427, !dbg !1930
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_add(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1931 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.coucal_value, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1934, metadata !DIExpression()), !dbg !1935
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !1941
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !1942
  %8 = load i64, ptr %6, align 8, !dbg !1943
  store i64 %8, ptr %7, align 8, !dbg !1944
  %9 = load ptr, ptr %4, align 8, !dbg !1945
  %10 = load ptr, ptr %5, align 8, !dbg !1946
  %11 = getelementptr inbounds %union.coucal_value, ptr %7, i32 0, i32 0, !dbg !1947
  %12 = load i64, ptr %11, align 8, !dbg !1947
  %13 = call i32 @coucal_write_value(ptr noundef %9, ptr noundef %10, i64 %12), !dbg !1947
  ret void, !dbg !1948
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1949 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %union.coucal_value, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1953, metadata !DIExpression()), !dbg !1954
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1955, metadata !DIExpression()), !dbg !1956
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1959, metadata !DIExpression()), !dbg !1960
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8, i1 false), !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1961, metadata !DIExpression()), !dbg !1962
  %9 = load ptr, ptr %4, align 8, !dbg !1963
  %10 = load ptr, ptr %5, align 8, !dbg !1964
  %11 = load ptr, ptr %6, align 8, !dbg !1965
  %12 = icmp ne ptr %11, null, !dbg !1966
  br i1 %12, label %13, label %14, !dbg !1967

13:                                               ; preds = %3
  br label %15, !dbg !1967

14:                                               ; preds = %3
  br label %15, !dbg !1967

15:                                               ; preds = %14, %13
  %16 = phi ptr [ %7, %13 ], [ null, %14 ], !dbg !1967
  %17 = call i32 @coucal_read_value(ptr noundef %9, ptr noundef %10, ptr noundef %16), !dbg !1968
  store i32 %17, ptr %8, align 4, !dbg !1962
  %18 = load ptr, ptr %6, align 8, !dbg !1969
  %19 = icmp ne ptr %18, null, !dbg !1971
  br i1 %19, label %20, label %23, !dbg !1972

20:                                               ; preds = %15
  %21 = load i64, ptr %7, align 8, !dbg !1973
  %22 = load ptr, ptr %6, align 8, !dbg !1974
  store i64 %21, ptr %22, align 8, !dbg !1975
  br label %23, !dbg !1976

23:                                               ; preds = %20, %15
  %24 = load i32, ptr %8, align 4, !dbg !1977
  ret i32 %24, !dbg !1978
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_fetch_value_hashes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1979 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1982, metadata !DIExpression()), !dbg !1983
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1984, metadata !DIExpression()), !dbg !1985
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1988, metadata !DIExpression()), !dbg !1989
  %10 = load ptr, ptr %5, align 8, !dbg !1990
  %11 = load ptr, ptr %7, align 8, !dbg !1991
  %12 = getelementptr inbounds %struct.coucal_hashkeys, ptr %11, i32 0, i32 0, !dbg !1992
  %13 = load i32, ptr %12, align 4, !dbg !1992
  %14 = call i64 @coucal_hash_to_pos(ptr noundef %10, i32 noundef %13), !dbg !1993
  store i64 %14, ptr %8, align 8, !dbg !1994
  %15 = load ptr, ptr %5, align 8, !dbg !1995
  %16 = load i64, ptr %8, align 8, !dbg !1997
  %17 = load ptr, ptr %6, align 8, !dbg !1998
  %18 = load ptr, ptr %7, align 8, !dbg !1999
  %19 = call i32 @coucal_matches(ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18), !dbg !2000
  %20 = icmp ne i32 %19, 0, !dbg !2000
  br i1 %20, label %21, label %28, !dbg !2001

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8, !dbg !2002
  %23 = getelementptr inbounds %struct.struct_coucal, ptr %22, i32 0, i32 0, !dbg !2004
  %24 = load ptr, ptr %23, align 8, !dbg !2004
  %25 = load i64, ptr %8, align 8, !dbg !2005
  %26 = getelementptr inbounds %struct.coucal_item, ptr %24, i64 %25, !dbg !2002
  %27 = getelementptr inbounds %struct.coucal_item, ptr %26, i32 0, i32 1, !dbg !2006
  store ptr %27, ptr %4, align 8, !dbg !2007
  br label %85, !dbg !2007

28:                                               ; preds = %3
  %29 = load ptr, ptr %5, align 8, !dbg !2008
  %30 = load ptr, ptr %7, align 8, !dbg !2009
  %31 = getelementptr inbounds %struct.coucal_hashkeys, ptr %30, i32 0, i32 1, !dbg !2010
  %32 = load i32, ptr %31, align 4, !dbg !2010
  %33 = call i64 @coucal_hash_to_pos(ptr noundef %29, i32 noundef %32), !dbg !2011
  store i64 %33, ptr %8, align 8, !dbg !2012
  %34 = load ptr, ptr %5, align 8, !dbg !2013
  %35 = load i64, ptr %8, align 8, !dbg !2015
  %36 = load ptr, ptr %6, align 8, !dbg !2016
  %37 = load ptr, ptr %7, align 8, !dbg !2017
  %38 = call i32 @coucal_matches(ptr noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37), !dbg !2018
  %39 = icmp ne i32 %38, 0, !dbg !2018
  br i1 %39, label %40, label %47, !dbg !2019

40:                                               ; preds = %28
  %41 = load ptr, ptr %5, align 8, !dbg !2020
  %42 = getelementptr inbounds %struct.struct_coucal, ptr %41, i32 0, i32 0, !dbg !2022
  %43 = load ptr, ptr %42, align 8, !dbg !2022
  %44 = load i64, ptr %8, align 8, !dbg !2023
  %45 = getelementptr inbounds %struct.coucal_item, ptr %43, i64 %44, !dbg !2020
  %46 = getelementptr inbounds %struct.coucal_item, ptr %45, i32 0, i32 1, !dbg !2024
  store ptr %46, ptr %4, align 8, !dbg !2025
  br label %85, !dbg !2025

47:                                               ; preds = %28
  %48 = load ptr, ptr %5, align 8, !dbg !2026
  %49 = getelementptr inbounds %struct.struct_coucal, ptr %48, i32 0, i32 3, !dbg !2028
  %50 = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 1, !dbg !2029
  %51 = load i64, ptr %50, align 8, !dbg !2029
  %52 = icmp ne i64 %51, 0, !dbg !2030
  br i1 %52, label %53, label %84, !dbg !2031

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2032, metadata !DIExpression()), !dbg !2034
  store i64 0, ptr %9, align 8, !dbg !2035
  br label %54, !dbg !2037

54:                                               ; preds = %80, %53
  %55 = load i64, ptr %9, align 8, !dbg !2038
  %56 = load ptr, ptr %5, align 8, !dbg !2040
  %57 = getelementptr inbounds %struct.struct_coucal, ptr %56, i32 0, i32 3, !dbg !2041
  %58 = getelementptr inbounds %struct.anon, ptr %57, i32 0, i32 1, !dbg !2042
  %59 = load i64, ptr %58, align 8, !dbg !2042
  %60 = icmp ult i64 %55, %59, !dbg !2043
  br i1 %60, label %61, label %83, !dbg !2044

61:                                               ; preds = %54
  %62 = load ptr, ptr %5, align 8, !dbg !2045
  %63 = load ptr, ptr %5, align 8, !dbg !2048
  %64 = getelementptr inbounds %struct.struct_coucal, ptr %63, i32 0, i32 3, !dbg !2049
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 0, !dbg !2050
  %66 = load i64, ptr %9, align 8, !dbg !2051
  %67 = getelementptr inbounds [16 x %struct.coucal_item], ptr %65, i64 0, i64 %66, !dbg !2048
  %68 = load ptr, ptr %6, align 8, !dbg !2052
  %69 = load ptr, ptr %7, align 8, !dbg !2053
  %70 = call i32 @coucal_matches_(ptr noundef %62, ptr noundef %67, ptr noundef %68, ptr noundef %69), !dbg !2054
  %71 = icmp ne i32 %70, 0, !dbg !2054
  br i1 %71, label %72, label %79, !dbg !2055

72:                                               ; preds = %61
  %73 = load ptr, ptr %5, align 8, !dbg !2056
  %74 = getelementptr inbounds %struct.struct_coucal, ptr %73, i32 0, i32 3, !dbg !2058
  %75 = getelementptr inbounds %struct.anon, ptr %74, i32 0, i32 0, !dbg !2059
  %76 = load i64, ptr %9, align 8, !dbg !2060
  %77 = getelementptr inbounds [16 x %struct.coucal_item], ptr %75, i64 0, i64 %76, !dbg !2056
  %78 = getelementptr inbounds %struct.coucal_item, ptr %77, i32 0, i32 1, !dbg !2061
  store ptr %78, ptr %4, align 8, !dbg !2062
  br label %85, !dbg !2062

79:                                               ; preds = %61
  br label %80, !dbg !2063

80:                                               ; preds = %79
  %81 = load i64, ptr %9, align 8, !dbg !2064
  %82 = add i64 %81, 1, !dbg !2064
  store i64 %82, ptr %9, align 8, !dbg !2064
  br label %54, !dbg !2065, !llvm.loop !2066

83:                                               ; preds = %54
  br label %84, !dbg !2068

84:                                               ; preds = %83, %47
  store ptr null, ptr %4, align 8, !dbg !2069
  br label %85, !dbg !2069

85:                                               ; preds = %84, %72, %40, %21
  %86 = load ptr, ptr %4, align 8, !dbg !2070
  ret ptr %86, !dbg !2070
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_matches(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2071 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2074, metadata !DIExpression()), !dbg !2075
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2076, metadata !DIExpression()), !dbg !2077
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2078, metadata !DIExpression()), !dbg !2079
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2080, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2082, metadata !DIExpression()), !dbg !2085
  %10 = load ptr, ptr %5, align 8, !dbg !2086
  %11 = getelementptr inbounds %struct.struct_coucal, ptr %10, i32 0, i32 0, !dbg !2087
  %12 = load ptr, ptr %11, align 8, !dbg !2087
  %13 = load i64, ptr %6, align 8, !dbg !2088
  %14 = getelementptr inbounds %struct.coucal_item, ptr %12, i64 %13, !dbg !2086
  store ptr %14, ptr %9, align 8, !dbg !2085
  %15 = load ptr, ptr %5, align 8, !dbg !2089
  %16 = load ptr, ptr %9, align 8, !dbg !2090
  %17 = load ptr, ptr %7, align 8, !dbg !2091
  %18 = load ptr, ptr %8, align 8, !dbg !2092
  %19 = call i32 @coucal_matches_(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18), !dbg !2093
  ret i32 %19, !dbg !2094
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_matches_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2095 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2098, metadata !DIExpression()), !dbg !2099
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2100, metadata !DIExpression()), !dbg !2101
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2102, metadata !DIExpression()), !dbg !2103
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2104, metadata !DIExpression()), !dbg !2105
  %9 = load ptr, ptr %6, align 8, !dbg !2106
  %10 = getelementptr inbounds %struct.coucal_item, ptr %9, i32 0, i32 0, !dbg !2107
  %11 = load ptr, ptr %10, align 8, !dbg !2107
  %12 = icmp ne ptr %11, null, !dbg !2108
  br i1 %12, label %13, label %39, !dbg !2109

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !dbg !2110
  %15 = getelementptr inbounds %struct.coucal_item, ptr %14, i32 0, i32 2, !dbg !2111
  %16 = getelementptr inbounds %struct.coucal_hashkeys, ptr %15, i32 0, i32 0, !dbg !2112
  %17 = load i32, ptr %16, align 8, !dbg !2112
  %18 = load ptr, ptr %8, align 8, !dbg !2113
  %19 = getelementptr inbounds %struct.coucal_hashkeys, ptr %18, i32 0, i32 0, !dbg !2114
  %20 = load i32, ptr %19, align 4, !dbg !2114
  %21 = icmp eq i32 %17, %20, !dbg !2115
  br i1 %21, label %22, label %39, !dbg !2116

22:                                               ; preds = %13
  %23 = load ptr, ptr %6, align 8, !dbg !2117
  %24 = getelementptr inbounds %struct.coucal_item, ptr %23, i32 0, i32 2, !dbg !2118
  %25 = getelementptr inbounds %struct.coucal_hashkeys, ptr %24, i32 0, i32 1, !dbg !2119
  %26 = load i32, ptr %25, align 4, !dbg !2119
  %27 = load ptr, ptr %8, align 8, !dbg !2120
  %28 = getelementptr inbounds %struct.coucal_hashkeys, ptr %27, i32 0, i32 1, !dbg !2121
  %29 = load i32, ptr %28, align 4, !dbg !2121
  %30 = icmp eq i32 %26, %29, !dbg !2122
  br i1 %30, label %31, label %39, !dbg !2123

31:                                               ; preds = %22
  %32 = load ptr, ptr %5, align 8, !dbg !2124
  %33 = load ptr, ptr %6, align 8, !dbg !2125
  %34 = getelementptr inbounds %struct.coucal_item, ptr %33, i32 0, i32 0, !dbg !2126
  %35 = load ptr, ptr %34, align 8, !dbg !2126
  %36 = load ptr, ptr %7, align 8, !dbg !2127
  %37 = call i32 @coucal_equals(ptr noundef %32, ptr noundef %35, ptr noundef %36), !dbg !2128
  %38 = icmp ne i32 %37, 0, !dbg !2123
  br label %39

39:                                               ; preds = %31, %22, %13, %4
  %40 = phi i1 [ false, %22 ], [ false, %13 ], [ false, %4 ], [ %38, %31 ], !dbg !2129
  %41 = zext i1 %40 to i32, !dbg !2123
  ret i32 %41, !dbg !2130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_fetch_value(ptr noundef %0, ptr noundef %1) #0 !dbg !2131 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.coucal_hashkeys, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2134, metadata !DIExpression()), !dbg !2135
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2136, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2138, metadata !DIExpression()), !dbg !2139
  %6 = load ptr, ptr %3, align 8, !dbg !2140
  %7 = load ptr, ptr %4, align 8, !dbg !2141
  %8 = call i64 @coucal_calc_hashes(ptr noundef %6, ptr noundef %7), !dbg !2142
  store i64 %8, ptr %5, align 4, !dbg !2142
  %9 = load ptr, ptr %3, align 8, !dbg !2143
  %10 = load ptr, ptr %4, align 8, !dbg !2144
  %11 = call ptr @coucal_fetch_value_hashes(ptr noundef %9, ptr noundef %10, ptr noundef %5), !dbg !2145
  ret ptr %11, !dbg !2146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_inc(ptr noundef %0, ptr noundef %1) #0 !dbg !2147 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2150, metadata !DIExpression()), !dbg !2151
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2152, metadata !DIExpression()), !dbg !2153
  %5 = load ptr, ptr %3, align 8, !dbg !2154
  %6 = load ptr, ptr %4, align 8, !dbg !2155
  %7 = call i64 @coucal_inc_(ptr noundef %5, ptr noundef %6, i64 noundef 1), !dbg !2156
  %8 = trunc i64 %7 to i32, !dbg !2157
  ret i32 %8, !dbg !2158
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coucal_inc_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2159 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2162, metadata !DIExpression()), !dbg !2163
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2164, metadata !DIExpression()), !dbg !2165
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2166, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2168, metadata !DIExpression()), !dbg !2169
  %10 = load ptr, ptr %5, align 8, !dbg !2170
  %11 = load ptr, ptr %6, align 8, !dbg !2171
  %12 = call ptr @coucal_fetch_value(ptr noundef %10, ptr noundef %11), !dbg !2172
  store ptr %12, ptr %8, align 8, !dbg !2169
  %13 = load ptr, ptr %8, align 8, !dbg !2173
  %14 = icmp ne ptr %13, null, !dbg !2175
  br i1 %14, label %15, label %22, !dbg !2176

15:                                               ; preds = %3
  %16 = load i64, ptr %7, align 8, !dbg !2177
  %17 = load ptr, ptr %8, align 8, !dbg !2179
  %18 = load i64, ptr %17, align 8, !dbg !2180
  %19 = add i64 %18, %16, !dbg !2180
  store i64 %19, ptr %17, align 8, !dbg !2180
  %20 = load ptr, ptr %8, align 8, !dbg !2181
  %21 = load i64, ptr %20, align 8, !dbg !2182
  store i64 %21, ptr %4, align 8, !dbg !2183
  br label %35, !dbg !2183

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2184, metadata !DIExpression()), !dbg !2186
  %23 = load ptr, ptr %5, align 8, !dbg !2187
  %24 = load ptr, ptr %6, align 8, !dbg !2188
  %25 = load i64, ptr %7, align 8, !dbg !2189
  %26 = call i32 @coucal_write(ptr noundef %23, ptr noundef %24, i64 noundef %25), !dbg !2190
  store i32 %26, ptr %9, align 4, !dbg !2186
  %27 = load i32, ptr %9, align 4, !dbg !2191
  %28 = icmp ne i32 %27, 0, !dbg !2191
  br i1 %28, label %31, label %29, !dbg !2191

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8, !dbg !2191
  call void @coucal_assert_failed(ptr noundef %30, ptr noundef @.str.46, ptr noundef @.str.2, i32 noundef 1237), !dbg !2191
  br label %31, !dbg !2191

31:                                               ; preds = %29, %22
  %32 = phi i1 [ true, %22 ], [ false, %29 ]
  %33 = zext i1 %32 to i32, !dbg !2191
  %34 = load i64, ptr %7, align 8, !dbg !2192
  store i64 %34, ptr %4, align 8, !dbg !2193
  br label %35, !dbg !2193

35:                                               ; preds = %31, %15
  %36 = load i64, ptr %4, align 8, !dbg !2194
  ret i64 %36, !dbg !2194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_dec(ptr noundef %0, ptr noundef %1) #0 !dbg !2195 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2196, metadata !DIExpression()), !dbg !2197
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2198, metadata !DIExpression()), !dbg !2199
  %5 = load ptr, ptr %3, align 8, !dbg !2200
  %6 = load ptr, ptr %4, align 8, !dbg !2201
  %7 = call i64 @coucal_inc_(ptr noundef %5, ptr noundef %6, i64 noundef -1), !dbg !2202
  %8 = trunc i64 %7 to i32, !dbg !2203
  ret i32 %8, !dbg !2204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_exists(ptr noundef %0, ptr noundef %1) #0 !dbg !2205 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2206, metadata !DIExpression()), !dbg !2207
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2208, metadata !DIExpression()), !dbg !2209
  %5 = load ptr, ptr %3, align 8, !dbg !2210
  %6 = load ptr, ptr %4, align 8, !dbg !2211
  %7 = call i32 @coucal_read_value(ptr noundef %5, ptr noundef %6, ptr noundef null), !dbg !2212
  ret i32 %7, !dbg !2213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2214 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.coucal_hashkeys, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2215, metadata !DIExpression()), !dbg !2216
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2219, metadata !DIExpression()), !dbg !2220
  %11 = load ptr, ptr %3, align 8, !dbg !2221
  %12 = load ptr, ptr %4, align 8, !dbg !2222
  %13 = call i64 @coucal_calc_hashes(ptr noundef %11, ptr noundef %12), !dbg !2223
  store i64 %13, ptr %5, align 4, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2224, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2226, metadata !DIExpression()), !dbg !2227
  %14 = load ptr, ptr %3, align 8, !dbg !2228
  %15 = load ptr, ptr %4, align 8, !dbg !2229
  %16 = call i32 @coucal_remove_(ptr noundef %14, ptr noundef %15, ptr noundef %5, ptr noundef %6), !dbg !2230
  store i32 %16, ptr %7, align 4, !dbg !2227
  %17 = load i32, ptr %7, align 4, !dbg !2231
  %18 = icmp ne i32 %17, 0, !dbg !2231
  br i1 %18, label %19, label %150, !dbg !2233

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 8, !dbg !2234
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 2, !dbg !2234
  %22 = load i64, ptr %21, align 8, !dbg !2234
  %23 = icmp ne i64 %22, 0, !dbg !2234
  br i1 %23, label %26, label %24, !dbg !2234

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 8, !dbg !2234
  call void @coucal_assert_failed(ptr noundef %25, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 1304), !dbg !2234
  br label %26, !dbg !2234

26:                                               ; preds = %24, %19
  %27 = phi i1 [ true, %19 ], [ false, %24 ]
  %28 = zext i1 %27 to i32, !dbg !2234
  %29 = load ptr, ptr %3, align 8, !dbg !2236
  %30 = getelementptr inbounds %struct.struct_coucal, ptr %29, i32 0, i32 2, !dbg !2237
  %31 = load i64, ptr %30, align 8, !dbg !2238
  %32 = add i64 %31, -1, !dbg !2238
  store i64 %32, ptr %30, align 8, !dbg !2238
  %33 = load ptr, ptr %3, align 8, !dbg !2239
  %34 = getelementptr inbounds %struct.struct_coucal, ptr %33, i32 0, i32 3, !dbg !2241
  %35 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1, !dbg !2242
  %36 = load i64, ptr %35, align 8, !dbg !2242
  %37 = icmp ne i64 %36, 0, !dbg !2243
  br i1 %37, label %38, label %149, !dbg !2244

38:                                               ; preds = %26
  %39 = load i64, ptr %6, align 8, !dbg !2245
  %40 = icmp ne i64 %39, -1, !dbg !2246
  br i1 %40, label %41, label %149, !dbg !2247

41:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2248, metadata !DIExpression()), !dbg !2250
  store i64 0, ptr %8, align 8, !dbg !2251
  br label %42, !dbg !2253

42:                                               ; preds = %145, %41
  %43 = load i64, ptr %8, align 8, !dbg !2254
  %44 = load ptr, ptr %3, align 8, !dbg !2256
  %45 = getelementptr inbounds %struct.struct_coucal, ptr %44, i32 0, i32 3, !dbg !2257
  %46 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 1, !dbg !2258
  %47 = load i64, ptr %46, align 8, !dbg !2258
  %48 = icmp ult i64 %43, %47, !dbg !2259
  br i1 %48, label %49, label %148, !dbg !2260

49:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2261, metadata !DIExpression()), !dbg !2263
  %50 = load ptr, ptr %3, align 8, !dbg !2264
  %51 = load ptr, ptr %3, align 8, !dbg !2265
  %52 = getelementptr inbounds %struct.struct_coucal, ptr %51, i32 0, i32 3, !dbg !2266
  %53 = getelementptr inbounds %struct.anon, ptr %52, i32 0, i32 0, !dbg !2267
  %54 = load i64, ptr %8, align 8, !dbg !2268
  %55 = getelementptr inbounds [16 x %struct.coucal_item], ptr %53, i64 0, i64 %54, !dbg !2265
  %56 = getelementptr inbounds %struct.coucal_item, ptr %55, i32 0, i32 2, !dbg !2269
  %57 = getelementptr inbounds %struct.coucal_hashkeys, ptr %56, i32 0, i32 0, !dbg !2270
  %58 = load i32, ptr %57, align 8, !dbg !2270
  %59 = call i64 @coucal_hash_to_pos(ptr noundef %50, i32 noundef %58), !dbg !2271
  store i64 %59, ptr %9, align 8, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2272, metadata !DIExpression()), !dbg !2273
  %60 = load ptr, ptr %3, align 8, !dbg !2274
  %61 = load ptr, ptr %3, align 8, !dbg !2275
  %62 = getelementptr inbounds %struct.struct_coucal, ptr %61, i32 0, i32 3, !dbg !2276
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 0, !dbg !2277
  %64 = load i64, ptr %8, align 8, !dbg !2278
  %65 = getelementptr inbounds [16 x %struct.coucal_item], ptr %63, i64 0, i64 %64, !dbg !2275
  %66 = getelementptr inbounds %struct.coucal_item, ptr %65, i32 0, i32 2, !dbg !2279
  %67 = getelementptr inbounds %struct.coucal_hashkeys, ptr %66, i32 0, i32 1, !dbg !2280
  %68 = load i32, ptr %67, align 4, !dbg !2280
  %69 = call i64 @coucal_hash_to_pos(ptr noundef %60, i32 noundef %68), !dbg !2281
  store i64 %69, ptr %10, align 8, !dbg !2273
  %70 = load i64, ptr %9, align 8, !dbg !2282
  %71 = load i64, ptr %6, align 8, !dbg !2284
  %72 = icmp eq i64 %70, %71, !dbg !2285
  br i1 %72, label %77, label %73, !dbg !2286

73:                                               ; preds = %49
  %74 = load i64, ptr %10, align 8, !dbg !2287
  %75 = load i64, ptr %6, align 8, !dbg !2288
  %76 = icmp eq i64 %74, %75, !dbg !2289
  br i1 %76, label %77, label %144, !dbg !2290

77:                                               ; preds = %73, %49
  %78 = load i64, ptr %9, align 8, !dbg !2291
  %79 = load i64, ptr %6, align 8, !dbg !2294
  %80 = icmp eq i64 %78, %79, !dbg !2295
  br i1 %80, label %81, label %92, !dbg !2296

81:                                               ; preds = %77
  %82 = load ptr, ptr %3, align 8, !dbg !2297
  %83 = getelementptr inbounds %struct.struct_coucal, ptr %82, i32 0, i32 0, !dbg !2299
  %84 = load ptr, ptr %83, align 8, !dbg !2299
  %85 = load i64, ptr %9, align 8, !dbg !2300
  %86 = getelementptr inbounds %struct.coucal_item, ptr %84, i64 %85, !dbg !2297
  %87 = load ptr, ptr %3, align 8, !dbg !2301
  %88 = getelementptr inbounds %struct.struct_coucal, ptr %87, i32 0, i32 3, !dbg !2302
  %89 = getelementptr inbounds %struct.anon, ptr %88, i32 0, i32 0, !dbg !2303
  %90 = load i64, ptr %8, align 8, !dbg !2304
  %91 = getelementptr inbounds [16 x %struct.coucal_item], ptr %89, i64 0, i64 %90, !dbg !2301
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %86, ptr align 8 %91, i64 24, i1 false), !dbg !2301
  br label %108, !dbg !2305

92:                                               ; preds = %77
  %93 = load i64, ptr %10, align 8, !dbg !2306
  %94 = load i64, ptr %6, align 8, !dbg !2308
  %95 = icmp eq i64 %93, %94, !dbg !2309
  br i1 %95, label %96, label %107, !dbg !2310

96:                                               ; preds = %92
  %97 = load ptr, ptr %3, align 8, !dbg !2311
  %98 = getelementptr inbounds %struct.struct_coucal, ptr %97, i32 0, i32 0, !dbg !2313
  %99 = load ptr, ptr %98, align 8, !dbg !2313
  %100 = load i64, ptr %10, align 8, !dbg !2314
  %101 = getelementptr inbounds %struct.coucal_item, ptr %99, i64 %100, !dbg !2311
  %102 = load ptr, ptr %3, align 8, !dbg !2315
  %103 = getelementptr inbounds %struct.struct_coucal, ptr %102, i32 0, i32 3, !dbg !2316
  %104 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 0, !dbg !2317
  %105 = load i64, ptr %8, align 8, !dbg !2318
  %106 = getelementptr inbounds [16 x %struct.coucal_item], ptr %104, i64 0, i64 %105, !dbg !2315
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %101, ptr align 8 %106, i64 24, i1 false), !dbg !2315
  br label %107, !dbg !2319

107:                                              ; preds = %96, %92
  br label %108

108:                                              ; preds = %107, %81
  br label %109, !dbg !2320

109:                                              ; preds = %129, %108
  %110 = load i64, ptr %8, align 8, !dbg !2321
  %111 = add i64 %110, 1, !dbg !2324
  %112 = load ptr, ptr %3, align 8, !dbg !2325
  %113 = getelementptr inbounds %struct.struct_coucal, ptr %112, i32 0, i32 3, !dbg !2326
  %114 = getelementptr inbounds %struct.anon, ptr %113, i32 0, i32 1, !dbg !2327
  %115 = load i64, ptr %114, align 8, !dbg !2327
  %116 = icmp ult i64 %111, %115, !dbg !2328
  br i1 %116, label %117, label %132, !dbg !2329

117:                                              ; preds = %109
  %118 = load ptr, ptr %3, align 8, !dbg !2330
  %119 = getelementptr inbounds %struct.struct_coucal, ptr %118, i32 0, i32 3, !dbg !2332
  %120 = getelementptr inbounds %struct.anon, ptr %119, i32 0, i32 0, !dbg !2333
  %121 = load i64, ptr %8, align 8, !dbg !2334
  %122 = getelementptr inbounds [16 x %struct.coucal_item], ptr %120, i64 0, i64 %121, !dbg !2330
  %123 = load ptr, ptr %3, align 8, !dbg !2335
  %124 = getelementptr inbounds %struct.struct_coucal, ptr %123, i32 0, i32 3, !dbg !2336
  %125 = getelementptr inbounds %struct.anon, ptr %124, i32 0, i32 0, !dbg !2337
  %126 = load i64, ptr %8, align 8, !dbg !2338
  %127 = add i64 %126, 1, !dbg !2339
  %128 = getelementptr inbounds [16 x %struct.coucal_item], ptr %125, i64 0, i64 %127, !dbg !2335
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %122, ptr align 8 %128, i64 24, i1 false), !dbg !2335
  br label %129, !dbg !2340

129:                                              ; preds = %117
  %130 = load i64, ptr %8, align 8, !dbg !2341
  %131 = add i64 %130, 1, !dbg !2341
  store i64 %131, ptr %8, align 8, !dbg !2341
  br label %109, !dbg !2342, !llvm.loop !2343

132:                                              ; preds = %109
  %133 = load ptr, ptr %3, align 8, !dbg !2345
  %134 = getelementptr inbounds %struct.struct_coucal, ptr %133, i32 0, i32 3, !dbg !2346
  %135 = getelementptr inbounds %struct.anon, ptr %134, i32 0, i32 1, !dbg !2347
  %136 = load i64, ptr %135, align 8, !dbg !2348
  %137 = add i64 %136, -1, !dbg !2348
  store i64 %137, ptr %135, align 8, !dbg !2348
  %138 = load ptr, ptr %3, align 8, !dbg !2349
  %139 = load ptr, ptr %3, align 8, !dbg !2350
  %140 = getelementptr inbounds %struct.struct_coucal, ptr %139, i32 0, i32 3, !dbg !2351
  %141 = getelementptr inbounds %struct.anon, ptr %140, i32 0, i32 1, !dbg !2352
  %142 = load i64, ptr %141, align 8, !dbg !2352
  %143 = trunc i64 %142 to i32, !dbg !2353
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %138, ptr noundef @.str.13, i32 noundef %143), !dbg !2354
  br label %148, !dbg !2355

144:                                              ; preds = %73
  br label %145, !dbg !2356

145:                                              ; preds = %144
  %146 = load i64, ptr %8, align 8, !dbg !2357
  %147 = add i64 %146, 1, !dbg !2357
  store i64 %147, ptr %8, align 8, !dbg !2357
  br label %42, !dbg !2358, !llvm.loop !2359

148:                                              ; preds = %132, %42
  br label %149, !dbg !2361

149:                                              ; preds = %148, %38, %26
  br label %150, !dbg !2362

150:                                              ; preds = %149, %2
  %151 = load i32, ptr %7, align 4, !dbg !2363
  ret i32 %151, !dbg !2364
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_remove_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2365 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2369, metadata !DIExpression()), !dbg !2370
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2371, metadata !DIExpression()), !dbg !2372
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2373, metadata !DIExpression()), !dbg !2374
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2377, metadata !DIExpression()), !dbg !2378
  %12 = load ptr, ptr %6, align 8, !dbg !2379
  %13 = load ptr, ptr %8, align 8, !dbg !2380
  %14 = getelementptr inbounds %struct.coucal_hashkeys, ptr %13, i32 0, i32 0, !dbg !2381
  %15 = load i32, ptr %14, align 4, !dbg !2381
  %16 = call i64 @coucal_hash_to_pos(ptr noundef %12, i32 noundef %15), !dbg !2382
  store i64 %16, ptr %10, align 8, !dbg !2383
  %17 = load ptr, ptr %6, align 8, !dbg !2384
  %18 = load i64, ptr %10, align 8, !dbg !2386
  %19 = load ptr, ptr %7, align 8, !dbg !2387
  %20 = load ptr, ptr %8, align 8, !dbg !2388
  %21 = call i32 @coucal_matches(ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20), !dbg !2389
  %22 = icmp ne i32 %21, 0, !dbg !2389
  br i1 %22, label %23, label %32, !dbg !2390

23:                                               ; preds = %4
  %24 = load ptr, ptr %6, align 8, !dbg !2391
  %25 = load ptr, ptr %6, align 8, !dbg !2393
  %26 = getelementptr inbounds %struct.struct_coucal, ptr %25, i32 0, i32 0, !dbg !2394
  %27 = load ptr, ptr %26, align 8, !dbg !2394
  %28 = load i64, ptr %10, align 8, !dbg !2395
  %29 = getelementptr inbounds %struct.coucal_item, ptr %27, i64 %28, !dbg !2393
  call void @coucal_del_item(ptr noundef %24, ptr noundef %29), !dbg !2396
  %30 = load i64, ptr %10, align 8, !dbg !2397
  %31 = load ptr, ptr %9, align 8, !dbg !2398
  store i64 %30, ptr %31, align 8, !dbg !2399
  store i32 1, ptr %5, align 4, !dbg !2400
  br label %127, !dbg !2400

32:                                               ; preds = %4
  %33 = load ptr, ptr %6, align 8, !dbg !2401
  %34 = load ptr, ptr %8, align 8, !dbg !2402
  %35 = getelementptr inbounds %struct.coucal_hashkeys, ptr %34, i32 0, i32 1, !dbg !2403
  %36 = load i32, ptr %35, align 4, !dbg !2403
  %37 = call i64 @coucal_hash_to_pos(ptr noundef %33, i32 noundef %36), !dbg !2404
  store i64 %37, ptr %10, align 8, !dbg !2405
  %38 = load ptr, ptr %6, align 8, !dbg !2406
  %39 = load i64, ptr %10, align 8, !dbg !2408
  %40 = load ptr, ptr %7, align 8, !dbg !2409
  %41 = load ptr, ptr %8, align 8, !dbg !2410
  %42 = call i32 @coucal_matches(ptr noundef %38, i64 noundef %39, ptr noundef %40, ptr noundef %41), !dbg !2411
  %43 = icmp ne i32 %42, 0, !dbg !2411
  br i1 %43, label %44, label %53, !dbg !2412

44:                                               ; preds = %32
  %45 = load ptr, ptr %6, align 8, !dbg !2413
  %46 = load ptr, ptr %6, align 8, !dbg !2415
  %47 = getelementptr inbounds %struct.struct_coucal, ptr %46, i32 0, i32 0, !dbg !2416
  %48 = load ptr, ptr %47, align 8, !dbg !2416
  %49 = load i64, ptr %10, align 8, !dbg !2417
  %50 = getelementptr inbounds %struct.coucal_item, ptr %48, i64 %49, !dbg !2415
  call void @coucal_del_item(ptr noundef %45, ptr noundef %50), !dbg !2418
  %51 = load i64, ptr %10, align 8, !dbg !2419
  %52 = load ptr, ptr %9, align 8, !dbg !2420
  store i64 %51, ptr %52, align 8, !dbg !2421
  store i32 1, ptr %5, align 4, !dbg !2422
  br label %127, !dbg !2422

53:                                               ; preds = %32
  %54 = load ptr, ptr %6, align 8, !dbg !2423
  %55 = getelementptr inbounds %struct.struct_coucal, ptr %54, i32 0, i32 3, !dbg !2425
  %56 = getelementptr inbounds %struct.anon, ptr %55, i32 0, i32 1, !dbg !2426
  %57 = load i64, ptr %56, align 8, !dbg !2426
  %58 = icmp ne i64 %57, 0, !dbg !2427
  br i1 %58, label %59, label %126, !dbg !2428

59:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2429, metadata !DIExpression()), !dbg !2431
  store i64 0, ptr %11, align 8, !dbg !2432
  br label %60, !dbg !2434

60:                                               ; preds = %122, %59
  %61 = load i64, ptr %11, align 8, !dbg !2435
  %62 = load ptr, ptr %6, align 8, !dbg !2437
  %63 = getelementptr inbounds %struct.struct_coucal, ptr %62, i32 0, i32 3, !dbg !2438
  %64 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 1, !dbg !2439
  %65 = load i64, ptr %64, align 8, !dbg !2439
  %66 = icmp ult i64 %61, %65, !dbg !2440
  br i1 %66, label %67, label %125, !dbg !2441

67:                                               ; preds = %60
  %68 = load ptr, ptr %6, align 8, !dbg !2442
  %69 = load ptr, ptr %6, align 8, !dbg !2445
  %70 = getelementptr inbounds %struct.struct_coucal, ptr %69, i32 0, i32 3, !dbg !2446
  %71 = getelementptr inbounds %struct.anon, ptr %70, i32 0, i32 0, !dbg !2447
  %72 = load i64, ptr %11, align 8, !dbg !2448
  %73 = getelementptr inbounds [16 x %struct.coucal_item], ptr %71, i64 0, i64 %72, !dbg !2445
  %74 = load ptr, ptr %7, align 8, !dbg !2449
  %75 = load ptr, ptr %8, align 8, !dbg !2450
  %76 = call i32 @coucal_matches_(ptr noundef %68, ptr noundef %73, ptr noundef %74, ptr noundef %75), !dbg !2451
  %77 = icmp ne i32 %76, 0, !dbg !2451
  br i1 %77, label %78, label %121, !dbg !2452

78:                                               ; preds = %67
  %79 = load ptr, ptr %6, align 8, !dbg !2453
  %80 = load ptr, ptr %6, align 8, !dbg !2455
  %81 = getelementptr inbounds %struct.struct_coucal, ptr %80, i32 0, i32 3, !dbg !2456
  %82 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 0, !dbg !2457
  %83 = load i64, ptr %11, align 8, !dbg !2458
  %84 = getelementptr inbounds [16 x %struct.coucal_item], ptr %82, i64 0, i64 %83, !dbg !2455
  call void @coucal_del_item(ptr noundef %79, ptr noundef %84), !dbg !2459
  br label %85, !dbg !2460

85:                                               ; preds = %105, %78
  %86 = load i64, ptr %11, align 8, !dbg !2461
  %87 = add i64 %86, 1, !dbg !2464
  %88 = load ptr, ptr %6, align 8, !dbg !2465
  %89 = getelementptr inbounds %struct.struct_coucal, ptr %88, i32 0, i32 3, !dbg !2466
  %90 = getelementptr inbounds %struct.anon, ptr %89, i32 0, i32 1, !dbg !2467
  %91 = load i64, ptr %90, align 8, !dbg !2467
  %92 = icmp ult i64 %87, %91, !dbg !2468
  br i1 %92, label %93, label %108, !dbg !2469

93:                                               ; preds = %85
  %94 = load ptr, ptr %6, align 8, !dbg !2470
  %95 = getelementptr inbounds %struct.struct_coucal, ptr %94, i32 0, i32 3, !dbg !2472
  %96 = getelementptr inbounds %struct.anon, ptr %95, i32 0, i32 0, !dbg !2473
  %97 = load i64, ptr %11, align 8, !dbg !2474
  %98 = getelementptr inbounds [16 x %struct.coucal_item], ptr %96, i64 0, i64 %97, !dbg !2470
  %99 = load ptr, ptr %6, align 8, !dbg !2475
  %100 = getelementptr inbounds %struct.struct_coucal, ptr %99, i32 0, i32 3, !dbg !2476
  %101 = getelementptr inbounds %struct.anon, ptr %100, i32 0, i32 0, !dbg !2477
  %102 = load i64, ptr %11, align 8, !dbg !2478
  %103 = add i64 %102, 1, !dbg !2479
  %104 = getelementptr inbounds [16 x %struct.coucal_item], ptr %101, i64 0, i64 %103, !dbg !2475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %98, ptr align 8 %104, i64 24, i1 false), !dbg !2475
  br label %105, !dbg !2480

105:                                              ; preds = %93
  %106 = load i64, ptr %11, align 8, !dbg !2481
  %107 = add i64 %106, 1, !dbg !2481
  store i64 %107, ptr %11, align 8, !dbg !2481
  br label %85, !dbg !2482, !llvm.loop !2483

108:                                              ; preds = %85
  %109 = load ptr, ptr %6, align 8, !dbg !2485
  %110 = getelementptr inbounds %struct.struct_coucal, ptr %109, i32 0, i32 3, !dbg !2486
  %111 = getelementptr inbounds %struct.anon, ptr %110, i32 0, i32 1, !dbg !2487
  %112 = load i64, ptr %111, align 8, !dbg !2488
  %113 = add i64 %112, -1, !dbg !2488
  store i64 %113, ptr %111, align 8, !dbg !2488
  %114 = load ptr, ptr %9, align 8, !dbg !2489
  store i64 -1, ptr %114, align 8, !dbg !2490
  %115 = load ptr, ptr %6, align 8, !dbg !2491
  %116 = load ptr, ptr %6, align 8, !dbg !2492
  %117 = getelementptr inbounds %struct.struct_coucal, ptr %116, i32 0, i32 3, !dbg !2493
  %118 = getelementptr inbounds %struct.anon, ptr %117, i32 0, i32 1, !dbg !2494
  %119 = load i64, ptr %118, align 8, !dbg !2494
  %120 = trunc i64 %119 to i32, !dbg !2495
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %115, ptr noundef @.str.47, i32 noundef %120), !dbg !2496
  store i32 1, ptr %5, align 4, !dbg !2497
  br label %127, !dbg !2497

121:                                              ; preds = %67
  br label %122, !dbg !2498

122:                                              ; preds = %121
  %123 = load i64, ptr %11, align 8, !dbg !2499
  %124 = add i64 %123, 1, !dbg !2499
  store i64 %124, ptr %11, align 8, !dbg !2499
  br label %60, !dbg !2500, !llvm.loop !2501

125:                                              ; preds = %60
  br label %126, !dbg !2503

126:                                              ; preds = %125, %53
  store i32 0, ptr %5, align 4, !dbg !2504
  br label %127, !dbg !2504

127:                                              ; preds = %126, %108, %44, %23
  %128 = load i32, ptr %5, align 4, !dbg !2505
  ret i32 %128, !dbg !2505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_readptr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2506 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2507, metadata !DIExpression()), !dbg !2508
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2509, metadata !DIExpression()), !dbg !2510
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2511, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2513, metadata !DIExpression()), !dbg !2514
  %8 = load ptr, ptr %6, align 8, !dbg !2515
  store i64 0, ptr %8, align 8, !dbg !2516
  %9 = load ptr, ptr %4, align 8, !dbg !2517
  %10 = load ptr, ptr %5, align 8, !dbg !2518
  %11 = load ptr, ptr %6, align 8, !dbg !2519
  %12 = call i32 @coucal_read(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2520
  store i32 %12, ptr %7, align 4, !dbg !2521
  %13 = load ptr, ptr %6, align 8, !dbg !2522
  %14 = load i64, ptr %13, align 8, !dbg !2524
  %15 = icmp eq i64 %14, 0, !dbg !2525
  br i1 %15, label %16, label %17, !dbg !2526

16:                                               ; preds = %3
  store i32 0, ptr %7, align 4, !dbg !2527
  br label %17, !dbg !2528

17:                                               ; preds = %16, %3
  %18 = load i32, ptr %7, align 4, !dbg !2529
  ret i32 %18, !dbg !2530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_get_intptr(ptr noundef %0, ptr noundef %1) #0 !dbg !2531 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2534, metadata !DIExpression()), !dbg !2535
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2536, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2538, metadata !DIExpression()), !dbg !2539
  %7 = load ptr, ptr %4, align 8, !dbg !2540
  %8 = load ptr, ptr %5, align 8, !dbg !2542
  %9 = call i32 @coucal_read(ptr noundef %7, ptr noundef %8, ptr noundef %6), !dbg !2543
  %10 = icmp ne i32 %9, 0, !dbg !2543
  br i1 %10, label %12, label %11, !dbg !2544

11:                                               ; preds = %2
  store i64 0, ptr %3, align 8, !dbg !2545
  br label %14, !dbg !2545

12:                                               ; preds = %2
  %13 = load i64, ptr %6, align 8, !dbg !2547
  store i64 %13, ptr %3, align 8, !dbg !2548
  br label %14, !dbg !2548

14:                                               ; preds = %12, %11
  %15 = load i64, ptr %3, align 8, !dbg !2549
  ret i64 %15, !dbg !2549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_new(i64 noundef %0) #0 !dbg !2550 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2556
  %8 = load i64, ptr %3, align 8, !dbg !2557
  %9 = call i64 @coucal_get_pow2(i64 noundef %8), !dbg !2558
  store i64 %9, ptr %4, align 8, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2559, metadata !DIExpression()), !dbg !2560
  %10 = load i64, ptr %4, align 8, !dbg !2561
  %11 = call i32 @coucal_is_acceptable_pow2(i64 noundef %10), !dbg !2562
  store i32 %11, ptr %5, align 4, !dbg !2560
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2563, metadata !DIExpression()), !dbg !2564
  %12 = load i32, ptr %5, align 4, !dbg !2565
  %13 = icmp ne i32 %12, 0, !dbg !2565
  br i1 %13, label %14, label %16, !dbg !2565

14:                                               ; preds = %1
  %15 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 624) #15, !dbg !2566
  br label %17, !dbg !2565

16:                                               ; preds = %1
  br label %17, !dbg !2565

17:                                               ; preds = %16, %14
  %18 = phi ptr [ %15, %14 ], [ null, %16 ], !dbg !2565
  store ptr %18, ptr %6, align 8, !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2567, metadata !DIExpression()), !dbg !2568
  %19 = load i64, ptr %4, align 8, !dbg !2569
  %20 = shl i64 1, %19, !dbg !2569
  %21 = call noalias ptr @calloc(i64 noundef %20, i64 noundef 24) #15, !dbg !2570
  store ptr %21, ptr %7, align 8, !dbg !2568
  %22 = load i32, ptr %5, align 4, !dbg !2571
  %23 = icmp ne i32 %22, 0, !dbg !2571
  br i1 %23, label %24, label %135, !dbg !2573

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8, !dbg !2574
  %26 = icmp ne ptr %25, null, !dbg !2575
  br i1 %26, label %27, label %135, !dbg !2576

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8, !dbg !2577
  %29 = icmp ne ptr %28, null, !dbg !2578
  br i1 %29, label %30, label %135, !dbg !2579

30:                                               ; preds = %27
  %31 = load i64, ptr %4, align 8, !dbg !2580
  %32 = load ptr, ptr %6, align 8, !dbg !2582
  %33 = getelementptr inbounds %struct.struct_coucal, ptr %32, i32 0, i32 1, !dbg !2583
  store i64 %31, ptr %33, align 8, !dbg !2584
  %34 = load ptr, ptr %7, align 8, !dbg !2585
  %35 = load ptr, ptr %6, align 8, !dbg !2586
  %36 = getelementptr inbounds %struct.struct_coucal, ptr %35, i32 0, i32 0, !dbg !2587
  store ptr %34, ptr %36, align 8, !dbg !2588
  %37 = load ptr, ptr %6, align 8, !dbg !2589
  %38 = getelementptr inbounds %struct.struct_coucal, ptr %37, i32 0, i32 2, !dbg !2590
  store i64 0, ptr %38, align 8, !dbg !2591
  %39 = load ptr, ptr %6, align 8, !dbg !2592
  %40 = getelementptr inbounds %struct.struct_coucal, ptr %39, i32 0, i32 3, !dbg !2593
  %41 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1, !dbg !2594
  store i64 0, ptr %41, align 8, !dbg !2595
  %42 = load ptr, ptr %6, align 8, !dbg !2596
  %43 = getelementptr inbounds %struct.struct_coucal, ptr %42, i32 0, i32 4, !dbg !2597
  %44 = getelementptr inbounds %struct.anon.0, ptr %43, i32 0, i32 0, !dbg !2598
  store ptr null, ptr %44, align 8, !dbg !2599
  %45 = load ptr, ptr %6, align 8, !dbg !2600
  %46 = getelementptr inbounds %struct.struct_coucal, ptr %45, i32 0, i32 4, !dbg !2601
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i32 0, i32 1, !dbg !2602
  store i64 0, ptr %47, align 8, !dbg !2603
  %48 = load ptr, ptr %6, align 8, !dbg !2604
  %49 = getelementptr inbounds %struct.struct_coucal, ptr %48, i32 0, i32 4, !dbg !2605
  %50 = getelementptr inbounds %struct.anon.0, ptr %49, i32 0, i32 2, !dbg !2606
  store i64 0, ptr %50, align 8, !dbg !2607
  %51 = load ptr, ptr %6, align 8, !dbg !2608
  %52 = getelementptr inbounds %struct.struct_coucal, ptr %51, i32 0, i32 4, !dbg !2609
  %53 = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 3, !dbg !2610
  store i64 0, ptr %53, align 8, !dbg !2611
  %54 = load ptr, ptr %6, align 8, !dbg !2612
  %55 = getelementptr inbounds %struct.struct_coucal, ptr %54, i32 0, i32 5, !dbg !2613
  %56 = getelementptr inbounds %struct.anon.1, ptr %55, i32 0, i32 0, !dbg !2614
  store i64 0, ptr %56, align 8, !dbg !2615
  %57 = load ptr, ptr %6, align 8, !dbg !2616
  %58 = getelementptr inbounds %struct.struct_coucal, ptr %57, i32 0, i32 5, !dbg !2617
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1, !dbg !2618
  store i64 0, ptr %59, align 8, !dbg !2619
  %60 = load ptr, ptr %6, align 8, !dbg !2620
  %61 = getelementptr inbounds %struct.struct_coucal, ptr %60, i32 0, i32 5, !dbg !2621
  %62 = getelementptr inbounds %struct.anon.1, ptr %61, i32 0, i32 2, !dbg !2622
  store i64 0, ptr %62, align 8, !dbg !2623
  %63 = load ptr, ptr %6, align 8, !dbg !2624
  %64 = getelementptr inbounds %struct.struct_coucal, ptr %63, i32 0, i32 5, !dbg !2625
  %65 = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 3, !dbg !2626
  store i64 0, ptr %65, align 8, !dbg !2627
  %66 = load ptr, ptr %6, align 8, !dbg !2628
  %67 = getelementptr inbounds %struct.struct_coucal, ptr %66, i32 0, i32 5, !dbg !2629
  %68 = getelementptr inbounds %struct.anon.1, ptr %67, i32 0, i32 4, !dbg !2630
  store i64 0, ptr %68, align 8, !dbg !2631
  %69 = load ptr, ptr %6, align 8, !dbg !2632
  %70 = getelementptr inbounds %struct.struct_coucal, ptr %69, i32 0, i32 5, !dbg !2633
  %71 = getelementptr inbounds %struct.anon.1, ptr %70, i32 0, i32 6, !dbg !2634
  store i64 0, ptr %71, align 8, !dbg !2635
  %72 = load ptr, ptr %6, align 8, !dbg !2636
  %73 = getelementptr inbounds %struct.struct_coucal, ptr %72, i32 0, i32 5, !dbg !2637
  %74 = getelementptr inbounds %struct.anon.1, ptr %73, i32 0, i32 7, !dbg !2638
  store i64 0, ptr %74, align 8, !dbg !2639
  %75 = load ptr, ptr %6, align 8, !dbg !2640
  %76 = getelementptr inbounds %struct.struct_coucal, ptr %75, i32 0, i32 5, !dbg !2641
  %77 = getelementptr inbounds %struct.anon.1, ptr %76, i32 0, i32 5, !dbg !2642
  store i64 0, ptr %77, align 8, !dbg !2643
  %78 = load ptr, ptr %6, align 8, !dbg !2644
  %79 = getelementptr inbounds %struct.struct_coucal, ptr %78, i32 0, i32 6, !dbg !2645
  %80 = getelementptr inbounds %struct.anon.2, ptr %79, i32 0, i32 0, !dbg !2646
  %81 = getelementptr inbounds %struct.anon.3, ptr %80, i32 0, i32 0, !dbg !2647
  store ptr null, ptr %81, align 8, !dbg !2648
  %82 = load ptr, ptr %6, align 8, !dbg !2649
  %83 = getelementptr inbounds %struct.struct_coucal, ptr %82, i32 0, i32 6, !dbg !2650
  %84 = getelementptr inbounds %struct.anon.2, ptr %83, i32 0, i32 0, !dbg !2651
  %85 = getelementptr inbounds %struct.anon.3, ptr %84, i32 0, i32 1, !dbg !2652
  store ptr null, ptr %85, align 8, !dbg !2653
  %86 = load ptr, ptr %6, align 8, !dbg !2654
  %87 = getelementptr inbounds %struct.struct_coucal, ptr %86, i32 0, i32 6, !dbg !2655
  %88 = getelementptr inbounds %struct.anon.2, ptr %87, i32 0, i32 1, !dbg !2656
  %89 = getelementptr inbounds %struct.anon.4, ptr %88, i32 0, i32 0, !dbg !2657
  store ptr null, ptr %89, align 8, !dbg !2658
  %90 = load ptr, ptr %6, align 8, !dbg !2659
  %91 = getelementptr inbounds %struct.struct_coucal, ptr %90, i32 0, i32 6, !dbg !2660
  %92 = getelementptr inbounds %struct.anon.2, ptr %91, i32 0, i32 1, !dbg !2661
  %93 = getelementptr inbounds %struct.anon.4, ptr %92, i32 0, i32 1, !dbg !2662
  store ptr null, ptr %93, align 8, !dbg !2663
  %94 = load ptr, ptr %6, align 8, !dbg !2664
  %95 = getelementptr inbounds %struct.struct_coucal, ptr %94, i32 0, i32 6, !dbg !2665
  %96 = getelementptr inbounds %struct.anon.2, ptr %95, i32 0, i32 1, !dbg !2666
  %97 = getelementptr inbounds %struct.anon.4, ptr %96, i32 0, i32 2, !dbg !2667
  store ptr null, ptr %97, align 8, !dbg !2668
  %98 = load ptr, ptr %6, align 8, !dbg !2669
  %99 = getelementptr inbounds %struct.struct_coucal, ptr %98, i32 0, i32 6, !dbg !2670
  %100 = getelementptr inbounds %struct.anon.2, ptr %99, i32 0, i32 1, !dbg !2671
  %101 = getelementptr inbounds %struct.anon.4, ptr %100, i32 0, i32 3, !dbg !2672
  store ptr null, ptr %101, align 8, !dbg !2673
  %102 = load ptr, ptr %6, align 8, !dbg !2674
  %103 = getelementptr inbounds %struct.struct_coucal, ptr %102, i32 0, i32 6, !dbg !2675
  %104 = getelementptr inbounds %struct.anon.2, ptr %103, i32 0, i32 1, !dbg !2676
  %105 = getelementptr inbounds %struct.anon.4, ptr %104, i32 0, i32 4, !dbg !2677
  store ptr null, ptr %105, align 8, !dbg !2678
  %106 = load ptr, ptr %6, align 8, !dbg !2679
  %107 = getelementptr inbounds %struct.struct_coucal, ptr %106, i32 0, i32 6, !dbg !2680
  %108 = getelementptr inbounds %struct.anon.2, ptr %107, i32 0, i32 2, !dbg !2681
  %109 = getelementptr inbounds %struct.anon.5, ptr %108, i32 0, i32 0, !dbg !2682
  store ptr null, ptr %109, align 8, !dbg !2683
  %110 = load ptr, ptr %6, align 8, !dbg !2684
  %111 = getelementptr inbounds %struct.struct_coucal, ptr %110, i32 0, i32 6, !dbg !2685
  %112 = getelementptr inbounds %struct.anon.2, ptr %111, i32 0, i32 2, !dbg !2686
  %113 = getelementptr inbounds %struct.anon.5, ptr %112, i32 0, i32 1, !dbg !2687
  store ptr null, ptr %113, align 8, !dbg !2688
  %114 = load ptr, ptr %6, align 8, !dbg !2689
  %115 = getelementptr inbounds %struct.struct_coucal, ptr %114, i32 0, i32 6, !dbg !2690
  %116 = getelementptr inbounds %struct.anon.2, ptr %115, i32 0, i32 2, !dbg !2691
  %117 = getelementptr inbounds %struct.anon.5, ptr %116, i32 0, i32 3, !dbg !2692
  store ptr null, ptr %117, align 8, !dbg !2693
  %118 = load ptr, ptr %6, align 8, !dbg !2694
  %119 = getelementptr inbounds %struct.struct_coucal, ptr %118, i32 0, i32 6, !dbg !2695
  %120 = getelementptr inbounds %struct.anon.2, ptr %119, i32 0, i32 2, !dbg !2696
  %121 = getelementptr inbounds %struct.anon.5, ptr %120, i32 0, i32 2, !dbg !2697
  store ptr null, ptr %121, align 8, !dbg !2698
  %122 = load ptr, ptr %6, align 8, !dbg !2699
  %123 = getelementptr inbounds %struct.struct_coucal, ptr %122, i32 0, i32 6, !dbg !2700
  %124 = getelementptr inbounds %struct.anon.2, ptr %123, i32 0, i32 3, !dbg !2701
  %125 = getelementptr inbounds %struct.anon.6, ptr %124, i32 0, i32 0, !dbg !2702
  store ptr null, ptr %125, align 8, !dbg !2703
  %126 = load ptr, ptr %6, align 8, !dbg !2704
  %127 = getelementptr inbounds %struct.struct_coucal, ptr %126, i32 0, i32 6, !dbg !2705
  %128 = getelementptr inbounds %struct.anon.2, ptr %127, i32 0, i32 3, !dbg !2706
  %129 = getelementptr inbounds %struct.anon.6, ptr %128, i32 0, i32 1, !dbg !2707
  store ptr null, ptr %129, align 8, !dbg !2708
  %130 = load ptr, ptr %6, align 8, !dbg !2709
  %131 = getelementptr inbounds %struct.struct_coucal, ptr %130, i32 0, i32 6, !dbg !2710
  %132 = getelementptr inbounds %struct.anon.2, ptr %131, i32 0, i32 3, !dbg !2711
  %133 = getelementptr inbounds %struct.anon.6, ptr %132, i32 0, i32 2, !dbg !2712
  store ptr null, ptr %133, align 8, !dbg !2713
  %134 = load ptr, ptr %6, align 8, !dbg !2714
  store ptr %134, ptr %2, align 8, !dbg !2715
  br label %146, !dbg !2715

135:                                              ; preds = %27, %24, %17
  %136 = load ptr, ptr %7, align 8, !dbg !2716
  %137 = icmp ne ptr %136, null, !dbg !2718
  br i1 %137, label %138, label %140, !dbg !2719

138:                                              ; preds = %135
  %139 = load ptr, ptr %7, align 8, !dbg !2720
  call void @free(ptr noundef %139) #16, !dbg !2722
  br label %140, !dbg !2723

140:                                              ; preds = %138, %135
  %141 = load ptr, ptr %6, align 8, !dbg !2724
  %142 = icmp ne ptr %141, null, !dbg !2726
  br i1 %142, label %143, label %145, !dbg !2727

143:                                              ; preds = %140
  %144 = load ptr, ptr %6, align 8, !dbg !2728
  call void @free(ptr noundef %144) #16, !dbg !2730
  br label %145, !dbg !2731

145:                                              ; preds = %143, %140
  store ptr null, ptr %2, align 8, !dbg !2732
  br label %146, !dbg !2732

146:                                              ; preds = %145, %30
  %147 = load ptr, ptr %2, align 8, !dbg !2733
  ret ptr %147, !dbg !2733
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coucal_get_pow2(i64 noundef %0) #0 !dbg !2734 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2739, metadata !DIExpression()), !dbg !2740
  store i64 4, ptr %3, align 8, !dbg !2741
  br label %4, !dbg !2743

4:                                                ; preds = %15, %1
  %5 = load i64, ptr %3, align 8, !dbg !2744
  %6 = icmp ule i64 %5, 32, !dbg !2746
  br i1 %6, label %7, label %12, !dbg !2747

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !dbg !2748
  %9 = shl i64 1, %8, !dbg !2748
  %10 = load i64, ptr %2, align 8, !dbg !2749
  %11 = icmp ult i64 %9, %10, !dbg !2750
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ], !dbg !2751
  br i1 %13, label %14, label %18, !dbg !2752

14:                                               ; preds = %12
  br label %15, !dbg !2752

15:                                               ; preds = %14
  %16 = load i64, ptr %3, align 8, !dbg !2753
  %17 = add i64 %16, 1, !dbg !2753
  store i64 %17, ptr %3, align 8, !dbg !2753
  br label %4, !dbg !2754, !llvm.loop !2755

18:                                               ; preds = %12
  %19 = load i64, ptr %3, align 8, !dbg !2757
  ret i64 %19, !dbg !2758
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coucal_created(ptr noundef %0) #0 !dbg !2759 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2763
  %3 = load ptr, ptr %2, align 8, !dbg !2764
  %4 = icmp ne ptr %3, null, !dbg !2765
  br i1 %4, label %5, label %10, !dbg !2766

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !2767
  %7 = getelementptr inbounds %struct.struct_coucal, ptr %6, i32 0, i32 0, !dbg !2768
  %8 = load ptr, ptr %7, align 8, !dbg !2768
  %9 = icmp ne ptr %8, null, !dbg !2769
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ], !dbg !2770
  %12 = zext i1 %11 to i32, !dbg !2766
  ret i32 %12, !dbg !2771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_value_is_malloc(ptr noundef %0, i32 noundef %1) #0 !dbg !2772 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2777, metadata !DIExpression()), !dbg !2778
  %5 = load i32, ptr %4, align 4, !dbg !2779
  %6 = icmp ne i32 %5, 0, !dbg !2779
  br i1 %6, label %7, label %24, !dbg !2781

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !2782
  %9 = getelementptr inbounds %struct.struct_coucal, ptr %8, i32 0, i32 6, !dbg !2785
  %10 = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 0, !dbg !2786
  %11 = getelementptr inbounds %struct.anon.3, ptr %10, i32 0, i32 0, !dbg !2787
  %12 = load ptr, ptr %11, align 8, !dbg !2787
  %13 = icmp eq ptr %12, null, !dbg !2788
  br i1 %13, label %14, label %23, !dbg !2789

14:                                               ; preds = %7
  %15 = load ptr, ptr %3, align 8, !dbg !2790
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 6, !dbg !2792
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 0, !dbg !2793
  %18 = getelementptr inbounds %struct.anon.3, ptr %17, i32 0, i32 0, !dbg !2794
  store ptr @coucal_default_free_handler, ptr %18, align 8, !dbg !2795
  %19 = load ptr, ptr %3, align 8, !dbg !2796
  %20 = getelementptr inbounds %struct.struct_coucal, ptr %19, i32 0, i32 6, !dbg !2797
  %21 = getelementptr inbounds %struct.anon.2, ptr %20, i32 0, i32 0, !dbg !2798
  %22 = getelementptr inbounds %struct.anon.3, ptr %21, i32 0, i32 1, !dbg !2799
  store ptr null, ptr %22, align 8, !dbg !2800
  br label %23, !dbg !2801

23:                                               ; preds = %14, %7
  br label %33, !dbg !2802

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 8, !dbg !2803
  %26 = getelementptr inbounds %struct.struct_coucal, ptr %25, i32 0, i32 6, !dbg !2805
  %27 = getelementptr inbounds %struct.anon.2, ptr %26, i32 0, i32 0, !dbg !2806
  %28 = getelementptr inbounds %struct.anon.3, ptr %27, i32 0, i32 0, !dbg !2807
  store ptr null, ptr %28, align 8, !dbg !2808
  %29 = load ptr, ptr %3, align 8, !dbg !2809
  %30 = getelementptr inbounds %struct.struct_coucal, ptr %29, i32 0, i32 6, !dbg !2810
  %31 = getelementptr inbounds %struct.anon.2, ptr %30, i32 0, i32 0, !dbg !2811
  %32 = getelementptr inbounds %struct.anon.3, ptr %31, i32 0, i32 1, !dbg !2812
  store ptr null, ptr %32, align 8, !dbg !2813
  br label %33

33:                                               ; preds = %24, %23
  ret void, !dbg !2814
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_default_free_handler(ptr noundef %0, i64 %1) #0 !dbg !2815 {
  %3 = alloca %union.coucal_value, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %union.coucal_value, ptr %3, i32 0, i32 0
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2818, metadata !DIExpression()), !dbg !2819
  %6 = load ptr, ptr %4, align 8, !dbg !2820
  %7 = load ptr, ptr %3, align 8, !dbg !2821
  %8 = icmp ne ptr %7, null, !dbg !2823
  br i1 %8, label %9, label %11, !dbg !2824

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !2825
  call void @free(ptr noundef %10) #16, !dbg !2826
  br label %11, !dbg !2826

11:                                               ; preds = %9, %2
  ret void, !dbg !2827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_set_name(ptr noundef %0, ptr noundef %1) #0 !dbg !2828 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2831, metadata !DIExpression()), !dbg !2832
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2833, metadata !DIExpression()), !dbg !2834
  %5 = load ptr, ptr %4, align 8, !dbg !2835
  %6 = load ptr, ptr %3, align 8, !dbg !2836
  %7 = getelementptr inbounds %struct.struct_coucal, ptr %6, i32 0, i32 6, !dbg !2837
  %8 = getelementptr inbounds %struct.anon.2, ptr %7, i32 0, i32 2, !dbg !2838
  %9 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 3, !dbg !2839
  store ptr %5, ptr %9, align 8, !dbg !2840
  ret void, !dbg !2841
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_value_set_value_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2842 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2845, metadata !DIExpression()), !dbg !2846
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !2848
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2849, metadata !DIExpression()), !dbg !2850
  %7 = load ptr, ptr %5, align 8, !dbg !2851
  %8 = load ptr, ptr %4, align 8, !dbg !2852
  %9 = getelementptr inbounds %struct.struct_coucal, ptr %8, i32 0, i32 6, !dbg !2853
  %10 = getelementptr inbounds %struct.anon.2, ptr %9, i32 0, i32 0, !dbg !2854
  %11 = getelementptr inbounds %struct.anon.3, ptr %10, i32 0, i32 0, !dbg !2855
  store ptr %7, ptr %11, align 8, !dbg !2856
  %12 = load ptr, ptr %6, align 8, !dbg !2857
  %13 = load ptr, ptr %4, align 8, !dbg !2858
  %14 = getelementptr inbounds %struct.struct_coucal, ptr %13, i32 0, i32 6, !dbg !2859
  %15 = getelementptr inbounds %struct.anon.2, ptr %14, i32 0, i32 0, !dbg !2860
  %16 = getelementptr inbounds %struct.anon.3, ptr %15, i32 0, i32 1, !dbg !2861
  store ptr %12, ptr %16, align 8, !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_value_set_key_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !2864 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2867, metadata !DIExpression()), !dbg !2868
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2869, metadata !DIExpression()), !dbg !2870
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2871, metadata !DIExpression()), !dbg !2872
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2873, metadata !DIExpression()), !dbg !2874
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2875, metadata !DIExpression()), !dbg !2876
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2877, metadata !DIExpression()), !dbg !2878
  %13 = load ptr, ptr %8, align 8, !dbg !2879
  %14 = icmp eq ptr %13, null, !dbg !2879
  %15 = zext i1 %14 to i32, !dbg !2879
  %16 = load ptr, ptr %9, align 8, !dbg !2879
  %17 = icmp eq ptr %16, null, !dbg !2879
  %18 = zext i1 %17 to i32, !dbg !2879
  %19 = icmp eq i32 %15, %18, !dbg !2879
  br i1 %19, label %22, label %20, !dbg !2879

20:                                               ; preds = %6
  %21 = load ptr, ptr %7, align 8, !dbg !2879
  call void @coucal_assert_failed(ptr noundef %21, ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 1446), !dbg !2879
  br label %22, !dbg !2879

22:                                               ; preds = %20, %6
  %23 = phi i1 [ true, %6 ], [ false, %20 ]
  %24 = zext i1 %23 to i32, !dbg !2879
  %25 = load ptr, ptr %8, align 8, !dbg !2880
  %26 = load ptr, ptr %7, align 8, !dbg !2881
  %27 = getelementptr inbounds %struct.struct_coucal, ptr %26, i32 0, i32 6, !dbg !2882
  %28 = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 1, !dbg !2883
  %29 = getelementptr inbounds %struct.anon.4, ptr %28, i32 0, i32 0, !dbg !2884
  store ptr %25, ptr %29, align 8, !dbg !2885
  %30 = load ptr, ptr %9, align 8, !dbg !2886
  %31 = load ptr, ptr %7, align 8, !dbg !2887
  %32 = getelementptr inbounds %struct.struct_coucal, ptr %31, i32 0, i32 6, !dbg !2888
  %33 = getelementptr inbounds %struct.anon.2, ptr %32, i32 0, i32 1, !dbg !2889
  %34 = getelementptr inbounds %struct.anon.4, ptr %33, i32 0, i32 1, !dbg !2890
  store ptr %30, ptr %34, align 8, !dbg !2891
  %35 = load ptr, ptr %10, align 8, !dbg !2892
  %36 = load ptr, ptr %7, align 8, !dbg !2893
  %37 = getelementptr inbounds %struct.struct_coucal, ptr %36, i32 0, i32 6, !dbg !2894
  %38 = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 1, !dbg !2895
  %39 = getelementptr inbounds %struct.anon.4, ptr %38, i32 0, i32 2, !dbg !2896
  store ptr %35, ptr %39, align 8, !dbg !2897
  %40 = load ptr, ptr %11, align 8, !dbg !2898
  %41 = load ptr, ptr %7, align 8, !dbg !2899
  %42 = getelementptr inbounds %struct.struct_coucal, ptr %41, i32 0, i32 6, !dbg !2900
  %43 = getelementptr inbounds %struct.anon.2, ptr %42, i32 0, i32 1, !dbg !2901
  %44 = getelementptr inbounds %struct.anon.4, ptr %43, i32 0, i32 3, !dbg !2902
  store ptr %40, ptr %44, align 8, !dbg !2903
  %45 = load ptr, ptr %12, align 8, !dbg !2904
  %46 = load ptr, ptr %7, align 8, !dbg !2905
  %47 = getelementptr inbounds %struct.struct_coucal, ptr %46, i32 0, i32 6, !dbg !2906
  %48 = getelementptr inbounds %struct.anon.2, ptr %47, i32 0, i32 1, !dbg !2907
  %49 = getelementptr inbounds %struct.anon.4, ptr %48, i32 0, i32 4, !dbg !2908
  store ptr %45, ptr %49, align 8, !dbg !2909
  ret void, !dbg !2910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_set_assert_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2911 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2914, metadata !DIExpression()), !dbg !2915
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2916, metadata !DIExpression()), !dbg !2917
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2918, metadata !DIExpression()), !dbg !2919
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2920, metadata !DIExpression()), !dbg !2921
  %9 = load ptr, ptr %6, align 8, !dbg !2922
  %10 = load ptr, ptr %5, align 8, !dbg !2923
  %11 = getelementptr inbounds %struct.struct_coucal, ptr %10, i32 0, i32 6, !dbg !2924
  %12 = getelementptr inbounds %struct.anon.2, ptr %11, i32 0, i32 2, !dbg !2925
  %13 = getelementptr inbounds %struct.anon.5, ptr %12, i32 0, i32 0, !dbg !2926
  store ptr %9, ptr %13, align 8, !dbg !2927
  %14 = load ptr, ptr %7, align 8, !dbg !2928
  %15 = load ptr, ptr %5, align 8, !dbg !2929
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 6, !dbg !2930
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 2, !dbg !2931
  %18 = getelementptr inbounds %struct.anon.5, ptr %17, i32 0, i32 1, !dbg !2932
  store ptr %14, ptr %18, align 8, !dbg !2933
  %19 = load ptr, ptr %8, align 8, !dbg !2934
  %20 = load ptr, ptr %5, align 8, !dbg !2935
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 6, !dbg !2936
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 2, !dbg !2937
  %23 = getelementptr inbounds %struct.anon.5, ptr %22, i32 0, i32 2, !dbg !2938
  store ptr %19, ptr %23, align 8, !dbg !2939
  ret void, !dbg !2940
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_set_print_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2941 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2944, metadata !DIExpression()), !dbg !2945
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2946, metadata !DIExpression()), !dbg !2947
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2948, metadata !DIExpression()), !dbg !2949
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2950, metadata !DIExpression()), !dbg !2951
  %9 = load ptr, ptr %6, align 8, !dbg !2952
  %10 = load ptr, ptr %5, align 8, !dbg !2953
  %11 = getelementptr inbounds %struct.struct_coucal, ptr %10, i32 0, i32 6, !dbg !2954
  %12 = getelementptr inbounds %struct.anon.2, ptr %11, i32 0, i32 3, !dbg !2955
  %13 = getelementptr inbounds %struct.anon.6, ptr %12, i32 0, i32 0, !dbg !2956
  store ptr %9, ptr %13, align 8, !dbg !2957
  %14 = load ptr, ptr %7, align 8, !dbg !2958
  %15 = load ptr, ptr %5, align 8, !dbg !2959
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 6, !dbg !2960
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 3, !dbg !2961
  %18 = getelementptr inbounds %struct.anon.6, ptr %17, i32 0, i32 1, !dbg !2962
  store ptr %14, ptr %18, align 8, !dbg !2963
  %19 = load ptr, ptr %8, align 8, !dbg !2964
  %20 = load ptr, ptr %5, align 8, !dbg !2965
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 6, !dbg !2966
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 3, !dbg !2967
  %23 = getelementptr inbounds %struct.anon.6, ptr %22, i32 0, i32 2, !dbg !2968
  store ptr %19, ptr %23, align 8, !dbg !2969
  ret void, !dbg !2970
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_nitems(ptr noundef %0) #0 !dbg !2971 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2974, metadata !DIExpression()), !dbg !2975
  %4 = load ptr, ptr %3, align 8, !dbg !2976
  %5 = icmp ne ptr %4, null, !dbg !2978
  br i1 %5, label %6, label %10, !dbg !2979

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !2980
  %8 = getelementptr inbounds %struct.struct_coucal, ptr %7, i32 0, i32 2, !dbg !2981
  %9 = load i64, ptr %8, align 8, !dbg !2981
  store i64 %9, ptr %2, align 8, !dbg !2982
  br label %11, !dbg !2982

10:                                               ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !2983
  br label %11, !dbg !2983

11:                                               ; preds = %10, %6
  %12 = load i64, ptr %2, align 8, !dbg !2984
  ret i64 %12, !dbg !2984
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_memory_size(ptr noundef %0) #0 !dbg !2985 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i64 624, ptr %3, align 8, !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !2991
  %6 = load ptr, ptr %2, align 8, !dbg !2992
  %7 = getelementptr inbounds %struct.struct_coucal, ptr %6, i32 0, i32 1, !dbg !2992
  %8 = load i64, ptr %7, align 8, !dbg !2992
  %9 = shl i64 1, %8, !dbg !2992
  %10 = mul i64 %9, 24, !dbg !2993
  store i64 %10, ptr %4, align 8, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2994, metadata !DIExpression()), !dbg !2995
  %11 = load ptr, ptr %2, align 8, !dbg !2996
  %12 = getelementptr inbounds %struct.struct_coucal, ptr %11, i32 0, i32 4, !dbg !2997
  %13 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 2, !dbg !2998
  %14 = load i64, ptr %13, align 8, !dbg !2998
  %15 = mul i64 %14, 1, !dbg !2999
  store i64 %15, ptr %5, align 8, !dbg !2995
  %16 = load i64, ptr %4, align 8, !dbg !3000
  %17 = add i64 624, %16, !dbg !3001
  %18 = load i64, ptr %5, align 8, !dbg !3002
  %19 = add i64 %17, %18, !dbg !3003
  ret i64 %19, !dbg !3004
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coucal_hash_size() #0 !dbg !3005 {
  ret i64 32, !dbg !3008
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_delete(ptr noundef %0) #0 !dbg !3009 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %6 = load ptr, ptr %2, align 8, !dbg !3015
  %7 = icmp ne ptr %6, null, !dbg !3017
  br i1 %7, label %8, label %80, !dbg !3018

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3019, metadata !DIExpression()), !dbg !3021
  %9 = load ptr, ptr %2, align 8, !dbg !3022
  %10 = load ptr, ptr %9, align 8, !dbg !3023
  store ptr %10, ptr %3, align 8, !dbg !3021
  %11 = load ptr, ptr %3, align 8, !dbg !3024
  %12 = icmp ne ptr %11, null, !dbg !3026
  br i1 %12, label %13, label %79, !dbg !3027

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !dbg !3028
  call void @coucal_log_stats(ptr noundef %14), !dbg !3030
  %15 = load ptr, ptr %3, align 8, !dbg !3031
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 0, !dbg !3033
  %17 = load ptr, ptr %16, align 8, !dbg !3033
  %18 = icmp ne ptr %17, null, !dbg !3034
  br i1 %18, label %19, label %60, !dbg !3035

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3036, metadata !DIExpression()), !dbg !3038
  %20 = load ptr, ptr %3, align 8, !dbg !3039
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 1, !dbg !3039
  %22 = load i64, ptr %21, align 8, !dbg !3039
  %23 = shl i64 1, %22, !dbg !3039
  store i64 %23, ptr %4, align 8, !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i64 0, ptr %5, align 8, !dbg !3042
  br label %24, !dbg !3044

24:                                               ; preds = %37, %19
  %25 = load i64, ptr %5, align 8, !dbg !3045
  %26 = load i64, ptr %4, align 8, !dbg !3047
  %27 = icmp ult i64 %25, %26, !dbg !3048
  br i1 %27, label %28, label %40, !dbg !3049

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 8, !dbg !3050
  %30 = load i64, ptr %5, align 8, !dbg !3053
  %31 = call i32 @coucal_is_free(ptr noundef %29, i64 noundef %30), !dbg !3054
  %32 = icmp ne i32 %31, 0, !dbg !3054
  br i1 %32, label %36, label %33, !dbg !3055

33:                                               ; preds = %28
  %34 = load ptr, ptr %3, align 8, !dbg !3056
  %35 = load i64, ptr %5, align 8, !dbg !3058
  call void @coucal_del_value(ptr noundef %34, i64 noundef %35), !dbg !3059
  br label %36, !dbg !3060

36:                                               ; preds = %33, %28
  br label %37, !dbg !3061

37:                                               ; preds = %36
  %38 = load i64, ptr %5, align 8, !dbg !3062
  %39 = add i64 %38, 1, !dbg !3062
  store i64 %39, ptr %5, align 8, !dbg !3062
  br label %24, !dbg !3063, !llvm.loop !3064

40:                                               ; preds = %24
  store i64 0, ptr %5, align 8, !dbg !3066
  br label %41, !dbg !3068

41:                                               ; preds = %56, %40
  %42 = load i64, ptr %5, align 8, !dbg !3069
  %43 = load ptr, ptr %3, align 8, !dbg !3071
  %44 = getelementptr inbounds %struct.struct_coucal, ptr %43, i32 0, i32 3, !dbg !3072
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 1, !dbg !3073
  %46 = load i64, ptr %45, align 8, !dbg !3073
  %47 = icmp ult i64 %42, %46, !dbg !3074
  br i1 %47, label %48, label %59, !dbg !3075

48:                                               ; preds = %41
  %49 = load ptr, ptr %3, align 8, !dbg !3076
  %50 = load ptr, ptr %3, align 8, !dbg !3078
  %51 = getelementptr inbounds %struct.struct_coucal, ptr %50, i32 0, i32 3, !dbg !3079
  %52 = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 0, !dbg !3080
  %53 = load i64, ptr %5, align 8, !dbg !3081
  %54 = getelementptr inbounds [16 x %struct.coucal_item], ptr %52, i64 0, i64 %53, !dbg !3078
  %55 = getelementptr inbounds %struct.coucal_item, ptr %54, i32 0, i32 1, !dbg !3082
  call void @coucal_del_value_(ptr noundef %49, ptr noundef %55), !dbg !3083
  br label %56, !dbg !3084

56:                                               ; preds = %48
  %57 = load i64, ptr %5, align 8, !dbg !3085
  %58 = add i64 %57, 1, !dbg !3085
  store i64 %58, ptr %5, align 8, !dbg !3085
  br label %41, !dbg !3086, !llvm.loop !3087

59:                                               ; preds = %41
  br label %60, !dbg !3089

60:                                               ; preds = %59, %13
  %61 = load ptr, ptr %3, align 8, !dbg !3090
  %62 = getelementptr inbounds %struct.struct_coucal, ptr %61, i32 0, i32 1, !dbg !3091
  store i64 0, ptr %62, align 8, !dbg !3092
  %63 = load ptr, ptr %3, align 8, !dbg !3093
  %64 = getelementptr inbounds %struct.struct_coucal, ptr %63, i32 0, i32 2, !dbg !3094
  store i64 0, ptr %64, align 8, !dbg !3095
  %65 = load ptr, ptr %3, align 8, !dbg !3096
  %66 = getelementptr inbounds %struct.struct_coucal, ptr %65, i32 0, i32 4, !dbg !3097
  %67 = getelementptr inbounds %struct.anon.0, ptr %66, i32 0, i32 0, !dbg !3098
  %68 = load ptr, ptr %67, align 8, !dbg !3098
  call void @free(ptr noundef %68) #16, !dbg !3099
  %69 = load ptr, ptr %3, align 8, !dbg !3100
  %70 = getelementptr inbounds %struct.struct_coucal, ptr %69, i32 0, i32 4, !dbg !3101
  %71 = getelementptr inbounds %struct.anon.0, ptr %70, i32 0, i32 0, !dbg !3102
  store ptr null, ptr %71, align 8, !dbg !3103
  %72 = load ptr, ptr %3, align 8, !dbg !3104
  %73 = getelementptr inbounds %struct.struct_coucal, ptr %72, i32 0, i32 0, !dbg !3105
  %74 = load ptr, ptr %73, align 8, !dbg !3105
  call void @free(ptr noundef %74) #16, !dbg !3106
  %75 = load ptr, ptr %3, align 8, !dbg !3107
  %76 = getelementptr inbounds %struct.struct_coucal, ptr %75, i32 0, i32 0, !dbg !3108
  store ptr null, ptr %76, align 8, !dbg !3109
  %77 = load ptr, ptr %3, align 8, !dbg !3110
  call void @free(ptr noundef %77) #16, !dbg !3111
  %78 = load ptr, ptr %2, align 8, !dbg !3112
  store ptr null, ptr %78, align 8, !dbg !3113
  br label %79, !dbg !3114

79:                                               ; preds = %60, %8
  br label %80, !dbg !3115

80:                                               ; preds = %79, %1
  ret void, !dbg !3116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_log_stats(ptr noundef %0) #0 !dbg !3117 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3123
  %4 = load ptr, ptr %2, align 8, !dbg !3124
  %5 = call ptr @coucal_get_name(ptr noundef %4), !dbg !3125
  store ptr %5, ptr %3, align 8, !dbg !3123
  %6 = load ptr, ptr %2, align 8, !dbg !3126
  %7 = load ptr, ptr %3, align 8, !dbg !3127
  %8 = icmp ne ptr %7, null, !dbg !3128
  %9 = zext i1 %8 to i64, !dbg !3127
  %10 = select i1 %8, ptr @.str.51, ptr @.str.52, !dbg !3127
  %11 = load ptr, ptr %3, align 8, !dbg !3129
  %12 = icmp ne ptr %11, null, !dbg !3130
  br i1 %12, label %13, label %15, !dbg !3129

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8, !dbg !3131
  br label %16, !dbg !3129

15:                                               ; preds = %1
  br label %16, !dbg !3129

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %14, %13 ], [ @.str.52, %15 ], !dbg !3129
  %18 = load ptr, ptr %3, align 8, !dbg !3132
  %19 = icmp ne ptr %18, null, !dbg !3133
  %20 = zext i1 %19 to i64, !dbg !3132
  %21 = select i1 %19, ptr @.str.53, ptr @.str.52, !dbg !3132
  %22 = load ptr, ptr %2, align 8, !dbg !3134
  %23 = getelementptr inbounds %struct.struct_coucal, ptr %22, i32 0, i32 1, !dbg !3134
  %24 = load i64, ptr %23, align 8, !dbg !3134
  %25 = shl i64 1, %24, !dbg !3134
  %26 = load ptr, ptr %2, align 8, !dbg !3135
  %27 = getelementptr inbounds %struct.struct_coucal, ptr %26, i32 0, i32 1, !dbg !3136
  %28 = load i64, ptr %27, align 8, !dbg !3136
  %29 = load ptr, ptr %2, align 8, !dbg !3137
  %30 = getelementptr inbounds %struct.struct_coucal, ptr %29, i32 0, i32 2, !dbg !3138
  %31 = load i64, ptr %30, align 8, !dbg !3138
  %32 = load ptr, ptr %2, align 8, !dbg !3139
  %33 = getelementptr inbounds %struct.struct_coucal, ptr %32, i32 0, i32 3, !dbg !3140
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !3141
  %35 = load i64, ptr %34, align 8, !dbg !3141
  %36 = load ptr, ptr %2, align 8, !dbg !3142
  %37 = getelementptr inbounds %struct.struct_coucal, ptr %36, i32 0, i32 4, !dbg !3143
  %38 = getelementptr inbounds %struct.anon.0, ptr %37, i32 0, i32 1, !dbg !3144
  %39 = load i64, ptr %38, align 8, !dbg !3144
  %40 = load ptr, ptr %2, align 8, !dbg !3145
  %41 = getelementptr inbounds %struct.struct_coucal, ptr %40, i32 0, i32 4, !dbg !3146
  %42 = getelementptr inbounds %struct.anon.0, ptr %41, i32 0, i32 2, !dbg !3147
  %43 = load i64, ptr %42, align 8, !dbg !3147
  %44 = load ptr, ptr %2, align 8, !dbg !3148
  %45 = getelementptr inbounds %struct.struct_coucal, ptr %44, i32 0, i32 4, !dbg !3149
  %46 = getelementptr inbounds %struct.anon.0, ptr %45, i32 0, i32 3, !dbg !3150
  %47 = load i64, ptr %46, align 8, !dbg !3150
  %48 = load ptr, ptr %2, align 8, !dbg !3151
  %49 = getelementptr inbounds %struct.struct_coucal, ptr %48, i32 0, i32 5, !dbg !3152
  %50 = getelementptr inbounds %struct.anon.1, ptr %49, i32 0, i32 1, !dbg !3153
  %51 = load i64, ptr %50, align 8, !dbg !3153
  %52 = load ptr, ptr %2, align 8, !dbg !3154
  %53 = getelementptr inbounds %struct.struct_coucal, ptr %52, i32 0, i32 5, !dbg !3155
  %54 = getelementptr inbounds %struct.anon.1, ptr %53, i32 0, i32 2, !dbg !3156
  %55 = load i64, ptr %54, align 8, !dbg !3156
  %56 = load ptr, ptr %2, align 8, !dbg !3157
  %57 = getelementptr inbounds %struct.struct_coucal, ptr %56, i32 0, i32 5, !dbg !3158
  %58 = getelementptr inbounds %struct.anon.1, ptr %57, i32 0, i32 3, !dbg !3159
  %59 = load i64, ptr %58, align 8, !dbg !3159
  %60 = load ptr, ptr %2, align 8, !dbg !3160
  %61 = getelementptr inbounds %struct.struct_coucal, ptr %60, i32 0, i32 5, !dbg !3161
  %62 = getelementptr inbounds %struct.anon.1, ptr %61, i32 0, i32 4, !dbg !3162
  %63 = load i64, ptr %62, align 8, !dbg !3162
  %64 = load ptr, ptr %2, align 8, !dbg !3163
  %65 = getelementptr inbounds %struct.struct_coucal, ptr %64, i32 0, i32 5, !dbg !3164
  %66 = getelementptr inbounds %struct.anon.1, ptr %65, i32 0, i32 0, !dbg !3165
  %67 = load i64, ptr %66, align 8, !dbg !3165
  %68 = load ptr, ptr %2, align 8, !dbg !3166
  %69 = getelementptr inbounds %struct.struct_coucal, ptr %68, i32 0, i32 5, !dbg !3167
  %70 = getelementptr inbounds %struct.anon.1, ptr %69, i32 0, i32 3, !dbg !3168
  %71 = load i64, ptr %70, align 8, !dbg !3168
  %72 = uitofp i64 %71 to double, !dbg !3169
  %73 = load ptr, ptr %2, align 8, !dbg !3170
  %74 = getelementptr inbounds %struct.struct_coucal, ptr %73, i32 0, i32 5, !dbg !3171
  %75 = getelementptr inbounds %struct.anon.1, ptr %74, i32 0, i32 2, !dbg !3172
  %76 = load i64, ptr %75, align 8, !dbg !3172
  %77 = uitofp i64 %76 to double, !dbg !3173
  %78 = fdiv double %72, %77, !dbg !3174
  %79 = load ptr, ptr %2, align 8, !dbg !3175
  %80 = getelementptr inbounds %struct.struct_coucal, ptr %79, i32 0, i32 5, !dbg !3176
  %81 = getelementptr inbounds %struct.anon.1, ptr %80, i32 0, i32 5, !dbg !3177
  %82 = load i64, ptr %81, align 8, !dbg !3177
  %83 = load ptr, ptr %2, align 8, !dbg !3178
  %84 = getelementptr inbounds %struct.struct_coucal, ptr %83, i32 0, i32 5, !dbg !3179
  %85 = getelementptr inbounds %struct.anon.1, ptr %84, i32 0, i32 6, !dbg !3180
  %86 = load i64, ptr %85, align 8, !dbg !3180
  %87 = load ptr, ptr %2, align 8, !dbg !3181
  %88 = getelementptr inbounds %struct.struct_coucal, ptr %87, i32 0, i32 5, !dbg !3182
  %89 = getelementptr inbounds %struct.anon.1, ptr %88, i32 0, i32 7, !dbg !3183
  %90 = load i64, ptr %89, align 8, !dbg !3183
  %91 = load ptr, ptr %2, align 8, !dbg !3184
  %92 = call i64 @coucal_memory_size(ptr noundef %91), !dbg !3185
  call void (ptr, ptr, ...) @coucal_info(ptr noundef %6, ptr noundef @.str.50, ptr noundef %10, ptr noundef %17, ptr noundef %21, i64 noundef %25, i64 noundef %28, i64 noundef %31, i64 noundef %35, i64 noundef %39, i64 noundef %43, i64 noundef %47, i64 noundef %51, i64 noundef %55, i64 noundef %59, i64 noundef %63, i64 noundef %67, double noundef %78, i64 noundef %82, i64 noundef %86, i64 noundef %90, i64 noundef %92), !dbg !3186
  ret void, !dbg !3187
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_del_value(ptr noundef %0, i64 noundef %1) #0 !dbg !3188 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3191, metadata !DIExpression()), !dbg !3192
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3193, metadata !DIExpression()), !dbg !3194
  %5 = load ptr, ptr %3, align 8, !dbg !3195
  %6 = load ptr, ptr %3, align 8, !dbg !3196
  %7 = getelementptr inbounds %struct.struct_coucal, ptr %6, i32 0, i32 0, !dbg !3197
  %8 = load ptr, ptr %7, align 8, !dbg !3197
  %9 = load i64, ptr %4, align 8, !dbg !3198
  %10 = getelementptr inbounds %struct.coucal_item, ptr %8, i64 %9, !dbg !3196
  %11 = getelementptr inbounds %struct.coucal_item, ptr %10, i32 0, i32 1, !dbg !3199
  call void @coucal_del_value_(ptr noundef %5, ptr noundef %11), !dbg !3200
  ret void, !dbg !3201
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_del_value_(ptr noundef %0, ptr noundef %1) #0 !dbg !3202 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3206
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3207, metadata !DIExpression()), !dbg !3208
  %5 = load ptr, ptr %4, align 8, !dbg !3209
  %6 = load ptr, ptr %5, align 8, !dbg !3211
  %7 = icmp ne ptr %6, null, !dbg !3212
  br i1 %7, label %8, label %31, !dbg !3213

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !3214
  %10 = getelementptr inbounds %struct.struct_coucal, ptr %9, i32 0, i32 6, !dbg !3217
  %11 = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 0, !dbg !3218
  %12 = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 0, !dbg !3219
  %13 = load ptr, ptr %12, align 8, !dbg !3219
  %14 = icmp ne ptr %13, null, !dbg !3220
  br i1 %14, label %15, label %29, !dbg !3221

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8, !dbg !3222
  %17 = getelementptr inbounds %struct.struct_coucal, ptr %16, i32 0, i32 6, !dbg !3223
  %18 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 0, !dbg !3224
  %19 = getelementptr inbounds %struct.anon.3, ptr %18, i32 0, i32 0, !dbg !3225
  %20 = load ptr, ptr %19, align 8, !dbg !3225
  %21 = load ptr, ptr %3, align 8, !dbg !3226
  %22 = getelementptr inbounds %struct.struct_coucal, ptr %21, i32 0, i32 6, !dbg !3227
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 0, !dbg !3228
  %24 = getelementptr inbounds %struct.anon.3, ptr %23, i32 0, i32 1, !dbg !3229
  %25 = load ptr, ptr %24, align 8, !dbg !3229
  %26 = load ptr, ptr %4, align 8, !dbg !3230
  %27 = getelementptr inbounds %union.coucal_value, ptr %26, i32 0, i32 0, !dbg !3222
  %28 = load i64, ptr %27, align 8, !dbg !3222
  call void %20(ptr noundef %25, i64 %28), !dbg !3222
  br label %29, !dbg !3222

29:                                               ; preds = %15, %8
  %30 = load ptr, ptr %4, align 8, !dbg !3231
  store ptr null, ptr %30, align 8, !dbg !3232
  br label %31, !dbg !3233

31:                                               ; preds = %29, %2
  ret void, !dbg !3234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { ptr, i64 } @coucal_enum_new(ptr noundef %0) #0 !dbg !3235 {
  %2 = alloca %struct.struct_coucal_enum, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3246
  %4 = getelementptr inbounds %struct.struct_coucal_enum, ptr %2, i32 0, i32 1, !dbg !3247
  store i64 0, ptr %4, align 8, !dbg !3248
  %5 = load ptr, ptr %3, align 8, !dbg !3249
  %6 = getelementptr inbounds %struct.struct_coucal_enum, ptr %2, i32 0, i32 0, !dbg !3250
  store ptr %5, ptr %6, align 8, !dbg !3251
  %7 = load { ptr, i64 }, ptr %2, align 8, !dbg !3252
  ret { ptr, i64 } %7, !dbg !3252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @coucal_enum_next(ptr noundef %0) #0 !dbg !3253 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3259, metadata !DIExpression()), !dbg !3260
  %8 = load ptr, ptr %3, align 8, !dbg !3261
  %9 = getelementptr inbounds %struct.struct_coucal_enum, ptr %8, i32 0, i32 0, !dbg !3261
  %10 = load ptr, ptr %9, align 8, !dbg !3261
  %11 = getelementptr inbounds %struct.struct_coucal, ptr %10, i32 0, i32 1, !dbg !3261
  %12 = load i64, ptr %11, align 8, !dbg !3261
  %13 = shl i64 1, %12, !dbg !3261
  store i64 %13, ptr %4, align 8, !dbg !3260
  br label %14, !dbg !3262

14:                                               ; preds = %32, %1
  %15 = load ptr, ptr %3, align 8, !dbg !3263
  %16 = getelementptr inbounds %struct.struct_coucal_enum, ptr %15, i32 0, i32 1, !dbg !3266
  %17 = load i64, ptr %16, align 8, !dbg !3266
  %18 = load i64, ptr %4, align 8, !dbg !3267
  %19 = icmp ult i64 %17, %18, !dbg !3268
  br i1 %19, label %20, label %29, !dbg !3269

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !dbg !3270
  %22 = getelementptr inbounds %struct.struct_coucal_enum, ptr %21, i32 0, i32 0, !dbg !3271
  %23 = load ptr, ptr %22, align 8, !dbg !3271
  %24 = load ptr, ptr %3, align 8, !dbg !3272
  %25 = getelementptr inbounds %struct.struct_coucal_enum, ptr %24, i32 0, i32 1, !dbg !3273
  %26 = load i64, ptr %25, align 8, !dbg !3273
  %27 = call i32 @coucal_is_free(ptr noundef %23, i64 noundef %26), !dbg !3274
  %28 = icmp ne i32 %27, 0, !dbg !3269
  br label %29

29:                                               ; preds = %20, %14
  %30 = phi i1 [ false, %14 ], [ %28, %20 ], !dbg !3275
  br i1 %30, label %31, label %37, !dbg !3276

31:                                               ; preds = %29
  br label %32, !dbg !3276

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 8, !dbg !3277
  %34 = getelementptr inbounds %struct.struct_coucal_enum, ptr %33, i32 0, i32 1, !dbg !3278
  %35 = load i64, ptr %34, align 8, !dbg !3279
  %36 = add i64 %35, 1, !dbg !3279
  store i64 %36, ptr %34, align 8, !dbg !3279
  br label %14, !dbg !3280, !llvm.loop !3281

37:                                               ; preds = %29
  %38 = load ptr, ptr %3, align 8, !dbg !3283
  %39 = getelementptr inbounds %struct.struct_coucal_enum, ptr %38, i32 0, i32 1, !dbg !3285
  %40 = load i64, ptr %39, align 8, !dbg !3285
  %41 = load i64, ptr %4, align 8, !dbg !3286
  %42 = icmp ult i64 %40, %41, !dbg !3287
  br i1 %42, label %43, label %58, !dbg !3288

43:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3289, metadata !DIExpression()), !dbg !3291
  %44 = load ptr, ptr %3, align 8, !dbg !3292
  %45 = getelementptr inbounds %struct.struct_coucal_enum, ptr %44, i32 0, i32 0, !dbg !3293
  %46 = load ptr, ptr %45, align 8, !dbg !3293
  %47 = getelementptr inbounds %struct.struct_coucal, ptr %46, i32 0, i32 0, !dbg !3294
  %48 = load ptr, ptr %47, align 8, !dbg !3294
  %49 = load ptr, ptr %3, align 8, !dbg !3295
  %50 = getelementptr inbounds %struct.struct_coucal_enum, ptr %49, i32 0, i32 1, !dbg !3296
  %51 = load i64, ptr %50, align 8, !dbg !3296
  %52 = getelementptr inbounds %struct.coucal_item, ptr %48, i64 %51, !dbg !3292
  store ptr %52, ptr %5, align 8, !dbg !3291
  %53 = load ptr, ptr %3, align 8, !dbg !3297
  %54 = getelementptr inbounds %struct.struct_coucal_enum, ptr %53, i32 0, i32 1, !dbg !3298
  %55 = load i64, ptr %54, align 8, !dbg !3299
  %56 = add i64 %55, 1, !dbg !3299
  store i64 %56, ptr %54, align 8, !dbg !3299
  %57 = load ptr, ptr %5, align 8, !dbg !3300
  store ptr %57, ptr %2, align 8, !dbg !3301
  br label %90, !dbg !3301

58:                                               ; preds = %37
  %59 = load ptr, ptr %3, align 8, !dbg !3302
  %60 = getelementptr inbounds %struct.struct_coucal_enum, ptr %59, i32 0, i32 1, !dbg !3304
  %61 = load i64, ptr %60, align 8, !dbg !3304
  %62 = load i64, ptr %4, align 8, !dbg !3305
  %63 = load ptr, ptr %3, align 8, !dbg !3306
  %64 = getelementptr inbounds %struct.struct_coucal_enum, ptr %63, i32 0, i32 0, !dbg !3307
  %65 = load ptr, ptr %64, align 8, !dbg !3307
  %66 = getelementptr inbounds %struct.struct_coucal, ptr %65, i32 0, i32 3, !dbg !3308
  %67 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 1, !dbg !3309
  %68 = load i64, ptr %67, align 8, !dbg !3309
  %69 = add i64 %62, %68, !dbg !3310
  %70 = icmp ult i64 %61, %69, !dbg !3311
  br i1 %70, label %71, label %89, !dbg !3312

71:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3313, metadata !DIExpression()), !dbg !3315
  %72 = load ptr, ptr %3, align 8, !dbg !3316
  %73 = getelementptr inbounds %struct.struct_coucal_enum, ptr %72, i32 0, i32 1, !dbg !3317
  %74 = load i64, ptr %73, align 8, !dbg !3317
  %75 = load i64, ptr %4, align 8, !dbg !3318
  %76 = sub i64 %74, %75, !dbg !3319
  store i64 %76, ptr %6, align 8, !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3320, metadata !DIExpression()), !dbg !3321
  %77 = load ptr, ptr %3, align 8, !dbg !3322
  %78 = getelementptr inbounds %struct.struct_coucal_enum, ptr %77, i32 0, i32 0, !dbg !3323
  %79 = load ptr, ptr %78, align 8, !dbg !3323
  %80 = getelementptr inbounds %struct.struct_coucal, ptr %79, i32 0, i32 3, !dbg !3324
  %81 = getelementptr inbounds %struct.anon, ptr %80, i32 0, i32 0, !dbg !3325
  %82 = load i64, ptr %6, align 8, !dbg !3326
  %83 = getelementptr inbounds [16 x %struct.coucal_item], ptr %81, i64 0, i64 %82, !dbg !3322
  store ptr %83, ptr %7, align 8, !dbg !3321
  %84 = load ptr, ptr %3, align 8, !dbg !3327
  %85 = getelementptr inbounds %struct.struct_coucal_enum, ptr %84, i32 0, i32 1, !dbg !3328
  %86 = load i64, ptr %85, align 8, !dbg !3329
  %87 = add i64 %86, 1, !dbg !3329
  store i64 %87, ptr %85, align 8, !dbg !3329
  %88 = load ptr, ptr %7, align 8, !dbg !3330
  store ptr %88, ptr %2, align 8, !dbg !3331
  br label %90, !dbg !3331

89:                                               ; preds = %58
  store ptr null, ptr %2, align 8, !dbg !3332
  br label %90, !dbg !3332

90:                                               ; preds = %89, %71, %43
  %91 = load ptr, ptr %2, align 8, !dbg !3334
  ret ptr %91, !dbg !3334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coucal_set_global_assert_handler(ptr noundef %0, ptr noundef %1) #0 !dbg !3335 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3338, metadata !DIExpression()), !dbg !3339
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3340, metadata !DIExpression()), !dbg !3341
  %5 = load ptr, ptr %3, align 8, !dbg !3342
  store ptr %5, ptr @global_log_handler, align 8, !dbg !3343
  %6 = load ptr, ptr %4, align 8, !dbg !3344
  store ptr %6, ptr @global_assert_handler, align 8, !dbg !3345
  ret void, !dbg !3346
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getblock32(ptr noundef %0, i32 noundef %1) #0 !dbg !3347 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3350, metadata !DIExpression()), !dbg !3351
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3353
  %5 = load ptr, ptr %3, align 8, !dbg !3354
  %6 = load i32, ptr %4, align 4, !dbg !3355
  %7 = sext i32 %6 to i64, !dbg !3354
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3354
  %9 = load i32, ptr %8, align 4, !dbg !3354
  ret i32 %9, !dbg !3356
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotl32(i32 noundef %0, i8 noundef signext %1) #0 !dbg !3357 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3366, metadata !DIExpression()), !dbg !3367
  %5 = load i32, ptr %3, align 4, !dbg !3368
  %6 = load i8, ptr %4, align 1, !dbg !3369
  %7 = sext i8 %6 to i32, !dbg !3369
  %8 = shl i32 %5, %7, !dbg !3370
  %9 = load i32, ptr %3, align 4, !dbg !3371
  %10 = load i8, ptr %4, align 1, !dbg !3372
  %11 = sext i8 %10 to i32, !dbg !3372
  %12 = sub nsw i32 32, %11, !dbg !3373
  %13 = lshr i32 %9, %12, !dbg !3374
  %14 = or i32 %8, %13, !dbg !3375
  ret i32 %14, !dbg !3376
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmix32(i32 noundef %0) #0 !dbg !3377 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = load i32, ptr %2, align 4, !dbg !3382
  %4 = lshr i32 %3, 16, !dbg !3383
  %5 = load i32, ptr %2, align 4, !dbg !3384
  %6 = xor i32 %5, %4, !dbg !3384
  store i32 %6, ptr %2, align 4, !dbg !3384
  %7 = load i32, ptr %2, align 4, !dbg !3385
  %8 = mul i32 %7, -2048144789, !dbg !3385
  store i32 %8, ptr %2, align 4, !dbg !3385
  %9 = load i32, ptr %2, align 4, !dbg !3386
  %10 = lshr i32 %9, 13, !dbg !3387
  %11 = load i32, ptr %2, align 4, !dbg !3388
  %12 = xor i32 %11, %10, !dbg !3388
  store i32 %12, ptr %2, align 4, !dbg !3388
  %13 = load i32, ptr %2, align 4, !dbg !3389
  %14 = mul i32 %13, -1028477387, !dbg !3389
  store i32 %14, ptr %2, align 4, !dbg !3389
  %15 = load i32, ptr %2, align 4, !dbg !3390
  %16 = lshr i32 %15, 16, !dbg !3391
  %17 = load i32, ptr %2, align 4, !dbg !3392
  %18 = xor i32 %17, %16, !dbg !3392
  store i32 %18, ptr %2, align 4, !dbg !3392
  %19 = load i32, ptr %2, align 4, !dbg !3393
  ret i32 %19, !dbg !3394
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @coucal_dup_name(ptr noundef %0, ptr noundef %1) #0 !dbg !3395 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3398, metadata !DIExpression()), !dbg !3399
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3400, metadata !DIExpression()), !dbg !3401
  %5 = load ptr, ptr %3, align 8, !dbg !3402
  %6 = getelementptr inbounds %struct.struct_coucal, ptr %5, i32 0, i32 6, !dbg !3403
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1, !dbg !3404
  %8 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 0, !dbg !3405
  %9 = load ptr, ptr %8, align 8, !dbg !3405
  %10 = icmp eq ptr %9, null, !dbg !3406
  br i1 %10, label %11, label %15, !dbg !3402

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !3407
  %13 = load ptr, ptr %4, align 8, !dbg !3408
  %14 = call ptr @coucal_dup_name_internal(ptr noundef %12, ptr noundef %13), !dbg !3409
  br label %28, !dbg !3402

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !dbg !3410
  %17 = getelementptr inbounds %struct.struct_coucal, ptr %16, i32 0, i32 6, !dbg !3411
  %18 = getelementptr inbounds %struct.anon.2, ptr %17, i32 0, i32 1, !dbg !3412
  %19 = getelementptr inbounds %struct.anon.4, ptr %18, i32 0, i32 0, !dbg !3413
  %20 = load ptr, ptr %19, align 8, !dbg !3413
  %21 = load ptr, ptr %3, align 8, !dbg !3414
  %22 = getelementptr inbounds %struct.struct_coucal, ptr %21, i32 0, i32 6, !dbg !3415
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 1, !dbg !3416
  %24 = getelementptr inbounds %struct.anon.4, ptr %23, i32 0, i32 4, !dbg !3417
  %25 = load ptr, ptr %24, align 8, !dbg !3417
  %26 = load ptr, ptr %4, align 8, !dbg !3418
  %27 = call ptr %20(ptr noundef %25, ptr noundef %26), !dbg !3410
  br label %28, !dbg !3402

28:                                               ; preds = %15, %11
  %29 = phi ptr [ %14, %11 ], [ %27, %15 ], !dbg !3402
  ret ptr %29, !dbg !3419
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @coucal_dup_name_internal(ptr noundef %0, ptr noundef %1) #0 !dbg !3420 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3421, metadata !DIExpression()), !dbg !3422
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3425, metadata !DIExpression()), !dbg !3426
  %10 = load ptr, ptr %5, align 8, !dbg !3427
  store ptr %10, ptr %6, align 8, !dbg !3426
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3428, metadata !DIExpression()), !dbg !3429
  %11 = load ptr, ptr %6, align 8, !dbg !3430
  %12 = call i64 @strlen(ptr noundef %11) #12, !dbg !3431
  %13 = add i64 %12, 1, !dbg !3432
  store i64 %13, ptr %7, align 8, !dbg !3429
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3433, metadata !DIExpression()), !dbg !3434
  %14 = load i64, ptr %7, align 8, !dbg !3435
  %15 = icmp eq i64 %14, 1, !dbg !3437
  br i1 %15, label %16, label %25, !dbg !3438

16:                                               ; preds = %2
  %17 = load i8, ptr @the_empty_string, align 1, !dbg !3439
  %18 = sext i8 %17 to i32, !dbg !3439
  %19 = icmp eq i32 %18, 0, !dbg !3439
  br i1 %19, label %22, label %20, !dbg !3439

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !dbg !3439
  call void @coucal_assert_failed(ptr noundef %21, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 670), !dbg !3439
  br label %22, !dbg !3439

22:                                               ; preds = %20, %16
  %23 = phi i1 [ true, %16 ], [ false, %20 ]
  %24 = zext i1 %23 to i32, !dbg !3439
  store ptr @the_empty_string, ptr %3, align 8, !dbg !3441
  br label %121, !dbg !3441

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !dbg !3442
  %27 = getelementptr inbounds %struct.struct_coucal, ptr %26, i32 0, i32 4, !dbg !3442
  %28 = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 1, !dbg !3442
  %29 = load i64, ptr %28, align 8, !dbg !3442
  %30 = load ptr, ptr %4, align 8, !dbg !3442
  %31 = getelementptr inbounds %struct.struct_coucal, ptr %30, i32 0, i32 4, !dbg !3442
  %32 = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 2, !dbg !3442
  %33 = load i64, ptr %32, align 8, !dbg !3442
  %34 = icmp ule i64 %29, %33, !dbg !3442
  br i1 %34, label %37, label %35, !dbg !3442

35:                                               ; preds = %25
  %36 = load ptr, ptr %4, align 8, !dbg !3442
  call void @coucal_assert_failed(ptr noundef %36, ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 675), !dbg !3442
  br label %37, !dbg !3442

37:                                               ; preds = %35, %25
  %38 = phi i1 [ true, %25 ], [ false, %35 ]
  %39 = zext i1 %38 to i32, !dbg !3442
  %40 = load ptr, ptr %4, align 8, !dbg !3443
  %41 = getelementptr inbounds %struct.struct_coucal, ptr %40, i32 0, i32 4, !dbg !3445
  %42 = getelementptr inbounds %struct.anon.0, ptr %41, i32 0, i32 2, !dbg !3446
  %43 = load i64, ptr %42, align 8, !dbg !3446
  %44 = load ptr, ptr %4, align 8, !dbg !3447
  %45 = getelementptr inbounds %struct.struct_coucal, ptr %44, i32 0, i32 4, !dbg !3448
  %46 = getelementptr inbounds %struct.anon.0, ptr %45, i32 0, i32 1, !dbg !3449
  %47 = load i64, ptr %46, align 8, !dbg !3449
  %48 = sub i64 %43, %47, !dbg !3450
  %49 = load i64, ptr %7, align 8, !dbg !3451
  %50 = icmp ult i64 %48, %49, !dbg !3452
  br i1 %50, label %51, label %79, !dbg !3453

51:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3454, metadata !DIExpression()), !dbg !3456
  store i64 256, ptr %9, align 8, !dbg !3457
  br label %52, !dbg !3459

52:                                               ; preds = %62, %51
  %53 = load i64, ptr %9, align 8, !dbg !3460
  %54 = load ptr, ptr %4, align 8, !dbg !3462
  %55 = getelementptr inbounds %struct.struct_coucal, ptr %54, i32 0, i32 4, !dbg !3463
  %56 = getelementptr inbounds %struct.anon.0, ptr %55, i32 0, i32 1, !dbg !3464
  %57 = load i64, ptr %56, align 8, !dbg !3464
  %58 = load i64, ptr %7, align 8, !dbg !3465
  %59 = add i64 %57, %58, !dbg !3466
  %60 = icmp ult i64 %53, %59, !dbg !3467
  br i1 %60, label %61, label %65, !dbg !3468

61:                                               ; preds = %52
  br label %62, !dbg !3468

62:                                               ; preds = %61
  %63 = load i64, ptr %9, align 8, !dbg !3469
  %64 = shl i64 %63, 1, !dbg !3469
  store i64 %64, ptr %9, align 8, !dbg !3469
  br label %52, !dbg !3470, !llvm.loop !3471

65:                                               ; preds = %52
  %66 = load ptr, ptr %4, align 8, !dbg !3473
  %67 = getelementptr inbounds %struct.struct_coucal, ptr %66, i32 0, i32 4, !dbg !3473
  %68 = getelementptr inbounds %struct.anon.0, ptr %67, i32 0, i32 1, !dbg !3473
  %69 = load i64, ptr %68, align 8, !dbg !3473
  %70 = load i64, ptr %9, align 8, !dbg !3473
  %71 = icmp ult i64 %69, %70, !dbg !3473
  br i1 %71, label %74, label %72, !dbg !3473

72:                                               ; preds = %65
  %73 = load ptr, ptr %4, align 8, !dbg !3473
  call void @coucal_assert_failed(ptr noundef %73, ptr noundef @.str.17, ptr noundef @.str.2, i32 noundef 680), !dbg !3473
  br label %74, !dbg !3473

74:                                               ; preds = %72, %65
  %75 = phi i1 [ true, %65 ], [ false, %72 ]
  %76 = zext i1 %75 to i32, !dbg !3473
  %77 = load ptr, ptr %4, align 8, !dbg !3474
  %78 = load i64, ptr %9, align 8, !dbg !3475
  call void @coucal_realloc_pool(ptr noundef %77, i64 noundef %78), !dbg !3476
  br label %79, !dbg !3477

79:                                               ; preds = %74, %37
  %80 = load i64, ptr %7, align 8, !dbg !3478
  %81 = load ptr, ptr %4, align 8, !dbg !3478
  %82 = getelementptr inbounds %struct.struct_coucal, ptr %81, i32 0, i32 4, !dbg !3478
  %83 = getelementptr inbounds %struct.anon.0, ptr %82, i32 0, i32 1, !dbg !3478
  %84 = load i64, ptr %83, align 8, !dbg !3478
  %85 = add i64 %80, %84, !dbg !3478
  %86 = load ptr, ptr %4, align 8, !dbg !3478
  %87 = getelementptr inbounds %struct.struct_coucal, ptr %86, i32 0, i32 4, !dbg !3478
  %88 = getelementptr inbounds %struct.anon.0, ptr %87, i32 0, i32 2, !dbg !3478
  %89 = load i64, ptr %88, align 8, !dbg !3478
  %90 = icmp ule i64 %85, %89, !dbg !3478
  br i1 %90, label %93, label %91, !dbg !3478

91:                                               ; preds = %79
  %92 = load ptr, ptr %4, align 8, !dbg !3478
  call void @coucal_assert_failed(ptr noundef %92, ptr noundef @.str.18, ptr noundef @.str.2, i32 noundef 685), !dbg !3478
  br label %93, !dbg !3478

93:                                               ; preds = %91, %79
  %94 = phi i1 [ true, %79 ], [ false, %91 ]
  %95 = zext i1 %94 to i32, !dbg !3478
  %96 = load ptr, ptr %4, align 8, !dbg !3479
  %97 = getelementptr inbounds %struct.struct_coucal, ptr %96, i32 0, i32 4, !dbg !3480
  %98 = getelementptr inbounds %struct.anon.0, ptr %97, i32 0, i32 0, !dbg !3481
  %99 = load ptr, ptr %98, align 8, !dbg !3481
  %100 = load ptr, ptr %4, align 8, !dbg !3482
  %101 = getelementptr inbounds %struct.struct_coucal, ptr %100, i32 0, i32 4, !dbg !3483
  %102 = getelementptr inbounds %struct.anon.0, ptr %101, i32 0, i32 1, !dbg !3484
  %103 = load i64, ptr %102, align 8, !dbg !3484
  %104 = getelementptr inbounds i8, ptr %99, i64 %103, !dbg !3479
  store ptr %104, ptr %8, align 8, !dbg !3485
  %105 = load ptr, ptr %8, align 8, !dbg !3486
  %106 = load ptr, ptr %6, align 8, !dbg !3487
  %107 = load i64, ptr %7, align 8, !dbg !3488
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %105, ptr align 1 %106, i64 %107, i1 false), !dbg !3489
  %108 = load i64, ptr %7, align 8, !dbg !3490
  %109 = load ptr, ptr %4, align 8, !dbg !3491
  %110 = getelementptr inbounds %struct.struct_coucal, ptr %109, i32 0, i32 4, !dbg !3492
  %111 = getelementptr inbounds %struct.anon.0, ptr %110, i32 0, i32 1, !dbg !3493
  %112 = load i64, ptr %111, align 8, !dbg !3494
  %113 = add i64 %112, %108, !dbg !3494
  store i64 %113, ptr %111, align 8, !dbg !3494
  %114 = load i64, ptr %7, align 8, !dbg !3495
  %115 = load ptr, ptr %4, align 8, !dbg !3496
  %116 = getelementptr inbounds %struct.struct_coucal, ptr %115, i32 0, i32 4, !dbg !3497
  %117 = getelementptr inbounds %struct.anon.0, ptr %116, i32 0, i32 3, !dbg !3498
  %118 = load i64, ptr %117, align 8, !dbg !3499
  %119 = add i64 %118, %114, !dbg !3499
  store i64 %119, ptr %117, align 8, !dbg !3499
  %120 = load ptr, ptr %8, align 8, !dbg !3500
  store ptr %120, ptr %3, align 8, !dbg !3501
  br label %121, !dbg !3501

121:                                              ; preds = %93, %22
  %122 = load ptr, ptr %3, align 8, !dbg !3502
  ret ptr %122, !dbg !3502
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_realloc_pool(ptr noundef %0, i64 noundef %1) #0 !dbg !3503 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3505
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3508, metadata !DIExpression()), !dbg !3509
  %11 = load ptr, ptr %3, align 8, !dbg !3510
  %12 = getelementptr inbounds %struct.struct_coucal, ptr %11, i32 0, i32 1, !dbg !3510
  %13 = load i64, ptr %12, align 8, !dbg !3510
  %14 = shl i64 1, %13, !dbg !3510
  store i64 %14, ptr %5, align 8, !dbg !3509
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3511, metadata !DIExpression()), !dbg !3513
  %15 = load ptr, ptr %3, align 8, !dbg !3514
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 4, !dbg !3515
  %17 = getelementptr inbounds %struct.anon.0, ptr %16, i32 0, i32 0, !dbg !3516
  %18 = load ptr, ptr %17, align 8, !dbg !3516
  store ptr %18, ptr %6, align 8, !dbg !3513
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3517, metadata !DIExpression()), !dbg !3518
  store i64 0, ptr %7, align 8, !dbg !3518
  %19 = load ptr, ptr %3, align 8, !dbg !3519
  %20 = getelementptr inbounds %struct.struct_coucal, ptr %19, i32 0, i32 6, !dbg !3519
  %21 = getelementptr inbounds %struct.anon.2, ptr %20, i32 0, i32 1, !dbg !3519
  %22 = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 0, !dbg !3519
  %23 = load ptr, ptr %22, align 8, !dbg !3519
  %24 = icmp eq ptr %23, null, !dbg !3519
  br i1 %24, label %27, label %25, !dbg !3519

25:                                               ; preds = %2
  %26 = load ptr, ptr %3, align 8, !dbg !3519
  call void @coucal_assert_failed(ptr noundef %26, ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 608), !dbg !3519
  br label %27, !dbg !3519

27:                                               ; preds = %25, %2
  %28 = phi i1 [ true, %2 ], [ false, %25 ]
  %29 = zext i1 %28 to i32, !dbg !3519
  %30 = load ptr, ptr %3, align 8, !dbg !3520
  %31 = getelementptr inbounds %struct.struct_coucal, ptr %30, i32 0, i32 4, !dbg !3522
  %32 = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 3, !dbg !3523
  %33 = load i64, ptr %32, align 8, !dbg !3523
  %34 = load ptr, ptr %3, align 8, !dbg !3524
  %35 = getelementptr inbounds %struct.struct_coucal, ptr %34, i32 0, i32 4, !dbg !3525
  %36 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1, !dbg !3526
  %37 = load i64, ptr %36, align 8, !dbg !3526
  %38 = mul i64 %37, 3, !dbg !3527
  %39 = udiv i64 %38, 4, !dbg !3528
  %40 = icmp ult i64 %33, %39, !dbg !3529
  br i1 %40, label %41, label %44, !dbg !3530

41:                                               ; preds = %27
  %42 = load ptr, ptr %3, align 8, !dbg !3531
  %43 = load i64, ptr %4, align 8, !dbg !3533
  call void @coucal_compact_pool(ptr noundef %42, i64 noundef %43), !dbg !3534
  br label %228, !dbg !3535

44:                                               ; preds = %27
  %45 = load ptr, ptr %3, align 8, !dbg !3536
  %46 = getelementptr inbounds %struct.struct_coucal, ptr %45, i32 0, i32 5, !dbg !3537
  %47 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 7, !dbg !3538
  %48 = load i64, ptr %47, align 8, !dbg !3539
  %49 = add i64 %48, 1, !dbg !3539
  store i64 %49, ptr %47, align 8, !dbg !3539
  %50 = load i64, ptr %4, align 8, !dbg !3540
  %51 = load ptr, ptr %3, align 8, !dbg !3541
  %52 = getelementptr inbounds %struct.struct_coucal, ptr %51, i32 0, i32 4, !dbg !3542
  %53 = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 2, !dbg !3543
  store i64 %50, ptr %53, align 8, !dbg !3544
  %54 = load ptr, ptr %3, align 8, !dbg !3545
  %55 = getelementptr inbounds %struct.struct_coucal, ptr %54, i32 0, i32 4, !dbg !3546
  %56 = getelementptr inbounds %struct.anon.0, ptr %55, i32 0, i32 0, !dbg !3547
  %57 = load ptr, ptr %56, align 8, !dbg !3547
  %58 = load ptr, ptr %3, align 8, !dbg !3548
  %59 = getelementptr inbounds %struct.struct_coucal, ptr %58, i32 0, i32 4, !dbg !3549
  %60 = getelementptr inbounds %struct.anon.0, ptr %59, i32 0, i32 2, !dbg !3550
  %61 = load i64, ptr %60, align 8, !dbg !3550
  %62 = call ptr @realloc(ptr noundef %57, i64 noundef %61) #13, !dbg !3551
  %63 = load ptr, ptr %3, align 8, !dbg !3552
  %64 = getelementptr inbounds %struct.struct_coucal, ptr %63, i32 0, i32 4, !dbg !3553
  %65 = getelementptr inbounds %struct.anon.0, ptr %64, i32 0, i32 0, !dbg !3554
  store ptr %62, ptr %65, align 8, !dbg !3555
  %66 = load ptr, ptr %3, align 8, !dbg !3556
  %67 = getelementptr inbounds %struct.struct_coucal, ptr %66, i32 0, i32 4, !dbg !3558
  %68 = getelementptr inbounds %struct.anon.0, ptr %67, i32 0, i32 0, !dbg !3559
  %69 = load ptr, ptr %68, align 8, !dbg !3559
  %70 = icmp eq ptr %69, null, !dbg !3560
  br i1 %70, label %71, label %78, !dbg !3561

71:                                               ; preds = %44
  %72 = load ptr, ptr %3, align 8, !dbg !3562
  %73 = load ptr, ptr %3, align 8, !dbg !3564
  %74 = getelementptr inbounds %struct.struct_coucal, ptr %73, i32 0, i32 4, !dbg !3565
  %75 = getelementptr inbounds %struct.anon.0, ptr %74, i32 0, i32 2, !dbg !3566
  %76 = load i64, ptr %75, align 8, !dbg !3566
  call void (ptr, ptr, ...) @coucal_crit(ptr noundef %72, ptr noundef @.str.20, i64 noundef %76), !dbg !3567
  %77 = load ptr, ptr %3, align 8, !dbg !3568
  call void @coucal_assert_failed(ptr noundef %77, ptr noundef @.str.21, ptr noundef @.str.2, i32 noundef 630), !dbg !3568
  br label %78, !dbg !3569

78:                                               ; preds = %71, %44
  %79 = load ptr, ptr %3, align 8, !dbg !3570
  %80 = getelementptr inbounds %struct.struct_coucal, ptr %79, i32 0, i32 4, !dbg !3572
  %81 = getelementptr inbounds %struct.anon.0, ptr %80, i32 0, i32 0, !dbg !3573
  %82 = load ptr, ptr %81, align 8, !dbg !3573
  %83 = load ptr, ptr %6, align 8, !dbg !3574
  %84 = icmp ne ptr %82, %83, !dbg !3575
  br i1 %84, label %85, label %221, !dbg !3576

85:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3577, metadata !DIExpression()), !dbg !3579
  store i64 0, ptr %8, align 8, !dbg !3580
  br label %86, !dbg !3582

86:                                               ; preds = %148, %85
  %87 = load i64, ptr %8, align 8, !dbg !3583
  %88 = load i64, ptr %5, align 8, !dbg !3585
  %89 = icmp ult i64 %87, %88, !dbg !3586
  br i1 %89, label %90, label %151, !dbg !3587

90:                                               ; preds = %86
  br label %91, !dbg !3588

91:                                               ; preds = %90
  %92 = load ptr, ptr %3, align 8, !dbg !3590
  %93 = getelementptr inbounds %struct.struct_coucal, ptr %92, i32 0, i32 0, !dbg !3590
  %94 = load ptr, ptr %93, align 8, !dbg !3590
  %95 = load i64, ptr %8, align 8, !dbg !3590
  %96 = getelementptr inbounds %struct.coucal_item, ptr %94, i64 %95, !dbg !3590
  %97 = getelementptr inbounds %struct.coucal_item, ptr %96, i32 0, i32 0, !dbg !3590
  %98 = load ptr, ptr %97, align 8, !dbg !3590
  %99 = icmp ne ptr %98, null, !dbg !3590
  br i1 %99, label %100, label %146, !dbg !3590

100:                                              ; preds = %91
  %101 = load ptr, ptr %3, align 8, !dbg !3590
  %102 = getelementptr inbounds %struct.struct_coucal, ptr %101, i32 0, i32 0, !dbg !3590
  %103 = load ptr, ptr %102, align 8, !dbg !3590
  %104 = load i64, ptr %8, align 8, !dbg !3590
  %105 = getelementptr inbounds %struct.coucal_item, ptr %103, i64 %104, !dbg !3590
  %106 = getelementptr inbounds %struct.coucal_item, ptr %105, i32 0, i32 0, !dbg !3590
  %107 = load ptr, ptr %106, align 8, !dbg !3590
  %108 = icmp ne ptr %107, @the_empty_string, !dbg !3590
  br i1 %108, label %109, label %146, !dbg !3593

109:                                              ; preds = %100
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3594, metadata !DIExpression()), !dbg !3596
  %110 = load ptr, ptr %3, align 8, !dbg !3596
  %111 = getelementptr inbounds %struct.struct_coucal, ptr %110, i32 0, i32 0, !dbg !3596
  %112 = load ptr, ptr %111, align 8, !dbg !3596
  %113 = load i64, ptr %8, align 8, !dbg !3596
  %114 = getelementptr inbounds %struct.coucal_item, ptr %112, i64 %113, !dbg !3596
  %115 = getelementptr inbounds %struct.coucal_item, ptr %114, i32 0, i32 0, !dbg !3596
  %116 = load ptr, ptr %115, align 8, !dbg !3596
  %117 = load ptr, ptr %6, align 8, !dbg !3596
  %118 = ptrtoint ptr %116 to i64, !dbg !3596
  %119 = ptrtoint ptr %117 to i64, !dbg !3596
  %120 = sub i64 %118, %119, !dbg !3596
  store i64 %120, ptr %9, align 8, !dbg !3596
  %121 = load i64, ptr %9, align 8, !dbg !3596
  %122 = load ptr, ptr %3, align 8, !dbg !3596
  %123 = getelementptr inbounds %struct.struct_coucal, ptr %122, i32 0, i32 4, !dbg !3596
  %124 = getelementptr inbounds %struct.anon.0, ptr %123, i32 0, i32 2, !dbg !3596
  %125 = load i64, ptr %124, align 8, !dbg !3596
  %126 = icmp ult i64 %121, %125, !dbg !3596
  br i1 %126, label %129, label %127, !dbg !3596

127:                                              ; preds = %109
  %128 = load ptr, ptr %3, align 8, !dbg !3596
  call void @coucal_assert_failed(ptr noundef %128, ptr noundef @.str.22, ptr noundef @.str.2, i32 noundef 647), !dbg !3596
  br label %129, !dbg !3596

129:                                              ; preds = %127, %109
  %130 = phi i1 [ true, %109 ], [ false, %127 ]
  %131 = zext i1 %130 to i32, !dbg !3596
  %132 = load ptr, ptr %3, align 8, !dbg !3596
  %133 = getelementptr inbounds %struct.struct_coucal, ptr %132, i32 0, i32 4, !dbg !3596
  %134 = getelementptr inbounds %struct.anon.0, ptr %133, i32 0, i32 0, !dbg !3596
  %135 = load ptr, ptr %134, align 8, !dbg !3596
  %136 = load i64, ptr %9, align 8, !dbg !3596
  %137 = getelementptr inbounds i8, ptr %135, i64 %136, !dbg !3596
  %138 = load ptr, ptr %3, align 8, !dbg !3596
  %139 = getelementptr inbounds %struct.struct_coucal, ptr %138, i32 0, i32 0, !dbg !3596
  %140 = load ptr, ptr %139, align 8, !dbg !3596
  %141 = load i64, ptr %8, align 8, !dbg !3596
  %142 = getelementptr inbounds %struct.coucal_item, ptr %140, i64 %141, !dbg !3596
  %143 = getelementptr inbounds %struct.coucal_item, ptr %142, i32 0, i32 0, !dbg !3596
  store ptr %137, ptr %143, align 8, !dbg !3596
  %144 = load i64, ptr %7, align 8, !dbg !3596
  %145 = add i64 %144, 1, !dbg !3596
  store i64 %145, ptr %7, align 8, !dbg !3596
  br label %146, !dbg !3596

146:                                              ; preds = %129, %100, %91
  br label %147, !dbg !3593

147:                                              ; preds = %146
  br label %148, !dbg !3597

148:                                              ; preds = %147
  %149 = load i64, ptr %8, align 8, !dbg !3598
  %150 = add i64 %149, 1, !dbg !3598
  store i64 %150, ptr %8, align 8, !dbg !3598
  br label %86, !dbg !3599, !llvm.loop !3600

151:                                              ; preds = %86
  store i64 0, ptr %8, align 8, !dbg !3602
  br label %152, !dbg !3604

152:                                              ; preds = %217, %151
  %153 = load i64, ptr %8, align 8, !dbg !3605
  %154 = load ptr, ptr %3, align 8, !dbg !3607
  %155 = getelementptr inbounds %struct.struct_coucal, ptr %154, i32 0, i32 3, !dbg !3608
  %156 = getelementptr inbounds %struct.anon, ptr %155, i32 0, i32 1, !dbg !3609
  %157 = load i64, ptr %156, align 8, !dbg !3609
  %158 = icmp ult i64 %153, %157, !dbg !3610
  br i1 %158, label %159, label %220, !dbg !3611

159:                                              ; preds = %152
  br label %160, !dbg !3612

160:                                              ; preds = %159
  %161 = load ptr, ptr %3, align 8, !dbg !3614
  %162 = getelementptr inbounds %struct.struct_coucal, ptr %161, i32 0, i32 3, !dbg !3614
  %163 = getelementptr inbounds %struct.anon, ptr %162, i32 0, i32 0, !dbg !3614
  %164 = load i64, ptr %8, align 8, !dbg !3614
  %165 = getelementptr inbounds [16 x %struct.coucal_item], ptr %163, i64 0, i64 %164, !dbg !3614
  %166 = getelementptr inbounds %struct.coucal_item, ptr %165, i32 0, i32 0, !dbg !3614
  %167 = load ptr, ptr %166, align 8, !dbg !3614
  %168 = icmp ne ptr %167, null, !dbg !3614
  br i1 %168, label %169, label %215, !dbg !3614

169:                                              ; preds = %160
  %170 = load ptr, ptr %3, align 8, !dbg !3614
  %171 = getelementptr inbounds %struct.struct_coucal, ptr %170, i32 0, i32 3, !dbg !3614
  %172 = getelementptr inbounds %struct.anon, ptr %171, i32 0, i32 0, !dbg !3614
  %173 = load i64, ptr %8, align 8, !dbg !3614
  %174 = getelementptr inbounds [16 x %struct.coucal_item], ptr %172, i64 0, i64 %173, !dbg !3614
  %175 = getelementptr inbounds %struct.coucal_item, ptr %174, i32 0, i32 0, !dbg !3614
  %176 = load ptr, ptr %175, align 8, !dbg !3614
  %177 = icmp ne ptr %176, @the_empty_string, !dbg !3614
  br i1 %177, label %178, label %215, !dbg !3617

178:                                              ; preds = %169
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3618, metadata !DIExpression()), !dbg !3620
  %179 = load ptr, ptr %3, align 8, !dbg !3620
  %180 = getelementptr inbounds %struct.struct_coucal, ptr %179, i32 0, i32 3, !dbg !3620
  %181 = getelementptr inbounds %struct.anon, ptr %180, i32 0, i32 0, !dbg !3620
  %182 = load i64, ptr %8, align 8, !dbg !3620
  %183 = getelementptr inbounds [16 x %struct.coucal_item], ptr %181, i64 0, i64 %182, !dbg !3620
  %184 = getelementptr inbounds %struct.coucal_item, ptr %183, i32 0, i32 0, !dbg !3620
  %185 = load ptr, ptr %184, align 8, !dbg !3620
  %186 = load ptr, ptr %6, align 8, !dbg !3620
  %187 = ptrtoint ptr %185 to i64, !dbg !3620
  %188 = ptrtoint ptr %186 to i64, !dbg !3620
  %189 = sub i64 %187, %188, !dbg !3620
  store i64 %189, ptr %10, align 8, !dbg !3620
  %190 = load i64, ptr %10, align 8, !dbg !3620
  %191 = load ptr, ptr %3, align 8, !dbg !3620
  %192 = getelementptr inbounds %struct.struct_coucal, ptr %191, i32 0, i32 4, !dbg !3620
  %193 = getelementptr inbounds %struct.anon.0, ptr %192, i32 0, i32 2, !dbg !3620
  %194 = load i64, ptr %193, align 8, !dbg !3620
  %195 = icmp ult i64 %190, %194, !dbg !3620
  br i1 %195, label %198, label %196, !dbg !3620

196:                                              ; preds = %178
  %197 = load ptr, ptr %3, align 8, !dbg !3620
  call void @coucal_assert_failed(ptr noundef %197, ptr noundef @.str.22, ptr noundef @.str.2, i32 noundef 650), !dbg !3620
  br label %198, !dbg !3620

198:                                              ; preds = %196, %178
  %199 = phi i1 [ true, %178 ], [ false, %196 ]
  %200 = zext i1 %199 to i32, !dbg !3620
  %201 = load ptr, ptr %3, align 8, !dbg !3620
  %202 = getelementptr inbounds %struct.struct_coucal, ptr %201, i32 0, i32 4, !dbg !3620
  %203 = getelementptr inbounds %struct.anon.0, ptr %202, i32 0, i32 0, !dbg !3620
  %204 = load ptr, ptr %203, align 8, !dbg !3620
  %205 = load i64, ptr %10, align 8, !dbg !3620
  %206 = getelementptr inbounds i8, ptr %204, i64 %205, !dbg !3620
  %207 = load ptr, ptr %3, align 8, !dbg !3620
  %208 = getelementptr inbounds %struct.struct_coucal, ptr %207, i32 0, i32 3, !dbg !3620
  %209 = getelementptr inbounds %struct.anon, ptr %208, i32 0, i32 0, !dbg !3620
  %210 = load i64, ptr %8, align 8, !dbg !3620
  %211 = getelementptr inbounds [16 x %struct.coucal_item], ptr %209, i64 0, i64 %210, !dbg !3620
  %212 = getelementptr inbounds %struct.coucal_item, ptr %211, i32 0, i32 0, !dbg !3620
  store ptr %206, ptr %212, align 8, !dbg !3620
  %213 = load i64, ptr %7, align 8, !dbg !3620
  %214 = add i64 %213, 1, !dbg !3620
  store i64 %214, ptr %7, align 8, !dbg !3620
  br label %215, !dbg !3620

215:                                              ; preds = %198, %169, %160
  br label %216, !dbg !3617

216:                                              ; preds = %215
  br label %217, !dbg !3621

217:                                              ; preds = %216
  %218 = load i64, ptr %8, align 8, !dbg !3622
  %219 = add i64 %218, 1, !dbg !3622
  store i64 %219, ptr %8, align 8, !dbg !3622
  br label %152, !dbg !3623, !llvm.loop !3624

220:                                              ; preds = %152
  br label %221, !dbg !3626

221:                                              ; preds = %220, %78
  %222 = load ptr, ptr %3, align 8, !dbg !3627
  %223 = load i64, ptr %7, align 8, !dbg !3628
  %224 = load ptr, ptr %3, align 8, !dbg !3629
  %225 = getelementptr inbounds %struct.struct_coucal, ptr %224, i32 0, i32 4, !dbg !3630
  %226 = getelementptr inbounds %struct.anon.0, ptr %225, i32 0, i32 2, !dbg !3631
  %227 = load i64, ptr %226, align 8, !dbg !3631
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %222, ptr noundef @.str.23, i64 noundef %223, i64 noundef %227), !dbg !3632
  br label %228, !dbg !3633

228:                                              ; preds = %221, %41
  ret void, !dbg !3633
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_compact_pool(ptr noundef %0, i64 noundef %1) #0 !dbg !3634 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3639, metadata !DIExpression()), !dbg !3640
  %20 = load ptr, ptr %3, align 8, !dbg !3641
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 1, !dbg !3641
  %22 = load i64, ptr %21, align 8, !dbg !3641
  %23 = shl i64 1, %22, !dbg !3641
  store i64 %23, ptr %5, align 8, !dbg !3640
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3644, metadata !DIExpression()), !dbg !3645
  %24 = load ptr, ptr %3, align 8, !dbg !3646
  %25 = getelementptr inbounds %struct.struct_coucal, ptr %24, i32 0, i32 4, !dbg !3647
  %26 = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 0, !dbg !3648
  %27 = load ptr, ptr %26, align 8, !dbg !3648
  store ptr %27, ptr %7, align 8, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3649, metadata !DIExpression()), !dbg !3650
  %28 = load ptr, ptr %3, align 8, !dbg !3651
  %29 = getelementptr inbounds %struct.struct_coucal, ptr %28, i32 0, i32 4, !dbg !3652
  %30 = getelementptr inbounds %struct.anon.0, ptr %29, i32 0, i32 1, !dbg !3653
  %31 = load i64, ptr %30, align 8, !dbg !3653
  store i64 %31, ptr %8, align 8, !dbg !3650
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3654, metadata !DIExpression()), !dbg !3655
  store i64 0, ptr %9, align 8, !dbg !3655
  %32 = load ptr, ptr %3, align 8, !dbg !3656
  %33 = getelementptr inbounds %struct.struct_coucal, ptr %32, i32 0, i32 6, !dbg !3656
  %34 = getelementptr inbounds %struct.anon.2, ptr %33, i32 0, i32 1, !dbg !3656
  %35 = getelementptr inbounds %struct.anon.4, ptr %34, i32 0, i32 0, !dbg !3656
  %36 = load ptr, ptr %35, align 8, !dbg !3656
  %37 = icmp eq ptr %36, null, !dbg !3656
  br i1 %37, label %40, label %38, !dbg !3656

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 8, !dbg !3656
  call void @coucal_assert_failed(ptr noundef %39, ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 527), !dbg !3656
  br label %40, !dbg !3656

40:                                               ; preds = %38, %2
  %41 = phi i1 [ true, %2 ], [ false, %38 ]
  %42 = zext i1 %41 to i32, !dbg !3656
  %43 = load ptr, ptr %3, align 8, !dbg !3657
  %44 = getelementptr inbounds %struct.struct_coucal, ptr %43, i32 0, i32 5, !dbg !3658
  %45 = getelementptr inbounds %struct.anon.1, ptr %44, i32 0, i32 6, !dbg !3659
  %46 = load i64, ptr %45, align 8, !dbg !3660
  %47 = add i64 %46, 1, !dbg !3660
  store i64 %47, ptr %45, align 8, !dbg !3660
  %48 = load ptr, ptr %3, align 8, !dbg !3661
  %49 = getelementptr inbounds %struct.struct_coucal, ptr %48, i32 0, i32 4, !dbg !3663
  %50 = getelementptr inbounds %struct.anon.0, ptr %49, i32 0, i32 2, !dbg !3664
  %51 = load i64, ptr %50, align 8, !dbg !3664
  %52 = load i64, ptr %4, align 8, !dbg !3665
  %53 = icmp ne i64 %51, %52, !dbg !3666
  br i1 %53, label %54, label %59, !dbg !3667

54:                                               ; preds = %40
  %55 = load i64, ptr %4, align 8, !dbg !3668
  %56 = load ptr, ptr %3, align 8, !dbg !3670
  %57 = getelementptr inbounds %struct.struct_coucal, ptr %56, i32 0, i32 4, !dbg !3671
  %58 = getelementptr inbounds %struct.anon.0, ptr %57, i32 0, i32 2, !dbg !3672
  store i64 %55, ptr %58, align 8, !dbg !3673
  br label %59, !dbg !3674

59:                                               ; preds = %54, %40
  %60 = load ptr, ptr %3, align 8, !dbg !3675
  %61 = getelementptr inbounds %struct.struct_coucal, ptr %60, i32 0, i32 4, !dbg !3676
  %62 = getelementptr inbounds %struct.anon.0, ptr %61, i32 0, i32 2, !dbg !3677
  %63 = load i64, ptr %62, align 8, !dbg !3677
  %64 = call noalias ptr @malloc(i64 noundef %63) #17, !dbg !3678
  %65 = load ptr, ptr %3, align 8, !dbg !3679
  %66 = getelementptr inbounds %struct.struct_coucal, ptr %65, i32 0, i32 4, !dbg !3680
  %67 = getelementptr inbounds %struct.anon.0, ptr %66, i32 0, i32 0, !dbg !3681
  store ptr %64, ptr %67, align 8, !dbg !3682
  %68 = load ptr, ptr %3, align 8, !dbg !3683
  %69 = getelementptr inbounds %struct.struct_coucal, ptr %68, i32 0, i32 4, !dbg !3684
  %70 = getelementptr inbounds %struct.anon.0, ptr %69, i32 0, i32 1, !dbg !3685
  store i64 0, ptr %70, align 8, !dbg !3686
  %71 = load ptr, ptr %3, align 8, !dbg !3687
  %72 = getelementptr inbounds %struct.struct_coucal, ptr %71, i32 0, i32 4, !dbg !3688
  %73 = getelementptr inbounds %struct.anon.0, ptr %72, i32 0, i32 3, !dbg !3689
  store i64 0, ptr %73, align 8, !dbg !3690
  %74 = load ptr, ptr %3, align 8, !dbg !3691
  %75 = getelementptr inbounds %struct.struct_coucal, ptr %74, i32 0, i32 4, !dbg !3693
  %76 = getelementptr inbounds %struct.anon.0, ptr %75, i32 0, i32 0, !dbg !3694
  %77 = load ptr, ptr %76, align 8, !dbg !3694
  %78 = icmp eq ptr %77, null, !dbg !3695
  br i1 %78, label %79, label %86, !dbg !3696

79:                                               ; preds = %59
  %80 = load ptr, ptr %3, align 8, !dbg !3697
  %81 = load ptr, ptr %3, align 8, !dbg !3699
  %82 = getelementptr inbounds %struct.struct_coucal, ptr %81, i32 0, i32 4, !dbg !3700
  %83 = getelementptr inbounds %struct.anon.0, ptr %82, i32 0, i32 2, !dbg !3701
  %84 = load i64, ptr %83, align 8, !dbg !3701
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %80, ptr noundef @.str.24, i64 noundef %84), !dbg !3702
  %85 = load ptr, ptr %3, align 8, !dbg !3703
  call void @coucal_assert_failed(ptr noundef %85, ptr noundef @.str.25, ptr noundef @.str.2, i32 noundef 546), !dbg !3703
  br label %86, !dbg !3704

86:                                               ; preds = %79, %59
  store i64 0, ptr %6, align 8, !dbg !3705
  br label %87, !dbg !3707

87:                                               ; preds = %208, %86
  %88 = load i64, ptr %6, align 8, !dbg !3708
  %89 = load i64, ptr %5, align 8, !dbg !3710
  %90 = icmp ult i64 %88, %89, !dbg !3711
  br i1 %90, label %91, label %211, !dbg !3712

91:                                               ; preds = %87
  br label %92, !dbg !3713

92:                                               ; preds = %91
  %93 = load ptr, ptr %3, align 8, !dbg !3715
  %94 = getelementptr inbounds %struct.struct_coucal, ptr %93, i32 0, i32 0, !dbg !3715
  %95 = load ptr, ptr %94, align 8, !dbg !3715
  %96 = load i64, ptr %6, align 8, !dbg !3715
  %97 = getelementptr inbounds %struct.coucal_item, ptr %95, i64 %96, !dbg !3715
  %98 = getelementptr inbounds %struct.coucal_item, ptr %97, i32 0, i32 0, !dbg !3715
  %99 = load ptr, ptr %98, align 8, !dbg !3715
  %100 = icmp ne ptr %99, null, !dbg !3715
  br i1 %100, label %101, label %206, !dbg !3715

101:                                              ; preds = %92
  %102 = load ptr, ptr %3, align 8, !dbg !3715
  %103 = getelementptr inbounds %struct.struct_coucal, ptr %102, i32 0, i32 0, !dbg !3715
  %104 = load ptr, ptr %103, align 8, !dbg !3715
  %105 = load i64, ptr %6, align 8, !dbg !3715
  %106 = getelementptr inbounds %struct.coucal_item, ptr %104, i64 %105, !dbg !3715
  %107 = getelementptr inbounds %struct.coucal_item, ptr %106, i32 0, i32 0, !dbg !3715
  %108 = load ptr, ptr %107, align 8, !dbg !3715
  %109 = icmp ne ptr %108, @the_empty_string, !dbg !3715
  br i1 %109, label %110, label %206, !dbg !3718

110:                                              ; preds = %101
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3719, metadata !DIExpression()), !dbg !3721
  %111 = load ptr, ptr %3, align 8, !dbg !3721
  %112 = getelementptr inbounds %struct.struct_coucal, ptr %111, i32 0, i32 0, !dbg !3721
  %113 = load ptr, ptr %112, align 8, !dbg !3721
  %114 = load i64, ptr %6, align 8, !dbg !3721
  %115 = getelementptr inbounds %struct.coucal_item, ptr %113, i64 %114, !dbg !3721
  %116 = getelementptr inbounds %struct.coucal_item, ptr %115, i32 0, i32 0, !dbg !3721
  %117 = load ptr, ptr %116, align 8, !dbg !3721
  store ptr %117, ptr %10, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3722, metadata !DIExpression()), !dbg !3721
  %118 = load ptr, ptr %3, align 8, !dbg !3721
  %119 = getelementptr inbounds %struct.struct_coucal, ptr %118, i32 0, i32 4, !dbg !3721
  %120 = getelementptr inbounds %struct.anon.0, ptr %119, i32 0, i32 0, !dbg !3721
  %121 = load ptr, ptr %120, align 8, !dbg !3721
  %122 = load ptr, ptr %3, align 8, !dbg !3721
  %123 = getelementptr inbounds %struct.struct_coucal, ptr %122, i32 0, i32 4, !dbg !3721
  %124 = getelementptr inbounds %struct.anon.0, ptr %123, i32 0, i32 1, !dbg !3721
  %125 = load i64, ptr %124, align 8, !dbg !3721
  %126 = getelementptr inbounds i8, ptr %121, i64 %125, !dbg !3721
  store ptr %126, ptr %11, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3723, metadata !DIExpression()), !dbg !3721
  %127 = load ptr, ptr %3, align 8, !dbg !3721
  %128 = getelementptr inbounds %struct.struct_coucal, ptr %127, i32 0, i32 4, !dbg !3721
  %129 = getelementptr inbounds %struct.anon.0, ptr %128, i32 0, i32 2, !dbg !3721
  %130 = load i64, ptr %129, align 8, !dbg !3721
  store i64 %130, ptr %12, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3724, metadata !DIExpression()), !dbg !3721
  %131 = load ptr, ptr %3, align 8, !dbg !3721
  %132 = getelementptr inbounds %struct.struct_coucal, ptr %131, i32 0, i32 4, !dbg !3721
  %133 = getelementptr inbounds %struct.anon.0, ptr %132, i32 0, i32 0, !dbg !3721
  %134 = load ptr, ptr %133, align 8, !dbg !3721
  %135 = load i64, ptr %12, align 8, !dbg !3721
  %136 = getelementptr inbounds i8, ptr %134, i64 %135, !dbg !3721
  store ptr %136, ptr %13, align 8, !dbg !3721
  %137 = load ptr, ptr %11, align 8, !dbg !3721
  %138 = load ptr, ptr %13, align 8, !dbg !3721
  %139 = icmp ult ptr %137, %138, !dbg !3721
  br i1 %139, label %142, label %140, !dbg !3721

140:                                              ; preds = %110
  %141 = load ptr, ptr %3, align 8, !dbg !3721
  call void @coucal_assert_failed(ptr noundef %141, ptr noundef @.str.26, ptr noundef @.str.2, i32 noundef 580), !dbg !3721
  br label %142, !dbg !3721

142:                                              ; preds = %140, %110
  %143 = phi i1 [ true, %110 ], [ false, %140 ]
  %144 = zext i1 %143 to i32, !dbg !3721
  %145 = load ptr, ptr %10, align 8, !dbg !3721
  %146 = getelementptr inbounds i8, ptr %145, i64 0, !dbg !3721
  %147 = load i8, ptr %146, align 1, !dbg !3721
  %148 = load ptr, ptr %11, align 8, !dbg !3721
  %149 = getelementptr inbounds i8, ptr %148, i64 0, !dbg !3721
  store i8 %147, ptr %149, align 1, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3725, metadata !DIExpression()), !dbg !3727
  store i64 1, ptr %14, align 8, !dbg !3728
  br label %150, !dbg !3728

150:                                              ; preds = %176, %142
  %151 = load ptr, ptr %10, align 8, !dbg !3730
  %152 = load i64, ptr %14, align 8, !dbg !3730
  %153 = sub i64 %152, 1, !dbg !3730
  %154 = getelementptr inbounds i8, ptr %151, i64 %153, !dbg !3730
  %155 = load i8, ptr %154, align 1, !dbg !3730
  %156 = sext i8 %155 to i32, !dbg !3730
  %157 = icmp ne i32 %156, 0, !dbg !3730
  br i1 %157, label %158, label %179, !dbg !3728

158:                                              ; preds = %150
  %159 = load ptr, ptr %11, align 8, !dbg !3732
  %160 = load i64, ptr %14, align 8, !dbg !3732
  %161 = getelementptr inbounds i8, ptr %159, i64 %160, !dbg !3732
  %162 = load ptr, ptr %13, align 8, !dbg !3732
  %163 = icmp ult ptr %161, %162, !dbg !3732
  br i1 %163, label %166, label %164, !dbg !3732

164:                                              ; preds = %158
  %165 = load ptr, ptr %3, align 8, !dbg !3732
  call void @coucal_assert_failed(ptr noundef %165, ptr noundef @.str.27, ptr noundef @.str.2, i32 noundef 580), !dbg !3732
  br label %166, !dbg !3732

166:                                              ; preds = %164, %158
  %167 = phi i1 [ true, %158 ], [ false, %164 ]
  %168 = zext i1 %167 to i32, !dbg !3732
  %169 = load ptr, ptr %10, align 8, !dbg !3732
  %170 = load i64, ptr %14, align 8, !dbg !3732
  %171 = getelementptr inbounds i8, ptr %169, i64 %170, !dbg !3732
  %172 = load i8, ptr %171, align 1, !dbg !3732
  %173 = load ptr, ptr %11, align 8, !dbg !3732
  %174 = load i64, ptr %14, align 8, !dbg !3732
  %175 = getelementptr inbounds i8, ptr %173, i64 %174, !dbg !3732
  store i8 %172, ptr %175, align 1, !dbg !3732
  br label %176, !dbg !3732

176:                                              ; preds = %166
  %177 = load i64, ptr %14, align 8, !dbg !3730
  %178 = add i64 %177, 1, !dbg !3730
  store i64 %178, ptr %14, align 8, !dbg !3730
  br label %150, !dbg !3730, !llvm.loop !3734

179:                                              ; preds = %150
  %180 = load i64, ptr %14, align 8, !dbg !3727
  %181 = load ptr, ptr %3, align 8, !dbg !3727
  %182 = getelementptr inbounds %struct.struct_coucal, ptr %181, i32 0, i32 4, !dbg !3727
  %183 = getelementptr inbounds %struct.anon.0, ptr %182, i32 0, i32 1, !dbg !3727
  %184 = load i64, ptr %183, align 8, !dbg !3727
  %185 = add i64 %184, %180, !dbg !3727
  store i64 %185, ptr %183, align 8, !dbg !3727
  %186 = load ptr, ptr %3, align 8, !dbg !3727
  %187 = getelementptr inbounds %struct.struct_coucal, ptr %186, i32 0, i32 4, !dbg !3727
  %188 = getelementptr inbounds %struct.anon.0, ptr %187, i32 0, i32 1, !dbg !3727
  %189 = load i64, ptr %188, align 8, !dbg !3727
  %190 = load i64, ptr %12, align 8, !dbg !3727
  %191 = icmp ule i64 %189, %190, !dbg !3727
  br i1 %191, label %194, label %192, !dbg !3727

192:                                              ; preds = %179
  %193 = load ptr, ptr %3, align 8, !dbg !3727
  call void @coucal_assert_failed(ptr noundef %193, ptr noundef @.str.28, ptr noundef @.str.2, i32 noundef 580), !dbg !3727
  br label %194, !dbg !3727

194:                                              ; preds = %192, %179
  %195 = phi i1 [ true, %179 ], [ false, %192 ]
  %196 = zext i1 %195 to i32, !dbg !3727
  %197 = load ptr, ptr %11, align 8, !dbg !3721
  %198 = load ptr, ptr %3, align 8, !dbg !3721
  %199 = getelementptr inbounds %struct.struct_coucal, ptr %198, i32 0, i32 0, !dbg !3721
  %200 = load ptr, ptr %199, align 8, !dbg !3721
  %201 = load i64, ptr %6, align 8, !dbg !3721
  %202 = getelementptr inbounds %struct.coucal_item, ptr %200, i64 %201, !dbg !3721
  %203 = getelementptr inbounds %struct.coucal_item, ptr %202, i32 0, i32 0, !dbg !3721
  store ptr %197, ptr %203, align 8, !dbg !3721
  %204 = load i64, ptr %9, align 8, !dbg !3721
  %205 = add i64 %204, 1, !dbg !3721
  store i64 %205, ptr %9, align 8, !dbg !3721
  br label %206, !dbg !3721

206:                                              ; preds = %194, %101, %92
  br label %207, !dbg !3718

207:                                              ; preds = %206
  br label %208, !dbg !3735

208:                                              ; preds = %207
  %209 = load i64, ptr %6, align 8, !dbg !3736
  %210 = add i64 %209, 1, !dbg !3736
  store i64 %210, ptr %6, align 8, !dbg !3736
  br label %87, !dbg !3737, !llvm.loop !3738

211:                                              ; preds = %87
  store i64 0, ptr %6, align 8, !dbg !3740
  br label %212, !dbg !3742

212:                                              ; preds = %336, %211
  %213 = load i64, ptr %6, align 8, !dbg !3743
  %214 = load ptr, ptr %3, align 8, !dbg !3745
  %215 = getelementptr inbounds %struct.struct_coucal, ptr %214, i32 0, i32 3, !dbg !3746
  %216 = getelementptr inbounds %struct.anon, ptr %215, i32 0, i32 1, !dbg !3747
  %217 = load i64, ptr %216, align 8, !dbg !3747
  %218 = icmp ult i64 %213, %217, !dbg !3748
  br i1 %218, label %219, label %339, !dbg !3749

219:                                              ; preds = %212
  br label %220, !dbg !3750

220:                                              ; preds = %219
  %221 = load ptr, ptr %3, align 8, !dbg !3752
  %222 = getelementptr inbounds %struct.struct_coucal, ptr %221, i32 0, i32 3, !dbg !3752
  %223 = getelementptr inbounds %struct.anon, ptr %222, i32 0, i32 0, !dbg !3752
  %224 = load i64, ptr %6, align 8, !dbg !3752
  %225 = getelementptr inbounds [16 x %struct.coucal_item], ptr %223, i64 0, i64 %224, !dbg !3752
  %226 = getelementptr inbounds %struct.coucal_item, ptr %225, i32 0, i32 0, !dbg !3752
  %227 = load ptr, ptr %226, align 8, !dbg !3752
  %228 = icmp ne ptr %227, null, !dbg !3752
  br i1 %228, label %229, label %334, !dbg !3752

229:                                              ; preds = %220
  %230 = load ptr, ptr %3, align 8, !dbg !3752
  %231 = getelementptr inbounds %struct.struct_coucal, ptr %230, i32 0, i32 3, !dbg !3752
  %232 = getelementptr inbounds %struct.anon, ptr %231, i32 0, i32 0, !dbg !3752
  %233 = load i64, ptr %6, align 8, !dbg !3752
  %234 = getelementptr inbounds [16 x %struct.coucal_item], ptr %232, i64 0, i64 %233, !dbg !3752
  %235 = getelementptr inbounds %struct.coucal_item, ptr %234, i32 0, i32 0, !dbg !3752
  %236 = load ptr, ptr %235, align 8, !dbg !3752
  %237 = icmp ne ptr %236, @the_empty_string, !dbg !3752
  br i1 %237, label %238, label %334, !dbg !3755

238:                                              ; preds = %229
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3756, metadata !DIExpression()), !dbg !3758
  %239 = load ptr, ptr %3, align 8, !dbg !3758
  %240 = getelementptr inbounds %struct.struct_coucal, ptr %239, i32 0, i32 3, !dbg !3758
  %241 = getelementptr inbounds %struct.anon, ptr %240, i32 0, i32 0, !dbg !3758
  %242 = load i64, ptr %6, align 8, !dbg !3758
  %243 = getelementptr inbounds [16 x %struct.coucal_item], ptr %241, i64 0, i64 %242, !dbg !3758
  %244 = getelementptr inbounds %struct.coucal_item, ptr %243, i32 0, i32 0, !dbg !3758
  %245 = load ptr, ptr %244, align 8, !dbg !3758
  store ptr %245, ptr %15, align 8, !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3759, metadata !DIExpression()), !dbg !3758
  %246 = load ptr, ptr %3, align 8, !dbg !3758
  %247 = getelementptr inbounds %struct.struct_coucal, ptr %246, i32 0, i32 4, !dbg !3758
  %248 = getelementptr inbounds %struct.anon.0, ptr %247, i32 0, i32 0, !dbg !3758
  %249 = load ptr, ptr %248, align 8, !dbg !3758
  %250 = load ptr, ptr %3, align 8, !dbg !3758
  %251 = getelementptr inbounds %struct.struct_coucal, ptr %250, i32 0, i32 4, !dbg !3758
  %252 = getelementptr inbounds %struct.anon.0, ptr %251, i32 0, i32 1, !dbg !3758
  %253 = load i64, ptr %252, align 8, !dbg !3758
  %254 = getelementptr inbounds i8, ptr %249, i64 %253, !dbg !3758
  store ptr %254, ptr %16, align 8, !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3760, metadata !DIExpression()), !dbg !3758
  %255 = load ptr, ptr %3, align 8, !dbg !3758
  %256 = getelementptr inbounds %struct.struct_coucal, ptr %255, i32 0, i32 4, !dbg !3758
  %257 = getelementptr inbounds %struct.anon.0, ptr %256, i32 0, i32 2, !dbg !3758
  %258 = load i64, ptr %257, align 8, !dbg !3758
  store i64 %258, ptr %17, align 8, !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3761, metadata !DIExpression()), !dbg !3758
  %259 = load ptr, ptr %3, align 8, !dbg !3758
  %260 = getelementptr inbounds %struct.struct_coucal, ptr %259, i32 0, i32 4, !dbg !3758
  %261 = getelementptr inbounds %struct.anon.0, ptr %260, i32 0, i32 0, !dbg !3758
  %262 = load ptr, ptr %261, align 8, !dbg !3758
  %263 = load i64, ptr %17, align 8, !dbg !3758
  %264 = getelementptr inbounds i8, ptr %262, i64 %263, !dbg !3758
  store ptr %264, ptr %18, align 8, !dbg !3758
  %265 = load ptr, ptr %16, align 8, !dbg !3758
  %266 = load ptr, ptr %18, align 8, !dbg !3758
  %267 = icmp ult ptr %265, %266, !dbg !3758
  br i1 %267, label %270, label %268, !dbg !3758

268:                                              ; preds = %238
  %269 = load ptr, ptr %3, align 8, !dbg !3758
  call void @coucal_assert_failed(ptr noundef %269, ptr noundef @.str.26, ptr noundef @.str.2, i32 noundef 583), !dbg !3758
  br label %270, !dbg !3758

270:                                              ; preds = %268, %238
  %271 = phi i1 [ true, %238 ], [ false, %268 ]
  %272 = zext i1 %271 to i32, !dbg !3758
  %273 = load ptr, ptr %15, align 8, !dbg !3758
  %274 = getelementptr inbounds i8, ptr %273, i64 0, !dbg !3758
  %275 = load i8, ptr %274, align 1, !dbg !3758
  %276 = load ptr, ptr %16, align 8, !dbg !3758
  %277 = getelementptr inbounds i8, ptr %276, i64 0, !dbg !3758
  store i8 %275, ptr %277, align 1, !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3762, metadata !DIExpression()), !dbg !3764
  store i64 1, ptr %19, align 8, !dbg !3765
  br label %278, !dbg !3765

278:                                              ; preds = %304, %270
  %279 = load ptr, ptr %15, align 8, !dbg !3767
  %280 = load i64, ptr %19, align 8, !dbg !3767
  %281 = sub i64 %280, 1, !dbg !3767
  %282 = getelementptr inbounds i8, ptr %279, i64 %281, !dbg !3767
  %283 = load i8, ptr %282, align 1, !dbg !3767
  %284 = sext i8 %283 to i32, !dbg !3767
  %285 = icmp ne i32 %284, 0, !dbg !3767
  br i1 %285, label %286, label %307, !dbg !3765

286:                                              ; preds = %278
  %287 = load ptr, ptr %16, align 8, !dbg !3769
  %288 = load i64, ptr %19, align 8, !dbg !3769
  %289 = getelementptr inbounds i8, ptr %287, i64 %288, !dbg !3769
  %290 = load ptr, ptr %18, align 8, !dbg !3769
  %291 = icmp ult ptr %289, %290, !dbg !3769
  br i1 %291, label %294, label %292, !dbg !3769

292:                                              ; preds = %286
  %293 = load ptr, ptr %3, align 8, !dbg !3769
  call void @coucal_assert_failed(ptr noundef %293, ptr noundef @.str.27, ptr noundef @.str.2, i32 noundef 583), !dbg !3769
  br label %294, !dbg !3769

294:                                              ; preds = %292, %286
  %295 = phi i1 [ true, %286 ], [ false, %292 ]
  %296 = zext i1 %295 to i32, !dbg !3769
  %297 = load ptr, ptr %15, align 8, !dbg !3769
  %298 = load i64, ptr %19, align 8, !dbg !3769
  %299 = getelementptr inbounds i8, ptr %297, i64 %298, !dbg !3769
  %300 = load i8, ptr %299, align 1, !dbg !3769
  %301 = load ptr, ptr %16, align 8, !dbg !3769
  %302 = load i64, ptr %19, align 8, !dbg !3769
  %303 = getelementptr inbounds i8, ptr %301, i64 %302, !dbg !3769
  store i8 %300, ptr %303, align 1, !dbg !3769
  br label %304, !dbg !3769

304:                                              ; preds = %294
  %305 = load i64, ptr %19, align 8, !dbg !3767
  %306 = add i64 %305, 1, !dbg !3767
  store i64 %306, ptr %19, align 8, !dbg !3767
  br label %278, !dbg !3767, !llvm.loop !3771

307:                                              ; preds = %278
  %308 = load i64, ptr %19, align 8, !dbg !3764
  %309 = load ptr, ptr %3, align 8, !dbg !3764
  %310 = getelementptr inbounds %struct.struct_coucal, ptr %309, i32 0, i32 4, !dbg !3764
  %311 = getelementptr inbounds %struct.anon.0, ptr %310, i32 0, i32 1, !dbg !3764
  %312 = load i64, ptr %311, align 8, !dbg !3764
  %313 = add i64 %312, %308, !dbg !3764
  store i64 %313, ptr %311, align 8, !dbg !3764
  %314 = load ptr, ptr %3, align 8, !dbg !3764
  %315 = getelementptr inbounds %struct.struct_coucal, ptr %314, i32 0, i32 4, !dbg !3764
  %316 = getelementptr inbounds %struct.anon.0, ptr %315, i32 0, i32 1, !dbg !3764
  %317 = load i64, ptr %316, align 8, !dbg !3764
  %318 = load i64, ptr %17, align 8, !dbg !3764
  %319 = icmp ule i64 %317, %318, !dbg !3764
  br i1 %319, label %322, label %320, !dbg !3764

320:                                              ; preds = %307
  %321 = load ptr, ptr %3, align 8, !dbg !3764
  call void @coucal_assert_failed(ptr noundef %321, ptr noundef @.str.28, ptr noundef @.str.2, i32 noundef 583), !dbg !3764
  br label %322, !dbg !3764

322:                                              ; preds = %320, %307
  %323 = phi i1 [ true, %307 ], [ false, %320 ]
  %324 = zext i1 %323 to i32, !dbg !3764
  %325 = load ptr, ptr %16, align 8, !dbg !3758
  %326 = load ptr, ptr %3, align 8, !dbg !3758
  %327 = getelementptr inbounds %struct.struct_coucal, ptr %326, i32 0, i32 3, !dbg !3758
  %328 = getelementptr inbounds %struct.anon, ptr %327, i32 0, i32 0, !dbg !3758
  %329 = load i64, ptr %6, align 8, !dbg !3758
  %330 = getelementptr inbounds [16 x %struct.coucal_item], ptr %328, i64 0, i64 %329, !dbg !3758
  %331 = getelementptr inbounds %struct.coucal_item, ptr %330, i32 0, i32 0, !dbg !3758
  store ptr %325, ptr %331, align 8, !dbg !3758
  %332 = load i64, ptr %9, align 8, !dbg !3758
  %333 = add i64 %332, 1, !dbg !3758
  store i64 %333, ptr %9, align 8, !dbg !3758
  br label %334, !dbg !3758

334:                                              ; preds = %322, %229, %220
  br label %335, !dbg !3755

335:                                              ; preds = %334
  br label %336, !dbg !3772

336:                                              ; preds = %335
  %337 = load i64, ptr %6, align 8, !dbg !3773
  %338 = add i64 %337, 1, !dbg !3773
  store i64 %338, ptr %6, align 8, !dbg !3773
  br label %212, !dbg !3774, !llvm.loop !3775

339:                                              ; preds = %212
  %340 = load ptr, ptr %3, align 8, !dbg !3777
  %341 = getelementptr inbounds %struct.struct_coucal, ptr %340, i32 0, i32 4, !dbg !3778
  %342 = getelementptr inbounds %struct.anon.0, ptr %341, i32 0, i32 1, !dbg !3779
  %343 = load i64, ptr %342, align 8, !dbg !3779
  %344 = load ptr, ptr %3, align 8, !dbg !3780
  %345 = getelementptr inbounds %struct.struct_coucal, ptr %344, i32 0, i32 4, !dbg !3781
  %346 = getelementptr inbounds %struct.anon.0, ptr %345, i32 0, i32 3, !dbg !3782
  store i64 %343, ptr %346, align 8, !dbg !3783
  %347 = load ptr, ptr %7, align 8, !dbg !3784
  call void @free(ptr noundef %347) #16, !dbg !3785
  %348 = load ptr, ptr %3, align 8, !dbg !3786
  %349 = load i64, ptr %9, align 8, !dbg !3787
  %350 = load i64, ptr %8, align 8, !dbg !3788
  %351 = load ptr, ptr %3, align 8, !dbg !3789
  %352 = getelementptr inbounds %struct.struct_coucal, ptr %351, i32 0, i32 4, !dbg !3790
  %353 = getelementptr inbounds %struct.anon.0, ptr %352, i32 0, i32 1, !dbg !3791
  %354 = load i64, ptr %353, align 8, !dbg !3791
  call void (ptr, ptr, ...) @coucal_nolog(ptr noundef %348, ptr noundef @.str.29, i64 noundef %349, i64 noundef %350, i64 noundef %354), !dbg !3792
  ret void, !dbg !3793
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_log(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !3794 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3797, metadata !DIExpression()), !dbg !3798
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3799, metadata !DIExpression()), !dbg !3800
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3801, metadata !DIExpression()), !dbg !3802
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3803, metadata !DIExpression()), !dbg !3804
  %9 = load ptr, ptr %7, align 8, !dbg !3805
  %10 = icmp ne ptr %9, null, !dbg !3805
  br i1 %10, label %13, label %11, !dbg !3805

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !dbg !3805
  call void @coucal_assert_failed(ptr noundef %12, ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 310), !dbg !3805
  br label %13, !dbg !3805

13:                                               ; preds = %11, %4
  %14 = phi i1 [ true, %4 ], [ false, %11 ]
  %15 = zext i1 %14 to i32, !dbg !3805
  %16 = load ptr, ptr %5, align 8, !dbg !3806
  %17 = icmp ne ptr %16, null, !dbg !3808
  br i1 %17, label %18, label %39, !dbg !3809

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8, !dbg !3810
  %20 = getelementptr inbounds %struct.struct_coucal, ptr %19, i32 0, i32 6, !dbg !3811
  %21 = getelementptr inbounds %struct.anon.2, ptr %20, i32 0, i32 2, !dbg !3812
  %22 = getelementptr inbounds %struct.anon.5, ptr %21, i32 0, i32 0, !dbg !3813
  %23 = load ptr, ptr %22, align 8, !dbg !3813
  %24 = icmp ne ptr %23, null, !dbg !3814
  br i1 %24, label %25, label %39, !dbg !3815

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 8, !dbg !3816
  %27 = getelementptr inbounds %struct.struct_coucal, ptr %26, i32 0, i32 6, !dbg !3818
  %28 = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 2, !dbg !3819
  %29 = getelementptr inbounds %struct.anon.5, ptr %28, i32 0, i32 0, !dbg !3820
  %30 = load ptr, ptr %29, align 8, !dbg !3820
  %31 = load ptr, ptr %5, align 8, !dbg !3821
  %32 = getelementptr inbounds %struct.struct_coucal, ptr %31, i32 0, i32 6, !dbg !3822
  %33 = getelementptr inbounds %struct.anon.2, ptr %32, i32 0, i32 2, !dbg !3823
  %34 = getelementptr inbounds %struct.anon.5, ptr %33, i32 0, i32 2, !dbg !3824
  %35 = load ptr, ptr %34, align 8, !dbg !3824
  %36 = load i32, ptr %6, align 4, !dbg !3825
  %37 = load ptr, ptr %7, align 8, !dbg !3826
  %38 = load ptr, ptr %8, align 8, !dbg !3827
  call void %30(ptr noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %38), !dbg !3816
  br label %59, !dbg !3828

39:                                               ; preds = %18, %13
  %40 = load ptr, ptr @global_log_handler, align 8, !dbg !3829
  %41 = icmp ne ptr %40, null, !dbg !3831
  br i1 %41, label %42, label %48, !dbg !3832

42:                                               ; preds = %39
  %43 = load ptr, ptr @global_log_handler, align 8, !dbg !3833
  %44 = load ptr, ptr %5, align 8, !dbg !3835
  %45 = load i32, ptr %6, align 4, !dbg !3836
  %46 = load ptr, ptr %7, align 8, !dbg !3837
  %47 = load ptr, ptr %8, align 8, !dbg !3838
  call void %43(ptr noundef %44, i32 noundef %45, ptr noundef %46, ptr noundef %47), !dbg !3833
  br label %58, !dbg !3839

48:                                               ; preds = %39
  %49 = load ptr, ptr @stderr, align 8, !dbg !3840
  %50 = load ptr, ptr %5, align 8, !dbg !3842
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.31, ptr noundef %50), !dbg !3843
  %52 = load ptr, ptr @stderr, align 8, !dbg !3844
  %53 = load ptr, ptr %7, align 8, !dbg !3845
  %54 = load ptr, ptr %8, align 8, !dbg !3846
  %55 = call i32 @vfprintf(ptr noundef %52, ptr noundef %53, ptr noundef %54), !dbg !3847
  %56 = load ptr, ptr @stderr, align 8, !dbg !3848
  %57 = call i32 @putc(i32 noundef 10, ptr noundef %56), !dbg !3849
  br label %58

58:                                               ; preds = %48, %42
  br label %59

59:                                               ; preds = %58, %25
  ret void, !dbg !3850
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #10

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #10

declare i32 @putc(i32 noundef, ptr noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_fail(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3851 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3854, metadata !DIExpression()), !dbg !3855
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3856, metadata !DIExpression()), !dbg !3857
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3858, metadata !DIExpression()), !dbg !3859
  %7 = load ptr, ptr @stderr, align 8, !dbg !3860
  %8 = load ptr, ptr %4, align 8, !dbg !3861
  %9 = load ptr, ptr %5, align 8, !dbg !3862
  %10 = load i32, ptr %6, align 4, !dbg !3863
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.34, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !3864
  call void @abort() #14, !dbg !3865
  unreachable, !dbg !3865
}

; Function Attrs: noreturn nounwind
declare void @abort() #11

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @coucal_print_key(ptr noundef %0, ptr noundef %1) #0 !dbg !3866 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3869, metadata !DIExpression()), !dbg !3870
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3871, metadata !DIExpression()), !dbg !3872
  %5 = load ptr, ptr %3, align 8, !dbg !3873
  %6 = getelementptr inbounds %struct.struct_coucal, ptr %5, i32 0, i32 6, !dbg !3874
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 3, !dbg !3875
  %8 = getelementptr inbounds %struct.anon.6, ptr %7, i32 0, i32 0, !dbg !3876
  %9 = load ptr, ptr %8, align 8, !dbg !3876
  %10 = icmp ne ptr %9, null, !dbg !3877
  br i1 %10, label %11, label %24, !dbg !3873

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !3878
  %13 = getelementptr inbounds %struct.struct_coucal, ptr %12, i32 0, i32 6, !dbg !3879
  %14 = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 3, !dbg !3880
  %15 = getelementptr inbounds %struct.anon.6, ptr %14, i32 0, i32 0, !dbg !3881
  %16 = load ptr, ptr %15, align 8, !dbg !3881
  %17 = load ptr, ptr %3, align 8, !dbg !3882
  %18 = getelementptr inbounds %struct.struct_coucal, ptr %17, i32 0, i32 6, !dbg !3883
  %19 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 3, !dbg !3884
  %20 = getelementptr inbounds %struct.anon.6, ptr %19, i32 0, i32 2, !dbg !3885
  %21 = load ptr, ptr %20, align 8, !dbg !3885
  %22 = load ptr, ptr %4, align 8, !dbg !3886
  %23 = call ptr %16(ptr noundef %21, ptr noundef %22), !dbg !3878
  br label %26, !dbg !3873

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 8, !dbg !3887
  br label %26, !dbg !3873

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %23, %11 ], [ %25, %24 ], !dbg !3873
  ret ptr %27, !dbg !3888
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coucal_equals(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3889 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3892, metadata !DIExpression()), !dbg !3893
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3894, metadata !DIExpression()), !dbg !3895
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3896, metadata !DIExpression()), !dbg !3897
  %7 = load ptr, ptr %4, align 8, !dbg !3898
  %8 = getelementptr inbounds %struct.struct_coucal, ptr %7, i32 0, i32 6, !dbg !3899
  %9 = getelementptr inbounds %struct.anon.2, ptr %8, i32 0, i32 1, !dbg !3900
  %10 = getelementptr inbounds %struct.anon.4, ptr %9, i32 0, i32 3, !dbg !3901
  %11 = load ptr, ptr %10, align 8, !dbg !3901
  %12 = icmp eq ptr %11, null, !dbg !3902
  br i1 %12, label %13, label %19, !dbg !3898

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !3903
  %15 = load ptr, ptr %6, align 8, !dbg !3904
  %16 = call i32 @strcmp(ptr noundef %14, ptr noundef %15) #12, !dbg !3905
  %17 = icmp eq i32 %16, 0, !dbg !3906
  %18 = zext i1 %17 to i32, !dbg !3906
  br label %33, !dbg !3898

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !dbg !3907
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 6, !dbg !3908
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 1, !dbg !3909
  %23 = getelementptr inbounds %struct.anon.4, ptr %22, i32 0, i32 3, !dbg !3910
  %24 = load ptr, ptr %23, align 8, !dbg !3910
  %25 = load ptr, ptr %4, align 8, !dbg !3911
  %26 = getelementptr inbounds %struct.struct_coucal, ptr %25, i32 0, i32 6, !dbg !3912
  %27 = getelementptr inbounds %struct.anon.2, ptr %26, i32 0, i32 1, !dbg !3913
  %28 = getelementptr inbounds %struct.anon.4, ptr %27, i32 0, i32 4, !dbg !3914
  %29 = load ptr, ptr %28, align 8, !dbg !3914
  %30 = load ptr, ptr %5, align 8, !dbg !3915
  %31 = load ptr, ptr %6, align 8, !dbg !3916
  %32 = call i32 %24(ptr noundef %29, ptr noundef %30, ptr noundef %31), !dbg !3907
  br label %33, !dbg !3898

33:                                               ; preds = %19, %13
  %34 = phi i32 [ %18, %13 ], [ %32, %19 ], !dbg !3898
  ret i32 %34, !dbg !3917
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_del_item(ptr noundef %0, ptr noundef %1) #0 !dbg !3918 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3921, metadata !DIExpression()), !dbg !3922
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3923, metadata !DIExpression()), !dbg !3924
  %5 = load ptr, ptr %3, align 8, !dbg !3925
  %6 = load ptr, ptr %4, align 8, !dbg !3926
  %7 = getelementptr inbounds %struct.coucal_item, ptr %6, i32 0, i32 1, !dbg !3927
  call void @coucal_del_value_(ptr noundef %5, ptr noundef %7), !dbg !3928
  %8 = load ptr, ptr %3, align 8, !dbg !3929
  %9 = load ptr, ptr %4, align 8, !dbg !3930
  call void @coucal_del_name(ptr noundef %8, ptr noundef %9), !dbg !3931
  ret void, !dbg !3932
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_del_name(ptr noundef %0, ptr noundef %1) #0 !dbg !3933 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.coucal_hashkeys, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3934, metadata !DIExpression()), !dbg !3935
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3938, metadata !DIExpression()), !dbg !3939
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 8, i1 false), !dbg !3939
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3940, metadata !DIExpression()), !dbg !3941
  %7 = load ptr, ptr %4, align 8, !dbg !3942
  %8 = getelementptr inbounds %struct.coucal_item, ptr %7, i32 0, i32 0, !dbg !3943
  %9 = load ptr, ptr %8, align 8, !dbg !3943
  store ptr %9, ptr %6, align 8, !dbg !3941
  %10 = load ptr, ptr %4, align 8, !dbg !3944
  %11 = getelementptr inbounds %struct.coucal_item, ptr %10, i32 0, i32 0, !dbg !3945
  store ptr null, ptr %11, align 8, !dbg !3946
  %12 = load ptr, ptr %4, align 8, !dbg !3947
  %13 = getelementptr inbounds %struct.coucal_item, ptr %12, i32 0, i32 2, !dbg !3948
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 4 %5, i64 8, i1 false), !dbg !3949
  %14 = load ptr, ptr %3, align 8, !dbg !3950
  %15 = load ptr, ptr %6, align 8, !dbg !3951
  call void @coucal_free_key(ptr noundef %14, ptr noundef %15), !dbg !3952
  ret void, !dbg !3953
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_free_key(ptr noundef %0, ptr noundef %1) #0 !dbg !3954 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3957, metadata !DIExpression()), !dbg !3958
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3959, metadata !DIExpression()), !dbg !3960
  %5 = load ptr, ptr %3, align 8, !dbg !3961
  %6 = getelementptr inbounds %struct.struct_coucal, ptr %5, i32 0, i32 6, !dbg !3963
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1, !dbg !3964
  %8 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 1, !dbg !3965
  %9 = load ptr, ptr %8, align 8, !dbg !3965
  %10 = icmp eq ptr %9, null, !dbg !3966
  br i1 %10, label %11, label %14, !dbg !3967

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !3968
  %13 = load ptr, ptr %4, align 8, !dbg !3970
  call void @coucal_free_key_internal(ptr noundef %12, ptr noundef %13), !dbg !3971
  br label %26, !dbg !3972

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !3973
  %16 = getelementptr inbounds %struct.struct_coucal, ptr %15, i32 0, i32 6, !dbg !3975
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 1, !dbg !3976
  %18 = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 1, !dbg !3977
  %19 = load ptr, ptr %18, align 8, !dbg !3977
  %20 = load ptr, ptr %3, align 8, !dbg !3978
  %21 = getelementptr inbounds %struct.struct_coucal, ptr %20, i32 0, i32 6, !dbg !3979
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 1, !dbg !3980
  %23 = getelementptr inbounds %struct.anon.4, ptr %22, i32 0, i32 4, !dbg !3981
  %24 = load ptr, ptr %23, align 8, !dbg !3981
  %25 = load ptr, ptr %4, align 8, !dbg !3982
  call void %19(ptr noundef %24, ptr noundef %25), !dbg !3973
  br label %26

26:                                               ; preds = %14, %11
  ret void, !dbg !3983
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_free_key_internal(ptr noundef %0, ptr noundef %1) #0 !dbg !3984 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3985, metadata !DIExpression()), !dbg !3986
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3987, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3989, metadata !DIExpression()), !dbg !3990
  %8 = load ptr, ptr %4, align 8, !dbg !3991
  store ptr %8, ptr %5, align 8, !dbg !3990
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3992, metadata !DIExpression()), !dbg !3993
  %9 = load ptr, ptr %5, align 8, !dbg !3994
  %10 = call i64 @strlen(ptr noundef %9) #12, !dbg !3995
  %11 = add i64 %10, 1, !dbg !3996
  store i64 %11, ptr %6, align 8, !dbg !3993
  %12 = load i64, ptr %6, align 8, !dbg !3997
  %13 = icmp eq i64 %12, 1, !dbg !3999
  br i1 %13, label %14, label %26, !dbg !4000

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !dbg !4001
  %16 = icmp eq ptr %15, @the_empty_string, !dbg !4002
  br i1 %16, label %17, label %26, !dbg !4003

17:                                               ; preds = %14
  %18 = load i8, ptr @the_empty_string, align 1, !dbg !4004
  %19 = sext i8 %18 to i32, !dbg !4004
  %20 = icmp eq i32 %19, 0, !dbg !4004
  br i1 %20, label %23, label %21, !dbg !4004

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8, !dbg !4004
  call void @coucal_assert_failed(ptr noundef %22, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 710), !dbg !4004
  br label %23, !dbg !4004

23:                                               ; preds = %21, %17
  %24 = phi i1 [ true, %17 ], [ false, %21 ]
  %25 = zext i1 %24 to i32, !dbg !4004
  br label %82, !dbg !4006

26:                                               ; preds = %14, %2
  %27 = load ptr, ptr %5, align 8, !dbg !4007
  %28 = load i8, ptr %27, align 1, !dbg !4007
  %29 = sext i8 %28 to i32, !dbg !4007
  %30 = icmp ne i32 %29, 0, !dbg !4007
  br i1 %30, label %33, label %31, !dbg !4007

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8, !dbg !4007
  call void @coucal_assert_failed(ptr noundef %32, ptr noundef @.str.48, ptr noundef @.str.2, i32 noundef 714), !dbg !4007
  br label %33, !dbg !4007

33:                                               ; preds = %31, %26
  %34 = phi i1 [ true, %26 ], [ false, %31 ]
  %35 = zext i1 %34 to i32, !dbg !4007
  %36 = load i64, ptr %6, align 8, !dbg !4008
  %37 = load ptr, ptr %3, align 8, !dbg !4009
  %38 = getelementptr inbounds %struct.struct_coucal, ptr %37, i32 0, i32 4, !dbg !4010
  %39 = getelementptr inbounds %struct.anon.0, ptr %38, i32 0, i32 3, !dbg !4011
  %40 = load i64, ptr %39, align 8, !dbg !4012
  %41 = sub i64 %40, %36, !dbg !4012
  store i64 %41, ptr %39, align 8, !dbg !4012
  %42 = load ptr, ptr %5, align 8, !dbg !4013
  store i8 0, ptr %42, align 1, !dbg !4014
  %43 = load ptr, ptr %3, align 8, !dbg !4015
  %44 = getelementptr inbounds %struct.struct_coucal, ptr %43, i32 0, i32 4, !dbg !4017
  %45 = getelementptr inbounds %struct.anon.0, ptr %44, i32 0, i32 3, !dbg !4018
  %46 = load i64, ptr %45, align 8, !dbg !4018
  %47 = load ptr, ptr %3, align 8, !dbg !4019
  %48 = getelementptr inbounds %struct.struct_coucal, ptr %47, i32 0, i32 4, !dbg !4020
  %49 = getelementptr inbounds %struct.anon.0, ptr %48, i32 0, i32 1, !dbg !4021
  %50 = load i64, ptr %49, align 8, !dbg !4021
  %51 = udiv i64 %50, 2, !dbg !4022
  %52 = icmp ult i64 %46, %51, !dbg !4023
  br i1 %52, label %53, label %82, !dbg !4024

53:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4025, metadata !DIExpression()), !dbg !4027
  %54 = load ptr, ptr %3, align 8, !dbg !4028
  %55 = getelementptr inbounds %struct.struct_coucal, ptr %54, i32 0, i32 4, !dbg !4029
  %56 = getelementptr inbounds %struct.anon.0, ptr %55, i32 0, i32 2, !dbg !4030
  %57 = load i64, ptr %56, align 8, !dbg !4030
  store i64 %57, ptr %7, align 8, !dbg !4027
  %58 = load ptr, ptr %3, align 8, !dbg !4031
  %59 = getelementptr inbounds %struct.struct_coucal, ptr %58, i32 0, i32 4, !dbg !4033
  %60 = getelementptr inbounds %struct.anon.0, ptr %59, i32 0, i32 3, !dbg !4034
  %61 = load i64, ptr %60, align 8, !dbg !4034
  %62 = load i64, ptr %7, align 8, !dbg !4035
  %63 = udiv i64 %62, 4, !dbg !4036
  %64 = icmp ult i64 %61, %63, !dbg !4037
  br i1 %64, label %65, label %68, !dbg !4038

65:                                               ; preds = %53
  %66 = load i64, ptr %7, align 8, !dbg !4039
  %67 = udiv i64 %66, 2, !dbg !4039
  store i64 %67, ptr %7, align 8, !dbg !4039
  br label %68, !dbg !4041

68:                                               ; preds = %65, %53
  %69 = load ptr, ptr %3, align 8, !dbg !4042
  %70 = getelementptr inbounds %struct.struct_coucal, ptr %69, i32 0, i32 4, !dbg !4042
  %71 = getelementptr inbounds %struct.anon.0, ptr %70, i32 0, i32 3, !dbg !4042
  %72 = load i64, ptr %71, align 8, !dbg !4042
  %73 = load i64, ptr %7, align 8, !dbg !4042
  %74 = icmp ult i64 %72, %73, !dbg !4042
  br i1 %74, label %77, label %75, !dbg !4042

75:                                               ; preds = %68
  %76 = load ptr, ptr %3, align 8, !dbg !4042
  call void @coucal_assert_failed(ptr noundef %76, ptr noundef @.str.49, ptr noundef @.str.2, i32 noundef 725), !dbg !4042
  br label %77, !dbg !4042

77:                                               ; preds = %75, %68
  %78 = phi i1 [ true, %68 ], [ false, %75 ]
  %79 = zext i1 %78 to i32, !dbg !4042
  %80 = load ptr, ptr %3, align 8, !dbg !4043
  %81 = load i64, ptr %7, align 8, !dbg !4044
  call void @coucal_compact_pool(ptr noundef %80, i64 noundef %81), !dbg !4045
  br label %82, !dbg !4046

82:                                               ; preds = %23, %77, %33
  ret void, !dbg !4047
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coucal_info(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !4048 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4049, metadata !DIExpression()), !dbg !4050
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4051, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4052, metadata !DIExpression()), !dbg !4050
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !4050
  call void @llvm.va_start(ptr %6), !dbg !4050
  %7 = load ptr, ptr %3, align 8, !dbg !4050
  %8 = load ptr, ptr %4, align 8, !dbg !4050
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !4050
  call void @coucal_log(ptr noundef %7, i32 noundef 2, ptr noundef %8, ptr noundef %9), !dbg !4050
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !4050
  call void @llvm.va_end(ptr %10), !dbg !4050
  ret void, !dbg !4050
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!76}
!llvm.module.flags = !{!409, !410, !411, !412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1067, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/coucal.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "fe64d4532ea9ba7b062a8a8fddf2ba74")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 59)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1077, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 46)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1077, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1082, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 60)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1085, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1101, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 17)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1116, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 55)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1122, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 35)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1139, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 51)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1144, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 34)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1146, type: !39, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1150, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 29)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1304, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 21)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1325, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 41)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1446, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 36)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "global_log_handler", scope: !76, file: !2, line: 283, type: !204, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !87, globals: !250, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "coucal_loglevel", file: !79, line: 181, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "./src/coucal.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "62c36e3bcc49ac1175c15c5536712ae6")
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "coucal_log_critical", value: 0)
!83 = !DIEnumerator(name: "coucal_log_warning", value: 1)
!84 = !DIEnumerator(name: "coucal_log_info", value: 2)
!85 = !DIEnumerator(name: "coucal_log_debug", value: 3)
!86 = !DIEnumerator(name: "coucal_log_trace", value: 4)
!87 = !{!88, !91, !92, !93, !96, !100, !126, !242, !246, !248, !209, !145, !249}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !97, line: 27, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !99, line: 45, baseType: !95)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_item", file: !79, line: 136, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coucal_item", file: !79, line: 169, size: 192, elements: !103)
!103 = !{!104, !106, !117}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !79, line: 171, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_key", file: !79, line: 108, baseType: !92)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !102, file: !79, line: 174, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_value", file: !79, line: 126, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "coucal_value", file: !79, line: 117, size: 64, elements: !109)
!109 = !{!110, !114, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "intg", scope: !108, file: !79, line: 119, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !112, line: 87, baseType: !113)
!112 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uintg", scope: !108, file: !79, line: 122, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !112, line: 90, baseType: !95)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !108, file: !79, line: 125, baseType: !92, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "hashes", scope: !102, file: !79, line: 177, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_hashkeys", file: !79, line: 163, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coucal_hashkeys", file: !79, line: 160, size: 64, elements: !120)
!120 = !{!121, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "hash1", scope: !119, file: !79, line: 161, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_hashkey", file: !79, line: 148, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 26, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hash2", scope: !119, file: !79, line: 162, baseType: !122, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal", file: !79, line: 231, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "struct_coucal", file: !2, line: 123, size: 4992, elements: !129)
!129 = !{!130, !131, !132, !133, !141, !149, !160}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !128, file: !2, line: 125, baseType: !100, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lg_size", scope: !128, file: !2, line: 128, baseType: !93, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !128, file: !2, line: 131, baseType: !93, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "stash", scope: !128, file: !2, line: 140, baseType: !134, size: 3136, offset: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 134, size: 3136, elements: !135)
!135 = !{!136, !140}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !134, file: !2, line: 136, baseType: !137, size: 3072)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 3072, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !134, file: !2, line: 139, baseType: !93, size: 64, offset: 3072)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !128, file: !2, line: 152, baseType: !142, size: 256, offset: 3328)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 143, size: 256, elements: !143)
!143 = !{!144, !146, !147, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !142, file: !2, line: 145, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !142, file: !2, line: 147, baseType: !93, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !142, file: !2, line: 149, baseType: !93, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !142, file: !2, line: 151, baseType: !93, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !128, file: !2, line: 172, baseType: !150, size: 512, offset: 3584)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 155, size: 512, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "max_stash_size", scope: !150, file: !2, line: 157, baseType: !93, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "write_count", scope: !150, file: !2, line: 159, baseType: !93, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "add_count", scope: !150, file: !2, line: 161, baseType: !93, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cuckoo_moved", scope: !150, file: !2, line: 163, baseType: !93, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "stash_added", scope: !150, file: !2, line: 165, baseType: !93, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rehash_count", scope: !150, file: !2, line: 167, baseType: !93, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pool_compact_count", scope: !150, file: !2, line: 169, baseType: !93, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pool_realloc_count", scope: !150, file: !2, line: 171, baseType: !93, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "custom", scope: !128, file: !2, line: 219, baseType: !161, size: 896, offset: 4096)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 175, size: 896, elements: !162)
!162 = !{!163, !173, !200, !226}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !161, file: !2, line: 182, baseType: !164, size: 128)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !2, line: 177, size: 128, elements: !165)
!165 = !{!166, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !164, file: !2, line: 179, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_value_freehandler", file: !79, line: 194, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171, !107}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_opaque", file: !79, line: 114, baseType: !92)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !164, file: !2, line: 181, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !161, file: !2, line: 196, baseType: !174, size: 320, offset: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !2, line: 185, size: 320, elements: !175)
!175 = !{!176, !184, !189, !194, !199}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !174, file: !2, line: 187, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_duphandler", file: !79, line: 198, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!105, !171, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_key_const", file: !79, line: 111, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !174, file: !2, line: 189, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_key_freehandler", file: !79, line: 190, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !171, !105}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !174, file: !2, line: 191, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_hasheshandler", file: !79, line: 202, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!118, !171, !181}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "equals", scope: !174, file: !2, line: 193, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_cmphandler", file: !79, line: 224, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!91, !171, !181, !181}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !174, file: !2, line: 195, baseType: !171, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !161, file: !2, line: 208, baseType: !201, size: 256, offset: 448)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !2, line: 199, size: 256, elements: !202)
!202 = !{!203, !219, !224, !225}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !201, file: !2, line: 201, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_loghandler", file: !79, line: 206, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !171, !208, !209, !211}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_loglevel", file: !79, line: 187, baseType: !78)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !212, file: !215, baseType: !80, size: 32)
!215 = !DIFile(filename: "src/coucal.c", directory: "/home/raj/httrack-3.48.21")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !212, file: !215, baseType: !80, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !212, file: !215, baseType: !92, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !212, file: !215, baseType: !92, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "fatal", scope: !201, file: !2, line: 203, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_asserthandler", file: !79, line: 210, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !171, !209, !209, !91}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !201, file: !2, line: 205, baseType: !171, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !2, line: 207, baseType: !181, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !161, file: !2, line: 218, baseType: !227, size: 192, offset: 704)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !2, line: 211, size: 192, elements: !228)
!228 = !{!229, !234, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !227, file: !2, line: 213, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_printkeyhandler", file: !79, line: 214, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!209, !171, !181}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !227, file: !2, line: 215, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_coucal_printvaluehandler", file: !79, line: 218, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!209, !171, !239}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal_value_const", file: !79, line: 129, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !227, file: !2, line: 217, baseType: !171, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !97, line: 24, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !99, line: 38, baseType: !90)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!249 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!250 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !69, !251, !256, !261, !266, !268, !273, !275, !280, !285, !287, !289, !291, !293, !296, !301, !306, !311, !316, !321, !323, !328, !330, !335, !340, !342, !347, !349, !354, !359, !364, !369, !371, !376, !381, !383, !388, !390, !395, !400, !402, !74, !407}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 28)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 675, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 49)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 32)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !34, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "the_empty_string", scope: !76, file: !2, line: 277, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 1)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !49, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 72)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 43)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !49, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !44, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !277, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 546, type: !282, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !138)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 20)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 33)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 62)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 15)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 6)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !303, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 10)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !263, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 904, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 38)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 915, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 39)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 921, type: !298, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 940, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 18)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 946, type: !344, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 950, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 50)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 971, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 45)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 984, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 69)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 995, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 81)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1001, type: !66, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1022, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 53)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1237, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 4)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1286, type: !66, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 714, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 57)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !263, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1960, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 245)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 2)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !270, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 3)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "global_assert_handler", scope: !76, file: !2, line: 280, type: !220, isLocal: true, isDefinition: true)
!409 = !{i32 7, !"Dwarf Version", i32 5}
!410 = !{i32 2, !"Debug Info Version", i32 3}
!411 = !{i32 1, !"wchar_size", i32 4}
!412 = !{i32 8, !"PIC Level", i32 2}
!413 = !{i32 7, !"PIE Level", i32 2}
!414 = !{i32 7, !"uwtable", i32 2}
!415 = !{i32 7, !"frame-pointer", i32 2}
!416 = !{!"clang version 16.0.0"}
!417 = distinct !DISubprogram(name: "coucal_get_name", scope: !2, file: !2, line: 332, type: !418, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!209, !126}
!420 = !{}
!421 = !DILocalVariable(name: "hashtable", arg: 1, scope: !417, file: !2, line: 332, type: !126)
!422 = !DILocation(line: 332, column: 36, scope: !417)
!423 = !DILocation(line: 333, column: 10, scope: !417)
!424 = !DILocation(line: 333, column: 21, scope: !417)
!425 = !DILocation(line: 333, column: 28, scope: !417)
!426 = !DILocation(line: 333, column: 34, scope: !417)
!427 = !DILocation(line: 333, column: 3, scope: !417)
!428 = distinct !DISubprogram(name: "coucal_hash_data", scope: !2, file: !2, line: 379, type: !429, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!429 = !DISubroutineType(types: !430)
!430 = !{!118, !182, !93}
!431 = !DILocalVariable(name: "data_", arg: 1, scope: !428, file: !2, line: 379, type: !182)
!432 = !DILocation(line: 379, column: 46, scope: !428)
!433 = !DILocalVariable(name: "size", arg: 2, scope: !428, file: !2, line: 379, type: !93)
!434 = !DILocation(line: 379, column: 60, scope: !428)
!435 = !DILocalVariable(name: "data", scope: !428, file: !2, line: 380, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!437 = !DILocation(line: 380, column: 30, scope: !428)
!438 = !DILocation(line: 380, column: 61, scope: !428)
!439 = !DILocalVariable(name: "u", scope: !428, file: !2, line: 413, type: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !2, line: 410, size: 128, elements: !441)
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !440, file: !2, line: 411, baseType: !443, size: 128)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !379)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hashes", scope: !440, file: !2, line: 412, baseType: !118, size: 64)
!445 = !DILocation(line: 413, column: 5, scope: !428)
!446 = !DILocation(line: 414, column: 23, scope: !428)
!447 = !DILocation(line: 414, column: 41, scope: !428)
!448 = !DILocation(line: 414, column: 29, scope: !428)
!449 = !DILocation(line: 414, column: 3, scope: !428)
!450 = !DILocation(line: 418, column: 18, scope: !428)
!451 = !DILocation(line: 418, column: 3, scope: !428)
!452 = !DILocation(line: 418, column: 15, scope: !428)
!453 = !DILocation(line: 419, column: 18, scope: !428)
!454 = !DILocation(line: 419, column: 3, scope: !428)
!455 = !DILocation(line: 419, column: 15, scope: !428)
!456 = !DILocation(line: 423, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !428, file: !2, line: 423, column: 7)
!458 = !DILocation(line: 423, column: 34, scope: !457)
!459 = !DILocation(line: 423, column: 22, scope: !457)
!460 = !DILocation(line: 423, column: 7, scope: !428)
!461 = !DILocation(line: 424, column: 32, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !2, line: 423, column: 41)
!463 = !DILocation(line: 424, column: 22, scope: !462)
!464 = !DILocation(line: 424, column: 14, scope: !462)
!465 = !DILocation(line: 424, column: 20, scope: !462)
!466 = !DILocation(line: 425, column: 3, scope: !462)
!467 = !DILocation(line: 427, column: 12, scope: !428)
!468 = !DILocation(line: 427, column: 3, scope: !428)
!469 = distinct !DISubprogram(name: "MurmurHash3_x86_128", scope: !470, file: !470, line: 44, type: !471, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!470 = !DIFile(filename: "./src/murmurhash3.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "3f00a3411539996f33ed0b87f040037b")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !182, !473, !123, !92}
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!474 = !DILocalVariable(name: "key", arg: 1, scope: !469, file: !470, line: 44, type: !182)
!475 = !DILocation(line: 44, column: 48, scope: !469)
!476 = !DILocalVariable(name: "len", arg: 2, scope: !469, file: !470, line: 44, type: !473)
!477 = !DILocation(line: 44, column: 63, scope: !469)
!478 = !DILocalVariable(name: "seed", arg: 3, scope: !469, file: !470, line: 45, type: !123)
!479 = !DILocation(line: 45, column: 44, scope: !469)
!480 = !DILocalVariable(name: "out", arg: 4, scope: !469, file: !470, line: 45, type: !92)
!481 = !DILocation(line: 45, column: 57, scope: !469)
!482 = !DILocalVariable(name: "data", scope: !469, file: !470, line: 46, type: !242)
!483 = !DILocation(line: 46, column: 19, scope: !469)
!484 = !DILocation(line: 46, column: 42, scope: !469)
!485 = !DILocalVariable(name: "nblocks", scope: !469, file: !470, line: 47, type: !473)
!486 = !DILocation(line: 47, column: 13, scope: !469)
!487 = !DILocation(line: 47, column: 23, scope: !469)
!488 = !DILocation(line: 47, column: 27, scope: !469)
!489 = !DILocalVariable(name: "h1", scope: !469, file: !470, line: 49, type: !123)
!490 = !DILocation(line: 49, column: 12, scope: !469)
!491 = !DILocation(line: 49, column: 17, scope: !469)
!492 = !DILocalVariable(name: "h2", scope: !469, file: !470, line: 50, type: !123)
!493 = !DILocation(line: 50, column: 12, scope: !469)
!494 = !DILocation(line: 50, column: 17, scope: !469)
!495 = !DILocalVariable(name: "h3", scope: !469, file: !470, line: 51, type: !123)
!496 = !DILocation(line: 51, column: 12, scope: !469)
!497 = !DILocation(line: 51, column: 17, scope: !469)
!498 = !DILocalVariable(name: "h4", scope: !469, file: !470, line: 52, type: !123)
!499 = !DILocation(line: 52, column: 12, scope: !469)
!500 = !DILocation(line: 52, column: 17, scope: !469)
!501 = !DILocalVariable(name: "c1", scope: !469, file: !470, line: 54, type: !247)
!502 = !DILocation(line: 54, column: 18, scope: !469)
!503 = !DILocalVariable(name: "c2", scope: !469, file: !470, line: 55, type: !247)
!504 = !DILocation(line: 55, column: 18, scope: !469)
!505 = !DILocalVariable(name: "c3", scope: !469, file: !470, line: 56, type: !247)
!506 = !DILocation(line: 56, column: 18, scope: !469)
!507 = !DILocalVariable(name: "c4", scope: !469, file: !470, line: 57, type: !247)
!508 = !DILocation(line: 57, column: 18, scope: !469)
!509 = !DILocalVariable(name: "blocks", scope: !469, file: !470, line: 59, type: !246)
!510 = !DILocation(line: 59, column: 20, scope: !469)
!511 = !DILocation(line: 59, column: 48, scope: !469)
!512 = !DILocation(line: 59, column: 55, scope: !469)
!513 = !DILocation(line: 59, column: 62, scope: !469)
!514 = !DILocation(line: 59, column: 53, scope: !469)
!515 = !DILocalVariable(name: "i", scope: !469, file: !470, line: 60, type: !91)
!516 = !DILocation(line: 60, column: 7, scope: !469)
!517 = !DILocation(line: 62, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !469, file: !470, line: 62, column: 3)
!519 = !DILocation(line: 62, column: 11, scope: !518)
!520 = !DILocation(line: 62, column: 9, scope: !518)
!521 = !DILocation(line: 62, column: 7, scope: !518)
!522 = !DILocation(line: 62, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !470, line: 62, column: 3)
!524 = !DILocation(line: 62, column: 3, scope: !518)
!525 = !DILocalVariable(name: "k1", scope: !526, file: !470, line: 64, type: !123)
!526 = distinct !DILexicalBlock(scope: !523, file: !470, line: 63, column: 3)
!527 = !DILocation(line: 64, column: 14, scope: !526)
!528 = !DILocation(line: 64, column: 30, scope: !526)
!529 = !DILocation(line: 64, column: 37, scope: !526)
!530 = !DILocation(line: 64, column: 38, scope: !526)
!531 = !DILocation(line: 64, column: 40, scope: !526)
!532 = !DILocation(line: 64, column: 19, scope: !526)
!533 = !DILocalVariable(name: "k2", scope: !526, file: !470, line: 65, type: !123)
!534 = !DILocation(line: 65, column: 14, scope: !526)
!535 = !DILocation(line: 65, column: 30, scope: !526)
!536 = !DILocation(line: 65, column: 37, scope: !526)
!537 = !DILocation(line: 65, column: 38, scope: !526)
!538 = !DILocation(line: 65, column: 40, scope: !526)
!539 = !DILocation(line: 65, column: 19, scope: !526)
!540 = !DILocalVariable(name: "k3", scope: !526, file: !470, line: 66, type: !123)
!541 = !DILocation(line: 66, column: 14, scope: !526)
!542 = !DILocation(line: 66, column: 30, scope: !526)
!543 = !DILocation(line: 66, column: 37, scope: !526)
!544 = !DILocation(line: 66, column: 38, scope: !526)
!545 = !DILocation(line: 66, column: 40, scope: !526)
!546 = !DILocation(line: 66, column: 19, scope: !526)
!547 = !DILocalVariable(name: "k4", scope: !526, file: !470, line: 67, type: !123)
!548 = !DILocation(line: 67, column: 14, scope: !526)
!549 = !DILocation(line: 67, column: 30, scope: !526)
!550 = !DILocation(line: 67, column: 37, scope: !526)
!551 = !DILocation(line: 67, column: 38, scope: !526)
!552 = !DILocation(line: 67, column: 40, scope: !526)
!553 = !DILocation(line: 67, column: 19, scope: !526)
!554 = !DILocation(line: 69, column: 8, scope: !526)
!555 = !DILocation(line: 69, column: 21, scope: !526)
!556 = !DILocation(line: 69, column: 19, scope: !526)
!557 = !DILocation(line: 69, column: 39, scope: !526)
!558 = !DILocation(line: 69, column: 52, scope: !526)
!559 = !DILocation(line: 69, column: 49, scope: !526)
!560 = !DILocation(line: 71, column: 10, scope: !526)
!561 = !DILocation(line: 71, column: 8, scope: !526)
!562 = !DILocation(line: 71, column: 31, scope: !526)
!563 = !DILocation(line: 71, column: 28, scope: !526)
!564 = !DILocation(line: 71, column: 40, scope: !526)
!565 = !DILocation(line: 71, column: 42, scope: !526)
!566 = !DILocation(line: 71, column: 44, scope: !526)
!567 = !DILocation(line: 71, column: 38, scope: !526)
!568 = !DILocation(line: 73, column: 8, scope: !526)
!569 = !DILocation(line: 73, column: 21, scope: !526)
!570 = !DILocation(line: 73, column: 19, scope: !526)
!571 = !DILocation(line: 73, column: 39, scope: !526)
!572 = !DILocation(line: 73, column: 52, scope: !526)
!573 = !DILocation(line: 73, column: 49, scope: !526)
!574 = !DILocation(line: 75, column: 10, scope: !526)
!575 = !DILocation(line: 75, column: 8, scope: !526)
!576 = !DILocation(line: 75, column: 31, scope: !526)
!577 = !DILocation(line: 75, column: 28, scope: !526)
!578 = !DILocation(line: 75, column: 40, scope: !526)
!579 = !DILocation(line: 75, column: 42, scope: !526)
!580 = !DILocation(line: 75, column: 44, scope: !526)
!581 = !DILocation(line: 75, column: 38, scope: !526)
!582 = !DILocation(line: 77, column: 8, scope: !526)
!583 = !DILocation(line: 77, column: 21, scope: !526)
!584 = !DILocation(line: 77, column: 19, scope: !526)
!585 = !DILocation(line: 77, column: 39, scope: !526)
!586 = !DILocation(line: 77, column: 52, scope: !526)
!587 = !DILocation(line: 77, column: 49, scope: !526)
!588 = !DILocation(line: 79, column: 10, scope: !526)
!589 = !DILocation(line: 79, column: 8, scope: !526)
!590 = !DILocation(line: 79, column: 31, scope: !526)
!591 = !DILocation(line: 79, column: 28, scope: !526)
!592 = !DILocation(line: 79, column: 40, scope: !526)
!593 = !DILocation(line: 79, column: 42, scope: !526)
!594 = !DILocation(line: 79, column: 44, scope: !526)
!595 = !DILocation(line: 79, column: 38, scope: !526)
!596 = !DILocation(line: 81, column: 8, scope: !526)
!597 = !DILocation(line: 81, column: 21, scope: !526)
!598 = !DILocation(line: 81, column: 19, scope: !526)
!599 = !DILocation(line: 81, column: 39, scope: !526)
!600 = !DILocation(line: 81, column: 52, scope: !526)
!601 = !DILocation(line: 81, column: 49, scope: !526)
!602 = !DILocation(line: 83, column: 10, scope: !526)
!603 = !DILocation(line: 83, column: 8, scope: !526)
!604 = !DILocation(line: 83, column: 31, scope: !526)
!605 = !DILocation(line: 83, column: 28, scope: !526)
!606 = !DILocation(line: 83, column: 40, scope: !526)
!607 = !DILocation(line: 83, column: 42, scope: !526)
!608 = !DILocation(line: 83, column: 44, scope: !526)
!609 = !DILocation(line: 83, column: 38, scope: !526)
!610 = !DILocation(line: 84, column: 3, scope: !526)
!611 = !DILocation(line: 62, column: 25, scope: !523)
!612 = !DILocation(line: 62, column: 3, scope: !523)
!613 = distinct !{!613, !524, !614, !615}
!614 = !DILocation(line: 84, column: 3, scope: !518)
!615 = !{!"llvm.loop.mustprogress"}
!616 = !DILocalVariable(name: "tail", scope: !617, file: !470, line: 87, type: !242)
!617 = distinct !DILexicalBlock(scope: !469, file: !470, line: 86, column: 3)
!618 = !DILocation(line: 87, column: 19, scope: !617)
!619 = !DILocation(line: 87, column: 43, scope: !617)
!620 = !DILocation(line: 87, column: 50, scope: !617)
!621 = !DILocation(line: 87, column: 57, scope: !617)
!622 = !DILocation(line: 87, column: 48, scope: !617)
!623 = !DILocalVariable(name: "k1", scope: !617, file: !470, line: 89, type: !123)
!624 = !DILocation(line: 89, column: 12, scope: !617)
!625 = !DILocalVariable(name: "k2", scope: !617, file: !470, line: 90, type: !123)
!626 = !DILocation(line: 90, column: 12, scope: !617)
!627 = !DILocalVariable(name: "k3", scope: !617, file: !470, line: 91, type: !123)
!628 = !DILocation(line: 91, column: 12, scope: !617)
!629 = !DILocalVariable(name: "k4", scope: !617, file: !470, line: 92, type: !123)
!630 = !DILocation(line: 92, column: 12, scope: !617)
!631 = !DILocation(line: 94, column: 10, scope: !617)
!632 = !DILocation(line: 94, column: 14, scope: !617)
!633 = !DILocation(line: 94, column: 3, scope: !617)
!634 = !DILocation(line: 96, column: 18, scope: !635)
!635 = distinct !DILexicalBlock(scope: !617, file: !470, line: 95, column: 3)
!636 = !DILocation(line: 96, column: 27, scope: !635)
!637 = !DILocation(line: 96, column: 15, scope: !635)
!638 = !DILocation(line: 96, column: 12, scope: !635)
!639 = !DILocation(line: 97, column: 18, scope: !635)
!640 = !DILocation(line: 97, column: 27, scope: !635)
!641 = !DILocation(line: 97, column: 15, scope: !635)
!642 = !DILocation(line: 97, column: 12, scope: !635)
!643 = !DILocation(line: 98, column: 18, scope: !635)
!644 = !DILocation(line: 98, column: 27, scope: !635)
!645 = !DILocation(line: 98, column: 15, scope: !635)
!646 = !DILocation(line: 99, column: 15, scope: !635)
!647 = !DILocation(line: 99, column: 28, scope: !635)
!648 = !DILocation(line: 99, column: 26, scope: !635)
!649 = !DILocation(line: 99, column: 46, scope: !635)
!650 = !DILocation(line: 99, column: 59, scope: !635)
!651 = !DILocation(line: 99, column: 56, scope: !635)
!652 = !DILocation(line: 99, column: 53, scope: !635)
!653 = !DILocation(line: 101, column: 18, scope: !635)
!654 = !DILocation(line: 101, column: 27, scope: !635)
!655 = !DILocation(line: 101, column: 15, scope: !635)
!656 = !DILocation(line: 101, column: 12, scope: !635)
!657 = !DILocation(line: 102, column: 18, scope: !635)
!658 = !DILocation(line: 102, column: 27, scope: !635)
!659 = !DILocation(line: 102, column: 15, scope: !635)
!660 = !DILocation(line: 102, column: 12, scope: !635)
!661 = !DILocation(line: 103, column: 18, scope: !635)
!662 = !DILocation(line: 103, column: 27, scope: !635)
!663 = !DILocation(line: 103, column: 15, scope: !635)
!664 = !DILocation(line: 103, column: 12, scope: !635)
!665 = !DILocation(line: 104, column: 18, scope: !635)
!666 = !DILocation(line: 104, column: 27, scope: !635)
!667 = !DILocation(line: 104, column: 15, scope: !635)
!668 = !DILocation(line: 105, column: 15, scope: !635)
!669 = !DILocation(line: 105, column: 28, scope: !635)
!670 = !DILocation(line: 105, column: 26, scope: !635)
!671 = !DILocation(line: 105, column: 46, scope: !635)
!672 = !DILocation(line: 105, column: 59, scope: !635)
!673 = !DILocation(line: 105, column: 56, scope: !635)
!674 = !DILocation(line: 105, column: 53, scope: !635)
!675 = !DILocation(line: 107, column: 18, scope: !635)
!676 = !DILocation(line: 107, column: 27, scope: !635)
!677 = !DILocation(line: 107, column: 15, scope: !635)
!678 = !DILocation(line: 107, column: 12, scope: !635)
!679 = !DILocation(line: 108, column: 18, scope: !635)
!680 = !DILocation(line: 108, column: 27, scope: !635)
!681 = !DILocation(line: 108, column: 15, scope: !635)
!682 = !DILocation(line: 108, column: 12, scope: !635)
!683 = !DILocation(line: 109, column: 18, scope: !635)
!684 = !DILocation(line: 109, column: 27, scope: !635)
!685 = !DILocation(line: 109, column: 15, scope: !635)
!686 = !DILocation(line: 109, column: 12, scope: !635)
!687 = !DILocation(line: 110, column: 18, scope: !635)
!688 = !DILocation(line: 110, column: 27, scope: !635)
!689 = !DILocation(line: 110, column: 15, scope: !635)
!690 = !DILocation(line: 111, column: 15, scope: !635)
!691 = !DILocation(line: 111, column: 28, scope: !635)
!692 = !DILocation(line: 111, column: 26, scope: !635)
!693 = !DILocation(line: 111, column: 46, scope: !635)
!694 = !DILocation(line: 111, column: 59, scope: !635)
!695 = !DILocation(line: 111, column: 56, scope: !635)
!696 = !DILocation(line: 111, column: 53, scope: !635)
!697 = !DILocation(line: 113, column: 18, scope: !635)
!698 = !DILocation(line: 113, column: 27, scope: !635)
!699 = !DILocation(line: 113, column: 15, scope: !635)
!700 = !DILocation(line: 113, column: 12, scope: !635)
!701 = !DILocation(line: 114, column: 18, scope: !635)
!702 = !DILocation(line: 114, column: 27, scope: !635)
!703 = !DILocation(line: 114, column: 15, scope: !635)
!704 = !DILocation(line: 114, column: 12, scope: !635)
!705 = !DILocation(line: 115, column: 18, scope: !635)
!706 = !DILocation(line: 115, column: 27, scope: !635)
!707 = !DILocation(line: 115, column: 15, scope: !635)
!708 = !DILocation(line: 115, column: 12, scope: !635)
!709 = !DILocation(line: 116, column: 18, scope: !635)
!710 = !DILocation(line: 116, column: 27, scope: !635)
!711 = !DILocation(line: 116, column: 15, scope: !635)
!712 = !DILocation(line: 117, column: 15, scope: !635)
!713 = !DILocation(line: 117, column: 28, scope: !635)
!714 = !DILocation(line: 117, column: 26, scope: !635)
!715 = !DILocation(line: 117, column: 46, scope: !635)
!716 = !DILocation(line: 117, column: 59, scope: !635)
!717 = !DILocation(line: 117, column: 56, scope: !635)
!718 = !DILocation(line: 118, column: 3, scope: !635)
!719 = !DILocation(line: 121, column: 9, scope: !617)
!720 = !DILocation(line: 121, column: 6, scope: !617)
!721 = !DILocation(line: 121, column: 20, scope: !617)
!722 = !DILocation(line: 121, column: 17, scope: !617)
!723 = !DILocation(line: 121, column: 31, scope: !617)
!724 = !DILocation(line: 121, column: 28, scope: !617)
!725 = !DILocation(line: 121, column: 42, scope: !617)
!726 = !DILocation(line: 121, column: 39, scope: !617)
!727 = !DILocation(line: 123, column: 9, scope: !617)
!728 = !DILocation(line: 123, column: 6, scope: !617)
!729 = !DILocation(line: 123, column: 19, scope: !617)
!730 = !DILocation(line: 123, column: 16, scope: !617)
!731 = !DILocation(line: 123, column: 29, scope: !617)
!732 = !DILocation(line: 123, column: 26, scope: !617)
!733 = !DILocation(line: 124, column: 9, scope: !617)
!734 = !DILocation(line: 124, column: 6, scope: !617)
!735 = !DILocation(line: 124, column: 19, scope: !617)
!736 = !DILocation(line: 124, column: 16, scope: !617)
!737 = !DILocation(line: 124, column: 29, scope: !617)
!738 = !DILocation(line: 124, column: 26, scope: !617)
!739 = !DILocation(line: 126, column: 15, scope: !617)
!740 = !DILocation(line: 126, column: 8, scope: !617)
!741 = !DILocation(line: 126, column: 6, scope: !617)
!742 = !DILocation(line: 127, column: 15, scope: !617)
!743 = !DILocation(line: 127, column: 8, scope: !617)
!744 = !DILocation(line: 127, column: 6, scope: !617)
!745 = !DILocation(line: 128, column: 15, scope: !617)
!746 = !DILocation(line: 128, column: 8, scope: !617)
!747 = !DILocation(line: 128, column: 6, scope: !617)
!748 = !DILocation(line: 129, column: 15, scope: !617)
!749 = !DILocation(line: 129, column: 8, scope: !617)
!750 = !DILocation(line: 129, column: 6, scope: !617)
!751 = !DILocation(line: 131, column: 9, scope: !617)
!752 = !DILocation(line: 131, column: 6, scope: !617)
!753 = !DILocation(line: 131, column: 19, scope: !617)
!754 = !DILocation(line: 131, column: 16, scope: !617)
!755 = !DILocation(line: 131, column: 29, scope: !617)
!756 = !DILocation(line: 131, column: 26, scope: !617)
!757 = !DILocation(line: 132, column: 9, scope: !617)
!758 = !DILocation(line: 132, column: 6, scope: !617)
!759 = !DILocation(line: 132, column: 19, scope: !617)
!760 = !DILocation(line: 132, column: 16, scope: !617)
!761 = !DILocation(line: 132, column: 29, scope: !617)
!762 = !DILocation(line: 132, column: 26, scope: !617)
!763 = !DILocation(line: 134, column: 25, scope: !617)
!764 = !DILocation(line: 134, column: 15, scope: !617)
!765 = !DILocation(line: 134, column: 3, scope: !617)
!766 = !DILocation(line: 134, column: 23, scope: !617)
!767 = !DILocation(line: 135, column: 25, scope: !617)
!768 = !DILocation(line: 135, column: 15, scope: !617)
!769 = !DILocation(line: 135, column: 3, scope: !617)
!770 = !DILocation(line: 135, column: 23, scope: !617)
!771 = !DILocation(line: 136, column: 25, scope: !617)
!772 = !DILocation(line: 136, column: 15, scope: !617)
!773 = !DILocation(line: 136, column: 3, scope: !617)
!774 = !DILocation(line: 136, column: 23, scope: !617)
!775 = !DILocation(line: 137, column: 25, scope: !617)
!776 = !DILocation(line: 137, column: 15, scope: !617)
!777 = !DILocation(line: 137, column: 3, scope: !617)
!778 = !DILocation(line: 137, column: 23, scope: !617)
!779 = !DILocation(line: 139, column: 1, scope: !469)
!780 = distinct !DISubprogram(name: "coucal_hash_string", scope: !2, file: !2, line: 476, type: !781, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!781 = !DISubroutineType(types: !782)
!782 = !{!118, !209}
!783 = !DILocalVariable(name: "name", arg: 1, scope: !780, file: !2, line: 476, type: !209)
!784 = !DILocation(line: 476, column: 63, scope: !780)
!785 = !DILocation(line: 477, column: 27, scope: !780)
!786 = !DILocation(line: 477, column: 40, scope: !780)
!787 = !DILocation(line: 477, column: 33, scope: !780)
!788 = !DILocation(line: 477, column: 10, scope: !780)
!789 = !DILocation(line: 477, column: 3, scope: !780)
!790 = distinct !DISubprogram(name: "coucal_calc_hashes", scope: !2, file: !2, line: 480, type: !791, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!791 = !DISubroutineType(types: !792)
!792 = !{!118, !126, !181}
!793 = !DILocalVariable(name: "hashtable", arg: 1, scope: !790, file: !2, line: 480, type: !126)
!794 = !DILocation(line: 480, column: 58, scope: !790)
!795 = !DILocalVariable(name: "value", arg: 2, scope: !790, file: !2, line: 481, type: !181)
!796 = !DILocation(line: 481, column: 68, scope: !790)
!797 = !DILocation(line: 482, column: 10, scope: !790)
!798 = !DILocation(line: 482, column: 21, scope: !790)
!799 = !DILocation(line: 482, column: 28, scope: !790)
!800 = !DILocation(line: 482, column: 32, scope: !790)
!801 = !DILocation(line: 482, column: 37, scope: !790)
!802 = !DILocation(line: 483, column: 26, scope: !790)
!803 = !DILocation(line: 483, column: 7, scope: !790)
!804 = !DILocation(line: 484, column: 7, scope: !790)
!805 = !DILocation(line: 484, column: 18, scope: !790)
!806 = !DILocation(line: 484, column: 25, scope: !790)
!807 = !DILocation(line: 484, column: 29, scope: !790)
!808 = !DILocation(line: 484, column: 34, scope: !790)
!809 = !DILocation(line: 484, column: 45, scope: !790)
!810 = !DILocation(line: 484, column: 52, scope: !790)
!811 = !DILocation(line: 484, column: 56, scope: !790)
!812 = !DILocation(line: 484, column: 61, scope: !790)
!813 = !DILocation(line: 482, column: 3, scope: !790)
!814 = distinct !DISubprogram(name: "coucal_read_pvoid", scope: !2, file: !2, line: 751, type: !815, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!815 = !DISubroutineType(types: !816)
!816 = !{!91, !126, !181, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!818 = !DILocalVariable(name: "hashtable", arg: 1, scope: !814, file: !2, line: 751, type: !126)
!819 = !DILocation(line: 751, column: 30, scope: !814)
!820 = !DILocalVariable(name: "name", arg: 2, scope: !814, file: !2, line: 751, type: !181)
!821 = !DILocation(line: 751, column: 58, scope: !814)
!822 = !DILocalVariable(name: "pvalue", arg: 3, scope: !814, file: !2, line: 751, type: !817)
!823 = !DILocation(line: 751, column: 71, scope: !814)
!824 = !DILocalVariable(name: "value", scope: !814, file: !2, line: 752, type: !107)
!825 = !DILocation(line: 752, column: 16, scope: !814)
!826 = !DILocalVariable(name: "ret", scope: !814, file: !2, line: 753, type: !473)
!827 = !DILocation(line: 753, column: 13, scope: !814)
!828 = !DILocation(line: 754, column: 23, scope: !814)
!829 = !DILocation(line: 754, column: 34, scope: !814)
!830 = !DILocation(line: 754, column: 41, scope: !814)
!831 = !DILocation(line: 754, column: 48, scope: !814)
!832 = !DILocation(line: 754, column: 40, scope: !814)
!833 = !DILocation(line: 754, column: 5, scope: !814)
!834 = !DILocation(line: 755, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !814, file: !2, line: 755, column: 7)
!836 = !DILocation(line: 755, column: 14, scope: !835)
!837 = !DILocation(line: 755, column: 7, scope: !814)
!838 = !DILocation(line: 756, column: 21, scope: !835)
!839 = !DILocation(line: 756, column: 6, scope: !835)
!840 = !DILocation(line: 756, column: 13, scope: !835)
!841 = !DILocation(line: 756, column: 5, scope: !835)
!842 = !DILocation(line: 757, column: 10, scope: !814)
!843 = !DILocation(line: 757, column: 3, scope: !814)
!844 = distinct !DISubprogram(name: "coucal_read_value", scope: !2, file: !2, line: 1216, type: !845, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!845 = !DISubroutineType(types: !846)
!846 = !{!91, !126, !181, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!848 = !DILocalVariable(name: "hashtable", arg: 1, scope: !844, file: !2, line: 1216, type: !126)
!849 = !DILocation(line: 1216, column: 30, scope: !844)
!850 = !DILocalVariable(name: "name", arg: 2, scope: !844, file: !2, line: 1216, type: !181)
!851 = !DILocation(line: 1216, column: 58, scope: !844)
!852 = !DILocalVariable(name: "pvalue", arg: 3, scope: !844, file: !2, line: 1217, type: !847)
!853 = !DILocation(line: 1217, column: 38, scope: !844)
!854 = !DILocalVariable(name: "value", scope: !844, file: !2, line: 1218, type: !855)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!856 = !DILocation(line: 1218, column: 23, scope: !844)
!857 = !DILocation(line: 1218, column: 50, scope: !844)
!858 = !DILocation(line: 1218, column: 61, scope: !844)
!859 = !DILocation(line: 1218, column: 31, scope: !844)
!860 = !DILocation(line: 1219, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !844, file: !2, line: 1219, column: 7)
!862 = !DILocation(line: 1219, column: 13, scope: !861)
!863 = !DILocation(line: 1219, column: 7, scope: !844)
!864 = !DILocation(line: 1220, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 1220, column: 9)
!866 = distinct !DILexicalBlock(scope: !861, file: !2, line: 1219, column: 22)
!867 = !DILocation(line: 1220, column: 16, scope: !865)
!868 = !DILocation(line: 1220, column: 9, scope: !866)
!869 = !DILocation(line: 1221, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !2, line: 1220, column: 25)
!871 = !DILocation(line: 1221, column: 18, scope: !870)
!872 = !DILocation(line: 1221, column: 17, scope: !870)
!873 = !DILocation(line: 1222, column: 5, scope: !870)
!874 = !DILocation(line: 1223, column: 5, scope: !866)
!875 = !DILocation(line: 1225, column: 3, scope: !844)
!876 = !DILocation(line: 1226, column: 1, scope: !844)
!877 = distinct !DISubprogram(name: "coucal_get_pvoid", scope: !2, file: !2, line: 760, type: !878, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!878 = !DISubroutineType(types: !879)
!879 = !{!92, !126, !181}
!880 = !DILocalVariable(name: "hashtable", arg: 1, scope: !877, file: !2, line: 760, type: !126)
!881 = !DILocation(line: 760, column: 31, scope: !877)
!882 = !DILocalVariable(name: "name", arg: 2, scope: !877, file: !2, line: 760, type: !181)
!883 = !DILocation(line: 760, column: 59, scope: !877)
!884 = !DILocalVariable(name: "value", scope: !877, file: !2, line: 761, type: !92)
!885 = !DILocation(line: 761, column: 9, scope: !877)
!886 = !DILocation(line: 762, column: 26, scope: !887)
!887 = distinct !DILexicalBlock(scope: !877, file: !2, line: 762, column: 7)
!888 = !DILocation(line: 762, column: 37, scope: !887)
!889 = !DILocation(line: 762, column: 8, scope: !887)
!890 = !DILocation(line: 762, column: 7, scope: !877)
!891 = !DILocation(line: 763, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !2, line: 762, column: 52)
!893 = !DILocation(line: 765, column: 10, scope: !877)
!894 = !DILocation(line: 765, column: 3, scope: !877)
!895 = !DILocation(line: 766, column: 1, scope: !877)
!896 = distinct !DISubprogram(name: "coucal_write_pvoid", scope: !2, file: !2, line: 768, type: !897, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!897 = !DISubroutineType(types: !898)
!898 = !{!91, !126, !181, !92}
!899 = !DILocalVariable(name: "hashtable", arg: 1, scope: !896, file: !2, line: 768, type: !126)
!900 = !DILocation(line: 768, column: 31, scope: !896)
!901 = !DILocalVariable(name: "name", arg: 2, scope: !896, file: !2, line: 768, type: !181)
!902 = !DILocation(line: 768, column: 59, scope: !896)
!903 = !DILocalVariable(name: "pvalue", arg: 3, scope: !896, file: !2, line: 768, type: !92)
!904 = !DILocation(line: 768, column: 71, scope: !896)
!905 = !DILocalVariable(name: "value", scope: !896, file: !2, line: 769, type: !107)
!906 = !DILocation(line: 769, column: 16, scope: !896)
!907 = !DILocation(line: 771, column: 15, scope: !896)
!908 = !DILocation(line: 771, column: 13, scope: !896)
!909 = !DILocation(line: 772, column: 29, scope: !896)
!910 = !DILocation(line: 772, column: 40, scope: !896)
!911 = !DILocation(line: 772, column: 10, scope: !896)
!912 = !DILocation(line: 772, column: 3, scope: !896)
!913 = distinct !DISubprogram(name: "coucal_write_value", scope: !2, file: !2, line: 1033, type: !914, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!914 = !DISubroutineType(types: !915)
!915 = !{!91, !126, !181, !239}
!916 = !DILocalVariable(name: "hashtable", arg: 1, scope: !913, file: !2, line: 1033, type: !126)
!917 = !DILocation(line: 1033, column: 31, scope: !913)
!918 = !DILocalVariable(name: "name", arg: 2, scope: !913, file: !2, line: 1033, type: !181)
!919 = !DILocation(line: 1033, column: 59, scope: !913)
!920 = !DILocalVariable(name: "value", arg: 3, scope: !913, file: !2, line: 1034, type: !239)
!921 = !DILocation(line: 1034, column: 43, scope: !913)
!922 = !DILocalVariable(name: "ret", scope: !913, file: !2, line: 1036, type: !473)
!923 = !DILocation(line: 1036, column: 13, scope: !913)
!924 = !DILocation(line: 1036, column: 39, scope: !913)
!925 = !DILocation(line: 1036, column: 50, scope: !913)
!926 = !DILocation(line: 1036, column: 19, scope: !913)
!927 = !DILocation(line: 1039, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !913, file: !2, line: 1039, column: 7)
!929 = !DILocation(line: 1039, column: 7, scope: !913)
!930 = !DILocalVariable(name: "half_size", scope: !931, file: !2, line: 1041, type: !932)
!931 = distinct !DILexicalBlock(scope: !928, file: !2, line: 1039, column: 12)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!933 = !DILocation(line: 1041, column: 18, scope: !931)
!934 = !DILocation(line: 1041, column: 30, scope: !931)
!935 = !DILocalVariable(name: "half_stash_size", scope: !931, file: !2, line: 1044, type: !932)
!936 = !DILocation(line: 1044, column: 18, scope: !931)
!937 = !DILocation(line: 1047, column: 5, scope: !931)
!938 = !DILocation(line: 1047, column: 16, scope: !931)
!939 = !DILocation(line: 1047, column: 20, scope: !931)
!940 = !DILocation(line: 1050, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !931, file: !2, line: 1050, column: 9)
!942 = !DILocation(line: 1050, column: 20, scope: !941)
!943 = !DILocation(line: 1050, column: 28, scope: !941)
!944 = !DILocation(line: 1050, column: 25, scope: !941)
!945 = !DILocation(line: 1051, column: 7, scope: !941)
!946 = !DILocation(line: 1051, column: 10, scope: !941)
!947 = !DILocation(line: 1051, column: 21, scope: !941)
!948 = !DILocation(line: 1051, column: 27, scope: !941)
!949 = !DILocation(line: 1051, column: 32, scope: !941)
!950 = !DILocation(line: 1050, column: 9, scope: !931)
!951 = !DILocalVariable(name: "i", scope: !952, file: !2, line: 1052, type: !93)
!952 = distinct !DILexicalBlock(scope: !941, file: !2, line: 1051, column: 52)
!953 = !DILocation(line: 1052, column: 14, scope: !952)
!954 = !DILocalVariable(name: "prev_power", scope: !952, file: !2, line: 1055, type: !932)
!955 = !DILocation(line: 1055, column: 20, scope: !952)
!956 = !DILocation(line: 1055, column: 33, scope: !952)
!957 = !DILocation(line: 1055, column: 44, scope: !952)
!958 = !DILocalVariable(name: "prev_size", scope: !952, file: !2, line: 1056, type: !932)
!959 = !DILocation(line: 1056, column: 20, scope: !952)
!960 = !DILocation(line: 1056, column: 32, scope: !952)
!961 = !DILocation(line: 1056, column: 42, scope: !952)
!962 = !DILocalVariable(name: "prev_alloc_size", scope: !952, file: !2, line: 1057, type: !932)
!963 = !DILocation(line: 1057, column: 20, scope: !952)
!964 = !DILocation(line: 1057, column: 38, scope: !952)
!965 = !DILocation(line: 1057, column: 47, scope: !952)
!966 = !DILocalVariable(name: "alloc_size", scope: !952, file: !2, line: 1060, type: !932)
!967 = !DILocation(line: 1060, column: 20, scope: !952)
!968 = !DILocation(line: 1060, column: 33, scope: !952)
!969 = !DILocation(line: 1060, column: 49, scope: !952)
!970 = !DILocation(line: 1063, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !952, file: !2, line: 1063, column: 11)
!972 = !DILocation(line: 1063, column: 22, scope: !971)
!973 = !DILocation(line: 1063, column: 28, scope: !971)
!974 = !DILocation(line: 1063, column: 33, scope: !971)
!975 = !DILocation(line: 1064, column: 9, scope: !971)
!976 = !DILocation(line: 1064, column: 12, scope: !971)
!977 = !DILocation(line: 1064, column: 22, scope: !971)
!978 = !DILocation(line: 1065, column: 9, scope: !971)
!979 = !DILocation(line: 1065, column: 12, scope: !971)
!980 = !DILocation(line: 1065, column: 23, scope: !971)
!981 = !DILocation(line: 1065, column: 30, scope: !971)
!982 = !DILocation(line: 1065, column: 40, scope: !971)
!983 = !DILocation(line: 1065, column: 28, scope: !971)
!984 = !DILocation(line: 1063, column: 11, scope: !952)
!985 = !DILocation(line: 1066, column: 26, scope: !986)
!986 = distinct !DILexicalBlock(scope: !971, file: !2, line: 1065, column: 45)
!987 = !DILocation(line: 1069, column: 24, scope: !986)
!988 = !DILocation(line: 1069, column: 35, scope: !986)
!989 = !DILocation(line: 1069, column: 52, scope: !986)
!990 = !DILocation(line: 1069, column: 61, scope: !986)
!991 = !DILocation(line: 1066, column: 11, scope: !986)
!992 = !DILocation(line: 1070, column: 7, scope: !986)
!993 = !DILocation(line: 1073, column: 7, scope: !952)
!994 = !DILocation(line: 1073, column: 18, scope: !952)
!995 = !DILocation(line: 1073, column: 24, scope: !952)
!996 = !DILocation(line: 1073, column: 36, scope: !952)
!997 = !DILocation(line: 1076, column: 7, scope: !952)
!998 = !DILocation(line: 1076, column: 18, scope: !952)
!999 = !DILocation(line: 1076, column: 25, scope: !952)
!1000 = !DILocation(line: 1077, column: 7, scope: !952)
!1001 = !DILocation(line: 1079, column: 33, scope: !952)
!1002 = !DILocation(line: 1079, column: 44, scope: !952)
!1003 = !DILocation(line: 1079, column: 51, scope: !952)
!1004 = !DILocation(line: 1079, column: 25, scope: !952)
!1005 = !DILocation(line: 1078, column: 7, scope: !952)
!1006 = !DILocation(line: 1078, column: 18, scope: !952)
!1007 = !DILocation(line: 1078, column: 24, scope: !952)
!1008 = !DILocation(line: 1080, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !952, file: !2, line: 1080, column: 11)
!1010 = !DILocation(line: 1080, column: 22, scope: !1009)
!1011 = !DILocation(line: 1080, column: 28, scope: !1009)
!1012 = !DILocation(line: 1080, column: 11, scope: !952)
!1013 = !DILocation(line: 1081, column: 21, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1080, column: 37)
!1015 = !DILocation(line: 1084, column: 22, scope: !1014)
!1016 = !DILocation(line: 1081, column: 9, scope: !1014)
!1017 = !DILocation(line: 1085, column: 9, scope: !1014)
!1018 = !DILocation(line: 1086, column: 7, scope: !1014)
!1019 = !DILocation(line: 1089, column: 15, scope: !952)
!1020 = !DILocation(line: 1089, column: 26, scope: !952)
!1021 = !DILocation(line: 1089, column: 32, scope: !952)
!1022 = !DILocation(line: 1089, column: 47, scope: !952)
!1023 = !DILocation(line: 1089, column: 7, scope: !952)
!1024 = !DILocation(line: 1092, column: 13, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !952, file: !2, line: 1092, column: 7)
!1026 = !DILocation(line: 1092, column: 11, scope: !1025)
!1027 = !DILocation(line: 1092, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 1092, column: 7)
!1029 = !DILocation(line: 1092, column: 23, scope: !1028)
!1030 = !DILocation(line: 1092, column: 21, scope: !1028)
!1031 = !DILocation(line: 1092, column: 7, scope: !1025)
!1032 = !DILocation(line: 1093, column: 29, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 1093, column: 13)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 1092, column: 40)
!1035 = !DILocation(line: 1093, column: 40, scope: !1033)
!1036 = !DILocation(line: 1093, column: 14, scope: !1033)
!1037 = !DILocation(line: 1093, column: 13, scope: !1034)
!1038 = !DILocalVariable(name: "hashes", scope: !1039, file: !2, line: 1094, type: !1040)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 1093, column: 44)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1043 = !DILocation(line: 1094, column: 40, scope: !1039)
!1044 = !DILocation(line: 1094, column: 50, scope: !1039)
!1045 = !DILocation(line: 1094, column: 61, scope: !1039)
!1046 = !DILocation(line: 1094, column: 67, scope: !1039)
!1047 = !DILocation(line: 1094, column: 70, scope: !1039)
!1048 = !DILocation(line: 1097, column: 35, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 1097, column: 15)
!1050 = !DILocation(line: 1097, column: 47, scope: !1049)
!1051 = !DILocation(line: 1097, column: 55, scope: !1049)
!1052 = !DILocation(line: 1097, column: 15, scope: !1049)
!1053 = !DILocation(line: 1097, column: 65, scope: !1049)
!1054 = !DILocation(line: 1097, column: 62, scope: !1049)
!1055 = !DILocation(line: 1097, column: 15, scope: !1039)
!1056 = !DILocalVariable(name: "pos", scope: !1057, file: !2, line: 1098, type: !932)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1097, column: 68)
!1058 = !DILocation(line: 1098, column: 26, scope: !1057)
!1059 = !DILocation(line: 1098, column: 51, scope: !1057)
!1060 = !DILocation(line: 1098, column: 62, scope: !1057)
!1061 = !DILocation(line: 1098, column: 70, scope: !1057)
!1062 = !DILocation(line: 1098, column: 32, scope: !1057)
!1063 = !DILocation(line: 1100, column: 17, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 1100, column: 17)
!1065 = !DILocation(line: 1100, column: 24, scope: !1064)
!1066 = !DILocation(line: 1100, column: 21, scope: !1064)
!1067 = !DILocation(line: 1100, column: 17, scope: !1057)
!1068 = !DILocation(line: 1101, column: 15, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 1100, column: 27)
!1070 = !DILocation(line: 1102, column: 15, scope: !1069)
!1071 = !DILocation(line: 1102, column: 26, scope: !1069)
!1072 = !DILocation(line: 1102, column: 32, scope: !1069)
!1073 = !DILocation(line: 1102, column: 39, scope: !1069)
!1074 = !DILocation(line: 1102, column: 50, scope: !1069)
!1075 = !DILocation(line: 1102, column: 56, scope: !1069)
!1076 = !DILocation(line: 1103, column: 23, scope: !1069)
!1077 = !DILocation(line: 1103, column: 34, scope: !1069)
!1078 = !DILocation(line: 1103, column: 40, scope: !1069)
!1079 = !DILocation(line: 1103, column: 15, scope: !1069)
!1080 = !DILocation(line: 1104, column: 13, scope: !1069)
!1081 = !DILocation(line: 1105, column: 11, scope: !1057)
!1082 = !DILocation(line: 1106, column: 40, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1106, column: 20)
!1084 = !DILocation(line: 1106, column: 52, scope: !1083)
!1085 = !DILocation(line: 1106, column: 60, scope: !1083)
!1086 = !DILocation(line: 1106, column: 20, scope: !1083)
!1087 = !DILocation(line: 1106, column: 70, scope: !1083)
!1088 = !DILocation(line: 1106, column: 67, scope: !1083)
!1089 = !DILocation(line: 1106, column: 20, scope: !1049)
!1090 = !DILocalVariable(name: "pos", scope: !1091, file: !2, line: 1107, type: !932)
!1091 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1106, column: 73)
!1092 = !DILocation(line: 1107, column: 26, scope: !1091)
!1093 = !DILocation(line: 1107, column: 51, scope: !1091)
!1094 = !DILocation(line: 1107, column: 62, scope: !1091)
!1095 = !DILocation(line: 1107, column: 70, scope: !1091)
!1096 = !DILocation(line: 1107, column: 32, scope: !1091)
!1097 = !DILocation(line: 1109, column: 17, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 1109, column: 17)
!1099 = !DILocation(line: 1109, column: 24, scope: !1098)
!1100 = !DILocation(line: 1109, column: 21, scope: !1098)
!1101 = !DILocation(line: 1109, column: 17, scope: !1091)
!1102 = !DILocation(line: 1110, column: 15, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 1109, column: 27)
!1104 = !DILocation(line: 1111, column: 15, scope: !1103)
!1105 = !DILocation(line: 1111, column: 26, scope: !1103)
!1106 = !DILocation(line: 1111, column: 32, scope: !1103)
!1107 = !DILocation(line: 1111, column: 39, scope: !1103)
!1108 = !DILocation(line: 1111, column: 50, scope: !1103)
!1109 = !DILocation(line: 1111, column: 56, scope: !1103)
!1110 = !DILocation(line: 1112, column: 23, scope: !1103)
!1111 = !DILocation(line: 1112, column: 34, scope: !1103)
!1112 = !DILocation(line: 1112, column: 40, scope: !1103)
!1113 = !DILocation(line: 1112, column: 15, scope: !1103)
!1114 = !DILocation(line: 1113, column: 13, scope: !1103)
!1115 = !DILocation(line: 1114, column: 11, scope: !1091)
!1116 = !DILocation(line: 1116, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1115, column: 16)
!1118 = !DILocation(line: 1118, column: 9, scope: !1039)
!1119 = !DILocation(line: 1119, column: 7, scope: !1034)
!1120 = !DILocation(line: 1092, column: 36, scope: !1028)
!1121 = !DILocation(line: 1092, column: 7, scope: !1028)
!1122 = distinct !{!1122, !1031, !1123, !615}
!1123 = !DILocation(line: 1119, column: 7, scope: !1025)
!1124 = !DILocation(line: 1121, column: 20, scope: !952)
!1125 = !DILocation(line: 1123, column: 32, scope: !952)
!1126 = !DILocation(line: 1121, column: 7, scope: !952)
!1127 = !DILocation(line: 1126, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !952, file: !2, line: 1126, column: 11)
!1129 = !DILocation(line: 1126, column: 22, scope: !1128)
!1130 = !DILocation(line: 1126, column: 28, scope: !1128)
!1131 = !DILocation(line: 1126, column: 33, scope: !1128)
!1132 = !DILocation(line: 1126, column: 11, scope: !952)
!1133 = !DILocalVariable(name: "old_size", scope: !1134, file: !2, line: 1127, type: !932)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 1126, column: 39)
!1135 = !DILocation(line: 1127, column: 22, scope: !1134)
!1136 = !DILocation(line: 1127, column: 33, scope: !1134)
!1137 = !DILocation(line: 1127, column: 44, scope: !1134)
!1138 = !DILocation(line: 1127, column: 50, scope: !1134)
!1139 = !DILocalVariable(name: "i", scope: !1134, file: !2, line: 1128, type: !93)
!1140 = !DILocation(line: 1128, column: 16, scope: !1134)
!1141 = !DILocalVariable(name: "stash", scope: !1134, file: !2, line: 1131, type: !137)
!1142 = !DILocation(line: 1131, column: 21, scope: !1134)
!1143 = !DILocation(line: 1132, column: 24, scope: !1134)
!1144 = !DILocation(line: 1132, column: 35, scope: !1134)
!1145 = !DILocation(line: 1132, column: 41, scope: !1134)
!1146 = !DILocation(line: 1132, column: 9, scope: !1134)
!1147 = !DILocation(line: 1133, column: 9, scope: !1134)
!1148 = !DILocation(line: 1133, column: 20, scope: !1134)
!1149 = !DILocation(line: 1133, column: 26, scope: !1134)
!1150 = !DILocation(line: 1133, column: 31, scope: !1134)
!1151 = !DILocation(line: 1136, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1136, column: 9)
!1153 = !DILocation(line: 1136, column: 13, scope: !1152)
!1154 = !DILocation(line: 1136, column: 21, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 1136, column: 9)
!1156 = !DILocation(line: 1136, column: 25, scope: !1155)
!1157 = !DILocation(line: 1136, column: 23, scope: !1155)
!1158 = !DILocation(line: 1136, column: 9, scope: !1152)
!1159 = !DILocalVariable(name: "ret", scope: !1160, file: !2, line: 1137, type: !473)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 1136, column: 41)
!1161 = !DILocation(line: 1137, column: 21, scope: !1160)
!1162 = !DILocation(line: 1137, column: 44, scope: !1160)
!1163 = !DILocation(line: 1137, column: 61, scope: !1160)
!1164 = !DILocation(line: 1137, column: 55, scope: !1160)
!1165 = !DILocation(line: 1137, column: 27, scope: !1160)
!1166 = !DILocation(line: 1138, column: 15, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 1138, column: 15)
!1168 = !DILocation(line: 1138, column: 19, scope: !1167)
!1169 = !DILocation(line: 1138, column: 15, scope: !1160)
!1170 = !DILocation(line: 1139, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 1138, column: 25)
!1172 = !DILocation(line: 1140, column: 11, scope: !1171)
!1173 = !DILocation(line: 1141, column: 9, scope: !1160)
!1174 = !DILocation(line: 1136, column: 37, scope: !1155)
!1175 = !DILocation(line: 1136, column: 9, scope: !1155)
!1176 = distinct !{!1176, !1158, !1177, !615}
!1177 = !DILocation(line: 1141, column: 9, scope: !1152)
!1178 = !DILocation(line: 1144, column: 9, scope: !1134)
!1179 = !DILocation(line: 1145, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1145, column: 13)
!1181 = !DILocation(line: 1145, column: 24, scope: !1180)
!1182 = !DILocation(line: 1145, column: 30, scope: !1180)
!1183 = !DILocation(line: 1145, column: 37, scope: !1180)
!1184 = !DILocation(line: 1145, column: 35, scope: !1180)
!1185 = !DILocation(line: 1145, column: 13, scope: !1134)
!1186 = !DILocation(line: 1146, column: 24, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 1145, column: 47)
!1188 = !DILocation(line: 1148, column: 36, scope: !1187)
!1189 = !DILocation(line: 1148, column: 57, scope: !1187)
!1190 = !DILocation(line: 1148, column: 68, scope: !1187)
!1191 = !DILocation(line: 1148, column: 74, scope: !1187)
!1192 = !DILocation(line: 1146, column: 11, scope: !1187)
!1193 = !DILocation(line: 1149, column: 9, scope: !1187)
!1194 = !DILocation(line: 1150, column: 24, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 1149, column: 16)
!1196 = !DILocation(line: 1151, column: 36, scope: !1195)
!1197 = !DILocation(line: 1151, column: 47, scope: !1195)
!1198 = !DILocation(line: 1151, column: 53, scope: !1195)
!1199 = !DILocation(line: 1150, column: 11, scope: !1195)
!1200 = !DILocation(line: 1153, column: 7, scope: !1134)
!1201 = !DILocation(line: 1155, column: 5, scope: !952)
!1202 = !DILocation(line: 1156, column: 3, scope: !931)
!1203 = !DILocation(line: 1158, column: 10, scope: !913)
!1204 = !DILocation(line: 1158, column: 3, scope: !913)
!1205 = distinct !DISubprogram(name: "coucal_add_pvoid", scope: !2, file: !2, line: 775, type: !1206, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !126, !181, !92}
!1208 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1205, file: !2, line: 775, type: !126)
!1209 = !DILocation(line: 775, column: 30, scope: !1205)
!1210 = !DILocalVariable(name: "name", arg: 2, scope: !1205, file: !2, line: 775, type: !181)
!1211 = !DILocation(line: 775, column: 58, scope: !1205)
!1212 = !DILocalVariable(name: "pvalue", arg: 3, scope: !1205, file: !2, line: 775, type: !92)
!1213 = !DILocation(line: 775, column: 70, scope: !1205)
!1214 = !DILocalVariable(name: "value", scope: !1205, file: !2, line: 776, type: !107)
!1215 = !DILocation(line: 776, column: 16, scope: !1205)
!1216 = !DILocation(line: 778, column: 15, scope: !1205)
!1217 = !DILocation(line: 778, column: 13, scope: !1205)
!1218 = !DILocation(line: 779, column: 22, scope: !1205)
!1219 = !DILocation(line: 779, column: 33, scope: !1205)
!1220 = !DILocation(line: 779, column: 3, scope: !1205)
!1221 = !DILocation(line: 780, column: 1, scope: !1205)
!1222 = distinct !DISubprogram(name: "coucal_write", scope: !2, file: !2, line: 782, type: !1223, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!91, !126, !181, !111}
!1225 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1222, file: !2, line: 782, type: !126)
!1226 = !DILocation(line: 782, column: 25, scope: !1222)
!1227 = !DILocalVariable(name: "name", arg: 2, scope: !1222, file: !2, line: 782, type: !181)
!1228 = !DILocation(line: 782, column: 53, scope: !1222)
!1229 = !DILocalVariable(name: "intvalue", arg: 3, scope: !1222, file: !2, line: 782, type: !111)
!1230 = !DILocation(line: 782, column: 68, scope: !1222)
!1231 = !DILocalVariable(name: "value", scope: !1222, file: !2, line: 783, type: !107)
!1232 = !DILocation(line: 783, column: 16, scope: !1222)
!1233 = !DILocation(line: 785, column: 16, scope: !1222)
!1234 = !DILocation(line: 785, column: 14, scope: !1222)
!1235 = !DILocation(line: 786, column: 29, scope: !1222)
!1236 = !DILocation(line: 786, column: 40, scope: !1222)
!1237 = !DILocation(line: 786, column: 10, scope: !1222)
!1238 = !DILocation(line: 786, column: 3, scope: !1222)
!1239 = distinct !DISubprogram(name: "coucal_write_value_", scope: !2, file: !2, line: 825, type: !1240, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!91, !126, !181, !107}
!1242 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1239, file: !2, line: 825, type: !126)
!1243 = !DILocation(line: 825, column: 39, scope: !1239)
!1244 = !DILocalVariable(name: "name", arg: 2, scope: !1239, file: !2, line: 825, type: !181)
!1245 = !DILocation(line: 825, column: 67, scope: !1239)
!1246 = !DILocalVariable(name: "value", arg: 3, scope: !1239, file: !2, line: 826, type: !107)
!1247 = !DILocation(line: 826, column: 45, scope: !1239)
!1248 = !DILocalVariable(name: "item", scope: !1239, file: !2, line: 827, type: !101)
!1249 = !DILocation(line: 827, column: 15, scope: !1239)
!1250 = !DILocalVariable(name: "pos", scope: !1239, file: !2, line: 828, type: !93)
!1251 = !DILocation(line: 828, column: 10, scope: !1239)
!1252 = !DILocalVariable(name: "hashes", scope: !1239, file: !2, line: 829, type: !1042)
!1253 = !DILocation(line: 829, column: 25, scope: !1239)
!1254 = !DILocation(line: 829, column: 53, scope: !1239)
!1255 = !DILocation(line: 829, column: 64, scope: !1239)
!1256 = !DILocation(line: 829, column: 34, scope: !1239)
!1257 = !DILocation(line: 832, column: 3, scope: !1239)
!1258 = !DILocation(line: 832, column: 14, scope: !1239)
!1259 = !DILocation(line: 832, column: 20, scope: !1239)
!1260 = !DILocation(line: 832, column: 31, scope: !1239)
!1261 = !DILocation(line: 835, column: 28, scope: !1239)
!1262 = !DILocation(line: 835, column: 46, scope: !1239)
!1263 = !DILocation(line: 835, column: 9, scope: !1239)
!1264 = !DILocation(line: 835, column: 7, scope: !1239)
!1265 = !DILocation(line: 836, column: 22, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 836, column: 7)
!1267 = !DILocation(line: 836, column: 33, scope: !1266)
!1268 = !DILocation(line: 836, column: 38, scope: !1266)
!1269 = !DILocation(line: 836, column: 7, scope: !1266)
!1270 = !DILocation(line: 836, column: 7, scope: !1239)
!1271 = !DILocation(line: 837, column: 22, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 836, column: 54)
!1273 = !DILocation(line: 837, column: 33, scope: !1272)
!1274 = !DILocation(line: 837, column: 5, scope: !1272)
!1275 = !DILocation(line: 838, column: 5, scope: !1272)
!1276 = !DILocation(line: 838, column: 16, scope: !1272)
!1277 = !DILocation(line: 838, column: 22, scope: !1272)
!1278 = !DILocation(line: 838, column: 27, scope: !1272)
!1279 = !DILocation(line: 838, column: 35, scope: !1272)
!1280 = !DILocation(line: 839, column: 5, scope: !1272)
!1281 = !DILocation(line: 843, column: 28, scope: !1239)
!1282 = !DILocation(line: 843, column: 46, scope: !1239)
!1283 = !DILocation(line: 843, column: 9, scope: !1239)
!1284 = !DILocation(line: 843, column: 7, scope: !1239)
!1285 = !DILocation(line: 844, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 844, column: 7)
!1287 = !DILocation(line: 844, column: 33, scope: !1286)
!1288 = !DILocation(line: 844, column: 38, scope: !1286)
!1289 = !DILocation(line: 844, column: 7, scope: !1286)
!1290 = !DILocation(line: 844, column: 7, scope: !1239)
!1291 = !DILocation(line: 845, column: 22, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 844, column: 54)
!1293 = !DILocation(line: 845, column: 33, scope: !1292)
!1294 = !DILocation(line: 845, column: 5, scope: !1292)
!1295 = !DILocation(line: 846, column: 5, scope: !1292)
!1296 = !DILocation(line: 846, column: 16, scope: !1292)
!1297 = !DILocation(line: 846, column: 22, scope: !1292)
!1298 = !DILocation(line: 846, column: 27, scope: !1292)
!1299 = !DILocation(line: 846, column: 35, scope: !1292)
!1300 = !DILocation(line: 847, column: 5, scope: !1292)
!1301 = !DILocation(line: 851, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 851, column: 7)
!1303 = !DILocation(line: 851, column: 18, scope: !1302)
!1304 = !DILocation(line: 851, column: 24, scope: !1302)
!1305 = !DILocation(line: 851, column: 29, scope: !1302)
!1306 = !DILocation(line: 851, column: 7, scope: !1239)
!1307 = !DILocalVariable(name: "i", scope: !1308, file: !2, line: 852, type: !93)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 851, column: 35)
!1309 = !DILocation(line: 852, column: 12, scope: !1308)
!1310 = !DILocation(line: 853, column: 11, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 853, column: 5)
!1312 = !DILocation(line: 853, column: 9, scope: !1311)
!1313 = !DILocation(line: 853, column: 17, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 853, column: 5)
!1315 = !DILocation(line: 853, column: 21, scope: !1314)
!1316 = !DILocation(line: 853, column: 32, scope: !1314)
!1317 = !DILocation(line: 853, column: 38, scope: !1314)
!1318 = !DILocation(line: 853, column: 19, scope: !1314)
!1319 = !DILocation(line: 853, column: 5, scope: !1311)
!1320 = !DILocation(line: 854, column: 27, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 854, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 853, column: 50)
!1323 = !DILocation(line: 854, column: 39, scope: !1321)
!1324 = !DILocation(line: 854, column: 50, scope: !1321)
!1325 = !DILocation(line: 854, column: 56, scope: !1321)
!1326 = !DILocation(line: 854, column: 62, scope: !1321)
!1327 = !DILocation(line: 854, column: 66, scope: !1321)
!1328 = !DILocation(line: 854, column: 11, scope: !1321)
!1329 = !DILocation(line: 854, column: 11, scope: !1322)
!1330 = !DILocation(line: 856, column: 27, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 855, column: 38)
!1332 = !DILocation(line: 856, column: 39, scope: !1331)
!1333 = !DILocation(line: 856, column: 50, scope: !1331)
!1334 = !DILocation(line: 856, column: 56, scope: !1331)
!1335 = !DILocation(line: 856, column: 62, scope: !1331)
!1336 = !DILocation(line: 856, column: 65, scope: !1331)
!1337 = !DILocation(line: 856, column: 9, scope: !1331)
!1338 = !DILocation(line: 857, column: 9, scope: !1331)
!1339 = !DILocation(line: 857, column: 20, scope: !1331)
!1340 = !DILocation(line: 857, column: 26, scope: !1331)
!1341 = !DILocation(line: 857, column: 32, scope: !1331)
!1342 = !DILocation(line: 857, column: 35, scope: !1331)
!1343 = !DILocation(line: 857, column: 43, scope: !1331)
!1344 = !DILocation(line: 858, column: 9, scope: !1331)
!1345 = !DILocation(line: 860, column: 5, scope: !1322)
!1346 = !DILocation(line: 853, column: 46, scope: !1314)
!1347 = !DILocation(line: 853, column: 5, scope: !1314)
!1348 = distinct !{!1348, !1319, !1349, !615}
!1349 = !DILocation(line: 860, column: 5, scope: !1311)
!1350 = !DILocation(line: 861, column: 3, scope: !1308)
!1351 = !DILocation(line: 864, column: 3, scope: !1239)
!1352 = !DILocation(line: 864, column: 14, scope: !1239)
!1353 = !DILocation(line: 864, column: 20, scope: !1239)
!1354 = !DILocation(line: 864, column: 29, scope: !1239)
!1355 = !DILocation(line: 867, column: 31, scope: !1239)
!1356 = !DILocation(line: 867, column: 42, scope: !1239)
!1357 = !DILocation(line: 867, column: 15, scope: !1239)
!1358 = !DILocation(line: 867, column: 8, scope: !1239)
!1359 = !DILocation(line: 867, column: 13, scope: !1239)
!1360 = !DILocation(line: 868, column: 8, scope: !1239)
!1361 = !DILocation(line: 868, column: 16, scope: !1239)
!1362 = !DILocation(line: 869, column: 8, scope: !1239)
!1363 = !DILocation(line: 869, column: 17, scope: !1239)
!1364 = !DILocation(line: 871, column: 27, scope: !1239)
!1365 = !DILocation(line: 871, column: 10, scope: !1239)
!1366 = !DILocation(line: 871, column: 3, scope: !1239)
!1367 = !DILocation(line: 872, column: 1, scope: !1239)
!1368 = distinct !DISubprogram(name: "coucal_warning", scope: !2, file: !2, line: 267, type: !1369, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371, !209, null}
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1372 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1368, file: !2, line: 267, type: !1371)
!1373 = !DILocation(line: 267, column: 1, scope: !1368)
!1374 = !DILocalVariable(name: "format", arg: 2, scope: !1368, file: !2, line: 267, type: !209)
!1375 = !DILocalVariable(name: "args", scope: !1368, file: !2, line: 267, type: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1377, line: 22, baseType: !1378)
!1377 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !215, baseType: !1379)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 192, elements: !271)
!1380 = distinct !DISubprogram(name: "coucal_is_acceptable_pow2", scope: !2, file: !2, line: 1029, type: !1381, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!91, !93}
!1383 = !DILocalVariable(name: "lg_size", arg: 1, scope: !1380, file: !2, line: 1029, type: !93)
!1384 = !DILocation(line: 1029, column: 60, scope: !1380)
!1385 = !DILocation(line: 1030, column: 10, scope: !1380)
!1386 = !DILocation(line: 1030, column: 18, scope: !1380)
!1387 = !DILocation(line: 1030, column: 38, scope: !1380)
!1388 = !DILocation(line: 1030, column: 41, scope: !1380)
!1389 = !DILocation(line: 1030, column: 49, scope: !1380)
!1390 = !DILocation(line: 0, scope: !1380)
!1391 = !DILocation(line: 1030, column: 3, scope: !1380)
!1392 = distinct !DISubprogram(name: "coucal_assert_failed", scope: !2, file: !2, line: 293, type: !1393, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1371, !209, !209, !91}
!1395 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1392, file: !2, line: 293, type: !1371)
!1396 = !DILocation(line: 293, column: 47, scope: !1392)
!1397 = !DILocalVariable(name: "exp", arg: 2, scope: !1392, file: !2, line: 293, type: !209)
!1398 = !DILocation(line: 293, column: 70, scope: !1392)
!1399 = !DILocalVariable(name: "file", arg: 3, scope: !1392, file: !2, line: 293, type: !209)
!1400 = !DILocation(line: 293, column: 87, scope: !1392)
!1401 = !DILocalVariable(name: "line", arg: 4, scope: !1392, file: !2, line: 293, type: !91)
!1402 = !DILocation(line: 293, column: 97, scope: !1392)
!1403 = !DILocalVariable(name: "name", scope: !1392, file: !2, line: 294, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!1405 = !DILocation(line: 294, column: 21, scope: !1392)
!1406 = !DILocation(line: 294, column: 44, scope: !1392)
!1407 = !DILocation(line: 294, column: 28, scope: !1392)
!1408 = !DILocation(line: 295, column: 15, scope: !1392)
!1409 = !DILocation(line: 296, column: 5, scope: !1392)
!1410 = !DILocation(line: 296, column: 10, scope: !1392)
!1411 = !DILocation(line: 296, column: 20, scope: !1392)
!1412 = !DILocation(line: 296, column: 40, scope: !1392)
!1413 = !DILocation(line: 296, column: 45, scope: !1392)
!1414 = !DILocation(line: 296, column: 51, scope: !1392)
!1415 = !DILocation(line: 295, column: 3, scope: !1392)
!1416 = !DILocation(line: 297, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 297, column: 7)
!1418 = !DILocation(line: 297, column: 17, scope: !1417)
!1419 = !DILocation(line: 297, column: 25, scope: !1417)
!1420 = !DILocation(line: 297, column: 28, scope: !1417)
!1421 = !DILocation(line: 297, column: 39, scope: !1417)
!1422 = !DILocation(line: 297, column: 46, scope: !1417)
!1423 = !DILocation(line: 297, column: 52, scope: !1417)
!1424 = !DILocation(line: 297, column: 58, scope: !1417)
!1425 = !DILocation(line: 297, column: 7, scope: !1392)
!1426 = !DILocation(line: 298, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 297, column: 67)
!1428 = !DILocation(line: 298, column: 16, scope: !1427)
!1429 = !DILocation(line: 298, column: 23, scope: !1427)
!1430 = !DILocation(line: 298, column: 29, scope: !1427)
!1431 = !DILocation(line: 298, column: 35, scope: !1427)
!1432 = !DILocation(line: 298, column: 46, scope: !1427)
!1433 = !DILocation(line: 298, column: 53, scope: !1427)
!1434 = !DILocation(line: 298, column: 59, scope: !1427)
!1435 = !DILocation(line: 298, column: 64, scope: !1427)
!1436 = !DILocation(line: 298, column: 69, scope: !1427)
!1437 = !DILocation(line: 298, column: 75, scope: !1427)
!1438 = !DILocation(line: 299, column: 3, scope: !1427)
!1439 = !DILocation(line: 299, column: 14, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 299, column: 14)
!1441 = !DILocation(line: 299, column: 36, scope: !1440)
!1442 = !DILocation(line: 299, column: 14, scope: !1417)
!1443 = !DILocation(line: 300, column: 5, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 299, column: 45)
!1445 = !DILocation(line: 300, column: 27, scope: !1444)
!1446 = !DILocation(line: 300, column: 38, scope: !1444)
!1447 = !DILocation(line: 300, column: 43, scope: !1444)
!1448 = !DILocation(line: 300, column: 49, scope: !1444)
!1449 = !DILocation(line: 301, column: 3, scope: !1444)
!1450 = !DILocation(line: 302, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 301, column: 10)
!1452 = !DILocation(line: 302, column: 22, scope: !1451)
!1453 = !DILocation(line: 302, column: 28, scope: !1451)
!1454 = !DILocation(line: 302, column: 5, scope: !1451)
!1455 = !DILocation(line: 304, column: 3, scope: !1392)
!1456 = distinct !DISubprogram(name: "coucal_crit", scope: !2, file: !2, line: 266, type: !1369, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1457 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1456, file: !2, line: 266, type: !1371)
!1458 = !DILocation(line: 266, column: 1, scope: !1456)
!1459 = !DILocalVariable(name: "format", arg: 2, scope: !1456, file: !2, line: 266, type: !209)
!1460 = !DILocalVariable(name: "args", scope: !1456, file: !2, line: 266, type: !1376)
!1461 = distinct !DISubprogram(name: "coucal_is_free", scope: !2, file: !2, line: 488, type: !1462, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!91, !1371, !93}
!1464 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1461, file: !2, line: 488, type: !1371)
!1465 = !DILocation(line: 488, column: 55, scope: !1461)
!1466 = !DILocalVariable(name: "pos", arg: 2, scope: !1461, file: !2, line: 488, type: !93)
!1467 = !DILocation(line: 488, column: 73, scope: !1461)
!1468 = !DILocation(line: 489, column: 10, scope: !1461)
!1469 = !DILocation(line: 489, column: 21, scope: !1461)
!1470 = !DILocation(line: 489, column: 27, scope: !1461)
!1471 = !DILocation(line: 489, column: 32, scope: !1461)
!1472 = !DILocation(line: 489, column: 37, scope: !1461)
!1473 = !DILocation(line: 489, column: 3, scope: !1461)
!1474 = distinct !DISubprogram(name: "coucal_hash_to_pos_", scope: !2, file: !2, line: 740, type: !1475, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!93, !93, !122}
!1477 = !DILocalVariable(name: "lg_size", arg: 1, scope: !1474, file: !2, line: 740, type: !93)
!1478 = !DILocation(line: 740, column: 57, scope: !1474)
!1479 = !DILocalVariable(name: "hash", arg: 2, scope: !1474, file: !2, line: 741, type: !122)
!1480 = !DILocation(line: 741, column: 65, scope: !1474)
!1481 = !DILocalVariable(name: "mask", scope: !1474, file: !2, line: 742, type: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1483 = !DILocation(line: 742, column: 24, scope: !1474)
!1484 = !DILocation(line: 742, column: 31, scope: !1474)
!1485 = !DILocation(line: 742, column: 45, scope: !1474)
!1486 = !DILocation(line: 743, column: 10, scope: !1474)
!1487 = !DILocation(line: 743, column: 17, scope: !1474)
!1488 = !DILocation(line: 743, column: 15, scope: !1474)
!1489 = !DILocation(line: 743, column: 3, scope: !1474)
!1490 = distinct !DISubprogram(name: "coucal_hash_to_pos", scope: !2, file: !2, line: 746, type: !1491, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!93, !1371, !122}
!1493 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1490, file: !2, line: 746, type: !1371)
!1494 = !DILocation(line: 746, column: 62, scope: !1490)
!1495 = !DILocalVariable(name: "hash", arg: 2, scope: !1490, file: !2, line: 747, type: !122)
!1496 = !DILocation(line: 747, column: 64, scope: !1490)
!1497 = !DILocation(line: 748, column: 30, scope: !1490)
!1498 = !DILocation(line: 748, column: 41, scope: !1490)
!1499 = !DILocation(line: 748, column: 50, scope: !1490)
!1500 = !DILocation(line: 748, column: 10, scope: !1490)
!1501 = !DILocation(line: 748, column: 3, scope: !1490)
!1502 = distinct !DISubprogram(name: "coucal_nolog", scope: !2, file: !2, line: 326, type: !1369, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1503 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1502, file: !2, line: 326, type: !1371)
!1504 = !DILocation(line: 326, column: 54, scope: !1502)
!1505 = !DILocalVariable(name: "format", arg: 2, scope: !1502, file: !2, line: 327, type: !209)
!1506 = !DILocation(line: 327, column: 53, scope: !1502)
!1507 = !DILocation(line: 328, column: 10, scope: !1502)
!1508 = !DILocation(line: 329, column: 10, scope: !1502)
!1509 = !DILocation(line: 330, column: 1, scope: !1502)
!1510 = distinct !DISubprogram(name: "coucal_add_item_", scope: !2, file: !2, line: 883, type: !1511, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!91, !126, !101}
!1513 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1510, file: !2, line: 883, type: !126)
!1514 = !DILocation(line: 883, column: 36, scope: !1510)
!1515 = !DILocalVariable(name: "item", arg: 2, scope: !1510, file: !2, line: 883, type: !101)
!1516 = !DILocation(line: 883, column: 59, scope: !1510)
!1517 = !DILocalVariable(name: "cuckoo_hash", scope: !1510, file: !2, line: 884, type: !122)
!1518 = !DILocation(line: 884, column: 18, scope: !1510)
!1519 = !DILocalVariable(name: "initial_cuckoo_hash", scope: !1510, file: !2, line: 884, type: !122)
!1520 = !DILocation(line: 884, column: 31, scope: !1510)
!1521 = !DILocalVariable(name: "loops", scope: !1510, file: !2, line: 885, type: !93)
!1522 = !DILocation(line: 885, column: 10, scope: !1510)
!1523 = !DILocalVariable(name: "pos", scope: !1510, file: !2, line: 886, type: !93)
!1524 = !DILocation(line: 886, column: 10, scope: !1510)
!1525 = !DILocation(line: 889, column: 28, scope: !1510)
!1526 = !DILocation(line: 889, column: 44, scope: !1510)
!1527 = !DILocation(line: 889, column: 51, scope: !1510)
!1528 = !DILocation(line: 889, column: 9, scope: !1510)
!1529 = !DILocation(line: 889, column: 7, scope: !1510)
!1530 = !DILocation(line: 890, column: 22, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 890, column: 7)
!1532 = !DILocation(line: 890, column: 33, scope: !1531)
!1533 = !DILocation(line: 890, column: 7, scope: !1531)
!1534 = !DILocation(line: 890, column: 7, scope: !1510)
!1535 = !DILocation(line: 891, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 890, column: 39)
!1537 = !DILocation(line: 891, column: 16, scope: !1536)
!1538 = !DILocation(line: 891, column: 22, scope: !1536)
!1539 = !DILocation(line: 891, column: 29, scope: !1536)
!1540 = !DILocation(line: 892, column: 5, scope: !1536)
!1541 = !DILocation(line: 895, column: 30, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 893, column: 10)
!1543 = !DILocation(line: 895, column: 46, scope: !1542)
!1544 = !DILocation(line: 895, column: 53, scope: !1542)
!1545 = !DILocation(line: 895, column: 11, scope: !1542)
!1546 = !DILocation(line: 895, column: 9, scope: !1542)
!1547 = !DILocation(line: 896, column: 24, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 896, column: 9)
!1549 = !DILocation(line: 896, column: 35, scope: !1548)
!1550 = !DILocation(line: 896, column: 9, scope: !1548)
!1551 = !DILocation(line: 896, column: 9, scope: !1542)
!1552 = !DILocation(line: 897, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 896, column: 41)
!1554 = !DILocation(line: 897, column: 18, scope: !1553)
!1555 = !DILocation(line: 897, column: 24, scope: !1553)
!1556 = !DILocation(line: 897, column: 31, scope: !1553)
!1557 = !DILocation(line: 898, column: 7, scope: !1553)
!1558 = !DILocation(line: 902, column: 48, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 901, column: 10)
!1560 = !DILocation(line: 902, column: 55, scope: !1559)
!1561 = !DILocation(line: 902, column: 41, scope: !1559)
!1562 = !DILocation(line: 902, column: 19, scope: !1559)
!1563 = !DILocation(line: 903, column: 20, scope: !1559)
!1564 = !DILocation(line: 905, column: 39, scope: !1559)
!1565 = !DILocation(line: 905, column: 55, scope: !1559)
!1566 = !DILocation(line: 905, column: 22, scope: !1559)
!1567 = !DILocation(line: 906, column: 33, scope: !1559)
!1568 = !DILocation(line: 906, column: 38, scope: !1559)
!1569 = !DILocation(line: 903, column: 7, scope: !1559)
!1570 = !DILocation(line: 911, column: 15, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 911, column: 3)
!1572 = !DILocation(line: 911, column: 13, scope: !1571)
!1573 = !DILocation(line: 911, column: 7, scope: !1571)
!1574 = !DILocation(line: 911, column: 42, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 911, column: 3)
!1576 = !DILocation(line: 911, column: 48, scope: !1575)
!1577 = !DILocation(line: 911, column: 3, scope: !1571)
!1578 = !DILocalVariable(name: "pos", scope: !1579, file: !2, line: 912, type: !932)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 911, column: 64)
!1580 = !DILocation(line: 912, column: 18, scope: !1579)
!1581 = !DILocation(line: 912, column: 43, scope: !1579)
!1582 = !DILocation(line: 912, column: 54, scope: !1579)
!1583 = !DILocation(line: 912, column: 24, scope: !1579)
!1584 = !DILocation(line: 914, column: 18, scope: !1579)
!1585 = !DILocation(line: 916, column: 36, scope: !1579)
!1586 = !DILocation(line: 916, column: 52, scope: !1579)
!1587 = !DILocation(line: 916, column: 19, scope: !1579)
!1588 = !DILocation(line: 917, column: 30, scope: !1579)
!1589 = !DILocation(line: 917, column: 35, scope: !1579)
!1590 = !DILocation(line: 914, column: 5, scope: !1579)
!1591 = !DILocation(line: 920, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 920, column: 9)
!1593 = !DILocation(line: 920, column: 35, scope: !1592)
!1594 = !DILocation(line: 920, column: 9, scope: !1592)
!1595 = !DILocation(line: 920, column: 9, scope: !1579)
!1596 = !DILocation(line: 921, column: 20, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 920, column: 41)
!1598 = !DILocation(line: 921, column: 7, scope: !1597)
!1599 = !DILocation(line: 922, column: 7, scope: !1597)
!1600 = !DILocation(line: 922, column: 18, scope: !1597)
!1601 = !DILocation(line: 922, column: 24, scope: !1597)
!1602 = !DILocation(line: 922, column: 31, scope: !1597)
!1603 = !DILocation(line: 923, column: 7, scope: !1597)
!1604 = !DILocalVariable(name: "backup_item", scope: !1605, file: !2, line: 928, type: !1606)
!1605 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 926, column: 10)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1607 = !DILocation(line: 928, column: 25, scope: !1605)
!1608 = !DILocation(line: 928, column: 39, scope: !1605)
!1609 = !DILocation(line: 928, column: 50, scope: !1605)
!1610 = !DILocation(line: 928, column: 56, scope: !1605)
!1611 = !DILocation(line: 929, column: 7, scope: !1605)
!1612 = !DILocation(line: 929, column: 18, scope: !1605)
!1613 = !DILocation(line: 929, column: 24, scope: !1605)
!1614 = !DILocation(line: 929, column: 31, scope: !1605)
!1615 = !DILocation(line: 932, column: 7, scope: !1605)
!1616 = !DILocation(line: 932, column: 18, scope: !1605)
!1617 = !DILocation(line: 932, column: 24, scope: !1605)
!1618 = !DILocation(line: 932, column: 36, scope: !1605)
!1619 = !DILocation(line: 935, column: 14, scope: !1605)
!1620 = !DILocation(line: 938, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 938, column: 11)
!1622 = !DILocation(line: 938, column: 37, scope: !1621)
!1623 = !DILocation(line: 938, column: 53, scope: !1621)
!1624 = !DILocation(line: 938, column: 60, scope: !1621)
!1625 = !DILocation(line: 938, column: 18, scope: !1621)
!1626 = !DILocation(line: 938, column: 15, scope: !1621)
!1627 = !DILocation(line: 938, column: 11, scope: !1605)
!1628 = !DILocation(line: 940, column: 22, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 938, column: 68)
!1630 = !DILocation(line: 940, column: 9, scope: !1629)
!1631 = !DILocation(line: 941, column: 28, scope: !1629)
!1632 = !DILocation(line: 941, column: 35, scope: !1629)
!1633 = !DILocation(line: 941, column: 21, scope: !1629)
!1634 = !DILocation(line: 942, column: 7, scope: !1629)
!1635 = !DILocation(line: 944, column: 16, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 944, column: 16)
!1637 = !DILocation(line: 944, column: 42, scope: !1636)
!1638 = !DILocation(line: 944, column: 58, scope: !1636)
!1639 = !DILocation(line: 944, column: 65, scope: !1636)
!1640 = !DILocation(line: 944, column: 23, scope: !1636)
!1641 = !DILocation(line: 944, column: 20, scope: !1636)
!1642 = !DILocation(line: 944, column: 16, scope: !1621)
!1643 = !DILocation(line: 946, column: 22, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 944, column: 73)
!1645 = !DILocation(line: 946, column: 9, scope: !1644)
!1646 = !DILocation(line: 947, column: 28, scope: !1644)
!1647 = !DILocation(line: 947, column: 35, scope: !1644)
!1648 = !DILocation(line: 947, column: 21, scope: !1644)
!1649 = !DILocation(line: 948, column: 7, scope: !1644)
!1650 = !DILocation(line: 950, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 949, column: 12)
!1652 = !DILocation(line: 955, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 955, column: 11)
!1654 = !DILocation(line: 955, column: 26, scope: !1653)
!1655 = !DILocation(line: 955, column: 23, scope: !1653)
!1656 = !DILocation(line: 955, column: 11, scope: !1605)
!1657 = !DILocation(line: 957, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 955, column: 47)
!1659 = !DILocation(line: 960, column: 3, scope: !1579)
!1660 = !DILocation(line: 911, column: 55, scope: !1575)
!1661 = !DILocation(line: 911, column: 3, scope: !1575)
!1662 = distinct !{!1662, !1577, !1663, !615}
!1663 = !DILocation(line: 960, column: 3, scope: !1571)
!1664 = !DILocation(line: 963, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 963, column: 7)
!1666 = !DILocation(line: 963, column: 18, scope: !1665)
!1667 = !DILocation(line: 963, column: 24, scope: !1665)
!1668 = !DILocation(line: 963, column: 29, scope: !1665)
!1669 = !DILocation(line: 963, column: 7, scope: !1510)
!1670 = !DILocation(line: 964, column: 5, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 963, column: 43)
!1672 = !DILocation(line: 964, column: 16, scope: !1671)
!1673 = !DILocation(line: 964, column: 22, scope: !1671)
!1674 = !DILocation(line: 964, column: 28, scope: !1671)
!1675 = !DILocation(line: 964, column: 39, scope: !1671)
!1676 = !DILocation(line: 964, column: 45, scope: !1671)
!1677 = !DILocation(line: 964, column: 53, scope: !1671)
!1678 = !DILocation(line: 965, column: 5, scope: !1671)
!1679 = !DILocation(line: 965, column: 16, scope: !1671)
!1680 = !DILocation(line: 965, column: 22, scope: !1671)
!1681 = !DILocation(line: 965, column: 26, scope: !1671)
!1682 = !DILocation(line: 967, column: 5, scope: !1671)
!1683 = !DILocation(line: 967, column: 16, scope: !1671)
!1684 = !DILocation(line: 967, column: 22, scope: !1671)
!1685 = !DILocation(line: 967, column: 33, scope: !1671)
!1686 = !DILocation(line: 968, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 968, column: 9)
!1688 = !DILocation(line: 968, column: 20, scope: !1687)
!1689 = !DILocation(line: 968, column: 26, scope: !1687)
!1690 = !DILocation(line: 968, column: 33, scope: !1687)
!1691 = !DILocation(line: 968, column: 44, scope: !1687)
!1692 = !DILocation(line: 968, column: 50, scope: !1687)
!1693 = !DILocation(line: 968, column: 31, scope: !1687)
!1694 = !DILocation(line: 968, column: 9, scope: !1671)
!1695 = !DILocation(line: 969, column: 41, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 968, column: 66)
!1697 = !DILocation(line: 969, column: 52, scope: !1696)
!1698 = !DILocation(line: 969, column: 58, scope: !1696)
!1699 = !DILocation(line: 969, column: 7, scope: !1696)
!1700 = !DILocation(line: 969, column: 18, scope: !1696)
!1701 = !DILocation(line: 969, column: 24, scope: !1696)
!1702 = !DILocation(line: 969, column: 39, scope: !1696)
!1703 = !DILocation(line: 970, column: 5, scope: !1696)
!1704 = !DILocation(line: 971, column: 18, scope: !1671)
!1705 = !DILocation(line: 972, column: 25, scope: !1671)
!1706 = !DILocation(line: 972, column: 36, scope: !1671)
!1707 = !DILocation(line: 972, column: 42, scope: !1671)
!1708 = !DILocation(line: 972, column: 19, scope: !1671)
!1709 = !DILocation(line: 971, column: 5, scope: !1671)
!1710 = !DILocation(line: 973, column: 5, scope: !1671)
!1711 = !DILocation(line: 976, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 976, column: 9)
!1713 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 974, column: 10)
!1714 = !DILocation(line: 976, column: 20, scope: !1712)
!1715 = !DILocation(line: 976, column: 27, scope: !1712)
!1716 = !DILocation(line: 976, column: 33, scope: !1712)
!1717 = !DILocation(line: 976, column: 37, scope: !1712)
!1718 = !DILocation(line: 977, column: 7, scope: !1712)
!1719 = !DILocation(line: 977, column: 10, scope: !1712)
!1720 = !DILocation(line: 977, column: 21, scope: !1712)
!1721 = !DILocation(line: 977, column: 28, scope: !1712)
!1722 = !DILocation(line: 977, column: 34, scope: !1712)
!1723 = !DILocation(line: 977, column: 40, scope: !1712)
!1724 = !DILocation(line: 976, column: 9, scope: !1713)
!1725 = !DILocalVariable(name: "i", scope: !1726, file: !2, line: 978, type: !93)
!1726 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 977, column: 49)
!1727 = !DILocation(line: 978, column: 14, scope: !1726)
!1728 = !DILocation(line: 979, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 979, column: 7)
!1730 = !DILocation(line: 979, column: 11, scope: !1729)
!1731 = !DILocation(line: 979, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 979, column: 7)
!1733 = !DILocation(line: 979, column: 23, scope: !1732)
!1734 = !DILocation(line: 979, column: 34, scope: !1732)
!1735 = !DILocation(line: 979, column: 40, scope: !1732)
!1736 = !DILocation(line: 979, column: 21, scope: !1732)
!1737 = !DILocation(line: 979, column: 7, scope: !1729)
!1738 = !DILocalVariable(name: "item", scope: !1739, file: !2, line: 980, type: !1740)
!1739 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 979, column: 52)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1741 = !DILocation(line: 980, column: 28, scope: !1739)
!1742 = !DILocation(line: 980, column: 36, scope: !1739)
!1743 = !DILocation(line: 980, column: 47, scope: !1739)
!1744 = !DILocation(line: 980, column: 53, scope: !1739)
!1745 = !DILocation(line: 980, column: 59, scope: !1739)
!1746 = !DILocalVariable(name: "pos1", scope: !1739, file: !2, line: 981, type: !932)
!1747 = !DILocation(line: 981, column: 22, scope: !1739)
!1748 = !DILocation(line: 981, column: 48, scope: !1739)
!1749 = !DILocation(line: 981, column: 59, scope: !1739)
!1750 = !DILocation(line: 981, column: 65, scope: !1739)
!1751 = !DILocation(line: 981, column: 72, scope: !1739)
!1752 = !DILocation(line: 981, column: 29, scope: !1739)
!1753 = !DILocalVariable(name: "pos2", scope: !1739, file: !2, line: 982, type: !932)
!1754 = !DILocation(line: 982, column: 22, scope: !1739)
!1755 = !DILocation(line: 982, column: 48, scope: !1739)
!1756 = !DILocation(line: 982, column: 59, scope: !1739)
!1757 = !DILocation(line: 982, column: 65, scope: !1739)
!1758 = !DILocation(line: 982, column: 72, scope: !1739)
!1759 = !DILocation(line: 982, column: 29, scope: !1739)
!1760 = !DILocation(line: 983, column: 21, scope: !1739)
!1761 = !DILocation(line: 985, column: 17, scope: !1739)
!1762 = !DILocation(line: 985, column: 11, scope: !1739)
!1763 = !DILocation(line: 986, column: 11, scope: !1739)
!1764 = !DILocation(line: 986, column: 22, scope: !1739)
!1765 = !DILocation(line: 986, column: 29, scope: !1739)
!1766 = !DILocation(line: 986, column: 35, scope: !1739)
!1767 = !DILocation(line: 986, column: 39, scope: !1739)
!1768 = !DILocation(line: 986, column: 50, scope: !1739)
!1769 = !DILocation(line: 986, column: 57, scope: !1739)
!1770 = !DILocation(line: 986, column: 63, scope: !1739)
!1771 = !DILocation(line: 986, column: 68, scope: !1739)
!1772 = !DILocation(line: 986, column: 74, scope: !1739)
!1773 = !DILocation(line: 987, column: 11, scope: !1739)
!1774 = !DILocation(line: 987, column: 22, scope: !1739)
!1775 = !DILocation(line: 987, column: 29, scope: !1739)
!1776 = !DILocation(line: 987, column: 35, scope: !1739)
!1777 = !DILocation(line: 987, column: 41, scope: !1739)
!1778 = !DILocation(line: 987, column: 52, scope: !1739)
!1779 = !DILocation(line: 987, column: 59, scope: !1739)
!1780 = !DILocation(line: 987, column: 65, scope: !1739)
!1781 = !DILocation(line: 987, column: 70, scope: !1739)
!1782 = !DILocation(line: 987, column: 76, scope: !1739)
!1783 = !DILocation(line: 988, column: 17, scope: !1739)
!1784 = !DILocation(line: 988, column: 11, scope: !1739)
!1785 = !DILocation(line: 988, column: 29, scope: !1739)
!1786 = !DILocation(line: 988, column: 23, scope: !1739)
!1787 = !DILocation(line: 989, column: 11, scope: !1739)
!1788 = !DILocation(line: 989, column: 17, scope: !1739)
!1789 = !DILocation(line: 989, column: 24, scope: !1739)
!1790 = !DILocation(line: 989, column: 31, scope: !1739)
!1791 = !DILocation(line: 989, column: 37, scope: !1739)
!1792 = !DILocation(line: 989, column: 44, scope: !1739)
!1793 = !DILocation(line: 983, column: 9, scope: !1739)
!1794 = !DILocation(line: 990, column: 29, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 990, column: 13)
!1796 = !DILocation(line: 990, column: 40, scope: !1795)
!1797 = !DILocation(line: 990, column: 14, scope: !1795)
!1798 = !DILocation(line: 990, column: 13, scope: !1739)
!1799 = !DILocalVariable(name: "item", scope: !1800, file: !2, line: 991, type: !1740)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 990, column: 47)
!1801 = !DILocation(line: 991, column: 30, scope: !1800)
!1802 = !DILocation(line: 991, column: 38, scope: !1800)
!1803 = !DILocation(line: 991, column: 49, scope: !1800)
!1804 = !DILocation(line: 991, column: 55, scope: !1800)
!1805 = !DILocalVariable(name: "pos1", scope: !1800, file: !2, line: 992, type: !932)
!1806 = !DILocation(line: 992, column: 24, scope: !1800)
!1807 = !DILocation(line: 992, column: 50, scope: !1800)
!1808 = !DILocation(line: 992, column: 61, scope: !1800)
!1809 = !DILocation(line: 992, column: 67, scope: !1800)
!1810 = !DILocation(line: 992, column: 74, scope: !1800)
!1811 = !DILocation(line: 992, column: 31, scope: !1800)
!1812 = !DILocalVariable(name: "pos2", scope: !1800, file: !2, line: 993, type: !932)
!1813 = !DILocation(line: 993, column: 24, scope: !1800)
!1814 = !DILocation(line: 993, column: 50, scope: !1800)
!1815 = !DILocation(line: 993, column: 61, scope: !1800)
!1816 = !DILocation(line: 993, column: 67, scope: !1800)
!1817 = !DILocation(line: 993, column: 74, scope: !1800)
!1818 = !DILocation(line: 993, column: 31, scope: !1800)
!1819 = !DILocation(line: 994, column: 23, scope: !1800)
!1820 = !DILocation(line: 996, column: 13, scope: !1800)
!1821 = !DILocation(line: 996, column: 24, scope: !1800)
!1822 = !DILocation(line: 996, column: 31, scope: !1800)
!1823 = !DILocation(line: 996, column: 37, scope: !1800)
!1824 = !DILocation(line: 996, column: 41, scope: !1800)
!1825 = !DILocation(line: 996, column: 52, scope: !1800)
!1826 = !DILocation(line: 996, column: 59, scope: !1800)
!1827 = !DILocation(line: 996, column: 65, scope: !1800)
!1828 = !DILocation(line: 996, column: 70, scope: !1800)
!1829 = !DILocation(line: 996, column: 76, scope: !1800)
!1830 = !DILocation(line: 997, column: 13, scope: !1800)
!1831 = !DILocation(line: 997, column: 24, scope: !1800)
!1832 = !DILocation(line: 997, column: 31, scope: !1800)
!1833 = !DILocation(line: 997, column: 37, scope: !1800)
!1834 = !DILocation(line: 997, column: 43, scope: !1800)
!1835 = !DILocation(line: 997, column: 54, scope: !1800)
!1836 = !DILocation(line: 997, column: 61, scope: !1800)
!1837 = !DILocation(line: 997, column: 67, scope: !1800)
!1838 = !DILocation(line: 997, column: 72, scope: !1800)
!1839 = !DILocation(line: 997, column: 78, scope: !1800)
!1840 = !DILocation(line: 998, column: 19, scope: !1800)
!1841 = !DILocation(line: 998, column: 13, scope: !1800)
!1842 = !DILocation(line: 998, column: 31, scope: !1800)
!1843 = !DILocation(line: 998, column: 25, scope: !1800)
!1844 = !DILocation(line: 999, column: 13, scope: !1800)
!1845 = !DILocation(line: 999, column: 19, scope: !1800)
!1846 = !DILocation(line: 999, column: 26, scope: !1800)
!1847 = !DILocation(line: 999, column: 33, scope: !1800)
!1848 = !DILocation(line: 999, column: 39, scope: !1800)
!1849 = !DILocation(line: 999, column: 46, scope: !1800)
!1850 = !DILocation(line: 994, column: 11, scope: !1800)
!1851 = !DILocation(line: 1000, column: 9, scope: !1800)
!1852 = !DILocation(line: 1001, column: 23, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 1000, column: 16)
!1854 = !DILocation(line: 1001, column: 85, scope: !1853)
!1855 = !DILocation(line: 1001, column: 79, scope: !1853)
!1856 = !DILocation(line: 1001, column: 11, scope: !1853)
!1857 = !DILocation(line: 1003, column: 29, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 1003, column: 13)
!1859 = !DILocation(line: 1003, column: 40, scope: !1858)
!1860 = !DILocation(line: 1003, column: 14, scope: !1858)
!1861 = !DILocation(line: 1003, column: 13, scope: !1739)
!1862 = !DILocalVariable(name: "item", scope: !1863, file: !2, line: 1004, type: !1740)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 1003, column: 47)
!1864 = !DILocation(line: 1004, column: 30, scope: !1863)
!1865 = !DILocation(line: 1004, column: 38, scope: !1863)
!1866 = !DILocation(line: 1004, column: 49, scope: !1863)
!1867 = !DILocation(line: 1004, column: 55, scope: !1863)
!1868 = !DILocalVariable(name: "pos1", scope: !1863, file: !2, line: 1005, type: !932)
!1869 = !DILocation(line: 1005, column: 24, scope: !1863)
!1870 = !DILocation(line: 1005, column: 50, scope: !1863)
!1871 = !DILocation(line: 1005, column: 61, scope: !1863)
!1872 = !DILocation(line: 1005, column: 67, scope: !1863)
!1873 = !DILocation(line: 1005, column: 74, scope: !1863)
!1874 = !DILocation(line: 1005, column: 31, scope: !1863)
!1875 = !DILocalVariable(name: "pos2", scope: !1863, file: !2, line: 1006, type: !932)
!1876 = !DILocation(line: 1006, column: 24, scope: !1863)
!1877 = !DILocation(line: 1006, column: 50, scope: !1863)
!1878 = !DILocation(line: 1006, column: 61, scope: !1863)
!1879 = !DILocation(line: 1006, column: 67, scope: !1863)
!1880 = !DILocation(line: 1006, column: 74, scope: !1863)
!1881 = !DILocation(line: 1006, column: 31, scope: !1863)
!1882 = !DILocation(line: 1007, column: 23, scope: !1863)
!1883 = !DILocation(line: 1009, column: 13, scope: !1863)
!1884 = !DILocation(line: 1009, column: 24, scope: !1863)
!1885 = !DILocation(line: 1009, column: 31, scope: !1863)
!1886 = !DILocation(line: 1009, column: 37, scope: !1863)
!1887 = !DILocation(line: 1009, column: 41, scope: !1863)
!1888 = !DILocation(line: 1009, column: 52, scope: !1863)
!1889 = !DILocation(line: 1009, column: 59, scope: !1863)
!1890 = !DILocation(line: 1009, column: 65, scope: !1863)
!1891 = !DILocation(line: 1009, column: 70, scope: !1863)
!1892 = !DILocation(line: 1009, column: 76, scope: !1863)
!1893 = !DILocation(line: 1010, column: 13, scope: !1863)
!1894 = !DILocation(line: 1010, column: 24, scope: !1863)
!1895 = !DILocation(line: 1010, column: 31, scope: !1863)
!1896 = !DILocation(line: 1010, column: 37, scope: !1863)
!1897 = !DILocation(line: 1010, column: 43, scope: !1863)
!1898 = !DILocation(line: 1010, column: 54, scope: !1863)
!1899 = !DILocation(line: 1010, column: 61, scope: !1863)
!1900 = !DILocation(line: 1010, column: 67, scope: !1863)
!1901 = !DILocation(line: 1010, column: 72, scope: !1863)
!1902 = !DILocation(line: 1010, column: 78, scope: !1863)
!1903 = !DILocation(line: 1011, column: 19, scope: !1863)
!1904 = !DILocation(line: 1011, column: 13, scope: !1863)
!1905 = !DILocation(line: 1011, column: 31, scope: !1863)
!1906 = !DILocation(line: 1011, column: 25, scope: !1863)
!1907 = !DILocation(line: 1012, column: 13, scope: !1863)
!1908 = !DILocation(line: 1012, column: 19, scope: !1863)
!1909 = !DILocation(line: 1012, column: 26, scope: !1863)
!1910 = !DILocation(line: 1012, column: 33, scope: !1863)
!1911 = !DILocation(line: 1012, column: 39, scope: !1863)
!1912 = !DILocation(line: 1012, column: 46, scope: !1863)
!1913 = !DILocation(line: 1007, column: 11, scope: !1863)
!1914 = !DILocation(line: 1013, column: 9, scope: !1863)
!1915 = !DILocation(line: 1014, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 1013, column: 16)
!1917 = !DILocation(line: 1014, column: 85, scope: !1916)
!1918 = !DILocation(line: 1014, column: 79, scope: !1916)
!1919 = !DILocation(line: 1014, column: 11, scope: !1916)
!1920 = !DILocation(line: 1016, column: 7, scope: !1739)
!1921 = !DILocation(line: 979, column: 48, scope: !1732)
!1922 = !DILocation(line: 979, column: 7, scope: !1732)
!1923 = distinct !{!1923, !1737, !1924, !615}
!1924 = !DILocation(line: 1016, column: 7, scope: !1729)
!1925 = !DILocation(line: 1017, column: 5, scope: !1726)
!1926 = !DILocation(line: 1021, column: 22, scope: !1713)
!1927 = !DILocation(line: 1021, column: 5, scope: !1713)
!1928 = !DILocation(line: 1022, column: 5, scope: !1713)
!1929 = !DILocation(line: 1025, column: 5, scope: !1713)
!1930 = !DILocation(line: 1027, column: 1, scope: !1510)
!1931 = distinct !DISubprogram(name: "coucal_add", scope: !2, file: !2, line: 1161, type: !1932, scopeLine: 1161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !126, !181, !111}
!1934 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1931, file: !2, line: 1161, type: !126)
!1935 = !DILocation(line: 1161, column: 24, scope: !1931)
!1936 = !DILocalVariable(name: "name", arg: 2, scope: !1931, file: !2, line: 1161, type: !181)
!1937 = !DILocation(line: 1161, column: 52, scope: !1931)
!1938 = !DILocalVariable(name: "intvalue", arg: 3, scope: !1931, file: !2, line: 1161, type: !111)
!1939 = !DILocation(line: 1161, column: 67, scope: !1931)
!1940 = !DILocalVariable(name: "value", scope: !1931, file: !2, line: 1162, type: !107)
!1941 = !DILocation(line: 1162, column: 16, scope: !1931)
!1942 = !DILocation(line: 1164, column: 3, scope: !1931)
!1943 = !DILocation(line: 1165, column: 16, scope: !1931)
!1944 = !DILocation(line: 1165, column: 14, scope: !1931)
!1945 = !DILocation(line: 1166, column: 22, scope: !1931)
!1946 = !DILocation(line: 1166, column: 33, scope: !1931)
!1947 = !DILocation(line: 1166, column: 3, scope: !1931)
!1948 = !DILocation(line: 1167, column: 1, scope: !1931)
!1949 = distinct !DISubprogram(name: "coucal_read", scope: !2, file: !2, line: 1169, type: !1950, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!91, !126, !181, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1953 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1949, file: !2, line: 1169, type: !126)
!1954 = !DILocation(line: 1169, column: 24, scope: !1949)
!1955 = !DILocalVariable(name: "name", arg: 2, scope: !1949, file: !2, line: 1169, type: !181)
!1956 = !DILocation(line: 1169, column: 52, scope: !1949)
!1957 = !DILocalVariable(name: "intvalue", arg: 3, scope: !1949, file: !2, line: 1169, type: !1952)
!1958 = !DILocation(line: 1169, column: 69, scope: !1949)
!1959 = !DILocalVariable(name: "value", scope: !1949, file: !2, line: 1170, type: !107)
!1960 = !DILocation(line: 1170, column: 16, scope: !1949)
!1961 = !DILocalVariable(name: "ret", scope: !1949, file: !2, line: 1171, type: !91)
!1962 = !DILocation(line: 1171, column: 7, scope: !1949)
!1963 = !DILocation(line: 1172, column: 23, scope: !1949)
!1964 = !DILocation(line: 1172, column: 34, scope: !1949)
!1965 = !DILocation(line: 1172, column: 41, scope: !1949)
!1966 = !DILocation(line: 1172, column: 50, scope: !1949)
!1967 = !DILocation(line: 1172, column: 40, scope: !1949)
!1968 = !DILocation(line: 1172, column: 5, scope: !1949)
!1969 = !DILocation(line: 1173, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 1173, column: 7)
!1971 = !DILocation(line: 1173, column: 16, scope: !1970)
!1972 = !DILocation(line: 1173, column: 7, scope: !1949)
!1973 = !DILocation(line: 1174, column: 23, scope: !1970)
!1974 = !DILocation(line: 1174, column: 6, scope: !1970)
!1975 = !DILocation(line: 1174, column: 15, scope: !1970)
!1976 = !DILocation(line: 1174, column: 5, scope: !1970)
!1977 = !DILocation(line: 1175, column: 10, scope: !1949)
!1978 = !DILocation(line: 1175, column: 3, scope: !1949)
!1979 = distinct !DISubprogram(name: "coucal_fetch_value_hashes", scope: !2, file: !2, line: 1178, type: !1980, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!847, !126, !181, !1041}
!1982 = !DILocalVariable(name: "hashtable", arg: 1, scope: !1979, file: !2, line: 1178, type: !126)
!1983 = !DILocation(line: 1178, column: 48, scope: !1979)
!1984 = !DILocalVariable(name: "name", arg: 2, scope: !1979, file: !2, line: 1179, type: !181)
!1985 = !DILocation(line: 1179, column: 58, scope: !1979)
!1986 = !DILocalVariable(name: "hashes", arg: 3, scope: !1979, file: !2, line: 1180, type: !1041)
!1987 = !DILocation(line: 1180, column: 64, scope: !1979)
!1988 = !DILocalVariable(name: "pos", scope: !1979, file: !2, line: 1181, type: !93)
!1989 = !DILocation(line: 1181, column: 10, scope: !1979)
!1990 = !DILocation(line: 1184, column: 28, scope: !1979)
!1991 = !DILocation(line: 1184, column: 39, scope: !1979)
!1992 = !DILocation(line: 1184, column: 47, scope: !1979)
!1993 = !DILocation(line: 1184, column: 9, scope: !1979)
!1994 = !DILocation(line: 1184, column: 7, scope: !1979)
!1995 = !DILocation(line: 1185, column: 22, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1185, column: 7)
!1997 = !DILocation(line: 1185, column: 33, scope: !1996)
!1998 = !DILocation(line: 1185, column: 38, scope: !1996)
!1999 = !DILocation(line: 1185, column: 44, scope: !1996)
!2000 = !DILocation(line: 1185, column: 7, scope: !1996)
!2001 = !DILocation(line: 1185, column: 7, scope: !1979)
!2002 = !DILocation(line: 1186, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1185, column: 53)
!2004 = !DILocation(line: 1186, column: 24, scope: !2003)
!2005 = !DILocation(line: 1186, column: 30, scope: !2003)
!2006 = !DILocation(line: 1186, column: 35, scope: !2003)
!2007 = !DILocation(line: 1186, column: 5, scope: !2003)
!2008 = !DILocation(line: 1190, column: 28, scope: !1979)
!2009 = !DILocation(line: 1190, column: 39, scope: !1979)
!2010 = !DILocation(line: 1190, column: 47, scope: !1979)
!2011 = !DILocation(line: 1190, column: 9, scope: !1979)
!2012 = !DILocation(line: 1190, column: 7, scope: !1979)
!2013 = !DILocation(line: 1191, column: 22, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1191, column: 7)
!2015 = !DILocation(line: 1191, column: 33, scope: !2014)
!2016 = !DILocation(line: 1191, column: 38, scope: !2014)
!2017 = !DILocation(line: 1191, column: 44, scope: !2014)
!2018 = !DILocation(line: 1191, column: 7, scope: !2014)
!2019 = !DILocation(line: 1191, column: 7, scope: !1979)
!2020 = !DILocation(line: 1192, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 1191, column: 53)
!2022 = !DILocation(line: 1192, column: 24, scope: !2021)
!2023 = !DILocation(line: 1192, column: 30, scope: !2021)
!2024 = !DILocation(line: 1192, column: 35, scope: !2021)
!2025 = !DILocation(line: 1192, column: 5, scope: !2021)
!2026 = !DILocation(line: 1196, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1196, column: 7)
!2028 = !DILocation(line: 1196, column: 18, scope: !2027)
!2029 = !DILocation(line: 1196, column: 24, scope: !2027)
!2030 = !DILocation(line: 1196, column: 29, scope: !2027)
!2031 = !DILocation(line: 1196, column: 7, scope: !1979)
!2032 = !DILocalVariable(name: "i", scope: !2033, file: !2, line: 1197, type: !93)
!2033 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 1196, column: 35)
!2034 = !DILocation(line: 1197, column: 12, scope: !2033)
!2035 = !DILocation(line: 1198, column: 11, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 1198, column: 5)
!2037 = !DILocation(line: 1198, column: 9, scope: !2036)
!2038 = !DILocation(line: 1198, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 1198, column: 5)
!2040 = !DILocation(line: 1198, column: 21, scope: !2039)
!2041 = !DILocation(line: 1198, column: 32, scope: !2039)
!2042 = !DILocation(line: 1198, column: 38, scope: !2039)
!2043 = !DILocation(line: 1198, column: 19, scope: !2039)
!2044 = !DILocation(line: 1198, column: 5, scope: !2036)
!2045 = !DILocation(line: 1199, column: 27, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 1199, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 1198, column: 50)
!2048 = !DILocation(line: 1199, column: 39, scope: !2046)
!2049 = !DILocation(line: 1199, column: 50, scope: !2046)
!2050 = !DILocation(line: 1199, column: 56, scope: !2046)
!2051 = !DILocation(line: 1199, column: 62, scope: !2046)
!2052 = !DILocation(line: 1199, column: 66, scope: !2046)
!2053 = !DILocation(line: 1200, column: 27, scope: !2046)
!2054 = !DILocation(line: 1199, column: 11, scope: !2046)
!2055 = !DILocation(line: 1199, column: 11, scope: !2047)
!2056 = !DILocation(line: 1201, column: 17, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 1200, column: 36)
!2058 = !DILocation(line: 1201, column: 28, scope: !2057)
!2059 = !DILocation(line: 1201, column: 34, scope: !2057)
!2060 = !DILocation(line: 1201, column: 40, scope: !2057)
!2061 = !DILocation(line: 1201, column: 43, scope: !2057)
!2062 = !DILocation(line: 1201, column: 9, scope: !2057)
!2063 = !DILocation(line: 1203, column: 5, scope: !2047)
!2064 = !DILocation(line: 1198, column: 46, scope: !2039)
!2065 = !DILocation(line: 1198, column: 5, scope: !2039)
!2066 = distinct !{!2066, !2044, !2067, !615}
!2067 = !DILocation(line: 1203, column: 5, scope: !2036)
!2068 = !DILocation(line: 1204, column: 3, scope: !2033)
!2069 = !DILocation(line: 1207, column: 3, scope: !1979)
!2070 = !DILocation(line: 1208, column: 1, scope: !1979)
!2071 = distinct !DISubprogram(name: "coucal_matches", scope: !2, file: !2, line: 511, type: !2072, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!91, !126, !93, !181, !1041}
!2074 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2071, file: !2, line: 511, type: !126)
!2075 = !DILocation(line: 511, column: 49, scope: !2071)
!2076 = !DILocalVariable(name: "pos", arg: 2, scope: !2071, file: !2, line: 511, type: !93)
!2077 = !DILocation(line: 511, column: 67, scope: !2071)
!2078 = !DILocalVariable(name: "name", arg: 3, scope: !2071, file: !2, line: 512, type: !181)
!2079 = !DILocation(line: 512, column: 59, scope: !2071)
!2080 = !DILocalVariable(name: "hashes", arg: 4, scope: !2071, file: !2, line: 513, type: !1041)
!2081 = !DILocation(line: 513, column: 65, scope: !2071)
!2082 = !DILocalVariable(name: "item", scope: !2071, file: !2, line: 514, type: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!2085 = !DILocation(line: 514, column: 28, scope: !2071)
!2086 = !DILocation(line: 514, column: 36, scope: !2071)
!2087 = !DILocation(line: 514, column: 47, scope: !2071)
!2088 = !DILocation(line: 514, column: 53, scope: !2071)
!2089 = !DILocation(line: 515, column: 26, scope: !2071)
!2090 = !DILocation(line: 515, column: 37, scope: !2071)
!2091 = !DILocation(line: 515, column: 43, scope: !2071)
!2092 = !DILocation(line: 515, column: 49, scope: !2071)
!2093 = !DILocation(line: 515, column: 10, scope: !2071)
!2094 = !DILocation(line: 515, column: 3, scope: !2071)
!2095 = distinct !DISubprogram(name: "coucal_matches_", scope: !2, file: !2, line: 501, type: !2096, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!91, !126, !2083, !181, !1041}
!2098 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2095, file: !2, line: 501, type: !126)
!2099 = !DILocation(line: 501, column: 50, scope: !2095)
!2100 = !DILocalVariable(name: "item", arg: 2, scope: !2095, file: !2, line: 502, type: !2083)
!2101 = !DILocation(line: 502, column: 68, scope: !2095)
!2102 = !DILocalVariable(name: "name", arg: 3, scope: !2095, file: !2, line: 503, type: !181)
!2103 = !DILocation(line: 503, column: 60, scope: !2095)
!2104 = !DILocalVariable(name: "hashes", arg: 4, scope: !2095, file: !2, line: 504, type: !1041)
!2105 = !DILocation(line: 504, column: 66, scope: !2095)
!2106 = !DILocation(line: 505, column: 10, scope: !2095)
!2107 = !DILocation(line: 505, column: 16, scope: !2095)
!2108 = !DILocation(line: 505, column: 21, scope: !2095)
!2109 = !DILocation(line: 506, column: 5, scope: !2095)
!2110 = !DILocation(line: 506, column: 8, scope: !2095)
!2111 = !DILocation(line: 506, column: 14, scope: !2095)
!2112 = !DILocation(line: 506, column: 21, scope: !2095)
!2113 = !DILocation(line: 506, column: 30, scope: !2095)
!2114 = !DILocation(line: 506, column: 38, scope: !2095)
!2115 = !DILocation(line: 506, column: 27, scope: !2095)
!2116 = !DILocation(line: 507, column: 5, scope: !2095)
!2117 = !DILocation(line: 507, column: 8, scope: !2095)
!2118 = !DILocation(line: 507, column: 14, scope: !2095)
!2119 = !DILocation(line: 507, column: 21, scope: !2095)
!2120 = !DILocation(line: 507, column: 30, scope: !2095)
!2121 = !DILocation(line: 507, column: 38, scope: !2095)
!2122 = !DILocation(line: 507, column: 27, scope: !2095)
!2123 = !DILocation(line: 508, column: 5, scope: !2095)
!2124 = !DILocation(line: 508, column: 22, scope: !2095)
!2125 = !DILocation(line: 508, column: 33, scope: !2095)
!2126 = !DILocation(line: 508, column: 39, scope: !2095)
!2127 = !DILocation(line: 508, column: 45, scope: !2095)
!2128 = !DILocation(line: 508, column: 8, scope: !2095)
!2129 = !DILocation(line: 0, scope: !2095)
!2130 = !DILocation(line: 505, column: 3, scope: !2095)
!2131 = distinct !DISubprogram(name: "coucal_fetch_value", scope: !2, file: !2, line: 1210, type: !2132, scopeLine: 1211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!847, !126, !181}
!2134 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2131, file: !2, line: 1210, type: !126)
!2135 = !DILocation(line: 1210, column: 56, scope: !2131)
!2136 = !DILocalVariable(name: "name", arg: 2, scope: !2131, file: !2, line: 1211, type: !181)
!2137 = !DILocation(line: 1211, column: 66, scope: !2131)
!2138 = !DILocalVariable(name: "hashes", scope: !2131, file: !2, line: 1212, type: !1042)
!2139 = !DILocation(line: 1212, column: 25, scope: !2131)
!2140 = !DILocation(line: 1212, column: 53, scope: !2131)
!2141 = !DILocation(line: 1212, column: 64, scope: !2131)
!2142 = !DILocation(line: 1212, column: 34, scope: !2131)
!2143 = !DILocation(line: 1213, column: 36, scope: !2131)
!2144 = !DILocation(line: 1213, column: 47, scope: !2131)
!2145 = !DILocation(line: 1213, column: 10, scope: !2131)
!2146 = !DILocation(line: 1213, column: 3, scope: !2131)
!2147 = distinct !DISubprogram(name: "coucal_inc", scope: !2, file: !2, line: 1242, type: !2148, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!91, !126, !181}
!2150 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2147, file: !2, line: 1242, type: !126)
!2151 = !DILocation(line: 1242, column: 23, scope: !2147)
!2152 = !DILocalVariable(name: "name", arg: 2, scope: !2147, file: !2, line: 1242, type: !181)
!2153 = !DILocation(line: 1242, column: 51, scope: !2147)
!2154 = !DILocation(line: 1243, column: 28, scope: !2147)
!2155 = !DILocation(line: 1243, column: 39, scope: !2147)
!2156 = !DILocation(line: 1243, column: 16, scope: !2147)
!2157 = !DILocation(line: 1243, column: 10, scope: !2147)
!2158 = !DILocation(line: 1243, column: 3, scope: !2147)
!2159 = distinct !DISubprogram(name: "coucal_inc_", scope: !2, file: !2, line: 1228, type: !2160, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!93, !126, !181, !93}
!2162 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2159, file: !2, line: 1228, type: !126)
!2163 = !DILocation(line: 1228, column: 34, scope: !2159)
!2164 = !DILocalVariable(name: "name", arg: 2, scope: !2159, file: !2, line: 1228, type: !181)
!2165 = !DILocation(line: 1228, column: 62, scope: !2159)
!2166 = !DILocalVariable(name: "inc", arg: 3, scope: !2159, file: !2, line: 1229, type: !93)
!2167 = !DILocation(line: 1229, column: 34, scope: !2159)
!2168 = !DILocalVariable(name: "value", scope: !2159, file: !2, line: 1230, type: !855)
!2169 = !DILocation(line: 1230, column: 23, scope: !2159)
!2170 = !DILocation(line: 1230, column: 50, scope: !2159)
!2171 = !DILocation(line: 1230, column: 61, scope: !2159)
!2172 = !DILocation(line: 1230, column: 31, scope: !2159)
!2173 = !DILocation(line: 1231, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 1231, column: 7)
!2175 = !DILocation(line: 1231, column: 13, scope: !2174)
!2176 = !DILocation(line: 1231, column: 7, scope: !2159)
!2177 = !DILocation(line: 1232, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1231, column: 22)
!2179 = !DILocation(line: 1232, column: 5, scope: !2178)
!2180 = !DILocation(line: 1232, column: 18, scope: !2178)
!2181 = !DILocation(line: 1233, column: 12, scope: !2178)
!2182 = !DILocation(line: 1233, column: 19, scope: !2178)
!2183 = !DILocation(line: 1233, column: 5, scope: !2178)
!2184 = !DILocalVariable(name: "ret", scope: !2185, file: !2, line: 1236, type: !473)
!2185 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1234, column: 10)
!2186 = !DILocation(line: 1236, column: 15, scope: !2185)
!2187 = !DILocation(line: 1236, column: 34, scope: !2185)
!2188 = !DILocation(line: 1236, column: 45, scope: !2185)
!2189 = !DILocation(line: 1236, column: 51, scope: !2185)
!2190 = !DILocation(line: 1236, column: 21, scope: !2185)
!2191 = !DILocation(line: 1237, column: 5, scope: !2185)
!2192 = !DILocation(line: 1238, column: 12, scope: !2185)
!2193 = !DILocation(line: 1238, column: 5, scope: !2185)
!2194 = !DILocation(line: 1240, column: 1, scope: !2159)
!2195 = distinct !DISubprogram(name: "coucal_dec", scope: !2, file: !2, line: 1246, type: !2148, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2196 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2195, file: !2, line: 1246, type: !126)
!2197 = !DILocation(line: 1246, column: 23, scope: !2195)
!2198 = !DILocalVariable(name: "name", arg: 2, scope: !2195, file: !2, line: 1246, type: !181)
!2199 = !DILocation(line: 1246, column: 51, scope: !2195)
!2200 = !DILocation(line: 1247, column: 28, scope: !2195)
!2201 = !DILocation(line: 1247, column: 39, scope: !2195)
!2202 = !DILocation(line: 1247, column: 16, scope: !2195)
!2203 = !DILocation(line: 1247, column: 10, scope: !2195)
!2204 = !DILocation(line: 1247, column: 3, scope: !2195)
!2205 = distinct !DISubprogram(name: "coucal_exists", scope: !2, file: !2, line: 1250, type: !2148, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2206 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2205, file: !2, line: 1250, type: !126)
!2207 = !DILocation(line: 1250, column: 26, scope: !2205)
!2208 = !DILocalVariable(name: "name", arg: 2, scope: !2205, file: !2, line: 1250, type: !181)
!2209 = !DILocation(line: 1250, column: 54, scope: !2205)
!2210 = !DILocation(line: 1251, column: 28, scope: !2205)
!2211 = !DILocation(line: 1251, column: 39, scope: !2205)
!2212 = !DILocation(line: 1251, column: 10, scope: !2205)
!2213 = !DILocation(line: 1251, column: 3, scope: !2205)
!2214 = distinct !DISubprogram(name: "coucal_remove", scope: !2, file: !2, line: 1297, type: !2148, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2215 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2214, file: !2, line: 1297, type: !126)
!2216 = !DILocation(line: 1297, column: 26, scope: !2214)
!2217 = !DILocalVariable(name: "name", arg: 2, scope: !2214, file: !2, line: 1297, type: !181)
!2218 = !DILocation(line: 1297, column: 54, scope: !2214)
!2219 = !DILocalVariable(name: "hashes", scope: !2214, file: !2, line: 1298, type: !1042)
!2220 = !DILocation(line: 1298, column: 25, scope: !2214)
!2221 = !DILocation(line: 1298, column: 53, scope: !2214)
!2222 = !DILocation(line: 1298, column: 64, scope: !2214)
!2223 = !DILocation(line: 1298, column: 34, scope: !2214)
!2224 = !DILocalVariable(name: "removed", scope: !2214, file: !2, line: 1299, type: !93)
!2225 = !DILocation(line: 1299, column: 10, scope: !2214)
!2226 = !DILocalVariable(name: "ret", scope: !2214, file: !2, line: 1300, type: !473)
!2227 = !DILocation(line: 1300, column: 13, scope: !2214)
!2228 = !DILocation(line: 1300, column: 34, scope: !2214)
!2229 = !DILocation(line: 1300, column: 45, scope: !2214)
!2230 = !DILocation(line: 1300, column: 19, scope: !2214)
!2231 = !DILocation(line: 1302, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 1302, column: 7)
!2233 = !DILocation(line: 1302, column: 7, scope: !2214)
!2234 = !DILocation(line: 1304, column: 5, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1302, column: 12)
!2236 = !DILocation(line: 1305, column: 5, scope: !2235)
!2237 = !DILocation(line: 1305, column: 16, scope: !2235)
!2238 = !DILocation(line: 1305, column: 20, scope: !2235)
!2239 = !DILocation(line: 1308, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 1308, column: 9)
!2241 = !DILocation(line: 1308, column: 20, scope: !2240)
!2242 = !DILocation(line: 1308, column: 26, scope: !2240)
!2243 = !DILocation(line: 1308, column: 31, scope: !2240)
!2244 = !DILocation(line: 1308, column: 36, scope: !2240)
!2245 = !DILocation(line: 1308, column: 39, scope: !2240)
!2246 = !DILocation(line: 1308, column: 47, scope: !2240)
!2247 = !DILocation(line: 1308, column: 9, scope: !2235)
!2248 = !DILocalVariable(name: "i", scope: !2249, file: !2, line: 1309, type: !93)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 1308, column: 63)
!2250 = !DILocation(line: 1309, column: 14, scope: !2249)
!2251 = !DILocation(line: 1310, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 1310, column: 7)
!2253 = !DILocation(line: 1310, column: 11, scope: !2252)
!2254 = !DILocation(line: 1310, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 1310, column: 7)
!2256 = !DILocation(line: 1310, column: 23, scope: !2255)
!2257 = !DILocation(line: 1310, column: 34, scope: !2255)
!2258 = !DILocation(line: 1310, column: 40, scope: !2255)
!2259 = !DILocation(line: 1310, column: 21, scope: !2255)
!2260 = !DILocation(line: 1310, column: 7, scope: !2252)
!2261 = !DILocalVariable(name: "pos1", scope: !2262, file: !2, line: 1311, type: !932)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 1310, column: 52)
!2263 = !DILocation(line: 1311, column: 22, scope: !2262)
!2264 = !DILocation(line: 1312, column: 30, scope: !2262)
!2265 = !DILocation(line: 1312, column: 41, scope: !2262)
!2266 = !DILocation(line: 1312, column: 52, scope: !2262)
!2267 = !DILocation(line: 1312, column: 58, scope: !2262)
!2268 = !DILocation(line: 1312, column: 64, scope: !2262)
!2269 = !DILocation(line: 1312, column: 67, scope: !2262)
!2270 = !DILocation(line: 1312, column: 74, scope: !2262)
!2271 = !DILocation(line: 1312, column: 11, scope: !2262)
!2272 = !DILocalVariable(name: "pos2", scope: !2262, file: !2, line: 1313, type: !932)
!2273 = !DILocation(line: 1313, column: 22, scope: !2262)
!2274 = !DILocation(line: 1314, column: 30, scope: !2262)
!2275 = !DILocation(line: 1314, column: 41, scope: !2262)
!2276 = !DILocation(line: 1314, column: 52, scope: !2262)
!2277 = !DILocation(line: 1314, column: 58, scope: !2262)
!2278 = !DILocation(line: 1314, column: 64, scope: !2262)
!2279 = !DILocation(line: 1314, column: 67, scope: !2262)
!2280 = !DILocation(line: 1314, column: 74, scope: !2262)
!2281 = !DILocation(line: 1314, column: 11, scope: !2262)
!2282 = !DILocation(line: 1315, column: 13, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 1315, column: 13)
!2284 = !DILocation(line: 1315, column: 21, scope: !2283)
!2285 = !DILocation(line: 1315, column: 18, scope: !2283)
!2286 = !DILocation(line: 1315, column: 29, scope: !2283)
!2287 = !DILocation(line: 1315, column: 32, scope: !2283)
!2288 = !DILocation(line: 1315, column: 40, scope: !2283)
!2289 = !DILocation(line: 1315, column: 37, scope: !2283)
!2290 = !DILocation(line: 1315, column: 13, scope: !2262)
!2291 = !DILocation(line: 1316, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 1316, column: 15)
!2293 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1315, column: 49)
!2294 = !DILocation(line: 1316, column: 23, scope: !2292)
!2295 = !DILocation(line: 1316, column: 20, scope: !2292)
!2296 = !DILocation(line: 1316, column: 15, scope: !2293)
!2297 = !DILocation(line: 1317, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 1316, column: 32)
!2299 = !DILocation(line: 1317, column: 24, scope: !2298)
!2300 = !DILocation(line: 1317, column: 30, scope: !2298)
!2301 = !DILocation(line: 1317, column: 38, scope: !2298)
!2302 = !DILocation(line: 1317, column: 49, scope: !2298)
!2303 = !DILocation(line: 1317, column: 55, scope: !2298)
!2304 = !DILocation(line: 1317, column: 61, scope: !2298)
!2305 = !DILocation(line: 1318, column: 11, scope: !2298)
!2306 = !DILocation(line: 1318, column: 22, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 1318, column: 22)
!2308 = !DILocation(line: 1318, column: 30, scope: !2307)
!2309 = !DILocation(line: 1318, column: 27, scope: !2307)
!2310 = !DILocation(line: 1318, column: 22, scope: !2292)
!2311 = !DILocation(line: 1319, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 1318, column: 39)
!2313 = !DILocation(line: 1319, column: 24, scope: !2312)
!2314 = !DILocation(line: 1319, column: 30, scope: !2312)
!2315 = !DILocation(line: 1319, column: 38, scope: !2312)
!2316 = !DILocation(line: 1319, column: 49, scope: !2312)
!2317 = !DILocation(line: 1319, column: 55, scope: !2312)
!2318 = !DILocation(line: 1319, column: 61, scope: !2312)
!2319 = !DILocation(line: 1320, column: 11, scope: !2312)
!2320 = !DILocation(line: 1321, column: 11, scope: !2293)
!2321 = !DILocation(line: 1321, column: 18, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 1321, column: 11)
!2323 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 1321, column: 11)
!2324 = !DILocation(line: 1321, column: 20, scope: !2322)
!2325 = !DILocation(line: 1321, column: 26, scope: !2322)
!2326 = !DILocation(line: 1321, column: 37, scope: !2322)
!2327 = !DILocation(line: 1321, column: 43, scope: !2322)
!2328 = !DILocation(line: 1321, column: 24, scope: !2322)
!2329 = !DILocation(line: 1321, column: 11, scope: !2323)
!2330 = !DILocation(line: 1322, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 1321, column: 55)
!2332 = !DILocation(line: 1322, column: 24, scope: !2331)
!2333 = !DILocation(line: 1322, column: 30, scope: !2331)
!2334 = !DILocation(line: 1322, column: 36, scope: !2331)
!2335 = !DILocation(line: 1322, column: 41, scope: !2331)
!2336 = !DILocation(line: 1322, column: 52, scope: !2331)
!2337 = !DILocation(line: 1322, column: 58, scope: !2331)
!2338 = !DILocation(line: 1322, column: 64, scope: !2331)
!2339 = !DILocation(line: 1322, column: 66, scope: !2331)
!2340 = !DILocation(line: 1323, column: 11, scope: !2331)
!2341 = !DILocation(line: 1321, column: 51, scope: !2322)
!2342 = !DILocation(line: 1321, column: 11, scope: !2322)
!2343 = distinct !{!2343, !2329, !2344, !615}
!2344 = !DILocation(line: 1323, column: 11, scope: !2323)
!2345 = !DILocation(line: 1324, column: 11, scope: !2293)
!2346 = !DILocation(line: 1324, column: 22, scope: !2293)
!2347 = !DILocation(line: 1324, column: 28, scope: !2293)
!2348 = !DILocation(line: 1324, column: 32, scope: !2293)
!2349 = !DILocation(line: 1325, column: 24, scope: !2293)
!2350 = !DILocation(line: 1326, column: 19, scope: !2293)
!2351 = !DILocation(line: 1326, column: 30, scope: !2293)
!2352 = !DILocation(line: 1326, column: 36, scope: !2293)
!2353 = !DILocation(line: 1326, column: 13, scope: !2293)
!2354 = !DILocation(line: 1325, column: 11, scope: !2293)
!2355 = !DILocation(line: 1327, column: 11, scope: !2293)
!2356 = !DILocation(line: 1329, column: 7, scope: !2262)
!2357 = !DILocation(line: 1310, column: 48, scope: !2255)
!2358 = !DILocation(line: 1310, column: 7, scope: !2255)
!2359 = distinct !{!2359, !2260, !2360, !615}
!2360 = !DILocation(line: 1329, column: 7, scope: !2252)
!2361 = !DILocation(line: 1330, column: 5, scope: !2249)
!2362 = !DILocation(line: 1331, column: 3, scope: !2235)
!2363 = !DILocation(line: 1333, column: 10, scope: !2214)
!2364 = !DILocation(line: 1333, column: 3, scope: !2214)
!2365 = distinct !DISubprogram(name: "coucal_remove_", scope: !2, file: !2, line: 1254, type: !2366, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!91, !126, !181, !1041, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2369 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2365, file: !2, line: 1254, type: !126)
!2370 = !DILocation(line: 1254, column: 34, scope: !2365)
!2371 = !DILocalVariable(name: "name", arg: 2, scope: !2365, file: !2, line: 1254, type: !181)
!2372 = !DILocation(line: 1254, column: 62, scope: !2365)
!2373 = !DILocalVariable(name: "hashes", arg: 3, scope: !2365, file: !2, line: 1255, type: !1041)
!2374 = !DILocation(line: 1255, column: 50, scope: !2365)
!2375 = !DILocalVariable(name: "removed", arg: 4, scope: !2365, file: !2, line: 1255, type: !2368)
!2376 = !DILocation(line: 1255, column: 66, scope: !2365)
!2377 = !DILocalVariable(name: "pos", scope: !2365, file: !2, line: 1256, type: !93)
!2378 = !DILocation(line: 1256, column: 10, scope: !2365)
!2379 = !DILocation(line: 1259, column: 28, scope: !2365)
!2380 = !DILocation(line: 1259, column: 39, scope: !2365)
!2381 = !DILocation(line: 1259, column: 47, scope: !2365)
!2382 = !DILocation(line: 1259, column: 9, scope: !2365)
!2383 = !DILocation(line: 1259, column: 7, scope: !2365)
!2384 = !DILocation(line: 1260, column: 22, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 1260, column: 7)
!2386 = !DILocation(line: 1260, column: 33, scope: !2385)
!2387 = !DILocation(line: 1260, column: 38, scope: !2385)
!2388 = !DILocation(line: 1260, column: 44, scope: !2385)
!2389 = !DILocation(line: 1260, column: 7, scope: !2385)
!2390 = !DILocation(line: 1260, column: 7, scope: !2365)
!2391 = !DILocation(line: 1261, column: 21, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 1260, column: 53)
!2393 = !DILocation(line: 1261, column: 33, scope: !2392)
!2394 = !DILocation(line: 1261, column: 44, scope: !2392)
!2395 = !DILocation(line: 1261, column: 50, scope: !2392)
!2396 = !DILocation(line: 1261, column: 5, scope: !2392)
!2397 = !DILocation(line: 1262, column: 16, scope: !2392)
!2398 = !DILocation(line: 1262, column: 6, scope: !2392)
!2399 = !DILocation(line: 1262, column: 14, scope: !2392)
!2400 = !DILocation(line: 1263, column: 5, scope: !2392)
!2401 = !DILocation(line: 1267, column: 28, scope: !2365)
!2402 = !DILocation(line: 1267, column: 39, scope: !2365)
!2403 = !DILocation(line: 1267, column: 47, scope: !2365)
!2404 = !DILocation(line: 1267, column: 9, scope: !2365)
!2405 = !DILocation(line: 1267, column: 7, scope: !2365)
!2406 = !DILocation(line: 1268, column: 22, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 1268, column: 7)
!2408 = !DILocation(line: 1268, column: 33, scope: !2407)
!2409 = !DILocation(line: 1268, column: 38, scope: !2407)
!2410 = !DILocation(line: 1268, column: 44, scope: !2407)
!2411 = !DILocation(line: 1268, column: 7, scope: !2407)
!2412 = !DILocation(line: 1268, column: 7, scope: !2365)
!2413 = !DILocation(line: 1269, column: 21, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 1268, column: 53)
!2415 = !DILocation(line: 1269, column: 33, scope: !2414)
!2416 = !DILocation(line: 1269, column: 44, scope: !2414)
!2417 = !DILocation(line: 1269, column: 50, scope: !2414)
!2418 = !DILocation(line: 1269, column: 5, scope: !2414)
!2419 = !DILocation(line: 1270, column: 16, scope: !2414)
!2420 = !DILocation(line: 1270, column: 6, scope: !2414)
!2421 = !DILocation(line: 1270, column: 14, scope: !2414)
!2422 = !DILocation(line: 1271, column: 5, scope: !2414)
!2423 = !DILocation(line: 1275, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 1275, column: 7)
!2425 = !DILocation(line: 1275, column: 18, scope: !2424)
!2426 = !DILocation(line: 1275, column: 24, scope: !2424)
!2427 = !DILocation(line: 1275, column: 29, scope: !2424)
!2428 = !DILocation(line: 1275, column: 7, scope: !2365)
!2429 = !DILocalVariable(name: "i", scope: !2430, file: !2, line: 1276, type: !93)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 1275, column: 35)
!2431 = !DILocation(line: 1276, column: 12, scope: !2430)
!2432 = !DILocation(line: 1277, column: 11, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 1277, column: 5)
!2434 = !DILocation(line: 1277, column: 9, scope: !2433)
!2435 = !DILocation(line: 1277, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 1277, column: 5)
!2437 = !DILocation(line: 1277, column: 21, scope: !2436)
!2438 = !DILocation(line: 1277, column: 32, scope: !2436)
!2439 = !DILocation(line: 1277, column: 38, scope: !2436)
!2440 = !DILocation(line: 1277, column: 19, scope: !2436)
!2441 = !DILocation(line: 1277, column: 5, scope: !2433)
!2442 = !DILocation(line: 1278, column: 27, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 1278, column: 11)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 1277, column: 50)
!2445 = !DILocation(line: 1278, column: 39, scope: !2443)
!2446 = !DILocation(line: 1278, column: 50, scope: !2443)
!2447 = !DILocation(line: 1278, column: 56, scope: !2443)
!2448 = !DILocation(line: 1278, column: 62, scope: !2443)
!2449 = !DILocation(line: 1278, column: 66, scope: !2443)
!2450 = !DILocation(line: 1279, column: 28, scope: !2443)
!2451 = !DILocation(line: 1278, column: 11, scope: !2443)
!2452 = !DILocation(line: 1278, column: 11, scope: !2444)
!2453 = !DILocation(line: 1280, column: 25, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 1279, column: 37)
!2455 = !DILocation(line: 1280, column: 37, scope: !2454)
!2456 = !DILocation(line: 1280, column: 48, scope: !2454)
!2457 = !DILocation(line: 1280, column: 54, scope: !2454)
!2458 = !DILocation(line: 1280, column: 60, scope: !2454)
!2459 = !DILocation(line: 1280, column: 9, scope: !2454)
!2460 = !DILocation(line: 1281, column: 9, scope: !2454)
!2461 = !DILocation(line: 1281, column: 16, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !2, line: 1281, column: 9)
!2463 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 1281, column: 9)
!2464 = !DILocation(line: 1281, column: 18, scope: !2462)
!2465 = !DILocation(line: 1281, column: 24, scope: !2462)
!2466 = !DILocation(line: 1281, column: 35, scope: !2462)
!2467 = !DILocation(line: 1281, column: 41, scope: !2462)
!2468 = !DILocation(line: 1281, column: 22, scope: !2462)
!2469 = !DILocation(line: 1281, column: 9, scope: !2463)
!2470 = !DILocation(line: 1282, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1281, column: 53)
!2472 = !DILocation(line: 1282, column: 22, scope: !2471)
!2473 = !DILocation(line: 1282, column: 28, scope: !2471)
!2474 = !DILocation(line: 1282, column: 34, scope: !2471)
!2475 = !DILocation(line: 1282, column: 39, scope: !2471)
!2476 = !DILocation(line: 1282, column: 50, scope: !2471)
!2477 = !DILocation(line: 1282, column: 56, scope: !2471)
!2478 = !DILocation(line: 1282, column: 62, scope: !2471)
!2479 = !DILocation(line: 1282, column: 64, scope: !2471)
!2480 = !DILocation(line: 1283, column: 9, scope: !2471)
!2481 = !DILocation(line: 1281, column: 49, scope: !2462)
!2482 = !DILocation(line: 1281, column: 9, scope: !2462)
!2483 = distinct !{!2483, !2469, !2484, !615}
!2484 = !DILocation(line: 1283, column: 9, scope: !2463)
!2485 = !DILocation(line: 1284, column: 9, scope: !2454)
!2486 = !DILocation(line: 1284, column: 20, scope: !2454)
!2487 = !DILocation(line: 1284, column: 26, scope: !2454)
!2488 = !DILocation(line: 1284, column: 30, scope: !2454)
!2489 = !DILocation(line: 1285, column: 10, scope: !2454)
!2490 = !DILocation(line: 1285, column: 18, scope: !2454)
!2491 = !DILocation(line: 1286, column: 22, scope: !2454)
!2492 = !DILocation(line: 1287, column: 17, scope: !2454)
!2493 = !DILocation(line: 1287, column: 28, scope: !2454)
!2494 = !DILocation(line: 1287, column: 34, scope: !2454)
!2495 = !DILocation(line: 1287, column: 11, scope: !2454)
!2496 = !DILocation(line: 1286, column: 9, scope: !2454)
!2497 = !DILocation(line: 1288, column: 9, scope: !2454)
!2498 = !DILocation(line: 1290, column: 5, scope: !2444)
!2499 = !DILocation(line: 1277, column: 46, scope: !2436)
!2500 = !DILocation(line: 1277, column: 5, scope: !2436)
!2501 = distinct !{!2501, !2441, !2502, !615}
!2502 = !DILocation(line: 1290, column: 5, scope: !2433)
!2503 = !DILocation(line: 1291, column: 3, scope: !2430)
!2504 = !DILocation(line: 1294, column: 3, scope: !2365)
!2505 = !DILocation(line: 1295, column: 1, scope: !2365)
!2506 = distinct !DISubprogram(name: "coucal_readptr", scope: !2, file: !2, line: 1336, type: !1950, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2507 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2506, file: !2, line: 1336, type: !126)
!2508 = !DILocation(line: 1336, column: 27, scope: !2506)
!2509 = !DILocalVariable(name: "name", arg: 2, scope: !2506, file: !2, line: 1336, type: !181)
!2510 = !DILocation(line: 1336, column: 55, scope: !2506)
!2511 = !DILocalVariable(name: "value", arg: 3, scope: !2506, file: !2, line: 1336, type: !1952)
!2512 = !DILocation(line: 1336, column: 72, scope: !2506)
!2513 = !DILocalVariable(name: "ret", scope: !2506, file: !2, line: 1337, type: !91)
!2514 = !DILocation(line: 1337, column: 7, scope: !2506)
!2515 = !DILocation(line: 1339, column: 4, scope: !2506)
!2516 = !DILocation(line: 1339, column: 10, scope: !2506)
!2517 = !DILocation(line: 1340, column: 21, scope: !2506)
!2518 = !DILocation(line: 1340, column: 32, scope: !2506)
!2519 = !DILocation(line: 1340, column: 38, scope: !2506)
!2520 = !DILocation(line: 1340, column: 9, scope: !2506)
!2521 = !DILocation(line: 1340, column: 7, scope: !2506)
!2522 = !DILocation(line: 1341, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 1341, column: 7)
!2524 = !DILocation(line: 1341, column: 7, scope: !2523)
!2525 = !DILocation(line: 1341, column: 14, scope: !2523)
!2526 = !DILocation(line: 1341, column: 7, scope: !2506)
!2527 = !DILocation(line: 1342, column: 9, scope: !2523)
!2528 = !DILocation(line: 1342, column: 5, scope: !2523)
!2529 = !DILocation(line: 1343, column: 10, scope: !2506)
!2530 = !DILocation(line: 1343, column: 3, scope: !2506)
!2531 = distinct !DISubprogram(name: "coucal_get_intptr", scope: !2, file: !2, line: 1346, type: !2532, scopeLine: 1346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!111, !126, !181}
!2534 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2531, file: !2, line: 1346, type: !126)
!2535 = !DILocation(line: 1346, column: 35, scope: !2531)
!2536 = !DILocalVariable(name: "name", arg: 2, scope: !2531, file: !2, line: 1346, type: !181)
!2537 = !DILocation(line: 1346, column: 63, scope: !2531)
!2538 = !DILocalVariable(name: "value", scope: !2531, file: !2, line: 1347, type: !111)
!2539 = !DILocation(line: 1347, column: 12, scope: !2531)
!2540 = !DILocation(line: 1348, column: 20, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 1348, column: 7)
!2542 = !DILocation(line: 1348, column: 31, scope: !2541)
!2543 = !DILocation(line: 1348, column: 8, scope: !2541)
!2544 = !DILocation(line: 1348, column: 7, scope: !2531)
!2545 = !DILocation(line: 1349, column: 5, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 1348, column: 46)
!2547 = !DILocation(line: 1351, column: 10, scope: !2531)
!2548 = !DILocation(line: 1351, column: 3, scope: !2531)
!2549 = !DILocation(line: 1352, column: 1, scope: !2531)
!2550 = distinct !DISubprogram(name: "coucal_new", scope: !2, file: !2, line: 1362, type: !2551, scopeLine: 1362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!126, !93}
!2553 = !DILocalVariable(name: "initial_size", arg: 1, scope: !2550, file: !2, line: 1362, type: !93)
!2554 = !DILocation(line: 1362, column: 26, scope: !2550)
!2555 = !DILocalVariable(name: "lg_size", scope: !2550, file: !2, line: 1363, type: !932)
!2556 = !DILocation(line: 1363, column: 16, scope: !2550)
!2557 = !DILocation(line: 1363, column: 42, scope: !2550)
!2558 = !DILocation(line: 1363, column: 26, scope: !2550)
!2559 = !DILocalVariable(name: "lg_valid", scope: !2550, file: !2, line: 1364, type: !473)
!2560 = !DILocation(line: 1364, column: 13, scope: !2550)
!2561 = !DILocation(line: 1364, column: 50, scope: !2550)
!2562 = !DILocation(line: 1364, column: 24, scope: !2550)
!2563 = !DILocalVariable(name: "hashtable", scope: !2550, file: !2, line: 1365, type: !126)
!2564 = !DILocation(line: 1365, column: 10, scope: !2550)
!2565 = !DILocation(line: 1365, column: 22, scope: !2550)
!2566 = !DILocation(line: 1366, column: 16, scope: !2550)
!2567 = !DILocalVariable(name: "items", scope: !2550, file: !2, line: 1367, type: !1740)
!2568 = !DILocation(line: 1367, column: 22, scope: !2550)
!2569 = !DILocation(line: 1368, column: 28, scope: !2550)
!2570 = !DILocation(line: 1368, column: 21, scope: !2550)
!2571 = !DILocation(line: 1370, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2550, file: !2, line: 1370, column: 7)
!2573 = !DILocation(line: 1370, column: 16, scope: !2572)
!2574 = !DILocation(line: 1370, column: 19, scope: !2572)
!2575 = !DILocation(line: 1370, column: 25, scope: !2572)
!2576 = !DILocation(line: 1370, column: 33, scope: !2572)
!2577 = !DILocation(line: 1370, column: 36, scope: !2572)
!2578 = !DILocation(line: 1370, column: 46, scope: !2572)
!2579 = !DILocation(line: 1370, column: 7, scope: !2550)
!2580 = !DILocation(line: 1371, column: 26, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 1370, column: 55)
!2582 = !DILocation(line: 1371, column: 5, scope: !2581)
!2583 = !DILocation(line: 1371, column: 16, scope: !2581)
!2584 = !DILocation(line: 1371, column: 24, scope: !2581)
!2585 = !DILocation(line: 1372, column: 24, scope: !2581)
!2586 = !DILocation(line: 1372, column: 5, scope: !2581)
!2587 = !DILocation(line: 1372, column: 16, scope: !2581)
!2588 = !DILocation(line: 1372, column: 22, scope: !2581)
!2589 = !DILocation(line: 1373, column: 5, scope: !2581)
!2590 = !DILocation(line: 1373, column: 16, scope: !2581)
!2591 = !DILocation(line: 1373, column: 21, scope: !2581)
!2592 = !DILocation(line: 1374, column: 5, scope: !2581)
!2593 = !DILocation(line: 1374, column: 16, scope: !2581)
!2594 = !DILocation(line: 1374, column: 22, scope: !2581)
!2595 = !DILocation(line: 1374, column: 27, scope: !2581)
!2596 = !DILocation(line: 1375, column: 5, scope: !2581)
!2597 = !DILocation(line: 1375, column: 16, scope: !2581)
!2598 = !DILocation(line: 1375, column: 21, scope: !2581)
!2599 = !DILocation(line: 1375, column: 28, scope: !2581)
!2600 = !DILocation(line: 1376, column: 5, scope: !2581)
!2601 = !DILocation(line: 1376, column: 16, scope: !2581)
!2602 = !DILocation(line: 1376, column: 21, scope: !2581)
!2603 = !DILocation(line: 1376, column: 26, scope: !2581)
!2604 = !DILocation(line: 1377, column: 5, scope: !2581)
!2605 = !DILocation(line: 1377, column: 16, scope: !2581)
!2606 = !DILocation(line: 1377, column: 21, scope: !2581)
!2607 = !DILocation(line: 1377, column: 30, scope: !2581)
!2608 = !DILocation(line: 1378, column: 5, scope: !2581)
!2609 = !DILocation(line: 1378, column: 16, scope: !2581)
!2610 = !DILocation(line: 1378, column: 21, scope: !2581)
!2611 = !DILocation(line: 1378, column: 26, scope: !2581)
!2612 = !DILocation(line: 1379, column: 5, scope: !2581)
!2613 = !DILocation(line: 1379, column: 16, scope: !2581)
!2614 = !DILocation(line: 1379, column: 22, scope: !2581)
!2615 = !DILocation(line: 1379, column: 37, scope: !2581)
!2616 = !DILocation(line: 1380, column: 5, scope: !2581)
!2617 = !DILocation(line: 1380, column: 16, scope: !2581)
!2618 = !DILocation(line: 1380, column: 22, scope: !2581)
!2619 = !DILocation(line: 1380, column: 34, scope: !2581)
!2620 = !DILocation(line: 1381, column: 5, scope: !2581)
!2621 = !DILocation(line: 1381, column: 16, scope: !2581)
!2622 = !DILocation(line: 1381, column: 22, scope: !2581)
!2623 = !DILocation(line: 1381, column: 32, scope: !2581)
!2624 = !DILocation(line: 1382, column: 5, scope: !2581)
!2625 = !DILocation(line: 1382, column: 16, scope: !2581)
!2626 = !DILocation(line: 1382, column: 22, scope: !2581)
!2627 = !DILocation(line: 1382, column: 35, scope: !2581)
!2628 = !DILocation(line: 1383, column: 5, scope: !2581)
!2629 = !DILocation(line: 1383, column: 16, scope: !2581)
!2630 = !DILocation(line: 1383, column: 22, scope: !2581)
!2631 = !DILocation(line: 1383, column: 33, scope: !2581)
!2632 = !DILocation(line: 1384, column: 5, scope: !2581)
!2633 = !DILocation(line: 1384, column: 16, scope: !2581)
!2634 = !DILocation(line: 1384, column: 22, scope: !2581)
!2635 = !DILocation(line: 1384, column: 41, scope: !2581)
!2636 = !DILocation(line: 1385, column: 5, scope: !2581)
!2637 = !DILocation(line: 1385, column: 16, scope: !2581)
!2638 = !DILocation(line: 1385, column: 22, scope: !2581)
!2639 = !DILocation(line: 1385, column: 41, scope: !2581)
!2640 = !DILocation(line: 1386, column: 5, scope: !2581)
!2641 = !DILocation(line: 1386, column: 16, scope: !2581)
!2642 = !DILocation(line: 1386, column: 22, scope: !2581)
!2643 = !DILocation(line: 1386, column: 35, scope: !2581)
!2644 = !DILocation(line: 1387, column: 5, scope: !2581)
!2645 = !DILocation(line: 1387, column: 16, scope: !2581)
!2646 = !DILocation(line: 1387, column: 23, scope: !2581)
!2647 = !DILocation(line: 1387, column: 29, scope: !2581)
!2648 = !DILocation(line: 1387, column: 34, scope: !2581)
!2649 = !DILocation(line: 1388, column: 5, scope: !2581)
!2650 = !DILocation(line: 1388, column: 16, scope: !2581)
!2651 = !DILocation(line: 1388, column: 23, scope: !2581)
!2652 = !DILocation(line: 1388, column: 29, scope: !2581)
!2653 = !DILocation(line: 1388, column: 33, scope: !2581)
!2654 = !DILocation(line: 1389, column: 5, scope: !2581)
!2655 = !DILocation(line: 1389, column: 16, scope: !2581)
!2656 = !DILocation(line: 1389, column: 23, scope: !2581)
!2657 = !DILocation(line: 1389, column: 27, scope: !2581)
!2658 = !DILocation(line: 1389, column: 31, scope: !2581)
!2659 = !DILocation(line: 1390, column: 5, scope: !2581)
!2660 = !DILocation(line: 1390, column: 16, scope: !2581)
!2661 = !DILocation(line: 1390, column: 23, scope: !2581)
!2662 = !DILocation(line: 1390, column: 27, scope: !2581)
!2663 = !DILocation(line: 1390, column: 32, scope: !2581)
!2664 = !DILocation(line: 1391, column: 5, scope: !2581)
!2665 = !DILocation(line: 1391, column: 16, scope: !2581)
!2666 = !DILocation(line: 1391, column: 23, scope: !2581)
!2667 = !DILocation(line: 1391, column: 27, scope: !2581)
!2668 = !DILocation(line: 1391, column: 32, scope: !2581)
!2669 = !DILocation(line: 1392, column: 5, scope: !2581)
!2670 = !DILocation(line: 1392, column: 16, scope: !2581)
!2671 = !DILocation(line: 1392, column: 23, scope: !2581)
!2672 = !DILocation(line: 1392, column: 27, scope: !2581)
!2673 = !DILocation(line: 1392, column: 34, scope: !2581)
!2674 = !DILocation(line: 1393, column: 5, scope: !2581)
!2675 = !DILocation(line: 1393, column: 16, scope: !2581)
!2676 = !DILocation(line: 1393, column: 23, scope: !2581)
!2677 = !DILocation(line: 1393, column: 27, scope: !2581)
!2678 = !DILocation(line: 1393, column: 31, scope: !2581)
!2679 = !DILocation(line: 1394, column: 5, scope: !2581)
!2680 = !DILocation(line: 1394, column: 16, scope: !2581)
!2681 = !DILocation(line: 1394, column: 23, scope: !2581)
!2682 = !DILocation(line: 1394, column: 29, scope: !2581)
!2683 = !DILocation(line: 1394, column: 33, scope: !2581)
!2684 = !DILocation(line: 1395, column: 5, scope: !2581)
!2685 = !DILocation(line: 1395, column: 16, scope: !2581)
!2686 = !DILocation(line: 1395, column: 23, scope: !2581)
!2687 = !DILocation(line: 1395, column: 29, scope: !2581)
!2688 = !DILocation(line: 1395, column: 35, scope: !2581)
!2689 = !DILocation(line: 1396, column: 5, scope: !2581)
!2690 = !DILocation(line: 1396, column: 16, scope: !2581)
!2691 = !DILocation(line: 1396, column: 23, scope: !2581)
!2692 = !DILocation(line: 1396, column: 29, scope: !2581)
!2693 = !DILocation(line: 1396, column: 34, scope: !2581)
!2694 = !DILocation(line: 1397, column: 5, scope: !2581)
!2695 = !DILocation(line: 1397, column: 16, scope: !2581)
!2696 = !DILocation(line: 1397, column: 23, scope: !2581)
!2697 = !DILocation(line: 1397, column: 29, scope: !2581)
!2698 = !DILocation(line: 1397, column: 33, scope: !2581)
!2699 = !DILocation(line: 1398, column: 5, scope: !2581)
!2700 = !DILocation(line: 1398, column: 16, scope: !2581)
!2701 = !DILocation(line: 1398, column: 23, scope: !2581)
!2702 = !DILocation(line: 1398, column: 29, scope: !2581)
!2703 = !DILocation(line: 1398, column: 33, scope: !2581)
!2704 = !DILocation(line: 1399, column: 5, scope: !2581)
!2705 = !DILocation(line: 1399, column: 16, scope: !2581)
!2706 = !DILocation(line: 1399, column: 23, scope: !2581)
!2707 = !DILocation(line: 1399, column: 29, scope: !2581)
!2708 = !DILocation(line: 1399, column: 35, scope: !2581)
!2709 = !DILocation(line: 1400, column: 5, scope: !2581)
!2710 = !DILocation(line: 1400, column: 16, scope: !2581)
!2711 = !DILocation(line: 1400, column: 23, scope: !2581)
!2712 = !DILocation(line: 1400, column: 29, scope: !2581)
!2713 = !DILocation(line: 1400, column: 33, scope: !2581)
!2714 = !DILocation(line: 1401, column: 12, scope: !2581)
!2715 = !DILocation(line: 1401, column: 5, scope: !2581)
!2716 = !DILocation(line: 1403, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2550, file: !2, line: 1403, column: 7)
!2718 = !DILocation(line: 1403, column: 13, scope: !2717)
!2719 = !DILocation(line: 1403, column: 7, scope: !2550)
!2720 = !DILocation(line: 1404, column: 10, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 1403, column: 22)
!2722 = !DILocation(line: 1404, column: 5, scope: !2721)
!2723 = !DILocation(line: 1405, column: 3, scope: !2721)
!2724 = !DILocation(line: 1406, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2550, file: !2, line: 1406, column: 7)
!2726 = !DILocation(line: 1406, column: 17, scope: !2725)
!2727 = !DILocation(line: 1406, column: 7, scope: !2550)
!2728 = !DILocation(line: 1407, column: 10, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !2, line: 1406, column: 26)
!2730 = !DILocation(line: 1407, column: 5, scope: !2729)
!2731 = !DILocation(line: 1408, column: 3, scope: !2729)
!2732 = !DILocation(line: 1409, column: 3, scope: !2550)
!2733 = !DILocation(line: 1410, column: 1, scope: !2550)
!2734 = distinct !DISubprogram(name: "coucal_get_pow2", scope: !2, file: !2, line: 1354, type: !2735, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!93, !93}
!2737 = !DILocalVariable(name: "initial_size", arg: 1, scope: !2734, file: !2, line: 1354, type: !93)
!2738 = !DILocation(line: 1354, column: 53, scope: !2734)
!2739 = !DILocalVariable(name: "size", scope: !2734, file: !2, line: 1355, type: !93)
!2740 = !DILocation(line: 1355, column: 10, scope: !2734)
!2741 = !DILocation(line: 1356, column: 12, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1356, column: 3)
!2743 = !DILocation(line: 1356, column: 7, scope: !2742)
!2744 = !DILocation(line: 1357, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 1356, column: 3)
!2746 = !DILocation(line: 1357, column: 12, scope: !2745)
!2747 = !DILocation(line: 1357, column: 32, scope: !2745)
!2748 = !DILocation(line: 1357, column: 35, scope: !2745)
!2749 = !DILocation(line: 1357, column: 48, scope: !2745)
!2750 = !DILocation(line: 1357, column: 46, scope: !2745)
!2751 = !DILocation(line: 0, scope: !2745)
!2752 = !DILocation(line: 1356, column: 3, scope: !2742)
!2753 = !DILocation(line: 1358, column: 11, scope: !2745)
!2754 = !DILocation(line: 1356, column: 3, scope: !2745)
!2755 = distinct !{!2755, !2752, !2756, !615}
!2756 = !DILocation(line: 1358, column: 15, scope: !2742)
!2757 = !DILocation(line: 1359, column: 10, scope: !2734)
!2758 = !DILocation(line: 1359, column: 3, scope: !2734)
!2759 = distinct !DISubprogram(name: "coucal_created", scope: !2, file: !2, line: 1412, type: !2760, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!91, !126}
!2762 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2759, file: !2, line: 1412, type: !126)
!2763 = !DILocation(line: 1412, column: 27, scope: !2759)
!2764 = !DILocation(line: 1413, column: 10, scope: !2759)
!2765 = !DILocation(line: 1413, column: 20, scope: !2759)
!2766 = !DILocation(line: 1413, column: 28, scope: !2759)
!2767 = !DILocation(line: 1413, column: 31, scope: !2759)
!2768 = !DILocation(line: 1413, column: 42, scope: !2759)
!2769 = !DILocation(line: 1413, column: 48, scope: !2759)
!2770 = !DILocation(line: 0, scope: !2759)
!2771 = !DILocation(line: 1413, column: 3, scope: !2759)
!2772 = distinct !DISubprogram(name: "coucal_value_is_malloc", scope: !2, file: !2, line: 1416, type: !2773, scopeLine: 1416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !126, !91}
!2775 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2772, file: !2, line: 1416, type: !126)
!2776 = !DILocation(line: 1416, column: 36, scope: !2772)
!2777 = !DILocalVariable(name: "flag", arg: 2, scope: !2772, file: !2, line: 1416, type: !91)
!2778 = !DILocation(line: 1416, column: 51, scope: !2772)
!2779 = !DILocation(line: 1417, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1417, column: 7)
!2781 = !DILocation(line: 1417, column: 7, scope: !2772)
!2782 = !DILocation(line: 1418, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 1418, column: 9)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1417, column: 13)
!2785 = !DILocation(line: 1418, column: 20, scope: !2783)
!2786 = !DILocation(line: 1418, column: 27, scope: !2783)
!2787 = !DILocation(line: 1418, column: 33, scope: !2783)
!2788 = !DILocation(line: 1418, column: 38, scope: !2783)
!2789 = !DILocation(line: 1418, column: 9, scope: !2784)
!2790 = !DILocation(line: 1419, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 1418, column: 47)
!2792 = !DILocation(line: 1419, column: 18, scope: !2791)
!2793 = !DILocation(line: 1419, column: 25, scope: !2791)
!2794 = !DILocation(line: 1419, column: 31, scope: !2791)
!2795 = !DILocation(line: 1419, column: 36, scope: !2791)
!2796 = !DILocation(line: 1420, column: 7, scope: !2791)
!2797 = !DILocation(line: 1420, column: 18, scope: !2791)
!2798 = !DILocation(line: 1420, column: 25, scope: !2791)
!2799 = !DILocation(line: 1420, column: 31, scope: !2791)
!2800 = !DILocation(line: 1420, column: 35, scope: !2791)
!2801 = !DILocation(line: 1421, column: 5, scope: !2791)
!2802 = !DILocation(line: 1422, column: 3, scope: !2784)
!2803 = !DILocation(line: 1423, column: 5, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1422, column: 10)
!2805 = !DILocation(line: 1423, column: 16, scope: !2804)
!2806 = !DILocation(line: 1423, column: 23, scope: !2804)
!2807 = !DILocation(line: 1423, column: 29, scope: !2804)
!2808 = !DILocation(line: 1423, column: 34, scope: !2804)
!2809 = !DILocation(line: 1424, column: 5, scope: !2804)
!2810 = !DILocation(line: 1424, column: 16, scope: !2804)
!2811 = !DILocation(line: 1424, column: 23, scope: !2804)
!2812 = !DILocation(line: 1424, column: 29, scope: !2804)
!2813 = !DILocation(line: 1424, column: 33, scope: !2804)
!2814 = !DILocation(line: 1426, column: 1, scope: !2772)
!2815 = distinct !DISubprogram(name: "coucal_default_free_handler", scope: !2, file: !2, line: 789, type: !169, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2815, file: !2, line: 789, type: !171)
!2817 = !DILocation(line: 789, column: 55, scope: !2815)
!2818 = !DILocalVariable(name: "value", arg: 2, scope: !2815, file: !2, line: 790, type: !107)
!2819 = !DILocation(line: 790, column: 54, scope: !2815)
!2820 = !DILocation(line: 791, column: 10, scope: !2815)
!2821 = !DILocation(line: 792, column: 13, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 792, column: 7)
!2823 = !DILocation(line: 792, column: 17, scope: !2822)
!2824 = !DILocation(line: 792, column: 7, scope: !2815)
!2825 = !DILocation(line: 793, column: 16, scope: !2822)
!2826 = !DILocation(line: 793, column: 5, scope: !2822)
!2827 = !DILocation(line: 794, column: 1, scope: !2815)
!2828 = distinct !DISubprogram(name: "coucal_set_name", scope: !2, file: !2, line: 1428, type: !2829, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !126, !181}
!2831 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2828, file: !2, line: 1428, type: !126)
!2832 = !DILocation(line: 1428, column: 29, scope: !2828)
!2833 = !DILocalVariable(name: "name", arg: 2, scope: !2828, file: !2, line: 1428, type: !181)
!2834 = !DILocation(line: 1428, column: 57, scope: !2828)
!2835 = !DILocation(line: 1429, column: 34, scope: !2828)
!2836 = !DILocation(line: 1429, column: 3, scope: !2828)
!2837 = !DILocation(line: 1429, column: 14, scope: !2828)
!2838 = !DILocation(line: 1429, column: 21, scope: !2828)
!2839 = !DILocation(line: 1429, column: 27, scope: !2828)
!2840 = !DILocation(line: 1429, column: 32, scope: !2828)
!2841 = !DILocation(line: 1430, column: 1, scope: !2828)
!2842 = distinct !DISubprogram(name: "coucal_value_set_value_handler", scope: !2, file: !2, line: 1432, type: !2843, scopeLine: 1434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !126, !167, !171}
!2845 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2842, file: !2, line: 1432, type: !126)
!2846 = !DILocation(line: 1432, column: 44, scope: !2842)
!2847 = !DILocalVariable(name: "free", arg: 2, scope: !2842, file: !2, line: 1433, type: !167)
!2848 = !DILocation(line: 1433, column: 64, scope: !2842)
!2849 = !DILocalVariable(name: "arg", arg: 3, scope: !2842, file: !2, line: 1434, type: !171)
!2850 = !DILocation(line: 1434, column: 51, scope: !2842)
!2851 = !DILocation(line: 1435, column: 34, scope: !2842)
!2852 = !DILocation(line: 1435, column: 3, scope: !2842)
!2853 = !DILocation(line: 1435, column: 14, scope: !2842)
!2854 = !DILocation(line: 1435, column: 21, scope: !2842)
!2855 = !DILocation(line: 1435, column: 27, scope: !2842)
!2856 = !DILocation(line: 1435, column: 32, scope: !2842)
!2857 = !DILocation(line: 1436, column: 33, scope: !2842)
!2858 = !DILocation(line: 1436, column: 3, scope: !2842)
!2859 = !DILocation(line: 1436, column: 14, scope: !2842)
!2860 = !DILocation(line: 1436, column: 21, scope: !2842)
!2861 = !DILocation(line: 1436, column: 27, scope: !2842)
!2862 = !DILocation(line: 1436, column: 31, scope: !2842)
!2863 = !DILocation(line: 1437, column: 1, scope: !2842)
!2864 = distinct !DISubprogram(name: "coucal_value_set_key_handler", scope: !2, file: !2, line: 1439, type: !2865, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !126, !177, !185, !190, !195, !171}
!2867 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2864, file: !2, line: 1439, type: !126)
!2868 = !DILocation(line: 1439, column: 42, scope: !2864)
!2869 = !DILocalVariable(name: "dup", arg: 2, scope: !2864, file: !2, line: 1440, type: !177)
!2870 = !DILocation(line: 1440, column: 55, scope: !2864)
!2871 = !DILocalVariable(name: "free", arg: 3, scope: !2864, file: !2, line: 1441, type: !185)
!2872 = !DILocation(line: 1441, column: 60, scope: !2864)
!2873 = !DILocalVariable(name: "hash", arg: 4, scope: !2864, file: !2, line: 1442, type: !190)
!2874 = !DILocation(line: 1442, column: 58, scope: !2864)
!2875 = !DILocalVariable(name: "equals", arg: 5, scope: !2864, file: !2, line: 1443, type: !195)
!2876 = !DILocation(line: 1443, column: 55, scope: !2864)
!2877 = !DILocalVariable(name: "arg", arg: 6, scope: !2864, file: !2, line: 1444, type: !171)
!2878 = !DILocation(line: 1444, column: 49, scope: !2864)
!2879 = !DILocation(line: 1446, column: 3, scope: !2864)
!2880 = !DILocation(line: 1447, column: 31, scope: !2864)
!2881 = !DILocation(line: 1447, column: 3, scope: !2864)
!2882 = !DILocation(line: 1447, column: 14, scope: !2864)
!2883 = !DILocation(line: 1447, column: 21, scope: !2864)
!2884 = !DILocation(line: 1447, column: 25, scope: !2864)
!2885 = !DILocation(line: 1447, column: 29, scope: !2864)
!2886 = !DILocation(line: 1448, column: 32, scope: !2864)
!2887 = !DILocation(line: 1448, column: 3, scope: !2864)
!2888 = !DILocation(line: 1448, column: 14, scope: !2864)
!2889 = !DILocation(line: 1448, column: 21, scope: !2864)
!2890 = !DILocation(line: 1448, column: 25, scope: !2864)
!2891 = !DILocation(line: 1448, column: 30, scope: !2864)
!2892 = !DILocation(line: 1449, column: 32, scope: !2864)
!2893 = !DILocation(line: 1449, column: 3, scope: !2864)
!2894 = !DILocation(line: 1449, column: 14, scope: !2864)
!2895 = !DILocation(line: 1449, column: 21, scope: !2864)
!2896 = !DILocation(line: 1449, column: 25, scope: !2864)
!2897 = !DILocation(line: 1449, column: 30, scope: !2864)
!2898 = !DILocation(line: 1450, column: 34, scope: !2864)
!2899 = !DILocation(line: 1450, column: 3, scope: !2864)
!2900 = !DILocation(line: 1450, column: 14, scope: !2864)
!2901 = !DILocation(line: 1450, column: 21, scope: !2864)
!2902 = !DILocation(line: 1450, column: 25, scope: !2864)
!2903 = !DILocation(line: 1450, column: 32, scope: !2864)
!2904 = !DILocation(line: 1451, column: 31, scope: !2864)
!2905 = !DILocation(line: 1451, column: 3, scope: !2864)
!2906 = !DILocation(line: 1451, column: 14, scope: !2864)
!2907 = !DILocation(line: 1451, column: 21, scope: !2864)
!2908 = !DILocation(line: 1451, column: 25, scope: !2864)
!2909 = !DILocation(line: 1451, column: 29, scope: !2864)
!2910 = !DILocation(line: 1452, column: 1, scope: !2864)
!2911 = distinct !DISubprogram(name: "coucal_set_assert_handler", scope: !2, file: !2, line: 1454, type: !2912, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !126, !204, !220, !171}
!2914 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2911, file: !2, line: 1454, type: !126)
!2915 = !DILocation(line: 1454, column: 39, scope: !2911)
!2916 = !DILocalVariable(name: "log", arg: 2, scope: !2911, file: !2, line: 1455, type: !204)
!2917 = !DILocation(line: 1455, column: 52, scope: !2911)
!2918 = !DILocalVariable(name: "fatal", arg: 3, scope: !2911, file: !2, line: 1456, type: !220)
!2919 = !DILocation(line: 1456, column: 55, scope: !2911)
!2920 = !DILocalVariable(name: "arg", arg: 4, scope: !2911, file: !2, line: 1457, type: !171)
!2921 = !DILocation(line: 1457, column: 46, scope: !2911)
!2922 = !DILocation(line: 1458, column: 33, scope: !2911)
!2923 = !DILocation(line: 1458, column: 3, scope: !2911)
!2924 = !DILocation(line: 1458, column: 14, scope: !2911)
!2925 = !DILocation(line: 1458, column: 21, scope: !2911)
!2926 = !DILocation(line: 1458, column: 27, scope: !2911)
!2927 = !DILocation(line: 1458, column: 31, scope: !2911)
!2928 = !DILocation(line: 1459, column: 35, scope: !2911)
!2929 = !DILocation(line: 1459, column: 3, scope: !2911)
!2930 = !DILocation(line: 1459, column: 14, scope: !2911)
!2931 = !DILocation(line: 1459, column: 21, scope: !2911)
!2932 = !DILocation(line: 1459, column: 27, scope: !2911)
!2933 = !DILocation(line: 1459, column: 33, scope: !2911)
!2934 = !DILocation(line: 1460, column: 33, scope: !2911)
!2935 = !DILocation(line: 1460, column: 3, scope: !2911)
!2936 = !DILocation(line: 1460, column: 14, scope: !2911)
!2937 = !DILocation(line: 1460, column: 21, scope: !2911)
!2938 = !DILocation(line: 1460, column: 27, scope: !2911)
!2939 = !DILocation(line: 1460, column: 31, scope: !2911)
!2940 = !DILocation(line: 1461, column: 1, scope: !2911)
!2941 = distinct !DISubprogram(name: "coucal_set_print_handler", scope: !2, file: !2, line: 1463, type: !2942, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !126, !230, !235, !171}
!2944 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2941, file: !2, line: 1463, type: !126)
!2945 = !DILocation(line: 1463, column: 38, scope: !2941)
!2946 = !DILocalVariable(name: "key", arg: 2, scope: !2941, file: !2, line: 1464, type: !230)
!2947 = !DILocation(line: 1464, column: 56, scope: !2941)
!2948 = !DILocalVariable(name: "value", arg: 3, scope: !2941, file: !2, line: 1465, type: !235)
!2949 = !DILocation(line: 1465, column: 58, scope: !2941)
!2950 = !DILocalVariable(name: "arg", arg: 4, scope: !2941, file: !2, line: 1466, type: !171)
!2951 = !DILocation(line: 1466, column: 45, scope: !2941)
!2952 = !DILocation(line: 1467, column: 33, scope: !2941)
!2953 = !DILocation(line: 1467, column: 3, scope: !2941)
!2954 = !DILocation(line: 1467, column: 14, scope: !2941)
!2955 = !DILocation(line: 1467, column: 21, scope: !2941)
!2956 = !DILocation(line: 1467, column: 27, scope: !2941)
!2957 = !DILocation(line: 1467, column: 31, scope: !2941)
!2958 = !DILocation(line: 1468, column: 35, scope: !2941)
!2959 = !DILocation(line: 1468, column: 3, scope: !2941)
!2960 = !DILocation(line: 1468, column: 14, scope: !2941)
!2961 = !DILocation(line: 1468, column: 21, scope: !2941)
!2962 = !DILocation(line: 1468, column: 27, scope: !2941)
!2963 = !DILocation(line: 1468, column: 33, scope: !2941)
!2964 = !DILocation(line: 1469, column: 33, scope: !2941)
!2965 = !DILocation(line: 1469, column: 3, scope: !2941)
!2966 = !DILocation(line: 1469, column: 14, scope: !2941)
!2967 = !DILocation(line: 1469, column: 21, scope: !2941)
!2968 = !DILocation(line: 1469, column: 27, scope: !2941)
!2969 = !DILocation(line: 1469, column: 31, scope: !2941)
!2970 = !DILocation(line: 1470, column: 1, scope: !2941)
!2971 = distinct !DISubprogram(name: "coucal_nitems", scope: !2, file: !2, line: 1472, type: !2972, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!93, !126}
!2974 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2971, file: !2, line: 1472, type: !126)
!2975 = !DILocation(line: 1472, column: 29, scope: !2971)
!2976 = !DILocation(line: 1473, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 1473, column: 7)
!2978 = !DILocation(line: 1473, column: 17, scope: !2977)
!2979 = !DILocation(line: 1473, column: 7, scope: !2971)
!2980 = !DILocation(line: 1474, column: 12, scope: !2977)
!2981 = !DILocation(line: 1474, column: 23, scope: !2977)
!2982 = !DILocation(line: 1474, column: 5, scope: !2977)
!2983 = !DILocation(line: 1475, column: 3, scope: !2971)
!2984 = !DILocation(line: 1476, column: 1, scope: !2971)
!2985 = distinct !DISubprogram(name: "coucal_memory_size", scope: !2, file: !2, line: 1478, type: !2972, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!2986 = !DILocalVariable(name: "hashtable", arg: 1, scope: !2985, file: !2, line: 1478, type: !126)
!2987 = !DILocation(line: 1478, column: 34, scope: !2985)
!2988 = !DILocalVariable(name: "size_struct", scope: !2985, file: !2, line: 1479, type: !932)
!2989 = !DILocation(line: 1479, column: 16, scope: !2985)
!2990 = !DILocalVariable(name: "hash_size", scope: !2985, file: !2, line: 1480, type: !932)
!2991 = !DILocation(line: 1480, column: 16, scope: !2985)
!2992 = !DILocation(line: 1480, column: 28, scope: !2985)
!2993 = !DILocation(line: 1480, column: 52, scope: !2985)
!2994 = !DILocalVariable(name: "pool_size", scope: !2985, file: !2, line: 1481, type: !932)
!2995 = !DILocation(line: 1481, column: 16, scope: !2985)
!2996 = !DILocation(line: 1481, column: 28, scope: !2985)
!2997 = !DILocation(line: 1481, column: 39, scope: !2985)
!2998 = !DILocation(line: 1481, column: 44, scope: !2985)
!2999 = !DILocation(line: 1481, column: 52, scope: !2985)
!3000 = !DILocation(line: 1482, column: 24, scope: !2985)
!3001 = !DILocation(line: 1482, column: 22, scope: !2985)
!3002 = !DILocation(line: 1482, column: 36, scope: !2985)
!3003 = !DILocation(line: 1482, column: 34, scope: !2985)
!3004 = !DILocation(line: 1482, column: 3, scope: !2985)
!3005 = distinct !DISubprogram(name: "coucal_hash_size", scope: !2, file: !2, line: 1485, type: !3006, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!93}
!3008 = !DILocation(line: 1486, column: 3, scope: !3005)
!3009 = distinct !DISubprogram(name: "coucal_delete", scope: !2, file: !2, line: 1489, type: !3010, scopeLine: 1489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3013 = !DILocalVariable(name: "phashtable", arg: 1, scope: !3009, file: !2, line: 1489, type: !3012)
!3014 = !DILocation(line: 1489, column: 28, scope: !3009)
!3015 = !DILocation(line: 1490, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !2, line: 1490, column: 7)
!3017 = !DILocation(line: 1490, column: 18, scope: !3016)
!3018 = !DILocation(line: 1490, column: 7, scope: !3009)
!3019 = !DILocalVariable(name: "hashtable", scope: !3020, file: !2, line: 1491, type: !126)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 1490, column: 27)
!3021 = !DILocation(line: 1491, column: 12, scope: !3020)
!3022 = !DILocation(line: 1491, column: 25, scope: !3020)
!3023 = !DILocation(line: 1491, column: 24, scope: !3020)
!3024 = !DILocation(line: 1492, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3020, file: !2, line: 1492, column: 9)
!3026 = !DILocation(line: 1492, column: 19, scope: !3025)
!3027 = !DILocation(line: 1492, column: 9, scope: !3020)
!3028 = !DILocation(line: 1493, column: 24, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 1492, column: 28)
!3030 = !DILocation(line: 1493, column: 7, scope: !3029)
!3031 = !DILocation(line: 1494, column: 11, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 1494, column: 11)
!3033 = !DILocation(line: 1494, column: 22, scope: !3032)
!3034 = !DILocation(line: 1494, column: 28, scope: !3032)
!3035 = !DILocation(line: 1494, column: 11, scope: !3029)
!3036 = !DILocalVariable(name: "hash_size", scope: !3037, file: !2, line: 1496, type: !932)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !2, line: 1494, column: 37)
!3038 = !DILocation(line: 1496, column: 22, scope: !3037)
!3039 = !DILocation(line: 1496, column: 34, scope: !3037)
!3040 = !DILocalVariable(name: "i", scope: !3037, file: !2, line: 1497, type: !93)
!3041 = !DILocation(line: 1497, column: 16, scope: !3037)
!3042 = !DILocation(line: 1500, column: 15, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1500, column: 9)
!3044 = !DILocation(line: 1500, column: 13, scope: !3043)
!3045 = !DILocation(line: 1500, column: 21, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 1500, column: 9)
!3047 = !DILocation(line: 1500, column: 25, scope: !3046)
!3048 = !DILocation(line: 1500, column: 23, scope: !3046)
!3049 = !DILocation(line: 1500, column: 9, scope: !3043)
!3050 = !DILocation(line: 1501, column: 31, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !2, line: 1501, column: 15)
!3052 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 1500, column: 42)
!3053 = !DILocation(line: 1501, column: 42, scope: !3051)
!3054 = !DILocation(line: 1501, column: 16, scope: !3051)
!3055 = !DILocation(line: 1501, column: 15, scope: !3052)
!3056 = !DILocation(line: 1502, column: 30, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !2, line: 1501, column: 46)
!3058 = !DILocation(line: 1502, column: 41, scope: !3057)
!3059 = !DILocation(line: 1502, column: 13, scope: !3057)
!3060 = !DILocation(line: 1503, column: 11, scope: !3057)
!3061 = !DILocation(line: 1504, column: 9, scope: !3052)
!3062 = !DILocation(line: 1500, column: 38, scope: !3046)
!3063 = !DILocation(line: 1500, column: 9, scope: !3046)
!3064 = distinct !{!3064, !3049, !3065, !615}
!3065 = !DILocation(line: 1504, column: 9, scope: !3043)
!3066 = !DILocation(line: 1507, column: 15, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1507, column: 9)
!3068 = !DILocation(line: 1507, column: 13, scope: !3067)
!3069 = !DILocation(line: 1507, column: 21, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 1507, column: 9)
!3071 = !DILocation(line: 1507, column: 25, scope: !3070)
!3072 = !DILocation(line: 1507, column: 36, scope: !3070)
!3073 = !DILocation(line: 1507, column: 42, scope: !3070)
!3074 = !DILocation(line: 1507, column: 23, scope: !3070)
!3075 = !DILocation(line: 1507, column: 9, scope: !3067)
!3076 = !DILocation(line: 1508, column: 29, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3070, file: !2, line: 1507, column: 54)
!3078 = !DILocation(line: 1508, column: 41, scope: !3077)
!3079 = !DILocation(line: 1508, column: 52, scope: !3077)
!3080 = !DILocation(line: 1508, column: 58, scope: !3077)
!3081 = !DILocation(line: 1508, column: 64, scope: !3077)
!3082 = !DILocation(line: 1508, column: 67, scope: !3077)
!3083 = !DILocation(line: 1508, column: 11, scope: !3077)
!3084 = !DILocation(line: 1509, column: 9, scope: !3077)
!3085 = !DILocation(line: 1507, column: 50, scope: !3070)
!3086 = !DILocation(line: 1507, column: 9, scope: !3070)
!3087 = distinct !{!3087, !3075, !3088, !615}
!3088 = !DILocation(line: 1509, column: 9, scope: !3067)
!3089 = !DILocation(line: 1510, column: 7, scope: !3037)
!3090 = !DILocation(line: 1512, column: 7, scope: !3029)
!3091 = !DILocation(line: 1512, column: 18, scope: !3029)
!3092 = !DILocation(line: 1512, column: 26, scope: !3029)
!3093 = !DILocation(line: 1513, column: 7, scope: !3029)
!3094 = !DILocation(line: 1513, column: 18, scope: !3029)
!3095 = !DILocation(line: 1513, column: 23, scope: !3029)
!3096 = !DILocation(line: 1514, column: 12, scope: !3029)
!3097 = !DILocation(line: 1514, column: 23, scope: !3029)
!3098 = !DILocation(line: 1514, column: 28, scope: !3029)
!3099 = !DILocation(line: 1514, column: 7, scope: !3029)
!3100 = !DILocation(line: 1515, column: 7, scope: !3029)
!3101 = !DILocation(line: 1515, column: 18, scope: !3029)
!3102 = !DILocation(line: 1515, column: 23, scope: !3029)
!3103 = !DILocation(line: 1515, column: 30, scope: !3029)
!3104 = !DILocation(line: 1516, column: 12, scope: !3029)
!3105 = !DILocation(line: 1516, column: 23, scope: !3029)
!3106 = !DILocation(line: 1516, column: 7, scope: !3029)
!3107 = !DILocation(line: 1517, column: 7, scope: !3029)
!3108 = !DILocation(line: 1517, column: 18, scope: !3029)
!3109 = !DILocation(line: 1517, column: 24, scope: !3029)
!3110 = !DILocation(line: 1518, column: 12, scope: !3029)
!3111 = !DILocation(line: 1518, column: 7, scope: !3029)
!3112 = !DILocation(line: 1519, column: 8, scope: !3029)
!3113 = !DILocation(line: 1519, column: 19, scope: !3029)
!3114 = !DILocation(line: 1520, column: 5, scope: !3029)
!3115 = !DILocation(line: 1521, column: 3, scope: !3020)
!3116 = !DILocation(line: 1522, column: 1, scope: !3009)
!3117 = distinct !DISubprogram(name: "coucal_log_stats", scope: !2, file: !2, line: 336, type: !3118, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !126}
!3120 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3117, file: !2, line: 336, type: !126)
!3121 = !DILocation(line: 336, column: 37, scope: !3117)
!3122 = !DILocalVariable(name: "name", scope: !3117, file: !2, line: 337, type: !1404)
!3123 = !DILocation(line: 337, column: 21, scope: !3117)
!3124 = !DILocation(line: 337, column: 44, scope: !3117)
!3125 = !DILocation(line: 337, column: 28, scope: !3117)
!3126 = !DILocation(line: 338, column: 15, scope: !3117)
!3127 = !DILocation(line: 355, column: 16, scope: !3117)
!3128 = !DILocation(line: 355, column: 21, scope: !3117)
!3129 = !DILocation(line: 356, column: 16, scope: !3117)
!3130 = !DILocation(line: 356, column: 21, scope: !3117)
!3131 = !DILocation(line: 356, column: 31, scope: !3117)
!3132 = !DILocation(line: 357, column: 16, scope: !3117)
!3133 = !DILocation(line: 357, column: 21, scope: !3117)
!3134 = !DILocation(line: 358, column: 27, scope: !3117)
!3135 = !DILocation(line: 359, column: 27, scope: !3117)
!3136 = !DILocation(line: 359, column: 38, scope: !3117)
!3137 = !DILocation(line: 360, column: 27, scope: !3117)
!3138 = !DILocation(line: 360, column: 38, scope: !3117)
!3139 = !DILocation(line: 361, column: 27, scope: !3117)
!3140 = !DILocation(line: 361, column: 38, scope: !3117)
!3141 = !DILocation(line: 361, column: 44, scope: !3117)
!3142 = !DILocation(line: 362, column: 27, scope: !3117)
!3143 = !DILocation(line: 362, column: 38, scope: !3117)
!3144 = !DILocation(line: 362, column: 43, scope: !3117)
!3145 = !DILocation(line: 363, column: 27, scope: !3117)
!3146 = !DILocation(line: 363, column: 38, scope: !3117)
!3147 = !DILocation(line: 363, column: 43, scope: !3117)
!3148 = !DILocation(line: 364, column: 27, scope: !3117)
!3149 = !DILocation(line: 364, column: 38, scope: !3117)
!3150 = !DILocation(line: 364, column: 43, scope: !3117)
!3151 = !DILocation(line: 365, column: 27, scope: !3117)
!3152 = !DILocation(line: 365, column: 38, scope: !3117)
!3153 = !DILocation(line: 365, column: 44, scope: !3117)
!3154 = !DILocation(line: 366, column: 27, scope: !3117)
!3155 = !DILocation(line: 366, column: 38, scope: !3117)
!3156 = !DILocation(line: 366, column: 44, scope: !3117)
!3157 = !DILocation(line: 367, column: 27, scope: !3117)
!3158 = !DILocation(line: 367, column: 38, scope: !3117)
!3159 = !DILocation(line: 367, column: 44, scope: !3117)
!3160 = !DILocation(line: 368, column: 27, scope: !3117)
!3161 = !DILocation(line: 368, column: 38, scope: !3117)
!3162 = !DILocation(line: 368, column: 44, scope: !3117)
!3163 = !DILocation(line: 369, column: 27, scope: !3117)
!3164 = !DILocation(line: 369, column: 38, scope: !3117)
!3165 = !DILocation(line: 369, column: 44, scope: !3117)
!3166 = !DILocation(line: 370, column: 25, scope: !3117)
!3167 = !DILocation(line: 370, column: 36, scope: !3117)
!3168 = !DILocation(line: 370, column: 42, scope: !3117)
!3169 = !DILocation(line: 370, column: 16, scope: !3117)
!3170 = !DILocation(line: 370, column: 66, scope: !3117)
!3171 = !DILocation(line: 370, column: 77, scope: !3117)
!3172 = !DILocation(line: 370, column: 83, scope: !3117)
!3173 = !DILocation(line: 370, column: 57, scope: !3117)
!3174 = !DILocation(line: 370, column: 55, scope: !3117)
!3175 = !DILocation(line: 371, column: 27, scope: !3117)
!3176 = !DILocation(line: 371, column: 38, scope: !3117)
!3177 = !DILocation(line: 371, column: 44, scope: !3117)
!3178 = !DILocation(line: 372, column: 27, scope: !3117)
!3179 = !DILocation(line: 372, column: 38, scope: !3117)
!3180 = !DILocation(line: 372, column: 44, scope: !3117)
!3181 = !DILocation(line: 373, column: 27, scope: !3117)
!3182 = !DILocation(line: 373, column: 38, scope: !3117)
!3183 = !DILocation(line: 373, column: 44, scope: !3117)
!3184 = !DILocation(line: 374, column: 46, scope: !3117)
!3185 = !DILocation(line: 374, column: 27, scope: !3117)
!3186 = !DILocation(line: 338, column: 3, scope: !3117)
!3187 = !DILocation(line: 376, column: 1, scope: !3117)
!3188 = distinct !DISubprogram(name: "coucal_del_value", scope: !2, file: !2, line: 804, type: !3189, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !126, !93}
!3191 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3188, file: !2, line: 804, type: !126)
!3192 = !DILocation(line: 804, column: 52, scope: !3188)
!3193 = !DILocalVariable(name: "pos", arg: 2, scope: !3188, file: !2, line: 804, type: !93)
!3194 = !DILocation(line: 804, column: 70, scope: !3188)
!3195 = !DILocation(line: 805, column: 21, scope: !3188)
!3196 = !DILocation(line: 805, column: 33, scope: !3188)
!3197 = !DILocation(line: 805, column: 44, scope: !3188)
!3198 = !DILocation(line: 805, column: 50, scope: !3188)
!3199 = !DILocation(line: 805, column: 55, scope: !3188)
!3200 = !DILocation(line: 805, column: 3, scope: !3188)
!3201 = !DILocation(line: 806, column: 1, scope: !3188)
!3202 = distinct !DISubprogram(name: "coucal_del_value_", scope: !2, file: !2, line: 796, type: !3203, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !126, !847}
!3205 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3202, file: !2, line: 796, type: !126)
!3206 = !DILocation(line: 796, column: 53, scope: !3202)
!3207 = !DILocalVariable(name: "pvalue", arg: 2, scope: !3202, file: !2, line: 796, type: !847)
!3208 = !DILocation(line: 796, column: 78, scope: !3202)
!3209 = !DILocation(line: 797, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 797, column: 7)
!3211 = !DILocation(line: 797, column: 15, scope: !3210)
!3212 = !DILocation(line: 797, column: 19, scope: !3210)
!3213 = !DILocation(line: 797, column: 7, scope: !3202)
!3214 = !DILocation(line: 798, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !2, line: 798, column: 9)
!3216 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 797, column: 28)
!3217 = !DILocation(line: 798, column: 20, scope: !3215)
!3218 = !DILocation(line: 798, column: 27, scope: !3215)
!3219 = !DILocation(line: 798, column: 33, scope: !3215)
!3220 = !DILocation(line: 798, column: 38, scope: !3215)
!3221 = !DILocation(line: 798, column: 9, scope: !3216)
!3222 = !DILocation(line: 799, column: 7, scope: !3215)
!3223 = !DILocation(line: 799, column: 18, scope: !3215)
!3224 = !DILocation(line: 799, column: 25, scope: !3215)
!3225 = !DILocation(line: 799, column: 31, scope: !3215)
!3226 = !DILocation(line: 799, column: 36, scope: !3215)
!3227 = !DILocation(line: 799, column: 47, scope: !3215)
!3228 = !DILocation(line: 799, column: 54, scope: !3215)
!3229 = !DILocation(line: 799, column: 60, scope: !3215)
!3230 = !DILocation(line: 799, column: 66, scope: !3215)
!3231 = !DILocation(line: 800, column: 5, scope: !3216)
!3232 = !DILocation(line: 800, column: 17, scope: !3216)
!3233 = !DILocation(line: 801, column: 3, scope: !3216)
!3234 = !DILocation(line: 802, column: 1, scope: !3202)
!3235 = distinct !DISubprogram(name: "coucal_enum_new", scope: !2, file: !2, line: 1526, type: !3236, scopeLine: 1526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3238, !126}
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "struct_coucal_enum", file: !79, line: 237, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "struct_coucal_enum", file: !79, line: 241, size: 128, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !3239, file: !79, line: 242, baseType: !126, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3239, file: !79, line: 243, baseType: !93, size: 64, offset: 64)
!3243 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3235, file: !2, line: 1526, type: !126)
!3244 = !DILocation(line: 1526, column: 43, scope: !3235)
!3245 = !DILocalVariable(name: "e", scope: !3235, file: !2, line: 1527, type: !3238)
!3246 = !DILocation(line: 1527, column: 22, scope: !3235)
!3247 = !DILocation(line: 1529, column: 5, scope: !3235)
!3248 = !DILocation(line: 1529, column: 11, scope: !3235)
!3249 = !DILocation(line: 1530, column: 13, scope: !3235)
!3250 = !DILocation(line: 1530, column: 5, scope: !3235)
!3251 = !DILocation(line: 1530, column: 11, scope: !3235)
!3252 = !DILocation(line: 1531, column: 3, scope: !3235)
!3253 = distinct !DISubprogram(name: "coucal_enum_next", scope: !2, file: !2, line: 1534, type: !3254, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!100, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3257 = !DILocalVariable(name: "e", arg: 1, scope: !3253, file: !2, line: 1534, type: !3256)
!3258 = !DILocation(line: 1534, column: 52, scope: !3253)
!3259 = !DILocalVariable(name: "hash_size", scope: !3253, file: !2, line: 1535, type: !932)
!3260 = !DILocation(line: 1535, column: 16, scope: !3253)
!3261 = !DILocation(line: 1535, column: 28, scope: !3253)
!3262 = !DILocation(line: 1536, column: 3, scope: !3253)
!3263 = !DILocation(line: 1536, column: 10, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !2, line: 1536, column: 3)
!3265 = distinct !DILexicalBlock(scope: !3253, file: !2, line: 1536, column: 3)
!3266 = !DILocation(line: 1536, column: 13, scope: !3264)
!3267 = !DILocation(line: 1536, column: 21, scope: !3264)
!3268 = !DILocation(line: 1536, column: 19, scope: !3264)
!3269 = !DILocation(line: 1537, column: 5, scope: !3264)
!3270 = !DILocation(line: 1537, column: 23, scope: !3264)
!3271 = !DILocation(line: 1537, column: 26, scope: !3264)
!3272 = !DILocation(line: 1537, column: 33, scope: !3264)
!3273 = !DILocation(line: 1537, column: 36, scope: !3264)
!3274 = !DILocation(line: 1537, column: 8, scope: !3264)
!3275 = !DILocation(line: 0, scope: !3264)
!3276 = !DILocation(line: 1536, column: 3, scope: !3265)
!3277 = !DILocation(line: 1537, column: 45, scope: !3264)
!3278 = !DILocation(line: 1537, column: 48, scope: !3264)
!3279 = !DILocation(line: 1537, column: 53, scope: !3264)
!3280 = !DILocation(line: 1536, column: 3, scope: !3264)
!3281 = distinct !{!3281, !3276, !3282, !615}
!3282 = !DILocation(line: 1537, column: 57, scope: !3265)
!3283 = !DILocation(line: 1539, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3253, file: !2, line: 1539, column: 7)
!3285 = !DILocation(line: 1539, column: 10, scope: !3284)
!3286 = !DILocation(line: 1539, column: 18, scope: !3284)
!3287 = !DILocation(line: 1539, column: 16, scope: !3284)
!3288 = !DILocation(line: 1539, column: 7, scope: !3253)
!3289 = !DILocalVariable(name: "next", scope: !3290, file: !2, line: 1540, type: !1740)
!3290 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 1539, column: 29)
!3291 = !DILocation(line: 1540, column: 24, scope: !3290)
!3292 = !DILocation(line: 1540, column: 32, scope: !3290)
!3293 = !DILocation(line: 1540, column: 35, scope: !3290)
!3294 = !DILocation(line: 1540, column: 42, scope: !3290)
!3295 = !DILocation(line: 1540, column: 48, scope: !3290)
!3296 = !DILocation(line: 1540, column: 51, scope: !3290)
!3297 = !DILocation(line: 1541, column: 5, scope: !3290)
!3298 = !DILocation(line: 1541, column: 8, scope: !3290)
!3299 = !DILocation(line: 1541, column: 13, scope: !3290)
!3300 = !DILocation(line: 1542, column: 12, scope: !3290)
!3301 = !DILocation(line: 1542, column: 5, scope: !3290)
!3302 = !DILocation(line: 1545, column: 12, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 1545, column: 12)
!3304 = !DILocation(line: 1545, column: 15, scope: !3303)
!3305 = !DILocation(line: 1545, column: 23, scope: !3303)
!3306 = !DILocation(line: 1545, column: 35, scope: !3303)
!3307 = !DILocation(line: 1545, column: 38, scope: !3303)
!3308 = !DILocation(line: 1545, column: 45, scope: !3303)
!3309 = !DILocation(line: 1545, column: 51, scope: !3303)
!3310 = !DILocation(line: 1545, column: 33, scope: !3303)
!3311 = !DILocation(line: 1545, column: 21, scope: !3303)
!3312 = !DILocation(line: 1545, column: 12, scope: !3284)
!3313 = !DILocalVariable(name: "index", scope: !3314, file: !2, line: 1546, type: !932)
!3314 = distinct !DILexicalBlock(scope: !3303, file: !2, line: 1545, column: 57)
!3315 = !DILocation(line: 1546, column: 18, scope: !3314)
!3316 = !DILocation(line: 1546, column: 26, scope: !3314)
!3317 = !DILocation(line: 1546, column: 29, scope: !3314)
!3318 = !DILocation(line: 1546, column: 37, scope: !3314)
!3319 = !DILocation(line: 1546, column: 35, scope: !3314)
!3320 = !DILocalVariable(name: "next", scope: !3314, file: !2, line: 1547, type: !1740)
!3321 = !DILocation(line: 1547, column: 24, scope: !3314)
!3322 = !DILocation(line: 1547, column: 32, scope: !3314)
!3323 = !DILocation(line: 1547, column: 35, scope: !3314)
!3324 = !DILocation(line: 1547, column: 42, scope: !3314)
!3325 = !DILocation(line: 1547, column: 48, scope: !3314)
!3326 = !DILocation(line: 1547, column: 54, scope: !3314)
!3327 = !DILocation(line: 1548, column: 5, scope: !3314)
!3328 = !DILocation(line: 1548, column: 8, scope: !3314)
!3329 = !DILocation(line: 1548, column: 13, scope: !3314)
!3330 = !DILocation(line: 1549, column: 12, scope: !3314)
!3331 = !DILocation(line: 1549, column: 5, scope: !3314)
!3332 = !DILocation(line: 1553, column: 5, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3303, file: !2, line: 1552, column: 8)
!3334 = !DILocation(line: 1555, column: 1, scope: !3253)
!3335 = distinct !DISubprogram(name: "coucal_set_global_assert_handler", scope: !2, file: !2, line: 1557, type: !3336, scopeLine: 1558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !204, !220}
!3338 = !DILocalVariable(name: "log", arg: 1, scope: !3335, file: !2, line: 1557, type: !204)
!3339 = !DILocation(line: 1557, column: 59, scope: !3335)
!3340 = !DILocalVariable(name: "fatal", arg: 2, scope: !3335, file: !2, line: 1558, type: !220)
!3341 = !DILocation(line: 1558, column: 62, scope: !3335)
!3342 = !DILocation(line: 1559, column: 24, scope: !3335)
!3343 = !DILocation(line: 1559, column: 22, scope: !3335)
!3344 = !DILocation(line: 1560, column: 27, scope: !3335)
!3345 = !DILocation(line: 1560, column: 25, scope: !3335)
!3346 = !DILocation(line: 1561, column: 1, scope: !3335)
!3347 = distinct !DISubprogram(name: "getblock32", scope: !470, file: !470, line: 29, type: !3348, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!123, !246, !91}
!3350 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !470, line: 29, type: !246)
!3351 = !DILocation(line: 29, column: 47, scope: !3347)
!3352 = !DILocalVariable(name: "i", arg: 2, scope: !3347, file: !470, line: 29, type: !91)
!3353 = !DILocation(line: 29, column: 54, scope: !3347)
!3354 = !DILocation(line: 31, column: 10, scope: !3347)
!3355 = !DILocation(line: 31, column: 12, scope: !3347)
!3356 = !DILocation(line: 31, column: 3, scope: !3347)
!3357 = distinct !DISubprogram(name: "rotl32", scope: !470, file: !470, line: 24, type: !3358, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!123, !123, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !3361, line: 24, baseType: !3362)
!3361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !99, line: 37, baseType: !3363)
!3363 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3364 = !DILocalVariable(name: "x", arg: 1, scope: !3357, file: !470, line: 24, type: !123)
!3365 = !DILocation(line: 24, column: 35, scope: !3357)
!3366 = !DILocalVariable(name: "r", arg: 2, scope: !3357, file: !470, line: 24, type: !3360)
!3367 = !DILocation(line: 24, column: 45, scope: !3357)
!3368 = !DILocation(line: 26, column: 11, scope: !3357)
!3369 = !DILocation(line: 26, column: 16, scope: !3357)
!3370 = !DILocation(line: 26, column: 13, scope: !3357)
!3371 = !DILocation(line: 26, column: 22, scope: !3357)
!3372 = !DILocation(line: 26, column: 33, scope: !3357)
!3373 = !DILocation(line: 26, column: 31, scope: !3357)
!3374 = !DILocation(line: 26, column: 24, scope: !3357)
!3375 = !DILocation(line: 26, column: 19, scope: !3357)
!3376 = !DILocation(line: 26, column: 3, scope: !3357)
!3377 = distinct !DISubprogram(name: "fmix32", scope: !470, file: !470, line: 33, type: !3378, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!123, !123}
!3380 = !DILocalVariable(name: "h", arg: 1, scope: !3377, file: !470, line: 33, type: !123)
!3381 = !DILocation(line: 33, column: 35, scope: !3377)
!3382 = !DILocation(line: 35, column: 8, scope: !3377)
!3383 = !DILocation(line: 35, column: 10, scope: !3377)
!3384 = !DILocation(line: 35, column: 5, scope: !3377)
!3385 = !DILocation(line: 36, column: 5, scope: !3377)
!3386 = !DILocation(line: 37, column: 8, scope: !3377)
!3387 = !DILocation(line: 37, column: 10, scope: !3377)
!3388 = !DILocation(line: 37, column: 5, scope: !3377)
!3389 = !DILocation(line: 38, column: 5, scope: !3377)
!3390 = !DILocation(line: 39, column: 8, scope: !3377)
!3391 = !DILocation(line: 39, column: 10, scope: !3377)
!3392 = !DILocation(line: 39, column: 5, scope: !3377)
!3393 = !DILocation(line: 41, column: 10, scope: !3377)
!3394 = !DILocation(line: 41, column: 3, scope: !3377)
!3395 = distinct !DISubprogram(name: "coucal_dup_name", scope: !2, file: !2, line: 695, type: !3396, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!105, !126, !181}
!3398 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3395, file: !2, line: 695, type: !126)
!3399 = !DILocation(line: 695, column: 57, scope: !3395)
!3400 = !DILocalVariable(name: "name", arg: 2, scope: !3395, file: !2, line: 696, type: !181)
!3401 = !DILocation(line: 696, column: 67, scope: !3395)
!3402 = !DILocation(line: 697, column: 10, scope: !3395)
!3403 = !DILocation(line: 697, column: 21, scope: !3395)
!3404 = !DILocation(line: 697, column: 28, scope: !3395)
!3405 = !DILocation(line: 697, column: 32, scope: !3395)
!3406 = !DILocation(line: 697, column: 36, scope: !3395)
!3407 = !DILocation(line: 698, column: 32, scope: !3395)
!3408 = !DILocation(line: 698, column: 43, scope: !3395)
!3409 = !DILocation(line: 698, column: 7, scope: !3395)
!3410 = !DILocation(line: 699, column: 7, scope: !3395)
!3411 = !DILocation(line: 699, column: 18, scope: !3395)
!3412 = !DILocation(line: 699, column: 25, scope: !3395)
!3413 = !DILocation(line: 699, column: 29, scope: !3395)
!3414 = !DILocation(line: 699, column: 33, scope: !3395)
!3415 = !DILocation(line: 699, column: 44, scope: !3395)
!3416 = !DILocation(line: 699, column: 51, scope: !3395)
!3417 = !DILocation(line: 699, column: 55, scope: !3395)
!3418 = !DILocation(line: 699, column: 60, scope: !3395)
!3419 = !DILocation(line: 697, column: 3, scope: !3395)
!3420 = distinct !DISubprogram(name: "coucal_dup_name_internal", scope: !2, file: !2, line: 661, type: !3396, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3421 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3420, file: !2, line: 661, type: !126)
!3422 = !DILocation(line: 661, column: 51, scope: !3420)
!3423 = !DILocalVariable(name: "name_", arg: 2, scope: !3420, file: !2, line: 662, type: !181)
!3424 = !DILocation(line: 662, column: 61, scope: !3420)
!3425 = !DILocalVariable(name: "name", scope: !3420, file: !2, line: 663, type: !1404)
!3426 = !DILocation(line: 663, column: 21, scope: !3420)
!3427 = !DILocation(line: 663, column: 42, scope: !3420)
!3428 = !DILocalVariable(name: "len", scope: !3420, file: !2, line: 664, type: !932)
!3429 = !DILocation(line: 664, column: 16, scope: !3420)
!3430 = !DILocation(line: 664, column: 29, scope: !3420)
!3431 = !DILocation(line: 664, column: 22, scope: !3420)
!3432 = !DILocation(line: 664, column: 35, scope: !3420)
!3433 = !DILocalVariable(name: "s", scope: !3420, file: !2, line: 665, type: !145)
!3434 = !DILocation(line: 665, column: 9, scope: !3420)
!3435 = !DILocation(line: 669, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3420, file: !2, line: 669, column: 7)
!3437 = !DILocation(line: 669, column: 11, scope: !3436)
!3438 = !DILocation(line: 669, column: 7, scope: !3420)
!3439 = !DILocation(line: 670, column: 5, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !2, line: 669, column: 17)
!3441 = !DILocation(line: 671, column: 5, scope: !3440)
!3442 = !DILocation(line: 675, column: 3, scope: !3420)
!3443 = !DILocation(line: 676, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3420, file: !2, line: 676, column: 7)
!3445 = !DILocation(line: 676, column: 18, scope: !3444)
!3446 = !DILocation(line: 676, column: 23, scope: !3444)
!3447 = !DILocation(line: 676, column: 34, scope: !3444)
!3448 = !DILocation(line: 676, column: 45, scope: !3444)
!3449 = !DILocation(line: 676, column: 50, scope: !3444)
!3450 = !DILocation(line: 676, column: 32, scope: !3444)
!3451 = !DILocation(line: 676, column: 57, scope: !3444)
!3452 = !DILocation(line: 676, column: 55, scope: !3444)
!3453 = !DILocation(line: 676, column: 7, scope: !3420)
!3454 = !DILocalVariable(name: "capacity", scope: !3455, file: !2, line: 677, type: !93)
!3455 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 676, column: 62)
!3456 = !DILocation(line: 677, column: 12, scope: !3455)
!3457 = !DILocation(line: 678, column: 18, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !2, line: 678, column: 5)
!3459 = !DILocation(line: 678, column: 9, scope: !3458)
!3460 = !DILocation(line: 678, column: 40, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 678, column: 5)
!3462 = !DILocation(line: 678, column: 51, scope: !3461)
!3463 = !DILocation(line: 678, column: 62, scope: !3461)
!3464 = !DILocation(line: 678, column: 67, scope: !3461)
!3465 = !DILocation(line: 678, column: 74, scope: !3461)
!3466 = !DILocation(line: 678, column: 72, scope: !3461)
!3467 = !DILocation(line: 678, column: 49, scope: !3461)
!3468 = !DILocation(line: 678, column: 5, scope: !3458)
!3469 = !DILocation(line: 679, column: 18, scope: !3461)
!3470 = !DILocation(line: 678, column: 5, scope: !3461)
!3471 = distinct !{!3471, !3468, !3472, !615}
!3472 = !DILocation(line: 679, column: 25, scope: !3458)
!3473 = !DILocation(line: 680, column: 5, scope: !3455)
!3474 = !DILocation(line: 681, column: 25, scope: !3455)
!3475 = !DILocation(line: 681, column: 36, scope: !3455)
!3476 = !DILocation(line: 681, column: 5, scope: !3455)
!3477 = !DILocation(line: 682, column: 3, scope: !3455)
!3478 = !DILocation(line: 685, column: 3, scope: !3420)
!3479 = !DILocation(line: 686, column: 8, scope: !3420)
!3480 = !DILocation(line: 686, column: 19, scope: !3420)
!3481 = !DILocation(line: 686, column: 24, scope: !3420)
!3482 = !DILocation(line: 686, column: 31, scope: !3420)
!3483 = !DILocation(line: 686, column: 42, scope: !3420)
!3484 = !DILocation(line: 686, column: 47, scope: !3420)
!3485 = !DILocation(line: 686, column: 5, scope: !3420)
!3486 = !DILocation(line: 687, column: 10, scope: !3420)
!3487 = !DILocation(line: 687, column: 13, scope: !3420)
!3488 = !DILocation(line: 687, column: 19, scope: !3420)
!3489 = !DILocation(line: 687, column: 3, scope: !3420)
!3490 = !DILocation(line: 688, column: 27, scope: !3420)
!3491 = !DILocation(line: 688, column: 3, scope: !3420)
!3492 = !DILocation(line: 688, column: 14, scope: !3420)
!3493 = !DILocation(line: 688, column: 19, scope: !3420)
!3494 = !DILocation(line: 688, column: 24, scope: !3420)
!3495 = !DILocation(line: 689, column: 27, scope: !3420)
!3496 = !DILocation(line: 689, column: 3, scope: !3420)
!3497 = !DILocation(line: 689, column: 14, scope: !3420)
!3498 = !DILocation(line: 689, column: 19, scope: !3420)
!3499 = !DILocation(line: 689, column: 24, scope: !3420)
!3500 = !DILocation(line: 691, column: 10, scope: !3420)
!3501 = !DILocation(line: 691, column: 3, scope: !3420)
!3502 = !DILocation(line: 692, column: 1, scope: !3420)
!3503 = distinct !DISubprogram(name: "coucal_realloc_pool", scope: !2, file: !2, line: 602, type: !3189, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3504 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3503, file: !2, line: 602, type: !126)
!3505 = !DILocation(line: 602, column: 40, scope: !3503)
!3506 = !DILocalVariable(name: "capacity", arg: 2, scope: !3503, file: !2, line: 602, type: !93)
!3507 = !DILocation(line: 602, column: 58, scope: !3503)
!3508 = !DILocalVariable(name: "hash_size", scope: !3503, file: !2, line: 603, type: !932)
!3509 = !DILocation(line: 603, column: 16, scope: !3503)
!3510 = !DILocation(line: 603, column: 28, scope: !3503)
!3511 = !DILocalVariable(name: "oldbase", scope: !3503, file: !2, line: 604, type: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!3513 = !DILocation(line: 604, column: 15, scope: !3503)
!3514 = !DILocation(line: 604, column: 25, scope: !3503)
!3515 = !DILocation(line: 604, column: 36, scope: !3503)
!3516 = !DILocation(line: 604, column: 41, scope: !3503)
!3517 = !DILocalVariable(name: "count", scope: !3503, file: !2, line: 605, type: !93)
!3518 = !DILocation(line: 605, column: 10, scope: !3503)
!3519 = !DILocation(line: 608, column: 3, scope: !3503)
!3520 = !DILocation(line: 611, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3503, file: !2, line: 611, column: 7)
!3522 = !DILocation(line: 611, column: 18, scope: !3521)
!3523 = !DILocation(line: 611, column: 23, scope: !3521)
!3524 = !DILocation(line: 611, column: 32, scope: !3521)
!3525 = !DILocation(line: 611, column: 43, scope: !3521)
!3526 = !DILocation(line: 611, column: 48, scope: !3521)
!3527 = !DILocation(line: 611, column: 52, scope: !3521)
!3528 = !DILocation(line: 611, column: 57, scope: !3521)
!3529 = !DILocation(line: 611, column: 28, scope: !3521)
!3530 = !DILocation(line: 611, column: 7, scope: !3503)
!3531 = !DILocation(line: 612, column: 25, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3521, file: !2, line: 611, column: 62)
!3533 = !DILocation(line: 612, column: 36, scope: !3532)
!3534 = !DILocation(line: 612, column: 5, scope: !3532)
!3535 = !DILocation(line: 613, column: 5, scope: !3532)
!3536 = !DILocation(line: 617, column: 3, scope: !3503)
!3537 = !DILocation(line: 617, column: 14, scope: !3503)
!3538 = !DILocation(line: 617, column: 20, scope: !3503)
!3539 = !DILocation(line: 617, column: 38, scope: !3503)
!3540 = !DILocation(line: 620, column: 30, scope: !3503)
!3541 = !DILocation(line: 620, column: 3, scope: !3503)
!3542 = !DILocation(line: 620, column: 14, scope: !3503)
!3543 = !DILocation(line: 620, column: 19, scope: !3503)
!3544 = !DILocation(line: 620, column: 28, scope: !3503)
!3545 = !DILocation(line: 623, column: 36, scope: !3503)
!3546 = !DILocation(line: 623, column: 47, scope: !3503)
!3547 = !DILocation(line: 623, column: 52, scope: !3503)
!3548 = !DILocation(line: 624, column: 5, scope: !3503)
!3549 = !DILocation(line: 624, column: 16, scope: !3503)
!3550 = !DILocation(line: 624, column: 21, scope: !3503)
!3551 = !DILocation(line: 623, column: 28, scope: !3503)
!3552 = !DILocation(line: 623, column: 3, scope: !3503)
!3553 = !DILocation(line: 623, column: 14, scope: !3503)
!3554 = !DILocation(line: 623, column: 19, scope: !3503)
!3555 = !DILocation(line: 623, column: 26, scope: !3503)
!3556 = !DILocation(line: 625, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3503, file: !2, line: 625, column: 7)
!3558 = !DILocation(line: 625, column: 18, scope: !3557)
!3559 = !DILocation(line: 625, column: 23, scope: !3557)
!3560 = !DILocation(line: 625, column: 30, scope: !3557)
!3561 = !DILocation(line: 625, column: 7, scope: !3503)
!3562 = !DILocation(line: 626, column: 17, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 625, column: 39)
!3564 = !DILocation(line: 629, column: 18, scope: !3563)
!3565 = !DILocation(line: 629, column: 29, scope: !3563)
!3566 = !DILocation(line: 629, column: 34, scope: !3563)
!3567 = !DILocation(line: 626, column: 5, scope: !3563)
!3568 = !DILocation(line: 630, column: 5, scope: !3563)
!3569 = !DILocation(line: 631, column: 3, scope: !3563)
!3570 = !DILocation(line: 644, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3503, file: !2, line: 644, column: 7)
!3572 = !DILocation(line: 644, column: 18, scope: !3571)
!3573 = !DILocation(line: 644, column: 23, scope: !3571)
!3574 = !DILocation(line: 644, column: 33, scope: !3571)
!3575 = !DILocation(line: 644, column: 30, scope: !3571)
!3576 = !DILocation(line: 644, column: 7, scope: !3503)
!3577 = !DILocalVariable(name: "i", scope: !3578, file: !2, line: 645, type: !93)
!3578 = distinct !DILexicalBlock(scope: !3571, file: !2, line: 644, column: 42)
!3579 = !DILocation(line: 645, column: 12, scope: !3578)
!3580 = !DILocation(line: 646, column: 11, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3578, file: !2, line: 646, column: 5)
!3582 = !DILocation(line: 646, column: 9, scope: !3581)
!3583 = !DILocation(line: 646, column: 17, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !2, line: 646, column: 5)
!3585 = !DILocation(line: 646, column: 21, scope: !3584)
!3586 = !DILocation(line: 646, column: 19, scope: !3584)
!3587 = !DILocation(line: 646, column: 5, scope: !3581)
!3588 = !DILocation(line: 647, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3584, file: !2, line: 646, column: 38)
!3590 = !DILocation(line: 647, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !2, line: 647, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !2, line: 647, column: 7)
!3593 = !DILocation(line: 647, column: 7, scope: !3592)
!3594 = !DILocalVariable(name: "offset", scope: !3595, file: !2, line: 647, type: !932)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !2, line: 647, column: 7)
!3596 = !DILocation(line: 647, column: 7, scope: !3595)
!3597 = !DILocation(line: 648, column: 5, scope: !3589)
!3598 = !DILocation(line: 646, column: 34, scope: !3584)
!3599 = !DILocation(line: 646, column: 5, scope: !3584)
!3600 = distinct !{!3600, !3587, !3601, !615}
!3601 = !DILocation(line: 648, column: 5, scope: !3581)
!3602 = !DILocation(line: 649, column: 11, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3578, file: !2, line: 649, column: 5)
!3604 = !DILocation(line: 649, column: 9, scope: !3603)
!3605 = !DILocation(line: 649, column: 17, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !2, line: 649, column: 5)
!3607 = !DILocation(line: 649, column: 21, scope: !3606)
!3608 = !DILocation(line: 649, column: 32, scope: !3606)
!3609 = !DILocation(line: 649, column: 38, scope: !3606)
!3610 = !DILocation(line: 649, column: 19, scope: !3606)
!3611 = !DILocation(line: 649, column: 5, scope: !3603)
!3612 = !DILocation(line: 650, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !2, line: 649, column: 50)
!3614 = !DILocation(line: 650, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 650, column: 7)
!3616 = distinct !DILexicalBlock(scope: !3613, file: !2, line: 650, column: 7)
!3617 = !DILocation(line: 650, column: 7, scope: !3616)
!3618 = !DILocalVariable(name: "offset", scope: !3619, file: !2, line: 650, type: !932)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 650, column: 7)
!3620 = !DILocation(line: 650, column: 7, scope: !3619)
!3621 = !DILocation(line: 651, column: 5, scope: !3613)
!3622 = !DILocation(line: 649, column: 46, scope: !3606)
!3623 = !DILocation(line: 649, column: 5, scope: !3606)
!3624 = distinct !{!3624, !3611, !3625, !615}
!3625 = !DILocation(line: 651, column: 5, scope: !3603)
!3626 = !DILocation(line: 652, column: 3, scope: !3578)
!3627 = !DILocation(line: 656, column: 16, scope: !3503)
!3628 = !DILocation(line: 658, column: 28, scope: !3503)
!3629 = !DILocation(line: 658, column: 46, scope: !3503)
!3630 = !DILocation(line: 658, column: 57, scope: !3503)
!3631 = !DILocation(line: 658, column: 62, scope: !3503)
!3632 = !DILocation(line: 656, column: 3, scope: !3503)
!3633 = !DILocation(line: 659, column: 1, scope: !3503)
!3634 = distinct !DISubprogram(name: "coucal_compact_pool", scope: !2, file: !2, line: 519, type: !3189, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3635 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3634, file: !2, line: 519, type: !126)
!3636 = !DILocation(line: 519, column: 40, scope: !3634)
!3637 = !DILocalVariable(name: "capacity", arg: 2, scope: !3634, file: !2, line: 519, type: !93)
!3638 = !DILocation(line: 519, column: 58, scope: !3634)
!3639 = !DILocalVariable(name: "hash_size", scope: !3634, file: !2, line: 520, type: !932)
!3640 = !DILocation(line: 520, column: 16, scope: !3634)
!3641 = !DILocation(line: 520, column: 28, scope: !3634)
!3642 = !DILocalVariable(name: "i", scope: !3634, file: !2, line: 521, type: !93)
!3643 = !DILocation(line: 521, column: 10, scope: !3634)
!3644 = !DILocalVariable(name: "old_pool", scope: !3634, file: !2, line: 522, type: !3512)
!3645 = !DILocation(line: 522, column: 14, scope: !3634)
!3646 = !DILocation(line: 522, column: 25, scope: !3634)
!3647 = !DILocation(line: 522, column: 36, scope: !3634)
!3648 = !DILocation(line: 522, column: 41, scope: !3634)
!3649 = !DILocalVariable(name: "old_size", scope: !3634, file: !2, line: 523, type: !932)
!3650 = !DILocation(line: 523, column: 16, scope: !3634)
!3651 = !DILocation(line: 523, column: 27, scope: !3634)
!3652 = !DILocation(line: 523, column: 38, scope: !3634)
!3653 = !DILocation(line: 523, column: 43, scope: !3634)
!3654 = !DILocalVariable(name: "count", scope: !3634, file: !2, line: 524, type: !93)
!3655 = !DILocation(line: 524, column: 10, scope: !3634)
!3656 = !DILocation(line: 527, column: 3, scope: !3634)
!3657 = !DILocation(line: 530, column: 3, scope: !3634)
!3658 = !DILocation(line: 530, column: 14, scope: !3634)
!3659 = !DILocation(line: 530, column: 20, scope: !3634)
!3660 = !DILocation(line: 530, column: 38, scope: !3634)
!3661 = !DILocation(line: 533, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3634, file: !2, line: 533, column: 7)
!3663 = !DILocation(line: 533, column: 18, scope: !3662)
!3664 = !DILocation(line: 533, column: 23, scope: !3662)
!3665 = !DILocation(line: 533, column: 35, scope: !3662)
!3666 = !DILocation(line: 533, column: 32, scope: !3662)
!3667 = !DILocation(line: 533, column: 7, scope: !3634)
!3668 = !DILocation(line: 534, column: 32, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 533, column: 45)
!3670 = !DILocation(line: 534, column: 5, scope: !3669)
!3671 = !DILocation(line: 534, column: 16, scope: !3669)
!3672 = !DILocation(line: 534, column: 21, scope: !3669)
!3673 = !DILocation(line: 534, column: 30, scope: !3669)
!3674 = !DILocation(line: 535, column: 3, scope: !3669)
!3675 = !DILocation(line: 538, column: 35, scope: !3634)
!3676 = !DILocation(line: 538, column: 46, scope: !3634)
!3677 = !DILocation(line: 538, column: 51, scope: !3634)
!3678 = !DILocation(line: 538, column: 28, scope: !3634)
!3679 = !DILocation(line: 538, column: 3, scope: !3634)
!3680 = !DILocation(line: 538, column: 14, scope: !3634)
!3681 = !DILocation(line: 538, column: 19, scope: !3634)
!3682 = !DILocation(line: 538, column: 26, scope: !3634)
!3683 = !DILocation(line: 539, column: 3, scope: !3634)
!3684 = !DILocation(line: 539, column: 14, scope: !3634)
!3685 = !DILocation(line: 539, column: 19, scope: !3634)
!3686 = !DILocation(line: 539, column: 24, scope: !3634)
!3687 = !DILocation(line: 540, column: 3, scope: !3634)
!3688 = !DILocation(line: 540, column: 14, scope: !3634)
!3689 = !DILocation(line: 540, column: 19, scope: !3634)
!3690 = !DILocation(line: 540, column: 24, scope: !3634)
!3691 = !DILocation(line: 541, column: 7, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3634, file: !2, line: 541, column: 7)
!3693 = !DILocation(line: 541, column: 18, scope: !3692)
!3694 = !DILocation(line: 541, column: 23, scope: !3692)
!3695 = !DILocation(line: 541, column: 30, scope: !3692)
!3696 = !DILocation(line: 541, column: 7, scope: !3634)
!3697 = !DILocation(line: 542, column: 18, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 541, column: 39)
!3699 = !DILocation(line: 545, column: 18, scope: !3698)
!3700 = !DILocation(line: 545, column: 29, scope: !3698)
!3701 = !DILocation(line: 545, column: 34, scope: !3698)
!3702 = !DILocation(line: 542, column: 5, scope: !3698)
!3703 = !DILocation(line: 546, column: 5, scope: !3698)
!3704 = !DILocation(line: 547, column: 3, scope: !3698)
!3705 = !DILocation(line: 579, column: 9, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3634, file: !2, line: 579, column: 3)
!3707 = !DILocation(line: 579, column: 7, scope: !3706)
!3708 = !DILocation(line: 579, column: 15, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3706, file: !2, line: 579, column: 3)
!3710 = !DILocation(line: 579, column: 19, scope: !3709)
!3711 = !DILocation(line: 579, column: 17, scope: !3709)
!3712 = !DILocation(line: 579, column: 3, scope: !3706)
!3713 = !DILocation(line: 580, column: 5, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3709, file: !2, line: 579, column: 36)
!3715 = !DILocation(line: 580, column: 5, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 580, column: 5)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !2, line: 580, column: 5)
!3718 = !DILocation(line: 580, column: 5, scope: !3717)
!3719 = !DILocalVariable(name: "src", scope: !3720, file: !2, line: 580, type: !1404)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !2, line: 580, column: 5)
!3721 = !DILocation(line: 580, column: 5, scope: !3720)
!3722 = !DILocalVariable(name: "dest", scope: !3720, file: !2, line: 580, type: !3512)
!3723 = !DILocalVariable(name: "capacity", scope: !3720, file: !2, line: 580, type: !932)
!3724 = !DILocalVariable(name: "max_dest", scope: !3720, file: !2, line: 580, type: !3512)
!3725 = !DILocalVariable(name: "i", scope: !3726, file: !2, line: 580, type: !93)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !2, line: 580, column: 5)
!3727 = !DILocation(line: 580, column: 5, scope: !3726)
!3728 = !DILocation(line: 580, column: 5, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3726, file: !2, line: 580, column: 5)
!3730 = !DILocation(line: 580, column: 5, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3729, file: !2, line: 580, column: 5)
!3732 = !DILocation(line: 580, column: 5, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !2, line: 580, column: 5)
!3734 = distinct !{!3734, !3728, !3728, !615}
!3735 = !DILocation(line: 581, column: 3, scope: !3714)
!3736 = !DILocation(line: 579, column: 32, scope: !3709)
!3737 = !DILocation(line: 579, column: 3, scope: !3709)
!3738 = distinct !{!3738, !3712, !3739, !615}
!3739 = !DILocation(line: 581, column: 3, scope: !3706)
!3740 = !DILocation(line: 582, column: 9, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3634, file: !2, line: 582, column: 3)
!3742 = !DILocation(line: 582, column: 7, scope: !3741)
!3743 = !DILocation(line: 582, column: 15, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3741, file: !2, line: 582, column: 3)
!3745 = !DILocation(line: 582, column: 19, scope: !3744)
!3746 = !DILocation(line: 582, column: 30, scope: !3744)
!3747 = !DILocation(line: 582, column: 36, scope: !3744)
!3748 = !DILocation(line: 582, column: 17, scope: !3744)
!3749 = !DILocation(line: 582, column: 3, scope: !3741)
!3750 = !DILocation(line: 583, column: 5, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3744, file: !2, line: 582, column: 48)
!3752 = !DILocation(line: 583, column: 5, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !2, line: 583, column: 5)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !2, line: 583, column: 5)
!3755 = !DILocation(line: 583, column: 5, scope: !3754)
!3756 = !DILocalVariable(name: "src", scope: !3757, file: !2, line: 583, type: !1404)
!3757 = distinct !DILexicalBlock(scope: !3753, file: !2, line: 583, column: 5)
!3758 = !DILocation(line: 583, column: 5, scope: !3757)
!3759 = !DILocalVariable(name: "dest", scope: !3757, file: !2, line: 583, type: !3512)
!3760 = !DILocalVariable(name: "capacity", scope: !3757, file: !2, line: 583, type: !932)
!3761 = !DILocalVariable(name: "max_dest", scope: !3757, file: !2, line: 583, type: !3512)
!3762 = !DILocalVariable(name: "i", scope: !3763, file: !2, line: 583, type: !93)
!3763 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 583, column: 5)
!3764 = !DILocation(line: 583, column: 5, scope: !3763)
!3765 = !DILocation(line: 583, column: 5, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !2, line: 583, column: 5)
!3767 = !DILocation(line: 583, column: 5, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3766, file: !2, line: 583, column: 5)
!3769 = !DILocation(line: 583, column: 5, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3768, file: !2, line: 583, column: 5)
!3771 = distinct !{!3771, !3765, !3765, !615}
!3772 = !DILocation(line: 584, column: 3, scope: !3751)
!3773 = !DILocation(line: 582, column: 44, scope: !3744)
!3774 = !DILocation(line: 582, column: 3, scope: !3744)
!3775 = distinct !{!3775, !3749, !3776, !615}
!3776 = !DILocation(line: 584, column: 3, scope: !3741)
!3777 = !DILocation(line: 589, column: 26, scope: !3634)
!3778 = !DILocation(line: 589, column: 37, scope: !3634)
!3779 = !DILocation(line: 589, column: 42, scope: !3634)
!3780 = !DILocation(line: 589, column: 3, scope: !3634)
!3781 = !DILocation(line: 589, column: 14, scope: !3634)
!3782 = !DILocation(line: 589, column: 19, scope: !3634)
!3783 = !DILocation(line: 589, column: 24, scope: !3634)
!3784 = !DILocation(line: 592, column: 8, scope: !3634)
!3785 = !DILocation(line: 592, column: 3, scope: !3634)
!3786 = !DILocation(line: 594, column: 16, scope: !3634)
!3787 = !DILocation(line: 597, column: 28, scope: !3634)
!3788 = !DILocation(line: 597, column: 46, scope: !3634)
!3789 = !DILocation(line: 598, column: 28, scope: !3634)
!3790 = !DILocation(line: 598, column: 39, scope: !3634)
!3791 = !DILocation(line: 598, column: 44, scope: !3634)
!3792 = !DILocation(line: 594, column: 3, scope: !3634)
!3793 = !DILocation(line: 599, column: 1, scope: !3634)
!3794 = distinct !DISubprogram(name: "coucal_log", scope: !2, file: !2, line: 308, type: !3795, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !1371, !208, !209, !211}
!3797 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3794, file: !2, line: 308, type: !1371)
!3798 = !DILocation(line: 308, column: 37, scope: !3794)
!3799 = !DILocalVariable(name: "level", arg: 2, scope: !3794, file: !2, line: 308, type: !208)
!3800 = !DILocation(line: 308, column: 64, scope: !3794)
!3801 = !DILocalVariable(name: "format", arg: 3, scope: !3794, file: !2, line: 309, type: !209)
!3802 = !DILocation(line: 309, column: 36, scope: !3794)
!3803 = !DILocalVariable(name: "args", arg: 4, scope: !3794, file: !2, line: 309, type: !211)
!3804 = !DILocation(line: 309, column: 52, scope: !3794)
!3805 = !DILocation(line: 310, column: 3, scope: !3794)
!3806 = !DILocation(line: 311, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3794, file: !2, line: 311, column: 7)
!3808 = !DILocation(line: 311, column: 17, scope: !3807)
!3809 = !DILocation(line: 311, column: 25, scope: !3807)
!3810 = !DILocation(line: 311, column: 28, scope: !3807)
!3811 = !DILocation(line: 311, column: 39, scope: !3807)
!3812 = !DILocation(line: 311, column: 46, scope: !3807)
!3813 = !DILocation(line: 311, column: 52, scope: !3807)
!3814 = !DILocation(line: 311, column: 56, scope: !3807)
!3815 = !DILocation(line: 311, column: 7, scope: !3794)
!3816 = !DILocation(line: 312, column: 5, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3807, file: !2, line: 311, column: 65)
!3818 = !DILocation(line: 312, column: 16, scope: !3817)
!3819 = !DILocation(line: 312, column: 23, scope: !3817)
!3820 = !DILocation(line: 312, column: 29, scope: !3817)
!3821 = !DILocation(line: 312, column: 33, scope: !3817)
!3822 = !DILocation(line: 312, column: 44, scope: !3817)
!3823 = !DILocation(line: 312, column: 51, scope: !3817)
!3824 = !DILocation(line: 312, column: 57, scope: !3817)
!3825 = !DILocation(line: 312, column: 62, scope: !3817)
!3826 = !DILocation(line: 312, column: 69, scope: !3817)
!3827 = !DILocation(line: 312, column: 77, scope: !3817)
!3828 = !DILocation(line: 313, column: 3, scope: !3817)
!3829 = !DILocation(line: 313, column: 14, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3807, file: !2, line: 313, column: 14)
!3831 = !DILocation(line: 313, column: 33, scope: !3830)
!3832 = !DILocation(line: 313, column: 14, scope: !3807)
!3833 = !DILocation(line: 314, column: 5, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !2, line: 313, column: 42)
!3835 = !DILocation(line: 314, column: 24, scope: !3834)
!3836 = !DILocation(line: 314, column: 35, scope: !3834)
!3837 = !DILocation(line: 314, column: 42, scope: !3834)
!3838 = !DILocation(line: 314, column: 50, scope: !3834)
!3839 = !DILocation(line: 315, column: 3, scope: !3834)
!3840 = !DILocation(line: 316, column: 13, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3830, file: !2, line: 315, column: 10)
!3842 = !DILocation(line: 316, column: 38, scope: !3841)
!3843 = !DILocation(line: 316, column: 5, scope: !3841)
!3844 = !DILocation(line: 317, column: 21, scope: !3841)
!3845 = !DILocation(line: 317, column: 29, scope: !3841)
!3846 = !DILocation(line: 317, column: 37, scope: !3841)
!3847 = !DILocation(line: 317, column: 12, scope: !3841)
!3848 = !DILocation(line: 318, column: 16, scope: !3841)
!3849 = !DILocation(line: 318, column: 5, scope: !3841)
!3850 = !DILocation(line: 320, column: 1, scope: !3794)
!3851 = distinct !DISubprogram(name: "coucal_fail", scope: !2, file: !2, line: 287, type: !3852, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !209, !209, !91}
!3854 = !DILocalVariable(name: "exp", arg: 1, scope: !3851, file: !2, line: 287, type: !209)
!3855 = !DILocation(line: 287, column: 37, scope: !3851)
!3856 = !DILocalVariable(name: "file", arg: 2, scope: !3851, file: !2, line: 287, type: !209)
!3857 = !DILocation(line: 287, column: 54, scope: !3851)
!3858 = !DILocalVariable(name: "line", arg: 3, scope: !3851, file: !2, line: 287, type: !91)
!3859 = !DILocation(line: 287, column: 64, scope: !3851)
!3860 = !DILocation(line: 288, column: 11, scope: !3851)
!3861 = !DILocation(line: 288, column: 55, scope: !3851)
!3862 = !DILocation(line: 288, column: 60, scope: !3851)
!3863 = !DILocation(line: 288, column: 66, scope: !3851)
!3864 = !DILocation(line: 288, column: 3, scope: !3851)
!3865 = !DILocation(line: 289, column: 3, scope: !3851)
!3866 = distinct !DISubprogram(name: "coucal_print_key", scope: !2, file: !2, line: 875, type: !3867, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!209, !126, !181}
!3869 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3866, file: !2, line: 875, type: !126)
!3870 = !DILocation(line: 875, column: 44, scope: !3866)
!3871 = !DILocalVariable(name: "name", arg: 2, scope: !3866, file: !2, line: 876, type: !181)
!3872 = !DILocation(line: 876, column: 54, scope: !3866)
!3873 = !DILocation(line: 877, column: 10, scope: !3866)
!3874 = !DILocation(line: 877, column: 21, scope: !3866)
!3875 = !DILocation(line: 877, column: 28, scope: !3866)
!3876 = !DILocation(line: 877, column: 34, scope: !3866)
!3877 = !DILocation(line: 877, column: 38, scope: !3866)
!3878 = !DILocation(line: 878, column: 7, scope: !3866)
!3879 = !DILocation(line: 878, column: 18, scope: !3866)
!3880 = !DILocation(line: 878, column: 25, scope: !3866)
!3881 = !DILocation(line: 878, column: 31, scope: !3866)
!3882 = !DILocation(line: 878, column: 35, scope: !3866)
!3883 = !DILocation(line: 878, column: 46, scope: !3866)
!3884 = !DILocation(line: 878, column: 53, scope: !3866)
!3885 = !DILocation(line: 878, column: 59, scope: !3866)
!3886 = !DILocation(line: 878, column: 64, scope: !3866)
!3887 = !DILocation(line: 879, column: 21, scope: !3866)
!3888 = !DILocation(line: 877, column: 3, scope: !3866)
!3889 = distinct !DISubprogram(name: "coucal_equals", scope: !2, file: !2, line: 493, type: !3890, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!91, !126, !181, !181}
!3892 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3889, file: !2, line: 493, type: !126)
!3893 = !DILocation(line: 493, column: 48, scope: !3889)
!3894 = !DILocalVariable(name: "a", arg: 2, scope: !3889, file: !2, line: 494, type: !181)
!3895 = !DILocation(line: 494, column: 58, scope: !3889)
!3896 = !DILocalVariable(name: "b", arg: 3, scope: !3889, file: !2, line: 495, type: !181)
!3897 = !DILocation(line: 495, column: 58, scope: !3889)
!3898 = !DILocation(line: 496, column: 10, scope: !3889)
!3899 = !DILocation(line: 496, column: 21, scope: !3889)
!3900 = !DILocation(line: 496, column: 28, scope: !3889)
!3901 = !DILocation(line: 496, column: 32, scope: !3889)
!3902 = !DILocation(line: 496, column: 39, scope: !3889)
!3903 = !DILocation(line: 497, column: 28, scope: !3889)
!3904 = !DILocation(line: 497, column: 45, scope: !3889)
!3905 = !DILocation(line: 497, column: 7, scope: !3889)
!3906 = !DILocation(line: 497, column: 48, scope: !3889)
!3907 = !DILocation(line: 498, column: 7, scope: !3889)
!3908 = !DILocation(line: 498, column: 18, scope: !3889)
!3909 = !DILocation(line: 498, column: 25, scope: !3889)
!3910 = !DILocation(line: 498, column: 29, scope: !3889)
!3911 = !DILocation(line: 498, column: 36, scope: !3889)
!3912 = !DILocation(line: 498, column: 47, scope: !3889)
!3913 = !DILocation(line: 498, column: 54, scope: !3889)
!3914 = !DILocation(line: 498, column: 58, scope: !3889)
!3915 = !DILocation(line: 498, column: 63, scope: !3889)
!3916 = !DILocation(line: 498, column: 66, scope: !3889)
!3917 = !DILocation(line: 496, column: 3, scope: !3889)
!3918 = distinct !DISubprogram(name: "coucal_del_item", scope: !2, file: !2, line: 817, type: !3919, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !126, !100}
!3921 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3918, file: !2, line: 817, type: !126)
!3922 = !DILocation(line: 817, column: 36, scope: !3918)
!3923 = !DILocalVariable(name: "pitem", arg: 2, scope: !3918, file: !2, line: 817, type: !100)
!3924 = !DILocation(line: 817, column: 60, scope: !3918)
!3925 = !DILocation(line: 818, column: 21, scope: !3918)
!3926 = !DILocation(line: 818, column: 33, scope: !3918)
!3927 = !DILocation(line: 818, column: 40, scope: !3918)
!3928 = !DILocation(line: 818, column: 3, scope: !3918)
!3929 = !DILocation(line: 819, column: 19, scope: !3918)
!3930 = !DILocation(line: 819, column: 30, scope: !3918)
!3931 = !DILocation(line: 819, column: 3, scope: !3918)
!3932 = !DILocation(line: 820, column: 1, scope: !3918)
!3933 = distinct !DISubprogram(name: "coucal_del_name", scope: !2, file: !2, line: 808, type: !3919, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3934 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3933, file: !2, line: 808, type: !126)
!3935 = !DILocation(line: 808, column: 36, scope: !3933)
!3936 = !DILocalVariable(name: "item", arg: 2, scope: !3933, file: !2, line: 808, type: !100)
!3937 = !DILocation(line: 808, column: 60, scope: !3933)
!3938 = !DILocalVariable(name: "nullHash", scope: !3933, file: !2, line: 809, type: !1042)
!3939 = !DILocation(line: 809, column: 25, scope: !3933)
!3940 = !DILocalVariable(name: "name", scope: !3933, file: !2, line: 810, type: !3512)
!3941 = !DILocation(line: 810, column: 15, scope: !3933)
!3942 = !DILocation(line: 810, column: 30, scope: !3933)
!3943 = !DILocation(line: 810, column: 36, scope: !3933)
!3944 = !DILocation(line: 811, column: 3, scope: !3933)
!3945 = !DILocation(line: 811, column: 9, scope: !3933)
!3946 = !DILocation(line: 811, column: 14, scope: !3933)
!3947 = !DILocation(line: 812, column: 3, scope: !3933)
!3948 = !DILocation(line: 812, column: 9, scope: !3933)
!3949 = !DILocation(line: 812, column: 18, scope: !3933)
!3950 = !DILocation(line: 814, column: 19, scope: !3933)
!3951 = !DILocation(line: 814, column: 30, scope: !3933)
!3952 = !DILocation(line: 814, column: 3, scope: !3933)
!3953 = !DILocation(line: 815, column: 1, scope: !3933)
!3954 = distinct !DISubprogram(name: "coucal_free_key", scope: !2, file: !2, line: 732, type: !3955, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{null, !126, !105}
!3957 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3954, file: !2, line: 732, type: !126)
!3958 = !DILocation(line: 732, column: 36, scope: !3954)
!3959 = !DILocalVariable(name: "name", arg: 2, scope: !3954, file: !2, line: 732, type: !105)
!3960 = !DILocation(line: 732, column: 58, scope: !3954)
!3961 = !DILocation(line: 733, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3954, file: !2, line: 733, column: 7)
!3963 = !DILocation(line: 733, column: 18, scope: !3962)
!3964 = !DILocation(line: 733, column: 25, scope: !3962)
!3965 = !DILocation(line: 733, column: 29, scope: !3962)
!3966 = !DILocation(line: 733, column: 34, scope: !3962)
!3967 = !DILocation(line: 733, column: 7, scope: !3954)
!3968 = !DILocation(line: 734, column: 30, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 733, column: 43)
!3970 = !DILocation(line: 734, column: 41, scope: !3969)
!3971 = !DILocation(line: 734, column: 5, scope: !3969)
!3972 = !DILocation(line: 735, column: 3, scope: !3969)
!3973 = !DILocation(line: 736, column: 5, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 735, column: 10)
!3975 = !DILocation(line: 736, column: 16, scope: !3974)
!3976 = !DILocation(line: 736, column: 23, scope: !3974)
!3977 = !DILocation(line: 736, column: 27, scope: !3974)
!3978 = !DILocation(line: 736, column: 32, scope: !3974)
!3979 = !DILocation(line: 736, column: 43, scope: !3974)
!3980 = !DILocation(line: 736, column: 50, scope: !3974)
!3981 = !DILocation(line: 736, column: 54, scope: !3974)
!3982 = !DILocation(line: 736, column: 59, scope: !3974)
!3983 = !DILocation(line: 738, column: 1, scope: !3954)
!3984 = distinct !DISubprogram(name: "coucal_free_key_internal", scope: !2, file: !2, line: 704, type: !3955, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!3985 = !DILocalVariable(name: "hashtable", arg: 1, scope: !3984, file: !2, line: 704, type: !126)
!3986 = !DILocation(line: 704, column: 45, scope: !3984)
!3987 = !DILocalVariable(name: "name_", arg: 2, scope: !3984, file: !2, line: 704, type: !105)
!3988 = !DILocation(line: 704, column: 67, scope: !3984)
!3989 = !DILocalVariable(name: "name", scope: !3984, file: !2, line: 705, type: !3512)
!3990 = !DILocation(line: 705, column: 15, scope: !3984)
!3991 = !DILocation(line: 705, column: 30, scope: !3984)
!3992 = !DILocalVariable(name: "len", scope: !3984, file: !2, line: 706, type: !932)
!3993 = !DILocation(line: 706, column: 16, scope: !3984)
!3994 = !DILocation(line: 706, column: 29, scope: !3984)
!3995 = !DILocation(line: 706, column: 22, scope: !3984)
!3996 = !DILocation(line: 706, column: 35, scope: !3984)
!3997 = !DILocation(line: 709, column: 7, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3984, file: !2, line: 709, column: 7)
!3999 = !DILocation(line: 709, column: 11, scope: !3998)
!4000 = !DILocation(line: 709, column: 16, scope: !3998)
!4001 = !DILocation(line: 709, column: 19, scope: !3998)
!4002 = !DILocation(line: 709, column: 24, scope: !3998)
!4003 = !DILocation(line: 709, column: 7, scope: !3984)
!4004 = !DILocation(line: 710, column: 5, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !2, line: 709, column: 45)
!4006 = !DILocation(line: 711, column: 5, scope: !4005)
!4007 = !DILocation(line: 714, column: 3, scope: !3984)
!4008 = !DILocation(line: 715, column: 27, scope: !3984)
!4009 = !DILocation(line: 715, column: 3, scope: !3984)
!4010 = !DILocation(line: 715, column: 14, scope: !3984)
!4011 = !DILocation(line: 715, column: 19, scope: !3984)
!4012 = !DILocation(line: 715, column: 24, scope: !3984)
!4013 = !DILocation(line: 716, column: 4, scope: !3984)
!4014 = !DILocation(line: 716, column: 9, scope: !3984)
!4015 = !DILocation(line: 719, column: 7, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3984, file: !2, line: 719, column: 7)
!4017 = !DILocation(line: 719, column: 18, scope: !4016)
!4018 = !DILocation(line: 719, column: 23, scope: !4016)
!4019 = !DILocation(line: 719, column: 30, scope: !4016)
!4020 = !DILocation(line: 719, column: 41, scope: !4016)
!4021 = !DILocation(line: 719, column: 46, scope: !4016)
!4022 = !DILocation(line: 719, column: 51, scope: !4016)
!4023 = !DILocation(line: 719, column: 28, scope: !4016)
!4024 = !DILocation(line: 719, column: 7, scope: !3984)
!4025 = !DILocalVariable(name: "capacity", scope: !4026, file: !2, line: 720, type: !93)
!4026 = distinct !DILexicalBlock(scope: !4016, file: !2, line: 719, column: 56)
!4027 = !DILocation(line: 720, column: 12, scope: !4026)
!4028 = !DILocation(line: 720, column: 23, scope: !4026)
!4029 = !DILocation(line: 720, column: 34, scope: !4026)
!4030 = !DILocation(line: 720, column: 39, scope: !4026)
!4031 = !DILocation(line: 722, column: 9, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 722, column: 9)
!4033 = !DILocation(line: 722, column: 20, scope: !4032)
!4034 = !DILocation(line: 722, column: 25, scope: !4032)
!4035 = !DILocation(line: 722, column: 32, scope: !4032)
!4036 = !DILocation(line: 722, column: 41, scope: !4032)
!4037 = !DILocation(line: 722, column: 30, scope: !4032)
!4038 = !DILocation(line: 722, column: 9, scope: !4026)
!4039 = !DILocation(line: 723, column: 16, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4032, file: !2, line: 722, column: 46)
!4041 = !DILocation(line: 724, column: 5, scope: !4040)
!4042 = !DILocation(line: 725, column: 5, scope: !4026)
!4043 = !DILocation(line: 726, column: 25, scope: !4026)
!4044 = !DILocation(line: 726, column: 36, scope: !4026)
!4045 = !DILocation(line: 726, column: 5, scope: !4026)
!4046 = !DILocation(line: 727, column: 3, scope: !4026)
!4047 = !DILocation(line: 728, column: 1, scope: !3984)
!4048 = distinct !DISubprogram(name: "coucal_info", scope: !2, file: !2, line: 268, type: !1369, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !420)
!4049 = !DILocalVariable(name: "hashtable", arg: 1, scope: !4048, file: !2, line: 268, type: !1371)
!4050 = !DILocation(line: 268, column: 1, scope: !4048)
!4051 = !DILocalVariable(name: "format", arg: 2, scope: !4048, file: !2, line: 268, type: !209)
!4052 = !DILocalVariable(name: "args", scope: !4048, file: !2, line: 268, type: !1376)
