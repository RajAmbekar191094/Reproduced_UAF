; ModuleID = '/home/raj/transmission/libtransmission/jsonsl.c'
source_filename = "/home/raj/transmission/libtransmission/jsonsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsonsl_st = type { i32, i32, i64, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.anon, ptr, i32, i8, i8, i32, i32, i64, ptr, ptr, [1 x %struct.jsonsl_state_st] }
%struct.anon = type { i32 }
%struct.jsonsl_state_st = type { i32, i32, i64, i64, i32, i64, i32, i32, ptr }
%struct.jsonsl_jpr_component_st = type { ptr, i64, i64, i32, i16 }
%struct.jsonsl_jpr_st = type { ptr, i64, i32, ptr, ptr, i64 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [17 x i8] c"GARBAGE_TRAILING\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [17 x i8] c"SPECIAL_EXPECTED\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [19 x i8] c"SPECIAL_INCOMPLETE\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [12 x i8] c"STRAY_TOKEN\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [14 x i8] c"MISSING_TOKEN\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [12 x i8] c"CANT_INSERT\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [22 x i8] c"ESCAPE_OUTSIDE_STRING\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [19 x i8] c"KEY_OUTSIDE_OBJECT\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [25 x i8] c"STRING_OUTSIDE_CONTAINER\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [16 x i8] c"FOUND_NULL_BYTE\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [16 x i8] c"LEVELS_EXCEEDED\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [17 x i8] c"BRACKET_MISMATCH\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [14 x i8] c"HKEY_EXPECTED\00", align 1, !dbg !64
@.str.17 = private unnamed_addr constant [17 x i8] c"WEIRD_WHITESPACE\00", align 1, !dbg !66
@.str.18 = private unnamed_addr constant [17 x i8] c"UESCAPE_TOOSHORT\00", align 1, !dbg !68
@.str.19 = private unnamed_addr constant [15 x i8] c"ESCAPE_INVALID\00", align 1, !dbg !70
@.str.20 = private unnamed_addr constant [15 x i8] c"TRAILING_COMMA\00", align 1, !dbg !75
@.str.21 = private unnamed_addr constant [15 x i8] c"INVALID_NUMBER\00", align 1, !dbg !77
@.str.22 = private unnamed_addr constant [15 x i8] c"VALUE_EXPECTED\00", align 1, !dbg !79
@.str.23 = private unnamed_addr constant [15 x i8] c"PERCENT_BADHEX\00", align 1, !dbg !81
@.str.24 = private unnamed_addr constant [12 x i8] c"JPR_BADPATH\00", align 1, !dbg !83
@.str.25 = private unnamed_addr constant [13 x i8] c"JPR_DUPSLASH\00", align 1, !dbg !85
@.str.26 = private unnamed_addr constant [11 x i8] c"JPR_NOROOT\00", align 1, !dbg !90
@.str.27 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1, !dbg !95
@.str.28 = private unnamed_addr constant [18 x i8] c"INVALID_CODEPOINT\00", align 1, !dbg !100
@.str.29 = private unnamed_addr constant [16 x i8] c"<UNKNOWN_ERROR>\00", align 1, !dbg !105
@.str.30 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1, !dbg !107
@.str.31 = private unnamed_addr constant [5 x i8] c"HKEY\00", align 1, !dbg !109
@.str.32 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1, !dbg !111
@.str.33 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1, !dbg !113
@.str.34 = private unnamed_addr constant [8 x i8] c"SPECIAL\00", align 1, !dbg !115
@.str.35 = private unnamed_addr constant [8 x i8] c"UESCAPE\00", align 1, !dbg !117
@.str.36 = private unnamed_addr constant [13 x i8] c"UNKNOWN TYPE\00", align 1, !dbg !119
@.str.37 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1, !dbg !121
@.str.38 = private unnamed_addr constant [9 x i8] c"POSSIBLE\00", align 1, !dbg !126
@.str.39 = private unnamed_addr constant [8 x i8] c"NOMATCH\00", align 1, !dbg !128
@.str.40 = private unnamed_addr constant [14 x i8] c"TYPE_MISMATCH\00", align 1, !dbg !130
@.str.41 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1, !dbg !132
@String_No_Passthrough = internal constant <{ [93 x i32], [163 x i32] }> <{ [93 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [163 x i32] zeroinitializer }>, align 16, !dbg !137
@.str.43 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !351
@Escape_Equivs = internal global <{ [117 x i8], [139 x i8] }> <{ [117 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\0C\00\00\00\00\00\00\00\0A\00\00\00\0D\00\09", [139 x i8] zeroinitializer }>, align 16, !dbg !356
@Special_Table = internal global <{ [117 x i16], [139 x i16] }> <{ [117 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4096, i16 0, i16 0, i16 2050, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4], [139 x i16] zeroinitializer }>, align 16, !dbg !361
@Special_Endings = internal global <{ [126 x i32], [130 x i32] }> <{ [126 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], [130 x i32] zeroinitializer }>, align 16, !dbg !364
@Allowed_Whitespace = internal global <{ [33 x i32], [223 x i32] }> <{ [33 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [223 x i32] zeroinitializer }>, align 16, !dbg !367
@Allowed_Escapes = internal global <{ [118 x i32], [138 x i32] }> <{ [118 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1], [138 x i32] zeroinitializer }>, align 16, !dbg !369

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_dump_global_metrics() #0 !dbg !381 {
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_new(i32 noundef %0) #0 !dbg !386 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata ptr %4, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata ptr %5, metadata !393, metadata !DIExpression()), !dbg !394
  %6 = load i32, ptr %3, align 4, !dbg !395
  %7 = icmp slt i32 %6, 2, !dbg !397
  br i1 %7, label %8, label %9, !dbg !398

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !399
  br label %41, !dbg !399

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4, !dbg !401
  %11 = sub nsw i32 %10, 1, !dbg !402
  %12 = sext i32 %11 to i64, !dbg !403
  %13 = mul i64 %12, 56, !dbg !404
  %14 = add i64 216, %13, !dbg !405
  %15 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %14) #9, !dbg !406
  store ptr %15, ptr %5, align 8, !dbg !407
  %16 = load i32, ptr %3, align 4, !dbg !408
  %17 = load ptr, ptr %5, align 8, !dbg !409
  %18 = getelementptr inbounds %struct.jsonsl_st, ptr %17, i32 0, i32 23, !dbg !410
  store i32 %16, ptr %18, align 4, !dbg !411
  %19 = load ptr, ptr %5, align 8, !dbg !412
  %20 = getelementptr inbounds %struct.jsonsl_st, ptr %19, i32 0, i32 7, !dbg !413
  store i32 -1, ptr %20, align 8, !dbg !414
  %21 = load ptr, ptr %5, align 8, !dbg !415
  call void @jsonsl_reset(ptr noundef %21), !dbg !416
  store i32 0, ptr %4, align 4, !dbg !417
  br label %22, !dbg !419

22:                                               ; preds = %36, %9
  %23 = load i32, ptr %4, align 4, !dbg !420
  %24 = load ptr, ptr %5, align 8, !dbg !422
  %25 = getelementptr inbounds %struct.jsonsl_st, ptr %24, i32 0, i32 23, !dbg !423
  %26 = load i32, ptr %25, align 4, !dbg !423
  %27 = icmp ult i32 %23, %26, !dbg !424
  br i1 %27, label %28, label %39, !dbg !425

28:                                               ; preds = %22
  %29 = load i32, ptr %4, align 4, !dbg !426
  %30 = load ptr, ptr %5, align 8, !dbg !428
  %31 = getelementptr inbounds %struct.jsonsl_st, ptr %30, i32 0, i32 27, !dbg !429
  %32 = load i32, ptr %4, align 4, !dbg !430
  %33 = zext i32 %32 to i64, !dbg !428
  %34 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %31, i64 0, i64 %33, !dbg !428
  %35 = getelementptr inbounds %struct.jsonsl_state_st, ptr %34, i32 0, i32 4, !dbg !431
  store i32 %29, ptr %35, align 8, !dbg !432
  br label %36, !dbg !433

36:                                               ; preds = %28
  %37 = load i32, ptr %4, align 4, !dbg !434
  %38 = add i32 %37, 1, !dbg !434
  store i32 %38, ptr %4, align 4, !dbg !434
  br label %22, !dbg !435, !llvm.loop !436

39:                                               ; preds = %22
  %40 = load ptr, ptr %5, align 8, !dbg !439
  store ptr %40, ptr %2, align 8, !dbg !440
  br label %41, !dbg !440

41:                                               ; preds = %39, %8
  %42 = load ptr, ptr %2, align 8, !dbg !441
  ret ptr %42, !dbg !441
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_reset(ptr noundef %0) #0 !dbg !442 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 8, !dbg !447
  %4 = getelementptr inbounds %struct.jsonsl_st, ptr %3, i32 0, i32 21, !dbg !448
  store i8 0, ptr %4, align 1, !dbg !449
  %5 = load ptr, ptr %2, align 8, !dbg !450
  %6 = getelementptr inbounds %struct.jsonsl_st, ptr %5, i32 0, i32 22, !dbg !451
  store i32 1, ptr %6, align 8, !dbg !452
  %7 = load ptr, ptr %2, align 8, !dbg !453
  %8 = getelementptr inbounds %struct.jsonsl_st, ptr %7, i32 0, i32 2, !dbg !454
  store i64 0, ptr %8, align 8, !dbg !455
  %9 = load ptr, ptr %2, align 8, !dbg !456
  %10 = getelementptr inbounds %struct.jsonsl_st, ptr %9, i32 0, i32 0, !dbg !457
  store i32 0, ptr %10, align 8, !dbg !458
  %11 = load ptr, ptr %2, align 8, !dbg !459
  %12 = getelementptr inbounds %struct.jsonsl_st, ptr %11, i32 0, i32 1, !dbg !460
  store i32 0, ptr %12, align 4, !dbg !461
  %13 = load ptr, ptr %2, align 8, !dbg !462
  %14 = getelementptr inbounds %struct.jsonsl_st, ptr %13, i32 0, i32 19, !dbg !463
  store i32 0, ptr %14, align 8, !dbg !464
  %15 = load ptr, ptr %2, align 8, !dbg !465
  %16 = getelementptr inbounds %struct.jsonsl_st, ptr %15, i32 0, i32 20, !dbg !466
  store i8 0, ptr %16, align 4, !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_destroy(ptr noundef %0) #0 !dbg !469 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !471
  %3 = load ptr, ptr %2, align 8, !dbg !472
  %4 = icmp ne ptr %3, null, !dbg !472
  br i1 %4, label %5, label %7, !dbg !474

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !475
  call void @free(ptr noundef %6) #10, !dbg !477
  br label %7, !dbg !478

7:                                                ; preds = %5, %1
  ret void, !dbg !479
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_feed(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !480 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !484
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !485, metadata !DIExpression()), !dbg !486
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata ptr %7, metadata !489, metadata !DIExpression()), !dbg !492
  %12 = load ptr, ptr %5, align 8, !dbg !493
  store ptr %12, ptr %7, align 8, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %8, metadata !494, metadata !DIExpression()), !dbg !495
  %13 = load ptr, ptr %4, align 8, !dbg !496
  %14 = getelementptr inbounds %struct.jsonsl_st, ptr %13, i32 0, i32 23, !dbg !497
  %15 = load i32, ptr %14, align 4, !dbg !497
  %16 = zext i32 %15 to i64, !dbg !496
  store i64 %16, ptr %8, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %9, metadata !498, metadata !DIExpression()), !dbg !499
  %17 = load ptr, ptr %4, align 8, !dbg !500
  %18 = getelementptr inbounds %struct.jsonsl_st, ptr %17, i32 0, i32 27, !dbg !501
  %19 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %18, i64 0, i64 0, !dbg !500
  %20 = load ptr, ptr %4, align 8, !dbg !502
  %21 = getelementptr inbounds %struct.jsonsl_st, ptr %20, i32 0, i32 0, !dbg !503
  %22 = load i32, ptr %21, align 8, !dbg !503
  %23 = zext i32 %22 to i64, !dbg !504
  %24 = getelementptr inbounds %struct.jsonsl_state_st, ptr %19, i64 %23, !dbg !504
  store ptr %24, ptr %9, align 8, !dbg !499
  %25 = load ptr, ptr %5, align 8, !dbg !505
  %26 = load ptr, ptr %4, align 8, !dbg !506
  %27 = getelementptr inbounds %struct.jsonsl_st, ptr %26, i32 0, i32 3, !dbg !507
  store ptr %25, ptr %27, align 8, !dbg !508
  br label %28, !dbg !509

28:                                               ; preds = %2032, %3
  %29 = load i64, ptr %6, align 8, !dbg !510
  %30 = icmp ne i64 %29, 0, !dbg !513
  br i1 %30, label %31, label %2041, !dbg !513

31:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !514, metadata !DIExpression()), !dbg !516
  br label %32, !dbg !517

32:                                               ; preds = %1911, %1891, %1869, %1858, %1842, %1747, %1725, %1658, %1627, %1431, %1409, %1377, %1350, %1317, %1294, %1283, %1069, %953, %661, %639, %615, %593, %567, %545, %498, %466, %434, %393, %372, %348, %324, %272, %242, %201, %153, %61, %31
  call void @llvm.dbg.label(metadata !518), !dbg !519
  %33 = load ptr, ptr %9, align 8, !dbg !520
  %34 = getelementptr inbounds %struct.jsonsl_state_st, ptr %33, i32 0, i32 0, !dbg !521
  %35 = load i32, ptr %34, align 8, !dbg !521
  store i32 %35, ptr %10, align 4, !dbg !522
  %36 = load i32, ptr %10, align 4, !dbg !523
  %37 = and i32 %36, 16776960, !dbg !525
  %38 = icmp ne i32 %37, 0, !dbg !525
  br i1 %38, label %39, label %155, !dbg !526

39:                                               ; preds = %32
  %40 = load ptr, ptr %4, align 8, !dbg !527
  %41 = getelementptr inbounds %struct.jsonsl_st, ptr %40, i32 0, i32 19, !dbg !530
  %42 = load i32, ptr %41, align 8, !dbg !530
  %43 = icmp ne i32 %42, 0, !dbg !527
  br i1 %43, label %44, label %127, !dbg !531

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !dbg !532
  %46 = getelementptr inbounds %struct.jsonsl_st, ptr %45, i32 0, i32 19, !dbg !534
  store i32 0, ptr %46, align 8, !dbg !535
  %47 = load ptr, ptr %7, align 8, !dbg !536
  %48 = load i8, ptr %47, align 1, !dbg !536
  %49 = zext i8 %48 to i32, !dbg !536
  %50 = call i32 @is_allowed_escape(i32 noundef %49), !dbg !538
  %51 = icmp ne i32 %50, 0, !dbg !538
  br i1 %51, label %63, label %52, !dbg !539

52:                                               ; preds = %44
  %53 = load ptr, ptr %4, align 8, !dbg !540
  %54 = getelementptr inbounds %struct.jsonsl_st, ptr %53, i32 0, i32 8, !dbg !540
  %55 = load ptr, ptr %54, align 8, !dbg !540
  %56 = load ptr, ptr %4, align 8, !dbg !540
  %57 = load ptr, ptr %9, align 8, !dbg !540
  %58 = load ptr, ptr %7, align 8, !dbg !540
  %59 = call i32 %55(ptr noundef %56, i32 noundef 16, ptr noundef %57, ptr noundef %58), !dbg !540
  %60 = icmp ne i32 %59, 0, !dbg !540
  br i1 %60, label %61, label %62, !dbg !543

61:                                               ; preds = %52
  br label %32, !dbg !544

62:                                               ; preds = %52
  br label %2041, !dbg !543

63:                                               ; preds = %44
  %64 = load ptr, ptr %7, align 8, !dbg !546
  %65 = load i8, ptr %64, align 1, !dbg !546
  %66 = zext i8 %65 to i32, !dbg !546
  %67 = icmp eq i32 %66, 117, !dbg !548
  br i1 %67, label %68, label %125, !dbg !549

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 8, !dbg !550
  %70 = getelementptr inbounds %struct.jsonsl_st, ptr %69, i32 0, i32 15, !dbg !550
  %71 = load i32, ptr %70, align 8, !dbg !550
  %72 = icmp ne i32 %71, 0, !dbg !550
  br i1 %72, label %73, label %118, !dbg !550

73:                                               ; preds = %68
  %74 = load ptr, ptr %4, align 8, !dbg !550
  %75 = getelementptr inbounds %struct.jsonsl_st, ptr %74, i32 0, i32 7, !dbg !550
  %76 = load i32, ptr %75, align 8, !dbg !550
  %77 = load ptr, ptr %9, align 8, !dbg !550
  %78 = getelementptr inbounds %struct.jsonsl_state_st, ptr %77, i32 0, i32 4, !dbg !550
  %79 = load i32, ptr %78, align 8, !dbg !550
  %80 = icmp ugt i32 %76, %79, !dbg !550
  br i1 %80, label %81, label %118, !dbg !550

81:                                               ; preds = %73
  %82 = load ptr, ptr %9, align 8, !dbg !550
  %83 = getelementptr inbounds %struct.jsonsl_state_st, ptr %82, i32 0, i32 6, !dbg !550
  %84 = load i32, ptr %83, align 8, !dbg !550
  %85 = icmp eq i32 %84, 0, !dbg !550
  br i1 %85, label %86, label %118, !dbg !553

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 8, !dbg !554
  %88 = getelementptr inbounds %struct.jsonsl_st, ptr %87, i32 0, i32 14, !dbg !554
  %89 = load ptr, ptr %88, align 8, !dbg !554
  %90 = icmp ne ptr %89, null, !dbg !554
  br i1 %90, label %91, label %98, !dbg !557

91:                                               ; preds = %86
  %92 = load ptr, ptr %4, align 8, !dbg !558
  %93 = getelementptr inbounds %struct.jsonsl_st, ptr %92, i32 0, i32 14, !dbg !558
  %94 = load ptr, ptr %93, align 8, !dbg !558
  %95 = load ptr, ptr %4, align 8, !dbg !558
  %96 = load ptr, ptr %9, align 8, !dbg !558
  %97 = load ptr, ptr %7, align 8, !dbg !558
  call void %94(ptr noundef %95, i32 noundef 85, ptr noundef %96, ptr noundef %97), !dbg !558
  br label %111, !dbg !558

98:                                               ; preds = %86
  %99 = load ptr, ptr %4, align 8, !dbg !560
  %100 = getelementptr inbounds %struct.jsonsl_st, ptr %99, i32 0, i32 6, !dbg !560
  %101 = load ptr, ptr %100, align 8, !dbg !560
  %102 = icmp ne ptr %101, null, !dbg !560
  br i1 %102, label %103, label %110, !dbg !554

103:                                              ; preds = %98
  %104 = load ptr, ptr %4, align 8, !dbg !562
  %105 = getelementptr inbounds %struct.jsonsl_st, ptr %104, i32 0, i32 6, !dbg !562
  %106 = load ptr, ptr %105, align 8, !dbg !562
  %107 = load ptr, ptr %4, align 8, !dbg !562
  %108 = load ptr, ptr %9, align 8, !dbg !562
  %109 = load ptr, ptr %7, align 8, !dbg !562
  call void %106(ptr noundef %107, i32 noundef 85, ptr noundef %108, ptr noundef %109), !dbg !562
  br label %110, !dbg !562

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %91
  %112 = load ptr, ptr %4, align 8, !dbg !564
  %113 = getelementptr inbounds %struct.jsonsl_st, ptr %112, i32 0, i32 1, !dbg !564
  %114 = load i32, ptr %113, align 4, !dbg !564
  %115 = icmp ne i32 %114, 0, !dbg !564
  br i1 %115, label %116, label %117, !dbg !557

116:                                              ; preds = %111
  br label %2041, !dbg !566

117:                                              ; preds = %111
  br label %118, !dbg !557

118:                                              ; preds = %117, %81, %73, %68
  %119 = load ptr, ptr %4, align 8, !dbg !568
  %120 = getelementptr inbounds %struct.jsonsl_st, ptr %119, i32 0, i32 16, !dbg !570
  %121 = load i32, ptr %120, align 4, !dbg !570
  %122 = icmp ne i32 %121, 0, !dbg !568
  br i1 %122, label %123, label %124, !dbg !571

123:                                              ; preds = %118
  br label %2041, !dbg !572

124:                                              ; preds = %118
  br label %125, !dbg !574

125:                                              ; preds = %124, %63
  br label %126

126:                                              ; preds = %125
  br label %2032, !dbg !575

127:                                              ; preds = %39
  %128 = load ptr, ptr %4, align 8, !dbg !576
  %129 = call i32 @jsonsl__str_fastparse(ptr noundef %128, ptr noundef %7, ptr noundef %6), !dbg !578
  %130 = icmp eq i32 %129, 1, !dbg !579
  br i1 %130, label %131, label %132, !dbg !580

131:                                              ; preds = %127
  br label %2041, !dbg !581

132:                                              ; preds = %127
  %133 = load ptr, ptr %7, align 8, !dbg !583
  %134 = load i8, ptr %133, align 1, !dbg !583
  %135 = zext i8 %134 to i32, !dbg !583
  %136 = icmp eq i32 %135, 34, !dbg !586
  br i1 %136, label %137, label %138, !dbg !587

137:                                              ; preds = %132
  br label %779, !dbg !588

138:                                              ; preds = %132
  %139 = load ptr, ptr %7, align 8, !dbg !590
  %140 = load i8, ptr %139, align 1, !dbg !590
  %141 = zext i8 %140 to i32, !dbg !590
  %142 = icmp eq i32 %141, 92, !dbg !592
  br i1 %142, label %143, label %144, !dbg !593

143:                                              ; preds = %138
  br label %1302, !dbg !594

144:                                              ; preds = %138
  %145 = load ptr, ptr %4, align 8, !dbg !596
  %146 = getelementptr inbounds %struct.jsonsl_st, ptr %145, i32 0, i32 8, !dbg !596
  %147 = load ptr, ptr %146, align 8, !dbg !596
  %148 = load ptr, ptr %4, align 8, !dbg !596
  %149 = load ptr, ptr %9, align 8, !dbg !596
  %150 = load ptr, ptr %7, align 8, !dbg !596
  %151 = call i32 %147(ptr noundef %148, i32 noundef 14, ptr noundef %149, ptr noundef %150), !dbg !596
  %152 = icmp ne i32 %151, 0, !dbg !596
  br i1 %152, label %153, label %154, !dbg !599

153:                                              ; preds = %144
  br label %32, !dbg !600

154:                                              ; preds = %144
  br label %2041, !dbg !599

155:                                              ; preds = %32
  %156 = load i32, ptr %10, align 4, !dbg !602
  %157 = icmp eq i32 %156, 94, !dbg !604
  br i1 %157, label %158, label %756, !dbg !605

158:                                              ; preds = %155
  %159 = load ptr, ptr %9, align 8, !dbg !606
  %160 = getelementptr inbounds %struct.jsonsl_state_st, ptr %159, i32 0, i32 1, !dbg !606
  %161 = load i32, ptr %160, align 4, !dbg !606
  %162 = icmp eq i32 %161, 2, !dbg !606
  br i1 %162, label %168, label %163, !dbg !606

163:                                              ; preds = %158
  %164 = load ptr, ptr %9, align 8, !dbg !606
  %165 = getelementptr inbounds %struct.jsonsl_state_st, ptr %164, i32 0, i32 1, !dbg !606
  %166 = load i32, ptr %165, align 4, !dbg !606
  %167 = icmp eq i32 %166, 1, !dbg !606
  br i1 %167, label %168, label %175, !dbg !609

168:                                              ; preds = %163, %158
  %169 = load ptr, ptr %4, align 8, !dbg !610
  %170 = load ptr, ptr %9, align 8, !dbg !613
  %171 = call i32 @jsonsl__num_fastparse(ptr noundef %169, ptr noundef %7, ptr noundef %6, ptr noundef %170), !dbg !614
  %172 = icmp eq i32 %171, 1, !dbg !615
  br i1 %172, label %173, label %174, !dbg !616

173:                                              ; preds = %168
  br label %2041, !dbg !617

174:                                              ; preds = %168
  br label %302, !dbg !619

175:                                              ; preds = %163
  %176 = load ptr, ptr %9, align 8, !dbg !621
  %177 = getelementptr inbounds %struct.jsonsl_state_st, ptr %176, i32 0, i32 1, !dbg !623
  %178 = load i32, ptr %177, align 4, !dbg !623
  %179 = icmp eq i32 %178, 4096, !dbg !624
  br i1 %179, label %180, label %246, !dbg !625

180:                                              ; preds = %175
  %181 = call ptr @__ctype_b_loc() #11, !dbg !626
  %182 = load ptr, ptr %181, align 8, !dbg !626
  %183 = load ptr, ptr %7, align 8, !dbg !626
  %184 = load i8, ptr %183, align 1, !dbg !626
  %185 = zext i8 %184 to i32, !dbg !626
  %186 = sext i32 %185 to i64, !dbg !626
  %187 = getelementptr inbounds i16, ptr %182, i64 %186, !dbg !626
  %188 = load i16, ptr %187, align 2, !dbg !626
  %189 = zext i16 %188 to i32, !dbg !626
  %190 = and i32 %189, 2048, !dbg !626
  %191 = icmp ne i32 %190, 0, !dbg !626
  br i1 %191, label %203, label %192, !dbg !629

192:                                              ; preds = %180
  %193 = load ptr, ptr %4, align 8, !dbg !630
  %194 = getelementptr inbounds %struct.jsonsl_st, ptr %193, i32 0, i32 8, !dbg !630
  %195 = load ptr, ptr %194, align 8, !dbg !630
  %196 = load ptr, ptr %4, align 8, !dbg !630
  %197 = load ptr, ptr %9, align 8, !dbg !630
  %198 = load ptr, ptr %7, align 8, !dbg !630
  %199 = call i32 %195(ptr noundef %196, i32 noundef 18, ptr noundef %197, ptr noundef %198), !dbg !630
  %200 = icmp ne i32 %199, 0, !dbg !630
  br i1 %200, label %201, label %202, !dbg !633

201:                                              ; preds = %192
  br label %32, !dbg !634

202:                                              ; preds = %192
  br label %2041, !dbg !633

203:                                              ; preds = %180
  %204 = load ptr, ptr %7, align 8, !dbg !636
  %205 = load i8, ptr %204, align 1, !dbg !636
  %206 = zext i8 %205 to i32, !dbg !636
  %207 = icmp eq i32 %206, 48, !dbg !638
  br i1 %207, label %208, label %211, !dbg !639

208:                                              ; preds = %203
  %209 = load ptr, ptr %9, align 8, !dbg !640
  %210 = getelementptr inbounds %struct.jsonsl_state_st, ptr %209, i32 0, i32 1, !dbg !642
  store i32 2051, ptr %210, align 4, !dbg !643
  br label %245, !dbg !644

211:                                              ; preds = %203
  %212 = call ptr @__ctype_b_loc() #11, !dbg !645
  %213 = load ptr, ptr %212, align 8, !dbg !645
  %214 = load ptr, ptr %7, align 8, !dbg !645
  %215 = load i8, ptr %214, align 1, !dbg !645
  %216 = zext i8 %215 to i32, !dbg !645
  %217 = sext i32 %216 to i64, !dbg !645
  %218 = getelementptr inbounds i16, ptr %213, i64 %217, !dbg !645
  %219 = load i16, ptr %218, align 2, !dbg !645
  %220 = zext i16 %219 to i32, !dbg !645
  %221 = and i32 %220, 2048, !dbg !645
  %222 = icmp ne i32 %221, 0, !dbg !645
  br i1 %222, label %223, label %233, !dbg !647

223:                                              ; preds = %211
  %224 = load ptr, ptr %9, align 8, !dbg !648
  %225 = getelementptr inbounds %struct.jsonsl_state_st, ptr %224, i32 0, i32 1, !dbg !650
  store i32 1, ptr %225, align 4, !dbg !651
  %226 = load ptr, ptr %7, align 8, !dbg !652
  %227 = load i8, ptr %226, align 1, !dbg !652
  %228 = zext i8 %227 to i32, !dbg !652
  %229 = sub nsw i32 %228, 48, !dbg !653
  %230 = sext i32 %229 to i64, !dbg !652
  %231 = load ptr, ptr %9, align 8, !dbg !654
  %232 = getelementptr inbounds %struct.jsonsl_state_st, ptr %231, i32 0, i32 5, !dbg !655
  store i64 %230, ptr %232, align 8, !dbg !656
  br label %244, !dbg !657

233:                                              ; preds = %211
  %234 = load ptr, ptr %4, align 8, !dbg !658
  %235 = getelementptr inbounds %struct.jsonsl_st, ptr %234, i32 0, i32 8, !dbg !658
  %236 = load ptr, ptr %235, align 8, !dbg !658
  %237 = load ptr, ptr %4, align 8, !dbg !658
  %238 = load ptr, ptr %9, align 8, !dbg !658
  %239 = load ptr, ptr %7, align 8, !dbg !658
  %240 = call i32 %236(ptr noundef %237, i32 noundef 18, ptr noundef %238, ptr noundef %239), !dbg !658
  %241 = icmp ne i32 %240, 0, !dbg !658
  br i1 %241, label %242, label %243, !dbg !661

242:                                              ; preds = %233
  br label %32, !dbg !662

243:                                              ; preds = %233
  br label %2041, !dbg !661

244:                                              ; preds = %223
  br label %245

245:                                              ; preds = %244, %208
  br label %2032, !dbg !664

246:                                              ; preds = %175
  %247 = load ptr, ptr %9, align 8, !dbg !665
  %248 = getelementptr inbounds %struct.jsonsl_state_st, ptr %247, i32 0, i32 1, !dbg !667
  %249 = load i32, ptr %248, align 4, !dbg !667
  %250 = icmp eq i32 %249, 2050, !dbg !668
  br i1 %250, label %251, label %287, !dbg !669

251:                                              ; preds = %246
  %252 = call ptr @__ctype_b_loc() #11, !dbg !670
  %253 = load ptr, ptr %252, align 8, !dbg !670
  %254 = load ptr, ptr %7, align 8, !dbg !670
  %255 = load i8, ptr %254, align 1, !dbg !670
  %256 = zext i8 %255 to i32, !dbg !670
  %257 = sext i32 %256 to i64, !dbg !670
  %258 = getelementptr inbounds i16, ptr %253, i64 %257, !dbg !670
  %259 = load i16, ptr %258, align 2, !dbg !670
  %260 = zext i16 %259 to i32, !dbg !670
  %261 = and i32 %260, 2048, !dbg !670
  %262 = icmp ne i32 %261, 0, !dbg !670
  br i1 %262, label %263, label %274, !dbg !673

263:                                              ; preds = %251
  %264 = load ptr, ptr %4, align 8, !dbg !674
  %265 = getelementptr inbounds %struct.jsonsl_st, ptr %264, i32 0, i32 8, !dbg !674
  %266 = load ptr, ptr %265, align 8, !dbg !674
  %267 = load ptr, ptr %4, align 8, !dbg !674
  %268 = load ptr, ptr %9, align 8, !dbg !674
  %269 = load ptr, ptr %7, align 8, !dbg !674
  %270 = call i32 %266(ptr noundef %267, i32 noundef 18, ptr noundef %268, ptr noundef %269), !dbg !674
  %271 = icmp ne i32 %270, 0, !dbg !674
  br i1 %271, label %272, label %273, !dbg !677

272:                                              ; preds = %263
  br label %32, !dbg !678

273:                                              ; preds = %263
  br label %2041, !dbg !677

274:                                              ; preds = %251
  %275 = load ptr, ptr %9, align 8, !dbg !680
  %276 = getelementptr inbounds %struct.jsonsl_state_st, ptr %275, i32 0, i32 1, !dbg !682
  %277 = load i32, ptr %276, align 4, !dbg !682
  %278 = and i32 %277, 1, !dbg !683
  %279 = icmp ne i32 %278, 0, !dbg !683
  br i1 %279, label %280, label %283, !dbg !684

280:                                              ; preds = %274
  %281 = load ptr, ptr %9, align 8, !dbg !685
  %282 = getelementptr inbounds %struct.jsonsl_state_st, ptr %281, i32 0, i32 1, !dbg !687
  store i32 1, ptr %282, align 4, !dbg !688
  br label %286, !dbg !689

283:                                              ; preds = %274
  %284 = load ptr, ptr %9, align 8, !dbg !690
  %285 = getelementptr inbounds %struct.jsonsl_state_st, ptr %284, i32 0, i32 1, !dbg !692
  store i32 2, ptr %285, align 4, !dbg !693
  br label %286

286:                                              ; preds = %283, %280
  br label %302, !dbg !694

287:                                              ; preds = %246
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  %290 = load ptr, ptr %9, align 8, !dbg !695
  %291 = getelementptr inbounds %struct.jsonsl_state_st, ptr %290, i32 0, i32 1, !dbg !697
  %292 = load i32, ptr %291, align 4, !dbg !697
  %293 = and i32 %292, 3, !dbg !698
  %294 = icmp ne i32 %293, 0, !dbg !698
  br i1 %294, label %295, label %395, !dbg !699

295:                                              ; preds = %289
  %296 = load ptr, ptr %9, align 8, !dbg !700
  %297 = getelementptr inbounds %struct.jsonsl_state_st, ptr %296, i32 0, i32 1, !dbg !701
  %298 = load i32, ptr %297, align 4, !dbg !701
  %299 = and i32 %298, 512, !dbg !702
  %300 = icmp ne i32 %299, 0, !dbg !702
  br i1 %300, label %395, label %301, !dbg !703

301:                                              ; preds = %295
  br label %302, !dbg !704

302:                                              ; preds = %301, %286, %174
  call void @llvm.dbg.label(metadata !705), !dbg !707
  %303 = load ptr, ptr %7, align 8, !dbg !708
  %304 = load i8, ptr %303, align 1, !dbg !708
  %305 = zext i8 %304 to i32, !dbg !708
  switch i32 %305, label %377 [
    i32 49, label %306
    i32 50, label %306
    i32 51, label %306
    i32 52, label %306
    i32 53, label %306
    i32 54, label %306
    i32 55, label %306
    i32 56, label %306
    i32 57, label %306
    i32 48, label %306
    i32 46, label %309
    i32 101, label %333
    i32 69, label %333
    i32 45, label %357
    i32 43, label %357
  ], !dbg !709

306:                                              ; preds = %302, %302, %302, %302, %302, %302, %302, %302, %302, %302
  %307 = load ptr, ptr %4, align 8, !dbg !710
  %308 = getelementptr inbounds %struct.jsonsl_st, ptr %307, i32 0, i32 21, !dbg !710
  store i8 49, ptr %308, align 1, !dbg !712
  br label %2032, !dbg !713

309:                                              ; preds = %302
  %310 = load ptr, ptr %9, align 8, !dbg !714
  %311 = getelementptr inbounds %struct.jsonsl_state_st, ptr %310, i32 0, i32 1, !dbg !716
  %312 = load i32, ptr %311, align 4, !dbg !716
  %313 = and i32 %312, 32, !dbg !717
  %314 = icmp ne i32 %313, 0, !dbg !717
  br i1 %314, label %315, label %326, !dbg !718

315:                                              ; preds = %309
  %316 = load ptr, ptr %4, align 8, !dbg !719
  %317 = getelementptr inbounds %struct.jsonsl_st, ptr %316, i32 0, i32 8, !dbg !719
  %318 = load ptr, ptr %317, align 8, !dbg !719
  %319 = load ptr, ptr %4, align 8, !dbg !719
  %320 = load ptr, ptr %9, align 8, !dbg !719
  %321 = load ptr, ptr %7, align 8, !dbg !719
  %322 = call i32 %318(ptr noundef %319, i32 noundef 18, ptr noundef %320, ptr noundef %321), !dbg !719
  %323 = icmp ne i32 %322, 0, !dbg !719
  br i1 %323, label %324, label %325, !dbg !722

324:                                              ; preds = %315
  br label %32, !dbg !723

325:                                              ; preds = %315
  br label %2041, !dbg !722

326:                                              ; preds = %309
  %327 = load ptr, ptr %9, align 8, !dbg !725
  %328 = getelementptr inbounds %struct.jsonsl_state_st, ptr %327, i32 0, i32 1, !dbg !726
  %329 = load i32, ptr %328, align 4, !dbg !727
  %330 = or i32 %329, 32, !dbg !727
  store i32 %330, ptr %328, align 4, !dbg !727
  %331 = load ptr, ptr %4, align 8, !dbg !728
  %332 = getelementptr inbounds %struct.jsonsl_st, ptr %331, i32 0, i32 21, !dbg !728
  store i8 46, ptr %332, align 1, !dbg !729
  br label %2032, !dbg !730

333:                                              ; preds = %302, %302
  %334 = load ptr, ptr %9, align 8, !dbg !731
  %335 = getelementptr inbounds %struct.jsonsl_state_st, ptr %334, i32 0, i32 1, !dbg !733
  %336 = load i32, ptr %335, align 4, !dbg !733
  %337 = and i32 %336, 64, !dbg !734
  %338 = icmp ne i32 %337, 0, !dbg !734
  br i1 %338, label %339, label %350, !dbg !735

339:                                              ; preds = %333
  %340 = load ptr, ptr %4, align 8, !dbg !736
  %341 = getelementptr inbounds %struct.jsonsl_st, ptr %340, i32 0, i32 8, !dbg !736
  %342 = load ptr, ptr %341, align 8, !dbg !736
  %343 = load ptr, ptr %4, align 8, !dbg !736
  %344 = load ptr, ptr %9, align 8, !dbg !736
  %345 = load ptr, ptr %7, align 8, !dbg !736
  %346 = call i32 %342(ptr noundef %343, i32 noundef 18, ptr noundef %344, ptr noundef %345), !dbg !736
  %347 = icmp ne i32 %346, 0, !dbg !736
  br i1 %347, label %348, label %349, !dbg !739

348:                                              ; preds = %339
  br label %32, !dbg !740

349:                                              ; preds = %339
  br label %2041, !dbg !739

350:                                              ; preds = %333
  %351 = load ptr, ptr %9, align 8, !dbg !742
  %352 = getelementptr inbounds %struct.jsonsl_state_st, ptr %351, i32 0, i32 1, !dbg !743
  %353 = load i32, ptr %352, align 4, !dbg !744
  %354 = or i32 %353, 64, !dbg !744
  store i32 %354, ptr %352, align 4, !dbg !744
  %355 = load ptr, ptr %4, align 8, !dbg !745
  %356 = getelementptr inbounds %struct.jsonsl_st, ptr %355, i32 0, i32 21, !dbg !745
  store i8 101, ptr %356, align 1, !dbg !746
  br label %2032, !dbg !747

357:                                              ; preds = %302, %302
  %358 = load ptr, ptr %4, align 8, !dbg !748
  %359 = getelementptr inbounds %struct.jsonsl_st, ptr %358, i32 0, i32 21, !dbg !748
  %360 = load i8, ptr %359, align 1, !dbg !748
  %361 = sext i8 %360 to i32, !dbg !748
  %362 = icmp ne i32 %361, 101, !dbg !750
  br i1 %362, label %363, label %374, !dbg !751

363:                                              ; preds = %357
  %364 = load ptr, ptr %4, align 8, !dbg !752
  %365 = getelementptr inbounds %struct.jsonsl_st, ptr %364, i32 0, i32 8, !dbg !752
  %366 = load ptr, ptr %365, align 8, !dbg !752
  %367 = load ptr, ptr %4, align 8, !dbg !752
  %368 = load ptr, ptr %9, align 8, !dbg !752
  %369 = load ptr, ptr %7, align 8, !dbg !752
  %370 = call i32 %366(ptr noundef %367, i32 noundef 18, ptr noundef %368, ptr noundef %369), !dbg !752
  %371 = icmp ne i32 %370, 0, !dbg !752
  br i1 %371, label %372, label %373, !dbg !755

372:                                              ; preds = %363
  br label %32, !dbg !756

373:                                              ; preds = %363
  br label %2041, !dbg !755

374:                                              ; preds = %357
  %375 = load ptr, ptr %4, align 8, !dbg !758
  %376 = getelementptr inbounds %struct.jsonsl_st, ptr %375, i32 0, i32 21, !dbg !758
  store i8 45, ptr %376, align 1, !dbg !759
  br label %2032, !dbg !760

377:                                              ; preds = %302
  %378 = load ptr, ptr %7, align 8, !dbg !761
  %379 = load i8, ptr %378, align 1, !dbg !761
  %380 = zext i8 %379 to i32, !dbg !761
  %381 = call i32 @is_special_end(i32 noundef %380), !dbg !763
  %382 = icmp ne i32 %381, 0, !dbg !763
  br i1 %382, label %383, label %384, !dbg !764

383:                                              ; preds = %377
  br label %505, !dbg !765

384:                                              ; preds = %377
  %385 = load ptr, ptr %4, align 8, !dbg !767
  %386 = getelementptr inbounds %struct.jsonsl_st, ptr %385, i32 0, i32 8, !dbg !767
  %387 = load ptr, ptr %386, align 8, !dbg !767
  %388 = load ptr, ptr %4, align 8, !dbg !767
  %389 = load ptr, ptr %9, align 8, !dbg !767
  %390 = load ptr, ptr %7, align 8, !dbg !767
  %391 = call i32 %387(ptr noundef %388, i32 noundef 18, ptr noundef %389, ptr noundef %390), !dbg !767
  %392 = icmp ne i32 %391, 0, !dbg !767
  br i1 %392, label %393, label %394, !dbg !769

393:                                              ; preds = %384
  br label %32, !dbg !770

394:                                              ; preds = %384
  br label %2041, !dbg !769

395:                                              ; preds = %295, %289
  %396 = load ptr, ptr %7, align 8, !dbg !772
  %397 = load i8, ptr %396, align 1, !dbg !772
  %398 = zext i8 %397 to i32, !dbg !772
  %399 = call i32 @is_special_end(i32 noundef %398), !dbg !774
  %400 = icmp ne i32 %399, 0, !dbg !774
  br i1 %400, label %504, label %401, !dbg !775

401:                                              ; preds = %395
  %402 = load ptr, ptr %9, align 8, !dbg !776
  %403 = getelementptr inbounds %struct.jsonsl_state_st, ptr %402, i32 0, i32 7, !dbg !776
  %404 = load i32, ptr %403, align 4, !dbg !778
  %405 = add i32 %404, 1, !dbg !778
  store i32 %405, ptr %403, align 4, !dbg !778
  %406 = load ptr, ptr %9, align 8, !dbg !779
  %407 = getelementptr inbounds %struct.jsonsl_state_st, ptr %406, i32 0, i32 1, !dbg !781
  %408 = load i32, ptr %407, align 4, !dbg !781
  %409 = icmp eq i32 %408, 4, !dbg !782
  br i1 %409, label %410, label %437, !dbg !783

410:                                              ; preds = %401
  %411 = load ptr, ptr %7, align 8, !dbg !784
  %412 = load i8, ptr %411, align 1, !dbg !784
  %413 = zext i8 %412 to i32, !dbg !784
  %414 = load ptr, ptr %4, align 8, !dbg !784
  %415 = getelementptr inbounds %struct.jsonsl_st, ptr %414, i32 0, i32 2, !dbg !784
  %416 = load i64, ptr %415, align 8, !dbg !784
  %417 = load ptr, ptr %9, align 8, !dbg !784
  %418 = getelementptr inbounds %struct.jsonsl_state_st, ptr %417, i32 0, i32 2, !dbg !784
  %419 = load i64, ptr %418, align 8, !dbg !784
  %420 = sub i64 %416, %419, !dbg !784
  %421 = getelementptr inbounds [5 x i8], ptr @.str, i64 0, i64 %420, !dbg !784
  %422 = load i8, ptr %421, align 1, !dbg !784
  %423 = sext i8 %422 to i32, !dbg !784
  %424 = icmp ne i32 %413, %423, !dbg !784
  br i1 %424, label %425, label %436, !dbg !787

425:                                              ; preds = %410
  %426 = load ptr, ptr %4, align 8, !dbg !788
  %427 = getelementptr inbounds %struct.jsonsl_st, ptr %426, i32 0, i32 8, !dbg !788
  %428 = load ptr, ptr %427, align 8, !dbg !788
  %429 = load ptr, ptr %4, align 8, !dbg !788
  %430 = load ptr, ptr %9, align 8, !dbg !788
  %431 = load ptr, ptr %7, align 8, !dbg !788
  %432 = call i32 %428(ptr noundef %429, i32 noundef 2, ptr noundef %430, ptr noundef %431), !dbg !788
  %433 = icmp ne i32 %432, 0, !dbg !788
  br i1 %433, label %434, label %435, !dbg !791

434:                                              ; preds = %425
  br label %32, !dbg !792

435:                                              ; preds = %425
  br label %2041, !dbg !791

436:                                              ; preds = %410
  br label %503, !dbg !794

437:                                              ; preds = %401
  %438 = load ptr, ptr %9, align 8, !dbg !795
  %439 = getelementptr inbounds %struct.jsonsl_state_st, ptr %438, i32 0, i32 1, !dbg !797
  %440 = load i32, ptr %439, align 4, !dbg !797
  %441 = icmp eq i32 %440, 8, !dbg !798
  br i1 %441, label %442, label %469, !dbg !799

442:                                              ; preds = %437
  %443 = load ptr, ptr %7, align 8, !dbg !800
  %444 = load i8, ptr %443, align 1, !dbg !800
  %445 = zext i8 %444 to i32, !dbg !800
  %446 = load ptr, ptr %4, align 8, !dbg !800
  %447 = getelementptr inbounds %struct.jsonsl_st, ptr %446, i32 0, i32 2, !dbg !800
  %448 = load i64, ptr %447, align 8, !dbg !800
  %449 = load ptr, ptr %9, align 8, !dbg !800
  %450 = getelementptr inbounds %struct.jsonsl_state_st, ptr %449, i32 0, i32 2, !dbg !800
  %451 = load i64, ptr %450, align 8, !dbg !800
  %452 = sub i64 %448, %451, !dbg !800
  %453 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %452, !dbg !800
  %454 = load i8, ptr %453, align 1, !dbg !800
  %455 = sext i8 %454 to i32, !dbg !800
  %456 = icmp ne i32 %445, %455, !dbg !800
  br i1 %456, label %457, label %468, !dbg !803

457:                                              ; preds = %442
  %458 = load ptr, ptr %4, align 8, !dbg !804
  %459 = getelementptr inbounds %struct.jsonsl_st, ptr %458, i32 0, i32 8, !dbg !804
  %460 = load ptr, ptr %459, align 8, !dbg !804
  %461 = load ptr, ptr %4, align 8, !dbg !804
  %462 = load ptr, ptr %9, align 8, !dbg !804
  %463 = load ptr, ptr %7, align 8, !dbg !804
  %464 = call i32 %460(ptr noundef %461, i32 noundef 2, ptr noundef %462, ptr noundef %463), !dbg !804
  %465 = icmp ne i32 %464, 0, !dbg !804
  br i1 %465, label %466, label %467, !dbg !807

466:                                              ; preds = %457
  br label %32, !dbg !808

467:                                              ; preds = %457
  br label %2041, !dbg !807

468:                                              ; preds = %442
  br label %502, !dbg !810

469:                                              ; preds = %437
  %470 = load ptr, ptr %9, align 8, !dbg !811
  %471 = getelementptr inbounds %struct.jsonsl_state_st, ptr %470, i32 0, i32 1, !dbg !813
  %472 = load i32, ptr %471, align 4, !dbg !813
  %473 = icmp eq i32 %472, 16, !dbg !814
  br i1 %473, label %474, label %501, !dbg !815

474:                                              ; preds = %469
  %475 = load ptr, ptr %7, align 8, !dbg !816
  %476 = load i8, ptr %475, align 1, !dbg !816
  %477 = zext i8 %476 to i32, !dbg !816
  %478 = load ptr, ptr %4, align 8, !dbg !816
  %479 = getelementptr inbounds %struct.jsonsl_st, ptr %478, i32 0, i32 2, !dbg !816
  %480 = load i64, ptr %479, align 8, !dbg !816
  %481 = load ptr, ptr %9, align 8, !dbg !816
  %482 = getelementptr inbounds %struct.jsonsl_state_st, ptr %481, i32 0, i32 2, !dbg !816
  %483 = load i64, ptr %482, align 8, !dbg !816
  %484 = sub i64 %480, %483, !dbg !816
  %485 = getelementptr inbounds [5 x i8], ptr @.str.2, i64 0, i64 %484, !dbg !816
  %486 = load i8, ptr %485, align 1, !dbg !816
  %487 = sext i8 %486 to i32, !dbg !816
  %488 = icmp ne i32 %477, %487, !dbg !816
  br i1 %488, label %489, label %500, !dbg !819

489:                                              ; preds = %474
  %490 = load ptr, ptr %4, align 8, !dbg !820
  %491 = getelementptr inbounds %struct.jsonsl_st, ptr %490, i32 0, i32 8, !dbg !820
  %492 = load ptr, ptr %491, align 8, !dbg !820
  %493 = load ptr, ptr %4, align 8, !dbg !820
  %494 = load ptr, ptr %9, align 8, !dbg !820
  %495 = load ptr, ptr %7, align 8, !dbg !820
  %496 = call i32 %492(ptr noundef %493, i32 noundef 2, ptr noundef %494, ptr noundef %495), !dbg !820
  %497 = icmp ne i32 %496, 0, !dbg !820
  br i1 %497, label %498, label %499, !dbg !823

498:                                              ; preds = %489
  br label %32, !dbg !824

499:                                              ; preds = %489
  br label %2041, !dbg !823

500:                                              ; preds = %474
  br label %501, !dbg !826

501:                                              ; preds = %500, %469
  br label %502

502:                                              ; preds = %501, %468
  br label %503

503:                                              ; preds = %502, %436
  br label %2032, !dbg !827

504:                                              ; preds = %395
  br label %505, !dbg !828

505:                                              ; preds = %504, %383
  call void @llvm.dbg.label(metadata !829), !dbg !830
  %506 = load ptr, ptr %4, align 8, !dbg !831
  %507 = getelementptr inbounds %struct.jsonsl_st, ptr %506, i32 0, i32 22, !dbg !832
  store i32 0, ptr %507, align 8, !dbg !833
  %508 = load ptr, ptr %9, align 8, !dbg !834
  %509 = getelementptr inbounds %struct.jsonsl_state_st, ptr %508, i32 0, i32 1, !dbg !834
  %510 = load i32, ptr %509, align 4, !dbg !834
  %511 = icmp eq i32 %510, 2, !dbg !834
  br i1 %511, label %517, label %512, !dbg !834

512:                                              ; preds = %505
  %513 = load ptr, ptr %9, align 8, !dbg !834
  %514 = getelementptr inbounds %struct.jsonsl_state_st, ptr %513, i32 0, i32 1, !dbg !834
  %515 = load i32, ptr %514, align 4, !dbg !834
  %516 = icmp eq i32 %515, 1, !dbg !834
  br i1 %516, label %517, label %518, !dbg !836

517:                                              ; preds = %512, %505
  br label %671, !dbg !837

518:                                              ; preds = %512
  %519 = load ptr, ptr %9, align 8, !dbg !839
  %520 = getelementptr inbounds %struct.jsonsl_state_st, ptr %519, i32 0, i32 1, !dbg !841
  %521 = load i32, ptr %520, align 4, !dbg !841
  %522 = icmp eq i32 %521, 2050, !dbg !842
  br i1 %522, label %528, label %523, !dbg !843

523:                                              ; preds = %518
  %524 = load ptr, ptr %9, align 8, !dbg !844
  %525 = getelementptr inbounds %struct.jsonsl_state_st, ptr %524, i32 0, i32 1, !dbg !845
  %526 = load i32, ptr %525, align 4, !dbg !845
  %527 = icmp eq i32 %526, 2051, !dbg !846
  br i1 %527, label %528, label %531, !dbg !847

528:                                              ; preds = %523, %518
  %529 = load ptr, ptr %9, align 8, !dbg !848
  %530 = getelementptr inbounds %struct.jsonsl_state_st, ptr %529, i32 0, i32 1, !dbg !850
  store i32 2, ptr %530, align 4, !dbg !851
  br label %670, !dbg !852

531:                                              ; preds = %523
  %532 = load ptr, ptr %9, align 8, !dbg !853
  %533 = getelementptr inbounds %struct.jsonsl_state_st, ptr %532, i32 0, i32 1, !dbg !855
  %534 = load i32, ptr %533, align 4, !dbg !855
  %535 = icmp eq i32 %534, 4096, !dbg !856
  br i1 %535, label %536, label %547, !dbg !857

536:                                              ; preds = %531
  %537 = load ptr, ptr %4, align 8, !dbg !858
  %538 = getelementptr inbounds %struct.jsonsl_st, ptr %537, i32 0, i32 8, !dbg !858
  %539 = load ptr, ptr %538, align 8, !dbg !858
  %540 = load ptr, ptr %4, align 8, !dbg !858
  %541 = load ptr, ptr %9, align 8, !dbg !858
  %542 = load ptr, ptr %7, align 8, !dbg !858
  %543 = call i32 %539(ptr noundef %540, i32 noundef 18, ptr noundef %541, ptr noundef %542), !dbg !858
  %544 = icmp ne i32 %543, 0, !dbg !858
  br i1 %544, label %545, label %546, !dbg !861

545:                                              ; preds = %536
  br label %32, !dbg !862

546:                                              ; preds = %536
  br label %2041, !dbg !861

547:                                              ; preds = %531
  %548 = load ptr, ptr %9, align 8, !dbg !864
  %549 = getelementptr inbounds %struct.jsonsl_state_st, ptr %548, i32 0, i32 1, !dbg !866
  %550 = load i32, ptr %549, align 4, !dbg !866
  %551 = and i32 %550, 512, !dbg !867
  %552 = icmp ne i32 %551, 0, !dbg !867
  br i1 %552, label %553, label %572, !dbg !868

553:                                              ; preds = %547
  %554 = load ptr, ptr %9, align 8, !dbg !869
  %555 = getelementptr inbounds %struct.jsonsl_state_st, ptr %554, i32 0, i32 7, !dbg !869
  %556 = load i32, ptr %555, align 4, !dbg !869
  %557 = icmp ne i32 %556, 8, !dbg !872
  br i1 %557, label %558, label %569, !dbg !873

558:                                              ; preds = %553
  %559 = load ptr, ptr %4, align 8, !dbg !874
  %560 = getelementptr inbounds %struct.jsonsl_st, ptr %559, i32 0, i32 8, !dbg !874
  %561 = load ptr, ptr %560, align 8, !dbg !874
  %562 = load ptr, ptr %4, align 8, !dbg !874
  %563 = load ptr, ptr %9, align 8, !dbg !874
  %564 = load ptr, ptr %7, align 8, !dbg !874
  %565 = call i32 %561(ptr noundef %562, i32 noundef 3, ptr noundef %563, ptr noundef %564), !dbg !874
  %566 = icmp ne i32 %565, 0, !dbg !874
  br i1 %566, label %567, label %568, !dbg !877

567:                                              ; preds = %558
  br label %32, !dbg !878

568:                                              ; preds = %558
  br label %2041, !dbg !877

569:                                              ; preds = %553
  %570 = load ptr, ptr %9, align 8, !dbg !880
  %571 = getelementptr inbounds %struct.jsonsl_state_st, ptr %570, i32 0, i32 5, !dbg !881
  store i64 1, ptr %571, align 8, !dbg !882
  br label %668, !dbg !883

572:                                              ; preds = %547
  %573 = load ptr, ptr %9, align 8, !dbg !884
  %574 = getelementptr inbounds %struct.jsonsl_state_st, ptr %573, i32 0, i32 1, !dbg !886
  %575 = load i32, ptr %574, align 4, !dbg !886
  %576 = and i32 %575, 3, !dbg !887
  %577 = icmp ne i32 %576, 0, !dbg !887
  br i1 %577, label %578, label %596, !dbg !888

578:                                              ; preds = %572
  %579 = load ptr, ptr %4, align 8, !dbg !889
  %580 = getelementptr inbounds %struct.jsonsl_st, ptr %579, i32 0, i32 21, !dbg !889
  %581 = load i8, ptr %580, align 1, !dbg !889
  %582 = sext i8 %581 to i32, !dbg !889
  %583 = icmp ne i32 %582, 49, !dbg !892
  br i1 %583, label %584, label %595, !dbg !893

584:                                              ; preds = %578
  %585 = load ptr, ptr %4, align 8, !dbg !894
  %586 = getelementptr inbounds %struct.jsonsl_st, ptr %585, i32 0, i32 8, !dbg !894
  %587 = load ptr, ptr %586, align 8, !dbg !894
  %588 = load ptr, ptr %4, align 8, !dbg !894
  %589 = load ptr, ptr %9, align 8, !dbg !894
  %590 = load ptr, ptr %7, align 8, !dbg !894
  %591 = call i32 %587(ptr noundef %588, i32 noundef 18, ptr noundef %589, ptr noundef %590), !dbg !894
  %592 = icmp ne i32 %591, 0, !dbg !894
  br i1 %592, label %593, label %594, !dbg !897

593:                                              ; preds = %584
  br label %32, !dbg !898

594:                                              ; preds = %584
  br label %2041, !dbg !897

595:                                              ; preds = %578
  br label %667, !dbg !900

596:                                              ; preds = %572
  %597 = load ptr, ptr %9, align 8, !dbg !901
  %598 = getelementptr inbounds %struct.jsonsl_state_st, ptr %597, i32 0, i32 1, !dbg !903
  %599 = load i32, ptr %598, align 4, !dbg !903
  %600 = icmp eq i32 %599, 4, !dbg !904
  br i1 %600, label %601, label %620, !dbg !905

601:                                              ; preds = %596
  %602 = load ptr, ptr %9, align 8, !dbg !906
  %603 = getelementptr inbounds %struct.jsonsl_state_st, ptr %602, i32 0, i32 7, !dbg !906
  %604 = load i32, ptr %603, align 4, !dbg !906
  %605 = icmp ne i32 %604, 4, !dbg !909
  br i1 %605, label %606, label %617, !dbg !910

606:                                              ; preds = %601
  %607 = load ptr, ptr %4, align 8, !dbg !911
  %608 = getelementptr inbounds %struct.jsonsl_st, ptr %607, i32 0, i32 8, !dbg !911
  %609 = load ptr, ptr %608, align 8, !dbg !911
  %610 = load ptr, ptr %4, align 8, !dbg !911
  %611 = load ptr, ptr %9, align 8, !dbg !911
  %612 = load ptr, ptr %7, align 8, !dbg !911
  %613 = call i32 %609(ptr noundef %610, i32 noundef 3, ptr noundef %611, ptr noundef %612), !dbg !911
  %614 = icmp ne i32 %613, 0, !dbg !911
  br i1 %614, label %615, label %616, !dbg !914

615:                                              ; preds = %606
  br label %32, !dbg !915

616:                                              ; preds = %606
  br label %2041, !dbg !914

617:                                              ; preds = %601
  %618 = load ptr, ptr %9, align 8, !dbg !917
  %619 = getelementptr inbounds %struct.jsonsl_state_st, ptr %618, i32 0, i32 5, !dbg !918
  store i64 1, ptr %619, align 8, !dbg !919
  br label %666, !dbg !920

620:                                              ; preds = %596
  %621 = load ptr, ptr %9, align 8, !dbg !921
  %622 = getelementptr inbounds %struct.jsonsl_state_st, ptr %621, i32 0, i32 1, !dbg !923
  %623 = load i32, ptr %622, align 4, !dbg !923
  %624 = icmp eq i32 %623, 8, !dbg !924
  br i1 %624, label %625, label %642, !dbg !925

625:                                              ; preds = %620
  %626 = load ptr, ptr %9, align 8, !dbg !926
  %627 = getelementptr inbounds %struct.jsonsl_state_st, ptr %626, i32 0, i32 7, !dbg !926
  %628 = load i32, ptr %627, align 4, !dbg !926
  %629 = icmp ne i32 %628, 5, !dbg !929
  br i1 %629, label %630, label %641, !dbg !930

630:                                              ; preds = %625
  %631 = load ptr, ptr %4, align 8, !dbg !931
  %632 = getelementptr inbounds %struct.jsonsl_st, ptr %631, i32 0, i32 8, !dbg !931
  %633 = load ptr, ptr %632, align 8, !dbg !931
  %634 = load ptr, ptr %4, align 8, !dbg !931
  %635 = load ptr, ptr %9, align 8, !dbg !931
  %636 = load ptr, ptr %7, align 8, !dbg !931
  %637 = call i32 %633(ptr noundef %634, i32 noundef 3, ptr noundef %635, ptr noundef %636), !dbg !931
  %638 = icmp ne i32 %637, 0, !dbg !931
  br i1 %638, label %639, label %640, !dbg !934

639:                                              ; preds = %630
  br label %32, !dbg !935

640:                                              ; preds = %630
  br label %2041, !dbg !934

641:                                              ; preds = %625
  br label %665, !dbg !937

642:                                              ; preds = %620
  %643 = load ptr, ptr %9, align 8, !dbg !938
  %644 = getelementptr inbounds %struct.jsonsl_state_st, ptr %643, i32 0, i32 1, !dbg !940
  %645 = load i32, ptr %644, align 4, !dbg !940
  %646 = icmp eq i32 %645, 16, !dbg !941
  br i1 %646, label %647, label %664, !dbg !942

647:                                              ; preds = %642
  %648 = load ptr, ptr %9, align 8, !dbg !943
  %649 = getelementptr inbounds %struct.jsonsl_state_st, ptr %648, i32 0, i32 7, !dbg !943
  %650 = load i32, ptr %649, align 4, !dbg !943
  %651 = icmp ne i32 %650, 4, !dbg !946
  br i1 %651, label %652, label %663, !dbg !947

652:                                              ; preds = %647
  %653 = load ptr, ptr %4, align 8, !dbg !948
  %654 = getelementptr inbounds %struct.jsonsl_st, ptr %653, i32 0, i32 8, !dbg !948
  %655 = load ptr, ptr %654, align 8, !dbg !948
  %656 = load ptr, ptr %4, align 8, !dbg !948
  %657 = load ptr, ptr %9, align 8, !dbg !948
  %658 = load ptr, ptr %7, align 8, !dbg !948
  %659 = call i32 %655(ptr noundef %656, i32 noundef 3, ptr noundef %657, ptr noundef %658), !dbg !948
  %660 = icmp ne i32 %659, 0, !dbg !948
  br i1 %660, label %661, label %662, !dbg !951

661:                                              ; preds = %652
  br label %32, !dbg !952

662:                                              ; preds = %652
  br label %2041, !dbg !951

663:                                              ; preds = %647
  br label %664, !dbg !954

664:                                              ; preds = %663, %642
  br label %665

665:                                              ; preds = %664, %641
  br label %666

666:                                              ; preds = %665, %617
  br label %667

667:                                              ; preds = %666, %595
  br label %668

668:                                              ; preds = %667, %569
  br label %669

669:                                              ; preds = %668
  br label %670

670:                                              ; preds = %669, %528
  br label %671

671:                                              ; preds = %670, %517
  %672 = load ptr, ptr %4, align 8, !dbg !955
  %673 = getelementptr inbounds %struct.jsonsl_st, ptr %672, i32 0, i32 2, !dbg !955
  %674 = load i64, ptr %673, align 8, !dbg !955
  %675 = load ptr, ptr %9, align 8, !dbg !955
  %676 = getelementptr inbounds %struct.jsonsl_state_st, ptr %675, i32 0, i32 3, !dbg !955
  store i64 %674, ptr %676, align 8, !dbg !955
  %677 = load ptr, ptr %4, align 8, !dbg !956
  %678 = getelementptr inbounds %struct.jsonsl_st, ptr %677, i32 0, i32 9, !dbg !956
  %679 = load i32, ptr %678, align 8, !dbg !956
  %680 = icmp ne i32 %679, 0, !dbg !956
  br i1 %680, label %681, label %726, !dbg !956

681:                                              ; preds = %671
  %682 = load ptr, ptr %4, align 8, !dbg !956
  %683 = getelementptr inbounds %struct.jsonsl_st, ptr %682, i32 0, i32 7, !dbg !956
  %684 = load i32, ptr %683, align 8, !dbg !956
  %685 = load ptr, ptr %9, align 8, !dbg !956
  %686 = getelementptr inbounds %struct.jsonsl_state_st, ptr %685, i32 0, i32 4, !dbg !956
  %687 = load i32, ptr %686, align 8, !dbg !956
  %688 = icmp ugt i32 %684, %687, !dbg !956
  br i1 %688, label %689, label %726, !dbg !956

689:                                              ; preds = %681
  %690 = load ptr, ptr %9, align 8, !dbg !956
  %691 = getelementptr inbounds %struct.jsonsl_state_st, ptr %690, i32 0, i32 6, !dbg !956
  %692 = load i32, ptr %691, align 8, !dbg !956
  %693 = icmp eq i32 %692, 0, !dbg !956
  br i1 %693, label %694, label %726, !dbg !955

694:                                              ; preds = %689
  %695 = load ptr, ptr %4, align 8, !dbg !958
  %696 = getelementptr inbounds %struct.jsonsl_st, ptr %695, i32 0, i32 5, !dbg !958
  %697 = load ptr, ptr %696, align 8, !dbg !958
  %698 = icmp ne ptr %697, null, !dbg !958
  br i1 %698, label %699, label %706, !dbg !961

699:                                              ; preds = %694
  %700 = load ptr, ptr %4, align 8, !dbg !962
  %701 = getelementptr inbounds %struct.jsonsl_st, ptr %700, i32 0, i32 5, !dbg !962
  %702 = load ptr, ptr %701, align 8, !dbg !962
  %703 = load ptr, ptr %4, align 8, !dbg !962
  %704 = load ptr, ptr %9, align 8, !dbg !962
  %705 = load ptr, ptr %7, align 8, !dbg !962
  call void %702(ptr noundef %703, i32 noundef 45, ptr noundef %704, ptr noundef %705), !dbg !962
  br label %719, !dbg !962

706:                                              ; preds = %694
  %707 = load ptr, ptr %4, align 8, !dbg !964
  %708 = getelementptr inbounds %struct.jsonsl_st, ptr %707, i32 0, i32 6, !dbg !964
  %709 = load ptr, ptr %708, align 8, !dbg !964
  %710 = icmp ne ptr %709, null, !dbg !964
  br i1 %710, label %711, label %718, !dbg !958

711:                                              ; preds = %706
  %712 = load ptr, ptr %4, align 8, !dbg !966
  %713 = getelementptr inbounds %struct.jsonsl_st, ptr %712, i32 0, i32 6, !dbg !966
  %714 = load ptr, ptr %713, align 8, !dbg !966
  %715 = load ptr, ptr %4, align 8, !dbg !966
  %716 = load ptr, ptr %9, align 8, !dbg !966
  %717 = load ptr, ptr %7, align 8, !dbg !966
  call void %714(ptr noundef %715, i32 noundef 45, ptr noundef %716, ptr noundef %717), !dbg !966
  br label %718, !dbg !966

718:                                              ; preds = %711, %706
  br label %719

719:                                              ; preds = %718, %699
  %720 = load ptr, ptr %4, align 8, !dbg !968
  %721 = getelementptr inbounds %struct.jsonsl_st, ptr %720, i32 0, i32 1, !dbg !968
  %722 = load i32, ptr %721, align 4, !dbg !968
  %723 = icmp ne i32 %722, 0, !dbg !968
  br i1 %723, label %724, label %725, !dbg !961

724:                                              ; preds = %719
  br label %2041, !dbg !970

725:                                              ; preds = %719
  br label %726, !dbg !961

726:                                              ; preds = %725, %689, %681, %671
  %727 = load ptr, ptr %9, align 8, !dbg !955
  %728 = getelementptr inbounds %struct.jsonsl_state_st, ptr %727, i32 0, i32 7, !dbg !955
  store i32 0, ptr %728, align 4, !dbg !955
  %729 = load ptr, ptr %4, align 8, !dbg !955
  %730 = getelementptr inbounds %struct.jsonsl_st, ptr %729, i32 0, i32 27, !dbg !955
  %731 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %730, i64 0, i64 0, !dbg !955
  %732 = load ptr, ptr %4, align 8, !dbg !955
  %733 = getelementptr inbounds %struct.jsonsl_st, ptr %732, i32 0, i32 0, !dbg !955
  %734 = load i32, ptr %733, align 8, !dbg !955
  %735 = add i32 %734, -1, !dbg !955
  store i32 %735, ptr %733, align 8, !dbg !955
  %736 = zext i32 %735 to i64, !dbg !955
  %737 = getelementptr inbounds %struct.jsonsl_state_st, ptr %731, i64 %736, !dbg !955
  store ptr %737, ptr %9, align 8, !dbg !955
  %738 = load ptr, ptr %4, align 8, !dbg !955
  %739 = getelementptr inbounds %struct.jsonsl_st, ptr %738, i32 0, i32 2, !dbg !955
  %740 = load i64, ptr %739, align 8, !dbg !955
  %741 = load ptr, ptr %9, align 8, !dbg !955
  %742 = getelementptr inbounds %struct.jsonsl_state_st, ptr %741, i32 0, i32 3, !dbg !955
  store i64 %740, ptr %742, align 8, !dbg !955
  %743 = load ptr, ptr %4, align 8, !dbg !955
  %744 = getelementptr inbounds %struct.jsonsl_st, ptr %743, i32 0, i32 20, !dbg !955
  store i8 0, ptr %744, align 4, !dbg !955
  %745 = load ptr, ptr %4, align 8, !dbg !955
  %746 = getelementptr inbounds %struct.jsonsl_st, ptr %745, i32 0, i32 21, !dbg !955
  store i8 0, ptr %746, align 1, !dbg !955
  %747 = load ptr, ptr %4, align 8, !dbg !972
  %748 = getelementptr inbounds %struct.jsonsl_st, ptr %747, i32 0, i32 20, !dbg !973
  store i8 44, ptr %748, align 4, !dbg !974
  %749 = load ptr, ptr %7, align 8, !dbg !975
  %750 = load i8, ptr %749, align 1, !dbg !975
  %751 = zext i8 %750 to i32, !dbg !975
  %752 = call i32 @is_allowed_whitespace(i32 noundef %751), !dbg !977
  %753 = icmp ne i32 %752, 0, !dbg !977
  br i1 %753, label %754, label %755, !dbg !978

754:                                              ; preds = %726
  br label %2032, !dbg !979

755:                                              ; preds = %726
  br label %1328, !dbg !981

756:                                              ; preds = %155
  %757 = load ptr, ptr %7, align 8, !dbg !982
  %758 = load i8, ptr %757, align 1, !dbg !982
  %759 = zext i8 %758 to i32, !dbg !982
  %760 = call i32 @is_allowed_whitespace(i32 noundef %759), !dbg !984
  %761 = icmp ne i32 %760, 0, !dbg !984
  br i1 %761, label %762, label %763, !dbg !985

762:                                              ; preds = %756
  br label %2032, !dbg !986

763:                                              ; preds = %756
  %764 = load ptr, ptr %7, align 8, !dbg !988
  %765 = load i8, ptr %764, align 1, !dbg !988
  %766 = zext i8 %765 to i32, !dbg !988
  %767 = call i32 @extract_special(i32 noundef %766), !dbg !990
  %768 = icmp ne i32 %767, 0, !dbg !990
  br i1 %768, label %769, label %770, !dbg !991

769:                                              ; preds = %763
  br label %1816, !dbg !992

770:                                              ; preds = %763
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  %774 = load ptr, ptr %7, align 8, !dbg !994
  %775 = load i8, ptr %774, align 1, !dbg !994
  %776 = zext i8 %775 to i32, !dbg !994
  %777 = icmp eq i32 %776, 34, !dbg !996
  br i1 %777, label %778, label %1296, !dbg !997

778:                                              ; preds = %773
  br label %779, !dbg !998

779:                                              ; preds = %778, %137
  call void @llvm.dbg.label(metadata !999), !dbg !1001
  %780 = load ptr, ptr %4, align 8, !dbg !1002
  %781 = getelementptr inbounds %struct.jsonsl_st, ptr %780, i32 0, i32 22, !dbg !1003
  store i32 0, ptr %781, align 8, !dbg !1004
  %782 = load i32, ptr %10, align 4, !dbg !1005
  switch i32 %782, label %1285 [
    i32 16776994, label %783
    i32 16776995, label %855
    i32 123, label %927
    i32 91, label %1171
    i32 94, label %1274
  ], !dbg !1006

783:                                              ; preds = %779
  %784 = load ptr, ptr %4, align 8, !dbg !1007
  %785 = getelementptr inbounds %struct.jsonsl_st, ptr %784, i32 0, i32 2, !dbg !1007
  %786 = load i64, ptr %785, align 8, !dbg !1007
  %787 = load ptr, ptr %9, align 8, !dbg !1007
  %788 = getelementptr inbounds %struct.jsonsl_state_st, ptr %787, i32 0, i32 3, !dbg !1007
  store i64 %786, ptr %788, align 8, !dbg !1007
  %789 = load ptr, ptr %4, align 8, !dbg !1009
  %790 = getelementptr inbounds %struct.jsonsl_st, ptr %789, i32 0, i32 12, !dbg !1009
  %791 = load i32, ptr %790, align 4, !dbg !1009
  %792 = icmp ne i32 %791, 0, !dbg !1009
  br i1 %792, label %793, label %838, !dbg !1009

793:                                              ; preds = %783
  %794 = load ptr, ptr %4, align 8, !dbg !1009
  %795 = getelementptr inbounds %struct.jsonsl_st, ptr %794, i32 0, i32 7, !dbg !1009
  %796 = load i32, ptr %795, align 8, !dbg !1009
  %797 = load ptr, ptr %9, align 8, !dbg !1009
  %798 = getelementptr inbounds %struct.jsonsl_state_st, ptr %797, i32 0, i32 4, !dbg !1009
  %799 = load i32, ptr %798, align 8, !dbg !1009
  %800 = icmp ugt i32 %796, %799, !dbg !1009
  br i1 %800, label %801, label %838, !dbg !1009

801:                                              ; preds = %793
  %802 = load ptr, ptr %9, align 8, !dbg !1009
  %803 = getelementptr inbounds %struct.jsonsl_state_st, ptr %802, i32 0, i32 6, !dbg !1009
  %804 = load i32, ptr %803, align 8, !dbg !1009
  %805 = icmp eq i32 %804, 0, !dbg !1009
  br i1 %805, label %806, label %838, !dbg !1007

806:                                              ; preds = %801
  %807 = load ptr, ptr %4, align 8, !dbg !1011
  %808 = getelementptr inbounds %struct.jsonsl_st, ptr %807, i32 0, i32 5, !dbg !1011
  %809 = load ptr, ptr %808, align 8, !dbg !1011
  %810 = icmp ne ptr %809, null, !dbg !1011
  br i1 %810, label %811, label %818, !dbg !1014

811:                                              ; preds = %806
  %812 = load ptr, ptr %4, align 8, !dbg !1015
  %813 = getelementptr inbounds %struct.jsonsl_st, ptr %812, i32 0, i32 5, !dbg !1015
  %814 = load ptr, ptr %813, align 8, !dbg !1015
  %815 = load ptr, ptr %4, align 8, !dbg !1015
  %816 = load ptr, ptr %9, align 8, !dbg !1015
  %817 = load ptr, ptr %7, align 8, !dbg !1015
  call void %814(ptr noundef %815, i32 noundef 45, ptr noundef %816, ptr noundef %817), !dbg !1015
  br label %831, !dbg !1015

818:                                              ; preds = %806
  %819 = load ptr, ptr %4, align 8, !dbg !1017
  %820 = getelementptr inbounds %struct.jsonsl_st, ptr %819, i32 0, i32 6, !dbg !1017
  %821 = load ptr, ptr %820, align 8, !dbg !1017
  %822 = icmp ne ptr %821, null, !dbg !1017
  br i1 %822, label %823, label %830, !dbg !1011

823:                                              ; preds = %818
  %824 = load ptr, ptr %4, align 8, !dbg !1019
  %825 = getelementptr inbounds %struct.jsonsl_st, ptr %824, i32 0, i32 6, !dbg !1019
  %826 = load ptr, ptr %825, align 8, !dbg !1019
  %827 = load ptr, ptr %4, align 8, !dbg !1019
  %828 = load ptr, ptr %9, align 8, !dbg !1019
  %829 = load ptr, ptr %7, align 8, !dbg !1019
  call void %826(ptr noundef %827, i32 noundef 45, ptr noundef %828, ptr noundef %829), !dbg !1019
  br label %830, !dbg !1019

830:                                              ; preds = %823, %818
  br label %831

831:                                              ; preds = %830, %811
  %832 = load ptr, ptr %4, align 8, !dbg !1021
  %833 = getelementptr inbounds %struct.jsonsl_st, ptr %832, i32 0, i32 1, !dbg !1021
  %834 = load i32, ptr %833, align 4, !dbg !1021
  %835 = icmp ne i32 %834, 0, !dbg !1021
  br i1 %835, label %836, label %837, !dbg !1014

836:                                              ; preds = %831
  br label %2041, !dbg !1023

837:                                              ; preds = %831
  br label %838, !dbg !1014

838:                                              ; preds = %837, %801, %793, %783
  %839 = load ptr, ptr %9, align 8, !dbg !1007
  %840 = getelementptr inbounds %struct.jsonsl_state_st, ptr %839, i32 0, i32 7, !dbg !1007
  store i32 0, ptr %840, align 4, !dbg !1007
  %841 = load ptr, ptr %4, align 8, !dbg !1007
  %842 = getelementptr inbounds %struct.jsonsl_st, ptr %841, i32 0, i32 27, !dbg !1007
  %843 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %842, i64 0, i64 0, !dbg !1007
  %844 = load ptr, ptr %4, align 8, !dbg !1007
  %845 = getelementptr inbounds %struct.jsonsl_st, ptr %844, i32 0, i32 0, !dbg !1007
  %846 = load i32, ptr %845, align 8, !dbg !1007
  %847 = add i32 %846, -1, !dbg !1007
  store i32 %847, ptr %845, align 8, !dbg !1007
  %848 = zext i32 %847 to i64, !dbg !1007
  %849 = getelementptr inbounds %struct.jsonsl_state_st, ptr %843, i64 %848, !dbg !1007
  store ptr %849, ptr %9, align 8, !dbg !1007
  %850 = load ptr, ptr %4, align 8, !dbg !1007
  %851 = getelementptr inbounds %struct.jsonsl_st, ptr %850, i32 0, i32 2, !dbg !1007
  %852 = load i64, ptr %851, align 8, !dbg !1007
  %853 = load ptr, ptr %9, align 8, !dbg !1007
  %854 = getelementptr inbounds %struct.jsonsl_state_st, ptr %853, i32 0, i32 3, !dbg !1007
  store i64 %852, ptr %854, align 8, !dbg !1007
  br label %2032, !dbg !1025

855:                                              ; preds = %779
  %856 = load ptr, ptr %4, align 8, !dbg !1026
  %857 = getelementptr inbounds %struct.jsonsl_st, ptr %856, i32 0, i32 2, !dbg !1026
  %858 = load i64, ptr %857, align 8, !dbg !1026
  %859 = load ptr, ptr %9, align 8, !dbg !1026
  %860 = getelementptr inbounds %struct.jsonsl_state_st, ptr %859, i32 0, i32 3, !dbg !1026
  store i64 %858, ptr %860, align 8, !dbg !1026
  %861 = load ptr, ptr %4, align 8, !dbg !1027
  %862 = getelementptr inbounds %struct.jsonsl_st, ptr %861, i32 0, i32 13, !dbg !1027
  %863 = load i32, ptr %862, align 8, !dbg !1027
  %864 = icmp ne i32 %863, 0, !dbg !1027
  br i1 %864, label %865, label %910, !dbg !1027

865:                                              ; preds = %855
  %866 = load ptr, ptr %4, align 8, !dbg !1027
  %867 = getelementptr inbounds %struct.jsonsl_st, ptr %866, i32 0, i32 7, !dbg !1027
  %868 = load i32, ptr %867, align 8, !dbg !1027
  %869 = load ptr, ptr %9, align 8, !dbg !1027
  %870 = getelementptr inbounds %struct.jsonsl_state_st, ptr %869, i32 0, i32 4, !dbg !1027
  %871 = load i32, ptr %870, align 8, !dbg !1027
  %872 = icmp ugt i32 %868, %871, !dbg !1027
  br i1 %872, label %873, label %910, !dbg !1027

873:                                              ; preds = %865
  %874 = load ptr, ptr %9, align 8, !dbg !1027
  %875 = getelementptr inbounds %struct.jsonsl_state_st, ptr %874, i32 0, i32 6, !dbg !1027
  %876 = load i32, ptr %875, align 8, !dbg !1027
  %877 = icmp eq i32 %876, 0, !dbg !1027
  br i1 %877, label %878, label %910, !dbg !1026

878:                                              ; preds = %873
  %879 = load ptr, ptr %4, align 8, !dbg !1029
  %880 = getelementptr inbounds %struct.jsonsl_st, ptr %879, i32 0, i32 5, !dbg !1029
  %881 = load ptr, ptr %880, align 8, !dbg !1029
  %882 = icmp ne ptr %881, null, !dbg !1029
  br i1 %882, label %883, label %890, !dbg !1032

883:                                              ; preds = %878
  %884 = load ptr, ptr %4, align 8, !dbg !1033
  %885 = getelementptr inbounds %struct.jsonsl_st, ptr %884, i32 0, i32 5, !dbg !1033
  %886 = load ptr, ptr %885, align 8, !dbg !1033
  %887 = load ptr, ptr %4, align 8, !dbg !1033
  %888 = load ptr, ptr %9, align 8, !dbg !1033
  %889 = load ptr, ptr %7, align 8, !dbg !1033
  call void %886(ptr noundef %887, i32 noundef 45, ptr noundef %888, ptr noundef %889), !dbg !1033
  br label %903, !dbg !1033

890:                                              ; preds = %878
  %891 = load ptr, ptr %4, align 8, !dbg !1035
  %892 = getelementptr inbounds %struct.jsonsl_st, ptr %891, i32 0, i32 6, !dbg !1035
  %893 = load ptr, ptr %892, align 8, !dbg !1035
  %894 = icmp ne ptr %893, null, !dbg !1035
  br i1 %894, label %895, label %902, !dbg !1029

895:                                              ; preds = %890
  %896 = load ptr, ptr %4, align 8, !dbg !1037
  %897 = getelementptr inbounds %struct.jsonsl_st, ptr %896, i32 0, i32 6, !dbg !1037
  %898 = load ptr, ptr %897, align 8, !dbg !1037
  %899 = load ptr, ptr %4, align 8, !dbg !1037
  %900 = load ptr, ptr %9, align 8, !dbg !1037
  %901 = load ptr, ptr %7, align 8, !dbg !1037
  call void %898(ptr noundef %899, i32 noundef 45, ptr noundef %900, ptr noundef %901), !dbg !1037
  br label %902, !dbg !1037

902:                                              ; preds = %895, %890
  br label %903

903:                                              ; preds = %902, %883
  %904 = load ptr, ptr %4, align 8, !dbg !1039
  %905 = getelementptr inbounds %struct.jsonsl_st, ptr %904, i32 0, i32 1, !dbg !1039
  %906 = load i32, ptr %905, align 4, !dbg !1039
  %907 = icmp ne i32 %906, 0, !dbg !1039
  br i1 %907, label %908, label %909, !dbg !1032

908:                                              ; preds = %903
  br label %2041, !dbg !1041

909:                                              ; preds = %903
  br label %910, !dbg !1032

910:                                              ; preds = %909, %873, %865, %855
  %911 = load ptr, ptr %9, align 8, !dbg !1026
  %912 = getelementptr inbounds %struct.jsonsl_state_st, ptr %911, i32 0, i32 7, !dbg !1026
  store i32 0, ptr %912, align 4, !dbg !1026
  %913 = load ptr, ptr %4, align 8, !dbg !1026
  %914 = getelementptr inbounds %struct.jsonsl_st, ptr %913, i32 0, i32 27, !dbg !1026
  %915 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %914, i64 0, i64 0, !dbg !1026
  %916 = load ptr, ptr %4, align 8, !dbg !1026
  %917 = getelementptr inbounds %struct.jsonsl_st, ptr %916, i32 0, i32 0, !dbg !1026
  %918 = load i32, ptr %917, align 8, !dbg !1026
  %919 = add i32 %918, -1, !dbg !1026
  store i32 %919, ptr %917, align 8, !dbg !1026
  %920 = zext i32 %919 to i64, !dbg !1026
  %921 = getelementptr inbounds %struct.jsonsl_state_st, ptr %915, i64 %920, !dbg !1026
  store ptr %921, ptr %9, align 8, !dbg !1026
  %922 = load ptr, ptr %4, align 8, !dbg !1026
  %923 = getelementptr inbounds %struct.jsonsl_st, ptr %922, i32 0, i32 2, !dbg !1026
  %924 = load i64, ptr %923, align 8, !dbg !1026
  %925 = load ptr, ptr %9, align 8, !dbg !1026
  %926 = getelementptr inbounds %struct.jsonsl_state_st, ptr %925, i32 0, i32 3, !dbg !1026
  store i64 %924, ptr %926, align 8, !dbg !1026
  br label %2032, !dbg !1043

927:                                              ; preds = %779
  %928 = load ptr, ptr %9, align 8, !dbg !1044
  %929 = getelementptr inbounds %struct.jsonsl_state_st, ptr %928, i32 0, i32 5, !dbg !1045
  %930 = load i64, ptr %929, align 8, !dbg !1046
  %931 = add i64 %930, 1, !dbg !1046
  store i64 %931, ptr %929, align 8, !dbg !1046
  %932 = load ptr, ptr %9, align 8, !dbg !1047
  %933 = getelementptr inbounds %struct.jsonsl_state_st, ptr %932, i32 0, i32 5, !dbg !1049
  %934 = load i64, ptr %933, align 8, !dbg !1049
  %935 = sub i64 %934, 1, !dbg !1050
  %936 = urem i64 %935, 2, !dbg !1051
  %937 = icmp ne i64 %936, 0, !dbg !1051
  br i1 %937, label %938, label %1054, !dbg !1052

938:                                              ; preds = %927
  %939 = load ptr, ptr %4, align 8, !dbg !1053
  %940 = getelementptr inbounds %struct.jsonsl_st, ptr %939, i32 0, i32 21, !dbg !1056
  %941 = load i8, ptr %940, align 1, !dbg !1056
  %942 = sext i8 %941 to i32, !dbg !1053
  %943 = icmp ne i32 %942, 58, !dbg !1057
  br i1 %943, label %944, label %955, !dbg !1058

944:                                              ; preds = %938
  %945 = load ptr, ptr %4, align 8, !dbg !1059
  %946 = getelementptr inbounds %struct.jsonsl_st, ptr %945, i32 0, i32 8, !dbg !1059
  %947 = load ptr, ptr %946, align 8, !dbg !1059
  %948 = load ptr, ptr %4, align 8, !dbg !1059
  %949 = load ptr, ptr %9, align 8, !dbg !1059
  %950 = load ptr, ptr %7, align 8, !dbg !1059
  %951 = call i32 %947(ptr noundef %948, i32 noundef 5, ptr noundef %949, ptr noundef %950), !dbg !1059
  %952 = icmp ne i32 %951, 0, !dbg !1059
  br i1 %952, label %953, label %954, !dbg !1062

953:                                              ; preds = %944
  br label %32, !dbg !1063

954:                                              ; preds = %944
  br label %2041, !dbg !1062

955:                                              ; preds = %938
  %956 = load ptr, ptr %4, align 8, !dbg !1065
  %957 = getelementptr inbounds %struct.jsonsl_st, ptr %956, i32 0, i32 20, !dbg !1066
  store i8 44, ptr %957, align 4, !dbg !1067
  %958 = load ptr, ptr %4, align 8, !dbg !1068
  %959 = getelementptr inbounds %struct.jsonsl_st, ptr %958, i32 0, i32 21, !dbg !1069
  store i8 0, ptr %959, align 1, !dbg !1070
  %960 = load ptr, ptr %4, align 8, !dbg !1071
  %961 = getelementptr inbounds %struct.jsonsl_st, ptr %960, i32 0, i32 0, !dbg !1071
  %962 = load i32, ptr %961, align 8, !dbg !1071
  %963 = zext i32 %962 to i64, !dbg !1071
  %964 = load i64, ptr %8, align 8, !dbg !1071
  %965 = sub i64 %964, 1, !dbg !1071
  %966 = icmp uge i64 %963, %965, !dbg !1071
  br i1 %966, label %967, label %975, !dbg !1073

967:                                              ; preds = %955
  %968 = load ptr, ptr %4, align 8, !dbg !1074
  %969 = getelementptr inbounds %struct.jsonsl_st, ptr %968, i32 0, i32 8, !dbg !1074
  %970 = load ptr, ptr %969, align 8, !dbg !1074
  %971 = load ptr, ptr %4, align 8, !dbg !1074
  %972 = load ptr, ptr %9, align 8, !dbg !1074
  %973 = load ptr, ptr %7, align 8, !dbg !1074
  %974 = call i32 %970(ptr noundef %971, i32 noundef 11, ptr noundef %972, ptr noundef %973), !dbg !1074
  br label %2041, !dbg !1074

975:                                              ; preds = %955
  %976 = load ptr, ptr %4, align 8, !dbg !1073
  %977 = getelementptr inbounds %struct.jsonsl_st, ptr %976, i32 0, i32 27, !dbg !1073
  %978 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %977, i64 0, i64 0, !dbg !1073
  %979 = load ptr, ptr %4, align 8, !dbg !1073
  %980 = getelementptr inbounds %struct.jsonsl_st, ptr %979, i32 0, i32 0, !dbg !1073
  %981 = load i32, ptr %980, align 8, !dbg !1073
  %982 = add i32 %981, 1, !dbg !1073
  store i32 %982, ptr %980, align 8, !dbg !1073
  %983 = zext i32 %982 to i64, !dbg !1073
  %984 = getelementptr inbounds %struct.jsonsl_state_st, ptr %978, i64 %983, !dbg !1073
  store ptr %984, ptr %9, align 8, !dbg !1073
  %985 = load ptr, ptr %4, align 8, !dbg !1073
  %986 = getelementptr inbounds %struct.jsonsl_st, ptr %985, i32 0, i32 27, !dbg !1073
  %987 = load ptr, ptr %4, align 8, !dbg !1073
  %988 = getelementptr inbounds %struct.jsonsl_st, ptr %987, i32 0, i32 0, !dbg !1073
  %989 = load i32, ptr %988, align 8, !dbg !1073
  %990 = sub i32 %989, 1, !dbg !1073
  %991 = zext i32 %990 to i64, !dbg !1073
  %992 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %986, i64 0, i64 %991, !dbg !1073
  %993 = getelementptr inbounds %struct.jsonsl_state_st, ptr %992, i32 0, i32 6, !dbg !1073
  %994 = load i32, ptr %993, align 8, !dbg !1073
  %995 = load ptr, ptr %9, align 8, !dbg !1073
  %996 = getelementptr inbounds %struct.jsonsl_state_st, ptr %995, i32 0, i32 6, !dbg !1073
  store i32 %994, ptr %996, align 8, !dbg !1073
  %997 = load ptr, ptr %4, align 8, !dbg !1073
  %998 = getelementptr inbounds %struct.jsonsl_st, ptr %997, i32 0, i32 2, !dbg !1073
  %999 = load i64, ptr %998, align 8, !dbg !1073
  %1000 = load ptr, ptr %9, align 8, !dbg !1073
  %1001 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1000, i32 0, i32 2, !dbg !1073
  store i64 %999, ptr %1001, align 8, !dbg !1073
  %1002 = load ptr, ptr %9, align 8, !dbg !1076
  %1003 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1002, i32 0, i32 0, !dbg !1077
  store i32 16776994, ptr %1003, align 8, !dbg !1078
  %1004 = load ptr, ptr %4, align 8, !dbg !1079
  %1005 = getelementptr inbounds %struct.jsonsl_st, ptr %1004, i32 0, i32 12, !dbg !1079
  %1006 = load i32, ptr %1005, align 4, !dbg !1079
  %1007 = icmp ne i32 %1006, 0, !dbg !1079
  br i1 %1007, label %1008, label %1053, !dbg !1079

1008:                                             ; preds = %975
  %1009 = load ptr, ptr %4, align 8, !dbg !1079
  %1010 = getelementptr inbounds %struct.jsonsl_st, ptr %1009, i32 0, i32 7, !dbg !1079
  %1011 = load i32, ptr %1010, align 8, !dbg !1079
  %1012 = load ptr, ptr %9, align 8, !dbg !1079
  %1013 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1012, i32 0, i32 4, !dbg !1079
  %1014 = load i32, ptr %1013, align 8, !dbg !1079
  %1015 = icmp ugt i32 %1011, %1014, !dbg !1079
  br i1 %1015, label %1016, label %1053, !dbg !1079

1016:                                             ; preds = %1008
  %1017 = load ptr, ptr %9, align 8, !dbg !1079
  %1018 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1017, i32 0, i32 6, !dbg !1079
  %1019 = load i32, ptr %1018, align 8, !dbg !1079
  %1020 = icmp eq i32 %1019, 0, !dbg !1079
  br i1 %1020, label %1021, label %1053, !dbg !1081

1021:                                             ; preds = %1016
  %1022 = load ptr, ptr %4, align 8, !dbg !1082
  %1023 = getelementptr inbounds %struct.jsonsl_st, ptr %1022, i32 0, i32 4, !dbg !1082
  %1024 = load ptr, ptr %1023, align 8, !dbg !1082
  %1025 = icmp ne ptr %1024, null, !dbg !1082
  br i1 %1025, label %1026, label %1033, !dbg !1085

1026:                                             ; preds = %1021
  %1027 = load ptr, ptr %4, align 8, !dbg !1086
  %1028 = getelementptr inbounds %struct.jsonsl_st, ptr %1027, i32 0, i32 4, !dbg !1086
  %1029 = load ptr, ptr %1028, align 8, !dbg !1086
  %1030 = load ptr, ptr %4, align 8, !dbg !1086
  %1031 = load ptr, ptr %9, align 8, !dbg !1086
  %1032 = load ptr, ptr %7, align 8, !dbg !1086
  call void %1029(ptr noundef %1030, i32 noundef 43, ptr noundef %1031, ptr noundef %1032), !dbg !1086
  br label %1046, !dbg !1086

1033:                                             ; preds = %1021
  %1034 = load ptr, ptr %4, align 8, !dbg !1088
  %1035 = getelementptr inbounds %struct.jsonsl_st, ptr %1034, i32 0, i32 6, !dbg !1088
  %1036 = load ptr, ptr %1035, align 8, !dbg !1088
  %1037 = icmp ne ptr %1036, null, !dbg !1088
  br i1 %1037, label %1038, label %1045, !dbg !1082

1038:                                             ; preds = %1033
  %1039 = load ptr, ptr %4, align 8, !dbg !1090
  %1040 = getelementptr inbounds %struct.jsonsl_st, ptr %1039, i32 0, i32 6, !dbg !1090
  %1041 = load ptr, ptr %1040, align 8, !dbg !1090
  %1042 = load ptr, ptr %4, align 8, !dbg !1090
  %1043 = load ptr, ptr %9, align 8, !dbg !1090
  %1044 = load ptr, ptr %7, align 8, !dbg !1090
  call void %1041(ptr noundef %1042, i32 noundef 43, ptr noundef %1043, ptr noundef %1044), !dbg !1090
  br label %1045, !dbg !1090

1045:                                             ; preds = %1038, %1033
  br label %1046

1046:                                             ; preds = %1045, %1026
  %1047 = load ptr, ptr %4, align 8, !dbg !1092
  %1048 = getelementptr inbounds %struct.jsonsl_st, ptr %1047, i32 0, i32 1, !dbg !1092
  %1049 = load i32, ptr %1048, align 4, !dbg !1092
  %1050 = icmp ne i32 %1049, 0, !dbg !1092
  br i1 %1050, label %1051, label %1052, !dbg !1085

1051:                                             ; preds = %1046
  br label %2041, !dbg !1094

1052:                                             ; preds = %1046
  br label %1053, !dbg !1085

1053:                                             ; preds = %1052, %1016, %1008, %975
  br label %1170, !dbg !1096

1054:                                             ; preds = %927
  %1055 = load ptr, ptr %4, align 8, !dbg !1097
  %1056 = getelementptr inbounds %struct.jsonsl_st, ptr %1055, i32 0, i32 20, !dbg !1100
  %1057 = load i8, ptr %1056, align 4, !dbg !1100
  %1058 = sext i8 %1057 to i32, !dbg !1097
  %1059 = icmp ne i32 %1058, 34, !dbg !1101
  br i1 %1059, label %1060, label %1071, !dbg !1102

1060:                                             ; preds = %1054
  %1061 = load ptr, ptr %4, align 8, !dbg !1103
  %1062 = getelementptr inbounds %struct.jsonsl_st, ptr %1061, i32 0, i32 8, !dbg !1103
  %1063 = load ptr, ptr %1062, align 8, !dbg !1103
  %1064 = load ptr, ptr %4, align 8, !dbg !1103
  %1065 = load ptr, ptr %9, align 8, !dbg !1103
  %1066 = load ptr, ptr %7, align 8, !dbg !1103
  %1067 = call i32 %1063(ptr noundef %1064, i32 noundef 4, ptr noundef %1065, ptr noundef %1066), !dbg !1103
  %1068 = icmp ne i32 %1067, 0, !dbg !1103
  br i1 %1068, label %1069, label %1070, !dbg !1106

1069:                                             ; preds = %1060
  br label %32, !dbg !1107

1070:                                             ; preds = %1060
  br label %2041, !dbg !1106

1071:                                             ; preds = %1054
  %1072 = load ptr, ptr %4, align 8, !dbg !1109
  %1073 = getelementptr inbounds %struct.jsonsl_st, ptr %1072, i32 0, i32 21, !dbg !1110
  store i8 0, ptr %1073, align 1, !dbg !1111
  %1074 = load ptr, ptr %4, align 8, !dbg !1112
  %1075 = getelementptr inbounds %struct.jsonsl_st, ptr %1074, i32 0, i32 20, !dbg !1113
  store i8 58, ptr %1075, align 4, !dbg !1114
  %1076 = load ptr, ptr %4, align 8, !dbg !1115
  %1077 = getelementptr inbounds %struct.jsonsl_st, ptr %1076, i32 0, i32 0, !dbg !1115
  %1078 = load i32, ptr %1077, align 8, !dbg !1115
  %1079 = zext i32 %1078 to i64, !dbg !1115
  %1080 = load i64, ptr %8, align 8, !dbg !1115
  %1081 = sub i64 %1080, 1, !dbg !1115
  %1082 = icmp uge i64 %1079, %1081, !dbg !1115
  br i1 %1082, label %1083, label %1091, !dbg !1117

1083:                                             ; preds = %1071
  %1084 = load ptr, ptr %4, align 8, !dbg !1118
  %1085 = getelementptr inbounds %struct.jsonsl_st, ptr %1084, i32 0, i32 8, !dbg !1118
  %1086 = load ptr, ptr %1085, align 8, !dbg !1118
  %1087 = load ptr, ptr %4, align 8, !dbg !1118
  %1088 = load ptr, ptr %9, align 8, !dbg !1118
  %1089 = load ptr, ptr %7, align 8, !dbg !1118
  %1090 = call i32 %1086(ptr noundef %1087, i32 noundef 11, ptr noundef %1088, ptr noundef %1089), !dbg !1118
  br label %2041, !dbg !1118

1091:                                             ; preds = %1071
  %1092 = load ptr, ptr %4, align 8, !dbg !1117
  %1093 = getelementptr inbounds %struct.jsonsl_st, ptr %1092, i32 0, i32 27, !dbg !1117
  %1094 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1093, i64 0, i64 0, !dbg !1117
  %1095 = load ptr, ptr %4, align 8, !dbg !1117
  %1096 = getelementptr inbounds %struct.jsonsl_st, ptr %1095, i32 0, i32 0, !dbg !1117
  %1097 = load i32, ptr %1096, align 8, !dbg !1117
  %1098 = add i32 %1097, 1, !dbg !1117
  store i32 %1098, ptr %1096, align 8, !dbg !1117
  %1099 = zext i32 %1098 to i64, !dbg !1117
  %1100 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1094, i64 %1099, !dbg !1117
  store ptr %1100, ptr %9, align 8, !dbg !1117
  %1101 = load ptr, ptr %4, align 8, !dbg !1117
  %1102 = getelementptr inbounds %struct.jsonsl_st, ptr %1101, i32 0, i32 27, !dbg !1117
  %1103 = load ptr, ptr %4, align 8, !dbg !1117
  %1104 = getelementptr inbounds %struct.jsonsl_st, ptr %1103, i32 0, i32 0, !dbg !1117
  %1105 = load i32, ptr %1104, align 8, !dbg !1117
  %1106 = sub i32 %1105, 1, !dbg !1117
  %1107 = zext i32 %1106 to i64, !dbg !1117
  %1108 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1102, i64 0, i64 %1107, !dbg !1117
  %1109 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1108, i32 0, i32 6, !dbg !1117
  %1110 = load i32, ptr %1109, align 8, !dbg !1117
  %1111 = load ptr, ptr %9, align 8, !dbg !1117
  %1112 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1111, i32 0, i32 6, !dbg !1117
  store i32 %1110, ptr %1112, align 8, !dbg !1117
  %1113 = load ptr, ptr %4, align 8, !dbg !1117
  %1114 = getelementptr inbounds %struct.jsonsl_st, ptr %1113, i32 0, i32 2, !dbg !1117
  %1115 = load i64, ptr %1114, align 8, !dbg !1117
  %1116 = load ptr, ptr %9, align 8, !dbg !1117
  %1117 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1116, i32 0, i32 2, !dbg !1117
  store i64 %1115, ptr %1117, align 8, !dbg !1117
  %1118 = load ptr, ptr %9, align 8, !dbg !1120
  %1119 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1118, i32 0, i32 0, !dbg !1121
  store i32 16776995, ptr %1119, align 8, !dbg !1122
  %1120 = load ptr, ptr %4, align 8, !dbg !1123
  %1121 = getelementptr inbounds %struct.jsonsl_st, ptr %1120, i32 0, i32 13, !dbg !1123
  %1122 = load i32, ptr %1121, align 8, !dbg !1123
  %1123 = icmp ne i32 %1122, 0, !dbg !1123
  br i1 %1123, label %1124, label %1169, !dbg !1123

1124:                                             ; preds = %1091
  %1125 = load ptr, ptr %4, align 8, !dbg !1123
  %1126 = getelementptr inbounds %struct.jsonsl_st, ptr %1125, i32 0, i32 7, !dbg !1123
  %1127 = load i32, ptr %1126, align 8, !dbg !1123
  %1128 = load ptr, ptr %9, align 8, !dbg !1123
  %1129 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1128, i32 0, i32 4, !dbg !1123
  %1130 = load i32, ptr %1129, align 8, !dbg !1123
  %1131 = icmp ugt i32 %1127, %1130, !dbg !1123
  br i1 %1131, label %1132, label %1169, !dbg !1123

1132:                                             ; preds = %1124
  %1133 = load ptr, ptr %9, align 8, !dbg !1123
  %1134 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1133, i32 0, i32 6, !dbg !1123
  %1135 = load i32, ptr %1134, align 8, !dbg !1123
  %1136 = icmp eq i32 %1135, 0, !dbg !1123
  br i1 %1136, label %1137, label %1169, !dbg !1125

1137:                                             ; preds = %1132
  %1138 = load ptr, ptr %4, align 8, !dbg !1126
  %1139 = getelementptr inbounds %struct.jsonsl_st, ptr %1138, i32 0, i32 4, !dbg !1126
  %1140 = load ptr, ptr %1139, align 8, !dbg !1126
  %1141 = icmp ne ptr %1140, null, !dbg !1126
  br i1 %1141, label %1142, label %1149, !dbg !1129

1142:                                             ; preds = %1137
  %1143 = load ptr, ptr %4, align 8, !dbg !1130
  %1144 = getelementptr inbounds %struct.jsonsl_st, ptr %1143, i32 0, i32 4, !dbg !1130
  %1145 = load ptr, ptr %1144, align 8, !dbg !1130
  %1146 = load ptr, ptr %4, align 8, !dbg !1130
  %1147 = load ptr, ptr %9, align 8, !dbg !1130
  %1148 = load ptr, ptr %7, align 8, !dbg !1130
  call void %1145(ptr noundef %1146, i32 noundef 43, ptr noundef %1147, ptr noundef %1148), !dbg !1130
  br label %1162, !dbg !1130

1149:                                             ; preds = %1137
  %1150 = load ptr, ptr %4, align 8, !dbg !1132
  %1151 = getelementptr inbounds %struct.jsonsl_st, ptr %1150, i32 0, i32 6, !dbg !1132
  %1152 = load ptr, ptr %1151, align 8, !dbg !1132
  %1153 = icmp ne ptr %1152, null, !dbg !1132
  br i1 %1153, label %1154, label %1161, !dbg !1126

1154:                                             ; preds = %1149
  %1155 = load ptr, ptr %4, align 8, !dbg !1134
  %1156 = getelementptr inbounds %struct.jsonsl_st, ptr %1155, i32 0, i32 6, !dbg !1134
  %1157 = load ptr, ptr %1156, align 8, !dbg !1134
  %1158 = load ptr, ptr %4, align 8, !dbg !1134
  %1159 = load ptr, ptr %9, align 8, !dbg !1134
  %1160 = load ptr, ptr %7, align 8, !dbg !1134
  call void %1157(ptr noundef %1158, i32 noundef 43, ptr noundef %1159, ptr noundef %1160), !dbg !1134
  br label %1161, !dbg !1134

1161:                                             ; preds = %1154, %1149
  br label %1162

1162:                                             ; preds = %1161, %1142
  %1163 = load ptr, ptr %4, align 8, !dbg !1136
  %1164 = getelementptr inbounds %struct.jsonsl_st, ptr %1163, i32 0, i32 1, !dbg !1136
  %1165 = load i32, ptr %1164, align 4, !dbg !1136
  %1166 = icmp ne i32 %1165, 0, !dbg !1136
  br i1 %1166, label %1167, label %1168, !dbg !1129

1167:                                             ; preds = %1162
  br label %2041, !dbg !1138

1168:                                             ; preds = %1162
  br label %1169, !dbg !1129

1169:                                             ; preds = %1168, %1132, %1124, %1091
  br label %1170

1170:                                             ; preds = %1169, %1053
  br label %2032, !dbg !1140

1171:                                             ; preds = %779
  %1172 = load ptr, ptr %9, align 8, !dbg !1141
  %1173 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1172, i32 0, i32 5, !dbg !1142
  %1174 = load i64, ptr %1173, align 8, !dbg !1143
  %1175 = add i64 %1174, 1, !dbg !1143
  store i64 %1175, ptr %1173, align 8, !dbg !1143
  %1176 = load ptr, ptr %4, align 8, !dbg !1144
  %1177 = getelementptr inbounds %struct.jsonsl_st, ptr %1176, i32 0, i32 0, !dbg !1144
  %1178 = load i32, ptr %1177, align 8, !dbg !1144
  %1179 = zext i32 %1178 to i64, !dbg !1144
  %1180 = load i64, ptr %8, align 8, !dbg !1144
  %1181 = sub i64 %1180, 1, !dbg !1144
  %1182 = icmp uge i64 %1179, %1181, !dbg !1144
  br i1 %1182, label %1183, label %1191, !dbg !1146

1183:                                             ; preds = %1171
  %1184 = load ptr, ptr %4, align 8, !dbg !1147
  %1185 = getelementptr inbounds %struct.jsonsl_st, ptr %1184, i32 0, i32 8, !dbg !1147
  %1186 = load ptr, ptr %1185, align 8, !dbg !1147
  %1187 = load ptr, ptr %4, align 8, !dbg !1147
  %1188 = load ptr, ptr %9, align 8, !dbg !1147
  %1189 = load ptr, ptr %7, align 8, !dbg !1147
  %1190 = call i32 %1186(ptr noundef %1187, i32 noundef 11, ptr noundef %1188, ptr noundef %1189), !dbg !1147
  br label %2041, !dbg !1147

1191:                                             ; preds = %1171
  %1192 = load ptr, ptr %4, align 8, !dbg !1146
  %1193 = getelementptr inbounds %struct.jsonsl_st, ptr %1192, i32 0, i32 27, !dbg !1146
  %1194 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1193, i64 0, i64 0, !dbg !1146
  %1195 = load ptr, ptr %4, align 8, !dbg !1146
  %1196 = getelementptr inbounds %struct.jsonsl_st, ptr %1195, i32 0, i32 0, !dbg !1146
  %1197 = load i32, ptr %1196, align 8, !dbg !1146
  %1198 = add i32 %1197, 1, !dbg !1146
  store i32 %1198, ptr %1196, align 8, !dbg !1146
  %1199 = zext i32 %1198 to i64, !dbg !1146
  %1200 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1194, i64 %1199, !dbg !1146
  store ptr %1200, ptr %9, align 8, !dbg !1146
  %1201 = load ptr, ptr %4, align 8, !dbg !1146
  %1202 = getelementptr inbounds %struct.jsonsl_st, ptr %1201, i32 0, i32 27, !dbg !1146
  %1203 = load ptr, ptr %4, align 8, !dbg !1146
  %1204 = getelementptr inbounds %struct.jsonsl_st, ptr %1203, i32 0, i32 0, !dbg !1146
  %1205 = load i32, ptr %1204, align 8, !dbg !1146
  %1206 = sub i32 %1205, 1, !dbg !1146
  %1207 = zext i32 %1206 to i64, !dbg !1146
  %1208 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1202, i64 0, i64 %1207, !dbg !1146
  %1209 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1208, i32 0, i32 6, !dbg !1146
  %1210 = load i32, ptr %1209, align 8, !dbg !1146
  %1211 = load ptr, ptr %9, align 8, !dbg !1146
  %1212 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1211, i32 0, i32 6, !dbg !1146
  store i32 %1210, ptr %1212, align 8, !dbg !1146
  %1213 = load ptr, ptr %4, align 8, !dbg !1146
  %1214 = getelementptr inbounds %struct.jsonsl_st, ptr %1213, i32 0, i32 2, !dbg !1146
  %1215 = load i64, ptr %1214, align 8, !dbg !1146
  %1216 = load ptr, ptr %9, align 8, !dbg !1146
  %1217 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1216, i32 0, i32 2, !dbg !1146
  store i64 %1215, ptr %1217, align 8, !dbg !1146
  %1218 = load ptr, ptr %9, align 8, !dbg !1149
  %1219 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1218, i32 0, i32 0, !dbg !1150
  store i32 16776994, ptr %1219, align 8, !dbg !1151
  %1220 = load ptr, ptr %4, align 8, !dbg !1152
  %1221 = getelementptr inbounds %struct.jsonsl_st, ptr %1220, i32 0, i32 20, !dbg !1153
  store i8 44, ptr %1221, align 4, !dbg !1154
  %1222 = load ptr, ptr %4, align 8, !dbg !1155
  %1223 = getelementptr inbounds %struct.jsonsl_st, ptr %1222, i32 0, i32 21, !dbg !1156
  store i8 0, ptr %1223, align 1, !dbg !1157
  %1224 = load ptr, ptr %4, align 8, !dbg !1158
  %1225 = getelementptr inbounds %struct.jsonsl_st, ptr %1224, i32 0, i32 12, !dbg !1158
  %1226 = load i32, ptr %1225, align 4, !dbg !1158
  %1227 = icmp ne i32 %1226, 0, !dbg !1158
  br i1 %1227, label %1228, label %1273, !dbg !1158

1228:                                             ; preds = %1191
  %1229 = load ptr, ptr %4, align 8, !dbg !1158
  %1230 = getelementptr inbounds %struct.jsonsl_st, ptr %1229, i32 0, i32 7, !dbg !1158
  %1231 = load i32, ptr %1230, align 8, !dbg !1158
  %1232 = load ptr, ptr %9, align 8, !dbg !1158
  %1233 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1232, i32 0, i32 4, !dbg !1158
  %1234 = load i32, ptr %1233, align 8, !dbg !1158
  %1235 = icmp ugt i32 %1231, %1234, !dbg !1158
  br i1 %1235, label %1236, label %1273, !dbg !1158

1236:                                             ; preds = %1228
  %1237 = load ptr, ptr %9, align 8, !dbg !1158
  %1238 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1237, i32 0, i32 6, !dbg !1158
  %1239 = load i32, ptr %1238, align 8, !dbg !1158
  %1240 = icmp eq i32 %1239, 0, !dbg !1158
  br i1 %1240, label %1241, label %1273, !dbg !1160

1241:                                             ; preds = %1236
  %1242 = load ptr, ptr %4, align 8, !dbg !1161
  %1243 = getelementptr inbounds %struct.jsonsl_st, ptr %1242, i32 0, i32 4, !dbg !1161
  %1244 = load ptr, ptr %1243, align 8, !dbg !1161
  %1245 = icmp ne ptr %1244, null, !dbg !1161
  br i1 %1245, label %1246, label %1253, !dbg !1164

1246:                                             ; preds = %1241
  %1247 = load ptr, ptr %4, align 8, !dbg !1165
  %1248 = getelementptr inbounds %struct.jsonsl_st, ptr %1247, i32 0, i32 4, !dbg !1165
  %1249 = load ptr, ptr %1248, align 8, !dbg !1165
  %1250 = load ptr, ptr %4, align 8, !dbg !1165
  %1251 = load ptr, ptr %9, align 8, !dbg !1165
  %1252 = load ptr, ptr %7, align 8, !dbg !1165
  call void %1249(ptr noundef %1250, i32 noundef 43, ptr noundef %1251, ptr noundef %1252), !dbg !1165
  br label %1266, !dbg !1165

1253:                                             ; preds = %1241
  %1254 = load ptr, ptr %4, align 8, !dbg !1167
  %1255 = getelementptr inbounds %struct.jsonsl_st, ptr %1254, i32 0, i32 6, !dbg !1167
  %1256 = load ptr, ptr %1255, align 8, !dbg !1167
  %1257 = icmp ne ptr %1256, null, !dbg !1167
  br i1 %1257, label %1258, label %1265, !dbg !1161

1258:                                             ; preds = %1253
  %1259 = load ptr, ptr %4, align 8, !dbg !1169
  %1260 = getelementptr inbounds %struct.jsonsl_st, ptr %1259, i32 0, i32 6, !dbg !1169
  %1261 = load ptr, ptr %1260, align 8, !dbg !1169
  %1262 = load ptr, ptr %4, align 8, !dbg !1169
  %1263 = load ptr, ptr %9, align 8, !dbg !1169
  %1264 = load ptr, ptr %7, align 8, !dbg !1169
  call void %1261(ptr noundef %1262, i32 noundef 43, ptr noundef %1263, ptr noundef %1264), !dbg !1169
  br label %1265, !dbg !1169

1265:                                             ; preds = %1258, %1253
  br label %1266

1266:                                             ; preds = %1265, %1246
  %1267 = load ptr, ptr %4, align 8, !dbg !1171
  %1268 = getelementptr inbounds %struct.jsonsl_st, ptr %1267, i32 0, i32 1, !dbg !1171
  %1269 = load i32, ptr %1268, align 4, !dbg !1171
  %1270 = icmp ne i32 %1269, 0, !dbg !1171
  br i1 %1270, label %1271, label %1272, !dbg !1164

1271:                                             ; preds = %1266
  br label %2041, !dbg !1173

1272:                                             ; preds = %1266
  br label %1273, !dbg !1164

1273:                                             ; preds = %1272, %1236, %1228, %1191
  br label %2032, !dbg !1175

1274:                                             ; preds = %779
  %1275 = load ptr, ptr %4, align 8, !dbg !1176
  %1276 = getelementptr inbounds %struct.jsonsl_st, ptr %1275, i32 0, i32 8, !dbg !1176
  %1277 = load ptr, ptr %1276, align 8, !dbg !1176
  %1278 = load ptr, ptr %4, align 8, !dbg !1176
  %1279 = load ptr, ptr %9, align 8, !dbg !1176
  %1280 = load ptr, ptr %7, align 8, !dbg !1176
  %1281 = call i32 %1277(ptr noundef %1278, i32 noundef 4, ptr noundef %1279, ptr noundef %1280), !dbg !1176
  %1282 = icmp ne i32 %1281, 0, !dbg !1176
  br i1 %1282, label %1283, label %1284, !dbg !1178

1283:                                             ; preds = %1274
  br label %32, !dbg !1179

1284:                                             ; preds = %1274
  br label %2041, !dbg !1178

1285:                                             ; preds = %779
  %1286 = load ptr, ptr %4, align 8, !dbg !1181
  %1287 = getelementptr inbounds %struct.jsonsl_st, ptr %1286, i32 0, i32 8, !dbg !1181
  %1288 = load ptr, ptr %1287, align 8, !dbg !1181
  %1289 = load ptr, ptr %4, align 8, !dbg !1181
  %1290 = load ptr, ptr %9, align 8, !dbg !1181
  %1291 = load ptr, ptr %7, align 8, !dbg !1181
  %1292 = call i32 %1288(ptr noundef %1289, i32 noundef 9, ptr noundef %1290, ptr noundef %1291), !dbg !1181
  %1293 = icmp ne i32 %1292, 0, !dbg !1181
  br i1 %1293, label %1294, label %1295, !dbg !1183

1294:                                             ; preds = %1285
  br label %32, !dbg !1184

1295:                                             ; preds = %1285
  br label %2041, !dbg !1183

1296:                                             ; preds = %773
  %1297 = load ptr, ptr %7, align 8, !dbg !1186
  %1298 = load i8, ptr %1297, align 1, !dbg !1186
  %1299 = zext i8 %1298 to i32, !dbg !1186
  %1300 = icmp eq i32 %1299, 92, !dbg !1188
  br i1 %1300, label %1301, label %1326, !dbg !1189

1301:                                             ; preds = %1296
  br label %1302, !dbg !1190

1302:                                             ; preds = %1301, %143
  call void @llvm.dbg.label(metadata !1191), !dbg !1193
  %1303 = load ptr, ptr %9, align 8, !dbg !1194
  %1304 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1303, i32 0, i32 0, !dbg !1196
  %1305 = load i32, ptr %1304, align 8, !dbg !1196
  %1306 = and i32 %1305, 16776960, !dbg !1197
  %1307 = icmp eq i32 %1306, 0, !dbg !1198
  br i1 %1307, label %1308, label %1319, !dbg !1199

1308:                                             ; preds = %1302
  %1309 = load ptr, ptr %4, align 8, !dbg !1200
  %1310 = getelementptr inbounds %struct.jsonsl_st, ptr %1309, i32 0, i32 8, !dbg !1200
  %1311 = load ptr, ptr %1310, align 8, !dbg !1200
  %1312 = load ptr, ptr %4, align 8, !dbg !1200
  %1313 = load ptr, ptr %9, align 8, !dbg !1200
  %1314 = load ptr, ptr %7, align 8, !dbg !1200
  %1315 = call i32 %1311(ptr noundef %1312, i32 noundef 7, ptr noundef %1313, ptr noundef %1314), !dbg !1200
  %1316 = icmp ne i32 %1315, 0, !dbg !1200
  br i1 %1316, label %1317, label %1318, !dbg !1203

1317:                                             ; preds = %1308
  br label %32, !dbg !1204

1318:                                             ; preds = %1308
  br label %2041, !dbg !1203

1319:                                             ; preds = %1302
  %1320 = load ptr, ptr %9, align 8, !dbg !1206
  %1321 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1320, i32 0, i32 7, !dbg !1207
  %1322 = load i32, ptr %1321, align 4, !dbg !1208
  %1323 = add i32 %1322, 1, !dbg !1208
  store i32 %1323, ptr %1321, align 4, !dbg !1208
  %1324 = load ptr, ptr %4, align 8, !dbg !1209
  %1325 = getelementptr inbounds %struct.jsonsl_st, ptr %1324, i32 0, i32 19, !dbg !1210
  store i32 1, ptr %1325, align 8, !dbg !1211
  br label %2032, !dbg !1212

1326:                                             ; preds = %1296
  br label %1327

1327:                                             ; preds = %1326
  br label %1328, !dbg !1213

1328:                                             ; preds = %1327, %755
  call void @llvm.dbg.label(metadata !1214), !dbg !1215
  %1329 = load ptr, ptr %7, align 8, !dbg !1216
  %1330 = load i8, ptr %1329, align 1, !dbg !1216
  %1331 = zext i8 %1330 to i32, !dbg !1216
  switch i32 %1331, label %1815 [
    i32 58, label %1332
    i32 44, label %1359
    i32 123, label %1395
    i32 91, label %1395
    i32 125, label %1606
    i32 93, label %1606
  ], !dbg !1217

1332:                                             ; preds = %1328
  %1333 = load ptr, ptr %4, align 8, !dbg !1218
  %1334 = getelementptr inbounds %struct.jsonsl_st, ptr %1333, i32 0, i32 20, !dbg !1221
  %1335 = load i8, ptr %1334, align 4, !dbg !1221
  %1336 = sext i8 %1335 to i32, !dbg !1218
  %1337 = load ptr, ptr %7, align 8, !dbg !1222
  %1338 = load i8, ptr %1337, align 1, !dbg !1222
  %1339 = zext i8 %1338 to i32, !dbg !1222
  %1340 = icmp ne i32 %1336, %1339, !dbg !1223
  br i1 %1340, label %1341, label %1352, !dbg !1224

1341:                                             ; preds = %1332
  %1342 = load ptr, ptr %4, align 8, !dbg !1225
  %1343 = getelementptr inbounds %struct.jsonsl_st, ptr %1342, i32 0, i32 8, !dbg !1225
  %1344 = load ptr, ptr %1343, align 8, !dbg !1225
  %1345 = load ptr, ptr %4, align 8, !dbg !1225
  %1346 = load ptr, ptr %9, align 8, !dbg !1225
  %1347 = load ptr, ptr %7, align 8, !dbg !1225
  %1348 = call i32 %1344(ptr noundef %1345, i32 noundef 4, ptr noundef %1346, ptr noundef %1347), !dbg !1225
  %1349 = icmp ne i32 %1348, 0, !dbg !1225
  br i1 %1349, label %1350, label %1351, !dbg !1228

1350:                                             ; preds = %1341
  br label %32, !dbg !1229

1351:                                             ; preds = %1341
  br label %2041, !dbg !1228

1352:                                             ; preds = %1332
  %1353 = load ptr, ptr %4, align 8, !dbg !1231
  %1354 = getelementptr inbounds %struct.jsonsl_st, ptr %1353, i32 0, i32 21, !dbg !1232
  store i8 58, ptr %1354, align 1, !dbg !1233
  %1355 = load ptr, ptr %4, align 8, !dbg !1234
  %1356 = getelementptr inbounds %struct.jsonsl_st, ptr %1355, i32 0, i32 22, !dbg !1235
  store i32 1, ptr %1356, align 8, !dbg !1236
  %1357 = load ptr, ptr %4, align 8, !dbg !1237
  %1358 = getelementptr inbounds %struct.jsonsl_st, ptr %1357, i32 0, i32 20, !dbg !1238
  store i8 34, ptr %1358, align 4, !dbg !1239
  br label %2032, !dbg !1240

1359:                                             ; preds = %1328
  %1360 = load ptr, ptr %4, align 8, !dbg !1241
  %1361 = getelementptr inbounds %struct.jsonsl_st, ptr %1360, i32 0, i32 20, !dbg !1243
  %1362 = load i8, ptr %1361, align 4, !dbg !1243
  %1363 = sext i8 %1362 to i32, !dbg !1241
  %1364 = load ptr, ptr %7, align 8, !dbg !1244
  %1365 = load i8, ptr %1364, align 1, !dbg !1244
  %1366 = zext i8 %1365 to i32, !dbg !1244
  %1367 = icmp ne i32 %1363, %1366, !dbg !1245
  br i1 %1367, label %1368, label %1379, !dbg !1246

1368:                                             ; preds = %1359
  %1369 = load ptr, ptr %4, align 8, !dbg !1247
  %1370 = getelementptr inbounds %struct.jsonsl_st, ptr %1369, i32 0, i32 8, !dbg !1247
  %1371 = load ptr, ptr %1370, align 8, !dbg !1247
  %1372 = load ptr, ptr %4, align 8, !dbg !1247
  %1373 = load ptr, ptr %9, align 8, !dbg !1247
  %1374 = load ptr, ptr %7, align 8, !dbg !1247
  %1375 = call i32 %1371(ptr noundef %1372, i32 noundef 4, ptr noundef %1373, ptr noundef %1374), !dbg !1247
  %1376 = icmp ne i32 %1375, 0, !dbg !1247
  br i1 %1376, label %1377, label %1378, !dbg !1250

1377:                                             ; preds = %1368
  br label %32, !dbg !1251

1378:                                             ; preds = %1368
  br label %2041, !dbg !1250

1379:                                             ; preds = %1359
  %1380 = load ptr, ptr %9, align 8, !dbg !1253
  %1381 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1380, i32 0, i32 0, !dbg !1255
  %1382 = load i32, ptr %1381, align 8, !dbg !1255
  %1383 = icmp eq i32 %1382, 123, !dbg !1256
  br i1 %1383, label %1384, label %1387, !dbg !1257

1384:                                             ; preds = %1379
  %1385 = load ptr, ptr %4, align 8, !dbg !1258
  %1386 = getelementptr inbounds %struct.jsonsl_st, ptr %1385, i32 0, i32 20, !dbg !1260
  store i8 34, ptr %1386, align 4, !dbg !1261
  br label %1390, !dbg !1262

1387:                                             ; preds = %1379
  %1388 = load ptr, ptr %4, align 8, !dbg !1263
  %1389 = getelementptr inbounds %struct.jsonsl_st, ptr %1388, i32 0, i32 22, !dbg !1265
  store i32 1, ptr %1389, align 8, !dbg !1266
  br label %1390

1390:                                             ; preds = %1387, %1384
  %1391 = load ptr, ptr %4, align 8, !dbg !1267
  %1392 = getelementptr inbounds %struct.jsonsl_st, ptr %1391, i32 0, i32 21, !dbg !1268
  store i8 44, ptr %1392, align 1, !dbg !1269
  %1393 = load ptr, ptr %4, align 8, !dbg !1270
  %1394 = getelementptr inbounds %struct.jsonsl_st, ptr %1393, i32 0, i32 20, !dbg !1271
  store i8 34, ptr %1394, align 4, !dbg !1272
  br label %2032, !dbg !1273

1395:                                             ; preds = %1328, %1328
  %1396 = load ptr, ptr %4, align 8, !dbg !1274
  %1397 = getelementptr inbounds %struct.jsonsl_st, ptr %1396, i32 0, i32 22, !dbg !1276
  %1398 = load i32, ptr %1397, align 8, !dbg !1276
  %1399 = icmp ne i32 %1398, 0, !dbg !1274
  br i1 %1399, label %1411, label %1400, !dbg !1277

1400:                                             ; preds = %1395
  %1401 = load ptr, ptr %4, align 8, !dbg !1278
  %1402 = getelementptr inbounds %struct.jsonsl_st, ptr %1401, i32 0, i32 8, !dbg !1278
  %1403 = load ptr, ptr %1402, align 8, !dbg !1278
  %1404 = load ptr, ptr %4, align 8, !dbg !1278
  %1405 = load ptr, ptr %9, align 8, !dbg !1278
  %1406 = load ptr, ptr %7, align 8, !dbg !1278
  %1407 = call i32 %1403(ptr noundef %1404, i32 noundef 6, ptr noundef %1405, ptr noundef %1406), !dbg !1278
  %1408 = icmp ne i32 %1407, 0, !dbg !1278
  br i1 %1408, label %1409, label %1410, !dbg !1281

1409:                                             ; preds = %1400
  br label %32, !dbg !1282

1410:                                             ; preds = %1400
  br label %2041, !dbg !1281

1411:                                             ; preds = %1395
  %1412 = load ptr, ptr %9, align 8, !dbg !1284
  %1413 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1412, i32 0, i32 5, !dbg !1284
  %1414 = load i64, ptr %1413, align 8, !dbg !1284
  %1415 = urem i64 %1414, 2, !dbg !1284
  %1416 = icmp eq i64 %1415, 0, !dbg !1284
  br i1 %1416, label %1417, label %1433, !dbg !1284

1417:                                             ; preds = %1411
  %1418 = load ptr, ptr %9, align 8, !dbg !1284
  %1419 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1418, i32 0, i32 0, !dbg !1284
  %1420 = load i32, ptr %1419, align 8, !dbg !1284
  %1421 = icmp eq i32 %1420, 123, !dbg !1284
  br i1 %1421, label %1422, label %1433, !dbg !1286

1422:                                             ; preds = %1417
  %1423 = load ptr, ptr %4, align 8, !dbg !1287
  %1424 = getelementptr inbounds %struct.jsonsl_st, ptr %1423, i32 0, i32 8, !dbg !1287
  %1425 = load ptr, ptr %1424, align 8, !dbg !1287
  %1426 = load ptr, ptr %4, align 8, !dbg !1287
  %1427 = load ptr, ptr %9, align 8, !dbg !1287
  %1428 = load ptr, ptr %7, align 8, !dbg !1287
  %1429 = call i32 %1425(ptr noundef %1426, i32 noundef 13, ptr noundef %1427, ptr noundef %1428), !dbg !1287
  %1430 = icmp ne i32 %1429, 0, !dbg !1287
  br i1 %1430, label %1431, label %1432, !dbg !1290

1431:                                             ; preds = %1422
  br label %32, !dbg !1291

1432:                                             ; preds = %1422
  br label %2041, !dbg !1290

1433:                                             ; preds = %1417, %1411
  %1434 = load ptr, ptr %9, align 8, !dbg !1293
  %1435 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1434, i32 0, i32 5, !dbg !1294
  %1436 = load i64, ptr %1435, align 8, !dbg !1295
  %1437 = add i64 %1436, 1, !dbg !1295
  store i64 %1437, ptr %1435, align 8, !dbg !1295
  %1438 = load ptr, ptr %4, align 8, !dbg !1296
  %1439 = getelementptr inbounds %struct.jsonsl_st, ptr %1438, i32 0, i32 0, !dbg !1296
  %1440 = load i32, ptr %1439, align 8, !dbg !1296
  %1441 = zext i32 %1440 to i64, !dbg !1296
  %1442 = load i64, ptr %8, align 8, !dbg !1296
  %1443 = sub i64 %1442, 1, !dbg !1296
  %1444 = icmp uge i64 %1441, %1443, !dbg !1296
  br i1 %1444, label %1445, label %1453, !dbg !1298

1445:                                             ; preds = %1433
  %1446 = load ptr, ptr %4, align 8, !dbg !1299
  %1447 = getelementptr inbounds %struct.jsonsl_st, ptr %1446, i32 0, i32 8, !dbg !1299
  %1448 = load ptr, ptr %1447, align 8, !dbg !1299
  %1449 = load ptr, ptr %4, align 8, !dbg !1299
  %1450 = load ptr, ptr %9, align 8, !dbg !1299
  %1451 = load ptr, ptr %7, align 8, !dbg !1299
  %1452 = call i32 %1448(ptr noundef %1449, i32 noundef 11, ptr noundef %1450, ptr noundef %1451), !dbg !1299
  br label %2041, !dbg !1299

1453:                                             ; preds = %1433
  %1454 = load ptr, ptr %4, align 8, !dbg !1298
  %1455 = getelementptr inbounds %struct.jsonsl_st, ptr %1454, i32 0, i32 27, !dbg !1298
  %1456 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1455, i64 0, i64 0, !dbg !1298
  %1457 = load ptr, ptr %4, align 8, !dbg !1298
  %1458 = getelementptr inbounds %struct.jsonsl_st, ptr %1457, i32 0, i32 0, !dbg !1298
  %1459 = load i32, ptr %1458, align 8, !dbg !1298
  %1460 = add i32 %1459, 1, !dbg !1298
  store i32 %1460, ptr %1458, align 8, !dbg !1298
  %1461 = zext i32 %1460 to i64, !dbg !1298
  %1462 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1456, i64 %1461, !dbg !1298
  store ptr %1462, ptr %9, align 8, !dbg !1298
  %1463 = load ptr, ptr %4, align 8, !dbg !1298
  %1464 = getelementptr inbounds %struct.jsonsl_st, ptr %1463, i32 0, i32 27, !dbg !1298
  %1465 = load ptr, ptr %4, align 8, !dbg !1298
  %1466 = getelementptr inbounds %struct.jsonsl_st, ptr %1465, i32 0, i32 0, !dbg !1298
  %1467 = load i32, ptr %1466, align 8, !dbg !1298
  %1468 = sub i32 %1467, 1, !dbg !1298
  %1469 = zext i32 %1468 to i64, !dbg !1298
  %1470 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1464, i64 0, i64 %1469, !dbg !1298
  %1471 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1470, i32 0, i32 6, !dbg !1298
  %1472 = load i32, ptr %1471, align 8, !dbg !1298
  %1473 = load ptr, ptr %9, align 8, !dbg !1298
  %1474 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1473, i32 0, i32 6, !dbg !1298
  store i32 %1472, ptr %1474, align 8, !dbg !1298
  %1475 = load ptr, ptr %4, align 8, !dbg !1298
  %1476 = getelementptr inbounds %struct.jsonsl_st, ptr %1475, i32 0, i32 2, !dbg !1298
  %1477 = load i64, ptr %1476, align 8, !dbg !1298
  %1478 = load ptr, ptr %9, align 8, !dbg !1298
  %1479 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1478, i32 0, i32 2, !dbg !1298
  store i64 %1477, ptr %1479, align 8, !dbg !1298
  %1480 = load ptr, ptr %7, align 8, !dbg !1301
  %1481 = load i8, ptr %1480, align 1, !dbg !1301
  %1482 = zext i8 %1481 to i32, !dbg !1301
  %1483 = load ptr, ptr %9, align 8, !dbg !1302
  %1484 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1483, i32 0, i32 0, !dbg !1303
  store i32 %1482, ptr %1484, align 8, !dbg !1304
  %1485 = load ptr, ptr %9, align 8, !dbg !1305
  %1486 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1485, i32 0, i32 5, !dbg !1306
  store i64 0, ptr %1486, align 8, !dbg !1307
  %1487 = load ptr, ptr %4, align 8, !dbg !1308
  %1488 = getelementptr inbounds %struct.jsonsl_st, ptr %1487, i32 0, i32 22, !dbg !1309
  store i32 1, ptr %1488, align 8, !dbg !1310
  %1489 = load ptr, ptr %7, align 8, !dbg !1311
  %1490 = load i8, ptr %1489, align 1, !dbg !1311
  %1491 = zext i8 %1490 to i32, !dbg !1311
  %1492 = icmp eq i32 %1491, 123, !dbg !1313
  br i1 %1492, label %1493, label %1496, !dbg !1314

1493:                                             ; preds = %1453
  %1494 = load ptr, ptr %4, align 8, !dbg !1315
  %1495 = getelementptr inbounds %struct.jsonsl_st, ptr %1494, i32 0, i32 20, !dbg !1317
  store i8 34, ptr %1495, align 4, !dbg !1318
  br label %1496, !dbg !1319

1496:                                             ; preds = %1493, %1453
  %1497 = load ptr, ptr %7, align 8, !dbg !1320
  %1498 = load i8, ptr %1497, align 1, !dbg !1320
  %1499 = zext i8 %1498 to i32, !dbg !1320
  %1500 = icmp eq i32 %1499, 123, !dbg !1322
  br i1 %1500, label %1501, label %1552, !dbg !1323

1501:                                             ; preds = %1496
  %1502 = load ptr, ptr %4, align 8, !dbg !1324
  %1503 = getelementptr inbounds %struct.jsonsl_st, ptr %1502, i32 0, i32 10, !dbg !1324
  %1504 = load i32, ptr %1503, align 4, !dbg !1324
  %1505 = icmp ne i32 %1504, 0, !dbg !1324
  br i1 %1505, label %1506, label %1551, !dbg !1324

1506:                                             ; preds = %1501
  %1507 = load ptr, ptr %4, align 8, !dbg !1324
  %1508 = getelementptr inbounds %struct.jsonsl_st, ptr %1507, i32 0, i32 7, !dbg !1324
  %1509 = load i32, ptr %1508, align 8, !dbg !1324
  %1510 = load ptr, ptr %9, align 8, !dbg !1324
  %1511 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1510, i32 0, i32 4, !dbg !1324
  %1512 = load i32, ptr %1511, align 8, !dbg !1324
  %1513 = icmp ugt i32 %1509, %1512, !dbg !1324
  br i1 %1513, label %1514, label %1551, !dbg !1324

1514:                                             ; preds = %1506
  %1515 = load ptr, ptr %9, align 8, !dbg !1324
  %1516 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1515, i32 0, i32 6, !dbg !1324
  %1517 = load i32, ptr %1516, align 8, !dbg !1324
  %1518 = icmp eq i32 %1517, 0, !dbg !1324
  br i1 %1518, label %1519, label %1551, !dbg !1327

1519:                                             ; preds = %1514
  %1520 = load ptr, ptr %4, align 8, !dbg !1328
  %1521 = getelementptr inbounds %struct.jsonsl_st, ptr %1520, i32 0, i32 4, !dbg !1328
  %1522 = load ptr, ptr %1521, align 8, !dbg !1328
  %1523 = icmp ne ptr %1522, null, !dbg !1328
  br i1 %1523, label %1524, label %1531, !dbg !1331

1524:                                             ; preds = %1519
  %1525 = load ptr, ptr %4, align 8, !dbg !1332
  %1526 = getelementptr inbounds %struct.jsonsl_st, ptr %1525, i32 0, i32 4, !dbg !1332
  %1527 = load ptr, ptr %1526, align 8, !dbg !1332
  %1528 = load ptr, ptr %4, align 8, !dbg !1332
  %1529 = load ptr, ptr %9, align 8, !dbg !1332
  %1530 = load ptr, ptr %7, align 8, !dbg !1332
  call void %1527(ptr noundef %1528, i32 noundef 43, ptr noundef %1529, ptr noundef %1530), !dbg !1332
  br label %1544, !dbg !1332

1531:                                             ; preds = %1519
  %1532 = load ptr, ptr %4, align 8, !dbg !1334
  %1533 = getelementptr inbounds %struct.jsonsl_st, ptr %1532, i32 0, i32 6, !dbg !1334
  %1534 = load ptr, ptr %1533, align 8, !dbg !1334
  %1535 = icmp ne ptr %1534, null, !dbg !1334
  br i1 %1535, label %1536, label %1543, !dbg !1328

1536:                                             ; preds = %1531
  %1537 = load ptr, ptr %4, align 8, !dbg !1336
  %1538 = getelementptr inbounds %struct.jsonsl_st, ptr %1537, i32 0, i32 6, !dbg !1336
  %1539 = load ptr, ptr %1538, align 8, !dbg !1336
  %1540 = load ptr, ptr %4, align 8, !dbg !1336
  %1541 = load ptr, ptr %9, align 8, !dbg !1336
  %1542 = load ptr, ptr %7, align 8, !dbg !1336
  call void %1539(ptr noundef %1540, i32 noundef 43, ptr noundef %1541, ptr noundef %1542), !dbg !1336
  br label %1543, !dbg !1336

1543:                                             ; preds = %1536, %1531
  br label %1544

1544:                                             ; preds = %1543, %1524
  %1545 = load ptr, ptr %4, align 8, !dbg !1338
  %1546 = getelementptr inbounds %struct.jsonsl_st, ptr %1545, i32 0, i32 1, !dbg !1338
  %1547 = load i32, ptr %1546, align 4, !dbg !1338
  %1548 = icmp ne i32 %1547, 0, !dbg !1338
  br i1 %1548, label %1549, label %1550, !dbg !1331

1549:                                             ; preds = %1544
  br label %2041, !dbg !1340

1550:                                             ; preds = %1544
  br label %1551, !dbg !1331

1551:                                             ; preds = %1550, %1514, %1506, %1501
  br label %1603, !dbg !1342

1552:                                             ; preds = %1496
  %1553 = load ptr, ptr %4, align 8, !dbg !1343
  %1554 = getelementptr inbounds %struct.jsonsl_st, ptr %1553, i32 0, i32 11, !dbg !1343
  %1555 = load i32, ptr %1554, align 8, !dbg !1343
  %1556 = icmp ne i32 %1555, 0, !dbg !1343
  br i1 %1556, label %1557, label %1602, !dbg !1343

1557:                                             ; preds = %1552
  %1558 = load ptr, ptr %4, align 8, !dbg !1343
  %1559 = getelementptr inbounds %struct.jsonsl_st, ptr %1558, i32 0, i32 7, !dbg !1343
  %1560 = load i32, ptr %1559, align 8, !dbg !1343
  %1561 = load ptr, ptr %9, align 8, !dbg !1343
  %1562 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1561, i32 0, i32 4, !dbg !1343
  %1563 = load i32, ptr %1562, align 8, !dbg !1343
  %1564 = icmp ugt i32 %1560, %1563, !dbg !1343
  br i1 %1564, label %1565, label %1602, !dbg !1343

1565:                                             ; preds = %1557
  %1566 = load ptr, ptr %9, align 8, !dbg !1343
  %1567 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1566, i32 0, i32 6, !dbg !1343
  %1568 = load i32, ptr %1567, align 8, !dbg !1343
  %1569 = icmp eq i32 %1568, 0, !dbg !1343
  br i1 %1569, label %1570, label %1602, !dbg !1346

1570:                                             ; preds = %1565
  %1571 = load ptr, ptr %4, align 8, !dbg !1347
  %1572 = getelementptr inbounds %struct.jsonsl_st, ptr %1571, i32 0, i32 4, !dbg !1347
  %1573 = load ptr, ptr %1572, align 8, !dbg !1347
  %1574 = icmp ne ptr %1573, null, !dbg !1347
  br i1 %1574, label %1575, label %1582, !dbg !1350

1575:                                             ; preds = %1570
  %1576 = load ptr, ptr %4, align 8, !dbg !1351
  %1577 = getelementptr inbounds %struct.jsonsl_st, ptr %1576, i32 0, i32 4, !dbg !1351
  %1578 = load ptr, ptr %1577, align 8, !dbg !1351
  %1579 = load ptr, ptr %4, align 8, !dbg !1351
  %1580 = load ptr, ptr %9, align 8, !dbg !1351
  %1581 = load ptr, ptr %7, align 8, !dbg !1351
  call void %1578(ptr noundef %1579, i32 noundef 43, ptr noundef %1580, ptr noundef %1581), !dbg !1351
  br label %1595, !dbg !1351

1582:                                             ; preds = %1570
  %1583 = load ptr, ptr %4, align 8, !dbg !1353
  %1584 = getelementptr inbounds %struct.jsonsl_st, ptr %1583, i32 0, i32 6, !dbg !1353
  %1585 = load ptr, ptr %1584, align 8, !dbg !1353
  %1586 = icmp ne ptr %1585, null, !dbg !1353
  br i1 %1586, label %1587, label %1594, !dbg !1347

1587:                                             ; preds = %1582
  %1588 = load ptr, ptr %4, align 8, !dbg !1355
  %1589 = getelementptr inbounds %struct.jsonsl_st, ptr %1588, i32 0, i32 6, !dbg !1355
  %1590 = load ptr, ptr %1589, align 8, !dbg !1355
  %1591 = load ptr, ptr %4, align 8, !dbg !1355
  %1592 = load ptr, ptr %9, align 8, !dbg !1355
  %1593 = load ptr, ptr %7, align 8, !dbg !1355
  call void %1590(ptr noundef %1591, i32 noundef 43, ptr noundef %1592, ptr noundef %1593), !dbg !1355
  br label %1594, !dbg !1355

1594:                                             ; preds = %1587, %1582
  br label %1595

1595:                                             ; preds = %1594, %1575
  %1596 = load ptr, ptr %4, align 8, !dbg !1357
  %1597 = getelementptr inbounds %struct.jsonsl_st, ptr %1596, i32 0, i32 1, !dbg !1357
  %1598 = load i32, ptr %1597, align 4, !dbg !1357
  %1599 = icmp ne i32 %1598, 0, !dbg !1357
  br i1 %1599, label %1600, label %1601, !dbg !1350

1600:                                             ; preds = %1595
  br label %2041, !dbg !1359

1601:                                             ; preds = %1595
  br label %1602, !dbg !1350

1602:                                             ; preds = %1601, %1565, %1557, %1552
  br label %1603

1603:                                             ; preds = %1602, %1551
  %1604 = load ptr, ptr %4, align 8, !dbg !1361
  %1605 = getelementptr inbounds %struct.jsonsl_st, ptr %1604, i32 0, i32 21, !dbg !1362
  store i8 0, ptr %1605, align 1, !dbg !1363
  br label %2032, !dbg !1364

1606:                                             ; preds = %1328, %1328
  %1607 = load ptr, ptr %4, align 8, !dbg !1365
  %1608 = getelementptr inbounds %struct.jsonsl_st, ptr %1607, i32 0, i32 21, !dbg !1367
  %1609 = load i8, ptr %1608, align 1, !dbg !1367
  %1610 = sext i8 %1609 to i32, !dbg !1365
  %1611 = icmp eq i32 %1610, 44, !dbg !1368
  br i1 %1611, label %1612, label %1629, !dbg !1369

1612:                                             ; preds = %1606
  %1613 = load ptr, ptr %4, align 8, !dbg !1370
  %1614 = getelementptr inbounds %struct.jsonsl_st, ptr %1613, i32 0, i32 17, !dbg !1371
  %1615 = getelementptr inbounds %struct.anon, ptr %1614, i32 0, i32 0, !dbg !1372
  %1616 = load i32, ptr %1615, align 8, !dbg !1372
  %1617 = icmp eq i32 %1616, 0, !dbg !1373
  br i1 %1617, label %1618, label %1629, !dbg !1374

1618:                                             ; preds = %1612
  %1619 = load ptr, ptr %4, align 8, !dbg !1375
  %1620 = getelementptr inbounds %struct.jsonsl_st, ptr %1619, i32 0, i32 8, !dbg !1375
  %1621 = load ptr, ptr %1620, align 8, !dbg !1375
  %1622 = load ptr, ptr %4, align 8, !dbg !1375
  %1623 = load ptr, ptr %9, align 8, !dbg !1375
  %1624 = load ptr, ptr %7, align 8, !dbg !1375
  %1625 = call i32 %1621(ptr noundef %1622, i32 noundef 17, ptr noundef %1623, ptr noundef %1624), !dbg !1375
  %1626 = icmp ne i32 %1625, 0, !dbg !1375
  br i1 %1626, label %1627, label %1628, !dbg !1378

1627:                                             ; preds = %1618
  br label %32, !dbg !1379

1628:                                             ; preds = %1618
  br label %2041, !dbg !1378

1629:                                             ; preds = %1612, %1606
  %1630 = load ptr, ptr %4, align 8, !dbg !1381
  %1631 = getelementptr inbounds %struct.jsonsl_st, ptr %1630, i32 0, i32 22, !dbg !1382
  store i32 0, ptr %1631, align 8, !dbg !1383
  %1632 = load ptr, ptr %4, align 8, !dbg !1384
  %1633 = getelementptr inbounds %struct.jsonsl_st, ptr %1632, i32 0, i32 0, !dbg !1385
  %1634 = load i32, ptr %1633, align 8, !dbg !1386
  %1635 = add i32 %1634, -1, !dbg !1386
  store i32 %1635, ptr %1633, align 8, !dbg !1386
  %1636 = load ptr, ptr %4, align 8, !dbg !1387
  %1637 = getelementptr inbounds %struct.jsonsl_st, ptr %1636, i32 0, i32 20, !dbg !1388
  store i8 44, ptr %1637, align 4, !dbg !1389
  %1638 = load ptr, ptr %4, align 8, !dbg !1390
  %1639 = getelementptr inbounds %struct.jsonsl_st, ptr %1638, i32 0, i32 21, !dbg !1391
  store i8 0, ptr %1639, align 1, !dbg !1392
  %1640 = load ptr, ptr %7, align 8, !dbg !1393
  %1641 = load i8, ptr %1640, align 1, !dbg !1393
  %1642 = zext i8 %1641 to i32, !dbg !1393
  %1643 = icmp eq i32 %1642, 93, !dbg !1395
  br i1 %1643, label %1644, label %1711, !dbg !1396

1644:                                             ; preds = %1629
  %1645 = load ptr, ptr %9, align 8, !dbg !1397
  %1646 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1645, i32 0, i32 0, !dbg !1400
  %1647 = load i32, ptr %1646, align 8, !dbg !1400
  %1648 = icmp ne i32 %1647, 91, !dbg !1401
  br i1 %1648, label %1649, label %1660, !dbg !1402

1649:                                             ; preds = %1644
  %1650 = load ptr, ptr %4, align 8, !dbg !1403
  %1651 = getelementptr inbounds %struct.jsonsl_st, ptr %1650, i32 0, i32 8, !dbg !1403
  %1652 = load ptr, ptr %1651, align 8, !dbg !1403
  %1653 = load ptr, ptr %4, align 8, !dbg !1403
  %1654 = load ptr, ptr %9, align 8, !dbg !1403
  %1655 = load ptr, ptr %7, align 8, !dbg !1403
  %1656 = call i32 %1652(ptr noundef %1653, i32 noundef 12, ptr noundef %1654, ptr noundef %1655), !dbg !1403
  %1657 = icmp ne i32 %1656, 0, !dbg !1403
  br i1 %1657, label %1658, label %1659, !dbg !1406

1658:                                             ; preds = %1649
  br label %32, !dbg !1407

1659:                                             ; preds = %1649
  br label %2041, !dbg !1406

1660:                                             ; preds = %1644
  %1661 = load ptr, ptr %4, align 8, !dbg !1409
  %1662 = getelementptr inbounds %struct.jsonsl_st, ptr %1661, i32 0, i32 11, !dbg !1409
  %1663 = load i32, ptr %1662, align 8, !dbg !1409
  %1664 = icmp ne i32 %1663, 0, !dbg !1409
  br i1 %1664, label %1665, label %1710, !dbg !1409

1665:                                             ; preds = %1660
  %1666 = load ptr, ptr %4, align 8, !dbg !1409
  %1667 = getelementptr inbounds %struct.jsonsl_st, ptr %1666, i32 0, i32 7, !dbg !1409
  %1668 = load i32, ptr %1667, align 8, !dbg !1409
  %1669 = load ptr, ptr %9, align 8, !dbg !1409
  %1670 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1669, i32 0, i32 4, !dbg !1409
  %1671 = load i32, ptr %1670, align 8, !dbg !1409
  %1672 = icmp ugt i32 %1668, %1671, !dbg !1409
  br i1 %1672, label %1673, label %1710, !dbg !1409

1673:                                             ; preds = %1665
  %1674 = load ptr, ptr %9, align 8, !dbg !1409
  %1675 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1674, i32 0, i32 6, !dbg !1409
  %1676 = load i32, ptr %1675, align 8, !dbg !1409
  %1677 = icmp eq i32 %1676, 0, !dbg !1409
  br i1 %1677, label %1678, label %1710, !dbg !1411

1678:                                             ; preds = %1673
  %1679 = load ptr, ptr %4, align 8, !dbg !1412
  %1680 = getelementptr inbounds %struct.jsonsl_st, ptr %1679, i32 0, i32 5, !dbg !1412
  %1681 = load ptr, ptr %1680, align 8, !dbg !1412
  %1682 = icmp ne ptr %1681, null, !dbg !1412
  br i1 %1682, label %1683, label %1690, !dbg !1415

1683:                                             ; preds = %1678
  %1684 = load ptr, ptr %4, align 8, !dbg !1416
  %1685 = getelementptr inbounds %struct.jsonsl_st, ptr %1684, i32 0, i32 5, !dbg !1416
  %1686 = load ptr, ptr %1685, align 8, !dbg !1416
  %1687 = load ptr, ptr %4, align 8, !dbg !1416
  %1688 = load ptr, ptr %9, align 8, !dbg !1416
  %1689 = load ptr, ptr %7, align 8, !dbg !1416
  call void %1686(ptr noundef %1687, i32 noundef 45, ptr noundef %1688, ptr noundef %1689), !dbg !1416
  br label %1703, !dbg !1416

1690:                                             ; preds = %1678
  %1691 = load ptr, ptr %4, align 8, !dbg !1418
  %1692 = getelementptr inbounds %struct.jsonsl_st, ptr %1691, i32 0, i32 6, !dbg !1418
  %1693 = load ptr, ptr %1692, align 8, !dbg !1418
  %1694 = icmp ne ptr %1693, null, !dbg !1418
  br i1 %1694, label %1695, label %1702, !dbg !1412

1695:                                             ; preds = %1690
  %1696 = load ptr, ptr %4, align 8, !dbg !1420
  %1697 = getelementptr inbounds %struct.jsonsl_st, ptr %1696, i32 0, i32 6, !dbg !1420
  %1698 = load ptr, ptr %1697, align 8, !dbg !1420
  %1699 = load ptr, ptr %4, align 8, !dbg !1420
  %1700 = load ptr, ptr %9, align 8, !dbg !1420
  %1701 = load ptr, ptr %7, align 8, !dbg !1420
  call void %1698(ptr noundef %1699, i32 noundef 45, ptr noundef %1700, ptr noundef %1701), !dbg !1420
  br label %1702, !dbg !1420

1702:                                             ; preds = %1695, %1690
  br label %1703

1703:                                             ; preds = %1702, %1683
  %1704 = load ptr, ptr %4, align 8, !dbg !1422
  %1705 = getelementptr inbounds %struct.jsonsl_st, ptr %1704, i32 0, i32 1, !dbg !1422
  %1706 = load i32, ptr %1705, align 4, !dbg !1422
  %1707 = icmp ne i32 %1706, 0, !dbg !1422
  br i1 %1707, label %1708, label %1709, !dbg !1415

1708:                                             ; preds = %1703
  br label %2041, !dbg !1424

1709:                                             ; preds = %1703
  br label %1710, !dbg !1415

1710:                                             ; preds = %1709, %1673, %1665, %1660
  br label %1801, !dbg !1426

1711:                                             ; preds = %1629
  %1712 = load ptr, ptr %9, align 8, !dbg !1427
  %1713 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1712, i32 0, i32 0, !dbg !1430
  %1714 = load i32, ptr %1713, align 8, !dbg !1430
  %1715 = icmp ne i32 %1714, 123, !dbg !1431
  br i1 %1715, label %1716, label %1727, !dbg !1432

1716:                                             ; preds = %1711
  %1717 = load ptr, ptr %4, align 8, !dbg !1433
  %1718 = getelementptr inbounds %struct.jsonsl_st, ptr %1717, i32 0, i32 8, !dbg !1433
  %1719 = load ptr, ptr %1718, align 8, !dbg !1433
  %1720 = load ptr, ptr %4, align 8, !dbg !1433
  %1721 = load ptr, ptr %9, align 8, !dbg !1433
  %1722 = load ptr, ptr %7, align 8, !dbg !1433
  %1723 = call i32 %1719(ptr noundef %1720, i32 noundef 12, ptr noundef %1721, ptr noundef %1722), !dbg !1433
  %1724 = icmp ne i32 %1723, 0, !dbg !1433
  br i1 %1724, label %1725, label %1726, !dbg !1436

1725:                                             ; preds = %1716
  br label %32, !dbg !1437

1726:                                             ; preds = %1716
  br label %2041, !dbg !1436

1727:                                             ; preds = %1711
  %1728 = load ptr, ptr %9, align 8, !dbg !1439
  %1729 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1728, i32 0, i32 5, !dbg !1441
  %1730 = load i64, ptr %1729, align 8, !dbg !1441
  %1731 = icmp ne i64 %1730, 0, !dbg !1439
  br i1 %1731, label %1732, label %1749, !dbg !1442

1732:                                             ; preds = %1727
  %1733 = load ptr, ptr %9, align 8, !dbg !1443
  %1734 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1733, i32 0, i32 5, !dbg !1444
  %1735 = load i64, ptr %1734, align 8, !dbg !1444
  %1736 = urem i64 %1735, 2, !dbg !1445
  %1737 = icmp ne i64 %1736, 0, !dbg !1446
  br i1 %1737, label %1738, label %1749, !dbg !1447

1738:                                             ; preds = %1732
  %1739 = load ptr, ptr %4, align 8, !dbg !1448
  %1740 = getelementptr inbounds %struct.jsonsl_st, ptr %1739, i32 0, i32 8, !dbg !1448
  %1741 = load ptr, ptr %1740, align 8, !dbg !1448
  %1742 = load ptr, ptr %4, align 8, !dbg !1448
  %1743 = load ptr, ptr %9, align 8, !dbg !1448
  %1744 = load ptr, ptr %7, align 8, !dbg !1448
  %1745 = call i32 %1741(ptr noundef %1742, i32 noundef 19, ptr noundef %1743, ptr noundef %1744), !dbg !1448
  %1746 = icmp ne i32 %1745, 0, !dbg !1448
  br i1 %1746, label %1747, label %1748, !dbg !1451

1747:                                             ; preds = %1738
  br label %32, !dbg !1452

1748:                                             ; preds = %1738
  br label %2041, !dbg !1451

1749:                                             ; preds = %1732, %1727
  br label %1750

1750:                                             ; preds = %1749
  %1751 = load ptr, ptr %4, align 8, !dbg !1454
  %1752 = getelementptr inbounds %struct.jsonsl_st, ptr %1751, i32 0, i32 10, !dbg !1454
  %1753 = load i32, ptr %1752, align 4, !dbg !1454
  %1754 = icmp ne i32 %1753, 0, !dbg !1454
  br i1 %1754, label %1755, label %1800, !dbg !1454

1755:                                             ; preds = %1750
  %1756 = load ptr, ptr %4, align 8, !dbg !1454
  %1757 = getelementptr inbounds %struct.jsonsl_st, ptr %1756, i32 0, i32 7, !dbg !1454
  %1758 = load i32, ptr %1757, align 8, !dbg !1454
  %1759 = load ptr, ptr %9, align 8, !dbg !1454
  %1760 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1759, i32 0, i32 4, !dbg !1454
  %1761 = load i32, ptr %1760, align 8, !dbg !1454
  %1762 = icmp ugt i32 %1758, %1761, !dbg !1454
  br i1 %1762, label %1763, label %1800, !dbg !1454

1763:                                             ; preds = %1755
  %1764 = load ptr, ptr %9, align 8, !dbg !1454
  %1765 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1764, i32 0, i32 6, !dbg !1454
  %1766 = load i32, ptr %1765, align 8, !dbg !1454
  %1767 = icmp eq i32 %1766, 0, !dbg !1454
  br i1 %1767, label %1768, label %1800, !dbg !1456

1768:                                             ; preds = %1763
  %1769 = load ptr, ptr %4, align 8, !dbg !1457
  %1770 = getelementptr inbounds %struct.jsonsl_st, ptr %1769, i32 0, i32 5, !dbg !1457
  %1771 = load ptr, ptr %1770, align 8, !dbg !1457
  %1772 = icmp ne ptr %1771, null, !dbg !1457
  br i1 %1772, label %1773, label %1780, !dbg !1460

1773:                                             ; preds = %1768
  %1774 = load ptr, ptr %4, align 8, !dbg !1461
  %1775 = getelementptr inbounds %struct.jsonsl_st, ptr %1774, i32 0, i32 5, !dbg !1461
  %1776 = load ptr, ptr %1775, align 8, !dbg !1461
  %1777 = load ptr, ptr %4, align 8, !dbg !1461
  %1778 = load ptr, ptr %9, align 8, !dbg !1461
  %1779 = load ptr, ptr %7, align 8, !dbg !1461
  call void %1776(ptr noundef %1777, i32 noundef 45, ptr noundef %1778, ptr noundef %1779), !dbg !1461
  br label %1793, !dbg !1461

1780:                                             ; preds = %1768
  %1781 = load ptr, ptr %4, align 8, !dbg !1463
  %1782 = getelementptr inbounds %struct.jsonsl_st, ptr %1781, i32 0, i32 6, !dbg !1463
  %1783 = load ptr, ptr %1782, align 8, !dbg !1463
  %1784 = icmp ne ptr %1783, null, !dbg !1463
  br i1 %1784, label %1785, label %1792, !dbg !1457

1785:                                             ; preds = %1780
  %1786 = load ptr, ptr %4, align 8, !dbg !1465
  %1787 = getelementptr inbounds %struct.jsonsl_st, ptr %1786, i32 0, i32 6, !dbg !1465
  %1788 = load ptr, ptr %1787, align 8, !dbg !1465
  %1789 = load ptr, ptr %4, align 8, !dbg !1465
  %1790 = load ptr, ptr %9, align 8, !dbg !1465
  %1791 = load ptr, ptr %7, align 8, !dbg !1465
  call void %1788(ptr noundef %1789, i32 noundef 45, ptr noundef %1790, ptr noundef %1791), !dbg !1465
  br label %1792, !dbg !1465

1792:                                             ; preds = %1785, %1780
  br label %1793

1793:                                             ; preds = %1792, %1773
  %1794 = load ptr, ptr %4, align 8, !dbg !1467
  %1795 = getelementptr inbounds %struct.jsonsl_st, ptr %1794, i32 0, i32 1, !dbg !1467
  %1796 = load i32, ptr %1795, align 4, !dbg !1467
  %1797 = icmp ne i32 %1796, 0, !dbg !1467
  br i1 %1797, label %1798, label %1799, !dbg !1460

1798:                                             ; preds = %1793
  br label %2041, !dbg !1469

1799:                                             ; preds = %1793
  br label %1800, !dbg !1460

1800:                                             ; preds = %1799, %1763, %1755, %1750
  br label %1801

1801:                                             ; preds = %1800, %1710
  %1802 = load ptr, ptr %4, align 8, !dbg !1471
  %1803 = getelementptr inbounds %struct.jsonsl_st, ptr %1802, i32 0, i32 27, !dbg !1472
  %1804 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1803, i64 0, i64 0, !dbg !1471
  %1805 = load ptr, ptr %4, align 8, !dbg !1473
  %1806 = getelementptr inbounds %struct.jsonsl_st, ptr %1805, i32 0, i32 0, !dbg !1474
  %1807 = load i32, ptr %1806, align 8, !dbg !1474
  %1808 = zext i32 %1807 to i64, !dbg !1475
  %1809 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1804, i64 %1808, !dbg !1475
  store ptr %1809, ptr %9, align 8, !dbg !1476
  %1810 = load ptr, ptr %4, align 8, !dbg !1477
  %1811 = getelementptr inbounds %struct.jsonsl_st, ptr %1810, i32 0, i32 2, !dbg !1478
  %1812 = load i64, ptr %1811, align 8, !dbg !1478
  %1813 = load ptr, ptr %9, align 8, !dbg !1479
  %1814 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1813, i32 0, i32 3, !dbg !1480
  store i64 %1812, ptr %1814, align 8, !dbg !1481
  br label %2032, !dbg !1482

1815:                                             ; preds = %1328
  br label %1816, !dbg !1482

1816:                                             ; preds = %1815, %769
  call void @llvm.dbg.label(metadata !1483), !dbg !1484
  %1817 = load ptr, ptr %9, align 8, !dbg !1485
  %1818 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1817, i32 0, i32 0, !dbg !1487
  %1819 = load i32, ptr %1818, align 8, !dbg !1487
  %1820 = icmp ne i32 %1819, 94, !dbg !1488
  br i1 %1820, label %1821, label %2031, !dbg !1489

1821:                                             ; preds = %1816
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1490, metadata !DIExpression()), !dbg !1492
  %1822 = load ptr, ptr %7, align 8, !dbg !1493
  %1823 = load i8, ptr %1822, align 1, !dbg !1493
  %1824 = zext i8 %1823 to i32, !dbg !1493
  %1825 = call i32 @extract_special(i32 noundef %1824), !dbg !1494
  store i32 %1825, ptr %11, align 4, !dbg !1492
  %1826 = load i32, ptr %11, align 4, !dbg !1495
  %1827 = icmp ne i32 %1826, 0, !dbg !1495
  br i1 %1827, label %1871, label %1828, !dbg !1497

1828:                                             ; preds = %1821
  %1829 = load ptr, ptr %7, align 8, !dbg !1498
  %1830 = load i8, ptr %1829, align 1, !dbg !1498
  %1831 = zext i8 %1830 to i32, !dbg !1498
  %1832 = icmp eq i32 %1831, 0, !dbg !1501
  br i1 %1832, label %1833, label %1844, !dbg !1502

1833:                                             ; preds = %1828
  %1834 = load ptr, ptr %4, align 8, !dbg !1503
  %1835 = getelementptr inbounds %struct.jsonsl_st, ptr %1834, i32 0, i32 8, !dbg !1503
  %1836 = load ptr, ptr %1835, align 8, !dbg !1503
  %1837 = load ptr, ptr %4, align 8, !dbg !1503
  %1838 = load ptr, ptr %9, align 8, !dbg !1503
  %1839 = load ptr, ptr %7, align 8, !dbg !1503
  %1840 = call i32 %1836(ptr noundef %1837, i32 noundef 10, ptr noundef %1838, ptr noundef %1839), !dbg !1503
  %1841 = icmp ne i32 %1840, 0, !dbg !1503
  br i1 %1841, label %1842, label %1843, !dbg !1506

1842:                                             ; preds = %1833
  br label %32, !dbg !1507

1843:                                             ; preds = %1833
  br label %2041, !dbg !1506

1844:                                             ; preds = %1828
  %1845 = load ptr, ptr %7, align 8, !dbg !1509
  %1846 = load i8, ptr %1845, align 1, !dbg !1509
  %1847 = zext i8 %1846 to i32, !dbg !1509
  %1848 = icmp slt i32 %1847, 32, !dbg !1511
  br i1 %1848, label %1849, label %1860, !dbg !1512

1849:                                             ; preds = %1844
  %1850 = load ptr, ptr %4, align 8, !dbg !1513
  %1851 = getelementptr inbounds %struct.jsonsl_st, ptr %1850, i32 0, i32 8, !dbg !1513
  %1852 = load ptr, ptr %1851, align 8, !dbg !1513
  %1853 = load ptr, ptr %4, align 8, !dbg !1513
  %1854 = load ptr, ptr %9, align 8, !dbg !1513
  %1855 = load ptr, ptr %7, align 8, !dbg !1513
  %1856 = call i32 %1852(ptr noundef %1853, i32 noundef 14, ptr noundef %1854, ptr noundef %1855), !dbg !1513
  %1857 = icmp ne i32 %1856, 0, !dbg !1513
  br i1 %1857, label %1858, label %1859, !dbg !1516

1858:                                             ; preds = %1849
  br label %32, !dbg !1517

1859:                                             ; preds = %1849
  br label %2041, !dbg !1516

1860:                                             ; preds = %1844
  %1861 = load ptr, ptr %4, align 8, !dbg !1519
  %1862 = getelementptr inbounds %struct.jsonsl_st, ptr %1861, i32 0, i32 8, !dbg !1519
  %1863 = load ptr, ptr %1862, align 8, !dbg !1519
  %1864 = load ptr, ptr %4, align 8, !dbg !1519
  %1865 = load ptr, ptr %9, align 8, !dbg !1519
  %1866 = load ptr, ptr %7, align 8, !dbg !1519
  %1867 = call i32 %1863(ptr noundef %1864, i32 noundef 2, ptr noundef %1865, ptr noundef %1866), !dbg !1519
  %1868 = icmp ne i32 %1867, 0, !dbg !1519
  br i1 %1868, label %1869, label %1870, !dbg !1522

1869:                                             ; preds = %1860
  br label %32, !dbg !1523

1870:                                             ; preds = %1860
  br label %2041, !dbg !1522

1871:                                             ; preds = %1821
  %1872 = load ptr, ptr %9, align 8, !dbg !1525
  %1873 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1872, i32 0, i32 5, !dbg !1525
  %1874 = load i64, ptr %1873, align 8, !dbg !1525
  %1875 = urem i64 %1874, 2, !dbg !1525
  %1876 = icmp eq i64 %1875, 0, !dbg !1525
  br i1 %1876, label %1877, label %1893, !dbg !1525

1877:                                             ; preds = %1871
  %1878 = load ptr, ptr %9, align 8, !dbg !1525
  %1879 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1878, i32 0, i32 0, !dbg !1525
  %1880 = load i32, ptr %1879, align 8, !dbg !1525
  %1881 = icmp eq i32 %1880, 123, !dbg !1525
  br i1 %1881, label %1882, label %1893, !dbg !1527

1882:                                             ; preds = %1877
  %1883 = load ptr, ptr %4, align 8, !dbg !1528
  %1884 = getelementptr inbounds %struct.jsonsl_st, ptr %1883, i32 0, i32 8, !dbg !1528
  %1885 = load ptr, ptr %1884, align 8, !dbg !1528
  %1886 = load ptr, ptr %4, align 8, !dbg !1528
  %1887 = load ptr, ptr %9, align 8, !dbg !1528
  %1888 = load ptr, ptr %7, align 8, !dbg !1528
  %1889 = call i32 %1885(ptr noundef %1886, i32 noundef 13, ptr noundef %1887, ptr noundef %1888), !dbg !1528
  %1890 = icmp ne i32 %1889, 0, !dbg !1528
  br i1 %1890, label %1891, label %1892, !dbg !1531

1891:                                             ; preds = %1882
  br label %32, !dbg !1532

1892:                                             ; preds = %1882
  br label %2041, !dbg !1531

1893:                                             ; preds = %1877, %1871
  %1894 = load ptr, ptr %9, align 8, !dbg !1534
  %1895 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1894, i32 0, i32 5, !dbg !1535
  %1896 = load i64, ptr %1895, align 8, !dbg !1536
  %1897 = add i64 %1896, 1, !dbg !1536
  store i64 %1897, ptr %1895, align 8, !dbg !1536
  %1898 = load ptr, ptr %4, align 8, !dbg !1537
  %1899 = getelementptr inbounds %struct.jsonsl_st, ptr %1898, i32 0, i32 22, !dbg !1539
  %1900 = load i32, ptr %1899, align 8, !dbg !1539
  %1901 = icmp ne i32 %1900, 0, !dbg !1537
  br i1 %1901, label %1913, label %1902, !dbg !1540

1902:                                             ; preds = %1893
  %1903 = load ptr, ptr %4, align 8, !dbg !1541
  %1904 = getelementptr inbounds %struct.jsonsl_st, ptr %1903, i32 0, i32 8, !dbg !1541
  %1905 = load ptr, ptr %1904, align 8, !dbg !1541
  %1906 = load ptr, ptr %4, align 8, !dbg !1541
  %1907 = load ptr, ptr %9, align 8, !dbg !1541
  %1908 = load ptr, ptr %7, align 8, !dbg !1541
  %1909 = call i32 %1905(ptr noundef %1906, i32 noundef 6, ptr noundef %1907, ptr noundef %1908), !dbg !1541
  %1910 = icmp ne i32 %1909, 0, !dbg !1541
  br i1 %1910, label %1911, label %1912, !dbg !1544

1911:                                             ; preds = %1902
  br label %32, !dbg !1545

1912:                                             ; preds = %1902
  br label %2041, !dbg !1544

1913:                                             ; preds = %1893
  %1914 = load ptr, ptr %4, align 8, !dbg !1547
  %1915 = getelementptr inbounds %struct.jsonsl_st, ptr %1914, i32 0, i32 0, !dbg !1547
  %1916 = load i32, ptr %1915, align 8, !dbg !1547
  %1917 = zext i32 %1916 to i64, !dbg !1547
  %1918 = load i64, ptr %8, align 8, !dbg !1547
  %1919 = sub i64 %1918, 1, !dbg !1547
  %1920 = icmp uge i64 %1917, %1919, !dbg !1547
  br i1 %1920, label %1921, label %1929, !dbg !1549

1921:                                             ; preds = %1913
  %1922 = load ptr, ptr %4, align 8, !dbg !1550
  %1923 = getelementptr inbounds %struct.jsonsl_st, ptr %1922, i32 0, i32 8, !dbg !1550
  %1924 = load ptr, ptr %1923, align 8, !dbg !1550
  %1925 = load ptr, ptr %4, align 8, !dbg !1550
  %1926 = load ptr, ptr %9, align 8, !dbg !1550
  %1927 = load ptr, ptr %7, align 8, !dbg !1550
  %1928 = call i32 %1924(ptr noundef %1925, i32 noundef 11, ptr noundef %1926, ptr noundef %1927), !dbg !1550
  br label %2041, !dbg !1550

1929:                                             ; preds = %1913
  %1930 = load ptr, ptr %4, align 8, !dbg !1549
  %1931 = getelementptr inbounds %struct.jsonsl_st, ptr %1930, i32 0, i32 27, !dbg !1549
  %1932 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1931, i64 0, i64 0, !dbg !1549
  %1933 = load ptr, ptr %4, align 8, !dbg !1549
  %1934 = getelementptr inbounds %struct.jsonsl_st, ptr %1933, i32 0, i32 0, !dbg !1549
  %1935 = load i32, ptr %1934, align 8, !dbg !1549
  %1936 = add i32 %1935, 1, !dbg !1549
  store i32 %1936, ptr %1934, align 8, !dbg !1549
  %1937 = zext i32 %1936 to i64, !dbg !1549
  %1938 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1932, i64 %1937, !dbg !1549
  store ptr %1938, ptr %9, align 8, !dbg !1549
  %1939 = load ptr, ptr %4, align 8, !dbg !1549
  %1940 = getelementptr inbounds %struct.jsonsl_st, ptr %1939, i32 0, i32 27, !dbg !1549
  %1941 = load ptr, ptr %4, align 8, !dbg !1549
  %1942 = getelementptr inbounds %struct.jsonsl_st, ptr %1941, i32 0, i32 0, !dbg !1549
  %1943 = load i32, ptr %1942, align 8, !dbg !1549
  %1944 = sub i32 %1943, 1, !dbg !1549
  %1945 = zext i32 %1944 to i64, !dbg !1549
  %1946 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %1940, i64 0, i64 %1945, !dbg !1549
  %1947 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1946, i32 0, i32 6, !dbg !1549
  %1948 = load i32, ptr %1947, align 8, !dbg !1549
  %1949 = load ptr, ptr %9, align 8, !dbg !1549
  %1950 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1949, i32 0, i32 6, !dbg !1549
  store i32 %1948, ptr %1950, align 8, !dbg !1549
  %1951 = load ptr, ptr %4, align 8, !dbg !1549
  %1952 = getelementptr inbounds %struct.jsonsl_st, ptr %1951, i32 0, i32 2, !dbg !1549
  %1953 = load i64, ptr %1952, align 8, !dbg !1549
  %1954 = load ptr, ptr %9, align 8, !dbg !1549
  %1955 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1954, i32 0, i32 2, !dbg !1549
  store i64 %1953, ptr %1955, align 8, !dbg !1549
  %1956 = load ptr, ptr %9, align 8, !dbg !1552
  %1957 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1956, i32 0, i32 0, !dbg !1553
  store i32 94, ptr %1957, align 8, !dbg !1554
  %1958 = load i32, ptr %11, align 4, !dbg !1555
  %1959 = load ptr, ptr %9, align 8, !dbg !1556
  %1960 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1959, i32 0, i32 1, !dbg !1557
  store i32 %1958, ptr %1960, align 4, !dbg !1558
  %1961 = load ptr, ptr %9, align 8, !dbg !1559
  %1962 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1961, i32 0, i32 7, !dbg !1559
  store i32 1, ptr %1962, align 4, !dbg !1560
  %1963 = load i32, ptr %11, align 4, !dbg !1561
  %1964 = icmp eq i32 %1963, 2, !dbg !1563
  br i1 %1964, label %1965, label %1975, !dbg !1564

1965:                                             ; preds = %1929
  %1966 = load ptr, ptr %7, align 8, !dbg !1565
  %1967 = load i8, ptr %1966, align 1, !dbg !1565
  %1968 = zext i8 %1967 to i32, !dbg !1565
  %1969 = sub nsw i32 %1968, 48, !dbg !1567
  %1970 = sext i32 %1969 to i64, !dbg !1565
  %1971 = load ptr, ptr %9, align 8, !dbg !1568
  %1972 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1971, i32 0, i32 5, !dbg !1569
  store i64 %1970, ptr %1972, align 8, !dbg !1570
  %1973 = load ptr, ptr %4, align 8, !dbg !1571
  %1974 = getelementptr inbounds %struct.jsonsl_st, ptr %1973, i32 0, i32 21, !dbg !1571
  store i8 49, ptr %1974, align 1, !dbg !1572
  br label %1980, !dbg !1573

1975:                                             ; preds = %1929
  %1976 = load ptr, ptr %4, align 8, !dbg !1574
  %1977 = getelementptr inbounds %struct.jsonsl_st, ptr %1976, i32 0, i32 21, !dbg !1574
  store i8 45, ptr %1977, align 1, !dbg !1576
  %1978 = load ptr, ptr %9, align 8, !dbg !1577
  %1979 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1978, i32 0, i32 5, !dbg !1578
  store i64 0, ptr %1979, align 8, !dbg !1579
  br label %1980

1980:                                             ; preds = %1975, %1965
  %1981 = load ptr, ptr %4, align 8, !dbg !1580
  %1982 = getelementptr inbounds %struct.jsonsl_st, ptr %1981, i32 0, i32 9, !dbg !1580
  %1983 = load i32, ptr %1982, align 8, !dbg !1580
  %1984 = icmp ne i32 %1983, 0, !dbg !1580
  br i1 %1984, label %1985, label %2030, !dbg !1580

1985:                                             ; preds = %1980
  %1986 = load ptr, ptr %4, align 8, !dbg !1580
  %1987 = getelementptr inbounds %struct.jsonsl_st, ptr %1986, i32 0, i32 7, !dbg !1580
  %1988 = load i32, ptr %1987, align 8, !dbg !1580
  %1989 = load ptr, ptr %9, align 8, !dbg !1580
  %1990 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1989, i32 0, i32 4, !dbg !1580
  %1991 = load i32, ptr %1990, align 8, !dbg !1580
  %1992 = icmp ugt i32 %1988, %1991, !dbg !1580
  br i1 %1992, label %1993, label %2030, !dbg !1580

1993:                                             ; preds = %1985
  %1994 = load ptr, ptr %9, align 8, !dbg !1580
  %1995 = getelementptr inbounds %struct.jsonsl_state_st, ptr %1994, i32 0, i32 6, !dbg !1580
  %1996 = load i32, ptr %1995, align 8, !dbg !1580
  %1997 = icmp eq i32 %1996, 0, !dbg !1580
  br i1 %1997, label %1998, label %2030, !dbg !1582

1998:                                             ; preds = %1993
  %1999 = load ptr, ptr %4, align 8, !dbg !1583
  %2000 = getelementptr inbounds %struct.jsonsl_st, ptr %1999, i32 0, i32 4, !dbg !1583
  %2001 = load ptr, ptr %2000, align 8, !dbg !1583
  %2002 = icmp ne ptr %2001, null, !dbg !1583
  br i1 %2002, label %2003, label %2010, !dbg !1586

2003:                                             ; preds = %1998
  %2004 = load ptr, ptr %4, align 8, !dbg !1587
  %2005 = getelementptr inbounds %struct.jsonsl_st, ptr %2004, i32 0, i32 4, !dbg !1587
  %2006 = load ptr, ptr %2005, align 8, !dbg !1587
  %2007 = load ptr, ptr %4, align 8, !dbg !1587
  %2008 = load ptr, ptr %9, align 8, !dbg !1587
  %2009 = load ptr, ptr %7, align 8, !dbg !1587
  call void %2006(ptr noundef %2007, i32 noundef 43, ptr noundef %2008, ptr noundef %2009), !dbg !1587
  br label %2023, !dbg !1587

2010:                                             ; preds = %1998
  %2011 = load ptr, ptr %4, align 8, !dbg !1589
  %2012 = getelementptr inbounds %struct.jsonsl_st, ptr %2011, i32 0, i32 6, !dbg !1589
  %2013 = load ptr, ptr %2012, align 8, !dbg !1589
  %2014 = icmp ne ptr %2013, null, !dbg !1589
  br i1 %2014, label %2015, label %2022, !dbg !1583

2015:                                             ; preds = %2010
  %2016 = load ptr, ptr %4, align 8, !dbg !1591
  %2017 = getelementptr inbounds %struct.jsonsl_st, ptr %2016, i32 0, i32 6, !dbg !1591
  %2018 = load ptr, ptr %2017, align 8, !dbg !1591
  %2019 = load ptr, ptr %4, align 8, !dbg !1591
  %2020 = load ptr, ptr %9, align 8, !dbg !1591
  %2021 = load ptr, ptr %7, align 8, !dbg !1591
  call void %2018(ptr noundef %2019, i32 noundef 43, ptr noundef %2020, ptr noundef %2021), !dbg !1591
  br label %2022, !dbg !1591

2022:                                             ; preds = %2015, %2010
  br label %2023

2023:                                             ; preds = %2022, %2003
  %2024 = load ptr, ptr %4, align 8, !dbg !1593
  %2025 = getelementptr inbounds %struct.jsonsl_st, ptr %2024, i32 0, i32 1, !dbg !1593
  %2026 = load i32, ptr %2025, align 4, !dbg !1593
  %2027 = icmp ne i32 %2026, 0, !dbg !1593
  br i1 %2027, label %2028, label %2029, !dbg !1586

2028:                                             ; preds = %2023
  br label %2041, !dbg !1595

2029:                                             ; preds = %2023
  br label %2030, !dbg !1586

2030:                                             ; preds = %2029, %1993, %1985, %1980
  br label %2031, !dbg !1597

2031:                                             ; preds = %2030, %1816
  br label %2032, !dbg !1598

2032:                                             ; preds = %2031, %1801, %1603, %1390, %1352, %1319, %1273, %1170, %910, %838, %762, %754, %503, %374, %350, %326, %306, %245, %126
  %2033 = load i64, ptr %6, align 8, !dbg !1599
  %2034 = add i64 %2033, -1, !dbg !1599
  store i64 %2034, ptr %6, align 8, !dbg !1599
  %2035 = load ptr, ptr %4, align 8, !dbg !1600
  %2036 = getelementptr inbounds %struct.jsonsl_st, ptr %2035, i32 0, i32 2, !dbg !1601
  %2037 = load i64, ptr %2036, align 8, !dbg !1602
  %2038 = add i64 %2037, 1, !dbg !1602
  store i64 %2038, ptr %2036, align 8, !dbg !1602
  %2039 = load ptr, ptr %7, align 8, !dbg !1603
  %2040 = getelementptr inbounds i8, ptr %2039, i32 1, !dbg !1603
  store ptr %2040, ptr %7, align 8, !dbg !1603
  br label %28, !dbg !1604, !llvm.loop !1605

2041:                                             ; preds = %62, %116, %123, %131, %154, %173, %202, %243, %273, %325, %349, %373, %394, %435, %467, %499, %546, %568, %594, %616, %640, %662, %724, %836, %908, %954, %967, %1051, %1070, %1083, %1167, %1183, %1271, %1284, %1295, %1318, %1351, %1378, %1410, %1432, %1445, %1549, %1600, %1628, %1659, %1708, %1726, %1748, %1798, %1843, %1859, %1870, %1892, %1912, %1921, %2028, %28
  ret void, !dbg !1607
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_allowed_escape(i32 noundef %0) #0 !dbg !1608 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1611, metadata !DIExpression()), !dbg !1612
  %3 = load i32, ptr %2, align 4, !dbg !1613
  %4 = and i32 %3, 255, !dbg !1614
  %5 = zext i32 %4 to i64, !dbg !1615
  %6 = getelementptr inbounds [256 x i32], ptr @Allowed_Escapes, i64 0, i64 %5, !dbg !1615
  %7 = load i32, ptr %6, align 4, !dbg !1615
  ret i32 %7, !dbg !1616
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__str_fastparse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1617 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1621, metadata !DIExpression()), !dbg !1622
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1623, metadata !DIExpression()), !dbg !1624
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1625, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1627, metadata !DIExpression()), !dbg !1628
  %10 = load ptr, ptr %6, align 8, !dbg !1629
  %11 = load ptr, ptr %10, align 8, !dbg !1630
  store ptr %11, ptr %8, align 8, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1631, metadata !DIExpression()), !dbg !1632
  %12 = load ptr, ptr %8, align 8, !dbg !1633
  %13 = load ptr, ptr %7, align 8, !dbg !1635
  %14 = load i64, ptr %13, align 8, !dbg !1636
  %15 = getelementptr inbounds i8, ptr %12, i64 %14, !dbg !1637
  store ptr %15, ptr %9, align 8, !dbg !1638
  br label %16, !dbg !1639

16:                                               ; preds = %50, %3
  %17 = load ptr, ptr %8, align 8, !dbg !1640
  %18 = load ptr, ptr %9, align 8, !dbg !1642
  %19 = icmp ne ptr %17, %18, !dbg !1643
  br i1 %19, label %20, label %53, !dbg !1644

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 8, !dbg !1645
  %22 = load i8, ptr %21, align 1, !dbg !1648
  %23 = zext i8 %22 to i32, !dbg !1648
  %24 = call i32 @is_simple_char(i32 noundef %23), !dbg !1649
  %25 = icmp ne i32 %24, 0, !dbg !1649
  br i1 %25, label %26, label %27, !dbg !1650

26:                                               ; preds = %20
  br label %49, !dbg !1651

27:                                               ; preds = %20
  %28 = load ptr, ptr %8, align 8, !dbg !1653
  %29 = load ptr, ptr %6, align 8, !dbg !1655
  %30 = load ptr, ptr %29, align 8, !dbg !1656
  %31 = ptrtoint ptr %28 to i64, !dbg !1657
  %32 = ptrtoint ptr %30 to i64, !dbg !1657
  %33 = sub i64 %31, %32, !dbg !1657
  %34 = load ptr, ptr %5, align 8, !dbg !1658
  %35 = getelementptr inbounds %struct.jsonsl_st, ptr %34, i32 0, i32 2, !dbg !1659
  %36 = load i64, ptr %35, align 8, !dbg !1660
  %37 = add i64 %36, %33, !dbg !1660
  store i64 %37, ptr %35, align 8, !dbg !1660
  %38 = load ptr, ptr %8, align 8, !dbg !1661
  %39 = load ptr, ptr %6, align 8, !dbg !1662
  %40 = load ptr, ptr %39, align 8, !dbg !1663
  %41 = ptrtoint ptr %38 to i64, !dbg !1664
  %42 = ptrtoint ptr %40 to i64, !dbg !1664
  %43 = sub i64 %41, %42, !dbg !1664
  %44 = load ptr, ptr %7, align 8, !dbg !1665
  %45 = load i64, ptr %44, align 8, !dbg !1666
  %46 = sub i64 %45, %43, !dbg !1666
  store i64 %46, ptr %44, align 8, !dbg !1666
  %47 = load ptr, ptr %8, align 8, !dbg !1667
  %48 = load ptr, ptr %6, align 8, !dbg !1668
  store ptr %47, ptr %48, align 8, !dbg !1669
  store i32 0, ptr %4, align 4, !dbg !1670
  br label %64, !dbg !1670

49:                                               ; preds = %26
  br label %50, !dbg !1671

50:                                               ; preds = %49
  %51 = load ptr, ptr %8, align 8, !dbg !1672
  %52 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !1672
  store ptr %52, ptr %8, align 8, !dbg !1672
  br label %16, !dbg !1673, !llvm.loop !1674

53:                                               ; preds = %16
  %54 = load ptr, ptr %8, align 8, !dbg !1676
  %55 = load ptr, ptr %6, align 8, !dbg !1677
  %56 = load ptr, ptr %55, align 8, !dbg !1678
  %57 = ptrtoint ptr %54 to i64, !dbg !1679
  %58 = ptrtoint ptr %56 to i64, !dbg !1679
  %59 = sub i64 %57, %58, !dbg !1679
  %60 = load ptr, ptr %5, align 8, !dbg !1680
  %61 = getelementptr inbounds %struct.jsonsl_st, ptr %60, i32 0, i32 2, !dbg !1681
  %62 = load i64, ptr %61, align 8, !dbg !1682
  %63 = add i64 %62, %59, !dbg !1682
  store i64 %63, ptr %61, align 8, !dbg !1682
  store i32 1, ptr %4, align 4, !dbg !1683
  br label %64, !dbg !1683

64:                                               ; preds = %53, %27
  %65 = load i32, ptr %4, align 4, !dbg !1684
  ret i32 %65, !dbg !1684
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__num_fastparse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1685 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1688, metadata !DIExpression()), !dbg !1689
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1690, metadata !DIExpression()), !dbg !1691
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1692, metadata !DIExpression()), !dbg !1693
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i32 1, ptr %10, align 4, !dbg !1697
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1698, metadata !DIExpression()), !dbg !1699
  %14 = load ptr, ptr %8, align 8, !dbg !1700
  %15 = load i64, ptr %14, align 8, !dbg !1701
  store i64 %15, ptr %11, align 8, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1702, metadata !DIExpression()), !dbg !1703
  %16 = load ptr, ptr %7, align 8, !dbg !1704
  %17 = load ptr, ptr %16, align 8, !dbg !1705
  store ptr %17, ptr %12, align 8, !dbg !1703
  br label %18, !dbg !1706

18:                                               ; preds = %48, %4
  %19 = load i64, ptr %11, align 8, !dbg !1707
  %20 = icmp ne i64 %19, 0, !dbg !1710
  br i1 %20, label %21, label %53, !dbg !1710

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1711, metadata !DIExpression()), !dbg !1713
  %22 = load ptr, ptr %12, align 8, !dbg !1714
  %23 = load i8, ptr %22, align 1, !dbg !1715
  store i8 %23, ptr %13, align 1, !dbg !1713
  %24 = call ptr @__ctype_b_loc() #11, !dbg !1716
  %25 = load ptr, ptr %24, align 8, !dbg !1716
  %26 = load i8, ptr %13, align 1, !dbg !1716
  %27 = zext i8 %26 to i32, !dbg !1716
  %28 = sext i32 %27 to i64, !dbg !1716
  %29 = getelementptr inbounds i16, ptr %25, i64 %28, !dbg !1716
  %30 = load i16, ptr %29, align 2, !dbg !1716
  %31 = zext i16 %30 to i32, !dbg !1716
  %32 = and i32 %31, 2048, !dbg !1716
  %33 = icmp ne i32 %32, 0, !dbg !1716
  br i1 %33, label %34, label %46, !dbg !1718

34:                                               ; preds = %21
  %35 = load ptr, ptr %9, align 8, !dbg !1719
  %36 = getelementptr inbounds %struct.jsonsl_state_st, ptr %35, i32 0, i32 5, !dbg !1721
  %37 = load i64, ptr %36, align 8, !dbg !1721
  %38 = mul i64 %37, 10, !dbg !1722
  %39 = load i8, ptr %13, align 1, !dbg !1723
  %40 = zext i8 %39 to i32, !dbg !1723
  %41 = sub nsw i32 %40, 48, !dbg !1724
  %42 = sext i32 %41 to i64, !dbg !1725
  %43 = add i64 %38, %42, !dbg !1726
  %44 = load ptr, ptr %9, align 8, !dbg !1727
  %45 = getelementptr inbounds %struct.jsonsl_state_st, ptr %44, i32 0, i32 5, !dbg !1728
  store i64 %43, ptr %45, align 8, !dbg !1729
  br label %47, !dbg !1730

46:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !1731
  br label %53, !dbg !1733

47:                                               ; preds = %34
  br label %48, !dbg !1734

48:                                               ; preds = %47
  %49 = load i64, ptr %11, align 8, !dbg !1735
  %50 = add i64 %49, -1, !dbg !1735
  store i64 %50, ptr %11, align 8, !dbg !1735
  %51 = load ptr, ptr %12, align 8, !dbg !1736
  %52 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !1736
  store ptr %52, ptr %12, align 8, !dbg !1736
  br label %18, !dbg !1737, !llvm.loop !1738

53:                                               ; preds = %46, %18
  %54 = load ptr, ptr %8, align 8, !dbg !1740
  %55 = load i64, ptr %54, align 8, !dbg !1741
  %56 = load i64, ptr %11, align 8, !dbg !1742
  %57 = sub i64 %55, %56, !dbg !1743
  %58 = load ptr, ptr %6, align 8, !dbg !1744
  %59 = getelementptr inbounds %struct.jsonsl_st, ptr %58, i32 0, i32 2, !dbg !1745
  %60 = load i64, ptr %59, align 8, !dbg !1746
  %61 = add i64 %60, %57, !dbg !1746
  store i64 %61, ptr %59, align 8, !dbg !1746
  %62 = load i32, ptr %10, align 4, !dbg !1747
  %63 = icmp ne i32 %62, 0, !dbg !1747
  br i1 %63, label %64, label %65, !dbg !1749

64:                                               ; preds = %53
  store i32 1, ptr %5, align 4, !dbg !1750
  br label %70, !dbg !1750

65:                                               ; preds = %53
  %66 = load i64, ptr %11, align 8, !dbg !1752
  %67 = load ptr, ptr %8, align 8, !dbg !1753
  store i64 %66, ptr %67, align 8, !dbg !1754
  %68 = load ptr, ptr %12, align 8, !dbg !1755
  %69 = load ptr, ptr %7, align 8, !dbg !1756
  store ptr %68, ptr %69, align 8, !dbg !1757
  store i32 0, ptr %5, align 4, !dbg !1758
  br label %70, !dbg !1758

70:                                               ; preds = %65, %64
  %71 = load i32, ptr %5, align 4, !dbg !1759
  ret i32 %71, !dbg !1759
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_special_end(i32 noundef %0) #0 !dbg !1760 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1761, metadata !DIExpression()), !dbg !1762
  %3 = load i32, ptr %2, align 4, !dbg !1763
  %4 = and i32 %3, 255, !dbg !1764
  %5 = zext i32 %4 to i64, !dbg !1765
  %6 = getelementptr inbounds [256 x i32], ptr @Special_Endings, i64 0, i64 %5, !dbg !1765
  %7 = load i32, ptr %6, align 4, !dbg !1765
  ret i32 %7, !dbg !1766
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_allowed_whitespace(i32 noundef %0) #0 !dbg !1767 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1768, metadata !DIExpression()), !dbg !1769
  %3 = load i32, ptr %2, align 4, !dbg !1770
  %4 = icmp eq i32 %3, 32, !dbg !1771
  br i1 %4, label %12, label %5, !dbg !1772

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !1773
  %7 = and i32 %6, 255, !dbg !1774
  %8 = zext i32 %7 to i64, !dbg !1775
  %9 = getelementptr inbounds [256 x i32], ptr @Allowed_Whitespace, i64 0, i64 %8, !dbg !1775
  %10 = load i32, ptr %9, align 4, !dbg !1775
  %11 = icmp ne i32 %10, 0, !dbg !1772
  br label %12, !dbg !1772

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ]
  %14 = zext i1 %13 to i32, !dbg !1772
  ret i32 %14, !dbg !1776
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_special(i32 noundef %0) #0 !dbg !1777 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1780, metadata !DIExpression()), !dbg !1781
  %3 = load i32, ptr %2, align 4, !dbg !1782
  %4 = and i32 %3, 255, !dbg !1783
  %5 = zext i32 %4 to i64, !dbg !1784
  %6 = getelementptr inbounds [256 x i16], ptr @Special_Table, i64 0, i64 %5, !dbg !1784
  %7 = load i16, ptr %6, align 2, !dbg !1784
  %8 = zext i16 %7 to i32, !dbg !1784
  ret i32 %8, !dbg !1785
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_strerror(i32 noundef %0) #0 !dbg !1786 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1789, metadata !DIExpression()), !dbg !1790
  %4 = load i32, ptr %3, align 4, !dbg !1791
  %5 = icmp eq i32 %4, 0, !dbg !1793
  br i1 %5, label %6, label %7, !dbg !1794

6:                                                ; preds = %1
  store ptr @.str.3, ptr %2, align 8, !dbg !1795
  br label %108, !dbg !1795

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !1797
  %9 = icmp eq i32 %8, 1, !dbg !1797
  br i1 %9, label %10, label %11, !dbg !1799

10:                                               ; preds = %7
  store ptr @.str.4, ptr %2, align 8, !dbg !1797
  br label %108, !dbg !1797

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !1800
  %13 = icmp eq i32 %12, 2, !dbg !1800
  br i1 %13, label %14, label %15, !dbg !1799

14:                                               ; preds = %11
  store ptr @.str.5, ptr %2, align 8, !dbg !1800
  br label %108, !dbg !1800

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4, !dbg !1802
  %17 = icmp eq i32 %16, 3, !dbg !1802
  br i1 %17, label %18, label %19, !dbg !1799

18:                                               ; preds = %15
  store ptr @.str.6, ptr %2, align 8, !dbg !1802
  br label %108, !dbg !1802

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4, !dbg !1804
  %21 = icmp eq i32 %20, 4, !dbg !1804
  br i1 %21, label %22, label %23, !dbg !1799

22:                                               ; preds = %19
  store ptr @.str.7, ptr %2, align 8, !dbg !1804
  br label %108, !dbg !1804

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !dbg !1806
  %25 = icmp eq i32 %24, 5, !dbg !1806
  br i1 %25, label %26, label %27, !dbg !1799

26:                                               ; preds = %23
  store ptr @.str.8, ptr %2, align 8, !dbg !1806
  br label %108, !dbg !1806

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4, !dbg !1808
  %29 = icmp eq i32 %28, 6, !dbg !1808
  br i1 %29, label %30, label %31, !dbg !1799

30:                                               ; preds = %27
  store ptr @.str.9, ptr %2, align 8, !dbg !1808
  br label %108, !dbg !1808

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4, !dbg !1810
  %33 = icmp eq i32 %32, 7, !dbg !1810
  br i1 %33, label %34, label %35, !dbg !1799

34:                                               ; preds = %31
  store ptr @.str.10, ptr %2, align 8, !dbg !1810
  br label %108, !dbg !1810

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4, !dbg !1812
  %37 = icmp eq i32 %36, 8, !dbg !1812
  br i1 %37, label %38, label %39, !dbg !1799

38:                                               ; preds = %35
  store ptr @.str.11, ptr %2, align 8, !dbg !1812
  br label %108, !dbg !1812

39:                                               ; preds = %35
  %40 = load i32, ptr %3, align 4, !dbg !1814
  %41 = icmp eq i32 %40, 9, !dbg !1814
  br i1 %41, label %42, label %43, !dbg !1799

42:                                               ; preds = %39
  store ptr @.str.12, ptr %2, align 8, !dbg !1814
  br label %108, !dbg !1814

43:                                               ; preds = %39
  %44 = load i32, ptr %3, align 4, !dbg !1816
  %45 = icmp eq i32 %44, 10, !dbg !1816
  br i1 %45, label %46, label %47, !dbg !1799

46:                                               ; preds = %43
  store ptr @.str.13, ptr %2, align 8, !dbg !1816
  br label %108, !dbg !1816

47:                                               ; preds = %43
  %48 = load i32, ptr %3, align 4, !dbg !1818
  %49 = icmp eq i32 %48, 11, !dbg !1818
  br i1 %49, label %50, label %51, !dbg !1799

50:                                               ; preds = %47
  store ptr @.str.14, ptr %2, align 8, !dbg !1818
  br label %108, !dbg !1818

51:                                               ; preds = %47
  %52 = load i32, ptr %3, align 4, !dbg !1820
  %53 = icmp eq i32 %52, 12, !dbg !1820
  br i1 %53, label %54, label %55, !dbg !1799

54:                                               ; preds = %51
  store ptr @.str.15, ptr %2, align 8, !dbg !1820
  br label %108, !dbg !1820

55:                                               ; preds = %51
  %56 = load i32, ptr %3, align 4, !dbg !1822
  %57 = icmp eq i32 %56, 13, !dbg !1822
  br i1 %57, label %58, label %59, !dbg !1799

58:                                               ; preds = %55
  store ptr @.str.16, ptr %2, align 8, !dbg !1822
  br label %108, !dbg !1822

59:                                               ; preds = %55
  %60 = load i32, ptr %3, align 4, !dbg !1824
  %61 = icmp eq i32 %60, 14, !dbg !1824
  br i1 %61, label %62, label %63, !dbg !1799

62:                                               ; preds = %59
  store ptr @.str.17, ptr %2, align 8, !dbg !1824
  br label %108, !dbg !1824

63:                                               ; preds = %59
  %64 = load i32, ptr %3, align 4, !dbg !1826
  %65 = icmp eq i32 %64, 15, !dbg !1826
  br i1 %65, label %66, label %67, !dbg !1799

66:                                               ; preds = %63
  store ptr @.str.18, ptr %2, align 8, !dbg !1826
  br label %108, !dbg !1826

67:                                               ; preds = %63
  %68 = load i32, ptr %3, align 4, !dbg !1828
  %69 = icmp eq i32 %68, 16, !dbg !1828
  br i1 %69, label %70, label %71, !dbg !1799

70:                                               ; preds = %67
  store ptr @.str.19, ptr %2, align 8, !dbg !1828
  br label %108, !dbg !1828

71:                                               ; preds = %67
  %72 = load i32, ptr %3, align 4, !dbg !1830
  %73 = icmp eq i32 %72, 17, !dbg !1830
  br i1 %73, label %74, label %75, !dbg !1799

74:                                               ; preds = %71
  store ptr @.str.20, ptr %2, align 8, !dbg !1830
  br label %108, !dbg !1830

75:                                               ; preds = %71
  %76 = load i32, ptr %3, align 4, !dbg !1832
  %77 = icmp eq i32 %76, 18, !dbg !1832
  br i1 %77, label %78, label %79, !dbg !1799

78:                                               ; preds = %75
  store ptr @.str.21, ptr %2, align 8, !dbg !1832
  br label %108, !dbg !1832

79:                                               ; preds = %75
  %80 = load i32, ptr %3, align 4, !dbg !1834
  %81 = icmp eq i32 %80, 19, !dbg !1834
  br i1 %81, label %82, label %83, !dbg !1799

82:                                               ; preds = %79
  store ptr @.str.22, ptr %2, align 8, !dbg !1834
  br label %108, !dbg !1834

83:                                               ; preds = %79
  %84 = load i32, ptr %3, align 4, !dbg !1836
  %85 = icmp eq i32 %84, 20, !dbg !1836
  br i1 %85, label %86, label %87, !dbg !1799

86:                                               ; preds = %83
  store ptr @.str.23, ptr %2, align 8, !dbg !1836
  br label %108, !dbg !1836

87:                                               ; preds = %83
  %88 = load i32, ptr %3, align 4, !dbg !1838
  %89 = icmp eq i32 %88, 21, !dbg !1838
  br i1 %89, label %90, label %91, !dbg !1799

90:                                               ; preds = %87
  store ptr @.str.24, ptr %2, align 8, !dbg !1838
  br label %108, !dbg !1838

91:                                               ; preds = %87
  %92 = load i32, ptr %3, align 4, !dbg !1840
  %93 = icmp eq i32 %92, 22, !dbg !1840
  br i1 %93, label %94, label %95, !dbg !1799

94:                                               ; preds = %91
  store ptr @.str.25, ptr %2, align 8, !dbg !1840
  br label %108, !dbg !1840

95:                                               ; preds = %91
  %96 = load i32, ptr %3, align 4, !dbg !1842
  %97 = icmp eq i32 %96, 23, !dbg !1842
  br i1 %97, label %98, label %99, !dbg !1799

98:                                               ; preds = %95
  store ptr @.str.26, ptr %2, align 8, !dbg !1842
  br label %108, !dbg !1842

99:                                               ; preds = %95
  %100 = load i32, ptr %3, align 4, !dbg !1844
  %101 = icmp eq i32 %100, 24, !dbg !1844
  br i1 %101, label %102, label %103, !dbg !1799

102:                                              ; preds = %99
  store ptr @.str.27, ptr %2, align 8, !dbg !1844
  br label %108, !dbg !1844

103:                                              ; preds = %99
  %104 = load i32, ptr %3, align 4, !dbg !1846
  %105 = icmp eq i32 %104, 25, !dbg !1846
  br i1 %105, label %106, label %107, !dbg !1799

106:                                              ; preds = %103
  store ptr @.str.28, ptr %2, align 8, !dbg !1846
  br label %108, !dbg !1846

107:                                              ; preds = %103
  store ptr @.str.29, ptr %2, align 8, !dbg !1848
  br label %108, !dbg !1848

108:                                              ; preds = %107, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %109 = load ptr, ptr %2, align 8, !dbg !1849
  ret ptr %109, !dbg !1849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_strtype(i32 noundef %0) #0 !dbg !1850 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1854, metadata !DIExpression()), !dbg !1855
  %4 = load i32, ptr %3, align 4, !dbg !1856
  %5 = icmp eq i32 %4, 16776994, !dbg !1856
  br i1 %5, label %6, label %7, !dbg !1858

6:                                                ; preds = %1
  store ptr @.str.30, ptr %2, align 8, !dbg !1856
  br label %28, !dbg !1856

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !1859
  %9 = icmp eq i32 %8, 16776995, !dbg !1859
  br i1 %9, label %10, label %11, !dbg !1858

10:                                               ; preds = %7
  store ptr @.str.31, ptr %2, align 8, !dbg !1859
  br label %28, !dbg !1859

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !1861
  %13 = icmp eq i32 %12, 123, !dbg !1861
  br i1 %13, label %14, label %15, !dbg !1858

14:                                               ; preds = %11
  store ptr @.str.32, ptr %2, align 8, !dbg !1861
  br label %28, !dbg !1861

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4, !dbg !1863
  %17 = icmp eq i32 %16, 91, !dbg !1863
  br i1 %17, label %18, label %19, !dbg !1858

18:                                               ; preds = %15
  store ptr @.str.33, ptr %2, align 8, !dbg !1863
  br label %28, !dbg !1863

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4, !dbg !1865
  %21 = icmp eq i32 %20, 94, !dbg !1865
  br i1 %21, label %22, label %23, !dbg !1858

22:                                               ; preds = %19
  store ptr @.str.34, ptr %2, align 8, !dbg !1865
  br label %28, !dbg !1865

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !dbg !1867
  %25 = icmp eq i32 %24, 117, !dbg !1867
  br i1 %25, label %26, label %27, !dbg !1858

26:                                               ; preds = %23
  store ptr @.str.35, ptr %2, align 8, !dbg !1867
  br label %28, !dbg !1867

27:                                               ; preds = %23
  store ptr @.str.36, ptr %2, align 8, !dbg !1869
  br label %28, !dbg !1869

28:                                               ; preds = %27, %26, %22, %18, %14, %10, %6
  %29 = load ptr, ptr %2, align 8, !dbg !1870
  ret ptr %29, !dbg !1870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_jpr_new(ptr noundef %0, ptr noundef %1) #0 !dbg !1871 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1875, metadata !DIExpression()), !dbg !1876
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1877, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1879, metadata !DIExpression()), !dbg !1880
  store ptr null, ptr %6, align 8, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1881, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1883, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1885, metadata !DIExpression()), !dbg !1886
  store ptr null, ptr %9, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1887, metadata !DIExpression()), !dbg !1888
  store ptr null, ptr %10, align 8, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1889, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1891, metadata !DIExpression()), !dbg !1892
  %16 = load ptr, ptr %5, align 8, !dbg !1893
  %17 = icmp eq ptr %16, null, !dbg !1895
  br i1 %17, label %18, label %19, !dbg !1896

18:                                               ; preds = %2
  store ptr %12, ptr %5, align 8, !dbg !1897
  br label %19, !dbg !1899

19:                                               ; preds = %18, %2
  %20 = load ptr, ptr %4, align 8, !dbg !1900
  %21 = icmp eq ptr %20, null, !dbg !1902
  br i1 %21, label %27, label %22, !dbg !1903

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !dbg !1904
  %24 = load i8, ptr %23, align 1, !dbg !1905
  %25 = sext i8 %24 to i32, !dbg !1905
  %26 = icmp ne i32 %25, 47, !dbg !1906
  br i1 %26, label %27, label %29, !dbg !1907

27:                                               ; preds = %22, %19
  %28 = load ptr, ptr %5, align 8, !dbg !1908
  store i32 23, ptr %28, align 4, !dbg !1908
  br label %163, !dbg !1908

29:                                               ; preds = %22
  store i32 1, ptr %7, align 4, !dbg !1910
  %30 = load ptr, ptr %4, align 8, !dbg !1911
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !1911
  store ptr %31, ptr %4, align 8, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1912, metadata !DIExpression()), !dbg !1914
  %32 = load ptr, ptr %4, align 8, !dbg !1915
  store ptr %32, ptr %13, align 8, !dbg !1914
  br label %33, !dbg !1916

33:                                               ; preds = %54, %29
  %34 = load ptr, ptr %13, align 8, !dbg !1917
  %35 = load i8, ptr %34, align 1, !dbg !1920
  %36 = icmp ne i8 %35, 0, !dbg !1921
  br i1 %36, label %37, label %57, !dbg !1921

37:                                               ; preds = %33
  %38 = load ptr, ptr %13, align 8, !dbg !1922
  %39 = load i8, ptr %38, align 1, !dbg !1925
  %40 = sext i8 %39 to i32, !dbg !1925
  %41 = icmp eq i32 %40, 47, !dbg !1926
  br i1 %41, label %42, label %53, !dbg !1927

42:                                               ; preds = %37
  %43 = load i32, ptr %7, align 4, !dbg !1928
  %44 = add nsw i32 %43, 1, !dbg !1928
  store i32 %44, ptr %7, align 4, !dbg !1928
  %45 = load ptr, ptr %13, align 8, !dbg !1930
  %46 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1932
  %47 = load i8, ptr %46, align 1, !dbg !1933
  %48 = sext i8 %47 to i32, !dbg !1933
  %49 = icmp eq i32 %48, 47, !dbg !1934
  br i1 %49, label %50, label %52, !dbg !1935

50:                                               ; preds = %42
  %51 = load ptr, ptr %5, align 8, !dbg !1936
  store i32 22, ptr %51, align 4, !dbg !1936
  br label %163, !dbg !1936

52:                                               ; preds = %42
  br label %53, !dbg !1938

53:                                               ; preds = %52, %37
  br label %54, !dbg !1939

54:                                               ; preds = %53
  %55 = load ptr, ptr %13, align 8, !dbg !1940
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !1940
  store ptr %56, ptr %13, align 8, !dbg !1940
  br label %33, !dbg !1941, !llvm.loop !1942

57:                                               ; preds = %33
  %58 = load ptr, ptr %4, align 8, !dbg !1944
  %59 = load i8, ptr %58, align 1, !dbg !1946
  %60 = icmp ne i8 %59, 0, !dbg !1946
  br i1 %60, label %61, label %64, !dbg !1947

61:                                               ; preds = %57
  %62 = load i32, ptr %7, align 4, !dbg !1948
  %63 = add nsw i32 %62, 1, !dbg !1948
  store i32 %63, ptr %7, align 4, !dbg !1948
  br label %64, !dbg !1950

64:                                               ; preds = %61, %57
  %65 = load i32, ptr %7, align 4, !dbg !1951
  %66 = sext i32 %65 to i64, !dbg !1951
  %67 = mul i64 32, %66, !dbg !1952
  %68 = call noalias ptr @malloc(i64 noundef %67) #12, !dbg !1953
  store ptr %68, ptr %10, align 8, !dbg !1954
  %69 = load ptr, ptr %10, align 8, !dbg !1955
  %70 = icmp ne ptr %69, null, !dbg !1955
  br i1 %70, label %73, label %71, !dbg !1957

71:                                               ; preds = %64
  %72 = load ptr, ptr %5, align 8, !dbg !1958
  store i32 24, ptr %72, align 4, !dbg !1958
  br label %163, !dbg !1958

73:                                               ; preds = %64
  %74 = load ptr, ptr %4, align 8, !dbg !1960
  %75 = call i64 @strlen(ptr noundef %74) #13, !dbg !1961
  %76 = add i64 %75, 1, !dbg !1962
  %77 = call noalias ptr @malloc(i64 noundef %76) #12, !dbg !1963
  store ptr %77, ptr %6, align 8, !dbg !1964
  %78 = load ptr, ptr %6, align 8, !dbg !1965
  %79 = icmp ne ptr %78, null, !dbg !1965
  br i1 %79, label %82, label %80, !dbg !1967

80:                                               ; preds = %73
  %81 = load ptr, ptr %5, align 8, !dbg !1968
  store i32 24, ptr %81, align 4, !dbg !1968
  br label %163, !dbg !1968

82:                                               ; preds = %73
  %83 = load ptr, ptr %6, align 8, !dbg !1970
  %84 = load ptr, ptr %4, align 8, !dbg !1971
  %85 = call ptr @strcpy(ptr noundef %83, ptr noundef %84) #10, !dbg !1972
  %86 = load ptr, ptr %10, align 8, !dbg !1973
  %87 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %86, i64 0, !dbg !1973
  %88 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %87, i32 0, i32 3, !dbg !1974
  store i32 4, ptr %88, align 8, !dbg !1975
  %89 = load ptr, ptr %6, align 8, !dbg !1976
  %90 = load i8, ptr %89, align 1, !dbg !1978
  %91 = icmp ne i8 %90, 0, !dbg !1978
  br i1 %91, label %92, label %119, !dbg !1979

92:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1980, metadata !DIExpression()), !dbg !1982
  %93 = load ptr, ptr %6, align 8, !dbg !1983
  store ptr %93, ptr %14, align 8, !dbg !1982
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1984, metadata !DIExpression()), !dbg !1985
  store i32 1, ptr %15, align 4, !dbg !1985
  store i32 1, ptr %8, align 4, !dbg !1986
  br label %94, !dbg !1987

94:                                               ; preds = %112, %92
  %95 = load i32, ptr %8, align 4, !dbg !1988
  %96 = load i32, ptr %7, align 4, !dbg !1989
  %97 = icmp slt i32 %95, %96, !dbg !1990
  br i1 %97, label %98, label %113, !dbg !1987

98:                                               ; preds = %94
  %99 = load ptr, ptr %14, align 8, !dbg !1991
  %100 = load ptr, ptr %10, align 8, !dbg !1993
  %101 = load i32, ptr %8, align 4, !dbg !1994
  %102 = sext i32 %101 to i64, !dbg !1995
  %103 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %100, i64 %102, !dbg !1995
  %104 = load ptr, ptr %5, align 8, !dbg !1996
  %105 = call i32 @populate_component(ptr noundef %99, ptr noundef %103, ptr noundef %14, ptr noundef %104), !dbg !1997
  store i32 %105, ptr %15, align 4, !dbg !1998
  %106 = load i32, ptr %15, align 4, !dbg !1999
  %107 = icmp sgt i32 %106, 0, !dbg !2001
  br i1 %107, label %108, label %111, !dbg !2002

108:                                              ; preds = %98
  %109 = load i32, ptr %8, align 4, !dbg !2003
  %110 = add nsw i32 %109, 1, !dbg !2003
  store i32 %110, ptr %8, align 4, !dbg !2003
  br label %112, !dbg !2005

111:                                              ; preds = %98
  br label %113, !dbg !2006

112:                                              ; preds = %108
  br label %94, !dbg !1987, !llvm.loop !2008

113:                                              ; preds = %111, %94
  %114 = load i32, ptr %15, align 4, !dbg !2010
  %115 = icmp eq i32 %114, -1, !dbg !2012
  br i1 %115, label %116, label %118, !dbg !2013

116:                                              ; preds = %113
  %117 = load ptr, ptr %5, align 8, !dbg !2014
  store i32 21, ptr %117, align 4, !dbg !2014
  br label %163, !dbg !2014

118:                                              ; preds = %113
  br label %120, !dbg !2016

119:                                              ; preds = %82
  store i32 1, ptr %8, align 4, !dbg !2017
  br label %120

120:                                              ; preds = %119, %118
  %121 = load ptr, ptr %4, align 8, !dbg !2019
  %122 = getelementptr inbounds i8, ptr %121, i32 -1, !dbg !2019
  store ptr %122, ptr %4, align 8, !dbg !2019
  %123 = load ptr, ptr %4, align 8, !dbg !2020
  %124 = call i64 @strlen(ptr noundef %123) #13, !dbg !2021
  %125 = add i64 %124, 1, !dbg !2022
  store i64 %125, ptr %11, align 8, !dbg !2023
  %126 = call noalias ptr @malloc(i64 noundef 48) #12, !dbg !2024
  store ptr %126, ptr %9, align 8, !dbg !2025
  %127 = load ptr, ptr %9, align 8, !dbg !2026
  %128 = icmp ne ptr %127, null, !dbg !2026
  br i1 %128, label %131, label %129, !dbg !2028

129:                                              ; preds = %120
  %130 = load ptr, ptr %5, align 8, !dbg !2029
  store i32 24, ptr %130, align 4, !dbg !2029
  br label %163, !dbg !2029

131:                                              ; preds = %120
  %132 = load i64, ptr %11, align 8, !dbg !2031
  %133 = call noalias ptr @malloc(i64 noundef %132) #12, !dbg !2032
  %134 = load ptr, ptr %9, align 8, !dbg !2033
  %135 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %134, i32 0, i32 4, !dbg !2034
  store ptr %133, ptr %135, align 8, !dbg !2035
  %136 = load ptr, ptr %9, align 8, !dbg !2036
  %137 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %136, i32 0, i32 4, !dbg !2038
  %138 = load ptr, ptr %137, align 8, !dbg !2038
  %139 = icmp ne ptr %138, null, !dbg !2036
  br i1 %139, label %142, label %140, !dbg !2039

140:                                              ; preds = %131
  %141 = load ptr, ptr %5, align 8, !dbg !2040
  store i32 24, ptr %141, align 4, !dbg !2040
  br label %163, !dbg !2040

142:                                              ; preds = %131
  %143 = load ptr, ptr %10, align 8, !dbg !2042
  %144 = load ptr, ptr %9, align 8, !dbg !2043
  %145 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %144, i32 0, i32 0, !dbg !2044
  store ptr %143, ptr %145, align 8, !dbg !2045
  %146 = load i32, ptr %8, align 4, !dbg !2046
  %147 = sext i32 %146 to i64, !dbg !2046
  %148 = load ptr, ptr %9, align 8, !dbg !2047
  %149 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %148, i32 0, i32 1, !dbg !2048
  store i64 %147, ptr %149, align 8, !dbg !2049
  %150 = load ptr, ptr %6, align 8, !dbg !2050
  %151 = load ptr, ptr %9, align 8, !dbg !2051
  %152 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %151, i32 0, i32 3, !dbg !2052
  store ptr %150, ptr %152, align 8, !dbg !2053
  %153 = load i64, ptr %11, align 8, !dbg !2054
  %154 = sub i64 %153, 1, !dbg !2055
  %155 = load ptr, ptr %9, align 8, !dbg !2056
  %156 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %155, i32 0, i32 5, !dbg !2057
  store i64 %154, ptr %156, align 8, !dbg !2058
  %157 = load ptr, ptr %9, align 8, !dbg !2059
  %158 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %157, i32 0, i32 4, !dbg !2060
  %159 = load ptr, ptr %158, align 8, !dbg !2060
  %160 = load ptr, ptr %4, align 8, !dbg !2061
  %161 = call ptr @strcpy(ptr noundef %159, ptr noundef %160) #10, !dbg !2062
  %162 = load ptr, ptr %9, align 8, !dbg !2063
  store ptr %162, ptr %3, align 8, !dbg !2064
  br label %174, !dbg !2064

163:                                              ; preds = %140, %129, %116, %80, %71, %50, %27
  call void @llvm.dbg.label(metadata !2065), !dbg !2066
  %164 = load ptr, ptr %6, align 8, !dbg !2067
  call void @free(ptr noundef %164) #10, !dbg !2068
  %165 = load ptr, ptr %10, align 8, !dbg !2069
  call void @free(ptr noundef %165) #10, !dbg !2070
  %166 = load ptr, ptr %9, align 8, !dbg !2071
  %167 = icmp ne ptr %166, null, !dbg !2071
  br i1 %167, label %168, label %172, !dbg !2073

168:                                              ; preds = %163
  %169 = load ptr, ptr %9, align 8, !dbg !2074
  %170 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %169, i32 0, i32 4, !dbg !2076
  %171 = load ptr, ptr %170, align 8, !dbg !2076
  call void @free(ptr noundef %171) #10, !dbg !2077
  br label %172, !dbg !2078

172:                                              ; preds = %168, %163
  %173 = load ptr, ptr %9, align 8, !dbg !2079
  call void @free(ptr noundef %173) #10, !dbg !2080
  store ptr null, ptr %3, align 8, !dbg !2081
  br label %174, !dbg !2081

174:                                              ; preds = %172, %142
  %175 = load ptr, ptr %3, align 8, !dbg !2082
  ret ptr %175, !dbg !2082
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_component(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2083 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2087, metadata !DIExpression()), !dbg !2088
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2089, metadata !DIExpression()), !dbg !2090
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2091, metadata !DIExpression()), !dbg !2092
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2097, metadata !DIExpression()), !dbg !2098
  store ptr null, ptr %11, align 8, !dbg !2098
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2099, metadata !DIExpression()), !dbg !2100
  store ptr null, ptr %12, align 8, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2101, metadata !DIExpression()), !dbg !2102
  store ptr null, ptr %13, align 8, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i32 0, ptr %15, align 4, !dbg !2106
  %18 = load ptr, ptr %8, align 8, !dbg !2107
  %19 = load ptr, ptr %18, align 8, !dbg !2109
  %20 = icmp eq ptr %19, null, !dbg !2110
  br i1 %20, label %27, label %21, !dbg !2111

21:                                               ; preds = %4
  %22 = load ptr, ptr %8, align 8, !dbg !2112
  %23 = load ptr, ptr %22, align 8, !dbg !2113
  %24 = load i8, ptr %23, align 1, !dbg !2114
  %25 = sext i8 %24 to i32, !dbg !2114
  %26 = icmp eq i32 %25, 0, !dbg !2115
  br i1 %26, label %27, label %28, !dbg !2116

27:                                               ; preds = %21, %4
  store i32 0, ptr %5, align 4, !dbg !2117
  br label %194, !dbg !2117

28:                                               ; preds = %21
  %29 = load ptr, ptr %6, align 8, !dbg !2119
  %30 = call ptr @strstr(ptr noundef %29, ptr noundef @.str.43) #13, !dbg !2120
  %31 = load ptr, ptr %8, align 8, !dbg !2121
  store ptr %30, ptr %31, align 8, !dbg !2122
  %32 = load ptr, ptr %8, align 8, !dbg !2123
  %33 = load ptr, ptr %32, align 8, !dbg !2125
  %34 = icmp ne ptr %33, null, !dbg !2126
  br i1 %34, label %35, label %49, !dbg !2127

35:                                               ; preds = %28
  %36 = load ptr, ptr %8, align 8, !dbg !2128
  %37 = load ptr, ptr %36, align 8, !dbg !2130
  store i8 0, ptr %37, align 1, !dbg !2131
  %38 = load ptr, ptr %8, align 8, !dbg !2132
  %39 = load ptr, ptr %38, align 8, !dbg !2133
  %40 = load ptr, ptr %6, align 8, !dbg !2134
  %41 = ptrtoint ptr %39 to i64, !dbg !2135
  %42 = ptrtoint ptr %40 to i64, !dbg !2135
  %43 = sub i64 %41, %42, !dbg !2135
  store i64 %43, ptr %14, align 8, !dbg !2136
  %44 = load ptr, ptr %8, align 8, !dbg !2137
  %45 = load ptr, ptr %44, align 8, !dbg !2138
  store ptr %45, ptr %13, align 8, !dbg !2139
  %46 = load ptr, ptr %8, align 8, !dbg !2140
  %47 = load ptr, ptr %46, align 8, !dbg !2141
  %48 = getelementptr inbounds i8, ptr %47, i64 1, !dbg !2141
  store ptr %48, ptr %46, align 8, !dbg !2141
  br label %56, !dbg !2142

49:                                               ; preds = %28
  %50 = load ptr, ptr %6, align 8, !dbg !2143
  %51 = call i64 @strlen(ptr noundef %50) #13, !dbg !2145
  store i64 %51, ptr %14, align 8, !dbg !2146
  %52 = load ptr, ptr %6, align 8, !dbg !2147
  %53 = load i64, ptr %14, align 8, !dbg !2148
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2149
  %55 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !2150
  store ptr %55, ptr %13, align 8, !dbg !2151
  br label %56

56:                                               ; preds = %49, %35
  %57 = load ptr, ptr %6, align 8, !dbg !2152
  %58 = load ptr, ptr %7, align 8, !dbg !2153
  %59 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %58, i32 0, i32 0, !dbg !2154
  store ptr %57, ptr %59, align 8, !dbg !2155
  %60 = load ptr, ptr %6, align 8, !dbg !2156
  %61 = load i8, ptr %60, align 1, !dbg !2158
  %62 = sext i8 %61 to i32, !dbg !2158
  %63 = icmp eq i32 %62, 94, !dbg !2159
  br i1 %63, label %64, label %68, !dbg !2160

64:                                               ; preds = %56
  %65 = load i64, ptr %14, align 8, !dbg !2161
  %66 = icmp eq i64 %65, 1, !dbg !2162
  br i1 %66, label %67, label %68, !dbg !2163

67:                                               ; preds = %64
  store i32 2, ptr %15, align 4, !dbg !2164
  br label %179, !dbg !2166

68:                                               ; preds = %64, %56
  %69 = call ptr @__ctype_b_loc() #11, !dbg !2167
  %70 = load ptr, ptr %69, align 8, !dbg !2167
  %71 = load ptr, ptr %6, align 8, !dbg !2167
  %72 = load i8, ptr %71, align 1, !dbg !2167
  %73 = sext i8 %72 to i32, !dbg !2167
  %74 = sext i32 %73 to i64, !dbg !2167
  %75 = getelementptr inbounds i16, ptr %70, i64 %74, !dbg !2167
  %76 = load i16, ptr %75, align 2, !dbg !2167
  %77 = zext i16 %76 to i32, !dbg !2167
  %78 = and i32 %77, 2048, !dbg !2167
  %79 = icmp ne i32 %78, 0, !dbg !2167
  br i1 %79, label %80, label %94, !dbg !2169

80:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2170, metadata !DIExpression()), !dbg !2172
  %81 = load ptr, ptr %6, align 8, !dbg !2173
  %82 = call i64 @strtoul(ptr noundef %81, ptr noundef %16, i32 noundef 10) #10, !dbg !2174
  %83 = load ptr, ptr %7, align 8, !dbg !2175
  %84 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %83, i32 0, i32 1, !dbg !2176
  store i64 %82, ptr %84, align 8, !dbg !2177
  %85 = load ptr, ptr %16, align 8, !dbg !2178
  %86 = icmp ne ptr %85, null, !dbg !2178
  br i1 %86, label %87, label %93, !dbg !2180

87:                                               ; preds = %80
  %88 = load ptr, ptr %16, align 8, !dbg !2181
  %89 = load i8, ptr %88, align 1, !dbg !2182
  %90 = sext i8 %89 to i32, !dbg !2182
  %91 = icmp eq i32 %90, 0, !dbg !2183
  br i1 %91, label %92, label %93, !dbg !2184

92:                                               ; preds = %87
  store i32 3, ptr %15, align 4, !dbg !2185
  br label %179, !dbg !2187

93:                                               ; preds = %87, %80
  br label %94, !dbg !2188

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94
  store i32 1, ptr %15, align 4, !dbg !2189
  %96 = load ptr, ptr %6, align 8, !dbg !2190
  store ptr %96, ptr %12, align 8, !dbg !2192
  store ptr %96, ptr %11, align 8, !dbg !2193
  br label %97, !dbg !2194

97:                                               ; preds = %163, %95
  %98 = load ptr, ptr %11, align 8, !dbg !2195
  %99 = load ptr, ptr %13, align 8, !dbg !2197
  %100 = icmp ult ptr %98, %99, !dbg !2198
  br i1 %100, label %101, label %168, !dbg !2199

101:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2200, metadata !DIExpression()), !dbg !2202
  %102 = load ptr, ptr %11, align 8, !dbg !2203
  %103 = load i8, ptr %102, align 1, !dbg !2205
  %104 = sext i8 %103 to i32, !dbg !2205
  %105 = icmp ne i32 %104, 37, !dbg !2206
  br i1 %105, label %106, label %107, !dbg !2207

106:                                              ; preds = %101
  br label %159, !dbg !2208

107:                                              ; preds = %101
  %108 = load ptr, ptr %11, align 8, !dbg !2210
  %109 = getelementptr inbounds i8, ptr %108, i64 2, !dbg !2212
  %110 = load ptr, ptr %13, align 8, !dbg !2213
  %111 = icmp uge ptr %109, %110, !dbg !2214
  br i1 %111, label %112, label %114, !dbg !2215

112:                                              ; preds = %107
  %113 = load ptr, ptr %9, align 8, !dbg !2216
  store i32 20, ptr %113, align 4, !dbg !2218
  store i32 -1, ptr %5, align 4, !dbg !2219
  br label %194, !dbg !2219

114:                                              ; preds = %107
  %115 = call ptr @__ctype_b_loc() #11, !dbg !2220
  %116 = load ptr, ptr %115, align 8, !dbg !2220
  %117 = load ptr, ptr %11, align 8, !dbg !2220
  %118 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !2220
  %119 = load i8, ptr %118, align 1, !dbg !2220
  %120 = sext i8 %119 to i32, !dbg !2220
  %121 = sext i32 %120 to i64, !dbg !2220
  %122 = getelementptr inbounds i16, ptr %116, i64 %121, !dbg !2220
  %123 = load i16, ptr %122, align 2, !dbg !2220
  %124 = zext i16 %123 to i32, !dbg !2220
  %125 = and i32 %124, 4096, !dbg !2220
  %126 = icmp ne i32 %125, 0, !dbg !2220
  br i1 %126, label %127, label %140, !dbg !2222

127:                                              ; preds = %114
  %128 = call ptr @__ctype_b_loc() #11, !dbg !2223
  %129 = load ptr, ptr %128, align 8, !dbg !2223
  %130 = load ptr, ptr %11, align 8, !dbg !2223
  %131 = getelementptr inbounds i8, ptr %130, i64 2, !dbg !2223
  %132 = load i8, ptr %131, align 1, !dbg !2223
  %133 = sext i8 %132 to i32, !dbg !2223
  %134 = sext i32 %133 to i64, !dbg !2223
  %135 = getelementptr inbounds i16, ptr %129, i64 %134, !dbg !2223
  %136 = load i16, ptr %135, align 2, !dbg !2223
  %137 = zext i16 %136 to i32, !dbg !2223
  %138 = and i32 %137, 4096, !dbg !2223
  %139 = icmp ne i32 %138, 0, !dbg !2223
  br i1 %139, label %142, label %140, !dbg !2224

140:                                              ; preds = %127, %114
  %141 = load ptr, ptr %9, align 8, !dbg !2225
  store i32 20, ptr %141, align 4, !dbg !2227
  store i32 -1, ptr %5, align 4, !dbg !2228
  br label %194, !dbg !2228

142:                                              ; preds = %127
  %143 = load ptr, ptr %11, align 8, !dbg !2229
  %144 = getelementptr inbounds i8, ptr %143, i64 3, !dbg !2230
  %145 = load i8, ptr %144, align 1, !dbg !2231
  store i8 %145, ptr %17, align 1, !dbg !2232
  %146 = load ptr, ptr %11, align 8, !dbg !2233
  %147 = getelementptr inbounds i8, ptr %146, i64 3, !dbg !2234
  store i8 0, ptr %147, align 1, !dbg !2235
  %148 = load ptr, ptr %11, align 8, !dbg !2236
  %149 = getelementptr inbounds i8, ptr %148, i64 1, !dbg !2237
  %150 = call i64 @strtoul(ptr noundef %149, ptr noundef null, i32 noundef 16) #10, !dbg !2238
  store i64 %150, ptr %10, align 8, !dbg !2239
  %151 = load i8, ptr %17, align 1, !dbg !2240
  %152 = load ptr, ptr %11, align 8, !dbg !2241
  %153 = getelementptr inbounds i8, ptr %152, i64 3, !dbg !2242
  store i8 %151, ptr %153, align 1, !dbg !2243
  %154 = load i64, ptr %10, align 8, !dbg !2244
  %155 = trunc i64 %154 to i8, !dbg !2245
  %156 = load ptr, ptr %12, align 8, !dbg !2246
  store i8 %155, ptr %156, align 1, !dbg !2247
  %157 = load ptr, ptr %11, align 8, !dbg !2248
  %158 = getelementptr inbounds i8, ptr %157, i64 2, !dbg !2248
  store ptr %158, ptr %11, align 8, !dbg !2248
  br label %163, !dbg !2249

159:                                              ; preds = %106
  call void @llvm.dbg.label(metadata !2250), !dbg !2251
  %160 = load ptr, ptr %11, align 8, !dbg !2252
  %161 = load i8, ptr %160, align 1, !dbg !2253
  %162 = load ptr, ptr %12, align 8, !dbg !2254
  store i8 %161, ptr %162, align 1, !dbg !2255
  br label %163, !dbg !2256

163:                                              ; preds = %159, %142
  %164 = load ptr, ptr %11, align 8, !dbg !2257
  %165 = getelementptr inbounds i8, ptr %164, i32 1, !dbg !2257
  store ptr %165, ptr %11, align 8, !dbg !2257
  %166 = load ptr, ptr %12, align 8, !dbg !2258
  %167 = getelementptr inbounds i8, ptr %166, i32 1, !dbg !2258
  store ptr %167, ptr %12, align 8, !dbg !2258
  br label %97, !dbg !2259, !llvm.loop !2260

168:                                              ; preds = %97
  br label %169, !dbg !2262

169:                                              ; preds = %175, %168
  %170 = load ptr, ptr %12, align 8, !dbg !2263
  %171 = load ptr, ptr %11, align 8, !dbg !2266
  %172 = icmp ult ptr %170, %171, !dbg !2267
  br i1 %172, label %173, label %178, !dbg !2268

173:                                              ; preds = %169
  %174 = load ptr, ptr %12, align 8, !dbg !2269
  store i8 0, ptr %174, align 1, !dbg !2271
  br label %175, !dbg !2272

175:                                              ; preds = %173
  %176 = load ptr, ptr %12, align 8, !dbg !2273
  %177 = getelementptr inbounds i8, ptr %176, i32 1, !dbg !2273
  store ptr %177, ptr %12, align 8, !dbg !2273
  br label %169, !dbg !2274, !llvm.loop !2275

178:                                              ; preds = %169
  br label %179, !dbg !2276

179:                                              ; preds = %178, %92, %67
  call void @llvm.dbg.label(metadata !2277), !dbg !2278
  %180 = load i32, ptr %15, align 4, !dbg !2279
  %181 = load ptr, ptr %7, align 8, !dbg !2280
  %182 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %181, i32 0, i32 3, !dbg !2281
  store i32 %180, ptr %182, align 8, !dbg !2282
  %183 = load i32, ptr %15, align 4, !dbg !2283
  %184 = icmp ne i32 %183, 2, !dbg !2285
  br i1 %184, label %185, label %192, !dbg !2286

185:                                              ; preds = %179
  %186 = load ptr, ptr %7, align 8, !dbg !2287
  %187 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %186, i32 0, i32 0, !dbg !2289
  %188 = load ptr, ptr %187, align 8, !dbg !2289
  %189 = call i64 @strlen(ptr noundef %188) #13, !dbg !2290
  %190 = load ptr, ptr %7, align 8, !dbg !2291
  %191 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %190, i32 0, i32 2, !dbg !2292
  store i64 %189, ptr %191, align 8, !dbg !2293
  br label %192, !dbg !2294

192:                                              ; preds = %185, %179
  %193 = load i32, ptr %15, align 4, !dbg !2295
  store i32 %193, ptr %5, align 4, !dbg !2296
  br label %194, !dbg !2296

194:                                              ; preds = %192, %140, %112, %27
  %195 = load i32, ptr %5, align 4, !dbg !2297
  ret i32 %195, !dbg !2297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_jpr_destroy(ptr noundef %0) #0 !dbg !2298 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !2302
  %3 = load ptr, ptr %2, align 8, !dbg !2303
  %4 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %3, i32 0, i32 0, !dbg !2304
  %5 = load ptr, ptr %4, align 8, !dbg !2304
  call void @free(ptr noundef %5) #10, !dbg !2305
  %6 = load ptr, ptr %2, align 8, !dbg !2306
  %7 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %6, i32 0, i32 3, !dbg !2307
  %8 = load ptr, ptr %7, align 8, !dbg !2307
  call void @free(ptr noundef %8) #10, !dbg !2308
  %9 = load ptr, ptr %2, align 8, !dbg !2309
  %10 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %9, i32 0, i32 4, !dbg !2310
  %11 = load ptr, ptr %10, align 8, !dbg !2310
  call void @free(ptr noundef %11) #10, !dbg !2311
  %12 = load ptr, ptr %2, align 8, !dbg !2312
  call void @free(ptr noundef %12) #10, !dbg !2313
  ret void, !dbg !2314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonsl_path_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !2315 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2321, metadata !DIExpression()), !dbg !2322
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2323, metadata !DIExpression()), !dbg !2324
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2325, metadata !DIExpression()), !dbg !2326
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2331, metadata !DIExpression()), !dbg !2334
  %13 = load ptr, ptr %8, align 8, !dbg !2335
  %14 = icmp ne ptr %13, null, !dbg !2335
  br i1 %14, label %24, label %15, !dbg !2337

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !dbg !2338
  %17 = load ptr, ptr %7, align 8, !dbg !2340
  %18 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %17, i32 0, i32 0, !dbg !2341
  %19 = load ptr, ptr %18, align 8, !dbg !2341
  %20 = load ptr, ptr %9, align 8, !dbg !2342
  %21 = getelementptr inbounds %struct.jsonsl_state_st, ptr %20, i32 0, i32 0, !dbg !2343
  %22 = load i32, ptr %21, align 8, !dbg !2343
  %23 = call i32 @jsonsl__match_continue(ptr noundef %16, ptr noundef %19, i32 noundef 0, i32 noundef %22), !dbg !2344
  store i32 %23, ptr %6, align 4, !dbg !2345
  br label %74, !dbg !2345

24:                                               ; preds = %5
  %25 = load ptr, ptr %7, align 8, !dbg !2346
  %26 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %25, i32 0, i32 0, !dbg !2347
  %27 = load ptr, ptr %26, align 8, !dbg !2347
  %28 = load ptr, ptr %8, align 8, !dbg !2348
  %29 = getelementptr inbounds %struct.jsonsl_state_st, ptr %28, i32 0, i32 4, !dbg !2349
  %30 = load i32, ptr %29, align 8, !dbg !2349
  %31 = zext i32 %30 to i64, !dbg !2350
  %32 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %27, i64 %31, !dbg !2350
  store ptr %32, ptr %12, align 8, !dbg !2351
  %33 = load ptr, ptr %8, align 8, !dbg !2352
  %34 = getelementptr inbounds %struct.jsonsl_state_st, ptr %33, i32 0, i32 0, !dbg !2354
  %35 = load i32, ptr %34, align 8, !dbg !2354
  %36 = icmp eq i32 %35, 123, !dbg !2355
  br i1 %36, label %37, label %53, !dbg !2356

37:                                               ; preds = %24
  %38 = load ptr, ptr %12, align 8, !dbg !2357
  %39 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %38, i32 0, i32 2, !dbg !2360
  %40 = load i64, ptr %39, align 8, !dbg !2360
  %41 = load i64, ptr %11, align 8, !dbg !2361
  %42 = icmp ne i64 %40, %41, !dbg !2362
  br i1 %42, label %51, label %43, !dbg !2363

43:                                               ; preds = %37
  %44 = load ptr, ptr %10, align 8, !dbg !2364
  %45 = load ptr, ptr %12, align 8, !dbg !2365
  %46 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %45, i32 0, i32 0, !dbg !2366
  %47 = load ptr, ptr %46, align 8, !dbg !2366
  %48 = load i64, ptr %11, align 8, !dbg !2367
  %49 = call i32 @strncmp(ptr noundef %44, ptr noundef %47, i64 noundef %48) #13, !dbg !2368
  %50 = icmp ne i32 %49, 0, !dbg !2369
  br i1 %50, label %51, label %52, !dbg !2370

51:                                               ; preds = %43, %37
  store i32 -1, ptr %6, align 4, !dbg !2371
  br label %74, !dbg !2371

52:                                               ; preds = %43
  br label %64, !dbg !2373

53:                                               ; preds = %24
  %54 = load ptr, ptr %12, align 8, !dbg !2374
  %55 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %54, i32 0, i32 1, !dbg !2377
  %56 = load i64, ptr %55, align 8, !dbg !2377
  %57 = load ptr, ptr %8, align 8, !dbg !2378
  %58 = getelementptr inbounds %struct.jsonsl_state_st, ptr %57, i32 0, i32 5, !dbg !2379
  %59 = load i64, ptr %58, align 8, !dbg !2379
  %60 = sub i64 %59, 1, !dbg !2380
  %61 = icmp ne i64 %56, %60, !dbg !2381
  br i1 %61, label %62, label %63, !dbg !2382

62:                                               ; preds = %53
  store i32 -1, ptr %6, align 4, !dbg !2383
  br label %74, !dbg !2383

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load ptr, ptr %7, align 8, !dbg !2385
  %66 = load ptr, ptr %12, align 8, !dbg !2386
  %67 = load ptr, ptr %8, align 8, !dbg !2387
  %68 = getelementptr inbounds %struct.jsonsl_state_st, ptr %67, i32 0, i32 4, !dbg !2388
  %69 = load i32, ptr %68, align 8, !dbg !2388
  %70 = load ptr, ptr %9, align 8, !dbg !2389
  %71 = getelementptr inbounds %struct.jsonsl_state_st, ptr %70, i32 0, i32 0, !dbg !2390
  %72 = load i32, ptr %71, align 8, !dbg !2390
  %73 = call i32 @jsonsl__match_continue(ptr noundef %65, ptr noundef %66, i32 noundef %69, i32 noundef %72), !dbg !2391
  store i32 %73, ptr %6, align 4, !dbg !2392
  br label %74, !dbg !2392

74:                                               ; preds = %64, %62, %51, %15
  %75 = load i32, ptr %6, align 4, !dbg !2393
  ret i32 %75, !dbg !2393
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__match_continue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2394 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2397, metadata !DIExpression()), !dbg !2398
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2405, metadata !DIExpression()), !dbg !2406
  %11 = load ptr, ptr %7, align 8, !dbg !2407
  %12 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %11, i64 1, !dbg !2408
  store ptr %12, ptr %10, align 8, !dbg !2406
  %13 = load i32, ptr %8, align 4, !dbg !2409
  %14 = zext i32 %13 to i64, !dbg !2409
  %15 = load ptr, ptr %6, align 8, !dbg !2411
  %16 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %15, i32 0, i32 1, !dbg !2412
  %17 = load i64, ptr %16, align 8, !dbg !2412
  %18 = sub i64 %17, 1, !dbg !2413
  %19 = icmp eq i64 %14, %18, !dbg !2414
  br i1 %19, label %20, label %33, !dbg !2415

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 8, !dbg !2416
  %22 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %21, i32 0, i32 2, !dbg !2419
  %23 = load i32, ptr %22, align 8, !dbg !2419
  %24 = icmp eq i32 %23, 0, !dbg !2420
  br i1 %24, label %31, label %25, !dbg !2421

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8, !dbg !2422
  %27 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %26, i32 0, i32 2, !dbg !2423
  %28 = load i32, ptr %27, align 8, !dbg !2423
  %29 = load i32, ptr %9, align 4, !dbg !2424
  %30 = icmp eq i32 %28, %29, !dbg !2425
  br i1 %30, label %31, label %32, !dbg !2426

31:                                               ; preds = %25, %20
  store i32 1, ptr %5, align 4, !dbg !2427
  br label %54, !dbg !2427

32:                                               ; preds = %25
  store i32 -2, ptr %5, align 4, !dbg !2429
  br label %54, !dbg !2429

33:                                               ; preds = %4
  %34 = load i32, ptr %9, align 4, !dbg !2431
  %35 = icmp eq i32 %34, 91, !dbg !2433
  br i1 %35, label %36, label %43, !dbg !2434

36:                                               ; preds = %33
  %37 = load ptr, ptr %10, align 8, !dbg !2435
  %38 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %37, i32 0, i32 3, !dbg !2438
  %39 = load i32, ptr %38, align 8, !dbg !2438
  %40 = icmp eq i32 %39, 3, !dbg !2439
  br i1 %40, label %41, label %42, !dbg !2440

41:                                               ; preds = %36
  store i32 0, ptr %5, align 4, !dbg !2441
  br label %54, !dbg !2441

42:                                               ; preds = %36
  store i32 -2, ptr %5, align 4, !dbg !2443
  br label %54, !dbg !2443

43:                                               ; preds = %33
  %44 = load i32, ptr %9, align 4, !dbg !2445
  %45 = icmp eq i32 %44, 123, !dbg !2447
  br i1 %45, label %46, label %53, !dbg !2448

46:                                               ; preds = %43
  %47 = load ptr, ptr %10, align 8, !dbg !2449
  %48 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %47, i32 0, i32 3, !dbg !2452
  %49 = load i32, ptr %48, align 8, !dbg !2452
  %50 = icmp eq i32 %49, 3, !dbg !2453
  br i1 %50, label %51, label %52, !dbg !2454

51:                                               ; preds = %46
  store i32 -2, ptr %5, align 4, !dbg !2455
  br label %54, !dbg !2455

52:                                               ; preds = %46
  store i32 0, ptr %5, align 4, !dbg !2457
  br label %54, !dbg !2457

53:                                               ; preds = %43
  store i32 -2, ptr %5, align 4, !dbg !2459
  br label %54, !dbg !2459

54:                                               ; preds = %53, %52, %51, %42, %41, %32, %31
  %55 = load i32, ptr %5, align 4, !dbg !2461
  ret i32 %55, !dbg !2461
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonsl_jpr_match(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !2462 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2467, metadata !DIExpression()), !dbg !2468
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2469, metadata !DIExpression()), !dbg !2470
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2477, metadata !DIExpression()), !dbg !2478
  %14 = load ptr, ptr %7, align 8, !dbg !2479
  %15 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %14, i32 0, i32 0, !dbg !2480
  %16 = load ptr, ptr %15, align 8, !dbg !2480
  %17 = load i32, ptr %9, align 4, !dbg !2481
  %18 = zext i32 %17 to i64, !dbg !2482
  %19 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %16, i64 %18, !dbg !2482
  store ptr %19, ptr %13, align 8, !dbg !2483
  %20 = load i32, ptr %9, align 4, !dbg !2484
  %21 = zext i32 %20 to i64, !dbg !2484
  %22 = load ptr, ptr %7, align 8, !dbg !2486
  %23 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %22, i32 0, i32 1, !dbg !2487
  %24 = load i64, ptr %23, align 8, !dbg !2487
  %25 = icmp uge i64 %21, %24, !dbg !2488
  br i1 %25, label %26, label %27, !dbg !2489

26:                                               ; preds = %5
  store i32 -1, ptr %6, align 4, !dbg !2490
  br label %117, !dbg !2490

27:                                               ; preds = %5
  %28 = load i32, ptr %9, align 4, !dbg !2492
  %29 = icmp eq i32 %28, 0, !dbg !2494
  br i1 %29, label %30, label %37, !dbg !2495

30:                                               ; preds = %27
  %31 = load ptr, ptr %7, align 8, !dbg !2496
  %32 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %31, i32 0, i32 1, !dbg !2499
  %33 = load i64, ptr %32, align 8, !dbg !2499
  %34 = icmp eq i64 %33, 1, !dbg !2500
  br i1 %34, label %35, label %36, !dbg !2501

35:                                               ; preds = %30
  store i32 1, ptr %6, align 4, !dbg !2502
  br label %117, !dbg !2502

36:                                               ; preds = %30
  store i32 0, ptr %6, align 4, !dbg !2504
  br label %117, !dbg !2504

37:                                               ; preds = %27
  %38 = load ptr, ptr %13, align 8, !dbg !2506
  %39 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %38, i32 0, i32 3, !dbg !2508
  %40 = load i32, ptr %39, align 8, !dbg !2508
  %41 = icmp eq i32 %40, 2, !dbg !2509
  br i1 %41, label %42, label %52, !dbg !2510

42:                                               ; preds = %37
  %43 = load i32, ptr %9, align 4, !dbg !2511
  %44 = zext i32 %43 to i64, !dbg !2511
  %45 = load ptr, ptr %7, align 8, !dbg !2514
  %46 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %45, i32 0, i32 1, !dbg !2515
  %47 = load i64, ptr %46, align 8, !dbg !2515
  %48 = sub i64 %47, 1, !dbg !2516
  %49 = icmp eq i64 %44, %48, !dbg !2517
  br i1 %49, label %50, label %51, !dbg !2518

50:                                               ; preds = %42
  store i32 1, ptr %6, align 4, !dbg !2519
  br label %117, !dbg !2519

51:                                               ; preds = %42
  store i32 0, ptr %6, align 4, !dbg !2521
  br label %117, !dbg !2521

52:                                               ; preds = %37
  %53 = load ptr, ptr %13, align 8, !dbg !2523
  %54 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %53, i32 0, i32 3, !dbg !2525
  %55 = load i32, ptr %54, align 8, !dbg !2525
  %56 = icmp eq i32 %55, 3, !dbg !2526
  br i1 %56, label %57, label %85, !dbg !2527

57:                                               ; preds = %52
  %58 = load i32, ptr %8, align 4, !dbg !2528
  %59 = icmp eq i32 %58, 91, !dbg !2531
  br i1 %59, label %60, label %77, !dbg !2532

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !dbg !2533
  %62 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %61, i32 0, i32 1, !dbg !2536
  %63 = load i64, ptr %62, align 8, !dbg !2536
  %64 = load i64, ptr %11, align 8, !dbg !2537
  %65 = icmp ne i64 %63, %64, !dbg !2538
  br i1 %65, label %66, label %67, !dbg !2539

66:                                               ; preds = %60
  store i32 -1, ptr %6, align 4, !dbg !2540
  br label %117, !dbg !2540

67:                                               ; preds = %60
  %68 = load i32, ptr %9, align 4, !dbg !2542
  %69 = zext i32 %68 to i64, !dbg !2542
  %70 = load ptr, ptr %7, align 8, !dbg !2545
  %71 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %70, i32 0, i32 1, !dbg !2546
  %72 = load i64, ptr %71, align 8, !dbg !2546
  %73 = sub i64 %72, 1, !dbg !2547
  %74 = icmp eq i64 %69, %73, !dbg !2548
  br i1 %74, label %75, label %76, !dbg !2549

75:                                               ; preds = %67
  store i32 1, ptr %6, align 4, !dbg !2550
  br label %117, !dbg !2550

76:                                               ; preds = %67
  store i32 0, ptr %6, align 4, !dbg !2552
  br label %117, !dbg !2552

77:                                               ; preds = %57
  %78 = load ptr, ptr %13, align 8, !dbg !2554
  %79 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %78, i32 0, i32 4, !dbg !2556
  %80 = load i16, ptr %79, align 4, !dbg !2556
  %81 = icmp ne i16 %80, 0, !dbg !2554
  br i1 %81, label %82, label %83, !dbg !2557

82:                                               ; preds = %77
  store i32 -2, ptr %6, align 4, !dbg !2558
  br label %117, !dbg !2558

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  br label %90, !dbg !2560

85:                                               ; preds = %52
  %86 = load i32, ptr %8, align 4, !dbg !2561
  %87 = icmp eq i32 %86, 91, !dbg !2563
  br i1 %87, label %88, label %89, !dbg !2564

88:                                               ; preds = %85
  store i32 -2, ptr %6, align 4, !dbg !2565
  br label %117, !dbg !2565

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %84
  %91 = load ptr, ptr %13, align 8, !dbg !2567
  %92 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %91, i32 0, i32 2, !dbg !2569
  %93 = load i64, ptr %92, align 8, !dbg !2569
  %94 = load i64, ptr %11, align 8, !dbg !2570
  %95 = icmp ne i64 %93, %94, !dbg !2571
  br i1 %95, label %96, label %97, !dbg !2572

96:                                               ; preds = %90
  store i32 -1, ptr %6, align 4, !dbg !2573
  br label %117, !dbg !2573

97:                                               ; preds = %90
  %98 = load ptr, ptr %13, align 8, !dbg !2575
  %99 = getelementptr inbounds %struct.jsonsl_jpr_component_st, ptr %98, i32 0, i32 0, !dbg !2576
  %100 = load ptr, ptr %99, align 8, !dbg !2576
  %101 = load ptr, ptr %10, align 8, !dbg !2577
  %102 = load i64, ptr %11, align 8, !dbg !2578
  %103 = call i32 @strncmp(ptr noundef %100, ptr noundef %101, i64 noundef %102) #13, !dbg !2579
  store i32 %103, ptr %12, align 4, !dbg !2580
  %104 = load i32, ptr %12, align 4, !dbg !2581
  %105 = icmp eq i32 %104, 0, !dbg !2583
  br i1 %105, label %106, label %116, !dbg !2584

106:                                              ; preds = %97
  %107 = load i32, ptr %9, align 4, !dbg !2585
  %108 = zext i32 %107 to i64, !dbg !2585
  %109 = load ptr, ptr %7, align 8, !dbg !2588
  %110 = getelementptr inbounds %struct.jsonsl_jpr_st, ptr %109, i32 0, i32 1, !dbg !2589
  %111 = load i64, ptr %110, align 8, !dbg !2589
  %112 = sub i64 %111, 1, !dbg !2590
  %113 = icmp eq i64 %108, %112, !dbg !2591
  br i1 %113, label %114, label %115, !dbg !2592

114:                                              ; preds = %106
  store i32 1, ptr %6, align 4, !dbg !2593
  br label %117, !dbg !2593

115:                                              ; preds = %106
  store i32 0, ptr %6, align 4, !dbg !2595
  br label %117, !dbg !2595

116:                                              ; preds = %97
  store i32 -1, ptr %6, align 4, !dbg !2597
  br label %117, !dbg !2597

117:                                              ; preds = %116, %115, %114, %96, %88, %82, %76, %75, %66, %51, %50, %36, %35, %26
  %118 = load i32, ptr %6, align 4, !dbg !2598
  ret i32 %118, !dbg !2598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_jpr_match_state_init(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2599 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2602, metadata !DIExpression()), !dbg !2603
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2604, metadata !DIExpression()), !dbg !2605
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2610, metadata !DIExpression()), !dbg !2611
  %9 = load i64, ptr %6, align 8, !dbg !2612
  %10 = icmp eq i64 %9, 0, !dbg !2614
  br i1 %10, label %11, label %12, !dbg !2615

11:                                               ; preds = %3
  br label %53, !dbg !2616

12:                                               ; preds = %3
  %13 = load i64, ptr %6, align 8, !dbg !2618
  %14 = mul i64 8, %13, !dbg !2619
  %15 = call noalias ptr @malloc(i64 noundef %14) #12, !dbg !2620
  %16 = load ptr, ptr %4, align 8, !dbg !2621
  %17 = getelementptr inbounds %struct.jsonsl_st, ptr %16, i32 0, i32 25, !dbg !2622
  store ptr %15, ptr %17, align 8, !dbg !2623
  %18 = load i64, ptr %6, align 8, !dbg !2624
  %19 = load ptr, ptr %4, align 8, !dbg !2625
  %20 = getelementptr inbounds %struct.jsonsl_st, ptr %19, i32 0, i32 24, !dbg !2626
  store i64 %18, ptr %20, align 8, !dbg !2627
  %21 = load i64, ptr %6, align 8, !dbg !2628
  %22 = mul i64 8, %21, !dbg !2629
  %23 = load ptr, ptr %4, align 8, !dbg !2630
  %24 = getelementptr inbounds %struct.jsonsl_st, ptr %23, i32 0, i32 23, !dbg !2631
  %25 = load i32, ptr %24, align 4, !dbg !2631
  %26 = zext i32 %25 to i64, !dbg !2630
  %27 = mul i64 %22, %26, !dbg !2632
  %28 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %27) #9, !dbg !2633
  %29 = load ptr, ptr %4, align 8, !dbg !2634
  %30 = getelementptr inbounds %struct.jsonsl_st, ptr %29, i32 0, i32 26, !dbg !2635
  store ptr %28, ptr %30, align 8, !dbg !2636
  %31 = load ptr, ptr %4, align 8, !dbg !2637
  %32 = getelementptr inbounds %struct.jsonsl_st, ptr %31, i32 0, i32 25, !dbg !2638
  %33 = load ptr, ptr %32, align 8, !dbg !2638
  %34 = load ptr, ptr %5, align 8, !dbg !2639
  %35 = load i64, ptr %6, align 8, !dbg !2640
  %36 = mul i64 8, %35, !dbg !2641
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 %36, i1 false), !dbg !2642
  %37 = load ptr, ptr %4, align 8, !dbg !2643
  %38 = getelementptr inbounds %struct.jsonsl_st, ptr %37, i32 0, i32 26, !dbg !2644
  %39 = load ptr, ptr %38, align 8, !dbg !2644
  store ptr %39, ptr %8, align 8, !dbg !2645
  store i64 0, ptr %7, align 8, !dbg !2646
  br label %40, !dbg !2648

40:                                               ; preds = %50, %12
  %41 = load i64, ptr %7, align 8, !dbg !2649
  %42 = load i64, ptr %6, align 8, !dbg !2651
  %43 = icmp ult i64 %41, %42, !dbg !2652
  br i1 %43, label %44, label %53, !dbg !2653

44:                                               ; preds = %40
  %45 = load i64, ptr %7, align 8, !dbg !2654
  %46 = add i64 %45, 1, !dbg !2656
  %47 = load ptr, ptr %8, align 8, !dbg !2657
  %48 = load i64, ptr %7, align 8, !dbg !2658
  %49 = getelementptr inbounds i64, ptr %47, i64 %48, !dbg !2657
  store i64 %46, ptr %49, align 8, !dbg !2659
  br label %50, !dbg !2660

50:                                               ; preds = %44
  %51 = load i64, ptr %7, align 8, !dbg !2661
  %52 = add i64 %51, 1, !dbg !2661
  store i64 %52, ptr %7, align 8, !dbg !2661
  br label %40, !dbg !2662, !llvm.loop !2663

53:                                               ; preds = %11, %40
  ret void, !dbg !2665
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsonsl_jpr_match_state_cleanup(ptr noundef %0) #0 !dbg !2666 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2667, metadata !DIExpression()), !dbg !2668
  %3 = load ptr, ptr %2, align 8, !dbg !2669
  %4 = getelementptr inbounds %struct.jsonsl_st, ptr %3, i32 0, i32 24, !dbg !2671
  %5 = load i64, ptr %4, align 8, !dbg !2671
  %6 = icmp eq i64 %5, 0, !dbg !2672
  br i1 %6, label %7, label %8, !dbg !2673

7:                                                ; preds = %1
  br label %21, !dbg !2674

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !2676
  %10 = getelementptr inbounds %struct.jsonsl_st, ptr %9, i32 0, i32 26, !dbg !2677
  %11 = load ptr, ptr %10, align 8, !dbg !2677
  call void @free(ptr noundef %11) #10, !dbg !2678
  %12 = load ptr, ptr %2, align 8, !dbg !2679
  %13 = getelementptr inbounds %struct.jsonsl_st, ptr %12, i32 0, i32 25, !dbg !2680
  %14 = load ptr, ptr %13, align 8, !dbg !2680
  call void @free(ptr noundef %14) #10, !dbg !2681
  %15 = load ptr, ptr %2, align 8, !dbg !2682
  %16 = getelementptr inbounds %struct.jsonsl_st, ptr %15, i32 0, i32 25, !dbg !2683
  store ptr null, ptr %16, align 8, !dbg !2684
  %17 = load ptr, ptr %2, align 8, !dbg !2685
  %18 = getelementptr inbounds %struct.jsonsl_st, ptr %17, i32 0, i32 26, !dbg !2686
  store ptr null, ptr %18, align 8, !dbg !2687
  %19 = load ptr, ptr %2, align 8, !dbg !2688
  %20 = getelementptr inbounds %struct.jsonsl_st, ptr %19, i32 0, i32 24, !dbg !2689
  store i64 0, ptr %20, align 8, !dbg !2690
  br label %21, !dbg !2691

21:                                               ; preds = %8, %7
  ret void, !dbg !2691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_jpr_match_state(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 !dbg !2692 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2696, metadata !DIExpression()), !dbg !2697
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2698, metadata !DIExpression()), !dbg !2699
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i64 %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2702, metadata !DIExpression()), !dbg !2703
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2708, metadata !DIExpression()), !dbg !2709
  store ptr null, ptr %13, align 8, !dbg !2709
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2716, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2718, metadata !DIExpression()), !dbg !2719
  %20 = load ptr, ptr %7, align 8, !dbg !2720
  %21 = getelementptr inbounds %struct.jsonsl_st, ptr %20, i32 0, i32 26, !dbg !2722
  %22 = load ptr, ptr %21, align 8, !dbg !2722
  %23 = icmp ne ptr %22, null, !dbg !2720
  br i1 %23, label %26, label %24, !dbg !2723

24:                                               ; preds = %5
  %25 = load ptr, ptr %11, align 8, !dbg !2724
  store i32 -1, ptr %25, align 4, !dbg !2726
  store ptr null, ptr %6, align 8, !dbg !2727
  br label %141, !dbg !2727

26:                                               ; preds = %5
  %27 = load ptr, ptr %7, align 8, !dbg !2728
  %28 = getelementptr inbounds %struct.jsonsl_st, ptr %27, i32 0, i32 26, !dbg !2729
  %29 = load ptr, ptr %28, align 8, !dbg !2729
  %30 = load ptr, ptr %7, align 8, !dbg !2730
  %31 = getelementptr inbounds %struct.jsonsl_st, ptr %30, i32 0, i32 24, !dbg !2731
  %32 = load i64, ptr %31, align 8, !dbg !2731
  %33 = load ptr, ptr %8, align 8, !dbg !2732
  %34 = getelementptr inbounds %struct.jsonsl_state_st, ptr %33, i32 0, i32 4, !dbg !2733
  %35 = load i32, ptr %34, align 8, !dbg !2733
  %36 = sub i32 %35, 1, !dbg !2734
  %37 = zext i32 %36 to i64, !dbg !2735
  %38 = mul i64 %32, %37, !dbg !2736
  %39 = getelementptr inbounds i64, ptr %29, i64 %38, !dbg !2737
  store ptr %39, ptr %15, align 8, !dbg !2738
  %40 = load ptr, ptr %15, align 8, !dbg !2739
  %41 = load ptr, ptr %7, align 8, !dbg !2740
  %42 = getelementptr inbounds %struct.jsonsl_st, ptr %41, i32 0, i32 24, !dbg !2741
  %43 = load i64, ptr %42, align 8, !dbg !2741
  %44 = getelementptr inbounds i64, ptr %40, i64 %43, !dbg !2742
  store ptr %44, ptr %14, align 8, !dbg !2743
  %45 = load ptr, ptr %15, align 8, !dbg !2744
  %46 = load i64, ptr %45, align 8, !dbg !2746
  %47 = icmp eq i64 %46, 0, !dbg !2747
  br i1 %47, label %48, label %51, !dbg !2748

48:                                               ; preds = %26
  %49 = load ptr, ptr %14, align 8, !dbg !2749
  store i64 0, ptr %49, align 8, !dbg !2751
  %50 = load ptr, ptr %11, align 8, !dbg !2752
  store i32 -1, ptr %50, align 4, !dbg !2753
  store ptr null, ptr %6, align 8, !dbg !2754
  br label %141, !dbg !2754

51:                                               ; preds = %26
  %52 = load ptr, ptr %7, align 8, !dbg !2755
  %53 = getelementptr inbounds %struct.jsonsl_st, ptr %52, i32 0, i32 27, !dbg !2756
  %54 = getelementptr inbounds [1 x %struct.jsonsl_state_st], ptr %53, i64 0, i64 0, !dbg !2755
  %55 = load ptr, ptr %8, align 8, !dbg !2757
  %56 = getelementptr inbounds %struct.jsonsl_state_st, ptr %55, i32 0, i32 4, !dbg !2758
  %57 = load i32, ptr %56, align 8, !dbg !2758
  %58 = zext i32 %57 to i64, !dbg !2759
  %59 = getelementptr inbounds %struct.jsonsl_state_st, ptr %54, i64 %58, !dbg !2759
  %60 = getelementptr inbounds %struct.jsonsl_state_st, ptr %59, i64 -1, !dbg !2760
  store ptr %60, ptr %12, align 8, !dbg !2761
  %61 = load ptr, ptr %12, align 8, !dbg !2762
  %62 = getelementptr inbounds %struct.jsonsl_state_st, ptr %61, i32 0, i32 0, !dbg !2764
  %63 = load i32, ptr %62, align 8, !dbg !2764
  %64 = icmp eq i32 %63, 91, !dbg !2765
  br i1 %64, label %65, label %69, !dbg !2766

65:                                               ; preds = %51
  %66 = load ptr, ptr %12, align 8, !dbg !2767
  %67 = getelementptr inbounds %struct.jsonsl_state_st, ptr %66, i32 0, i32 5, !dbg !2769
  %68 = load i64, ptr %67, align 8, !dbg !2769
  store i64 %68, ptr %10, align 8, !dbg !2770
  br label %69, !dbg !2771

69:                                               ; preds = %65, %51
  %70 = load ptr, ptr %14, align 8, !dbg !2772
  store i64 0, ptr %70, align 8, !dbg !2773
  store i64 0, ptr %18, align 8, !dbg !2774
  %71 = load ptr, ptr %14, align 8, !dbg !2775
  %72 = load ptr, ptr %7, align 8, !dbg !2776
  %73 = getelementptr inbounds %struct.jsonsl_st, ptr %72, i32 0, i32 24, !dbg !2777
  %74 = load i64, ptr %73, align 8, !dbg !2777
  %75 = mul i64 4, %74, !dbg !2778
  call void @llvm.memset.p0.i64(ptr align 8 %71, i8 0, i64 %75, i1 false), !dbg !2779
  store i64 0, ptr %17, align 8, !dbg !2780
  br label %76, !dbg !2782

76:                                               ; preds = %131, %69
  %77 = load i64, ptr %17, align 8, !dbg !2783
  %78 = load ptr, ptr %7, align 8, !dbg !2785
  %79 = getelementptr inbounds %struct.jsonsl_st, ptr %78, i32 0, i32 24, !dbg !2786
  %80 = load i64, ptr %79, align 8, !dbg !2786
  %81 = icmp ult i64 %77, %80, !dbg !2787
  br i1 %81, label %82, label %134, !dbg !2788

82:                                               ; preds = %76
  %83 = load ptr, ptr %15, align 8, !dbg !2789
  %84 = load i64, ptr %17, align 8, !dbg !2791
  %85 = getelementptr inbounds i64, ptr %83, i64 %84, !dbg !2789
  %86 = load i64, ptr %85, align 8, !dbg !2789
  store i64 %86, ptr %16, align 8, !dbg !2792
  %87 = load i64, ptr %16, align 8, !dbg !2793
  %88 = icmp ne i64 %87, 0, !dbg !2793
  br i1 %88, label %89, label %129, !dbg !2795

89:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2796, metadata !DIExpression()), !dbg !2798
  %90 = load ptr, ptr %7, align 8, !dbg !2799
  %91 = getelementptr inbounds %struct.jsonsl_st, ptr %90, i32 0, i32 25, !dbg !2800
  %92 = load ptr, ptr %91, align 8, !dbg !2800
  %93 = load i64, ptr %16, align 8, !dbg !2801
  %94 = sub i64 %93, 1, !dbg !2802
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94, !dbg !2799
  %96 = load ptr, ptr %95, align 8, !dbg !2799
  store ptr %96, ptr %19, align 8, !dbg !2798
  %97 = load ptr, ptr %19, align 8, !dbg !2803
  %98 = load ptr, ptr %12, align 8, !dbg !2804
  %99 = getelementptr inbounds %struct.jsonsl_state_st, ptr %98, i32 0, i32 0, !dbg !2805
  %100 = load i32, ptr %99, align 8, !dbg !2805
  %101 = load ptr, ptr %12, align 8, !dbg !2806
  %102 = getelementptr inbounds %struct.jsonsl_state_st, ptr %101, i32 0, i32 4, !dbg !2807
  %103 = load i32, ptr %102, align 8, !dbg !2807
  %104 = load ptr, ptr %9, align 8, !dbg !2808
  %105 = load i64, ptr %10, align 8, !dbg !2809
  %106 = call i32 @jsonsl_jpr_match(ptr noundef %97, i32 noundef %100, i32 noundef %103, ptr noundef %104, i64 noundef %105), !dbg !2810
  %107 = load ptr, ptr %11, align 8, !dbg !2811
  store i32 %106, ptr %107, align 4, !dbg !2812
  %108 = load ptr, ptr %11, align 8, !dbg !2813
  %109 = load i32, ptr %108, align 4, !dbg !2815
  %110 = icmp eq i32 %109, 1, !dbg !2816
  br i1 %110, label %111, label %115, !dbg !2817

111:                                              ; preds = %89
  %112 = load ptr, ptr %19, align 8, !dbg !2818
  store ptr %112, ptr %13, align 8, !dbg !2820
  %113 = load ptr, ptr %14, align 8, !dbg !2821
  store i64 0, ptr %113, align 8, !dbg !2822
  %114 = load ptr, ptr %13, align 8, !dbg !2823
  store ptr %114, ptr %6, align 8, !dbg !2824
  br label %141, !dbg !2824

115:                                              ; preds = %89
  %116 = load ptr, ptr %11, align 8, !dbg !2825
  %117 = load i32, ptr %116, align 4, !dbg !2827
  %118 = icmp eq i32 %117, 0, !dbg !2828
  br i1 %118, label %119, label %127, !dbg !2829

119:                                              ; preds = %115
  %120 = load i64, ptr %17, align 8, !dbg !2830
  %121 = add i64 %120, 1, !dbg !2832
  %122 = load ptr, ptr %14, align 8, !dbg !2833
  %123 = load i64, ptr %18, align 8, !dbg !2834
  %124 = getelementptr inbounds i64, ptr %122, i64 %123, !dbg !2833
  store i64 %121, ptr %124, align 8, !dbg !2835
  %125 = load i64, ptr %18, align 8, !dbg !2836
  %126 = add i64 %125, 1, !dbg !2836
  store i64 %126, ptr %18, align 8, !dbg !2836
  br label %127, !dbg !2837

127:                                              ; preds = %119, %115
  br label %128

128:                                              ; preds = %127
  br label %130, !dbg !2838

129:                                              ; preds = %82
  br label %134, !dbg !2839

130:                                              ; preds = %128
  br label %131, !dbg !2841

131:                                              ; preds = %130
  %132 = load i64, ptr %17, align 8, !dbg !2842
  %133 = add i64 %132, 1, !dbg !2842
  store i64 %133, ptr %17, align 8, !dbg !2842
  br label %76, !dbg !2843, !llvm.loop !2844

134:                                              ; preds = %129, %76
  %135 = load ptr, ptr %14, align 8, !dbg !2846
  %136 = load i64, ptr %135, align 8, !dbg !2848
  %137 = icmp ne i64 %136, 0, !dbg !2848
  br i1 %137, label %140, label %138, !dbg !2849

138:                                              ; preds = %134
  %139 = load ptr, ptr %11, align 8, !dbg !2850
  store i32 -1, ptr %139, align 4, !dbg !2852
  br label %140, !dbg !2853

140:                                              ; preds = %138, %134
  store ptr null, ptr %6, align 8, !dbg !2854
  br label %141, !dbg !2854

141:                                              ; preds = %140, %111, %48, %24
  %142 = load ptr, ptr %6, align 8, !dbg !2855
  ret ptr %142, !dbg !2855
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @jsonsl_strmatchtype(i32 noundef %0) #0 !dbg !2856 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2859, metadata !DIExpression()), !dbg !2860
  %4 = load i32, ptr %3, align 4, !dbg !2861
  %5 = icmp eq i32 %4, 1, !dbg !2861
  br i1 %5, label %6, label %7, !dbg !2863

6:                                                ; preds = %1
  store ptr @.str.37, ptr %2, align 8, !dbg !2861
  br label %20, !dbg !2861

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !2864
  %9 = icmp eq i32 %8, 0, !dbg !2864
  br i1 %9, label %10, label %11, !dbg !2863

10:                                               ; preds = %7
  store ptr @.str.38, ptr %2, align 8, !dbg !2864
  br label %20, !dbg !2864

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !2866
  %13 = icmp eq i32 %12, -1, !dbg !2866
  br i1 %13, label %14, label %15, !dbg !2863

14:                                               ; preds = %11
  store ptr @.str.39, ptr %2, align 8, !dbg !2866
  br label %20, !dbg !2866

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4, !dbg !2868
  %17 = icmp eq i32 %16, -2, !dbg !2868
  br i1 %17, label %18, label %19, !dbg !2863

18:                                               ; preds = %15
  store ptr @.str.40, ptr %2, align 8, !dbg !2868
  br label %20, !dbg !2868

19:                                               ; preds = %15
  store ptr @.str.41, ptr %2, align 8, !dbg !2870
  br label %20, !dbg !2870

20:                                               ; preds = %19, %18, %14, %10, %6
  %21 = load ptr, ptr %2, align 8, !dbg !2871
  ret ptr %21, !dbg !2871
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jsonsl_util_unescape_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !2872 {
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2878, metadata !DIExpression()), !dbg !2879
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i64 %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2882, metadata !DIExpression()), !dbg !2883
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2884, metadata !DIExpression()), !dbg !2885
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2886, metadata !DIExpression()), !dbg !2887
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2888, metadata !DIExpression()), !dbg !2889
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2892, metadata !DIExpression()), !dbg !2893
  %25 = load ptr, ptr %9, align 8, !dbg !2894
  store ptr %25, ptr %16, align 8, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2895, metadata !DIExpression()), !dbg !2896
  %26 = load ptr, ptr %10, align 8, !dbg !2897
  store ptr %26, ptr %17, align 8, !dbg !2896
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i16 0, ptr %19, align 2, !dbg !2901
  %27 = load ptr, ptr %13, align 8, !dbg !2902
  %28 = icmp ne ptr %27, null, !dbg !2902
  br i1 %28, label %30, label %29, !dbg !2904

29:                                               ; preds = %7
  store ptr %18, ptr %13, align 8, !dbg !2905
  br label %30, !dbg !2907

30:                                               ; preds = %29, %7
  %31 = load ptr, ptr %13, align 8, !dbg !2908
  store i32 0, ptr %31, align 4, !dbg !2909
  br label %32, !dbg !2910

32:                                               ; preds = %239, %30
  %33 = load i64, ptr %11, align 8, !dbg !2911
  %34 = icmp ne i64 %33, 0, !dbg !2914
  br i1 %34, label %35, label %246, !dbg !2914

35:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2915, metadata !DIExpression()), !dbg !2917
  %36 = load ptr, ptr %16, align 8, !dbg !2918
  %37 = load i8, ptr %36, align 1, !dbg !2920
  %38 = zext i8 %37 to i32, !dbg !2920
  %39 = icmp ne i32 %38, 92, !dbg !2921
  br i1 %39, label %40, label %41, !dbg !2922

40:                                               ; preds = %35
  br label %235, !dbg !2923

41:                                               ; preds = %35
  %42 = load i64, ptr %11, align 8, !dbg !2925
  %43 = icmp ult i64 %42, 2, !dbg !2927
  br i1 %43, label %44, label %53, !dbg !2928

44:                                               ; preds = %41
  %45 = load ptr, ptr %14, align 8, !dbg !2929
  store i32 16, ptr %45, align 4, !dbg !2929
  %46 = load ptr, ptr %15, align 8, !dbg !2931
  %47 = icmp ne ptr %46, null, !dbg !2931
  br i1 %47, label %48, label %52, !dbg !2929

48:                                               ; preds = %44
  %49 = load ptr, ptr %16, align 8, !dbg !2933
  %50 = getelementptr inbounds i8, ptr %49, i64 0, !dbg !2933
  %51 = load ptr, ptr %15, align 8, !dbg !2933
  store ptr %50, ptr %51, align 8, !dbg !2933
  br label %52, !dbg !2933

52:                                               ; preds = %48, %44
  store i64 0, ptr %8, align 8, !dbg !2929
  br label %258, !dbg !2929

53:                                               ; preds = %41
  %54 = load ptr, ptr %16, align 8, !dbg !2935
  %55 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !2935
  %56 = load i8, ptr %55, align 1, !dbg !2935
  %57 = zext i8 %56 to i32, !dbg !2935
  %58 = call i32 @is_allowed_escape(i32 noundef %57), !dbg !2937
  %59 = icmp ne i32 %58, 0, !dbg !2937
  br i1 %59, label %69, label %60, !dbg !2938

60:                                               ; preds = %53
  %61 = load ptr, ptr %14, align 8, !dbg !2939
  store i32 16, ptr %61, align 4, !dbg !2939
  %62 = load ptr, ptr %15, align 8, !dbg !2941
  %63 = icmp ne ptr %62, null, !dbg !2941
  br i1 %63, label %64, label %68, !dbg !2939

64:                                               ; preds = %60
  %65 = load ptr, ptr %16, align 8, !dbg !2943
  %66 = getelementptr inbounds i8, ptr %65, i64 1, !dbg !2943
  %67 = load ptr, ptr %15, align 8, !dbg !2943
  store ptr %66, ptr %67, align 8, !dbg !2943
  br label %68, !dbg !2943

68:                                               ; preds = %64, %60
  store i64 0, ptr %8, align 8, !dbg !2939
  br label %258, !dbg !2939

69:                                               ; preds = %53
  %70 = load ptr, ptr %12, align 8, !dbg !2945
  %71 = icmp ne ptr %70, null, !dbg !2945
  br i1 %71, label %72, label %103, !dbg !2947

72:                                               ; preds = %69
  %73 = load ptr, ptr %12, align 8, !dbg !2948
  %74 = load ptr, ptr %16, align 8, !dbg !2949
  %75 = getelementptr inbounds i8, ptr %74, i64 1, !dbg !2949
  %76 = load i8, ptr %75, align 1, !dbg !2949
  %77 = zext i8 %76 to i32, !dbg !2950
  %78 = and i32 %77, 127, !dbg !2951
  %79 = sext i32 %78 to i64, !dbg !2948
  %80 = getelementptr inbounds i32, ptr %73, i64 %79, !dbg !2948
  %81 = load i32, ptr %80, align 4, !dbg !2948
  %82 = icmp eq i32 %81, 0, !dbg !2952
  br i1 %82, label %83, label %103, !dbg !2953

83:                                               ; preds = %72
  %84 = load ptr, ptr %16, align 8, !dbg !2954
  %85 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !2954
  %86 = load i8, ptr %85, align 1, !dbg !2954
  %87 = zext i8 %86 to i32, !dbg !2954
  %88 = icmp ne i32 %87, 92, !dbg !2955
  br i1 %88, label %89, label %103, !dbg !2956

89:                                               ; preds = %83
  %90 = load ptr, ptr %16, align 8, !dbg !2957
  %91 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !2957
  %92 = load i8, ptr %91, align 1, !dbg !2957
  %93 = zext i8 %92 to i32, !dbg !2957
  %94 = icmp ne i32 %93, 34, !dbg !2958
  br i1 %94, label %95, label %103, !dbg !2959

95:                                               ; preds = %89
  %96 = load ptr, ptr %16, align 8, !dbg !2960
  %97 = getelementptr inbounds i8, ptr %96, i32 1, !dbg !2960
  store ptr %97, ptr %16, align 8, !dbg !2960
  %98 = load i8, ptr %96, align 1, !dbg !2962
  %99 = load ptr, ptr %10, align 8, !dbg !2963
  %100 = getelementptr inbounds i8, ptr %99, i32 1, !dbg !2963
  store ptr %100, ptr %10, align 8, !dbg !2963
  store i8 %98, ptr %99, align 1, !dbg !2964
  %101 = load i64, ptr %11, align 8, !dbg !2965
  %102 = add i64 %101, -1, !dbg !2965
  store i64 %102, ptr %11, align 8, !dbg !2965
  br label %235, !dbg !2966

103:                                              ; preds = %89, %83, %72, %69
  %104 = load ptr, ptr %16, align 8, !dbg !2967
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !2967
  %106 = load i8, ptr %105, align 1, !dbg !2967
  %107 = zext i8 %106 to i32, !dbg !2967
  %108 = icmp ne i32 %107, 117, !dbg !2969
  br i1 %108, label %109, label %130, !dbg !2970

109:                                              ; preds = %103
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2971, metadata !DIExpression()), !dbg !2973
  %110 = load ptr, ptr %16, align 8, !dbg !2974
  %111 = getelementptr inbounds i8, ptr %110, i64 1, !dbg !2974
  %112 = load i8, ptr %111, align 1, !dbg !2974
  %113 = zext i8 %112 to i32, !dbg !2974
  %114 = call signext i8 @get_escape_equiv(i32 noundef %113), !dbg !2975
  store i8 %114, ptr %21, align 1, !dbg !2973
  %115 = load i8, ptr %21, align 1, !dbg !2976
  %116 = icmp ne i8 %115, 0, !dbg !2976
  br i1 %116, label %117, label %120, !dbg !2978

117:                                              ; preds = %109
  %118 = load i8, ptr %21, align 1, !dbg !2979
  %119 = load ptr, ptr %10, align 8, !dbg !2981
  store i8 %118, ptr %119, align 1, !dbg !2982
  br label %125, !dbg !2983

120:                                              ; preds = %109
  %121 = load ptr, ptr %16, align 8, !dbg !2984
  %122 = getelementptr inbounds i8, ptr %121, i64 1, !dbg !2984
  %123 = load i8, ptr %122, align 1, !dbg !2984
  %124 = load ptr, ptr %10, align 8, !dbg !2986
  store i8 %123, ptr %124, align 1, !dbg !2987
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i64, ptr %11, align 8, !dbg !2988
  %127 = add i64 %126, -1, !dbg !2988
  store i64 %127, ptr %11, align 8, !dbg !2988
  %128 = load ptr, ptr %16, align 8, !dbg !2989
  %129 = getelementptr inbounds i8, ptr %128, i32 1, !dbg !2989
  store ptr %129, ptr %16, align 8, !dbg !2989
  br label %239, !dbg !2990

130:                                              ; preds = %103
  %131 = load i64, ptr %11, align 8, !dbg !2991
  %132 = icmp ult i64 %131, 6, !dbg !2993
  br i1 %132, label %133, label %142, !dbg !2994

133:                                              ; preds = %130
  %134 = load ptr, ptr %14, align 8, !dbg !2995
  store i32 15, ptr %134, align 4, !dbg !2995
  %135 = load ptr, ptr %15, align 8, !dbg !2997
  %136 = icmp ne ptr %135, null, !dbg !2997
  br i1 %136, label %137, label %141, !dbg !2995

137:                                              ; preds = %133
  %138 = load ptr, ptr %16, align 8, !dbg !2999
  %139 = getelementptr inbounds i8, ptr %138, i64 2, !dbg !2999
  %140 = load ptr, ptr %15, align 8, !dbg !2999
  store ptr %139, ptr %140, align 8, !dbg !2999
  br label %141, !dbg !2999

141:                                              ; preds = %137, %133
  store i64 0, ptr %8, align 8, !dbg !2995
  br label %258, !dbg !2995

142:                                              ; preds = %130
  %143 = load ptr, ptr %16, align 8, !dbg !3001
  %144 = getelementptr inbounds i8, ptr %143, i64 2, !dbg !3002
  %145 = call i32 @jsonsl__get_uescape_16(ptr noundef %144), !dbg !3003
  store i32 %145, ptr %20, align 4, !dbg !3004
  %146 = load i32, ptr %20, align 4, !dbg !3005
  %147 = icmp eq i32 %146, -1, !dbg !3007
  br i1 %147, label %148, label %157, !dbg !3008

148:                                              ; preds = %142
  %149 = load ptr, ptr %14, align 8, !dbg !3009
  store i32 20, ptr %149, align 4, !dbg !3009
  %150 = load ptr, ptr %15, align 8, !dbg !3011
  %151 = icmp ne ptr %150, null, !dbg !3011
  br i1 %151, label %152, label %156, !dbg !3009

152:                                              ; preds = %148
  %153 = load ptr, ptr %16, align 8, !dbg !3013
  %154 = getelementptr inbounds i8, ptr %153, i64 -1, !dbg !3013
  %155 = load ptr, ptr %15, align 8, !dbg !3013
  store ptr %154, ptr %155, align 8, !dbg !3013
  br label %156, !dbg !3013

156:                                              ; preds = %152, %148
  store i64 0, ptr %8, align 8, !dbg !3009
  br label %258, !dbg !3009

157:                                              ; preds = %142
  %158 = load i16, ptr %19, align 2, !dbg !3015
  %159 = icmp ne i16 %158, 0, !dbg !3015
  br i1 %159, label %160, label %194, !dbg !3017

160:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3018, metadata !DIExpression()), !dbg !3020
  %161 = load i16, ptr %19, align 2, !dbg !3021
  store i16 %161, ptr %22, align 2, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3022, metadata !DIExpression()), !dbg !3023
  %162 = load i32, ptr %20, align 4, !dbg !3024
  %163 = trunc i32 %162 to i16, !dbg !3025
  store i16 %163, ptr %23, align 2, !dbg !3023
  call void @llvm.dbg.declare(metadata ptr %24, metadata !3026, metadata !DIExpression()), !dbg !3029
  %164 = load i32, ptr %20, align 4, !dbg !3030
  %165 = icmp slt i32 %164, 56320, !dbg !3032
  br i1 %165, label %169, label %166, !dbg !3033

166:                                              ; preds = %160
  %167 = load i32, ptr %20, align 4, !dbg !3034
  %168 = icmp sgt i32 %167, 57343, !dbg !3035
  br i1 %168, label %169, label %178, !dbg !3036

169:                                              ; preds = %166, %160
  %170 = load ptr, ptr %14, align 8, !dbg !3037
  store i32 25, ptr %170, align 4, !dbg !3037
  %171 = load ptr, ptr %15, align 8, !dbg !3039
  %172 = icmp ne ptr %171, null, !dbg !3039
  br i1 %172, label %173, label %177, !dbg !3037

173:                                              ; preds = %169
  %174 = load ptr, ptr %16, align 8, !dbg !3041
  %175 = getelementptr inbounds i8, ptr %174, i64 -1, !dbg !3041
  %176 = load ptr, ptr %15, align 8, !dbg !3041
  store ptr %175, ptr %176, align 8, !dbg !3041
  br label %177, !dbg !3041

177:                                              ; preds = %173, %169
  store i64 0, ptr %8, align 8, !dbg !3037
  br label %258, !dbg !3037

178:                                              ; preds = %166
  %179 = load i16, ptr %22, align 2, !dbg !3043
  %180 = zext i16 %179 to i32, !dbg !3043
  %181 = and i32 %180, 1023, !dbg !3044
  %182 = shl i32 %181, 10, !dbg !3045
  store i32 %182, ptr %24, align 4, !dbg !3046
  %183 = load i16, ptr %23, align 2, !dbg !3047
  %184 = zext i16 %183 to i32, !dbg !3047
  %185 = and i32 %184, 1023, !dbg !3048
  %186 = load i32, ptr %24, align 4, !dbg !3049
  %187 = or i32 %186, %185, !dbg !3049
  store i32 %187, ptr %24, align 4, !dbg !3049
  %188 = load i32, ptr %24, align 4, !dbg !3050
  %189 = add i32 %188, 65536, !dbg !3050
  store i32 %189, ptr %24, align 4, !dbg !3050
  %190 = load i32, ptr %24, align 4, !dbg !3051
  %191 = load ptr, ptr %10, align 8, !dbg !3052
  %192 = call ptr @jsonsl__writeutf8(i32 noundef %190, ptr noundef %191), !dbg !3053
  %193 = getelementptr inbounds i8, ptr %192, i64 -1, !dbg !3054
  store ptr %193, ptr %10, align 8, !dbg !3055
  store i16 0, ptr %19, align 2, !dbg !3056
  br label %230, !dbg !3057

194:                                              ; preds = %157
  %195 = load i32, ptr %20, align 4, !dbg !3058
  %196 = icmp slt i32 %195, 55296, !dbg !3060
  br i1 %196, label %200, label %197, !dbg !3061

197:                                              ; preds = %194
  %198 = load i32, ptr %20, align 4, !dbg !3062
  %199 = icmp sgt i32 %198, 57343, !dbg !3063
  br i1 %199, label %200, label %208, !dbg !3064

200:                                              ; preds = %197, %194
  %201 = load ptr, ptr %13, align 8, !dbg !3065
  %202 = load i32, ptr %201, align 4, !dbg !3067
  %203 = or i32 %202, 128, !dbg !3067
  store i32 %203, ptr %201, align 4, !dbg !3067
  %204 = load i32, ptr %20, align 4, !dbg !3068
  %205 = load ptr, ptr %10, align 8, !dbg !3069
  %206 = call ptr @jsonsl__writeutf8(i32 noundef %204, ptr noundef %205), !dbg !3070
  %207 = getelementptr inbounds i8, ptr %206, i64 -1, !dbg !3071
  store ptr %207, ptr %10, align 8, !dbg !3072
  br label %229, !dbg !3073

208:                                              ; preds = %197
  %209 = load i32, ptr %20, align 4, !dbg !3074
  %210 = icmp slt i32 %209, 56320, !dbg !3076
  br i1 %210, label %211, label %219, !dbg !3077

211:                                              ; preds = %208
  %212 = load ptr, ptr %13, align 8, !dbg !3078
  %213 = load i32, ptr %212, align 4, !dbg !3080
  %214 = or i32 %213, 128, !dbg !3080
  store i32 %214, ptr %212, align 4, !dbg !3080
  %215 = load i32, ptr %20, align 4, !dbg !3081
  %216 = trunc i32 %215 to i16, !dbg !3082
  store i16 %216, ptr %19, align 2, !dbg !3083
  %217 = load ptr, ptr %10, align 8, !dbg !3084
  %218 = getelementptr inbounds i8, ptr %217, i32 -1, !dbg !3084
  store ptr %218, ptr %10, align 8, !dbg !3084
  br label %228, !dbg !3085

219:                                              ; preds = %208
  %220 = load ptr, ptr %14, align 8, !dbg !3086
  store i32 25, ptr %220, align 4, !dbg !3086
  %221 = load ptr, ptr %15, align 8, !dbg !3088
  %222 = icmp ne ptr %221, null, !dbg !3088
  br i1 %222, label %223, label %227, !dbg !3086

223:                                              ; preds = %219
  %224 = load ptr, ptr %16, align 8, !dbg !3090
  %225 = getelementptr inbounds i8, ptr %224, i64 2, !dbg !3090
  %226 = load ptr, ptr %15, align 8, !dbg !3090
  store ptr %225, ptr %226, align 8, !dbg !3090
  br label %227, !dbg !3090

227:                                              ; preds = %223, %219
  store i64 0, ptr %8, align 8, !dbg !3086
  br label %258, !dbg !3086

228:                                              ; preds = %211
  br label %229

229:                                              ; preds = %228, %200
  br label %230

230:                                              ; preds = %229, %178
  %231 = load i64, ptr %11, align 8, !dbg !3092
  %232 = sub i64 %231, 5, !dbg !3092
  store i64 %232, ptr %11, align 8, !dbg !3092
  %233 = load ptr, ptr %16, align 8, !dbg !3093
  %234 = getelementptr inbounds i8, ptr %233, i64 5, !dbg !3093
  store ptr %234, ptr %16, align 8, !dbg !3093
  br label %239, !dbg !3094

235:                                              ; preds = %95, %40
  call void @llvm.dbg.label(metadata !3095), !dbg !3096
  %236 = load ptr, ptr %16, align 8, !dbg !3097
  %237 = load i8, ptr %236, align 1, !dbg !3098
  %238 = load ptr, ptr %10, align 8, !dbg !3099
  store i8 %237, ptr %238, align 1, !dbg !3100
  br label %239, !dbg !3101

239:                                              ; preds = %235, %230, %125
  %240 = load i64, ptr %11, align 8, !dbg !3102
  %241 = add i64 %240, -1, !dbg !3102
  store i64 %241, ptr %11, align 8, !dbg !3102
  %242 = load ptr, ptr %16, align 8, !dbg !3103
  %243 = getelementptr inbounds i8, ptr %242, i32 1, !dbg !3103
  store ptr %243, ptr %16, align 8, !dbg !3103
  %244 = load ptr, ptr %10, align 8, !dbg !3104
  %245 = getelementptr inbounds i8, ptr %244, i32 1, !dbg !3104
  store ptr %245, ptr %10, align 8, !dbg !3104
  br label %32, !dbg !3105, !llvm.loop !3106

246:                                              ; preds = %32
  %247 = load i16, ptr %19, align 2, !dbg !3108
  %248 = icmp ne i16 %247, 0, !dbg !3108
  br i1 %248, label %249, label %251, !dbg !3110

249:                                              ; preds = %246
  %250 = load ptr, ptr %14, align 8, !dbg !3111
  store i32 25, ptr %250, align 4, !dbg !3113
  store i64 0, ptr %8, align 8, !dbg !3114
  br label %258, !dbg !3114

251:                                              ; preds = %246
  %252 = load ptr, ptr %14, align 8, !dbg !3115
  store i32 0, ptr %252, align 4, !dbg !3116
  %253 = load ptr, ptr %10, align 8, !dbg !3117
  %254 = load ptr, ptr %17, align 8, !dbg !3118
  %255 = ptrtoint ptr %253 to i64, !dbg !3119
  %256 = ptrtoint ptr %254 to i64, !dbg !3119
  %257 = sub i64 %255, %256, !dbg !3119
  store i64 %257, ptr %8, align 8, !dbg !3120
  br label %258, !dbg !3120

258:                                              ; preds = %251, %249, %227, %177, %156, %141, %68, %52
  %259 = load i64, ptr %8, align 8, !dbg !3121
  ret i64 %259, !dbg !3121
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_escape_equiv(i32 noundef %0) #0 !dbg !3122 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3125, metadata !DIExpression()), !dbg !3126
  %3 = load i32, ptr %2, align 4, !dbg !3127
  %4 = and i32 %3, 255, !dbg !3128
  %5 = zext i32 %4 to i64, !dbg !3129
  %6 = getelementptr inbounds [256 x i8], ptr @Escape_Equivs, i64 0, i64 %5, !dbg !3129
  %7 = load i8, ptr %6, align 1, !dbg !3129
  ret i8 %7, !dbg !3130
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__get_uescape_16(ptr noundef %0) #0 !dbg !3131 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3136, metadata !DIExpression()), !dbg !3137
  store i32 0, ptr %4, align 4, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3138, metadata !DIExpression()), !dbg !3139
  %6 = load ptr, ptr %3, align 8, !dbg !3140
  %7 = getelementptr inbounds i8, ptr %6, i64 0, !dbg !3140
  %8 = load i8, ptr %7, align 1, !dbg !3140
  %9 = call i32 @jsonsl__digit2int(i8 noundef signext %8), !dbg !3140
  store i32 %9, ptr %5, align 4, !dbg !3140
  %10 = load i32, ptr %5, align 4, !dbg !3141
  %11 = icmp eq i32 %10, -1, !dbg !3141
  br i1 %11, label %12, label %13, !dbg !3140

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !3143
  br label %55, !dbg !3143

13:                                               ; preds = %1
  %14 = load i32, ptr %5, align 4, !dbg !3140
  %15 = shl i32 %14, 12, !dbg !3140
  %16 = load i32, ptr %4, align 4, !dbg !3140
  %17 = or i32 %16, %15, !dbg !3140
  store i32 %17, ptr %4, align 4, !dbg !3140
  %18 = load ptr, ptr %3, align 8, !dbg !3145
  %19 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !3145
  %20 = load i8, ptr %19, align 1, !dbg !3145
  %21 = call i32 @jsonsl__digit2int(i8 noundef signext %20), !dbg !3145
  store i32 %21, ptr %5, align 4, !dbg !3145
  %22 = load i32, ptr %5, align 4, !dbg !3146
  %23 = icmp eq i32 %22, -1, !dbg !3146
  br i1 %23, label %24, label %25, !dbg !3145

24:                                               ; preds = %13
  store i32 -1, ptr %2, align 4, !dbg !3148
  br label %55, !dbg !3148

25:                                               ; preds = %13
  %26 = load i32, ptr %5, align 4, !dbg !3145
  %27 = shl i32 %26, 8, !dbg !3145
  %28 = load i32, ptr %4, align 4, !dbg !3145
  %29 = or i32 %28, %27, !dbg !3145
  store i32 %29, ptr %4, align 4, !dbg !3145
  %30 = load ptr, ptr %3, align 8, !dbg !3150
  %31 = getelementptr inbounds i8, ptr %30, i64 2, !dbg !3150
  %32 = load i8, ptr %31, align 1, !dbg !3150
  %33 = call i32 @jsonsl__digit2int(i8 noundef signext %32), !dbg !3150
  store i32 %33, ptr %5, align 4, !dbg !3150
  %34 = load i32, ptr %5, align 4, !dbg !3151
  %35 = icmp eq i32 %34, -1, !dbg !3151
  br i1 %35, label %36, label %37, !dbg !3150

36:                                               ; preds = %25
  store i32 -1, ptr %2, align 4, !dbg !3153
  br label %55, !dbg !3153

37:                                               ; preds = %25
  %38 = load i32, ptr %5, align 4, !dbg !3150
  %39 = shl i32 %38, 4, !dbg !3150
  %40 = load i32, ptr %4, align 4, !dbg !3150
  %41 = or i32 %40, %39, !dbg !3150
  store i32 %41, ptr %4, align 4, !dbg !3150
  %42 = load ptr, ptr %3, align 8, !dbg !3155
  %43 = getelementptr inbounds i8, ptr %42, i64 3, !dbg !3155
  %44 = load i8, ptr %43, align 1, !dbg !3155
  %45 = call i32 @jsonsl__digit2int(i8 noundef signext %44), !dbg !3155
  store i32 %45, ptr %5, align 4, !dbg !3155
  %46 = load i32, ptr %5, align 4, !dbg !3156
  %47 = icmp eq i32 %46, -1, !dbg !3156
  br i1 %47, label %48, label %49, !dbg !3155

48:                                               ; preds = %37
  store i32 -1, ptr %2, align 4, !dbg !3158
  br label %55, !dbg !3158

49:                                               ; preds = %37
  %50 = load i32, ptr %5, align 4, !dbg !3155
  %51 = shl i32 %50, 0, !dbg !3155
  %52 = load i32, ptr %4, align 4, !dbg !3155
  %53 = or i32 %52, %51, !dbg !3155
  store i32 %53, ptr %4, align 4, !dbg !3155
  %54 = load i32, ptr %4, align 4, !dbg !3160
  store i32 %54, ptr %2, align 4, !dbg !3161
  br label %55, !dbg !3161

55:                                               ; preds = %49, %48, %36, %24, %12
  %56 = load i32, ptr %2, align 4, !dbg !3162
  ret i32 %56, !dbg !3162
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @jsonsl__writeutf8(i32 noundef %0, ptr noundef %1) #0 !dbg !3163 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3166, metadata !DIExpression()), !dbg !3167
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3169
  %5 = load i32, ptr %3, align 4, !dbg !3170
  %6 = icmp ult i32 %5, 128, !dbg !3172
  br i1 %6, label %7, label %13, !dbg !3173

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4, !dbg !3174
  %9 = trunc i32 %8 to i8, !dbg !3174
  %10 = load ptr, ptr %4, align 8, !dbg !3174
  store i8 %9, ptr %10, align 1, !dbg !3174
  %11 = load ptr, ptr %4, align 8, !dbg !3174
  %12 = getelementptr inbounds i8, ptr %11, i32 1, !dbg !3174
  store ptr %12, ptr %4, align 8, !dbg !3174
  br label %90, !dbg !3176

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4, !dbg !3177
  %15 = icmp ult i32 %14, 2048, !dbg !3179
  br i1 %15, label %16, label %31, !dbg !3180

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4, !dbg !3181
  %18 = lshr i32 %17, 6, !dbg !3181
  %19 = or i32 %18, 192, !dbg !3181
  %20 = trunc i32 %19 to i8, !dbg !3181
  %21 = load ptr, ptr %4, align 8, !dbg !3181
  store i8 %20, ptr %21, align 1, !dbg !3181
  %22 = load ptr, ptr %4, align 8, !dbg !3181
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !3181
  store ptr %23, ptr %4, align 8, !dbg !3181
  %24 = load i32, ptr %3, align 4, !dbg !3183
  %25 = and i32 %24, 63, !dbg !3183
  %26 = or i32 %25, 128, !dbg !3183
  %27 = trunc i32 %26 to i8, !dbg !3183
  %28 = load ptr, ptr %4, align 8, !dbg !3183
  store i8 %27, ptr %28, align 1, !dbg !3183
  %29 = load ptr, ptr %4, align 8, !dbg !3183
  %30 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !3183
  store ptr %30, ptr %4, align 8, !dbg !3183
  br label %89, !dbg !3184

31:                                               ; preds = %13
  %32 = load i32, ptr %3, align 4, !dbg !3185
  %33 = icmp ult i32 %32, 65536, !dbg !3187
  br i1 %33, label %34, label %57, !dbg !3188

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4, !dbg !3189
  %36 = lshr i32 %35, 12, !dbg !3189
  %37 = or i32 %36, 224, !dbg !3189
  %38 = trunc i32 %37 to i8, !dbg !3189
  %39 = load ptr, ptr %4, align 8, !dbg !3189
  store i8 %38, ptr %39, align 1, !dbg !3189
  %40 = load ptr, ptr %4, align 8, !dbg !3189
  %41 = getelementptr inbounds i8, ptr %40, i32 1, !dbg !3189
  store ptr %41, ptr %4, align 8, !dbg !3189
  %42 = load i32, ptr %3, align 4, !dbg !3191
  %43 = lshr i32 %42, 6, !dbg !3191
  %44 = and i32 %43, 63, !dbg !3191
  %45 = or i32 %44, 128, !dbg !3191
  %46 = trunc i32 %45 to i8, !dbg !3191
  %47 = load ptr, ptr %4, align 8, !dbg !3191
  store i8 %46, ptr %47, align 1, !dbg !3191
  %48 = load ptr, ptr %4, align 8, !dbg !3191
  %49 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !3191
  store ptr %49, ptr %4, align 8, !dbg !3191
  %50 = load i32, ptr %3, align 4, !dbg !3192
  %51 = and i32 %50, 63, !dbg !3192
  %52 = or i32 %51, 128, !dbg !3192
  %53 = trunc i32 %52 to i8, !dbg !3192
  %54 = load ptr, ptr %4, align 8, !dbg !3192
  store i8 %53, ptr %54, align 1, !dbg !3192
  %55 = load ptr, ptr %4, align 8, !dbg !3192
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !3192
  store ptr %56, ptr %4, align 8, !dbg !3192
  br label %88, !dbg !3193

57:                                               ; preds = %31
  %58 = load i32, ptr %3, align 4, !dbg !3194
  %59 = lshr i32 %58, 18, !dbg !3194
  %60 = or i32 %59, 240, !dbg !3194
  %61 = trunc i32 %60 to i8, !dbg !3194
  %62 = load ptr, ptr %4, align 8, !dbg !3194
  store i8 %61, ptr %62, align 1, !dbg !3194
  %63 = load ptr, ptr %4, align 8, !dbg !3194
  %64 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !3194
  store ptr %64, ptr %4, align 8, !dbg !3194
  %65 = load i32, ptr %3, align 4, !dbg !3196
  %66 = lshr i32 %65, 12, !dbg !3196
  %67 = and i32 %66, 63, !dbg !3196
  %68 = or i32 %67, 128, !dbg !3196
  %69 = trunc i32 %68 to i8, !dbg !3196
  %70 = load ptr, ptr %4, align 8, !dbg !3196
  store i8 %69, ptr %70, align 1, !dbg !3196
  %71 = load ptr, ptr %4, align 8, !dbg !3196
  %72 = getelementptr inbounds i8, ptr %71, i32 1, !dbg !3196
  store ptr %72, ptr %4, align 8, !dbg !3196
  %73 = load i32, ptr %3, align 4, !dbg !3197
  %74 = lshr i32 %73, 6, !dbg !3197
  %75 = and i32 %74, 63, !dbg !3197
  %76 = or i32 %75, 128, !dbg !3197
  %77 = trunc i32 %76 to i8, !dbg !3197
  %78 = load ptr, ptr %4, align 8, !dbg !3197
  store i8 %77, ptr %78, align 1, !dbg !3197
  %79 = load ptr, ptr %4, align 8, !dbg !3197
  %80 = getelementptr inbounds i8, ptr %79, i32 1, !dbg !3197
  store ptr %80, ptr %4, align 8, !dbg !3197
  %81 = load i32, ptr %3, align 4, !dbg !3198
  %82 = and i32 %81, 63, !dbg !3198
  %83 = or i32 %82, 128, !dbg !3198
  %84 = trunc i32 %83 to i8, !dbg !3198
  %85 = load ptr, ptr %4, align 8, !dbg !3198
  store i8 %84, ptr %85, align 1, !dbg !3198
  %86 = load ptr, ptr %4, align 8, !dbg !3198
  %87 = getelementptr inbounds i8, ptr %86, i32 1, !dbg !3198
  store ptr %87, ptr %4, align 8, !dbg !3198
  br label %88

88:                                               ; preds = %57, %34
  br label %89

89:                                               ; preds = %88, %16
  br label %90

90:                                               ; preds = %89, %7
  %91 = load ptr, ptr %4, align 8, !dbg !3199
  ret ptr %91, !dbg !3200
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_simple_char(i32 noundef %0) #0 !dbg !3201 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3202, metadata !DIExpression()), !dbg !3203
  %3 = load i32, ptr %2, align 4, !dbg !3204
  %4 = and i32 %3, 255, !dbg !3205
  %5 = zext i32 %4 to i64, !dbg !3206
  %6 = getelementptr inbounds [256 x i32], ptr @String_No_Passthrough, i64 0, i64 %5, !dbg !3206
  %7 = load i32, ptr %6, align 4, !dbg !3206
  %8 = icmp ne i32 %7, 0, !dbg !3207
  %9 = xor i1 %8, true, !dbg !3207
  %10 = zext i1 %9 to i32, !dbg !3207
  ret i32 %10, !dbg !3208
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonsl__digit2int(i8 noundef signext %0) #0 !dbg !3209 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3214, metadata !DIExpression()), !dbg !3215
  %5 = load i8, ptr %3, align 1, !dbg !3216
  %6 = sext i8 %5 to i32, !dbg !3216
  %7 = sub nsw i32 %6, 48, !dbg !3217
  store i32 %7, ptr %4, align 4, !dbg !3215
  %8 = load i32, ptr %4, align 4, !dbg !3218
  %9 = icmp ult i32 %8, 10, !dbg !3220
  br i1 %9, label %10, label %12, !dbg !3221

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !3222
  store i32 %11, ptr %2, align 4, !dbg !3224
  br label %31, !dbg !3224

12:                                               ; preds = %1
  %13 = load i8, ptr %3, align 1, !dbg !3225
  %14 = sext i8 %13 to i32, !dbg !3225
  %15 = sub nsw i32 %14, 97, !dbg !3226
  store i32 %15, ptr %4, align 4, !dbg !3227
  %16 = load i32, ptr %4, align 4, !dbg !3228
  %17 = icmp ult i32 %16, 6, !dbg !3230
  br i1 %17, label %18, label %21, !dbg !3231

18:                                               ; preds = %12
  %19 = load i32, ptr %4, align 4, !dbg !3232
  %20 = add nsw i32 %19, 10, !dbg !3234
  store i32 %20, ptr %2, align 4, !dbg !3235
  br label %31, !dbg !3235

21:                                               ; preds = %12
  %22 = load i8, ptr %3, align 1, !dbg !3236
  %23 = sext i8 %22 to i32, !dbg !3236
  %24 = sub nsw i32 %23, 65, !dbg !3237
  store i32 %24, ptr %4, align 4, !dbg !3238
  %25 = load i32, ptr %4, align 4, !dbg !3239
  %26 = icmp ult i32 %25, 6, !dbg !3241
  br i1 %26, label %27, label %30, !dbg !3242

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4, !dbg !3243
  %29 = add nsw i32 %28, 10, !dbg !3245
  store i32 %29, ptr %2, align 4, !dbg !3246
  br label %31, !dbg !3246

30:                                               ; preds = %21
  store i32 -1, ptr %2, align 4, !dbg !3247
  br label %31, !dbg !3247

31:                                               ; preds = %30, %27, %18, %10
  %32 = load i32, ptr %2, align 4, !dbg !3248
  ret i32 %32, !dbg !3248
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!139}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "libtransmission/jsonsl.c", directory: "/home/raj/transmission", checksumkind: CSK_MD5, checksum: "c0999bfd60ec351a618e48005be8b24a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 8)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 17)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 19)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 12)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 14)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !33, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 22)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !28, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 25)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 16)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !21, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !38, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !21, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !21, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 15)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !72, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !72, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !72, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !72, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !33, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 13)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 11)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 7)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 18)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 756, type: !57, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !97, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !3, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !97, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !3, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !16, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !16, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !87, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 9)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !123, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !16, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !38, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1251, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 10)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "String_No_Passthrough", scope: !139, file: !2, line: 1540, type: !371, isLocal: true, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C11, file: !140, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !141, retainedTypes: !242, globals: !350, splitDebugInlining: false, nameTableKind: None)
!140 = !DIFile(filename: "/home/raj/transmission/libtransmission/jsonsl.c", directory: "/home/raj/transmission/build", checksumkind: CSK_MD5, checksum: "c0999bfd60ec351a618e48005be8b24a")
!141 = !{!142, !151, !180, !189, !199, !220, !235}
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 199, baseType: !144, size: 32, elements: !145)
!143 = !DIFile(filename: "libtransmission/jsonsl.h", directory: "/home/raj/transmission", checksumkind: CSK_MD5, checksum: "5d382e4b557d6c2c19a82edcd16b215e")
!144 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!145 = !{!146, !147, !148, !149, !150}
!146 = !DIEnumerator(name: "JSONSL_ACTION_PUSH", value: 43)
!147 = !DIEnumerator(name: "JSONSL_ACTION_POP", value: 45)
!148 = !DIEnumerator(name: "JSONSL_ACTION_UESCAPE", value: 85)
!149 = !DIEnumerator(name: "JSONSL_ACTION_ERROR", value: 33)
!150 = !DIEnumerator(name: "JSONSL_ACTION_UNKNOWN", value: 63)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 265, baseType: !144, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!153 = !DIEnumerator(name: "JSONSL_ERROR_SUCCESS", value: 0)
!154 = !DIEnumerator(name: "JSONSL_ERROR_GARBAGE_TRAILING", value: 1)
!155 = !DIEnumerator(name: "JSONSL_ERROR_SPECIAL_EXPECTED", value: 2)
!156 = !DIEnumerator(name: "JSONSL_ERROR_SPECIAL_INCOMPLETE", value: 3)
!157 = !DIEnumerator(name: "JSONSL_ERROR_STRAY_TOKEN", value: 4)
!158 = !DIEnumerator(name: "JSONSL_ERROR_MISSING_TOKEN", value: 5)
!159 = !DIEnumerator(name: "JSONSL_ERROR_CANT_INSERT", value: 6)
!160 = !DIEnumerator(name: "JSONSL_ERROR_ESCAPE_OUTSIDE_STRING", value: 7)
!161 = !DIEnumerator(name: "JSONSL_ERROR_KEY_OUTSIDE_OBJECT", value: 8)
!162 = !DIEnumerator(name: "JSONSL_ERROR_STRING_OUTSIDE_CONTAINER", value: 9)
!163 = !DIEnumerator(name: "JSONSL_ERROR_FOUND_NULL_BYTE", value: 10)
!164 = !DIEnumerator(name: "JSONSL_ERROR_LEVELS_EXCEEDED", value: 11)
!165 = !DIEnumerator(name: "JSONSL_ERROR_BRACKET_MISMATCH", value: 12)
!166 = !DIEnumerator(name: "JSONSL_ERROR_HKEY_EXPECTED", value: 13)
!167 = !DIEnumerator(name: "JSONSL_ERROR_WEIRD_WHITESPACE", value: 14)
!168 = !DIEnumerator(name: "JSONSL_ERROR_UESCAPE_TOOSHORT", value: 15)
!169 = !DIEnumerator(name: "JSONSL_ERROR_ESCAPE_INVALID", value: 16)
!170 = !DIEnumerator(name: "JSONSL_ERROR_TRAILING_COMMA", value: 17)
!171 = !DIEnumerator(name: "JSONSL_ERROR_INVALID_NUMBER", value: 18)
!172 = !DIEnumerator(name: "JSONSL_ERROR_VALUE_EXPECTED", value: 19)
!173 = !DIEnumerator(name: "JSONSL_ERROR_PERCENT_BADHEX", value: 20)
!174 = !DIEnumerator(name: "JSONSL_ERROR_JPR_BADPATH", value: 21)
!175 = !DIEnumerator(name: "JSONSL_ERROR_JPR_DUPSLASH", value: 22)
!176 = !DIEnumerator(name: "JSONSL_ERROR_JPR_NOROOT", value: 23)
!177 = !DIEnumerator(name: "JSONSL_ERROR_ENOMEM", value: 24)
!178 = !DIEnumerator(name: "JSONSL_ERROR_INVALID_CODEPOINT", value: 25)
!179 = !DIEnumerator(name: "JSONSL_ERROR_GENERIC", value: 26)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 750, baseType: !181, size: 32, elements: !182)
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIEnumerator(name: "JSONSL_PATH_STRING", value: 1)
!184 = !DIEnumerator(name: "JSONSL_PATH_WILDCARD", value: 2)
!185 = !DIEnumerator(name: "JSONSL_PATH_NUMERIC", value: 3)
!186 = !DIEnumerator(name: "JSONSL_PATH_ROOT", value: 4)
!187 = !DIEnumerator(name: "JSONSL_PATH_INVALID", value: -1)
!188 = !DIEnumerator(name: "JSONSL_PATH_NONE", value: 0)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 131, baseType: !144, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DIEnumerator(name: "JSONSL_T_STRING", value: 16776994)
!192 = !DIEnumerator(name: "JSONSL_T_HKEY", value: 16776995)
!193 = !DIEnumerator(name: "JSONSL_T_OBJECT", value: 123)
!194 = !DIEnumerator(name: "JSONSL_T_LIST", value: 91)
!195 = !DIEnumerator(name: "JSONSL_T_SPECIAL", value: 94)
!196 = !DIEnumerator(name: "JSONSL_T_UESCAPE", value: 117)
!197 = !DIEnumerator(name: "JSONSL_T_UNKNOWN", value: 63)
!198 = !DIEnumerator(name: "JSONSL_T_ROOT", value: 0)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 159, baseType: !144, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!201 = !DIEnumerator(name: "JSONSL_SPECIALf_NONE", value: 0)
!202 = !DIEnumerator(name: "JSONSL_SPECIALf_SIGNED", value: 1)
!203 = !DIEnumerator(name: "JSONSL_SPECIALf_UNSIGNED", value: 2)
!204 = !DIEnumerator(name: "JSONSL_SPECIALf_TRUE", value: 4)
!205 = !DIEnumerator(name: "JSONSL_SPECIALf_FALSE", value: 8)
!206 = !DIEnumerator(name: "JSONSL_SPECIALf_NULL", value: 16)
!207 = !DIEnumerator(name: "JSONSL_SPECIALf_FLOAT", value: 32)
!208 = !DIEnumerator(name: "JSONSL_SPECIALf_EXPONENT", value: 64)
!209 = !DIEnumerator(name: "JSONSL_SPECIALf_NONASCII", value: 128)
!210 = !DIEnumerator(name: "JSONSL_SPECIALf_NAN", value: 256)
!211 = !DIEnumerator(name: "JSONSL_SPECIALf_INF", value: 512)
!212 = !DIEnumerator(name: "JSONSL_SPECIALf_UNKNOWN", value: 1024)
!213 = !DIEnumerator(name: "JSONSL_SPECIALf_ZERO", value: 2050)
!214 = !DIEnumerator(name: "JSONSL_SPECIALf_DASH", value: 4096)
!215 = !DIEnumerator(name: "JSONSL_SPECIALf_POS_INF", value: 512)
!216 = !DIEnumerator(name: "JSONSL_SPECIALf_NEG_INF", value: 513)
!217 = !DIEnumerator(name: "JSONSL_SPECIALf_NUMERIC", value: 3)
!218 = !DIEnumerator(name: "JSONSL_SPECIALf_BOOLEAN", value: 12)
!219 = !DIEnumerator(name: "JSONSL_SPECIALf_NUMNOINT", value: 864)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 46, baseType: !144, size: 32, elements: !222)
!221 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!223 = !DIEnumerator(name: "_ISupper", value: 256)
!224 = !DIEnumerator(name: "_ISlower", value: 512)
!225 = !DIEnumerator(name: "_ISalpha", value: 1024)
!226 = !DIEnumerator(name: "_ISdigit", value: 2048)
!227 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!228 = !DIEnumerator(name: "_ISspace", value: 8192)
!229 = !DIEnumerator(name: "_ISprint", value: 16384)
!230 = !DIEnumerator(name: "_ISgraph", value: 32768)
!231 = !DIEnumerator(name: "_ISblank", value: 1)
!232 = !DIEnumerator(name: "_IScntrl", value: 2)
!233 = !DIEnumerator(name: "_ISpunct", value: 4)
!234 = !DIEnumerator(name: "_ISalnum", value: 8)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 740, baseType: !181, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "JSONSL_MATCH_COMPLETE", value: 1)
!238 = !DIEnumerator(name: "JSONSL_MATCH_POSSIBLE", value: 0)
!239 = !DIEnumerator(name: "JSONSL_MATCH_NOMATCH", value: -1)
!240 = !DIEnumerator(name: "JSONSL_MATCH_TYPE_MISMATCH", value: -2)
!241 = !DIEnumerator(name: "JSONSL_MATCH_UNKNOWN", value: -1)
!242 = !{!243, !144, !338, !320, !289, !181, !341, !279, !316, !312, !310, !333, !249, !342, !344, !346, !340, !348, !4}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jsonsl_st", file: !143, line: 463, size: 1728, elements: !245)
!245 = !{!246, !247, !248, !252, !256, !280, !281, !282, !283, !290, !291, !292, !293, !294, !295, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309, !332, !334}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !244, file: !143, line: 467, baseType: !144, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stopfl", scope: !244, file: !143, line: 470, baseType: !144, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !244, file: !143, line: 476, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !250, line: 46, baseType: !251)
!250 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!251 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !244, file: !143, line: 479, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_char_t", file: !143, line: 32, baseType: !4)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "action_callback_PUSH", scope: !244, file: !143, line: 482, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_stack_callback", file: !143, line: 432, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261, !262, !263, !253}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_t", file: !143, line: 102, baseType: !243)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_action_t", file: !143, line: 205, baseType: !142)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jsonsl_state_st", file: !143, line: 285, size: 448, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !276, !277, !278}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !143, line: 289, baseType: !144, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "special_flags", scope: !264, file: !143, line: 292, baseType: !144, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pos_begin", scope: !264, file: !143, line: 305, baseType: !249, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pos_cur", scope: !264, file: !143, line: 309, baseType: !249, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !264, file: !143, line: 316, baseType: !144, size: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "nelem", scope: !264, file: !143, line: 330, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !273, line: 27, baseType: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !275, line: 45, baseType: !251)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_callback", scope: !264, file: !143, line: 341, baseType: !181, size: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "nescapes", scope: !264, file: !143, line: 349, baseType: !144, size: 32, offset: 352)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !264, file: !143, line: 369, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "action_callback_POP", scope: !244, file: !143, line: 485, baseType: !257, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "action_callback", scope: !244, file: !143, line: 488, baseType: !257, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_callback_level", scope: !244, file: !143, line: 496, baseType: !144, size: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "error_callback", scope: !244, file: !143, line: 499, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_error_callback", file: !143, line: 457, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!181, !261, !288, !263, !289}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_error_t", file: !143, line: 272, baseType: !151)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "call_SPECIAL", scope: !244, file: !143, line: 512, baseType: !181, size: 32, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "call_OBJECT", scope: !244, file: !143, line: 513, baseType: !181, size: 32, offset: 544)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "call_LIST", scope: !244, file: !143, line: 514, baseType: !181, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "call_STRING", scope: !244, file: !143, line: 515, baseType: !181, size: 32, offset: 608)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "call_HKEY", scope: !244, file: !143, line: 516, baseType: !181, size: 32, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "action_callback_UESCAPE", scope: !244, file: !143, line: 531, baseType: !257, size: 64, offset: 704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "call_UESCAPE", scope: !244, file: !143, line: 534, baseType: !181, size: 32, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "return_UESCAPE", scope: !244, file: !143, line: 539, baseType: !181, size: 32, offset: 800)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !244, file: !143, line: 544, baseType: !299, size: 32, offset: 832)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !143, line: 542, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "allow_trailing_comma", scope: !299, file: !143, line: 543, baseType: !181, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !244, file: !143, line: 547, baseType: !279, size: 64, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "in_escape", scope: !244, file: !143, line: 551, baseType: !181, size: 32, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "expecting", scope: !244, file: !143, line: 552, baseType: !4, size: 8, offset: 992)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tok_last", scope: !244, file: !143, line: 553, baseType: !4, size: 8, offset: 1000)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "can_insert", scope: !244, file: !143, line: 554, baseType: !181, size: 32, offset: 1024)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "levels_max", scope: !244, file: !143, line: 555, baseType: !144, size: 32, offset: 1056)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "jpr_count", scope: !244, file: !143, line: 558, baseType: !249, size: 64, offset: 1088)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "jprs", scope: !244, file: !143, line: 559, baseType: !310, size: 64, offset: 1152)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_jpr_t", file: !143, line: 104, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jsonsl_jpr_st", file: !143, line: 780, size: 384, elements: !314)
!314 = !{!315, !327, !328, !329, !330, !331}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !313, file: !143, line: 782, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jsonsl_jpr_component_st", file: !143, line: 761, size: 256, elements: !318)
!318 = !{!319, !321, !322, !323, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pstr", scope: !317, file: !143, line: 763, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !317, file: !143, line: 765, baseType: !251, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !317, file: !143, line: 767, baseType: !249, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !317, file: !143, line: 769, baseType: !324, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_jpr_type_t", file: !143, line: 759, baseType: !180)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_arridx", scope: !317, file: !143, line: 774, baseType: !326, size: 16, offset: 224)
!326 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ncomponents", scope: !313, file: !143, line: 783, baseType: !249, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "match_type", scope: !313, file: !143, line: 787, baseType: !144, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "basestr", scope: !313, file: !143, line: 790, baseType: !320, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !313, file: !143, line: 793, baseType: !320, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "norig", scope: !313, file: !143, line: 794, baseType: !249, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "jpr_root", scope: !244, file: !143, line: 562, baseType: !333, size: 64, offset: 1216)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !244, file: !143, line: 571, baseType: !335, size: 448, offset: 1280)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 448, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 1)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_uchar_t", file: !143, line: 33, baseType: !340)
!340 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !250, line: 35, baseType: !347)
!347 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !273, line: 25, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !275, line: 40, baseType: !341)
!350 = !{!0, !7, !12, !14, !19, !24, !26, !31, !36, !41, !43, !48, !50, !55, !60, !62, !64, !66, !68, !70, !75, !77, !79, !81, !83, !85, !90, !95, !100, !105, !107, !109, !111, !113, !115, !117, !119, !121, !126, !128, !130, !132, !137, !351, !356, !361, !364, !367, !369}
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 795, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "Escape_Equivs", scope: !139, file: !2, line: 1607, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 256)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "Special_Table", scope: !139, file: !2, line: 1453, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 4096, elements: !359)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "Special_Endings", scope: !139, file: !2, line: 1491, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 8192, elements: !359)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "Allowed_Whitespace", scope: !139, file: !2, line: 1523, type: !366, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "Allowed_Escapes", scope: !139, file: !2, line: 1577, type: !366, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 8192, elements: !359)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!373 = !{i32 7, !"Dwarf Version", i32 5}
!374 = !{i32 2, !"Debug Info Version", i32 3}
!375 = !{i32 1, !"wchar_size", i32 4}
!376 = !{i32 8, !"PIC Level", i32 2}
!377 = !{i32 7, !"PIE Level", i32 2}
!378 = !{i32 7, !"uwtable", i32 2}
!379 = !{i32 7, !"frame-pointer", i32 2}
!380 = !{!"clang version 16.0.0"}
!381 = distinct !DISubprogram(name: "jsonsl_dump_global_metrics", scope: !2, file: !2, line: 80, type: !382, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !{}
!385 = !DILocation(line: 80, column: 41, scope: !381)
!386 = distinct !DISubprogram(name: "jsonsl_new", scope: !2, file: !2, line: 103, type: !387, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!387 = !DISubroutineType(types: !388)
!388 = !{!261, !181}
!389 = !DILocalVariable(name: "nlevels", arg: 1, scope: !386, file: !2, line: 103, type: !181)
!390 = !DILocation(line: 103, column: 25, scope: !386)
!391 = !DILocalVariable(name: "ii", scope: !386, file: !2, line: 105, type: !144)
!392 = !DILocation(line: 105, column: 18, scope: !386)
!393 = !DILocalVariable(name: "jsn", scope: !386, file: !2, line: 106, type: !243)
!394 = !DILocation(line: 106, column: 24, scope: !386)
!395 = !DILocation(line: 108, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !386, file: !2, line: 108, column: 9)
!397 = !DILocation(line: 108, column: 17, scope: !396)
!398 = !DILocation(line: 108, column: 9, scope: !386)
!399 = !DILocation(line: 109, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !2, line: 108, column: 22)
!401 = !DILocation(line: 114, column: 24, scope: !386)
!402 = !DILocation(line: 114, column: 31, scope: !386)
!403 = !DILocation(line: 114, column: 23, scope: !386)
!404 = !DILocation(line: 114, column: 35, scope: !386)
!405 = !DILocation(line: 113, column: 37, scope: !386)
!406 = !DILocation(line: 113, column: 13, scope: !386)
!407 = !DILocation(line: 112, column: 9, scope: !386)
!408 = !DILocation(line: 117, column: 38, scope: !386)
!409 = !DILocation(line: 117, column: 5, scope: !386)
!410 = !DILocation(line: 117, column: 10, scope: !386)
!411 = !DILocation(line: 117, column: 21, scope: !386)
!412 = !DILocation(line: 118, column: 5, scope: !386)
!413 = !DILocation(line: 118, column: 10, scope: !386)
!414 = !DILocation(line: 118, column: 29, scope: !386)
!415 = !DILocation(line: 119, column: 18, scope: !386)
!416 = !DILocation(line: 119, column: 5, scope: !386)
!417 = !DILocation(line: 120, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !386, file: !2, line: 120, column: 5)
!419 = !DILocation(line: 120, column: 10, scope: !418)
!420 = !DILocation(line: 120, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !2, line: 120, column: 5)
!422 = !DILocation(line: 120, column: 23, scope: !421)
!423 = !DILocation(line: 120, column: 28, scope: !421)
!424 = !DILocation(line: 120, column: 21, scope: !421)
!425 = !DILocation(line: 120, column: 5, scope: !418)
!426 = !DILocation(line: 121, column: 32, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !2, line: 120, column: 46)
!428 = !DILocation(line: 121, column: 9, scope: !427)
!429 = !DILocation(line: 121, column: 14, scope: !427)
!430 = !DILocation(line: 121, column: 20, scope: !427)
!431 = !DILocation(line: 121, column: 24, scope: !427)
!432 = !DILocation(line: 121, column: 30, scope: !427)
!433 = !DILocation(line: 122, column: 5, scope: !427)
!434 = !DILocation(line: 120, column: 42, scope: !421)
!435 = !DILocation(line: 120, column: 5, scope: !421)
!436 = distinct !{!436, !425, !437, !438}
!437 = !DILocation(line: 122, column: 5, scope: !418)
!438 = !{!"llvm.loop.mustprogress"}
!439 = !DILocation(line: 123, column: 12, scope: !386)
!440 = !DILocation(line: 123, column: 5, scope: !386)
!441 = !DILocation(line: 124, column: 1, scope: !386)
!442 = distinct !DISubprogram(name: "jsonsl_reset", scope: !2, file: !2, line: 127, type: !443, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !261}
!445 = !DILocalVariable(name: "jsn", arg: 1, scope: !442, file: !2, line: 127, type: !261)
!446 = !DILocation(line: 127, column: 28, scope: !442)
!447 = !DILocation(line: 129, column: 5, scope: !442)
!448 = !DILocation(line: 129, column: 10, scope: !442)
!449 = !DILocation(line: 129, column: 19, scope: !442)
!450 = !DILocation(line: 130, column: 5, scope: !442)
!451 = !DILocation(line: 130, column: 10, scope: !442)
!452 = !DILocation(line: 130, column: 21, scope: !442)
!453 = !DILocation(line: 131, column: 5, scope: !442)
!454 = !DILocation(line: 131, column: 10, scope: !442)
!455 = !DILocation(line: 131, column: 14, scope: !442)
!456 = !DILocation(line: 132, column: 5, scope: !442)
!457 = !DILocation(line: 132, column: 10, scope: !442)
!458 = !DILocation(line: 132, column: 16, scope: !442)
!459 = !DILocation(line: 133, column: 5, scope: !442)
!460 = !DILocation(line: 133, column: 10, scope: !442)
!461 = !DILocation(line: 133, column: 17, scope: !442)
!462 = !DILocation(line: 134, column: 5, scope: !442)
!463 = !DILocation(line: 134, column: 10, scope: !442)
!464 = !DILocation(line: 134, column: 20, scope: !442)
!465 = !DILocation(line: 135, column: 5, scope: !442)
!466 = !DILocation(line: 135, column: 10, scope: !442)
!467 = !DILocation(line: 135, column: 20, scope: !442)
!468 = !DILocation(line: 136, column: 1, scope: !442)
!469 = distinct !DISubprogram(name: "jsonsl_destroy", scope: !2, file: !2, line: 139, type: !443, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!470 = !DILocalVariable(name: "jsn", arg: 1, scope: !469, file: !2, line: 139, type: !261)
!471 = !DILocation(line: 139, column: 30, scope: !469)
!472 = !DILocation(line: 141, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !2, line: 141, column: 9)
!474 = !DILocation(line: 141, column: 9, scope: !469)
!475 = !DILocation(line: 142, column: 14, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !2, line: 141, column: 14)
!477 = !DILocation(line: 142, column: 9, scope: !476)
!478 = !DILocation(line: 143, column: 5, scope: !476)
!479 = !DILocation(line: 144, column: 1, scope: !469)
!480 = distinct !DISubprogram(name: "jsonsl_feed", scope: !2, file: !2, line: 222, type: !481, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !261, !253, !249}
!483 = !DILocalVariable(name: "jsn", arg: 1, scope: !480, file: !2, line: 222, type: !261)
!484 = !DILocation(line: 222, column: 22, scope: !480)
!485 = !DILocalVariable(name: "bytes", arg: 2, scope: !480, file: !2, line: 222, type: !253)
!486 = !DILocation(line: 222, column: 48, scope: !480)
!487 = !DILocalVariable(name: "nbytes", arg: 3, scope: !480, file: !2, line: 222, type: !249)
!488 = !DILocation(line: 222, column: 62, scope: !480)
!489 = !DILocalVariable(name: "c", scope: !480, file: !2, line: 308, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!492 = !DILocation(line: 308, column: 27, scope: !480)
!493 = !DILocation(line: 308, column: 48, scope: !480)
!494 = !DILocalVariable(name: "levels_max", scope: !480, file: !2, line: 309, type: !249)
!495 = !DILocation(line: 309, column: 12, scope: !480)
!496 = !DILocation(line: 309, column: 25, scope: !480)
!497 = !DILocation(line: 309, column: 30, scope: !480)
!498 = !DILocalVariable(name: "state", scope: !480, file: !2, line: 310, type: !263)
!499 = !DILocation(line: 310, column: 29, scope: !480)
!500 = !DILocation(line: 310, column: 37, scope: !480)
!501 = !DILocation(line: 310, column: 42, scope: !480)
!502 = !DILocation(line: 310, column: 50, scope: !480)
!503 = !DILocation(line: 310, column: 55, scope: !480)
!504 = !DILocation(line: 310, column: 48, scope: !480)
!505 = !DILocation(line: 311, column: 17, scope: !480)
!506 = !DILocation(line: 311, column: 5, scope: !480)
!507 = !DILocation(line: 311, column: 10, scope: !480)
!508 = !DILocation(line: 311, column: 15, scope: !480)
!509 = !DILocation(line: 313, column: 5, scope: !480)
!510 = !DILocation(line: 313, column: 12, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 313, column: 5)
!512 = distinct !DILexicalBlock(scope: !480, file: !2, line: 313, column: 5)
!513 = !DILocation(line: 313, column: 5, scope: !512)
!514 = !DILocalVariable(name: "state_type", scope: !515, file: !2, line: 314, type: !144)
!515 = distinct !DILexicalBlock(scope: !511, file: !2, line: 313, column: 47)
!516 = !DILocation(line: 314, column: 18, scope: !515)
!517 = !DILocation(line: 314, column: 9, scope: !515)
!518 = !DILabel(scope: !515, name: "GT_AGAIN", file: !2, line: 317)
!519 = !DILocation(line: 317, column: 9, scope: !515)
!520 = !DILocation(line: 318, column: 22, scope: !515)
!521 = !DILocation(line: 318, column: 29, scope: !515)
!522 = !DILocation(line: 318, column: 20, scope: !515)
!523 = !DILocation(line: 320, column: 13, scope: !524)
!524 = distinct !DILexicalBlock(scope: !515, file: !2, line: 320, column: 13)
!525 = !DILocation(line: 320, column: 24, scope: !524)
!526 = !DILocation(line: 320, column: 13, scope: !515)
!527 = !DILocation(line: 322, column: 17, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 322, column: 17)
!529 = distinct !DILexicalBlock(scope: !524, file: !2, line: 320, column: 45)
!530 = !DILocation(line: 322, column: 22, scope: !528)
!531 = !DILocation(line: 322, column: 17, scope: !529)
!532 = !DILocation(line: 323, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !2, line: 322, column: 33)
!534 = !DILocation(line: 323, column: 22, scope: !533)
!535 = !DILocation(line: 323, column: 32, scope: !533)
!536 = !DILocation(line: 324, column: 40, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !2, line: 324, column: 21)
!538 = !DILocation(line: 324, column: 22, scope: !537)
!539 = !DILocation(line: 324, column: 21, scope: !533)
!540 = !DILocation(line: 325, column: 21, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 325, column: 21)
!542 = distinct !DILexicalBlock(scope: !537, file: !2, line: 324, column: 51)
!543 = !DILocation(line: 325, column: 21, scope: !542)
!544 = !DILocation(line: 325, column: 21, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 325, column: 21)
!546 = !DILocation(line: 326, column: 28, scope: !547)
!547 = distinct !DILexicalBlock(scope: !537, file: !2, line: 326, column: 28)
!548 = !DILocation(line: 326, column: 37, scope: !547)
!549 = !DILocation(line: 326, column: 28, scope: !537)
!550 = !DILocation(line: 327, column: 21, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 327, column: 21)
!552 = distinct !DILexicalBlock(scope: !547, file: !2, line: 326, column: 45)
!553 = !DILocation(line: 327, column: 21, scope: !552)
!554 = !DILocation(line: 327, column: 21, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 327, column: 21)
!556 = distinct !DILexicalBlock(scope: !551, file: !2, line: 327, column: 21)
!557 = !DILocation(line: 327, column: 21, scope: !556)
!558 = !DILocation(line: 327, column: 21, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !2, line: 327, column: 21)
!560 = !DILocation(line: 327, column: 21, scope: !561)
!561 = distinct !DILexicalBlock(scope: !555, file: !2, line: 327, column: 21)
!562 = !DILocation(line: 327, column: 21, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !2, line: 327, column: 21)
!564 = !DILocation(line: 327, column: 21, scope: !565)
!565 = distinct !DILexicalBlock(scope: !556, file: !2, line: 327, column: 21)
!566 = !DILocation(line: 327, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !2, line: 327, column: 21)
!568 = !DILocation(line: 328, column: 25, scope: !569)
!569 = distinct !DILexicalBlock(scope: !552, file: !2, line: 328, column: 25)
!570 = !DILocation(line: 328, column: 30, scope: !569)
!571 = !DILocation(line: 328, column: 25, scope: !552)
!572 = !DILocation(line: 329, column: 25, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !2, line: 328, column: 46)
!574 = !DILocation(line: 331, column: 17, scope: !552)
!575 = !DILocation(line: 332, column: 17, scope: !533)
!576 = !DILocation(line: 335, column: 39, scope: !577)
!577 = distinct !DILexicalBlock(scope: !529, file: !2, line: 335, column: 17)
!578 = !DILocation(line: 335, column: 17, scope: !577)
!579 = !DILocation(line: 335, column: 57, scope: !577)
!580 = !DILocation(line: 335, column: 17, scope: !529)
!581 = !DILocation(line: 338, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !2, line: 336, column: 42)
!583 = !DILocation(line: 340, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 340, column: 21)
!585 = distinct !DILexicalBlock(scope: !577, file: !2, line: 339, column: 20)
!586 = !DILocation(line: 340, column: 30, scope: !584)
!587 = !DILocation(line: 340, column: 21, scope: !585)
!588 = !DILocation(line: 341, column: 21, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !2, line: 340, column: 38)
!590 = !DILocation(line: 342, column: 28, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !2, line: 342, column: 28)
!592 = !DILocation(line: 342, column: 37, scope: !591)
!593 = !DILocation(line: 342, column: 28, scope: !584)
!594 = !DILocation(line: 343, column: 21, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !2, line: 342, column: 46)
!596 = !DILocation(line: 345, column: 21, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 345, column: 21)
!598 = distinct !DILexicalBlock(scope: !591, file: !2, line: 344, column: 24)
!599 = !DILocation(line: 345, column: 21, scope: !598)
!600 = !DILocation(line: 345, column: 21, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !2, line: 345, column: 21)
!602 = !DILocation(line: 350, column: 20, scope: !603)
!603 = distinct !DILexicalBlock(scope: !524, file: !2, line: 350, column: 20)
!604 = !DILocation(line: 350, column: 31, scope: !603)
!605 = !DILocation(line: 350, column: 20, scope: !524)
!606 = !DILocation(line: 352, column: 17, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 352, column: 17)
!608 = distinct !DILexicalBlock(scope: !603, file: !2, line: 350, column: 52)
!609 = !DILocation(line: 352, column: 17, scope: !608)
!610 = !DILocation(line: 353, column: 43, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 353, column: 21)
!612 = distinct !DILexicalBlock(scope: !607, file: !2, line: 352, column: 35)
!613 = !DILocation(line: 353, column: 61, scope: !611)
!614 = !DILocation(line: 353, column: 21, scope: !611)
!615 = !DILocation(line: 353, column: 68, scope: !611)
!616 = !DILocation(line: 353, column: 21, scope: !612)
!617 = !DILocation(line: 355, column: 21, scope: !618)
!618 = distinct !DILexicalBlock(scope: !611, file: !2, line: 354, column: 46)
!619 = !DILocation(line: 357, column: 21, scope: !620)
!620 = distinct !DILexicalBlock(scope: !611, file: !2, line: 356, column: 24)
!621 = !DILocation(line: 359, column: 24, scope: !622)
!622 = distinct !DILexicalBlock(scope: !607, file: !2, line: 359, column: 24)
!623 = !DILocation(line: 359, column: 31, scope: !622)
!624 = !DILocation(line: 359, column: 45, scope: !622)
!625 = !DILocation(line: 359, column: 24, scope: !607)
!626 = !DILocation(line: 368, column: 22, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 368, column: 21)
!628 = distinct !DILexicalBlock(scope: !622, file: !2, line: 359, column: 70)
!629 = !DILocation(line: 368, column: 21, scope: !628)
!630 = !DILocation(line: 369, column: 21, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 369, column: 21)
!632 = distinct !DILexicalBlock(scope: !627, file: !2, line: 368, column: 41)
!633 = !DILocation(line: 369, column: 21, scope: !632)
!634 = !DILocation(line: 369, column: 21, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !2, line: 369, column: 21)
!636 = !DILocation(line: 372, column: 21, scope: !637)
!637 = distinct !DILexicalBlock(scope: !628, file: !2, line: 372, column: 21)
!638 = !DILocation(line: 372, column: 30, scope: !637)
!639 = !DILocation(line: 372, column: 21, scope: !628)
!640 = !DILocation(line: 373, column: 21, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !2, line: 372, column: 38)
!642 = !DILocation(line: 373, column: 28, scope: !641)
!643 = !DILocation(line: 373, column: 42, scope: !641)
!644 = !DILocation(line: 374, column: 17, scope: !641)
!645 = !DILocation(line: 374, column: 28, scope: !646)
!646 = distinct !DILexicalBlock(scope: !637, file: !2, line: 374, column: 28)
!647 = !DILocation(line: 374, column: 28, scope: !637)
!648 = !DILocation(line: 375, column: 21, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !2, line: 374, column: 47)
!650 = !DILocation(line: 375, column: 28, scope: !649)
!651 = !DILocation(line: 375, column: 42, scope: !649)
!652 = !DILocation(line: 376, column: 36, scope: !649)
!653 = !DILocation(line: 376, column: 45, scope: !649)
!654 = !DILocation(line: 376, column: 21, scope: !649)
!655 = !DILocation(line: 376, column: 28, scope: !649)
!656 = !DILocation(line: 376, column: 34, scope: !649)
!657 = !DILocation(line: 377, column: 17, scope: !649)
!658 = !DILocation(line: 378, column: 21, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !2, line: 378, column: 21)
!660 = distinct !DILexicalBlock(scope: !646, file: !2, line: 377, column: 24)
!661 = !DILocation(line: 378, column: 21, scope: !660)
!662 = !DILocation(line: 378, column: 21, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !2, line: 378, column: 21)
!664 = !DILocation(line: 380, column: 17, scope: !628)
!665 = !DILocation(line: 382, column: 24, scope: !666)
!666 = distinct !DILexicalBlock(scope: !622, file: !2, line: 382, column: 24)
!667 = !DILocation(line: 382, column: 31, scope: !666)
!668 = !DILocation(line: 382, column: 45, scope: !666)
!669 = !DILocation(line: 382, column: 24, scope: !622)
!670 = !DILocation(line: 383, column: 21, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 383, column: 21)
!672 = distinct !DILexicalBlock(scope: !666, file: !2, line: 382, column: 70)
!673 = !DILocation(line: 383, column: 21, scope: !672)
!674 = !DILocation(line: 385, column: 21, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 385, column: 21)
!676 = distinct !DILexicalBlock(scope: !671, file: !2, line: 383, column: 40)
!677 = !DILocation(line: 385, column: 21, scope: !676)
!678 = !DILocation(line: 385, column: 21, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 385, column: 21)
!680 = !DILocation(line: 388, column: 21, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !2, line: 388, column: 21)
!682 = !DILocation(line: 388, column: 28, scope: !681)
!683 = !DILocation(line: 388, column: 42, scope: !681)
!684 = !DILocation(line: 388, column: 21, scope: !672)
!685 = !DILocation(line: 389, column: 21, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !2, line: 388, column: 68)
!687 = !DILocation(line: 389, column: 28, scope: !686)
!688 = !DILocation(line: 389, column: 42, scope: !686)
!689 = !DILocation(line: 390, column: 17, scope: !686)
!690 = !DILocation(line: 391, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !681, file: !2, line: 390, column: 24)
!692 = !DILocation(line: 391, column: 28, scope: !691)
!693 = !DILocation(line: 391, column: 42, scope: !691)
!694 = !DILocation(line: 393, column: 17, scope: !672)
!695 = !DILocation(line: 396, column: 18, scope: !696)
!696 = distinct !DILexicalBlock(scope: !608, file: !2, line: 396, column: 17)
!697 = !DILocation(line: 396, column: 25, scope: !696)
!698 = !DILocation(line: 396, column: 39, scope: !696)
!699 = !DILocation(line: 396, column: 66, scope: !696)
!700 = !DILocation(line: 397, column: 23, scope: !696)
!701 = !DILocation(line: 397, column: 30, scope: !696)
!702 = !DILocation(line: 397, column: 44, scope: !696)
!703 = !DILocation(line: 396, column: 17, scope: !608)
!704 = !DILocation(line: 397, column: 68, scope: !696)
!705 = !DILabel(scope: !706, name: "GT_SPECIAL_NUMERIC", file: !2, line: 398)
!706 = distinct !DILexicalBlock(scope: !696, file: !2, line: 397, column: 68)
!707 = !DILocation(line: 398, column: 17, scope: !706)
!708 = !DILocation(line: 399, column: 25, scope: !706)
!709 = !DILocation(line: 399, column: 17, scope: !706)
!710 = !DILocation(line: 401, column: 21, scope: !711)
!711 = distinct !DILexicalBlock(scope: !706, file: !2, line: 399, column: 35)
!712 = !DILocation(line: 401, column: 36, scope: !711)
!713 = !DILocation(line: 402, column: 21, scope: !711)
!714 = !DILocation(line: 405, column: 25, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !2, line: 405, column: 25)
!716 = !DILocation(line: 405, column: 32, scope: !715)
!717 = !DILocation(line: 405, column: 46, scope: !715)
!718 = !DILocation(line: 405, column: 25, scope: !711)
!719 = !DILocation(line: 406, column: 25, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 406, column: 25)
!721 = distinct !DILexicalBlock(scope: !715, file: !2, line: 405, column: 71)
!722 = !DILocation(line: 406, column: 25, scope: !721)
!723 = !DILocation(line: 406, column: 25, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 406, column: 25)
!725 = !DILocation(line: 408, column: 21, scope: !711)
!726 = !DILocation(line: 408, column: 28, scope: !711)
!727 = !DILocation(line: 408, column: 42, scope: !711)
!728 = !DILocation(line: 409, column: 21, scope: !711)
!729 = !DILocation(line: 409, column: 36, scope: !711)
!730 = !DILocation(line: 410, column: 21, scope: !711)
!731 = !DILocation(line: 414, column: 25, scope: !732)
!732 = distinct !DILexicalBlock(scope: !711, file: !2, line: 414, column: 25)
!733 = !DILocation(line: 414, column: 32, scope: !732)
!734 = !DILocation(line: 414, column: 46, scope: !732)
!735 = !DILocation(line: 414, column: 25, scope: !711)
!736 = !DILocation(line: 415, column: 25, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 415, column: 25)
!738 = distinct !DILexicalBlock(scope: !732, file: !2, line: 414, column: 74)
!739 = !DILocation(line: 415, column: 25, scope: !738)
!740 = !DILocation(line: 415, column: 25, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !2, line: 415, column: 25)
!742 = !DILocation(line: 417, column: 21, scope: !711)
!743 = !DILocation(line: 417, column: 28, scope: !711)
!744 = !DILocation(line: 417, column: 42, scope: !711)
!745 = !DILocation(line: 418, column: 21, scope: !711)
!746 = !DILocation(line: 418, column: 36, scope: !711)
!747 = !DILocation(line: 419, column: 21, scope: !711)
!748 = !DILocation(line: 423, column: 25, scope: !749)
!749 = distinct !DILexicalBlock(scope: !711, file: !2, line: 423, column: 25)
!750 = !DILocation(line: 423, column: 40, scope: !749)
!751 = !DILocation(line: 423, column: 25, scope: !711)
!752 = !DILocation(line: 424, column: 25, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 424, column: 25)
!754 = distinct !DILexicalBlock(scope: !749, file: !2, line: 423, column: 48)
!755 = !DILocation(line: 424, column: 25, scope: !754)
!756 = !DILocation(line: 424, column: 25, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !2, line: 424, column: 25)
!758 = !DILocation(line: 426, column: 21, scope: !711)
!759 = !DILocation(line: 426, column: 36, scope: !711)
!760 = !DILocation(line: 427, column: 21, scope: !711)
!761 = !DILocation(line: 430, column: 40, scope: !762)
!762 = distinct !DILexicalBlock(scope: !711, file: !2, line: 430, column: 25)
!763 = !DILocation(line: 430, column: 25, scope: !762)
!764 = !DILocation(line: 430, column: 25, scope: !711)
!765 = !DILocation(line: 431, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !2, line: 430, column: 51)
!767 = !DILocation(line: 433, column: 21, scope: !768)
!768 = distinct !DILexicalBlock(scope: !711, file: !2, line: 433, column: 21)
!769 = !DILocation(line: 433, column: 21, scope: !711)
!770 = !DILocation(line: 433, column: 21, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 433, column: 21)
!772 = !DILocation(line: 438, column: 33, scope: !773)
!773 = distinct !DILexicalBlock(scope: !608, file: !2, line: 438, column: 17)
!774 = !DILocation(line: 438, column: 18, scope: !773)
!775 = !DILocation(line: 438, column: 17, scope: !608)
!776 = !DILocation(line: 439, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 438, column: 44)
!778 = !DILocation(line: 439, column: 37, scope: !777)
!779 = !DILocation(line: 442, column: 21, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !2, line: 442, column: 21)
!781 = !DILocation(line: 442, column: 28, scope: !780)
!782 = !DILocation(line: 442, column: 42, scope: !780)
!783 = !DILocation(line: 442, column: 21, scope: !777)
!784 = !DILocation(line: 443, column: 21, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 443, column: 21)
!786 = distinct !DILexicalBlock(scope: !780, file: !2, line: 442, column: 67)
!787 = !DILocation(line: 443, column: 21, scope: !786)
!788 = !DILocation(line: 443, column: 21, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 443, column: 21)
!790 = distinct !DILexicalBlock(scope: !785, file: !2, line: 443, column: 21)
!791 = !DILocation(line: 443, column: 21, scope: !790)
!792 = !DILocation(line: 443, column: 21, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !2, line: 443, column: 21)
!794 = !DILocation(line: 444, column: 17, scope: !786)
!795 = !DILocation(line: 444, column: 28, scope: !796)
!796 = distinct !DILexicalBlock(scope: !780, file: !2, line: 444, column: 28)
!797 = !DILocation(line: 444, column: 35, scope: !796)
!798 = !DILocation(line: 444, column: 49, scope: !796)
!799 = !DILocation(line: 444, column: 28, scope: !780)
!800 = !DILocation(line: 445, column: 21, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !2, line: 445, column: 21)
!802 = distinct !DILexicalBlock(scope: !796, file: !2, line: 444, column: 75)
!803 = !DILocation(line: 445, column: 21, scope: !802)
!804 = !DILocation(line: 445, column: 21, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !2, line: 445, column: 21)
!806 = distinct !DILexicalBlock(scope: !801, file: !2, line: 445, column: 21)
!807 = !DILocation(line: 445, column: 21, scope: !806)
!808 = !DILocation(line: 445, column: 21, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !2, line: 445, column: 21)
!810 = !DILocation(line: 446, column: 17, scope: !802)
!811 = !DILocation(line: 446, column: 28, scope: !812)
!812 = distinct !DILexicalBlock(scope: !796, file: !2, line: 446, column: 28)
!813 = !DILocation(line: 446, column: 35, scope: !812)
!814 = !DILocation(line: 446, column: 49, scope: !812)
!815 = !DILocation(line: 446, column: 28, scope: !796)
!816 = !DILocation(line: 447, column: 21, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 447, column: 21)
!818 = distinct !DILexicalBlock(scope: !812, file: !2, line: 446, column: 74)
!819 = !DILocation(line: 447, column: 21, scope: !818)
!820 = !DILocation(line: 447, column: 21, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 447, column: 21)
!822 = distinct !DILexicalBlock(scope: !817, file: !2, line: 447, column: 21)
!823 = !DILocation(line: 447, column: 21, scope: !822)
!824 = !DILocation(line: 447, column: 21, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !2, line: 447, column: 21)
!826 = !DILocation(line: 466, column: 17, scope: !818)
!827 = !DILocation(line: 468, column: 17, scope: !777)
!828 = !DILocation(line: 438, column: 41, scope: !773)
!829 = !DILabel(scope: !608, name: "GT_SPECIAL_POP", file: !2, line: 471)
!830 = !DILocation(line: 471, column: 13, scope: !608)
!831 = !DILocation(line: 472, column: 13, scope: !608)
!832 = !DILocation(line: 472, column: 18, scope: !608)
!833 = !DILocation(line: 472, column: 29, scope: !608)
!834 = !DILocation(line: 473, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !608, file: !2, line: 473, column: 17)
!836 = !DILocation(line: 473, column: 17, scope: !608)
!837 = !DILocation(line: 475, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !2, line: 473, column: 35)
!839 = !DILocation(line: 475, column: 24, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !2, line: 475, column: 24)
!841 = !DILocation(line: 475, column: 31, scope: !840)
!842 = !DILocation(line: 475, column: 45, scope: !840)
!843 = !DILocation(line: 475, column: 69, scope: !840)
!844 = !DILocation(line: 476, column: 21, scope: !840)
!845 = !DILocation(line: 476, column: 28, scope: !840)
!846 = !DILocation(line: 476, column: 42, scope: !840)
!847 = !DILocation(line: 475, column: 24, scope: !835)
!848 = !DILocation(line: 478, column: 17, scope: !849)
!849 = distinct !DILexicalBlock(scope: !840, file: !2, line: 476, column: 92)
!850 = !DILocation(line: 478, column: 24, scope: !849)
!851 = !DILocation(line: 478, column: 38, scope: !849)
!852 = !DILocation(line: 479, column: 13, scope: !849)
!853 = !DILocation(line: 479, column: 24, scope: !854)
!854 = distinct !DILexicalBlock(scope: !840, file: !2, line: 479, column: 24)
!855 = !DILocation(line: 479, column: 31, scope: !854)
!856 = !DILocation(line: 479, column: 45, scope: !854)
!857 = !DILocation(line: 479, column: 24, scope: !840)
!858 = !DILocation(line: 481, column: 17, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 481, column: 17)
!860 = distinct !DILexicalBlock(scope: !854, file: !2, line: 479, column: 70)
!861 = !DILocation(line: 481, column: 17, scope: !860)
!862 = !DILocation(line: 481, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !2, line: 481, column: 17)
!864 = !DILocation(line: 482, column: 24, scope: !865)
!865 = distinct !DILexicalBlock(scope: !854, file: !2, line: 482, column: 24)
!866 = !DILocation(line: 482, column: 31, scope: !865)
!867 = !DILocation(line: 482, column: 45, scope: !865)
!868 = !DILocation(line: 482, column: 24, scope: !854)
!869 = !DILocation(line: 483, column: 21, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 483, column: 21)
!871 = distinct !DILexicalBlock(scope: !865, file: !2, line: 482, column: 68)
!872 = !DILocation(line: 483, column: 42, scope: !870)
!873 = !DILocation(line: 483, column: 21, scope: !871)
!874 = !DILocation(line: 484, column: 21, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 484, column: 21)
!876 = distinct !DILexicalBlock(scope: !870, file: !2, line: 483, column: 48)
!877 = !DILocation(line: 484, column: 21, scope: !876)
!878 = !DILocation(line: 484, column: 21, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !2, line: 484, column: 21)
!880 = !DILocation(line: 486, column: 17, scope: !871)
!881 = !DILocation(line: 486, column: 24, scope: !871)
!882 = !DILocation(line: 486, column: 30, scope: !871)
!883 = !DILocation(line: 487, column: 13, scope: !871)
!884 = !DILocation(line: 487, column: 24, scope: !885)
!885 = distinct !DILexicalBlock(scope: !865, file: !2, line: 487, column: 24)
!886 = !DILocation(line: 487, column: 31, scope: !885)
!887 = !DILocation(line: 487, column: 45, scope: !885)
!888 = !DILocation(line: 487, column: 24, scope: !865)
!889 = !DILocation(line: 489, column: 21, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 489, column: 21)
!891 = distinct !DILexicalBlock(scope: !885, file: !2, line: 487, column: 72)
!892 = !DILocation(line: 489, column: 36, scope: !890)
!893 = !DILocation(line: 489, column: 21, scope: !891)
!894 = !DILocation(line: 490, column: 21, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 490, column: 21)
!896 = distinct !DILexicalBlock(scope: !890, file: !2, line: 489, column: 44)
!897 = !DILocation(line: 490, column: 21, scope: !896)
!898 = !DILocation(line: 490, column: 21, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !2, line: 490, column: 21)
!900 = !DILocation(line: 492, column: 13, scope: !891)
!901 = !DILocation(line: 492, column: 24, scope: !902)
!902 = distinct !DILexicalBlock(scope: !885, file: !2, line: 492, column: 24)
!903 = !DILocation(line: 492, column: 31, scope: !902)
!904 = !DILocation(line: 492, column: 45, scope: !902)
!905 = !DILocation(line: 492, column: 24, scope: !885)
!906 = !DILocation(line: 493, column: 21, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 493, column: 21)
!908 = distinct !DILexicalBlock(scope: !902, file: !2, line: 492, column: 70)
!909 = !DILocation(line: 493, column: 42, scope: !907)
!910 = !DILocation(line: 493, column: 21, scope: !908)
!911 = !DILocation(line: 494, column: 21, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 494, column: 21)
!913 = distinct !DILexicalBlock(scope: !907, file: !2, line: 493, column: 48)
!914 = !DILocation(line: 494, column: 21, scope: !913)
!915 = !DILocation(line: 494, column: 21, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !2, line: 494, column: 21)
!917 = !DILocation(line: 496, column: 17, scope: !908)
!918 = !DILocation(line: 496, column: 24, scope: !908)
!919 = !DILocation(line: 496, column: 30, scope: !908)
!920 = !DILocation(line: 497, column: 13, scope: !908)
!921 = !DILocation(line: 497, column: 24, scope: !922)
!922 = distinct !DILexicalBlock(scope: !902, file: !2, line: 497, column: 24)
!923 = !DILocation(line: 497, column: 31, scope: !922)
!924 = !DILocation(line: 497, column: 45, scope: !922)
!925 = !DILocation(line: 497, column: 24, scope: !902)
!926 = !DILocation(line: 498, column: 21, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 498, column: 21)
!928 = distinct !DILexicalBlock(scope: !922, file: !2, line: 497, column: 71)
!929 = !DILocation(line: 498, column: 42, scope: !927)
!930 = !DILocation(line: 498, column: 21, scope: !928)
!931 = !DILocation(line: 499, column: 21, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 499, column: 21)
!933 = distinct !DILexicalBlock(scope: !927, file: !2, line: 498, column: 48)
!934 = !DILocation(line: 499, column: 21, scope: !933)
!935 = !DILocation(line: 499, column: 21, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !2, line: 499, column: 21)
!937 = !DILocation(line: 501, column: 13, scope: !928)
!938 = !DILocation(line: 501, column: 24, scope: !939)
!939 = distinct !DILexicalBlock(scope: !922, file: !2, line: 501, column: 24)
!940 = !DILocation(line: 501, column: 31, scope: !939)
!941 = !DILocation(line: 501, column: 45, scope: !939)
!942 = !DILocation(line: 501, column: 24, scope: !922)
!943 = !DILocation(line: 502, column: 21, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 502, column: 21)
!945 = distinct !DILexicalBlock(scope: !939, file: !2, line: 501, column: 70)
!946 = !DILocation(line: 502, column: 42, scope: !944)
!947 = !DILocation(line: 502, column: 21, scope: !945)
!948 = !DILocation(line: 503, column: 21, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 503, column: 21)
!950 = distinct !DILexicalBlock(scope: !944, file: !2, line: 502, column: 48)
!951 = !DILocation(line: 503, column: 21, scope: !950)
!952 = !DILocation(line: 503, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !2, line: 503, column: 21)
!954 = !DILocation(line: 505, column: 13, scope: !945)
!955 = !DILocation(line: 506, column: 13, scope: !608)
!956 = !DILocation(line: 506, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !608, file: !2, line: 506, column: 13)
!958 = !DILocation(line: 506, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !2, line: 506, column: 13)
!960 = distinct !DILexicalBlock(scope: !957, file: !2, line: 506, column: 13)
!961 = !DILocation(line: 506, column: 13, scope: !960)
!962 = !DILocation(line: 506, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !2, line: 506, column: 13)
!964 = !DILocation(line: 506, column: 13, scope: !965)
!965 = distinct !DILexicalBlock(scope: !959, file: !2, line: 506, column: 13)
!966 = !DILocation(line: 506, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !965, file: !2, line: 506, column: 13)
!968 = !DILocation(line: 506, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !960, file: !2, line: 506, column: 13)
!970 = !DILocation(line: 506, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !2, line: 506, column: 13)
!972 = !DILocation(line: 507, column: 13, scope: !608)
!973 = !DILocation(line: 507, column: 18, scope: !608)
!974 = !DILocation(line: 507, column: 28, scope: !608)
!975 = !DILocation(line: 508, column: 39, scope: !976)
!976 = distinct !DILexicalBlock(scope: !608, file: !2, line: 508, column: 17)
!977 = !DILocation(line: 508, column: 17, scope: !976)
!978 = !DILocation(line: 508, column: 17, scope: !608)
!979 = !DILocation(line: 509, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !2, line: 508, column: 50)
!981 = !DILocation(line: 518, column: 13, scope: !608)
!982 = !DILocation(line: 519, column: 42, scope: !983)
!983 = distinct !DILexicalBlock(scope: !603, file: !2, line: 519, column: 20)
!984 = !DILocation(line: 519, column: 20, scope: !983)
!985 = !DILocation(line: 519, column: 20, scope: !603)
!986 = !DILocation(line: 524, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 519, column: 53)
!988 = !DILocation(line: 525, column: 36, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !2, line: 525, column: 20)
!990 = !DILocation(line: 525, column: 20, scope: !989)
!991 = !DILocation(line: 525, column: 20, scope: !983)
!992 = !DILocation(line: 527, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !2, line: 525, column: 47)
!994 = !DILocation(line: 532, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !515, file: !2, line: 532, column: 13)
!996 = !DILocation(line: 532, column: 22, scope: !995)
!997 = !DILocation(line: 532, column: 13, scope: !515)
!998 = !DILocation(line: 532, column: 30, scope: !995)
!999 = !DILabel(scope: !1000, name: "GT_QUOTE", file: !2, line: 533)
!1000 = distinct !DILexicalBlock(scope: !995, file: !2, line: 532, column: 30)
!1001 = !DILocation(line: 533, column: 13, scope: !1000)
!1002 = !DILocation(line: 534, column: 13, scope: !1000)
!1003 = !DILocation(line: 534, column: 18, scope: !1000)
!1004 = !DILocation(line: 534, column: 29, scope: !1000)
!1005 = !DILocation(line: 535, column: 21, scope: !1000)
!1006 = !DILocation(line: 535, column: 13, scope: !1000)
!1007 = !DILocation(line: 539, column: 17, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 535, column: 33)
!1009 = !DILocation(line: 539, column: 17, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 539, column: 17)
!1011 = !DILocation(line: 539, column: 17, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 539, column: 17)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 539, column: 17)
!1014 = !DILocation(line: 539, column: 17, scope: !1013)
!1015 = !DILocation(line: 539, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 539, column: 17)
!1017 = !DILocation(line: 539, column: 17, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 539, column: 17)
!1019 = !DILocation(line: 539, column: 17, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 539, column: 17)
!1021 = !DILocation(line: 539, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 539, column: 17)
!1023 = !DILocation(line: 539, column: 17, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 539, column: 17)
!1025 = !DILocation(line: 540, column: 17, scope: !1008)
!1026 = !DILocation(line: 542, column: 17, scope: !1008)
!1027 = !DILocation(line: 542, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 542, column: 17)
!1029 = !DILocation(line: 542, column: 17, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 542, column: 17)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 542, column: 17)
!1032 = !DILocation(line: 542, column: 17, scope: !1031)
!1033 = !DILocation(line: 542, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 542, column: 17)
!1035 = !DILocation(line: 542, column: 17, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 542, column: 17)
!1037 = !DILocation(line: 542, column: 17, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 542, column: 17)
!1039 = !DILocation(line: 542, column: 17, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 542, column: 17)
!1041 = !DILocation(line: 542, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 542, column: 17)
!1043 = !DILocation(line: 543, column: 17, scope: !1008)
!1044 = !DILocation(line: 546, column: 17, scope: !1008)
!1045 = !DILocation(line: 546, column: 24, scope: !1008)
!1046 = !DILocation(line: 546, column: 29, scope: !1008)
!1047 = !DILocation(line: 547, column: 23, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 547, column: 22)
!1049 = !DILocation(line: 547, column: 30, scope: !1048)
!1050 = !DILocation(line: 547, column: 35, scope: !1048)
!1051 = !DILocation(line: 547, column: 39, scope: !1048)
!1052 = !DILocation(line: 547, column: 22, scope: !1008)
!1053 = !DILocation(line: 549, column: 25, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 549, column: 25)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 547, column: 45)
!1056 = !DILocation(line: 549, column: 30, scope: !1054)
!1057 = !DILocation(line: 549, column: 39, scope: !1054)
!1058 = !DILocation(line: 549, column: 25, scope: !1055)
!1059 = !DILocation(line: 550, column: 25, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 550, column: 25)
!1061 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 549, column: 47)
!1062 = !DILocation(line: 550, column: 25, scope: !1061)
!1063 = !DILocation(line: 550, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 550, column: 25)
!1065 = !DILocation(line: 552, column: 21, scope: !1055)
!1066 = !DILocation(line: 552, column: 26, scope: !1055)
!1067 = !DILocation(line: 552, column: 36, scope: !1055)
!1068 = !DILocation(line: 553, column: 21, scope: !1055)
!1069 = !DILocation(line: 553, column: 26, scope: !1055)
!1070 = !DILocation(line: 553, column: 35, scope: !1055)
!1071 = !DILocation(line: 555, column: 21, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 555, column: 21)
!1073 = !DILocation(line: 555, column: 21, scope: !1055)
!1074 = !DILocation(line: 555, column: 21, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 555, column: 21)
!1076 = !DILocation(line: 556, column: 21, scope: !1055)
!1077 = !DILocation(line: 556, column: 28, scope: !1055)
!1078 = !DILocation(line: 556, column: 33, scope: !1055)
!1079 = !DILocation(line: 557, column: 21, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 557, column: 21)
!1081 = !DILocation(line: 557, column: 21, scope: !1055)
!1082 = !DILocation(line: 557, column: 21, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 557, column: 21)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 557, column: 21)
!1085 = !DILocation(line: 557, column: 21, scope: !1084)
!1086 = !DILocation(line: 557, column: 21, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 557, column: 21)
!1088 = !DILocation(line: 557, column: 21, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 557, column: 21)
!1090 = !DILocation(line: 557, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 557, column: 21)
!1092 = !DILocation(line: 557, column: 21, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 557, column: 21)
!1094 = !DILocation(line: 557, column: 21, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 557, column: 21)
!1096 = !DILocation(line: 559, column: 17, scope: !1055)
!1097 = !DILocation(line: 561, column: 25, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 561, column: 25)
!1099 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 559, column: 24)
!1100 = !DILocation(line: 561, column: 30, scope: !1098)
!1101 = !DILocation(line: 561, column: 40, scope: !1098)
!1102 = !DILocation(line: 561, column: 25, scope: !1099)
!1103 = !DILocation(line: 562, column: 25, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 562, column: 25)
!1105 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 561, column: 48)
!1106 = !DILocation(line: 562, column: 25, scope: !1105)
!1107 = !DILocation(line: 562, column: 25, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 562, column: 25)
!1109 = !DILocation(line: 564, column: 21, scope: !1099)
!1110 = !DILocation(line: 564, column: 26, scope: !1099)
!1111 = !DILocation(line: 564, column: 35, scope: !1099)
!1112 = !DILocation(line: 565, column: 21, scope: !1099)
!1113 = !DILocation(line: 565, column: 26, scope: !1099)
!1114 = !DILocation(line: 565, column: 36, scope: !1099)
!1115 = !DILocation(line: 567, column: 21, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 567, column: 21)
!1117 = !DILocation(line: 567, column: 21, scope: !1099)
!1118 = !DILocation(line: 567, column: 21, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 567, column: 21)
!1120 = !DILocation(line: 568, column: 21, scope: !1099)
!1121 = !DILocation(line: 568, column: 28, scope: !1099)
!1122 = !DILocation(line: 568, column: 33, scope: !1099)
!1123 = !DILocation(line: 569, column: 21, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 569, column: 21)
!1125 = !DILocation(line: 569, column: 21, scope: !1099)
!1126 = !DILocation(line: 569, column: 21, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 569, column: 21)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 569, column: 21)
!1129 = !DILocation(line: 569, column: 21, scope: !1128)
!1130 = !DILocation(line: 569, column: 21, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 569, column: 21)
!1132 = !DILocation(line: 569, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 569, column: 21)
!1134 = !DILocation(line: 569, column: 21, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 569, column: 21)
!1136 = !DILocation(line: 569, column: 21, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 569, column: 21)
!1138 = !DILocation(line: 569, column: 21, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 569, column: 21)
!1140 = !DILocation(line: 571, column: 17, scope: !1008)
!1141 = !DILocation(line: 574, column: 17, scope: !1008)
!1142 = !DILocation(line: 574, column: 24, scope: !1008)
!1143 = !DILocation(line: 574, column: 29, scope: !1008)
!1144 = !DILocation(line: 575, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 575, column: 17)
!1146 = !DILocation(line: 575, column: 17, scope: !1008)
!1147 = !DILocation(line: 575, column: 17, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 575, column: 17)
!1149 = !DILocation(line: 576, column: 17, scope: !1008)
!1150 = !DILocation(line: 576, column: 24, scope: !1008)
!1151 = !DILocation(line: 576, column: 29, scope: !1008)
!1152 = !DILocation(line: 577, column: 17, scope: !1008)
!1153 = !DILocation(line: 577, column: 22, scope: !1008)
!1154 = !DILocation(line: 577, column: 32, scope: !1008)
!1155 = !DILocation(line: 578, column: 17, scope: !1008)
!1156 = !DILocation(line: 578, column: 22, scope: !1008)
!1157 = !DILocation(line: 578, column: 31, scope: !1008)
!1158 = !DILocation(line: 579, column: 17, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 579, column: 17)
!1160 = !DILocation(line: 579, column: 17, scope: !1008)
!1161 = !DILocation(line: 579, column: 17, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 579, column: 17)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 579, column: 17)
!1164 = !DILocation(line: 579, column: 17, scope: !1163)
!1165 = !DILocation(line: 579, column: 17, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 579, column: 17)
!1167 = !DILocation(line: 579, column: 17, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 579, column: 17)
!1169 = !DILocation(line: 579, column: 17, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 579, column: 17)
!1171 = !DILocation(line: 579, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 579, column: 17)
!1173 = !DILocation(line: 579, column: 17, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 579, column: 17)
!1175 = !DILocation(line: 580, column: 17, scope: !1008)
!1176 = !DILocation(line: 583, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 583, column: 17)
!1178 = !DILocation(line: 583, column: 17, scope: !1008)
!1179 = !DILocation(line: 583, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 583, column: 17)
!1181 = !DILocation(line: 587, column: 17, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 587, column: 17)
!1183 = !DILocation(line: 587, column: 17, scope: !1008)
!1184 = !DILocation(line: 587, column: 17, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 587, column: 17)
!1186 = !DILocation(line: 590, column: 20, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !995, file: !2, line: 590, column: 20)
!1188 = !DILocation(line: 590, column: 29, scope: !1187)
!1189 = !DILocation(line: 590, column: 20, scope: !995)
!1190 = !DILocation(line: 590, column: 38, scope: !1187)
!1191 = !DILabel(scope: !1192, name: "GT_ESCAPE", file: !2, line: 591)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 590, column: 38)
!1193 = !DILocation(line: 591, column: 13, scope: !1192)
!1194 = !DILocation(line: 594, column: 19, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 594, column: 18)
!1196 = !DILocation(line: 594, column: 26, scope: !1195)
!1197 = !DILocation(line: 594, column: 31, scope: !1195)
!1198 = !DILocation(line: 594, column: 52, scope: !1195)
!1199 = !DILocation(line: 594, column: 18, scope: !1192)
!1200 = !DILocation(line: 595, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 595, column: 17)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 594, column: 59)
!1203 = !DILocation(line: 595, column: 17, scope: !1202)
!1204 = !DILocation(line: 595, column: 17, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 595, column: 17)
!1206 = !DILocation(line: 597, column: 13, scope: !1192)
!1207 = !DILocation(line: 597, column: 20, scope: !1192)
!1208 = !DILocation(line: 597, column: 28, scope: !1192)
!1209 = !DILocation(line: 598, column: 13, scope: !1192)
!1210 = !DILocation(line: 598, column: 18, scope: !1192)
!1211 = !DILocation(line: 598, column: 28, scope: !1192)
!1212 = !DILocation(line: 599, column: 13, scope: !1192)
!1213 = !DILocation(line: 532, column: 25, scope: !995)
!1214 = !DILabel(scope: !515, name: "GT_STRUCTURAL_TOKEN", file: !2, line: 602)
!1215 = !DILocation(line: 602, column: 9, scope: !515)
!1216 = !DILocation(line: 603, column: 17, scope: !515)
!1217 = !DILocation(line: 603, column: 9, scope: !515)
!1218 = !DILocation(line: 606, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 606, column: 17)
!1220 = distinct !DILexicalBlock(scope: !515, file: !2, line: 603, column: 27)
!1221 = !DILocation(line: 606, column: 22, scope: !1219)
!1222 = !DILocation(line: 606, column: 35, scope: !1219)
!1223 = !DILocation(line: 606, column: 32, scope: !1219)
!1224 = !DILocation(line: 606, column: 17, scope: !1220)
!1225 = !DILocation(line: 607, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 607, column: 17)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 606, column: 45)
!1228 = !DILocation(line: 607, column: 17, scope: !1227)
!1229 = !DILocation(line: 607, column: 17, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 607, column: 17)
!1231 = !DILocation(line: 609, column: 13, scope: !1220)
!1232 = !DILocation(line: 609, column: 18, scope: !1220)
!1233 = !DILocation(line: 609, column: 27, scope: !1220)
!1234 = !DILocation(line: 610, column: 13, scope: !1220)
!1235 = !DILocation(line: 610, column: 18, scope: !1220)
!1236 = !DILocation(line: 610, column: 29, scope: !1220)
!1237 = !DILocation(line: 611, column: 13, scope: !1220)
!1238 = !DILocation(line: 611, column: 18, scope: !1220)
!1239 = !DILocation(line: 611, column: 28, scope: !1220)
!1240 = !DILocation(line: 612, column: 13, scope: !1220)
!1241 = !DILocation(line: 622, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 622, column: 17)
!1243 = !DILocation(line: 622, column: 22, scope: !1242)
!1244 = !DILocation(line: 622, column: 35, scope: !1242)
!1245 = !DILocation(line: 622, column: 32, scope: !1242)
!1246 = !DILocation(line: 622, column: 17, scope: !1220)
!1247 = !DILocation(line: 626, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 626, column: 17)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 622, column: 45)
!1250 = !DILocation(line: 626, column: 17, scope: !1249)
!1251 = !DILocation(line: 626, column: 17, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 626, column: 17)
!1253 = !DILocation(line: 629, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 629, column: 17)
!1255 = !DILocation(line: 629, column: 24, scope: !1254)
!1256 = !DILocation(line: 629, column: 29, scope: !1254)
!1257 = !DILocation(line: 629, column: 17, scope: !1220)
!1258 = !DILocation(line: 631, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 629, column: 49)
!1260 = !DILocation(line: 631, column: 22, scope: !1259)
!1261 = !DILocation(line: 631, column: 32, scope: !1259)
!1262 = !DILocation(line: 632, column: 13, scope: !1259)
!1263 = !DILocation(line: 633, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 632, column: 20)
!1265 = !DILocation(line: 633, column: 22, scope: !1264)
!1266 = !DILocation(line: 633, column: 33, scope: !1264)
!1267 = !DILocation(line: 636, column: 13, scope: !1220)
!1268 = !DILocation(line: 636, column: 18, scope: !1220)
!1269 = !DILocation(line: 636, column: 27, scope: !1220)
!1270 = !DILocation(line: 637, column: 13, scope: !1220)
!1271 = !DILocation(line: 637, column: 18, scope: !1220)
!1272 = !DILocation(line: 637, column: 28, scope: !1220)
!1273 = !DILocation(line: 638, column: 13, scope: !1220)
!1274 = !DILocation(line: 645, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 645, column: 17)
!1276 = !DILocation(line: 645, column: 23, scope: !1275)
!1277 = !DILocation(line: 645, column: 17, scope: !1220)
!1278 = !DILocation(line: 646, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 646, column: 17)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 645, column: 35)
!1281 = !DILocation(line: 646, column: 17, scope: !1280)
!1282 = !DILocation(line: 646, column: 17, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 646, column: 17)
!1284 = !DILocation(line: 649, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 649, column: 13)
!1286 = !DILocation(line: 649, column: 13, scope: !1220)
!1287 = !DILocation(line: 649, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 649, column: 13)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 649, column: 13)
!1290 = !DILocation(line: 649, column: 13, scope: !1289)
!1291 = !DILocation(line: 649, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 649, column: 13)
!1293 = !DILocation(line: 650, column: 13, scope: !1220)
!1294 = !DILocation(line: 650, column: 20, scope: !1220)
!1295 = !DILocation(line: 650, column: 25, scope: !1220)
!1296 = !DILocation(line: 652, column: 13, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 652, column: 13)
!1298 = !DILocation(line: 652, column: 13, scope: !1220)
!1299 = !DILocation(line: 652, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 652, column: 13)
!1301 = !DILocation(line: 654, column: 27, scope: !1220)
!1302 = !DILocation(line: 654, column: 13, scope: !1220)
!1303 = !DILocation(line: 654, column: 20, scope: !1220)
!1304 = !DILocation(line: 654, column: 25, scope: !1220)
!1305 = !DILocation(line: 655, column: 13, scope: !1220)
!1306 = !DILocation(line: 655, column: 20, scope: !1220)
!1307 = !DILocation(line: 655, column: 26, scope: !1220)
!1308 = !DILocation(line: 656, column: 13, scope: !1220)
!1309 = !DILocation(line: 656, column: 18, scope: !1220)
!1310 = !DILocation(line: 656, column: 29, scope: !1220)
!1311 = !DILocation(line: 657, column: 17, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 657, column: 17)
!1313 = !DILocation(line: 657, column: 26, scope: !1312)
!1314 = !DILocation(line: 657, column: 17, scope: !1220)
!1315 = !DILocation(line: 659, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 657, column: 34)
!1317 = !DILocation(line: 659, column: 22, scope: !1316)
!1318 = !DILocation(line: 659, column: 32, scope: !1316)
!1319 = !DILocation(line: 660, column: 13, scope: !1316)
!1320 = !DILocation(line: 661, column: 17, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 661, column: 17)
!1322 = !DILocation(line: 661, column: 26, scope: !1321)
!1323 = !DILocation(line: 661, column: 17, scope: !1220)
!1324 = !DILocation(line: 662, column: 17, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 662, column: 17)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 661, column: 46)
!1327 = !DILocation(line: 662, column: 17, scope: !1326)
!1328 = !DILocation(line: 662, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 662, column: 17)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 662, column: 17)
!1331 = !DILocation(line: 662, column: 17, scope: !1330)
!1332 = !DILocation(line: 662, column: 17, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 662, column: 17)
!1334 = !DILocation(line: 662, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 662, column: 17)
!1336 = !DILocation(line: 662, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 662, column: 17)
!1338 = !DILocation(line: 662, column: 17, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 662, column: 17)
!1340 = !DILocation(line: 662, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 662, column: 17)
!1342 = !DILocation(line: 663, column: 13, scope: !1326)
!1343 = !DILocation(line: 664, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 664, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 663, column: 20)
!1346 = !DILocation(line: 664, column: 17, scope: !1345)
!1347 = !DILocation(line: 664, column: 17, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 664, column: 17)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 664, column: 17)
!1350 = !DILocation(line: 664, column: 17, scope: !1349)
!1351 = !DILocation(line: 664, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 664, column: 17)
!1353 = !DILocation(line: 664, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 664, column: 17)
!1355 = !DILocation(line: 664, column: 17, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 664, column: 17)
!1357 = !DILocation(line: 664, column: 17, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 664, column: 17)
!1359 = !DILocation(line: 664, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 664, column: 17)
!1361 = !DILocation(line: 666, column: 13, scope: !1220)
!1362 = !DILocation(line: 666, column: 18, scope: !1220)
!1363 = !DILocation(line: 666, column: 27, scope: !1220)
!1364 = !DILocation(line: 667, column: 13, scope: !1220)
!1365 = !DILocation(line: 673, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 673, column: 17)
!1367 = !DILocation(line: 673, column: 22, scope: !1366)
!1368 = !DILocation(line: 673, column: 31, scope: !1366)
!1369 = !DILocation(line: 673, column: 38, scope: !1366)
!1370 = !DILocation(line: 673, column: 41, scope: !1366)
!1371 = !DILocation(line: 673, column: 46, scope: !1366)
!1372 = !DILocation(line: 673, column: 54, scope: !1366)
!1373 = !DILocation(line: 673, column: 75, scope: !1366)
!1374 = !DILocation(line: 673, column: 17, scope: !1220)
!1375 = !DILocation(line: 674, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 674, column: 17)
!1377 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 673, column: 81)
!1378 = !DILocation(line: 674, column: 17, scope: !1377)
!1379 = !DILocation(line: 674, column: 17, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 674, column: 17)
!1381 = !DILocation(line: 677, column: 13, scope: !1220)
!1382 = !DILocation(line: 677, column: 18, scope: !1220)
!1383 = !DILocation(line: 677, column: 29, scope: !1220)
!1384 = !DILocation(line: 678, column: 13, scope: !1220)
!1385 = !DILocation(line: 678, column: 18, scope: !1220)
!1386 = !DILocation(line: 678, column: 23, scope: !1220)
!1387 = !DILocation(line: 679, column: 13, scope: !1220)
!1388 = !DILocation(line: 679, column: 18, scope: !1220)
!1389 = !DILocation(line: 679, column: 28, scope: !1220)
!1390 = !DILocation(line: 680, column: 13, scope: !1220)
!1391 = !DILocation(line: 680, column: 18, scope: !1220)
!1392 = !DILocation(line: 680, column: 27, scope: !1220)
!1393 = !DILocation(line: 681, column: 17, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 681, column: 17)
!1395 = !DILocation(line: 681, column: 26, scope: !1394)
!1396 = !DILocation(line: 681, column: 17, scope: !1220)
!1397 = !DILocation(line: 682, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 682, column: 21)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 681, column: 34)
!1400 = !DILocation(line: 682, column: 28, scope: !1398)
!1401 = !DILocation(line: 682, column: 33, scope: !1398)
!1402 = !DILocation(line: 682, column: 21, scope: !1399)
!1403 = !DILocation(line: 683, column: 21, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 683, column: 21)
!1405 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 682, column: 41)
!1406 = !DILocation(line: 683, column: 21, scope: !1405)
!1407 = !DILocation(line: 683, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 683, column: 21)
!1409 = !DILocation(line: 685, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 685, column: 17)
!1411 = !DILocation(line: 685, column: 17, scope: !1399)
!1412 = !DILocation(line: 685, column: 17, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 685, column: 17)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 685, column: 17)
!1415 = !DILocation(line: 685, column: 17, scope: !1414)
!1416 = !DILocation(line: 685, column: 17, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 685, column: 17)
!1418 = !DILocation(line: 685, column: 17, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 685, column: 17)
!1420 = !DILocation(line: 685, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 685, column: 17)
!1422 = !DILocation(line: 685, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 685, column: 17)
!1424 = !DILocation(line: 685, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 685, column: 17)
!1426 = !DILocation(line: 686, column: 13, scope: !1399)
!1427 = !DILocation(line: 687, column: 21, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 687, column: 21)
!1429 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 686, column: 20)
!1430 = !DILocation(line: 687, column: 28, scope: !1428)
!1431 = !DILocation(line: 687, column: 33, scope: !1428)
!1432 = !DILocation(line: 687, column: 21, scope: !1429)
!1433 = !DILocation(line: 688, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 688, column: 21)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 687, column: 41)
!1436 = !DILocation(line: 688, column: 21, scope: !1435)
!1437 = !DILocation(line: 688, column: 21, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 688, column: 21)
!1439 = !DILocation(line: 689, column: 28, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 689, column: 28)
!1441 = !DILocation(line: 689, column: 35, scope: !1440)
!1442 = !DILocation(line: 689, column: 41, scope: !1440)
!1443 = !DILocation(line: 689, column: 44, scope: !1440)
!1444 = !DILocation(line: 689, column: 51, scope: !1440)
!1445 = !DILocation(line: 689, column: 57, scope: !1440)
!1446 = !DILocation(line: 689, column: 61, scope: !1440)
!1447 = !DILocation(line: 689, column: 28, scope: !1428)
!1448 = !DILocation(line: 690, column: 21, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 690, column: 21)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 689, column: 67)
!1451 = !DILocation(line: 690, column: 21, scope: !1450)
!1452 = !DILocation(line: 690, column: 21, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 690, column: 21)
!1454 = !DILocation(line: 692, column: 17, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 692, column: 17)
!1456 = !DILocation(line: 692, column: 17, scope: !1429)
!1457 = !DILocation(line: 692, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 692, column: 17)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 692, column: 17)
!1460 = !DILocation(line: 692, column: 17, scope: !1459)
!1461 = !DILocation(line: 692, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 692, column: 17)
!1463 = !DILocation(line: 692, column: 17, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 692, column: 17)
!1465 = !DILocation(line: 692, column: 17, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 692, column: 17)
!1467 = !DILocation(line: 692, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 692, column: 17)
!1469 = !DILocation(line: 692, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 692, column: 17)
!1471 = !DILocation(line: 694, column: 21, scope: !1220)
!1472 = !DILocation(line: 694, column: 26, scope: !1220)
!1473 = !DILocation(line: 694, column: 34, scope: !1220)
!1474 = !DILocation(line: 694, column: 39, scope: !1220)
!1475 = !DILocation(line: 694, column: 32, scope: !1220)
!1476 = !DILocation(line: 694, column: 19, scope: !1220)
!1477 = !DILocation(line: 695, column: 30, scope: !1220)
!1478 = !DILocation(line: 695, column: 35, scope: !1220)
!1479 = !DILocation(line: 695, column: 13, scope: !1220)
!1480 = !DILocation(line: 695, column: 20, scope: !1220)
!1481 = !DILocation(line: 695, column: 28, scope: !1220)
!1482 = !DILocation(line: 696, column: 13, scope: !1220)
!1483 = !DILabel(scope: !1220, name: "GT_SPECIAL_BEGIN", file: !2, line: 699)
!1484 = !DILocation(line: 699, column: 13, scope: !1220)
!1485 = !DILocation(line: 706, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 706, column: 17)
!1487 = !DILocation(line: 706, column: 24, scope: !1486)
!1488 = !DILocation(line: 706, column: 29, scope: !1486)
!1489 = !DILocation(line: 706, column: 17, scope: !1220)
!1490 = !DILocalVariable(name: "special_flags", scope: !1491, file: !2, line: 707, type: !181)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 706, column: 50)
!1492 = !DILocation(line: 707, column: 21, scope: !1491)
!1493 = !DILocation(line: 707, column: 53, scope: !1491)
!1494 = !DILocation(line: 707, column: 37, scope: !1491)
!1495 = !DILocation(line: 708, column: 22, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 708, column: 21)
!1497 = !DILocation(line: 708, column: 21, scope: !1491)
!1498 = !DILocation(line: 713, column: 25, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 713, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 708, column: 37)
!1501 = !DILocation(line: 713, column: 34, scope: !1499)
!1502 = !DILocation(line: 713, column: 25, scope: !1500)
!1503 = !DILocation(line: 714, column: 25, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 714, column: 25)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 713, column: 43)
!1506 = !DILocation(line: 714, column: 25, scope: !1505)
!1507 = !DILocation(line: 714, column: 25, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 714, column: 25)
!1509 = !DILocation(line: 715, column: 32, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 715, column: 32)
!1511 = !DILocation(line: 715, column: 41, scope: !1510)
!1512 = !DILocation(line: 715, column: 32, scope: !1499)
!1513 = !DILocation(line: 716, column: 25, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 716, column: 25)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 715, column: 49)
!1516 = !DILocation(line: 716, column: 25, scope: !1515)
!1517 = !DILocation(line: 716, column: 25, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 716, column: 25)
!1519 = !DILocation(line: 718, column: 25, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 718, column: 25)
!1521 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 717, column: 28)
!1522 = !DILocation(line: 718, column: 25, scope: !1521)
!1523 = !DILocation(line: 718, column: 25, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 718, column: 25)
!1525 = !DILocation(line: 721, column: 17, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 721, column: 17)
!1527 = !DILocation(line: 721, column: 17, scope: !1491)
!1528 = !DILocation(line: 721, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 721, column: 17)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 721, column: 17)
!1531 = !DILocation(line: 721, column: 17, scope: !1530)
!1532 = !DILocation(line: 721, column: 17, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 721, column: 17)
!1534 = !DILocation(line: 722, column: 17, scope: !1491)
!1535 = !DILocation(line: 722, column: 24, scope: !1491)
!1536 = !DILocation(line: 722, column: 29, scope: !1491)
!1537 = !DILocation(line: 723, column: 22, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 723, column: 21)
!1539 = !DILocation(line: 723, column: 27, scope: !1538)
!1540 = !DILocation(line: 723, column: 21, scope: !1491)
!1541 = !DILocation(line: 724, column: 21, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 724, column: 21)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 723, column: 39)
!1544 = !DILocation(line: 724, column: 21, scope: !1543)
!1545 = !DILocation(line: 724, column: 21, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 724, column: 21)
!1547 = !DILocation(line: 726, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 726, column: 17)
!1549 = !DILocation(line: 726, column: 17, scope: !1491)
!1550 = !DILocation(line: 726, column: 17, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 726, column: 17)
!1552 = !DILocation(line: 727, column: 17, scope: !1491)
!1553 = !DILocation(line: 727, column: 24, scope: !1491)
!1554 = !DILocation(line: 727, column: 29, scope: !1491)
!1555 = !DILocation(line: 728, column: 40, scope: !1491)
!1556 = !DILocation(line: 728, column: 17, scope: !1491)
!1557 = !DILocation(line: 728, column: 24, scope: !1491)
!1558 = !DILocation(line: 728, column: 38, scope: !1491)
!1559 = !DILocation(line: 729, column: 17, scope: !1491)
!1560 = !DILocation(line: 729, column: 38, scope: !1491)
!1561 = !DILocation(line: 731, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 731, column: 21)
!1563 = !DILocation(line: 731, column: 35, scope: !1562)
!1564 = !DILocation(line: 731, column: 21, scope: !1491)
!1565 = !DILocation(line: 732, column: 36, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 731, column: 64)
!1567 = !DILocation(line: 732, column: 45, scope: !1566)
!1568 = !DILocation(line: 732, column: 21, scope: !1566)
!1569 = !DILocation(line: 732, column: 28, scope: !1566)
!1570 = !DILocation(line: 732, column: 34, scope: !1566)
!1571 = !DILocation(line: 733, column: 21, scope: !1566)
!1572 = !DILocation(line: 733, column: 36, scope: !1566)
!1573 = !DILocation(line: 734, column: 17, scope: !1566)
!1574 = !DILocation(line: 735, column: 21, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 734, column: 24)
!1576 = !DILocation(line: 735, column: 36, scope: !1575)
!1577 = !DILocation(line: 736, column: 21, scope: !1575)
!1578 = !DILocation(line: 736, column: 28, scope: !1575)
!1579 = !DILocation(line: 736, column: 34, scope: !1575)
!1580 = !DILocation(line: 738, column: 17, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 738, column: 17)
!1582 = !DILocation(line: 738, column: 17, scope: !1491)
!1583 = !DILocation(line: 738, column: 17, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 738, column: 17)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 738, column: 17)
!1586 = !DILocation(line: 738, column: 17, scope: !1585)
!1587 = !DILocation(line: 738, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 738, column: 17)
!1589 = !DILocation(line: 738, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 738, column: 17)
!1591 = !DILocation(line: 738, column: 17, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 738, column: 17)
!1593 = !DILocation(line: 738, column: 17, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 738, column: 17)
!1595 = !DILocation(line: 738, column: 17, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 738, column: 17)
!1597 = !DILocation(line: 739, column: 13, scope: !1491)
!1598 = !DILocation(line: 740, column: 13, scope: !1220)
!1599 = !DILocation(line: 313, column: 26, scope: !511)
!1600 = !DILocation(line: 313, column: 30, scope: !511)
!1601 = !DILocation(line: 313, column: 35, scope: !511)
!1602 = !DILocation(line: 313, column: 38, scope: !511)
!1603 = !DILocation(line: 313, column: 43, scope: !511)
!1604 = !DILocation(line: 313, column: 5, scope: !511)
!1605 = distinct !{!1605, !513, !1606, !438}
!1606 = !DILocation(line: 742, column: 5, scope: !512)
!1607 = !DILocation(line: 743, column: 1, scope: !480)
!1608 = distinct !DISubprogram(name: "is_allowed_escape", scope: !2, file: !2, line: 1641, type: !1609, scopeLine: 1641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!181, !144}
!1611 = !DILocalVariable(name: "c", arg: 1, scope: !1608, file: !2, line: 1641, type: !144)
!1612 = !DILocation(line: 1641, column: 39, scope: !1608)
!1613 = !DILocation(line: 1642, column: 28, scope: !1608)
!1614 = !DILocation(line: 1642, column: 30, scope: !1608)
!1615 = !DILocation(line: 1642, column: 12, scope: !1608)
!1616 = !DILocation(line: 1642, column: 5, scope: !1608)
!1617 = distinct !DISubprogram(name: "jsonsl__str_fastparse", scope: !2, file: !2, line: 162, type: !1618, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!181, !261, !1620, !333}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1621 = !DILocalVariable(name: "jsn", arg: 1, scope: !1617, file: !2, line: 162, type: !261)
!1622 = !DILocation(line: 162, column: 32, scope: !1617)
!1623 = !DILocalVariable(name: "bytes_p", arg: 2, scope: !1617, file: !2, line: 163, type: !1620)
!1624 = !DILocation(line: 163, column: 46, scope: !1617)
!1625 = !DILocalVariable(name: "nbytes_p", arg: 3, scope: !1617, file: !2, line: 163, type: !333)
!1626 = !DILocation(line: 163, column: 63, scope: !1617)
!1627 = !DILocalVariable(name: "bytes", scope: !1617, file: !2, line: 165, type: !490)
!1628 = !DILocation(line: 165, column: 27, scope: !1617)
!1629 = !DILocation(line: 165, column: 36, scope: !1617)
!1630 = !DILocation(line: 165, column: 35, scope: !1617)
!1631 = !DILocalVariable(name: "end", scope: !1617, file: !2, line: 166, type: !490)
!1632 = !DILocation(line: 166, column: 27, scope: !1617)
!1633 = !DILocation(line: 167, column: 16, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 167, column: 5)
!1635 = !DILocation(line: 167, column: 25, scope: !1634)
!1636 = !DILocation(line: 167, column: 24, scope: !1634)
!1637 = !DILocation(line: 167, column: 22, scope: !1634)
!1638 = !DILocation(line: 167, column: 14, scope: !1634)
!1639 = !DILocation(line: 167, column: 10, scope: !1634)
!1640 = !DILocation(line: 167, column: 35, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 167, column: 5)
!1642 = !DILocation(line: 167, column: 44, scope: !1641)
!1643 = !DILocation(line: 167, column: 41, scope: !1641)
!1644 = !DILocation(line: 167, column: 5, scope: !1634)
!1645 = !DILocation(line: 172, column: 34, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 172, column: 17)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 167, column: 58)
!1648 = !DILocation(line: 172, column: 33, scope: !1646)
!1649 = !DILocation(line: 172, column: 18, scope: !1646)
!1650 = !DILocation(line: 172, column: 17, scope: !1647)
!1651 = !DILocation(line: 175, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 172, column: 43)
!1653 = !DILocation(line: 177, column: 26, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 175, column: 16)
!1655 = !DILocation(line: 177, column: 35, scope: !1654)
!1656 = !DILocation(line: 177, column: 34, scope: !1654)
!1657 = !DILocation(line: 177, column: 32, scope: !1654)
!1658 = !DILocation(line: 177, column: 13, scope: !1654)
!1659 = !DILocation(line: 177, column: 18, scope: !1654)
!1660 = !DILocation(line: 177, column: 22, scope: !1654)
!1661 = !DILocation(line: 178, column: 27, scope: !1654)
!1662 = !DILocation(line: 178, column: 36, scope: !1654)
!1663 = !DILocation(line: 178, column: 35, scope: !1654)
!1664 = !DILocation(line: 178, column: 33, scope: !1654)
!1665 = !DILocation(line: 178, column: 14, scope: !1654)
!1666 = !DILocation(line: 178, column: 23, scope: !1654)
!1667 = !DILocation(line: 179, column: 24, scope: !1654)
!1668 = !DILocation(line: 179, column: 14, scope: !1654)
!1669 = !DILocation(line: 179, column: 22, scope: !1654)
!1670 = !DILocation(line: 180, column: 13, scope: !1654)
!1671 = !DILocation(line: 182, column: 5, scope: !1647)
!1672 = !DILocation(line: 167, column: 54, scope: !1641)
!1673 = !DILocation(line: 167, column: 5, scope: !1641)
!1674 = distinct !{!1674, !1644, !1675, !438}
!1675 = !DILocation(line: 182, column: 5, scope: !1634)
!1676 = !DILocation(line: 185, column: 18, scope: !1617)
!1677 = !DILocation(line: 185, column: 27, scope: !1617)
!1678 = !DILocation(line: 185, column: 26, scope: !1617)
!1679 = !DILocation(line: 185, column: 24, scope: !1617)
!1680 = !DILocation(line: 185, column: 5, scope: !1617)
!1681 = !DILocation(line: 185, column: 10, scope: !1617)
!1682 = !DILocation(line: 185, column: 14, scope: !1617)
!1683 = !DILocation(line: 186, column: 5, scope: !1617)
!1684 = !DILocation(line: 187, column: 1, scope: !1617)
!1685 = distinct !DISubprogram(name: "jsonsl__num_fastparse", scope: !2, file: !2, line: 192, type: !1686, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!181, !261, !1620, !333, !263}
!1688 = !DILocalVariable(name: "jsn", arg: 1, scope: !1685, file: !2, line: 192, type: !261)
!1689 = !DILocation(line: 192, column: 32, scope: !1685)
!1690 = !DILocalVariable(name: "bytes_p", arg: 2, scope: !1685, file: !2, line: 193, type: !1620)
!1691 = !DILocation(line: 193, column: 46, scope: !1685)
!1692 = !DILocalVariable(name: "nbytes_p", arg: 3, scope: !1685, file: !2, line: 193, type: !333)
!1693 = !DILocation(line: 193, column: 63, scope: !1685)
!1694 = !DILocalVariable(name: "state", arg: 4, scope: !1685, file: !2, line: 194, type: !263)
!1695 = !DILocation(line: 194, column: 47, scope: !1685)
!1696 = !DILocalVariable(name: "exhausted", scope: !1685, file: !2, line: 196, type: !181)
!1697 = !DILocation(line: 196, column: 9, scope: !1685)
!1698 = !DILocalVariable(name: "nbytes", scope: !1685, file: !2, line: 197, type: !249)
!1699 = !DILocation(line: 197, column: 12, scope: !1685)
!1700 = !DILocation(line: 197, column: 22, scope: !1685)
!1701 = !DILocation(line: 197, column: 21, scope: !1685)
!1702 = !DILocalVariable(name: "bytes", scope: !1685, file: !2, line: 198, type: !490)
!1703 = !DILocation(line: 198, column: 27, scope: !1685)
!1704 = !DILocation(line: 198, column: 36, scope: !1685)
!1705 = !DILocation(line: 198, column: 35, scope: !1685)
!1706 = !DILocation(line: 200, column: 5, scope: !1685)
!1707 = !DILocation(line: 200, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 200, column: 5)
!1709 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 200, column: 5)
!1710 = !DILocation(line: 200, column: 5, scope: !1709)
!1711 = !DILocalVariable(name: "c", scope: !1712, file: !2, line: 201, type: !339)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 200, column: 39)
!1713 = !DILocation(line: 201, column: 24, scope: !1712)
!1714 = !DILocation(line: 201, column: 29, scope: !1712)
!1715 = !DILocation(line: 201, column: 28, scope: !1712)
!1716 = !DILocation(line: 202, column: 13, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 202, column: 13)
!1718 = !DILocation(line: 202, column: 13, scope: !1712)
!1719 = !DILocation(line: 205, column: 29, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 202, column: 25)
!1721 = !DILocation(line: 205, column: 36, scope: !1720)
!1722 = !DILocation(line: 205, column: 42, scope: !1720)
!1723 = !DILocation(line: 205, column: 51, scope: !1720)
!1724 = !DILocation(line: 205, column: 53, scope: !1720)
!1725 = !DILocation(line: 205, column: 50, scope: !1720)
!1726 = !DILocation(line: 205, column: 48, scope: !1720)
!1727 = !DILocation(line: 205, column: 13, scope: !1720)
!1728 = !DILocation(line: 205, column: 20, scope: !1720)
!1729 = !DILocation(line: 205, column: 26, scope: !1720)
!1730 = !DILocation(line: 206, column: 9, scope: !1720)
!1731 = !DILocation(line: 207, column: 23, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 206, column: 16)
!1733 = !DILocation(line: 208, column: 13, scope: !1732)
!1734 = !DILocation(line: 210, column: 5, scope: !1712)
!1735 = !DILocation(line: 200, column: 26, scope: !1708)
!1736 = !DILocation(line: 200, column: 35, scope: !1708)
!1737 = !DILocation(line: 200, column: 5, scope: !1708)
!1738 = distinct !{!1738, !1710, !1739, !438}
!1739 = !DILocation(line: 210, column: 5, scope: !1709)
!1740 = !DILocation(line: 211, column: 19, scope: !1685)
!1741 = !DILocation(line: 211, column: 18, scope: !1685)
!1742 = !DILocation(line: 211, column: 30, scope: !1685)
!1743 = !DILocation(line: 211, column: 28, scope: !1685)
!1744 = !DILocation(line: 211, column: 5, scope: !1685)
!1745 = !DILocation(line: 211, column: 10, scope: !1685)
!1746 = !DILocation(line: 211, column: 14, scope: !1685)
!1747 = !DILocation(line: 212, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 212, column: 9)
!1749 = !DILocation(line: 212, column: 9, scope: !1685)
!1750 = !DILocation(line: 213, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 212, column: 20)
!1752 = !DILocation(line: 215, column: 17, scope: !1685)
!1753 = !DILocation(line: 215, column: 6, scope: !1685)
!1754 = !DILocation(line: 215, column: 15, scope: !1685)
!1755 = !DILocation(line: 216, column: 16, scope: !1685)
!1756 = !DILocation(line: 216, column: 6, scope: !1685)
!1757 = !DILocation(line: 216, column: 14, scope: !1685)
!1758 = !DILocation(line: 217, column: 5, scope: !1685)
!1759 = !DILocation(line: 218, column: 1, scope: !1685)
!1760 = distinct !DISubprogram(name: "is_special_end", scope: !2, file: !2, line: 1635, type: !1609, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1761 = !DILocalVariable(name: "c", arg: 1, scope: !1760, file: !2, line: 1635, type: !144)
!1762 = !DILocation(line: 1635, column: 36, scope: !1760)
!1763 = !DILocation(line: 1636, column: 28, scope: !1760)
!1764 = !DILocation(line: 1636, column: 30, scope: !1760)
!1765 = !DILocation(line: 1636, column: 12, scope: !1760)
!1766 = !DILocation(line: 1636, column: 5, scope: !1760)
!1767 = distinct !DISubprogram(name: "is_allowed_whitespace", scope: !2, file: !2, line: 1638, type: !1609, scopeLine: 1638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1768 = !DILocalVariable(name: "c", arg: 1, scope: !1767, file: !2, line: 1638, type: !144)
!1769 = !DILocation(line: 1638, column: 43, scope: !1767)
!1770 = !DILocation(line: 1639, column: 12, scope: !1767)
!1771 = !DILocation(line: 1639, column: 14, scope: !1767)
!1772 = !DILocation(line: 1639, column: 21, scope: !1767)
!1773 = !DILocation(line: 1639, column: 43, scope: !1767)
!1774 = !DILocation(line: 1639, column: 45, scope: !1767)
!1775 = !DILocation(line: 1639, column: 24, scope: !1767)
!1776 = !DILocation(line: 1639, column: 5, scope: !1767)
!1777 = distinct !DISubprogram(name: "extract_special", scope: !2, file: !2, line: 1632, type: !1778, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!144, !144}
!1780 = !DILocalVariable(name: "c", arg: 1, scope: !1777, file: !2, line: 1632, type: !144)
!1781 = !DILocation(line: 1632, column: 42, scope: !1777)
!1782 = !DILocation(line: 1633, column: 26, scope: !1777)
!1783 = !DILocation(line: 1633, column: 28, scope: !1777)
!1784 = !DILocation(line: 1633, column: 12, scope: !1777)
!1785 = !DILocation(line: 1633, column: 5, scope: !1777)
!1786 = distinct !DISubprogram(name: "jsonsl_strerror", scope: !2, file: !2, line: 746, type: !1787, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!344, !288}
!1789 = !DILocalVariable(name: "err", arg: 1, scope: !1786, file: !2, line: 746, type: !288)
!1790 = !DILocation(line: 746, column: 44, scope: !1786)
!1791 = !DILocation(line: 748, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 748, column: 9)
!1793 = !DILocation(line: 748, column: 13, scope: !1792)
!1794 = !DILocation(line: 748, column: 9, scope: !1786)
!1795 = !DILocation(line: 749, column: 9, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 748, column: 38)
!1797 = !DILocation(line: 754, column: 5, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1799 = !DILocation(line: 754, column: 5, scope: !1786)
!1800 = !DILocation(line: 754, column: 5, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1802 = !DILocation(line: 754, column: 5, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1804 = !DILocation(line: 754, column: 5, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1806 = !DILocation(line: 754, column: 5, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1808 = !DILocation(line: 754, column: 5, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1810 = !DILocation(line: 754, column: 5, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1812 = !DILocation(line: 754, column: 5, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1814 = !DILocation(line: 754, column: 5, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1816 = !DILocation(line: 754, column: 5, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1818 = !DILocation(line: 754, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1820 = !DILocation(line: 754, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1822 = !DILocation(line: 754, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1824 = !DILocation(line: 754, column: 5, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1826 = !DILocation(line: 754, column: 5, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1828 = !DILocation(line: 754, column: 5, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1830 = !DILocation(line: 754, column: 5, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1832 = !DILocation(line: 754, column: 5, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1834 = !DILocation(line: 754, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1836 = !DILocation(line: 754, column: 5, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1838 = !DILocation(line: 754, column: 5, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1840 = !DILocation(line: 754, column: 5, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1842 = !DILocation(line: 754, column: 5, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1844 = !DILocation(line: 754, column: 5, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1846 = !DILocation(line: 754, column: 5, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 754, column: 5)
!1848 = !DILocation(line: 756, column: 5, scope: !1786)
!1849 = !DILocation(line: 757, column: 1, scope: !1786)
!1850 = distinct !DISubprogram(name: "jsonsl_strtype", scope: !2, file: !2, line: 760, type: !1851, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!344, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_type_t", file: !143, line: 139, baseType: !189)
!1854 = !DILocalVariable(name: "type", arg: 1, scope: !1850, file: !2, line: 760, type: !1853)
!1855 = !DILocation(line: 760, column: 42, scope: !1850)
!1856 = !DILocation(line: 765, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1858 = !DILocation(line: 765, column: 5, scope: !1850)
!1859 = !DILocation(line: 765, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1861 = !DILocation(line: 765, column: 5, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1863 = !DILocation(line: 765, column: 5, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1865 = !DILocation(line: 765, column: 5, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1867 = !DILocation(line: 765, column: 5, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 765, column: 5)
!1869 = !DILocation(line: 767, column: 5, scope: !1850)
!1870 = !DILocation(line: 769, column: 1, scope: !1850)
!1871 = distinct !DISubprogram(name: "jsonsl_jpr_new", scope: !2, file: !2, line: 872, type: !1872, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!311, !344, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1875 = !DILocalVariable(name: "path", arg: 1, scope: !1871, file: !2, line: 872, type: !344)
!1876 = !DILocation(line: 872, column: 28, scope: !1871)
!1877 = !DILocalVariable(name: "errp", arg: 2, scope: !1871, file: !2, line: 872, type: !1874)
!1878 = !DILocation(line: 872, column: 50, scope: !1871)
!1879 = !DILocalVariable(name: "my_copy", scope: !1871, file: !2, line: 874, type: !320)
!1880 = !DILocation(line: 874, column: 11, scope: !1871)
!1881 = !DILocalVariable(name: "count", scope: !1871, file: !2, line: 875, type: !181)
!1882 = !DILocation(line: 875, column: 9, scope: !1871)
!1883 = !DILocalVariable(name: "curidx", scope: !1871, file: !2, line: 875, type: !181)
!1884 = !DILocation(line: 875, column: 16, scope: !1871)
!1885 = !DILocalVariable(name: "ret", scope: !1871, file: !2, line: 876, type: !312)
!1886 = !DILocation(line: 876, column: 27, scope: !1871)
!1887 = !DILocalVariable(name: "components", scope: !1871, file: !2, line: 877, type: !316)
!1888 = !DILocation(line: 877, column: 37, scope: !1871)
!1889 = !DILocalVariable(name: "origlen", scope: !1871, file: !2, line: 878, type: !249)
!1890 = !DILocation(line: 878, column: 12, scope: !1871)
!1891 = !DILocalVariable(name: "errstacked", scope: !1871, file: !2, line: 879, type: !288)
!1892 = !DILocation(line: 879, column: 20, scope: !1871)
!1893 = !DILocation(line: 883, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 883, column: 9)
!1895 = !DILocation(line: 883, column: 14, scope: !1894)
!1896 = !DILocation(line: 883, column: 9, scope: !1871)
!1897 = !DILocation(line: 884, column: 14, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 883, column: 23)
!1899 = !DILocation(line: 885, column: 5, scope: !1898)
!1900 = !DILocation(line: 887, column: 9, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 887, column: 9)
!1902 = !DILocation(line: 887, column: 14, scope: !1901)
!1903 = !DILocation(line: 887, column: 22, scope: !1901)
!1904 = !DILocation(line: 887, column: 26, scope: !1901)
!1905 = !DILocation(line: 887, column: 25, scope: !1901)
!1906 = !DILocation(line: 887, column: 31, scope: !1901)
!1907 = !DILocation(line: 887, column: 9, scope: !1871)
!1908 = !DILocation(line: 888, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 887, column: 39)
!1910 = !DILocation(line: 891, column: 11, scope: !1871)
!1911 = !DILocation(line: 892, column: 9, scope: !1871)
!1912 = !DILocalVariable(name: "c", scope: !1913, file: !2, line: 894, type: !344)
!1913 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 893, column: 5)
!1914 = !DILocation(line: 894, column: 21, scope: !1913)
!1915 = !DILocation(line: 894, column: 25, scope: !1913)
!1916 = !DILocation(line: 895, column: 9, scope: !1913)
!1917 = !DILocation(line: 895, column: 17, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 895, column: 9)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 895, column: 9)
!1920 = !DILocation(line: 895, column: 16, scope: !1918)
!1921 = !DILocation(line: 895, column: 9, scope: !1919)
!1922 = !DILocation(line: 896, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 896, column: 17)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 895, column: 25)
!1925 = !DILocation(line: 896, column: 17, scope: !1923)
!1926 = !DILocation(line: 896, column: 20, scope: !1923)
!1927 = !DILocation(line: 896, column: 17, scope: !1924)
!1928 = !DILocation(line: 897, column: 22, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 896, column: 28)
!1930 = !DILocation(line: 898, column: 23, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 898, column: 21)
!1932 = !DILocation(line: 898, column: 24, scope: !1931)
!1933 = !DILocation(line: 898, column: 21, scope: !1931)
!1934 = !DILocation(line: 898, column: 28, scope: !1931)
!1935 = !DILocation(line: 898, column: 21, scope: !1929)
!1936 = !DILocation(line: 899, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 898, column: 36)
!1938 = !DILocation(line: 901, column: 13, scope: !1929)
!1939 = !DILocation(line: 902, column: 9, scope: !1924)
!1940 = !DILocation(line: 895, column: 21, scope: !1918)
!1941 = !DILocation(line: 895, column: 9, scope: !1918)
!1942 = distinct !{!1942, !1921, !1943, !438}
!1943 = !DILocation(line: 902, column: 9, scope: !1919)
!1944 = !DILocation(line: 904, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 904, column: 8)
!1946 = !DILocation(line: 904, column: 8, scope: !1945)
!1947 = !DILocation(line: 904, column: 8, scope: !1871)
!1948 = !DILocation(line: 905, column: 14, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 904, column: 15)
!1950 = !DILocation(line: 906, column: 5, scope: !1949)
!1951 = !DILocation(line: 909, column: 42, scope: !1871)
!1952 = !DILocation(line: 909, column: 40, scope: !1871)
!1953 = !DILocation(line: 909, column: 13, scope: !1871)
!1954 = !DILocation(line: 908, column: 16, scope: !1871)
!1955 = !DILocation(line: 910, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 910, column: 9)
!1957 = !DILocation(line: 910, column: 9, scope: !1871)
!1958 = !DILocation(line: 911, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 910, column: 22)
!1960 = !DILocation(line: 914, column: 37, scope: !1871)
!1961 = !DILocation(line: 914, column: 30, scope: !1871)
!1962 = !DILocation(line: 914, column: 43, scope: !1871)
!1963 = !DILocation(line: 914, column: 23, scope: !1871)
!1964 = !DILocation(line: 914, column: 13, scope: !1871)
!1965 = !DILocation(line: 915, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 915, column: 9)
!1967 = !DILocation(line: 915, column: 9, scope: !1871)
!1968 = !DILocation(line: 916, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 915, column: 19)
!1970 = !DILocation(line: 919, column: 12, scope: !1871)
!1971 = !DILocation(line: 919, column: 21, scope: !1871)
!1972 = !DILocation(line: 919, column: 5, scope: !1871)
!1973 = !DILocation(line: 921, column: 5, scope: !1871)
!1974 = !DILocation(line: 921, column: 19, scope: !1871)
!1975 = !DILocation(line: 921, column: 25, scope: !1871)
!1976 = !DILocation(line: 923, column: 10, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 923, column: 9)
!1978 = !DILocation(line: 923, column: 9, scope: !1977)
!1979 = !DILocation(line: 923, column: 9, scope: !1871)
!1980 = !DILocalVariable(name: "cur", scope: !1981, file: !2, line: 924, type: !320)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 923, column: 19)
!1982 = !DILocation(line: 924, column: 15, scope: !1981)
!1983 = !DILocation(line: 924, column: 21, scope: !1981)
!1984 = !DILocalVariable(name: "pathret", scope: !1981, file: !2, line: 925, type: !181)
!1985 = !DILocation(line: 925, column: 13, scope: !1981)
!1986 = !DILocation(line: 926, column: 16, scope: !1981)
!1987 = !DILocation(line: 927, column: 9, scope: !1981)
!1988 = !DILocation(line: 927, column: 16, scope: !1981)
!1989 = !DILocation(line: 927, column: 25, scope: !1981)
!1990 = !DILocation(line: 927, column: 23, scope: !1981)
!1991 = !DILocation(line: 928, column: 42, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 927, column: 32)
!1993 = !DILocation(line: 928, column: 47, scope: !1992)
!1994 = !DILocation(line: 928, column: 60, scope: !1992)
!1995 = !DILocation(line: 928, column: 58, scope: !1992)
!1996 = !DILocation(line: 928, column: 74, scope: !1992)
!1997 = !DILocation(line: 928, column: 23, scope: !1992)
!1998 = !DILocation(line: 928, column: 21, scope: !1992)
!1999 = !DILocation(line: 929, column: 17, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 929, column: 17)
!2001 = !DILocation(line: 929, column: 25, scope: !2000)
!2002 = !DILocation(line: 929, column: 17, scope: !1992)
!2003 = !DILocation(line: 930, column: 23, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 929, column: 30)
!2005 = !DILocation(line: 931, column: 13, scope: !2004)
!2006 = !DILocation(line: 932, column: 17, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 931, column: 20)
!2008 = distinct !{!2008, !1987, !2009, !438}
!2009 = !DILocation(line: 934, column: 9, scope: !1981)
!2010 = !DILocation(line: 936, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 936, column: 13)
!2012 = !DILocation(line: 936, column: 21, scope: !2011)
!2013 = !DILocation(line: 936, column: 13, scope: !1981)
!2014 = !DILocation(line: 937, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 936, column: 45)
!2016 = !DILocation(line: 939, column: 5, scope: !1981)
!2017 = !DILocation(line: 940, column: 16, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 939, column: 12)
!2019 = !DILocation(line: 943, column: 9, scope: !1871)
!2020 = !DILocation(line: 944, column: 22, scope: !1871)
!2021 = !DILocation(line: 944, column: 15, scope: !1871)
!2022 = !DILocation(line: 944, column: 28, scope: !1871)
!2023 = !DILocation(line: 944, column: 13, scope: !1871)
!2024 = !DILocation(line: 945, column: 35, scope: !1871)
!2025 = !DILocation(line: 945, column: 9, scope: !1871)
!2026 = !DILocation(line: 946, column: 10, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 946, column: 9)
!2028 = !DILocation(line: 946, column: 9, scope: !1871)
!2029 = !DILocation(line: 947, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 946, column: 15)
!2031 = !DILocation(line: 949, column: 32, scope: !1871)
!2032 = !DILocation(line: 949, column: 25, scope: !1871)
!2033 = !DILocation(line: 949, column: 5, scope: !1871)
!2034 = !DILocation(line: 949, column: 10, scope: !1871)
!2035 = !DILocation(line: 949, column: 15, scope: !1871)
!2036 = !DILocation(line: 950, column: 10, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 950, column: 9)
!2038 = !DILocation(line: 950, column: 15, scope: !2037)
!2039 = !DILocation(line: 950, column: 9, scope: !1871)
!2040 = !DILocation(line: 951, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 950, column: 21)
!2042 = !DILocation(line: 953, column: 23, scope: !1871)
!2043 = !DILocation(line: 953, column: 5, scope: !1871)
!2044 = !DILocation(line: 953, column: 10, scope: !1871)
!2045 = !DILocation(line: 953, column: 21, scope: !1871)
!2046 = !DILocation(line: 954, column: 24, scope: !1871)
!2047 = !DILocation(line: 954, column: 5, scope: !1871)
!2048 = !DILocation(line: 954, column: 10, scope: !1871)
!2049 = !DILocation(line: 954, column: 22, scope: !1871)
!2050 = !DILocation(line: 955, column: 20, scope: !1871)
!2051 = !DILocation(line: 955, column: 5, scope: !1871)
!2052 = !DILocation(line: 955, column: 10, scope: !1871)
!2053 = !DILocation(line: 955, column: 18, scope: !1871)
!2054 = !DILocation(line: 956, column: 18, scope: !1871)
!2055 = !DILocation(line: 956, column: 25, scope: !1871)
!2056 = !DILocation(line: 956, column: 5, scope: !1871)
!2057 = !DILocation(line: 956, column: 10, scope: !1871)
!2058 = !DILocation(line: 956, column: 16, scope: !1871)
!2059 = !DILocation(line: 957, column: 12, scope: !1871)
!2060 = !DILocation(line: 957, column: 17, scope: !1871)
!2061 = !DILocation(line: 957, column: 23, scope: !1871)
!2062 = !DILocation(line: 957, column: 5, scope: !1871)
!2063 = !DILocation(line: 959, column: 12, scope: !1871)
!2064 = !DILocation(line: 959, column: 5, scope: !1871)
!2065 = !DILabel(scope: !1871, name: "GT_ERROR", file: !2, line: 961)
!2066 = !DILocation(line: 961, column: 5, scope: !1871)
!2067 = !DILocation(line: 962, column: 10, scope: !1871)
!2068 = !DILocation(line: 962, column: 5, scope: !1871)
!2069 = !DILocation(line: 963, column: 10, scope: !1871)
!2070 = !DILocation(line: 963, column: 5, scope: !1871)
!2071 = !DILocation(line: 964, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 964, column: 9)
!2073 = !DILocation(line: 964, column: 9, scope: !1871)
!2074 = !DILocation(line: 965, column: 14, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 964, column: 14)
!2076 = !DILocation(line: 965, column: 19, scope: !2075)
!2077 = !DILocation(line: 965, column: 9, scope: !2075)
!2078 = !DILocation(line: 966, column: 5, scope: !2075)
!2079 = !DILocation(line: 967, column: 10, scope: !1871)
!2080 = !DILocation(line: 967, column: 5, scope: !1871)
!2081 = !DILocation(line: 968, column: 5, scope: !1871)
!2082 = !DILocation(line: 970, column: 1, scope: !1871)
!2083 = distinct !DISubprogram(name: "populate_component", scope: !2, file: !2, line: 780, type: !2084, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!324, !320, !316, !2086, !1874}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2087 = !DILocalVariable(name: "in", arg: 1, scope: !2083, file: !2, line: 780, type: !320)
!2088 = !DILocation(line: 780, column: 26, scope: !2083)
!2089 = !DILocalVariable(name: "component", arg: 2, scope: !2083, file: !2, line: 781, type: !316)
!2090 = !DILocation(line: 781, column: 52, scope: !2083)
!2091 = !DILocalVariable(name: "next", arg: 3, scope: !2083, file: !2, line: 782, type: !2086)
!2092 = !DILocation(line: 782, column: 27, scope: !2083)
!2093 = !DILocalVariable(name: "errp", arg: 4, scope: !2083, file: !2, line: 783, type: !1874)
!2094 = !DILocation(line: 783, column: 36, scope: !2083)
!2095 = !DILocalVariable(name: "pctval", scope: !2083, file: !2, line: 785, type: !251)
!2096 = !DILocation(line: 785, column: 19, scope: !2083)
!2097 = !DILocalVariable(name: "c", scope: !2083, file: !2, line: 786, type: !320)
!2098 = !DILocation(line: 786, column: 11, scope: !2083)
!2099 = !DILocalVariable(name: "outp", scope: !2083, file: !2, line: 786, type: !320)
!2100 = !DILocation(line: 786, column: 22, scope: !2083)
!2101 = !DILocalVariable(name: "end", scope: !2083, file: !2, line: 786, type: !320)
!2102 = !DILocation(line: 786, column: 36, scope: !2083)
!2103 = !DILocalVariable(name: "input_len", scope: !2083, file: !2, line: 787, type: !249)
!2104 = !DILocation(line: 787, column: 12, scope: !2083)
!2105 = !DILocalVariable(name: "ret", scope: !2083, file: !2, line: 788, type: !324)
!2106 = !DILocation(line: 788, column: 23, scope: !2083)
!2107 = !DILocation(line: 790, column: 10, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 790, column: 9)
!2109 = !DILocation(line: 790, column: 9, scope: !2108)
!2110 = !DILocation(line: 790, column: 15, scope: !2108)
!2111 = !DILocation(line: 790, column: 23, scope: !2108)
!2112 = !DILocation(line: 790, column: 29, scope: !2108)
!2113 = !DILocation(line: 790, column: 28, scope: !2108)
!2114 = !DILocation(line: 790, column: 26, scope: !2108)
!2115 = !DILocation(line: 790, column: 35, scope: !2108)
!2116 = !DILocation(line: 790, column: 9, scope: !2083)
!2117 = !DILocation(line: 791, column: 9, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 790, column: 44)
!2119 = !DILocation(line: 795, column: 20, scope: !2083)
!2120 = !DILocation(line: 795, column: 13, scope: !2083)
!2121 = !DILocation(line: 795, column: 6, scope: !2083)
!2122 = !DILocation(line: 795, column: 11, scope: !2083)
!2123 = !DILocation(line: 796, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 796, column: 9)
!2125 = !DILocation(line: 796, column: 9, scope: !2124)
!2126 = !DILocation(line: 796, column: 15, scope: !2124)
!2127 = !DILocation(line: 796, column: 9, scope: !2083)
!2128 = !DILocation(line: 797, column: 12, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 796, column: 24)
!2130 = !DILocation(line: 797, column: 11, scope: !2129)
!2131 = !DILocation(line: 797, column: 18, scope: !2129)
!2132 = !DILocation(line: 798, column: 22, scope: !2129)
!2133 = !DILocation(line: 798, column: 21, scope: !2129)
!2134 = !DILocation(line: 798, column: 29, scope: !2129)
!2135 = !DILocation(line: 798, column: 27, scope: !2129)
!2136 = !DILocation(line: 798, column: 19, scope: !2129)
!2137 = !DILocation(line: 799, column: 16, scope: !2129)
!2138 = !DILocation(line: 799, column: 15, scope: !2129)
!2139 = !DILocation(line: 799, column: 13, scope: !2129)
!2140 = !DILocation(line: 800, column: 10, scope: !2129)
!2141 = !DILocation(line: 800, column: 15, scope: !2129)
!2142 = !DILocation(line: 801, column: 5, scope: !2129)
!2143 = !DILocation(line: 802, column: 28, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 801, column: 12)
!2145 = !DILocation(line: 802, column: 21, scope: !2144)
!2146 = !DILocation(line: 802, column: 19, scope: !2144)
!2147 = !DILocation(line: 803, column: 15, scope: !2144)
!2148 = !DILocation(line: 803, column: 20, scope: !2144)
!2149 = !DILocation(line: 803, column: 18, scope: !2144)
!2150 = !DILocation(line: 803, column: 30, scope: !2144)
!2151 = !DILocation(line: 803, column: 13, scope: !2144)
!2152 = !DILocation(line: 806, column: 23, scope: !2083)
!2153 = !DILocation(line: 806, column: 5, scope: !2083)
!2154 = !DILocation(line: 806, column: 16, scope: !2083)
!2155 = !DILocation(line: 806, column: 21, scope: !2083)
!2156 = !DILocation(line: 809, column: 10, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 809, column: 9)
!2158 = !DILocation(line: 809, column: 9, scope: !2157)
!2159 = !DILocation(line: 809, column: 13, scope: !2157)
!2160 = !DILocation(line: 809, column: 42, scope: !2157)
!2161 = !DILocation(line: 809, column: 45, scope: !2157)
!2162 = !DILocation(line: 809, column: 55, scope: !2157)
!2163 = !DILocation(line: 809, column: 9, scope: !2083)
!2164 = !DILocation(line: 811, column: 13, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 809, column: 61)
!2166 = !DILocation(line: 812, column: 9, scope: !2165)
!2167 = !DILocation(line: 813, column: 16, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 813, column: 16)
!2169 = !DILocation(line: 813, column: 16, scope: !2157)
!2170 = !DILocalVariable(name: "endptr", scope: !2171, file: !2, line: 815, type: !320)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !2, line: 813, column: 30)
!2172 = !DILocation(line: 815, column: 15, scope: !2171)
!2173 = !DILocation(line: 816, column: 34, scope: !2171)
!2174 = !DILocation(line: 816, column: 26, scope: !2171)
!2175 = !DILocation(line: 816, column: 9, scope: !2171)
!2176 = !DILocation(line: 816, column: 20, scope: !2171)
!2177 = !DILocation(line: 816, column: 24, scope: !2171)
!2178 = !DILocation(line: 817, column: 13, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 817, column: 13)
!2180 = !DILocation(line: 817, column: 20, scope: !2179)
!2181 = !DILocation(line: 817, column: 24, scope: !2179)
!2182 = !DILocation(line: 817, column: 23, scope: !2179)
!2183 = !DILocation(line: 817, column: 31, scope: !2179)
!2184 = !DILocation(line: 817, column: 13, scope: !2171)
!2185 = !DILocation(line: 818, column: 17, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 817, column: 40)
!2187 = !DILocation(line: 819, column: 13, scope: !2186)
!2188 = !DILocation(line: 821, column: 5, scope: !2171)
!2189 = !DILocation(line: 824, column: 9, scope: !2083)
!2190 = !DILocation(line: 825, column: 21, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 825, column: 5)
!2192 = !DILocation(line: 825, column: 19, scope: !2191)
!2193 = !DILocation(line: 825, column: 12, scope: !2191)
!2194 = !DILocation(line: 825, column: 10, scope: !2191)
!2195 = !DILocation(line: 825, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 825, column: 5)
!2197 = !DILocation(line: 825, column: 29, scope: !2196)
!2198 = !DILocation(line: 825, column: 27, scope: !2196)
!2199 = !DILocation(line: 825, column: 5, scope: !2191)
!2200 = !DILocalVariable(name: "origc", scope: !2201, file: !2, line: 826, type: !4)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 825, column: 47)
!2202 = !DILocation(line: 826, column: 14, scope: !2201)
!2203 = !DILocation(line: 827, column: 14, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 827, column: 13)
!2205 = !DILocation(line: 827, column: 13, scope: !2204)
!2206 = !DILocation(line: 827, column: 16, scope: !2204)
!2207 = !DILocation(line: 827, column: 13, scope: !2201)
!2208 = !DILocation(line: 828, column: 13, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 827, column: 24)
!2210 = !DILocation(line: 835, column: 13, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 835, column: 13)
!2212 = !DILocation(line: 835, column: 14, scope: !2211)
!2213 = !DILocation(line: 835, column: 20, scope: !2211)
!2214 = !DILocation(line: 835, column: 17, scope: !2211)
!2215 = !DILocation(line: 835, column: 13, scope: !2201)
!2216 = !DILocation(line: 836, column: 14, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 835, column: 25)
!2218 = !DILocation(line: 836, column: 19, scope: !2217)
!2219 = !DILocation(line: 837, column: 13, scope: !2217)
!2220 = !DILocation(line: 839, column: 16, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 839, column: 13)
!2222 = !DILocation(line: 839, column: 33, scope: !2221)
!2223 = !DILocation(line: 839, column: 36, scope: !2221)
!2224 = !DILocation(line: 839, column: 13, scope: !2201)
!2225 = !DILocation(line: 840, column: 14, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 839, column: 56)
!2227 = !DILocation(line: 840, column: 19, scope: !2226)
!2228 = !DILocation(line: 841, column: 13, scope: !2226)
!2229 = !DILocation(line: 845, column: 19, scope: !2201)
!2230 = !DILocation(line: 845, column: 20, scope: !2201)
!2231 = !DILocation(line: 845, column: 17, scope: !2201)
!2232 = !DILocation(line: 845, column: 15, scope: !2201)
!2233 = !DILocation(line: 846, column: 11, scope: !2201)
!2234 = !DILocation(line: 846, column: 12, scope: !2201)
!2235 = !DILocation(line: 846, column: 16, scope: !2201)
!2236 = !DILocation(line: 847, column: 26, scope: !2201)
!2237 = !DILocation(line: 847, column: 27, scope: !2201)
!2238 = !DILocation(line: 847, column: 18, scope: !2201)
!2239 = !DILocation(line: 847, column: 16, scope: !2201)
!2240 = !DILocation(line: 848, column: 18, scope: !2201)
!2241 = !DILocation(line: 848, column: 11, scope: !2201)
!2242 = !DILocation(line: 848, column: 12, scope: !2201)
!2243 = !DILocation(line: 848, column: 16, scope: !2201)
!2244 = !DILocation(line: 850, column: 24, scope: !2201)
!2245 = !DILocation(line: 850, column: 17, scope: !2201)
!2246 = !DILocation(line: 850, column: 10, scope: !2201)
!2247 = !DILocation(line: 850, column: 15, scope: !2201)
!2248 = !DILocation(line: 851, column: 11, scope: !2201)
!2249 = !DILocation(line: 852, column: 9, scope: !2201)
!2250 = !DILabel(scope: !2201, name: "GT_ASSIGN", file: !2, line: 854)
!2251 = !DILocation(line: 854, column: 9, scope: !2201)
!2252 = !DILocation(line: 855, column: 18, scope: !2201)
!2253 = !DILocation(line: 855, column: 17, scope: !2201)
!2254 = !DILocation(line: 855, column: 10, scope: !2201)
!2255 = !DILocation(line: 855, column: 15, scope: !2201)
!2256 = !DILocation(line: 856, column: 5, scope: !2201)
!2257 = !DILocation(line: 825, column: 35, scope: !2196)
!2258 = !DILocation(line: 825, column: 43, scope: !2196)
!2259 = !DILocation(line: 825, column: 5, scope: !2196)
!2260 = distinct !{!2260, !2199, !2261, !438}
!2261 = !DILocation(line: 856, column: 5, scope: !2191)
!2262 = !DILocation(line: 858, column: 5, scope: !2083)
!2263 = !DILocation(line: 858, column: 12, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 858, column: 5)
!2265 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 858, column: 5)
!2266 = !DILocation(line: 858, column: 19, scope: !2264)
!2267 = !DILocation(line: 858, column: 17, scope: !2264)
!2268 = !DILocation(line: 858, column: 5, scope: !2265)
!2269 = !DILocation(line: 859, column: 10, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 858, column: 30)
!2271 = !DILocation(line: 859, column: 15, scope: !2270)
!2272 = !DILocation(line: 860, column: 5, scope: !2270)
!2273 = !DILocation(line: 858, column: 26, scope: !2264)
!2274 = !DILocation(line: 858, column: 5, scope: !2264)
!2275 = distinct !{!2275, !2268, !2276, !438}
!2276 = !DILocation(line: 860, column: 5, scope: !2265)
!2277 = !DILabel(scope: !2083, name: "GT_RET", file: !2, line: 862)
!2278 = !DILocation(line: 862, column: 5, scope: !2083)
!2279 = !DILocation(line: 863, column: 24, scope: !2083)
!2280 = !DILocation(line: 863, column: 5, scope: !2083)
!2281 = !DILocation(line: 863, column: 16, scope: !2083)
!2282 = !DILocation(line: 863, column: 22, scope: !2083)
!2283 = !DILocation(line: 864, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 864, column: 9)
!2285 = !DILocation(line: 864, column: 13, scope: !2284)
!2286 = !DILocation(line: 864, column: 9, scope: !2083)
!2287 = !DILocation(line: 865, column: 33, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !2, line: 864, column: 38)
!2289 = !DILocation(line: 865, column: 44, scope: !2288)
!2290 = !DILocation(line: 865, column: 26, scope: !2288)
!2291 = !DILocation(line: 865, column: 9, scope: !2288)
!2292 = !DILocation(line: 865, column: 20, scope: !2288)
!2293 = !DILocation(line: 865, column: 24, scope: !2288)
!2294 = !DILocation(line: 866, column: 5, scope: !2288)
!2295 = !DILocation(line: 867, column: 12, scope: !2083)
!2296 = !DILocation(line: 867, column: 5, scope: !2083)
!2297 = !DILocation(line: 868, column: 1, scope: !2083)
!2298 = distinct !DISubprogram(name: "jsonsl_jpr_destroy", scope: !2, file: !2, line: 972, type: !2299, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !311}
!2301 = !DILocalVariable(name: "jpr", arg: 1, scope: !2298, file: !2, line: 972, type: !311)
!2302 = !DILocation(line: 972, column: 38, scope: !2298)
!2303 = !DILocation(line: 974, column: 10, scope: !2298)
!2304 = !DILocation(line: 974, column: 15, scope: !2298)
!2305 = !DILocation(line: 974, column: 5, scope: !2298)
!2306 = !DILocation(line: 975, column: 10, scope: !2298)
!2307 = !DILocation(line: 975, column: 15, scope: !2298)
!2308 = !DILocation(line: 975, column: 5, scope: !2298)
!2309 = !DILocation(line: 976, column: 10, scope: !2298)
!2310 = !DILocation(line: 976, column: 15, scope: !2298)
!2311 = !DILocation(line: 976, column: 5, scope: !2298)
!2312 = !DILocation(line: 977, column: 10, scope: !2298)
!2313 = !DILocation(line: 977, column: 5, scope: !2298)
!2314 = !DILocation(line: 978, column: 1, scope: !2298)
!2315 = distinct !DISubprogram(name: "jsonsl_path_match", scope: !2, file: !2, line: 1023, type: !2316, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2318, !311, !2319, !2319, !344, !249}
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "jsonsl_jpr_match_t", file: !143, line: 748, baseType: !235)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!2321 = !DILocalVariable(name: "jpr", arg: 1, scope: !2315, file: !2, line: 1023, type: !311)
!2322 = !DILocation(line: 1023, column: 32, scope: !2315)
!2323 = !DILocalVariable(name: "parent", arg: 2, scope: !2315, file: !2, line: 1024, type: !2319)
!2324 = !DILocation(line: 1024, column: 49, scope: !2315)
!2325 = !DILocalVariable(name: "child", arg: 3, scope: !2315, file: !2, line: 1025, type: !2319)
!2326 = !DILocation(line: 1025, column: 49, scope: !2315)
!2327 = !DILocalVariable(name: "key", arg: 4, scope: !2315, file: !2, line: 1026, type: !344)
!2328 = !DILocation(line: 1026, column: 31, scope: !2315)
!2329 = !DILocalVariable(name: "nkey", arg: 5, scope: !2315, file: !2, line: 1026, type: !249)
!2330 = !DILocation(line: 1026, column: 43, scope: !2315)
!2331 = !DILocalVariable(name: "comp", scope: !2315, file: !2, line: 1028, type: !2332)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!2334 = !DILocation(line: 1028, column: 43, scope: !2315)
!2335 = !DILocation(line: 1029, column: 10, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 1029, column: 9)
!2337 = !DILocation(line: 1029, column: 9, scope: !2315)
!2338 = !DILocation(line: 1031, column: 39, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 1029, column: 18)
!2340 = !DILocation(line: 1031, column: 44, scope: !2339)
!2341 = !DILocation(line: 1031, column: 49, scope: !2339)
!2342 = !DILocation(line: 1031, column: 64, scope: !2339)
!2343 = !DILocation(line: 1031, column: 71, scope: !2339)
!2344 = !DILocation(line: 1031, column: 16, scope: !2339)
!2345 = !DILocation(line: 1031, column: 9, scope: !2339)
!2346 = !DILocation(line: 1034, column: 12, scope: !2315)
!2347 = !DILocation(line: 1034, column: 17, scope: !2315)
!2348 = !DILocation(line: 1034, column: 30, scope: !2315)
!2349 = !DILocation(line: 1034, column: 38, scope: !2315)
!2350 = !DILocation(line: 1034, column: 28, scope: !2315)
!2351 = !DILocation(line: 1034, column: 10, scope: !2315)
!2352 = !DILocation(line: 1040, column: 9, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 1040, column: 9)
!2354 = !DILocation(line: 1040, column: 17, scope: !2353)
!2355 = !DILocation(line: 1040, column: 22, scope: !2353)
!2356 = !DILocation(line: 1040, column: 9, scope: !2315)
!2357 = !DILocation(line: 1041, column: 13, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 1041, column: 13)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 1040, column: 42)
!2360 = !DILocation(line: 1041, column: 19, scope: !2358)
!2361 = !DILocation(line: 1041, column: 26, scope: !2358)
!2362 = !DILocation(line: 1041, column: 23, scope: !2358)
!2363 = !DILocation(line: 1041, column: 31, scope: !2358)
!2364 = !DILocation(line: 1041, column: 42, scope: !2358)
!2365 = !DILocation(line: 1041, column: 47, scope: !2358)
!2366 = !DILocation(line: 1041, column: 53, scope: !2358)
!2367 = !DILocation(line: 1041, column: 59, scope: !2358)
!2368 = !DILocation(line: 1041, column: 34, scope: !2358)
!2369 = !DILocation(line: 1041, column: 65, scope: !2358)
!2370 = !DILocation(line: 1041, column: 13, scope: !2359)
!2371 = !DILocation(line: 1042, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 1041, column: 71)
!2373 = !DILocation(line: 1044, column: 5, scope: !2359)
!2374 = !DILocation(line: 1045, column: 13, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 1045, column: 13)
!2376 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 1044, column: 12)
!2377 = !DILocation(line: 1045, column: 19, scope: !2375)
!2378 = !DILocation(line: 1045, column: 26, scope: !2375)
!2379 = !DILocation(line: 1045, column: 34, scope: !2375)
!2380 = !DILocation(line: 1045, column: 40, scope: !2375)
!2381 = !DILocation(line: 1045, column: 23, scope: !2375)
!2382 = !DILocation(line: 1045, column: 13, scope: !2376)
!2383 = !DILocation(line: 1046, column: 13, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2375, file: !2, line: 1045, column: 45)
!2385 = !DILocation(line: 1049, column: 35, scope: !2315)
!2386 = !DILocation(line: 1049, column: 40, scope: !2315)
!2387 = !DILocation(line: 1049, column: 46, scope: !2315)
!2388 = !DILocation(line: 1049, column: 54, scope: !2315)
!2389 = !DILocation(line: 1049, column: 61, scope: !2315)
!2390 = !DILocation(line: 1049, column: 68, scope: !2315)
!2391 = !DILocation(line: 1049, column: 12, scope: !2315)
!2392 = !DILocation(line: 1049, column: 5, scope: !2315)
!2393 = !DILocation(line: 1050, column: 1, scope: !2315)
!2394 = distinct !DISubprogram(name: "jsonsl__match_continue", scope: !2, file: !2, line: 990, type: !2395, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2318, !311, !2332, !144, !144}
!2397 = !DILocalVariable(name: "jpr", arg: 1, scope: !2394, file: !2, line: 990, type: !311)
!2398 = !DILocation(line: 990, column: 37, scope: !2394)
!2399 = !DILocalVariable(name: "component", arg: 2, scope: !2394, file: !2, line: 991, type: !2332)
!2400 = !DILocation(line: 991, column: 62, scope: !2394)
!2401 = !DILocalVariable(name: "prlevel", arg: 3, scope: !2394, file: !2, line: 992, type: !144)
!2402 = !DILocation(line: 992, column: 33, scope: !2394)
!2403 = !DILocalVariable(name: "chtype", arg: 4, scope: !2394, file: !2, line: 992, type: !144)
!2404 = !DILocation(line: 992, column: 51, scope: !2394)
!2405 = !DILocalVariable(name: "next_comp", scope: !2394, file: !2, line: 994, type: !2332)
!2406 = !DILocation(line: 994, column: 43, scope: !2394)
!2407 = !DILocation(line: 994, column: 55, scope: !2394)
!2408 = !DILocation(line: 994, column: 65, scope: !2394)
!2409 = !DILocation(line: 995, column: 9, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 995, column: 9)
!2411 = !DILocation(line: 995, column: 20, scope: !2410)
!2412 = !DILocation(line: 995, column: 25, scope: !2410)
!2413 = !DILocation(line: 995, column: 37, scope: !2410)
!2414 = !DILocation(line: 995, column: 17, scope: !2410)
!2415 = !DILocation(line: 995, column: 9, scope: !2394)
!2416 = !DILocation(line: 998, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !2, line: 998, column: 13)
!2418 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 995, column: 42)
!2419 = !DILocation(line: 998, column: 18, scope: !2417)
!2420 = !DILocation(line: 998, column: 29, scope: !2417)
!2421 = !DILocation(line: 998, column: 34, scope: !2417)
!2422 = !DILocation(line: 998, column: 37, scope: !2417)
!2423 = !DILocation(line: 998, column: 42, scope: !2417)
!2424 = !DILocation(line: 998, column: 56, scope: !2417)
!2425 = !DILocation(line: 998, column: 53, scope: !2417)
!2426 = !DILocation(line: 998, column: 13, scope: !2418)
!2427 = !DILocation(line: 999, column: 13, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 998, column: 64)
!2429 = !DILocation(line: 1001, column: 13, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 1000, column: 16)
!2431 = !DILocation(line: 1004, column: 9, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 1004, column: 9)
!2433 = !DILocation(line: 1004, column: 16, scope: !2432)
!2434 = !DILocation(line: 1004, column: 9, scope: !2394)
!2435 = !DILocation(line: 1005, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 1005, column: 13)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 1004, column: 34)
!2438 = !DILocation(line: 1005, column: 24, scope: !2436)
!2439 = !DILocation(line: 1005, column: 30, scope: !2436)
!2440 = !DILocation(line: 1005, column: 13, scope: !2437)
!2441 = !DILocation(line: 1006, column: 13, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 1005, column: 54)
!2443 = !DILocation(line: 1008, column: 13, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 1007, column: 16)
!2445 = !DILocation(line: 1010, column: 16, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 1010, column: 16)
!2447 = !DILocation(line: 1010, column: 23, scope: !2446)
!2448 = !DILocation(line: 1010, column: 16, scope: !2432)
!2449 = !DILocation(line: 1011, column: 13, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 1011, column: 13)
!2451 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 1010, column: 43)
!2452 = !DILocation(line: 1011, column: 24, scope: !2450)
!2453 = !DILocation(line: 1011, column: 30, scope: !2450)
!2454 = !DILocation(line: 1011, column: 13, scope: !2451)
!2455 = !DILocation(line: 1012, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 1011, column: 54)
!2457 = !DILocation(line: 1014, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 1013, column: 16)
!2459 = !DILocation(line: 1017, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 1016, column: 12)
!2461 = !DILocation(line: 1019, column: 1, scope: !2394)
!2462 = distinct !DISubprogram(name: "jsonsl_jpr_match", scope: !2, file: !2, line: 1054, type: !2463, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2318, !311, !144, !144, !344, !249}
!2465 = !DILocalVariable(name: "jpr", arg: 1, scope: !2462, file: !2, line: 1054, type: !311)
!2466 = !DILocation(line: 1054, column: 31, scope: !2462)
!2467 = !DILocalVariable(name: "parent_type", arg: 2, scope: !2462, file: !2, line: 1055, type: !144)
!2468 = !DILocation(line: 1055, column: 33, scope: !2462)
!2469 = !DILocalVariable(name: "parent_level", arg: 3, scope: !2462, file: !2, line: 1056, type: !144)
!2470 = !DILocation(line: 1056, column: 33, scope: !2462)
!2471 = !DILocalVariable(name: "key", arg: 4, scope: !2462, file: !2, line: 1057, type: !344)
!2472 = !DILocation(line: 1057, column: 32, scope: !2462)
!2473 = !DILocalVariable(name: "nkey", arg: 5, scope: !2462, file: !2, line: 1058, type: !249)
!2474 = !DILocation(line: 1058, column: 27, scope: !2462)
!2475 = !DILocalVariable(name: "cmpret", scope: !2462, file: !2, line: 1061, type: !181)
!2476 = !DILocation(line: 1061, column: 9, scope: !2462)
!2477 = !DILocalVariable(name: "p_component", scope: !2462, file: !2, line: 1062, type: !316)
!2478 = !DILocation(line: 1062, column: 37, scope: !2462)
!2479 = !DILocation(line: 1063, column: 19, scope: !2462)
!2480 = !DILocation(line: 1063, column: 24, scope: !2462)
!2481 = !DILocation(line: 1063, column: 37, scope: !2462)
!2482 = !DILocation(line: 1063, column: 35, scope: !2462)
!2483 = !DILocation(line: 1063, column: 17, scope: !2462)
!2484 = !DILocation(line: 1065, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1065, column: 9)
!2486 = !DILocation(line: 1065, column: 25, scope: !2485)
!2487 = !DILocation(line: 1065, column: 30, scope: !2485)
!2488 = !DILocation(line: 1065, column: 22, scope: !2485)
!2489 = !DILocation(line: 1065, column: 9, scope: !2462)
!2490 = !DILocation(line: 1066, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !2, line: 1065, column: 43)
!2492 = !DILocation(line: 1070, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1070, column: 9)
!2494 = !DILocation(line: 1070, column: 22, scope: !2493)
!2495 = !DILocation(line: 1070, column: 9, scope: !2462)
!2496 = !DILocation(line: 1071, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 1071, column: 13)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !2, line: 1070, column: 28)
!2499 = !DILocation(line: 1071, column: 18, scope: !2497)
!2500 = !DILocation(line: 1071, column: 30, scope: !2497)
!2501 = !DILocation(line: 1071, column: 13, scope: !2498)
!2502 = !DILocation(line: 1072, column: 13, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 1071, column: 36)
!2504 = !DILocation(line: 1074, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 1073, column: 16)
!2506 = !DILocation(line: 1079, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1079, column: 9)
!2508 = !DILocation(line: 1079, column: 22, scope: !2507)
!2509 = !DILocation(line: 1079, column: 28, scope: !2507)
!2510 = !DILocation(line: 1079, column: 9, scope: !2462)
!2511 = !DILocation(line: 1080, column: 13, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 1080, column: 13)
!2513 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 1079, column: 53)
!2514 = !DILocation(line: 1080, column: 29, scope: !2512)
!2515 = !DILocation(line: 1080, column: 34, scope: !2512)
!2516 = !DILocation(line: 1080, column: 45, scope: !2512)
!2517 = !DILocation(line: 1080, column: 26, scope: !2512)
!2518 = !DILocation(line: 1080, column: 13, scope: !2513)
!2519 = !DILocation(line: 1081, column: 13, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 1080, column: 49)
!2521 = !DILocation(line: 1083, column: 13, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 1082, column: 16)
!2523 = !DILocation(line: 1089, column: 9, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1089, column: 9)
!2525 = !DILocation(line: 1089, column: 22, scope: !2524)
!2526 = !DILocation(line: 1089, column: 28, scope: !2524)
!2527 = !DILocation(line: 1089, column: 9, scope: !2462)
!2528 = !DILocation(line: 1090, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1090, column: 13)
!2530 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1089, column: 52)
!2531 = !DILocation(line: 1090, column: 25, scope: !2529)
!2532 = !DILocation(line: 1090, column: 13, scope: !2530)
!2533 = !DILocation(line: 1091, column: 17, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1091, column: 17)
!2535 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 1090, column: 43)
!2536 = !DILocation(line: 1091, column: 30, scope: !2534)
!2537 = !DILocation(line: 1091, column: 37, scope: !2534)
!2538 = !DILocation(line: 1091, column: 34, scope: !2534)
!2539 = !DILocation(line: 1091, column: 17, scope: !2535)
!2540 = !DILocation(line: 1093, column: 17, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2534, file: !2, line: 1091, column: 43)
!2542 = !DILocation(line: 1095, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !2, line: 1095, column: 21)
!2544 = distinct !DILexicalBlock(scope: !2534, file: !2, line: 1094, column: 20)
!2545 = !DILocation(line: 1095, column: 37, scope: !2543)
!2546 = !DILocation(line: 1095, column: 42, scope: !2543)
!2547 = !DILocation(line: 1095, column: 53, scope: !2543)
!2548 = !DILocation(line: 1095, column: 34, scope: !2543)
!2549 = !DILocation(line: 1095, column: 21, scope: !2544)
!2550 = !DILocation(line: 1097, column: 21, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 1095, column: 57)
!2552 = !DILocation(line: 1100, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 1098, column: 24)
!2554 = !DILocation(line: 1103, column: 20, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 1103, column: 20)
!2556 = !DILocation(line: 1103, column: 33, scope: !2555)
!2557 = !DILocation(line: 1103, column: 20, scope: !2529)
!2558 = !DILocation(line: 1106, column: 13, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 1103, column: 44)
!2560 = !DILocation(line: 1108, column: 5, scope: !2530)
!2561 = !DILocation(line: 1108, column: 16, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1108, column: 16)
!2563 = !DILocation(line: 1108, column: 28, scope: !2562)
!2564 = !DILocation(line: 1108, column: 16, scope: !2524)
!2565 = !DILocation(line: 1109, column: 9, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !2, line: 1108, column: 46)
!2567 = !DILocation(line: 1113, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1113, column: 9)
!2569 = !DILocation(line: 1113, column: 22, scope: !2568)
!2570 = !DILocation(line: 1113, column: 29, scope: !2568)
!2571 = !DILocation(line: 1113, column: 26, scope: !2568)
!2572 = !DILocation(line: 1113, column: 9, scope: !2462)
!2573 = !DILocation(line: 1114, column: 9, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 1113, column: 35)
!2575 = !DILocation(line: 1118, column: 22, scope: !2462)
!2576 = !DILocation(line: 1118, column: 35, scope: !2462)
!2577 = !DILocation(line: 1118, column: 41, scope: !2462)
!2578 = !DILocation(line: 1118, column: 46, scope: !2462)
!2579 = !DILocation(line: 1118, column: 14, scope: !2462)
!2580 = !DILocation(line: 1118, column: 12, scope: !2462)
!2581 = !DILocation(line: 1119, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 1119, column: 9)
!2583 = !DILocation(line: 1119, column: 16, scope: !2582)
!2584 = !DILocation(line: 1119, column: 9, scope: !2462)
!2585 = !DILocation(line: 1120, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2, line: 1120, column: 13)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !2, line: 1119, column: 22)
!2588 = !DILocation(line: 1120, column: 29, scope: !2586)
!2589 = !DILocation(line: 1120, column: 34, scope: !2586)
!2590 = !DILocation(line: 1120, column: 45, scope: !2586)
!2591 = !DILocation(line: 1120, column: 26, scope: !2586)
!2592 = !DILocation(line: 1120, column: 13, scope: !2587)
!2593 = !DILocation(line: 1121, column: 13, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 1120, column: 49)
!2595 = !DILocation(line: 1123, column: 13, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 1122, column: 16)
!2597 = !DILocation(line: 1127, column: 5, scope: !2462)
!2598 = !DILocation(line: 1128, column: 1, scope: !2462)
!2599 = distinct !DISubprogram(name: "jsonsl_jpr_match_state_init", scope: !2, file: !2, line: 1131, type: !2600, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !261, !310, !249}
!2602 = !DILocalVariable(name: "jsn", arg: 1, scope: !2599, file: !2, line: 1131, type: !261)
!2603 = !DILocation(line: 1131, column: 43, scope: !2599)
!2604 = !DILocalVariable(name: "jprs", arg: 2, scope: !2599, file: !2, line: 1132, type: !310)
!2605 = !DILocation(line: 1132, column: 48, scope: !2599)
!2606 = !DILocalVariable(name: "njprs", arg: 3, scope: !2599, file: !2, line: 1133, type: !249)
!2607 = !DILocation(line: 1133, column: 41, scope: !2599)
!2608 = !DILocalVariable(name: "ii", scope: !2599, file: !2, line: 1135, type: !249)
!2609 = !DILocation(line: 1135, column: 12, scope: !2599)
!2610 = !DILocalVariable(name: "firstjmp", scope: !2599, file: !2, line: 1135, type: !333)
!2611 = !DILocation(line: 1135, column: 17, scope: !2599)
!2612 = !DILocation(line: 1136, column: 9, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 1136, column: 9)
!2614 = !DILocation(line: 1136, column: 15, scope: !2613)
!2615 = !DILocation(line: 1136, column: 9, scope: !2599)
!2616 = !DILocation(line: 1137, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 1136, column: 21)
!2618 = !DILocation(line: 1139, column: 63, scope: !2599)
!2619 = !DILocation(line: 1139, column: 61, scope: !2599)
!2620 = !DILocation(line: 1139, column: 33, scope: !2599)
!2621 = !DILocation(line: 1139, column: 5, scope: !2599)
!2622 = !DILocation(line: 1139, column: 10, scope: !2599)
!2623 = !DILocation(line: 1139, column: 15, scope: !2599)
!2624 = !DILocation(line: 1140, column: 22, scope: !2599)
!2625 = !DILocation(line: 1140, column: 5, scope: !2599)
!2626 = !DILocation(line: 1140, column: 10, scope: !2599)
!2627 = !DILocation(line: 1140, column: 20, scope: !2599)
!2628 = !DILocation(line: 1141, column: 57, scope: !2599)
!2629 = !DILocation(line: 1141, column: 55, scope: !2599)
!2630 = !DILocation(line: 1141, column: 65, scope: !2599)
!2631 = !DILocation(line: 1141, column: 70, scope: !2599)
!2632 = !DILocation(line: 1141, column: 63, scope: !2599)
!2633 = !DILocation(line: 1141, column: 30, scope: !2599)
!2634 = !DILocation(line: 1141, column: 5, scope: !2599)
!2635 = !DILocation(line: 1141, column: 10, scope: !2599)
!2636 = !DILocation(line: 1141, column: 19, scope: !2599)
!2637 = !DILocation(line: 1142, column: 12, scope: !2599)
!2638 = !DILocation(line: 1142, column: 17, scope: !2599)
!2639 = !DILocation(line: 1142, column: 23, scope: !2599)
!2640 = !DILocation(line: 1142, column: 52, scope: !2599)
!2641 = !DILocation(line: 1142, column: 50, scope: !2599)
!2642 = !DILocation(line: 1142, column: 5, scope: !2599)
!2643 = !DILocation(line: 1145, column: 16, scope: !2599)
!2644 = !DILocation(line: 1145, column: 21, scope: !2599)
!2645 = !DILocation(line: 1145, column: 14, scope: !2599)
!2646 = !DILocation(line: 1146, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 1146, column: 5)
!2648 = !DILocation(line: 1146, column: 10, scope: !2647)
!2649 = !DILocation(line: 1146, column: 18, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 1146, column: 5)
!2651 = !DILocation(line: 1146, column: 23, scope: !2650)
!2652 = !DILocation(line: 1146, column: 21, scope: !2650)
!2653 = !DILocation(line: 1146, column: 5, scope: !2647)
!2654 = !DILocation(line: 1147, column: 24, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 1146, column: 36)
!2656 = !DILocation(line: 1147, column: 26, scope: !2655)
!2657 = !DILocation(line: 1147, column: 9, scope: !2655)
!2658 = !DILocation(line: 1147, column: 18, scope: !2655)
!2659 = !DILocation(line: 1147, column: 22, scope: !2655)
!2660 = !DILocation(line: 1148, column: 5, scope: !2655)
!2661 = !DILocation(line: 1146, column: 32, scope: !2650)
!2662 = !DILocation(line: 1146, column: 5, scope: !2650)
!2663 = distinct !{!2663, !2653, !2664, !438}
!2664 = !DILocation(line: 1148, column: 5, scope: !2647)
!2665 = !DILocation(line: 1149, column: 1, scope: !2599)
!2666 = distinct !DISubprogram(name: "jsonsl_jpr_match_state_cleanup", scope: !2, file: !2, line: 1152, type: !443, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2667 = !DILocalVariable(name: "jsn", arg: 1, scope: !2666, file: !2, line: 1152, type: !261)
!2668 = !DILocation(line: 1152, column: 46, scope: !2666)
!2669 = !DILocation(line: 1154, column: 9, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1154, column: 9)
!2671 = !DILocation(line: 1154, column: 14, scope: !2670)
!2672 = !DILocation(line: 1154, column: 24, scope: !2670)
!2673 = !DILocation(line: 1154, column: 9, scope: !2666)
!2674 = !DILocation(line: 1155, column: 9, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1154, column: 30)
!2676 = !DILocation(line: 1158, column: 10, scope: !2666)
!2677 = !DILocation(line: 1158, column: 15, scope: !2666)
!2678 = !DILocation(line: 1158, column: 5, scope: !2666)
!2679 = !DILocation(line: 1159, column: 10, scope: !2666)
!2680 = !DILocation(line: 1159, column: 15, scope: !2666)
!2681 = !DILocation(line: 1159, column: 5, scope: !2666)
!2682 = !DILocation(line: 1160, column: 5, scope: !2666)
!2683 = !DILocation(line: 1160, column: 10, scope: !2666)
!2684 = !DILocation(line: 1160, column: 15, scope: !2666)
!2685 = !DILocation(line: 1161, column: 5, scope: !2666)
!2686 = !DILocation(line: 1161, column: 10, scope: !2666)
!2687 = !DILocation(line: 1161, column: 19, scope: !2666)
!2688 = !DILocation(line: 1162, column: 5, scope: !2666)
!2689 = !DILocation(line: 1162, column: 10, scope: !2666)
!2690 = !DILocation(line: 1162, column: 20, scope: !2666)
!2691 = !DILocation(line: 1163, column: 1, scope: !2666)
!2692 = distinct !DISubprogram(name: "jsonsl_jpr_match_state", scope: !2, file: !2, line: 1179, type: !2693, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!311, !261, !263, !344, !249, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2696 = !DILocalVariable(name: "jsn", arg: 1, scope: !2692, file: !2, line: 1179, type: !261)
!2697 = !DILocation(line: 1179, column: 46, scope: !2692)
!2698 = !DILocalVariable(name: "state", arg: 2, scope: !2692, file: !2, line: 1180, type: !263)
!2699 = !DILocation(line: 1180, column: 61, scope: !2692)
!2700 = !DILocalVariable(name: "key", arg: 3, scope: !2692, file: !2, line: 1181, type: !344)
!2701 = !DILocation(line: 1181, column: 49, scope: !2692)
!2702 = !DILocalVariable(name: "nkey", arg: 4, scope: !2692, file: !2, line: 1182, type: !249)
!2703 = !DILocation(line: 1182, column: 44, scope: !2692)
!2704 = !DILocalVariable(name: "out", arg: 5, scope: !2692, file: !2, line: 1183, type: !2695)
!2705 = !DILocation(line: 1183, column: 57, scope: !2692)
!2706 = !DILocalVariable(name: "parent_state", scope: !2692, file: !2, line: 1185, type: !263)
!2707 = !DILocation(line: 1185, column: 29, scope: !2692)
!2708 = !DILocalVariable(name: "ret", scope: !2692, file: !2, line: 1186, type: !311)
!2709 = !DILocation(line: 1186, column: 18, scope: !2692)
!2710 = !DILocalVariable(name: "jmptable", scope: !2692, file: !2, line: 1189, type: !333)
!2711 = !DILocation(line: 1189, column: 13, scope: !2692)
!2712 = !DILocalVariable(name: "pjmptable", scope: !2692, file: !2, line: 1189, type: !333)
!2713 = !DILocation(line: 1189, column: 24, scope: !2692)
!2714 = !DILocalVariable(name: "jmp_cur", scope: !2692, file: !2, line: 1190, type: !249)
!2715 = !DILocation(line: 1190, column: 12, scope: !2692)
!2716 = !DILocalVariable(name: "ii", scope: !2692, file: !2, line: 1190, type: !249)
!2717 = !DILocation(line: 1190, column: 21, scope: !2692)
!2718 = !DILocalVariable(name: "ourjmpidx", scope: !2692, file: !2, line: 1190, type: !249)
!2719 = !DILocation(line: 1190, column: 25, scope: !2692)
!2720 = !DILocation(line: 1192, column: 10, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1192, column: 9)
!2722 = !DILocation(line: 1192, column: 15, scope: !2721)
!2723 = !DILocation(line: 1192, column: 9, scope: !2692)
!2724 = !DILocation(line: 1193, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !2, line: 1192, column: 25)
!2726 = !DILocation(line: 1193, column: 14, scope: !2725)
!2727 = !DILocation(line: 1194, column: 9, scope: !2725)
!2728 = !DILocation(line: 1197, column: 17, scope: !2692)
!2729 = !DILocation(line: 1197, column: 22, scope: !2692)
!2730 = !DILocation(line: 1197, column: 34, scope: !2692)
!2731 = !DILocation(line: 1197, column: 39, scope: !2692)
!2732 = !DILocation(line: 1197, column: 52, scope: !2692)
!2733 = !DILocation(line: 1197, column: 59, scope: !2692)
!2734 = !DILocation(line: 1197, column: 64, scope: !2692)
!2735 = !DILocation(line: 1197, column: 51, scope: !2692)
!2736 = !DILocation(line: 1197, column: 49, scope: !2692)
!2737 = !DILocation(line: 1197, column: 31, scope: !2692)
!2738 = !DILocation(line: 1197, column: 15, scope: !2692)
!2739 = !DILocation(line: 1198, column: 16, scope: !2692)
!2740 = !DILocation(line: 1198, column: 28, scope: !2692)
!2741 = !DILocation(line: 1198, column: 33, scope: !2692)
!2742 = !DILocation(line: 1198, column: 26, scope: !2692)
!2743 = !DILocation(line: 1198, column: 14, scope: !2692)
!2744 = !DILocation(line: 1201, column: 10, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1201, column: 9)
!2746 = !DILocation(line: 1201, column: 9, scope: !2745)
!2747 = !DILocation(line: 1201, column: 20, scope: !2745)
!2748 = !DILocation(line: 1201, column: 9, scope: !2692)
!2749 = !DILocation(line: 1202, column: 10, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 1201, column: 26)
!2751 = !DILocation(line: 1202, column: 19, scope: !2750)
!2752 = !DILocation(line: 1203, column: 10, scope: !2750)
!2753 = !DILocation(line: 1203, column: 14, scope: !2750)
!2754 = !DILocation(line: 1204, column: 9, scope: !2750)
!2755 = !DILocation(line: 1207, column: 20, scope: !2692)
!2756 = !DILocation(line: 1207, column: 25, scope: !2692)
!2757 = !DILocation(line: 1207, column: 33, scope: !2692)
!2758 = !DILocation(line: 1207, column: 40, scope: !2692)
!2759 = !DILocation(line: 1207, column: 31, scope: !2692)
!2760 = !DILocation(line: 1207, column: 46, scope: !2692)
!2761 = !DILocation(line: 1207, column: 18, scope: !2692)
!2762 = !DILocation(line: 1209, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1209, column: 9)
!2764 = !DILocation(line: 1209, column: 23, scope: !2763)
!2765 = !DILocation(line: 1209, column: 28, scope: !2763)
!2766 = !DILocation(line: 1209, column: 9, scope: !2692)
!2767 = !DILocation(line: 1210, column: 25, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 1209, column: 46)
!2769 = !DILocation(line: 1210, column: 39, scope: !2768)
!2770 = !DILocation(line: 1210, column: 14, scope: !2768)
!2771 = !DILocation(line: 1211, column: 5, scope: !2768)
!2772 = !DILocation(line: 1213, column: 6, scope: !2692)
!2773 = !DILocation(line: 1213, column: 15, scope: !2692)
!2774 = !DILocation(line: 1214, column: 15, scope: !2692)
!2775 = !DILocation(line: 1215, column: 12, scope: !2692)
!2776 = !DILocation(line: 1215, column: 39, scope: !2692)
!2777 = !DILocation(line: 1215, column: 44, scope: !2692)
!2778 = !DILocation(line: 1215, column: 37, scope: !2692)
!2779 = !DILocation(line: 1215, column: 5, scope: !2692)
!2780 = !DILocation(line: 1217, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1217, column: 5)
!2782 = !DILocation(line: 1217, column: 10, scope: !2781)
!2783 = !DILocation(line: 1217, column: 18, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 1217, column: 5)
!2785 = !DILocation(line: 1217, column: 24, scope: !2784)
!2786 = !DILocation(line: 1217, column: 29, scope: !2784)
!2787 = !DILocation(line: 1217, column: 21, scope: !2784)
!2788 = !DILocation(line: 1217, column: 5, scope: !2781)
!2789 = !DILocation(line: 1218, column: 19, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 1217, column: 46)
!2791 = !DILocation(line: 1218, column: 29, scope: !2790)
!2792 = !DILocation(line: 1218, column: 17, scope: !2790)
!2793 = !DILocation(line: 1219, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 1219, column: 13)
!2795 = !DILocation(line: 1219, column: 13, scope: !2790)
!2796 = !DILocalVariable(name: "jpr", scope: !2797, file: !2, line: 1220, type: !311)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !2, line: 1219, column: 22)
!2798 = !DILocation(line: 1220, column: 26, scope: !2797)
!2799 = !DILocation(line: 1220, column: 32, scope: !2797)
!2800 = !DILocation(line: 1220, column: 37, scope: !2797)
!2801 = !DILocation(line: 1220, column: 42, scope: !2797)
!2802 = !DILocation(line: 1220, column: 49, scope: !2797)
!2803 = !DILocation(line: 1221, column: 37, scope: !2797)
!2804 = !DILocation(line: 1222, column: 37, scope: !2797)
!2805 = !DILocation(line: 1222, column: 51, scope: !2797)
!2806 = !DILocation(line: 1223, column: 37, scope: !2797)
!2807 = !DILocation(line: 1223, column: 51, scope: !2797)
!2808 = !DILocation(line: 1224, column: 37, scope: !2797)
!2809 = !DILocation(line: 1224, column: 42, scope: !2797)
!2810 = !DILocation(line: 1221, column: 20, scope: !2797)
!2811 = !DILocation(line: 1221, column: 14, scope: !2797)
!2812 = !DILocation(line: 1221, column: 18, scope: !2797)
!2813 = !DILocation(line: 1225, column: 18, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 1225, column: 17)
!2815 = !DILocation(line: 1225, column: 17, scope: !2814)
!2816 = !DILocation(line: 1225, column: 22, scope: !2814)
!2817 = !DILocation(line: 1225, column: 17, scope: !2797)
!2818 = !DILocation(line: 1226, column: 23, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 1225, column: 48)
!2820 = !DILocation(line: 1226, column: 21, scope: !2819)
!2821 = !DILocation(line: 1227, column: 18, scope: !2819)
!2822 = !DILocation(line: 1227, column: 27, scope: !2819)
!2823 = !DILocation(line: 1228, column: 24, scope: !2819)
!2824 = !DILocation(line: 1228, column: 17, scope: !2819)
!2825 = !DILocation(line: 1229, column: 25, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 1229, column: 24)
!2827 = !DILocation(line: 1229, column: 24, scope: !2826)
!2828 = !DILocation(line: 1229, column: 29, scope: !2826)
!2829 = !DILocation(line: 1229, column: 24, scope: !2814)
!2830 = !DILocation(line: 1230, column: 39, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 1229, column: 55)
!2832 = !DILocation(line: 1230, column: 41, scope: !2831)
!2833 = !DILocation(line: 1230, column: 17, scope: !2831)
!2834 = !DILocation(line: 1230, column: 26, scope: !2831)
!2835 = !DILocation(line: 1230, column: 37, scope: !2831)
!2836 = !DILocation(line: 1231, column: 26, scope: !2831)
!2837 = !DILocation(line: 1232, column: 13, scope: !2831)
!2838 = !DILocation(line: 1233, column: 9, scope: !2797)
!2839 = !DILocation(line: 1234, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2794, file: !2, line: 1233, column: 16)
!2841 = !DILocation(line: 1236, column: 5, scope: !2790)
!2842 = !DILocation(line: 1217, column: 42, scope: !2784)
!2843 = !DILocation(line: 1217, column: 5, scope: !2784)
!2844 = distinct !{!2844, !2788, !2845, !438}
!2845 = !DILocation(line: 1236, column: 5, scope: !2781)
!2846 = !DILocation(line: 1237, column: 11, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1237, column: 9)
!2848 = !DILocation(line: 1237, column: 10, scope: !2847)
!2849 = !DILocation(line: 1237, column: 9, scope: !2692)
!2850 = !DILocation(line: 1238, column: 10, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 1237, column: 21)
!2852 = !DILocation(line: 1238, column: 14, scope: !2851)
!2853 = !DILocation(line: 1239, column: 5, scope: !2851)
!2854 = !DILocation(line: 1240, column: 5, scope: !2692)
!2855 = !DILocation(line: 1241, column: 1, scope: !2692)
!2856 = distinct !DISubprogram(name: "jsonsl_strmatchtype", scope: !2, file: !2, line: 1244, type: !2857, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!344, !2318}
!2859 = !DILocalVariable(name: "match", arg: 1, scope: !2856, file: !2, line: 1244, type: !2318)
!2860 = !DILocation(line: 1244, column: 52, scope: !2856)
!2861 = !DILocation(line: 1249, column: 5, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1249, column: 5)
!2863 = !DILocation(line: 1249, column: 5, scope: !2856)
!2864 = !DILocation(line: 1249, column: 5, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1249, column: 5)
!2866 = !DILocation(line: 1249, column: 5, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1249, column: 5)
!2868 = !DILocation(line: 1249, column: 5, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1249, column: 5)
!2870 = !DILocation(line: 1251, column: 5, scope: !2856)
!2871 = !DILocation(line: 1252, column: 1, scope: !2856)
!2872 = distinct !DISubprogram(name: "jsonsl_util_unescape_ex", scope: !2, file: !2, line: 1322, type: !2873, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !139, retainedNodes: !384)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!249, !344, !320, !249, !2875, !2876, !1874, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!2878 = !DILocalVariable(name: "in", arg: 1, scope: !2872, file: !2, line: 1322, type: !344)
!2879 = !DILocation(line: 1322, column: 44, scope: !2872)
!2880 = !DILocalVariable(name: "out", arg: 2, scope: !2872, file: !2, line: 1323, type: !320)
!2881 = !DILocation(line: 1323, column: 38, scope: !2872)
!2882 = !DILocalVariable(name: "len", arg: 3, scope: !2872, file: !2, line: 1324, type: !249)
!2883 = !DILocation(line: 1324, column: 39, scope: !2872)
!2884 = !DILocalVariable(name: "toEscape", arg: 4, scope: !2872, file: !2, line: 1325, type: !2875)
!2885 = !DILocation(line: 1325, column: 42, scope: !2872)
!2886 = !DILocalVariable(name: "oflags", arg: 5, scope: !2872, file: !2, line: 1326, type: !2876)
!2887 = !DILocation(line: 1326, column: 42, scope: !2872)
!2888 = !DILocalVariable(name: "err", arg: 6, scope: !2872, file: !2, line: 1327, type: !1874)
!2889 = !DILocation(line: 1327, column: 48, scope: !2872)
!2890 = !DILocalVariable(name: "errat", arg: 7, scope: !2872, file: !2, line: 1328, type: !2877)
!2891 = !DILocation(line: 1328, column: 45, scope: !2872)
!2892 = !DILocalVariable(name: "c", scope: !2872, file: !2, line: 1330, type: !342)
!2893 = !DILocation(line: 1330, column: 26, scope: !2872)
!2894 = !DILocation(line: 1330, column: 52, scope: !2872)
!2895 = !DILocalVariable(name: "begin_p", scope: !2872, file: !2, line: 1331, type: !320)
!2896 = !DILocation(line: 1331, column: 11, scope: !2872)
!2897 = !DILocation(line: 1331, column: 21, scope: !2872)
!2898 = !DILocalVariable(name: "oflags_s", scope: !2872, file: !2, line: 1332, type: !144)
!2899 = !DILocation(line: 1332, column: 14, scope: !2872)
!2900 = !DILocalVariable(name: "last_codepoint", scope: !2872, file: !2, line: 1333, type: !348)
!2901 = !DILocation(line: 1333, column: 14, scope: !2872)
!2902 = !DILocation(line: 1335, column: 10, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2872, file: !2, line: 1335, column: 9)
!2904 = !DILocation(line: 1335, column: 9, scope: !2872)
!2905 = !DILocation(line: 1336, column: 16, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 1335, column: 18)
!2907 = !DILocation(line: 1337, column: 5, scope: !2906)
!2908 = !DILocation(line: 1338, column: 6, scope: !2872)
!2909 = !DILocation(line: 1338, column: 13, scope: !2872)
!2910 = !DILocation(line: 1347, column: 5, scope: !2872)
!2911 = !DILocation(line: 1347, column: 12, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1347, column: 5)
!2913 = distinct !DILexicalBlock(scope: !2872, file: !2, line: 1347, column: 5)
!2914 = !DILocation(line: 1347, column: 5, scope: !2913)
!2915 = !DILocalVariable(name: "uescval", scope: !2916, file: !2, line: 1348, type: !181)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 1347, column: 36)
!2917 = !DILocation(line: 1348, column: 13, scope: !2916)
!2918 = !DILocation(line: 1349, column: 14, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1349, column: 13)
!2920 = !DILocation(line: 1349, column: 13, scope: !2919)
!2921 = !DILocation(line: 1349, column: 16, scope: !2919)
!2922 = !DILocation(line: 1349, column: 13, scope: !2916)
!2923 = !DILocation(line: 1351, column: 13, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2919, file: !2, line: 1349, column: 25)
!2925 = !DILocation(line: 1354, column: 13, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1354, column: 13)
!2927 = !DILocation(line: 1354, column: 17, scope: !2926)
!2928 = !DILocation(line: 1354, column: 13, scope: !2916)
!2929 = !DILocation(line: 1355, column: 13, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !2, line: 1354, column: 22)
!2931 = !DILocation(line: 1355, column: 13, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2930, file: !2, line: 1355, column: 13)
!2933 = !DILocation(line: 1355, column: 13, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1355, column: 13)
!2935 = !DILocation(line: 1357, column: 32, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1357, column: 13)
!2937 = !DILocation(line: 1357, column: 14, scope: !2936)
!2938 = !DILocation(line: 1357, column: 13, scope: !2916)
!2939 = !DILocation(line: 1358, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !2, line: 1357, column: 39)
!2941 = !DILocation(line: 1358, column: 13, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 1358, column: 13)
!2943 = !DILocation(line: 1358, column: 13, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2942, file: !2, line: 1358, column: 13)
!2945 = !DILocation(line: 1360, column: 14, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1360, column: 13)
!2947 = !DILocation(line: 1360, column: 23, scope: !2946)
!2948 = !DILocation(line: 1360, column: 26, scope: !2946)
!2949 = !DILocation(line: 1360, column: 50, scope: !2946)
!2950 = !DILocation(line: 1360, column: 35, scope: !2946)
!2951 = !DILocation(line: 1360, column: 55, scope: !2946)
!2952 = !DILocation(line: 1360, column: 63, scope: !2946)
!2953 = !DILocation(line: 1360, column: 68, scope: !2946)
!2954 = !DILocation(line: 1361, column: 17, scope: !2946)
!2955 = !DILocation(line: 1361, column: 22, scope: !2946)
!2956 = !DILocation(line: 1361, column: 30, scope: !2946)
!2957 = !DILocation(line: 1361, column: 33, scope: !2946)
!2958 = !DILocation(line: 1361, column: 38, scope: !2946)
!2959 = !DILocation(line: 1360, column: 13, scope: !2916)
!2960 = !DILocation(line: 1363, column: 24, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1361, column: 47)
!2962 = !DILocation(line: 1363, column: 22, scope: !2961)
!2963 = !DILocation(line: 1363, column: 17, scope: !2961)
!2964 = !DILocation(line: 1363, column: 20, scope: !2961)
!2965 = !DILocation(line: 1364, column: 13, scope: !2961)
!2966 = !DILocation(line: 1365, column: 13, scope: !2961)
!2967 = !DILocation(line: 1368, column: 13, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1368, column: 13)
!2969 = !DILocation(line: 1368, column: 18, scope: !2968)
!2970 = !DILocation(line: 1368, column: 13, scope: !2916)
!2971 = !DILocalVariable(name: "esctmp", scope: !2972, file: !2, line: 1373, type: !4)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !2, line: 1368, column: 26)
!2973 = !DILocation(line: 1373, column: 18, scope: !2972)
!2974 = !DILocation(line: 1373, column: 44, scope: !2972)
!2975 = !DILocation(line: 1373, column: 27, scope: !2972)
!2976 = !DILocation(line: 1374, column: 17, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 1374, column: 17)
!2978 = !DILocation(line: 1374, column: 17, scope: !2972)
!2979 = !DILocation(line: 1376, column: 24, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 1374, column: 25)
!2981 = !DILocation(line: 1376, column: 18, scope: !2980)
!2982 = !DILocation(line: 1376, column: 22, scope: !2980)
!2983 = !DILocation(line: 1377, column: 13, scope: !2980)
!2984 = !DILocation(line: 1379, column: 24, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 1377, column: 20)
!2986 = !DILocation(line: 1379, column: 18, scope: !2985)
!2987 = !DILocation(line: 1379, column: 22, scope: !2985)
!2988 = !DILocation(line: 1381, column: 16, scope: !2972)
!2989 = !DILocation(line: 1382, column: 14, scope: !2972)
!2990 = !DILocation(line: 1384, column: 13, scope: !2972)
!2991 = !DILocation(line: 1388, column: 13, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1388, column: 13)
!2993 = !DILocation(line: 1388, column: 17, scope: !2992)
!2994 = !DILocation(line: 1388, column: 13, scope: !2916)
!2995 = !DILocation(line: 1390, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1388, column: 22)
!2997 = !DILocation(line: 1390, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 1390, column: 13)
!2999 = !DILocation(line: 1390, column: 13, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 1390, column: 13)
!3001 = !DILocation(line: 1393, column: 56, scope: !2916)
!3002 = !DILocation(line: 1393, column: 58, scope: !2916)
!3003 = !DILocation(line: 1393, column: 19, scope: !2916)
!3004 = !DILocation(line: 1393, column: 17, scope: !2916)
!3005 = !DILocation(line: 1394, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1394, column: 13)
!3007 = !DILocation(line: 1394, column: 21, scope: !3006)
!3008 = !DILocation(line: 1394, column: 13, scope: !2916)
!3009 = !DILocation(line: 1395, column: 13, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 1394, column: 28)
!3011 = !DILocation(line: 1395, column: 13, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 1395, column: 13)
!3013 = !DILocation(line: 1395, column: 13, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3012, file: !2, line: 1395, column: 13)
!3015 = !DILocation(line: 1398, column: 13, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1398, column: 13)
!3017 = !DILocation(line: 1398, column: 13, scope: !2916)
!3018 = !DILocalVariable(name: "w1", scope: !3019, file: !2, line: 1399, type: !348)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 1398, column: 29)
!3020 = !DILocation(line: 1399, column: 22, scope: !3019)
!3021 = !DILocation(line: 1399, column: 27, scope: !3019)
!3022 = !DILocalVariable(name: "w2", scope: !3019, file: !2, line: 1399, type: !348)
!3023 = !DILocation(line: 1399, column: 43, scope: !3019)
!3024 = !DILocation(line: 1399, column: 58, scope: !3019)
!3025 = !DILocation(line: 1399, column: 48, scope: !3019)
!3026 = !DILocalVariable(name: "cp", scope: !3019, file: !2, line: 1400, type: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !273, line: 26, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !275, line: 42, baseType: !144)
!3029 = !DILocation(line: 1400, column: 22, scope: !3019)
!3030 = !DILocation(line: 1402, column: 17, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 1402, column: 17)
!3032 = !DILocation(line: 1402, column: 25, scope: !3031)
!3033 = !DILocation(line: 1402, column: 34, scope: !3031)
!3034 = !DILocation(line: 1402, column: 37, scope: !3031)
!3035 = !DILocation(line: 1402, column: 45, scope: !3031)
!3036 = !DILocation(line: 1402, column: 17, scope: !3019)
!3037 = !DILocation(line: 1403, column: 17, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 1402, column: 55)
!3039 = !DILocation(line: 1403, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1403, column: 17)
!3041 = !DILocation(line: 1403, column: 17, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3040, file: !2, line: 1403, column: 17)
!3043 = !DILocation(line: 1406, column: 19, scope: !3019)
!3044 = !DILocation(line: 1406, column: 22, scope: !3019)
!3045 = !DILocation(line: 1406, column: 31, scope: !3019)
!3046 = !DILocation(line: 1406, column: 16, scope: !3019)
!3047 = !DILocation(line: 1407, column: 20, scope: !3019)
!3048 = !DILocation(line: 1407, column: 23, scope: !3019)
!3049 = !DILocation(line: 1407, column: 16, scope: !3019)
!3050 = !DILocation(line: 1408, column: 16, scope: !3019)
!3051 = !DILocation(line: 1410, column: 37, scope: !3019)
!3052 = !DILocation(line: 1410, column: 41, scope: !3019)
!3053 = !DILocation(line: 1410, column: 19, scope: !3019)
!3054 = !DILocation(line: 1410, column: 46, scope: !3019)
!3055 = !DILocation(line: 1410, column: 17, scope: !3019)
!3056 = !DILocation(line: 1411, column: 28, scope: !3019)
!3057 = !DILocation(line: 1413, column: 9, scope: !3019)
!3058 = !DILocation(line: 1413, column: 20, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3016, file: !2, line: 1413, column: 20)
!3060 = !DILocation(line: 1413, column: 28, scope: !3059)
!3061 = !DILocation(line: 1413, column: 37, scope: !3059)
!3062 = !DILocation(line: 1413, column: 40, scope: !3059)
!3063 = !DILocation(line: 1413, column: 48, scope: !3059)
!3064 = !DILocation(line: 1413, column: 20, scope: !3016)
!3065 = !DILocation(line: 1414, column: 14, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 1413, column: 58)
!3067 = !DILocation(line: 1414, column: 21, scope: !3066)
!3068 = !DILocation(line: 1415, column: 37, scope: !3066)
!3069 = !DILocation(line: 1415, column: 46, scope: !3066)
!3070 = !DILocation(line: 1415, column: 19, scope: !3066)
!3071 = !DILocation(line: 1415, column: 51, scope: !3066)
!3072 = !DILocation(line: 1415, column: 17, scope: !3066)
!3073 = !DILocation(line: 1417, column: 9, scope: !3066)
!3074 = !DILocation(line: 1417, column: 20, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 1417, column: 20)
!3076 = !DILocation(line: 1417, column: 28, scope: !3075)
!3077 = !DILocation(line: 1417, column: 20, scope: !3059)
!3078 = !DILocation(line: 1418, column: 14, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !2, line: 1417, column: 38)
!3080 = !DILocation(line: 1418, column: 21, scope: !3079)
!3081 = !DILocation(line: 1419, column: 40, scope: !3079)
!3082 = !DILocation(line: 1419, column: 30, scope: !3079)
!3083 = !DILocation(line: 1419, column: 28, scope: !3079)
!3084 = !DILocation(line: 1420, column: 16, scope: !3079)
!3085 = !DILocation(line: 1421, column: 9, scope: !3079)
!3086 = !DILocation(line: 1422, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3075, file: !2, line: 1421, column: 16)
!3088 = !DILocation(line: 1422, column: 13, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 1422, column: 13)
!3090 = !DILocation(line: 1422, column: 13, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3089, file: !2, line: 1422, column: 13)
!3092 = !DILocation(line: 1426, column: 13, scope: !2916)
!3093 = !DILocation(line: 1427, column: 11, scope: !2916)
!3094 = !DILocation(line: 1428, column: 9, scope: !2916)
!3095 = !DILabel(scope: !2916, name: "GT_ASSIGN", file: !2, line: 1431)
!3096 = !DILocation(line: 1431, column: 9, scope: !2916)
!3097 = !DILocation(line: 1432, column: 17, scope: !2916)
!3098 = !DILocation(line: 1432, column: 16, scope: !2916)
!3099 = !DILocation(line: 1432, column: 10, scope: !2916)
!3100 = !DILocation(line: 1432, column: 14, scope: !2916)
!3101 = !DILocation(line: 1433, column: 5, scope: !2916)
!3102 = !DILocation(line: 1347, column: 20, scope: !2912)
!3103 = !DILocation(line: 1347, column: 25, scope: !2912)
!3104 = !DILocation(line: 1347, column: 32, scope: !2912)
!3105 = !DILocation(line: 1347, column: 5, scope: !2912)
!3106 = distinct !{!3106, !2914, !3107, !438}
!3107 = !DILocation(line: 1433, column: 5, scope: !2913)
!3108 = !DILocation(line: 1435, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2872, file: !2, line: 1435, column: 9)
!3110 = !DILocation(line: 1435, column: 9, scope: !2872)
!3111 = !DILocation(line: 1436, column: 10, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !2, line: 1435, column: 25)
!3113 = !DILocation(line: 1436, column: 14, scope: !3112)
!3114 = !DILocation(line: 1437, column: 9, scope: !3112)
!3115 = !DILocation(line: 1440, column: 6, scope: !2872)
!3116 = !DILocation(line: 1440, column: 10, scope: !2872)
!3117 = !DILocation(line: 1441, column: 12, scope: !2872)
!3118 = !DILocation(line: 1441, column: 18, scope: !2872)
!3119 = !DILocation(line: 1441, column: 16, scope: !2872)
!3120 = !DILocation(line: 1441, column: 5, scope: !2872)
!3121 = !DILocation(line: 1442, column: 1, scope: !2872)
!3122 = distinct !DISubprogram(name: "get_escape_equiv", scope: !2, file: !2, line: 1629, type: !3123, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!4, !144}
!3125 = !DILocalVariable(name: "c", arg: 1, scope: !3122, file: !2, line: 1629, type: !144)
!3126 = !DILocation(line: 1629, column: 39, scope: !3122)
!3127 = !DILocation(line: 1630, column: 26, scope: !3122)
!3128 = !DILocation(line: 1630, column: 28, scope: !3122)
!3129 = !DILocation(line: 1630, column: 12, scope: !3122)
!3130 = !DILocation(line: 1630, column: 5, scope: !3122)
!3131 = distinct !DISubprogram(name: "jsonsl__get_uescape_16", scope: !2, file: !2, line: 1300, type: !3132, scopeLine: 1301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!181, !344}
!3134 = !DILocalVariable(name: "s", arg: 1, scope: !3131, file: !2, line: 1300, type: !344)
!3135 = !DILocation(line: 1300, column: 36, scope: !3131)
!3136 = !DILocalVariable(name: "ret", scope: !3131, file: !2, line: 1302, type: !181)
!3137 = !DILocation(line: 1302, column: 9, scope: !3131)
!3138 = !DILocalVariable(name: "cur", scope: !3131, file: !2, line: 1303, type: !181)
!3139 = !DILocation(line: 1303, column: 9, scope: !3131)
!3140 = !DILocation(line: 1310, column: 5, scope: !3131)
!3141 = !DILocation(line: 1310, column: 5, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1310, column: 5)
!3143 = !DILocation(line: 1310, column: 5, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3142, file: !2, line: 1310, column: 5)
!3145 = !DILocation(line: 1311, column: 5, scope: !3131)
!3146 = !DILocation(line: 1311, column: 5, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1311, column: 5)
!3148 = !DILocation(line: 1311, column: 5, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3147, file: !2, line: 1311, column: 5)
!3150 = !DILocation(line: 1312, column: 5, scope: !3131)
!3151 = !DILocation(line: 1312, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1312, column: 5)
!3153 = !DILocation(line: 1312, column: 5, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 1312, column: 5)
!3155 = !DILocation(line: 1313, column: 5, scope: !3131)
!3156 = !DILocation(line: 1313, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1313, column: 5)
!3158 = !DILocation(line: 1313, column: 5, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 1313, column: 5)
!3160 = !DILocation(line: 1315, column: 12, scope: !3131)
!3161 = !DILocation(line: 1315, column: 5, scope: !3131)
!3162 = !DILocation(line: 1316, column: 1, scope: !3131)
!3163 = distinct !DISubprogram(name: "jsonsl__writeutf8", scope: !2, file: !2, line: 1257, type: !3164, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!320, !3027, !320}
!3166 = !DILocalVariable(name: "pt", arg: 1, scope: !3163, file: !2, line: 1257, type: !3027)
!3167 = !DILocation(line: 1257, column: 28, scope: !3163)
!3168 = !DILocalVariable(name: "out", arg: 2, scope: !3163, file: !2, line: 1257, type: !320)
!3169 = !DILocation(line: 1257, column: 38, scope: !3163)
!3170 = !DILocation(line: 1261, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 1261, column: 9)
!3172 = !DILocation(line: 1261, column: 12, scope: !3171)
!3173 = !DILocation(line: 1261, column: 9, scope: !3163)
!3174 = !DILocation(line: 1262, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !2, line: 1261, column: 20)
!3176 = !DILocation(line: 1263, column: 5, scope: !3175)
!3177 = !DILocation(line: 1263, column: 16, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !2, line: 1263, column: 16)
!3179 = !DILocation(line: 1263, column: 19, scope: !3178)
!3180 = !DILocation(line: 1263, column: 16, scope: !3171)
!3181 = !DILocation(line: 1264, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 1263, column: 28)
!3183 = !DILocation(line: 1265, column: 9, scope: !3182)
!3184 = !DILocation(line: 1266, column: 5, scope: !3182)
!3185 = !DILocation(line: 1266, column: 16, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 1266, column: 16)
!3187 = !DILocation(line: 1266, column: 19, scope: !3186)
!3188 = !DILocation(line: 1266, column: 16, scope: !3178)
!3189 = !DILocation(line: 1267, column: 9, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !2, line: 1266, column: 30)
!3191 = !DILocation(line: 1268, column: 9, scope: !3190)
!3192 = !DILocation(line: 1269, column: 9, scope: !3190)
!3193 = !DILocation(line: 1270, column: 5, scope: !3190)
!3194 = !DILocation(line: 1271, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3186, file: !2, line: 1270, column: 12)
!3196 = !DILocation(line: 1272, column: 9, scope: !3195)
!3197 = !DILocation(line: 1273, column: 9, scope: !3195)
!3198 = !DILocation(line: 1274, column: 9, scope: !3195)
!3199 = !DILocation(line: 1276, column: 12, scope: !3163)
!3200 = !DILocation(line: 1276, column: 5, scope: !3163)
!3201 = distinct !DISubprogram(name: "is_simple_char", scope: !2, file: !2, line: 1644, type: !1609, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!3202 = !DILocalVariable(name: "c", arg: 1, scope: !3201, file: !2, line: 1644, type: !144)
!3203 = !DILocation(line: 1644, column: 36, scope: !3201)
!3204 = !DILocation(line: 1645, column: 35, scope: !3201)
!3205 = !DILocation(line: 1645, column: 37, scope: !3201)
!3206 = !DILocation(line: 1645, column: 13, scope: !3201)
!3207 = !DILocation(line: 1645, column: 12, scope: !3201)
!3208 = !DILocation(line: 1645, column: 5, scope: !3201)
!3209 = distinct !DISubprogram(name: "jsonsl__digit2int", scope: !2, file: !2, line: 1282, type: !3210, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !139, retainedNodes: !384)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!181, !4}
!3212 = !DILocalVariable(name: "ch", arg: 1, scope: !3209, file: !2, line: 1282, type: !4)
!3213 = !DILocation(line: 1282, column: 24, scope: !3209)
!3214 = !DILocalVariable(name: "d", scope: !3209, file: !2, line: 1283, type: !181)
!3215 = !DILocation(line: 1283, column: 9, scope: !3209)
!3216 = !DILocation(line: 1283, column: 13, scope: !3209)
!3217 = !DILocation(line: 1283, column: 16, scope: !3209)
!3218 = !DILocation(line: 1284, column: 20, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 1284, column: 9)
!3220 = !DILocation(line: 1284, column: 22, scope: !3219)
!3221 = !DILocation(line: 1284, column: 9, scope: !3209)
!3222 = !DILocation(line: 1285, column: 16, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !2, line: 1284, column: 28)
!3224 = !DILocation(line: 1285, column: 9, scope: !3223)
!3225 = !DILocation(line: 1287, column: 9, scope: !3209)
!3226 = !DILocation(line: 1287, column: 12, scope: !3209)
!3227 = !DILocation(line: 1287, column: 7, scope: !3209)
!3228 = !DILocation(line: 1288, column: 20, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 1288, column: 9)
!3230 = !DILocation(line: 1288, column: 22, scope: !3229)
!3231 = !DILocation(line: 1288, column: 9, scope: !3209)
!3232 = !DILocation(line: 1289, column: 16, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 1288, column: 27)
!3234 = !DILocation(line: 1289, column: 18, scope: !3233)
!3235 = !DILocation(line: 1289, column: 9, scope: !3233)
!3236 = !DILocation(line: 1291, column: 9, scope: !3209)
!3237 = !DILocation(line: 1291, column: 12, scope: !3209)
!3238 = !DILocation(line: 1291, column: 7, scope: !3209)
!3239 = !DILocation(line: 1292, column: 20, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 1292, column: 9)
!3241 = !DILocation(line: 1292, column: 22, scope: !3240)
!3242 = !DILocation(line: 1292, column: 9, scope: !3209)
!3243 = !DILocation(line: 1293, column: 16, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3240, file: !2, line: 1292, column: 27)
!3245 = !DILocation(line: 1293, column: 18, scope: !3244)
!3246 = !DILocation(line: 1293, column: 9, scope: !3244)
!3247 = !DILocation(line: 1295, column: 5, scope: !3209)
!3248 = !DILocation(line: 1296, column: 1, scope: !3209)
