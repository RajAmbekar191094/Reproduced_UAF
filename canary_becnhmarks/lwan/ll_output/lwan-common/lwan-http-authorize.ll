; ModuleID = '/home/raj/lwan/common/lwan-http-authorize.c'
source_filename = "/home/raj/lwan/common/lwan-http-authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_t_ = type { ptr, i32, ptr }
%struct.config_line_t_ = type { %union.anon.6, i32, [1024 x i8] }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, ptr }
%struct.realm_password_file_t = type { %struct.cache_entry_t, ptr }
%struct.cache_entry_t = type { %struct.list_node, ptr, i32, i32, i64 }
%struct.list_node = type { ptr, ptr }
%struct.anon.8 = type { ptr, ptr }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.1, %struct.anon.1, %struct.anon.2, %struct.lwan_response_t_ }
%struct.anon.1 = type { ptr, i64 }
%struct.anon.2 = type { i64, %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%struct.lwan_key_value_t_ = type { ptr, ptr }

@realm_password_cache = internal global ptr null, align 8, !dbg !0
@lwan_http_authorize.authenticate_tmpl = internal constant [17 x i8] c"Basic realm=\22%s\22\00", align 16, !dbg !88
@lwan_http_authorize.basic_len = internal constant i64 6, align 8, !dbg !265
@.str = private unnamed_addr constant [7 x i8] c"Basic \00", align 1, !dbg !268
@.str.1 = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1, !dbg !273
@.str.2 = private unnamed_addr constant [44 x i8] c"/home/raj/lwan/common/lwan-http-authorize.c\00", align 1, !dbg !276
@__FUNCTION__.create_realm_file = private unnamed_addr constant [18 x i8] c"create_realm_file\00", align 1, !dbg !281
@.str.3 = private unnamed_addr constant [46 x i8] c"Username entry already exists, ignoring: \22%s\22\00", align 1, !dbg !286
@.str.4 = private unnamed_addr constant [29 x i8] c"Expected username = password\00", align 1, !dbg !291
@.str.5 = private unnamed_addr constant [41 x i8] c"Error on password file \22%s\22, line %d: %s\00", align 1, !dbg !296

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_http_authorize_init() #0 !dbg !311 {
  %1 = call ptr @cache_create(ptr noundef @create_realm_file, ptr noundef @destroy_realm_file, ptr noundef null, i64 noundef 60), !dbg !314
  store ptr %1, ptr @realm_password_cache, align 8, !dbg !315
  %2 = load ptr, ptr @realm_password_cache, align 8, !dbg !316
  %3 = icmp ne ptr %2, null, !dbg !317
  %4 = xor i1 %3, true, !dbg !317
  %5 = xor i1 %4, true, !dbg !318
  ret i1 %5, !dbg !319
}

declare ptr @cache_create(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_realm_file(ptr noundef %0, ptr noundef %1) #0 !dbg !320 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.config_t_, align 8
  %8 = alloca %struct.config_line_t_, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !323, metadata !DIExpression()), !dbg !324
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata ptr %6, metadata !327, metadata !DIExpression()), !dbg !328
  %12 = call noalias ptr @malloc(i64 noundef 48) #6, !dbg !329
  store ptr %12, ptr %6, align 8, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %7, metadata !330, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata ptr %8, metadata !390, metadata !DIExpression()), !dbg !413
  %13 = load ptr, ptr %6, align 8, !dbg !414
  %14 = icmp ne ptr %13, null, !dbg !414
  %15 = xor i1 %14, true, !dbg !414
  %16 = zext i1 %15 to i32, !dbg !414
  %17 = sext i32 %16 to i64, !dbg !414
  %18 = icmp ne i64 %17, 0, !dbg !414
  br i1 %18, label %19, label %20, !dbg !416

19:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !417
  br label %107, !dbg !417

20:                                               ; preds = %2
  %21 = call ptr @hash_str_new(ptr noundef @fourty_two_and_free, ptr noundef @fourty_two_and_free), !dbg !418
  %22 = load ptr, ptr %6, align 8, !dbg !419
  %23 = getelementptr inbounds %struct.realm_password_file_t, ptr %22, i32 0, i32 1, !dbg !420
  store ptr %21, ptr %23, align 8, !dbg !421
  %24 = load ptr, ptr %6, align 8, !dbg !422
  %25 = getelementptr inbounds %struct.realm_password_file_t, ptr %24, i32 0, i32 1, !dbg !422
  %26 = load ptr, ptr %25, align 8, !dbg !422
  %27 = icmp ne ptr %26, null, !dbg !422
  %28 = xor i1 %27, true, !dbg !422
  %29 = zext i1 %28 to i32, !dbg !422
  %30 = sext i32 %29 to i64, !dbg !422
  %31 = icmp ne i64 %30, 0, !dbg !422
  br i1 %31, label %32, label %33, !dbg !424

32:                                               ; preds = %20
  br label %102, !dbg !425

33:                                               ; preds = %20
  %34 = load ptr, ptr %4, align 8, !dbg !426
  %35 = call zeroext i1 @config_open(ptr noundef %7, ptr noundef %34), !dbg !428
  br i1 %35, label %37, label %36, !dbg !429

36:                                               ; preds = %33
  br label %102, !dbg !430

37:                                               ; preds = %33
  br label %38, !dbg !431

38:                                               ; preds = %88, %81, %75, %37
  %39 = call zeroext i1 @config_read_line(ptr noundef %7, ptr noundef %8), !dbg !432
  br i1 %39, label %40, label %89, !dbg !431

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.config_line_t_, ptr %8, i32 0, i32 1, !dbg !433
  %42 = load i32, ptr %41, align 8, !dbg !433
  switch i32 %42, label %86 [
    i32 0, label %43
  ], !dbg !435

43:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %9, metadata !436, metadata !DIExpression()), !dbg !439
  %44 = getelementptr inbounds %struct.config_line_t_, ptr %8, i32 0, i32 0, !dbg !440
  %45 = getelementptr inbounds %struct.anon.8, ptr %44, i32 0, i32 0, !dbg !441
  %46 = load ptr, ptr %45, align 8, !dbg !441
  %47 = call noalias ptr @strdup(ptr noundef %46) #7, !dbg !442
  store ptr %47, ptr %9, align 8, !dbg !439
  %48 = load ptr, ptr %9, align 8, !dbg !443
  %49 = icmp ne ptr %48, null, !dbg !443
  br i1 %49, label %51, label %50, !dbg !445

50:                                               ; preds = %43
  br label %101, !dbg !446

51:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %10, metadata !447, metadata !DIExpression()), !dbg !448
  %52 = getelementptr inbounds %struct.config_line_t_, ptr %8, i32 0, i32 0, !dbg !449
  %53 = getelementptr inbounds %struct.anon.8, ptr %52, i32 0, i32 1, !dbg !450
  %54 = load ptr, ptr %53, align 8, !dbg !450
  %55 = call noalias ptr @strdup(ptr noundef %54) #7, !dbg !451
  store ptr %55, ptr %10, align 8, !dbg !448
  %56 = load ptr, ptr %10, align 8, !dbg !452
  %57 = icmp ne ptr %56, null, !dbg !452
  br i1 %57, label %60, label %58, !dbg !454

58:                                               ; preds = %51
  %59 = load ptr, ptr %9, align 8, !dbg !455
  call void @free(ptr noundef %59) #7, !dbg !457
  br label %101, !dbg !458

60:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %11, metadata !459, metadata !DIExpression()), !dbg !460
  %61 = load ptr, ptr %6, align 8, !dbg !461
  %62 = getelementptr inbounds %struct.realm_password_file_t, ptr %61, i32 0, i32 1, !dbg !462
  %63 = load ptr, ptr %62, align 8, !dbg !462
  %64 = load ptr, ptr %9, align 8, !dbg !463
  %65 = load ptr, ptr %10, align 8, !dbg !464
  %66 = call i32 @hash_add_unique(ptr noundef %63, ptr noundef %64, ptr noundef %65), !dbg !465
  store i32 %66, ptr %11, align 4, !dbg !460
  %67 = load i32, ptr %11, align 4, !dbg !466
  %68 = icmp ne i32 %67, 0, !dbg !466
  %69 = xor i1 %68, true, !dbg !466
  %70 = xor i1 %69, true, !dbg !466
  %71 = xor i1 %70, true, !dbg !466
  %72 = zext i1 %71 to i32, !dbg !466
  %73 = sext i32 %72 to i64, !dbg !466
  %74 = icmp ne i64 %73, 0, !dbg !466
  br i1 %74, label %75, label %76, !dbg !468

75:                                               ; preds = %60
  br label %38, !dbg !469, !llvm.loop !470

76:                                               ; preds = %60
  %77 = load ptr, ptr %9, align 8, !dbg !473
  call void @free(ptr noundef %77) #7, !dbg !474
  %78 = load ptr, ptr %10, align 8, !dbg !475
  call void @free(ptr noundef %78) #7, !dbg !476
  %79 = load i32, ptr %11, align 4, !dbg !477
  %80 = icmp eq i32 %79, -17, !dbg !479
  br i1 %80, label %81, label %85, !dbg !480

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.config_line_t_, ptr %8, i32 0, i32 0, !dbg !481
  %83 = getelementptr inbounds %struct.anon.8, ptr %82, i32 0, i32 0, !dbg !481
  %84 = load ptr, ptr %83, align 8, !dbg !481
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.2, i32 noundef 89, ptr noundef @__FUNCTION__.create_realm_file, ptr noundef @.str.3, ptr noundef %84), !dbg !481
  br label %38, !dbg !483, !llvm.loop !470

85:                                               ; preds = %76
  br label %101, !dbg !484

86:                                               ; preds = %40
  %87 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %7, ptr noundef @.str.4), !dbg !485
  br label %88, !dbg !486

88:                                               ; preds = %86
  br label %38, !dbg !431, !llvm.loop !470

89:                                               ; preds = %38
  %90 = getelementptr inbounds %struct.config_t_, ptr %7, i32 0, i32 2, !dbg !487
  %91 = load ptr, ptr %90, align 8, !dbg !487
  %92 = icmp ne ptr %91, null, !dbg !489
  br i1 %92, label %93, label %99, !dbg !490

93:                                               ; preds = %89
  %94 = load ptr, ptr %4, align 8, !dbg !491
  %95 = getelementptr inbounds %struct.config_t_, ptr %7, i32 0, i32 1, !dbg !491
  %96 = load i32, ptr %95, align 8, !dbg !491
  %97 = getelementptr inbounds %struct.config_t_, ptr %7, i32 0, i32 2, !dbg !491
  %98 = load ptr, ptr %97, align 8, !dbg !491
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.2, i32 noundef 103, ptr noundef @__FUNCTION__.create_realm_file, ptr noundef @.str.5, ptr noundef %94, i32 noundef %96, ptr noundef %98), !dbg !491
  br label %101, !dbg !493

99:                                               ; preds = %89
  call void @config_close(ptr noundef %7), !dbg !494
  %100 = load ptr, ptr %6, align 8, !dbg !495
  store ptr %100, ptr %3, align 8, !dbg !496
  br label %107, !dbg !496

101:                                              ; preds = %93, %85, %58, %50
  call void @llvm.dbg.label(metadata !497), !dbg !498
  call void @config_close(ptr noundef %7), !dbg !499
  br label %102, !dbg !499

102:                                              ; preds = %101, %36, %32
  call void @llvm.dbg.label(metadata !500), !dbg !501
  %103 = load ptr, ptr %6, align 8, !dbg !502
  %104 = getelementptr inbounds %struct.realm_password_file_t, ptr %103, i32 0, i32 1, !dbg !503
  %105 = load ptr, ptr %104, align 8, !dbg !503
  call void @hash_free(ptr noundef %105), !dbg !504
  %106 = load ptr, ptr %6, align 8, !dbg !505
  call void @free(ptr noundef %106) #7, !dbg !506
  store ptr null, ptr %3, align 8, !dbg !507
  br label %107, !dbg !507

107:                                              ; preds = %102, %99, %19
  %108 = load ptr, ptr %3, align 8, !dbg !508
  ret ptr %108, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_realm_file(ptr noundef %0, ptr noundef %1) #0 !dbg !509 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !512, metadata !DIExpression()), !dbg !513
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata ptr %5, metadata !516, metadata !DIExpression()), !dbg !517
  %6 = load ptr, ptr %3, align 8, !dbg !518
  store ptr %6, ptr %5, align 8, !dbg !517
  %7 = load ptr, ptr %5, align 8, !dbg !519
  %8 = getelementptr inbounds %struct.realm_password_file_t, ptr %7, i32 0, i32 1, !dbg !520
  %9 = load ptr, ptr %8, align 8, !dbg !520
  call void @hash_free(ptr noundef %9), !dbg !521
  %10 = load ptr, ptr %5, align 8, !dbg !522
  call void @free(ptr noundef %10) #7, !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_http_authorize_shutdown() #0 !dbg !525 {
  %1 = load ptr, ptr @realm_password_cache, align 8, !dbg !528
  call void @cache_destroy(ptr noundef %1), !dbg !529
  ret void, !dbg !530
}

declare void @cache_destroy(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_http_authorize(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !90 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !531, metadata !DIExpression()), !dbg !532
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !533, metadata !DIExpression()), !dbg !534
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !535, metadata !DIExpression()), !dbg !536
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata ptr %10, metadata !539, metadata !DIExpression()), !dbg !540
  %11 = load ptr, ptr %7, align 8, !dbg !541
  %12 = getelementptr inbounds %struct.lwan_value_t_, ptr %11, i32 0, i32 0, !dbg !543
  %13 = load ptr, ptr %12, align 8, !dbg !543
  %14 = icmp ne ptr %13, null, !dbg !541
  br i1 %14, label %16, label %15, !dbg !544

15:                                               ; preds = %4
  br label %43, !dbg !545

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 8, !dbg !546
  %18 = getelementptr inbounds %struct.lwan_value_t_, ptr %17, i32 0, i32 0, !dbg !546
  %19 = load ptr, ptr %18, align 8, !dbg !546
  %20 = call i32 @strncmp(ptr noundef %19, ptr noundef @.str, i64 noundef 6) #8, !dbg !546
  %21 = sext i32 %20 to i64, !dbg !546
  %22 = icmp ne i64 %21, 0, !dbg !546
  br i1 %22, label %23, label %24, !dbg !548

23:                                               ; preds = %16
  br label %43, !dbg !549

24:                                               ; preds = %16
  %25 = load ptr, ptr %7, align 8, !dbg !550
  %26 = getelementptr inbounds %struct.lwan_value_t_, ptr %25, i32 0, i32 0, !dbg !551
  %27 = load ptr, ptr %26, align 8, !dbg !552
  %28 = getelementptr inbounds i8, ptr %27, i64 6, !dbg !552
  store ptr %28, ptr %26, align 8, !dbg !552
  %29 = load ptr, ptr %7, align 8, !dbg !553
  %30 = getelementptr inbounds %struct.lwan_value_t_, ptr %29, i32 0, i32 1, !dbg !554
  %31 = load i64, ptr %30, align 8, !dbg !555
  %32 = sub i64 %31, 6, !dbg !555
  store i64 %32, ptr %30, align 8, !dbg !555
  %33 = load ptr, ptr %6, align 8, !dbg !556
  %34 = getelementptr inbounds %struct.lwan_request_t_, ptr %33, i32 0, i32 4, !dbg !558
  %35 = load ptr, ptr %34, align 8, !dbg !558
  %36 = getelementptr inbounds %struct.lwan_connection_t_, ptr %35, i32 0, i32 2, !dbg !559
  %37 = load ptr, ptr %36, align 8, !dbg !559
  %38 = load ptr, ptr %7, align 8, !dbg !560
  %39 = load ptr, ptr %9, align 8, !dbg !561
  %40 = call zeroext i1 @authorize(ptr noundef %37, ptr noundef %38, ptr noundef %39), !dbg !562
  br i1 %40, label %41, label %42, !dbg !563

41:                                               ; preds = %24
  store i1 true, ptr %5, align 1, !dbg !564
  br label %73, !dbg !564

42:                                               ; preds = %24
  br label %43, !dbg !565

43:                                               ; preds = %42, %23, %15
  call void @llvm.dbg.label(metadata !566), !dbg !567
  %44 = load ptr, ptr %6, align 8, !dbg !568
  %45 = getelementptr inbounds %struct.lwan_request_t_, ptr %44, i32 0, i32 4, !dbg !569
  %46 = load ptr, ptr %45, align 8, !dbg !569
  %47 = getelementptr inbounds %struct.lwan_connection_t_, ptr %46, i32 0, i32 2, !dbg !570
  %48 = load ptr, ptr %47, align 8, !dbg !570
  %49 = call ptr @coro_malloc(ptr noundef %48, i64 noundef 32), !dbg !571
  store ptr %49, ptr %10, align 8, !dbg !572
  %50 = load ptr, ptr %10, align 8, !dbg !573
  %51 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %50, i64 0, !dbg !573
  %52 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %51, i32 0, i32 0, !dbg !574
  store ptr @.str.1, ptr %52, align 8, !dbg !575
  %53 = load ptr, ptr %6, align 8, !dbg !576
  %54 = getelementptr inbounds %struct.lwan_request_t_, ptr %53, i32 0, i32 4, !dbg !577
  %55 = load ptr, ptr %54, align 8, !dbg !577
  %56 = getelementptr inbounds %struct.lwan_connection_t_, ptr %55, i32 0, i32 2, !dbg !578
  %57 = load ptr, ptr %56, align 8, !dbg !578
  %58 = load ptr, ptr %8, align 8, !dbg !579
  %59 = call ptr (ptr, ptr, ...) @coro_printf(ptr noundef %57, ptr noundef @lwan_http_authorize.authenticate_tmpl, ptr noundef %58), !dbg !580
  %60 = load ptr, ptr %10, align 8, !dbg !581
  %61 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %60, i64 0, !dbg !581
  %62 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %61, i32 0, i32 1, !dbg !582
  store ptr %59, ptr %62, align 8, !dbg !583
  %63 = load ptr, ptr %10, align 8, !dbg !584
  %64 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %63, i64 1, !dbg !584
  %65 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %64, i32 0, i32 1, !dbg !585
  store ptr null, ptr %65, align 8, !dbg !586
  %66 = load ptr, ptr %10, align 8, !dbg !587
  %67 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %66, i64 1, !dbg !587
  %68 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %67, i32 0, i32 0, !dbg !588
  store ptr null, ptr %68, align 8, !dbg !589
  %69 = load ptr, ptr %10, align 8, !dbg !590
  %70 = load ptr, ptr %6, align 8, !dbg !591
  %71 = getelementptr inbounds %struct.lwan_request_t_, ptr %70, i32 0, i32 8, !dbg !592
  %72 = getelementptr inbounds %struct.lwan_response_t_, ptr %71, i32 0, i32 3, !dbg !593
  store ptr %69, ptr %72, align 8, !dbg !594
  store i1 false, ptr %5, align 1, !dbg !595
  br label %73, !dbg !595

73:                                               ; preds = %43, %41
  %74 = load i1, ptr %5, align 1, !dbg !596
  ret i1 %74, !dbg !596
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @authorize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !597 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !600, metadata !DIExpression()), !dbg !601
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !602, metadata !DIExpression()), !dbg !603
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !604, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.declare(metadata ptr %8, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata ptr %9, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata ptr %10, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata ptr %11, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata ptr %12, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata ptr %13, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata ptr %14, metadata !618, metadata !DIExpression()), !dbg !619
  store i8 0, ptr %14, align 1, !dbg !619
  %15 = load ptr, ptr @realm_password_cache, align 8, !dbg !620
  %16 = load ptr, ptr %5, align 8, !dbg !621
  %17 = load ptr, ptr %7, align 8, !dbg !622
  %18 = call ptr @cache_coro_get_and_ref_entry(ptr noundef %15, ptr noundef %16, ptr noundef %17), !dbg !623
  store ptr %18, ptr %8, align 8, !dbg !624
  %19 = load ptr, ptr %8, align 8, !dbg !625
  %20 = icmp ne ptr %19, null, !dbg !625
  %21 = xor i1 %20, true, !dbg !625
  %22 = zext i1 %21 to i32, !dbg !625
  %23 = sext i32 %22 to i64, !dbg !625
  %24 = icmp ne i64 %23, 0, !dbg !625
  br i1 %24, label %25, label %26, !dbg !627

25:                                               ; preds = %3
  store i1 false, ptr %4, align 1, !dbg !628
  br label %82, !dbg !628

26:                                               ; preds = %3
  %27 = load ptr, ptr %6, align 8, !dbg !629
  %28 = getelementptr inbounds %struct.lwan_value_t_, ptr %27, i32 0, i32 0, !dbg !630
  %29 = load ptr, ptr %28, align 8, !dbg !630
  %30 = load ptr, ptr %6, align 8, !dbg !631
  %31 = getelementptr inbounds %struct.lwan_value_t_, ptr %30, i32 0, i32 1, !dbg !632
  %32 = load i64, ptr %31, align 8, !dbg !632
  %33 = call ptr @base64_decode(ptr noundef %29, i64 noundef %32, ptr noundef %13), !dbg !633
  store ptr %33, ptr %9, align 8, !dbg !634
  %34 = load ptr, ptr %9, align 8, !dbg !635
  %35 = icmp ne ptr %34, null, !dbg !635
  %36 = xor i1 %35, true, !dbg !635
  %37 = zext i1 %36 to i32, !dbg !635
  %38 = sext i32 %37 to i64, !dbg !635
  %39 = icmp ne i64 %38, 0, !dbg !635
  br i1 %39, label %40, label %41, !dbg !637

40:                                               ; preds = %26
  store i1 false, ptr %4, align 1, !dbg !638
  br label %82, !dbg !638

41:                                               ; preds = %26
  %42 = load i64, ptr %13, align 8, !dbg !639
  %43 = icmp uge i64 %42, 1024, !dbg !639
  %44 = zext i1 %43 to i32, !dbg !639
  %45 = sext i32 %44 to i64, !dbg !639
  %46 = icmp ne i64 %45, 0, !dbg !639
  br i1 %46, label %47, label %48, !dbg !641

47:                                               ; preds = %41
  br label %78, !dbg !642

48:                                               ; preds = %41
  %49 = load ptr, ptr %9, align 8, !dbg !643
  %50 = load i64, ptr %13, align 8, !dbg !644
  %51 = call ptr @memchr(ptr noundef %49, i32 noundef 58, i64 noundef %50) #8, !dbg !645
  store ptr %51, ptr %10, align 8, !dbg !646
  %52 = load ptr, ptr %10, align 8, !dbg !647
  %53 = icmp ne ptr %52, null, !dbg !647
  %54 = xor i1 %53, true, !dbg !647
  %55 = zext i1 %54 to i32, !dbg !647
  %56 = sext i32 %55 to i64, !dbg !647
  %57 = icmp ne i64 %56, 0, !dbg !647
  br i1 %57, label %58, label %59, !dbg !649

58:                                               ; preds = %48
  br label %78, !dbg !650

59:                                               ; preds = %48
  %60 = load ptr, ptr %10, align 8, !dbg !651
  store i8 0, ptr %60, align 1, !dbg !652
  %61 = load ptr, ptr %10, align 8, !dbg !653
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !654
  store ptr %62, ptr %11, align 8, !dbg !655
  %63 = load ptr, ptr %8, align 8, !dbg !656
  %64 = getelementptr inbounds %struct.realm_password_file_t, ptr %63, i32 0, i32 1, !dbg !657
  %65 = load ptr, ptr %64, align 8, !dbg !657
  %66 = load ptr, ptr %9, align 8, !dbg !658
  %67 = call ptr @hash_find(ptr noundef %65, ptr noundef %66), !dbg !659
  store ptr %67, ptr %12, align 8, !dbg !660
  %68 = load ptr, ptr %12, align 8, !dbg !661
  %69 = icmp ne ptr %68, null, !dbg !661
  br i1 %69, label %70, label %77, !dbg !663

70:                                               ; preds = %59
  %71 = load ptr, ptr %11, align 8, !dbg !664
  %72 = load ptr, ptr %12, align 8, !dbg !665
  %73 = call i32 @strcmp(ptr noundef %71, ptr noundef %72) #8, !dbg !666
  %74 = icmp ne i32 %73, 0, !dbg !667
  %75 = xor i1 %74, true, !dbg !667
  %76 = zext i1 %75 to i8, !dbg !668
  store i8 %76, ptr %14, align 1, !dbg !668
  br label %77, !dbg !669

77:                                               ; preds = %70, %59
  br label %78, !dbg !661

78:                                               ; preds = %77, %58, %47
  call void @llvm.dbg.label(metadata !670), !dbg !671
  %79 = load ptr, ptr %9, align 8, !dbg !672
  call void @free(ptr noundef %79) #7, !dbg !673
  %80 = load i8, ptr %14, align 1, !dbg !674
  %81 = trunc i8 %80 to i1, !dbg !674
  store i1 %81, ptr %4, align 1, !dbg !675
  br label %82, !dbg !675

82:                                               ; preds = %78, %40, %25
  %83 = load i1, ptr %4, align 1, !dbg !676
  ret i1 %83, !dbg !676
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

declare ptr @coro_malloc(ptr noundef, i64 noundef) #1

declare ptr @coro_printf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare ptr @hash_str_new(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fourty_two_and_free(ptr noundef %0) #0 !dbg !677 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !678, metadata !DIExpression()), !dbg !679
  %4 = load ptr, ptr %2, align 8, !dbg !680
  %5 = icmp ne ptr %4, null, !dbg !680
  %6 = xor i1 %5, true, !dbg !680
  %7 = xor i1 %6, true, !dbg !680
  %8 = zext i1 %7 to i32, !dbg !680
  %9 = sext i32 %8 to i64, !dbg !680
  %10 = icmp ne i64 %9, 0, !dbg !680
  br i1 %10, label %11, label %22, !dbg !682

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !683, metadata !DIExpression()), !dbg !685
  %12 = load ptr, ptr %2, align 8, !dbg !686
  store ptr %12, ptr %3, align 8, !dbg !685
  br label %13, !dbg !687

13:                                               ; preds = %17, %11
  %14 = load ptr, ptr %3, align 8, !dbg !688
  %15 = load i8, ptr %14, align 1, !dbg !689
  %16 = icmp ne i8 %15, 0, !dbg !687
  br i1 %16, label %17, label %20, !dbg !687

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !dbg !690
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !690
  store ptr %19, ptr %3, align 8, !dbg !690
  store i8 42, ptr %18, align 1, !dbg !691
  br label %13, !dbg !687, !llvm.loop !692

20:                                               ; preds = %13
  %21 = load ptr, ptr %2, align 8, !dbg !694
  call void @free(ptr noundef %21) #7, !dbg !695
  br label %22, !dbg !696

22:                                               ; preds = %20, %1
  ret void, !dbg !697
}

declare zeroext i1 @config_open(ptr noundef, ptr noundef) #1

declare zeroext i1 @config_read_line(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare i32 @hash_add_unique(ptr noundef, ptr noundef, ptr noundef) #1

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #1

declare zeroext i1 @config_error(ptr noundef, ptr noundef, ...) #1

declare void @lwan_status_error_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #1

declare void @config_close(ptr noundef) #1

declare void @hash_free(ptr noundef) #1

declare ptr @cache_coro_get_and_ref_entry(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @base64_decode(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #3

declare ptr @hash_find(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "realm_password_cache", scope: !2, file: !78, line: 35, type: !301, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !87, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/lwan-http-authorize.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "a818272e04294763324aa9ca395ad814")
!4 = !{!5, !19, !27, !46}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 145, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!10 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!11 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!12 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!13 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!14 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!15 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!16 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!17 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!18 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 158, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "CONN_MASK", value: -1)
!22 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!23 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!24 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!25 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!26 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 114, baseType: !28, size: 32, elements: !29)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!30 = !DIEnumerator(name: "HTTP_OK", value: 200)
!31 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!32 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!33 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!34 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!35 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!36 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!37 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!38 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!39 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!40 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!41 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!42 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!43 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!44 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!45 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 35, baseType: !28, size: 32, elements: !48)
!47 = !DIFile(filename: "common/lwan-config.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "7586af514a363878312816f8ee308270")
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "CONFIG_LINE_TYPE_LINE", value: 0)
!50 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION", value: 1)
!51 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION_END", value: 2)
!52 = !{!53, !54, !76, !85}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_entry_t", file: !56, line: 27, size: 320, elements: !57)
!56 = !DIFile(filename: "common/lwan-cache.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f48e19cadb0735f737f22aa65af51f83")
!57 = !{!58, !65, !68, !69, !70}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !55, file: !56, line: 28, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !60, line: 191, size: 128, elements: !61)
!60 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !60, line: 193, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !60, line: 193, baseType: !63, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !55, file: !56, line: 29, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !55, file: !56, line: 30, baseType: !28, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !56, line: 31, baseType: !28, size: 32, offset: 224)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !55, file: !56, line: 32, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !72, line: 10, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !74, line: 160, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!75 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "realm_password_file_t", file: !78, line: 30, size: 384, elements: !79)
!78 = !DIFile(filename: "common/lwan-http-authorize.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "a818272e04294763324aa9ca395ad814")
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !77, file: !78, line: 31, baseType: !55, size: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !77, file: !78, line: 32, baseType: !82, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !84, line: 6, flags: DIFlagFwdDecl)
!84 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!88, !265, !268, !273, !276, !281, !286, !291, !296, !0}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "authenticate_tmpl", scope: !90, file: !78, line: 189, type: !262, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "lwan_http_authorize", scope: !78, file: !78, line: 184, type: !91, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !94, !260, !239, !239}
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !6, line: 106, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !6, line: 206, size: 1280, elements: !97)
!97 = !{!98, !100, !101, !110, !111, !200, !211, !212, !224}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !6, line: 207, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !6, line: 156, baseType: !5)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !96, file: !6, line: 208, baseType: !7, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !96, file: !6, line: 209, baseType: !102, size: 128, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !6, line: 110, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !6, line: 191, size: 128, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !6, line: 192, baseType: !66, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !103, file: !6, line: 193, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !96, file: !6, line: 210, baseType: !102, size: 128, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !96, file: !6, line: 211, baseType: !112, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !6, line: 112, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !6, line: 196, size: 256, elements: !115)
!115 = !{!116, !118, !119, !124, !198, !199}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !6, line: 199, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !6, line: 165, baseType: !19)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !114, file: !6, line: 200, baseType: !28, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !114, file: !6, line: 201, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !122, line: 34, baseType: !123)
!122 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !122, line: 34, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !114, file: !6, line: 202, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !6, line: 108, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !6, line: 253, size: 832, elements: !128)
!128 = !{!129, !181, !190, !191, !195}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !127, file: !6, line: 254, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !6, line: 103, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !6, line: 275, size: 640, elements: !133)
!133 = !{!134, !161, !162, !169, !170, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !132, file: !6, line: 276, baseType: !135, size: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !136, line: 25, baseType: !137)
!136 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !136, line: 41, size: 128, elements: !138)
!138 = !{!139, !157}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !137, file: !136, line: 42, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !136, line: 26, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !136, line: 29, size: 640, elements: !143)
!143 = !{!144, !148, !156}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !136, line: 30, baseType: !145, size: 512)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !142, file: !136, line: 31, baseType: !149, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !136, line: 27, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !136, line: 35, size: 192, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !151, file: !136, line: 36, baseType: !66, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !136, line: 37, baseType: !53, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !136, line: 38, baseType: !149, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !142, file: !136, line: 32, baseType: !7, size: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !137, file: !136, line: 43, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !53}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !132, file: !6, line: 277, baseType: !112, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !132, file: !6, line: 283, baseType: !163, size: 128, offset: 192)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !6, line: 279, size: 128, elements: !164)
!164 = !{!165, !166, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !163, file: !6, line: 280, baseType: !125, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !163, file: !6, line: 281, baseType: !28, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !163, file: !6, line: 282, baseType: !168, size: 16, offset: 96)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !132, file: !6, line: 285, baseType: !82, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !132, file: !6, line: 286, baseType: !171, size: 192, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !6, line: 111, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !6, line: 266, size: 192, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !172, file: !6, line: 267, baseType: !66, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !172, file: !6, line: 268, baseType: !168, size: 16, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !172, file: !6, line: 269, baseType: !93, size: 8, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !172, file: !6, line: 270, baseType: !93, size: 8, offset: 88)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !172, file: !6, line: 271, baseType: !28, size: 32, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !172, file: !6, line: 272, baseType: !168, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !132, file: !6, line: 287, baseType: !7, size: 32, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !127, file: !6, line: 259, baseType: !182, size: 576, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !6, line: 255, size: 576, elements: !183)
!183 = !{!184, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !182, file: !6, line: 256, baseType: !185, size: 240)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 240, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 30)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !182, file: !6, line: 257, baseType: !185, size: 240, offset: 240)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !182, file: !6, line: 258, baseType: !71, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !127, file: !6, line: 261, baseType: !7, size: 32, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !127, file: !6, line: 262, baseType: !192, size: 64, offset: 672)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 2)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !127, file: !6, line: 263, baseType: !196, size: 64, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !197, line: 27, baseType: !109)
!197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !6, line: 203, baseType: !7, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !6, line: 203, baseType: !7, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !96, file: !6, line: 216, baseType: !201, size: 128, offset: 384)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !6, line: 213, size: 128, elements: !202)
!202 = !{!203, !210}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !201, file: !6, line: 214, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !6, line: 105, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !6, line: 173, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !206, file: !6, line: 174, baseType: !66, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !6, line: 175, baseType: !66, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !201, file: !6, line: 215, baseType: !107, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !96, file: !6, line: 216, baseType: !201, size: 128, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !96, file: !6, line: 223, baseType: !213, size: 192, offset: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !6, line: 217, size: 192, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !213, file: !6, line: 218, baseType: !71, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !213, file: !6, line: 222, baseType: !217, size: 128, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !6, line: 219, size: 128, elements: !218)
!218 = !{!219, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !217, file: !6, line: 220, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !221, line: 85, baseType: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !75)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !217, file: !6, line: 221, baseType: !220, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !96, file: !6, line: 224, baseType: !225, size: 448, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !6, line: 107, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !6, line: 178, size: 448, elements: !227)
!227 = !{!228, !247, !248, !249, !250}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !226, file: !6, line: 179, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !231, line: 25, baseType: !232)
!231 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !231, line: 27, size: 256, elements: !233)
!233 = !{!234, !241, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !231, line: 31, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 28, size: 64, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !231, line: 29, baseType: !66, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !235, file: !231, line: 30, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !232, file: !231, line: 34, baseType: !242, size: 128, offset: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !231, line: 32, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !242, file: !231, line: 33, baseType: !107, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !242, file: !231, line: 33, baseType: !107, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !231, line: 35, baseType: !28, size: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !226, file: !6, line: 180, baseType: !239, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !226, file: !6, line: 181, baseType: !107, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !226, file: !6, line: 182, baseType: !204, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !226, file: !6, line: 188, baseType: !251, size: 192, offset: 256)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !6, line: 184, size: 192, elements: !252)
!252 = !{!253, !258, !259}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !251, file: !6, line: 185, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !94, !53}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !6, line: 131, baseType: !27)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !251, file: !6, line: 186, baseType: !53, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !251, file: !6, line: 187, baseType: !53, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!261 = !{}
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 136, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 17)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "basic_len", scope: !90, file: !78, line: 190, type: !267, isLocal: true, isDefinition: true)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !78, line: 196, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 56, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 7)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !78, line: 207, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 136, elements: !263)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !78, line: 87, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 352, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 44)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !78, line: 87, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 144, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 18)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !78, line: 87, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 368, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 46)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !78, line: 96, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 232, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 29)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !78, line: 102, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 328, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 41)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "cache_t", file: !56, line: 40, flags: DIFlagFwdDecl)
!303 = !{i32 7, !"Dwarf Version", i32 5}
!304 = !{i32 2, !"Debug Info Version", i32 3}
!305 = !{i32 1, !"wchar_size", i32 4}
!306 = !{i32 8, !"PIC Level", i32 2}
!307 = !{i32 7, !"PIE Level", i32 2}
!308 = !{i32 7, !"uwtable", i32 2}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 16.0.0"}
!311 = distinct !DISubprogram(name: "lwan_http_authorize_init", scope: !78, file: !78, line: 127, type: !312, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!312 = !DISubroutineType(types: !313)
!313 = !{!93}
!314 = !DILocation(line: 129, column: 28, scope: !311)
!315 = !DILocation(line: 129, column: 26, scope: !311)
!316 = !DILocation(line: 132, column: 14, scope: !311)
!317 = !DILocation(line: 132, column: 13, scope: !311)
!318 = !DILocation(line: 132, column: 12, scope: !311)
!319 = !DILocation(line: 132, column: 5, scope: !311)
!320 = distinct !DISubprogram(name: "create_realm_file", scope: !78, file: !78, line: 47, type: !321, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!321 = !DISubroutineType(types: !322)
!322 = !{!54, !239, !53}
!323 = !DILocalVariable(name: "key", arg: 1, scope: !320, file: !78, line: 48, type: !239)
!324 = !DILocation(line: 48, column: 23, scope: !320)
!325 = !DILocalVariable(name: "context", arg: 2, scope: !320, file: !78, line: 49, type: !53)
!326 = !DILocation(line: 49, column: 17, scope: !320)
!327 = !DILocalVariable(name: "rpf", scope: !320, file: !78, line: 51, type: !76)
!328 = !DILocation(line: 51, column: 35, scope: !320)
!329 = !DILocation(line: 51, column: 41, scope: !320)
!330 = !DILocalVariable(name: "f", scope: !320, file: !78, line: 52, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_t", file: !47, line: 32, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_t_", file: !47, line: 41, size: 192, elements: !333)
!333 = !{!334, !387, !388}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !332, file: !47, line: 42, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !337, line: 7, baseType: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !339, line: 49, size: 1728, elements: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !356, !358, !359, !360, !361, !362, !364, !368, !371, !373, !376, !379, !380, !381, !382, !383}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !338, file: !339, line: 51, baseType: !7, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !338, file: !339, line: 54, baseType: !66, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !338, file: !339, line: 55, baseType: !66, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !338, file: !339, line: 56, baseType: !66, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !338, file: !339, line: 57, baseType: !66, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !338, file: !339, line: 58, baseType: !66, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !338, file: !339, line: 59, baseType: !66, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !338, file: !339, line: 60, baseType: !66, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !338, file: !339, line: 61, baseType: !66, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !338, file: !339, line: 64, baseType: !66, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !338, file: !339, line: 65, baseType: !66, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !338, file: !339, line: 66, baseType: !66, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !338, file: !339, line: 68, baseType: !354, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !339, line: 36, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !338, file: !339, line: 70, baseType: !357, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !338, file: !339, line: 72, baseType: !7, size: 32, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !338, file: !339, line: 73, baseType: !7, size: 32, offset: 928)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !338, file: !339, line: 74, baseType: !222, size: 64, offset: 960)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !338, file: !339, line: 77, baseType: !168, size: 16, offset: 1024)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !338, file: !339, line: 78, baseType: !363, size: 8, offset: 1040)
!363 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !338, file: !339, line: 79, baseType: !365, size: 8, offset: 1048)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 1)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !338, file: !339, line: 81, baseType: !369, size: 64, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !339, line: 43, baseType: null)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !338, file: !339, line: 89, baseType: !372, size: 64, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !75)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !338, file: !339, line: 91, baseType: !374, size: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !339, line: 37, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !338, file: !339, line: 92, baseType: !377, size: 64, offset: 1280)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !339, line: 38, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !338, file: !339, line: 93, baseType: !357, size: 64, offset: 1344)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !338, file: !339, line: 94, baseType: !53, size: 64, offset: 1408)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !338, file: !339, line: 95, baseType: !107, size: 64, offset: 1472)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !338, file: !339, line: 96, baseType: !7, size: 32, offset: 1536)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !338, file: !339, line: 98, baseType: !384, size: 160, offset: 1568)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 20)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !332, file: !47, line: 43, baseType: !7, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "error_message", scope: !332, file: !47, line: 44, baseType: !66, size: 64, offset: 128)
!389 = !DILocation(line: 52, column: 14, scope: !320)
!390 = !DILocalVariable(name: "l", scope: !320, file: !78, line: 53, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_t", file: !47, line: 33, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_line_t_", file: !47, line: 47, size: 8384, elements: !393)
!393 = !{!394, !407, !409}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !47, line: 48, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !47, line: 48, size: 128, elements: !396)
!396 = !{!397, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !395, file: !47, line: 51, baseType: !398, size: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !47, line: 49, size: 128, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !47, line: 50, baseType: !66, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !398, file: !47, line: 50, baseType: !66, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !395, file: !47, line: 54, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !47, line: 52, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !403, file: !47, line: 53, baseType: !66, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !403, file: !47, line: 53, baseType: !66, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !47, line: 56, baseType: !408, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_type_t", file: !47, line: 39, baseType: !46)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !392, file: !47, line: 57, baseType: !410, size: 8192, offset: 160)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8192, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 1024)
!413 = !DILocation(line: 53, column: 19, scope: !320)
!414 = !DILocation(line: 55, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !320, file: !78, line: 55, column: 9)
!416 = !DILocation(line: 55, column: 9, scope: !320)
!417 = !DILocation(line: 56, column: 9, scope: !415)
!418 = !DILocation(line: 58, column: 20, scope: !320)
!419 = !DILocation(line: 58, column: 5, scope: !320)
!420 = !DILocation(line: 58, column: 10, scope: !320)
!421 = !DILocation(line: 58, column: 18, scope: !320)
!422 = !DILocation(line: 59, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !320, file: !78, line: 59, column: 9)
!424 = !DILocation(line: 59, column: 9, scope: !320)
!425 = !DILocation(line: 60, column: 9, scope: !423)
!426 = !DILocation(line: 62, column: 26, scope: !427)
!427 = distinct !DILexicalBlock(scope: !320, file: !78, line: 62, column: 9)
!428 = !DILocation(line: 62, column: 10, scope: !427)
!429 = !DILocation(line: 62, column: 9, scope: !320)
!430 = !DILocation(line: 63, column: 9, scope: !427)
!431 = !DILocation(line: 65, column: 5, scope: !320)
!432 = !DILocation(line: 65, column: 12, scope: !320)
!433 = !DILocation(line: 67, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !320, file: !78, line: 65, column: 38)
!435 = !DILocation(line: 67, column: 9, scope: !434)
!436 = !DILocalVariable(name: "username", scope: !437, file: !78, line: 69, type: !66)
!437 = distinct !DILexicalBlock(scope: !438, file: !78, line: 68, column: 37)
!438 = distinct !DILexicalBlock(scope: !434, file: !78, line: 67, column: 25)
!439 = !DILocation(line: 69, column: 19, scope: !437)
!440 = !DILocation(line: 69, column: 39, scope: !437)
!441 = !DILocation(line: 69, column: 44, scope: !437)
!442 = !DILocation(line: 69, column: 30, scope: !437)
!443 = !DILocation(line: 70, column: 18, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !78, line: 70, column: 17)
!445 = !DILocation(line: 70, column: 17, scope: !437)
!446 = !DILocation(line: 71, column: 17, scope: !444)
!447 = !DILocalVariable(name: "password", scope: !437, file: !78, line: 73, type: !66)
!448 = !DILocation(line: 73, column: 19, scope: !437)
!449 = !DILocation(line: 73, column: 39, scope: !437)
!450 = !DILocation(line: 73, column: 44, scope: !437)
!451 = !DILocation(line: 73, column: 30, scope: !437)
!452 = !DILocation(line: 74, column: 18, scope: !453)
!453 = distinct !DILexicalBlock(scope: !437, file: !78, line: 74, column: 17)
!454 = !DILocation(line: 74, column: 17, scope: !437)
!455 = !DILocation(line: 75, column: 22, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !78, line: 74, column: 28)
!457 = !DILocation(line: 75, column: 17, scope: !456)
!458 = !DILocation(line: 76, column: 17, scope: !456)
!459 = !DILocalVariable(name: "err", scope: !437, file: !78, line: 79, type: !7)
!460 = !DILocation(line: 79, column: 17, scope: !437)
!461 = !DILocation(line: 79, column: 39, scope: !437)
!462 = !DILocation(line: 79, column: 44, scope: !437)
!463 = !DILocation(line: 79, column: 53, scope: !437)
!464 = !DILocation(line: 79, column: 63, scope: !437)
!465 = !DILocation(line: 79, column: 23, scope: !437)
!466 = !DILocation(line: 80, column: 17, scope: !467)
!467 = distinct !DILexicalBlock(scope: !437, file: !78, line: 80, column: 17)
!468 = !DILocation(line: 80, column: 17, scope: !437)
!469 = !DILocation(line: 81, column: 17, scope: !467)
!470 = distinct !{!470, !431, !471, !472}
!471 = !DILocation(line: 99, column: 5, scope: !320)
!472 = !{!"llvm.loop.mustprogress"}
!473 = !DILocation(line: 83, column: 18, scope: !437)
!474 = !DILocation(line: 83, column: 13, scope: !437)
!475 = !DILocation(line: 84, column: 18, scope: !437)
!476 = !DILocation(line: 84, column: 13, scope: !437)
!477 = !DILocation(line: 86, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !437, file: !78, line: 86, column: 17)
!479 = !DILocation(line: 86, column: 21, scope: !478)
!480 = !DILocation(line: 86, column: 17, scope: !437)
!481 = !DILocation(line: 87, column: 17, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !78, line: 86, column: 33)
!483 = !DILocation(line: 90, column: 17, scope: !482)
!484 = !DILocation(line: 93, column: 13, scope: !437)
!485 = !DILocation(line: 96, column: 13, scope: !438)
!486 = !DILocation(line: 97, column: 13, scope: !438)
!487 = !DILocation(line: 101, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !320, file: !78, line: 101, column: 9)
!489 = !DILocation(line: 101, column: 9, scope: !488)
!490 = !DILocation(line: 101, column: 9, scope: !320)
!491 = !DILocation(line: 102, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !78, line: 101, column: 26)
!493 = !DILocation(line: 104, column: 9, scope: !492)
!494 = !DILocation(line: 107, column: 5, scope: !320)
!495 = !DILocation(line: 108, column: 36, scope: !320)
!496 = !DILocation(line: 108, column: 5, scope: !320)
!497 = !DILabel(scope: !320, name: "error", file: !78, line: 110)
!498 = !DILocation(line: 110, column: 1, scope: !320)
!499 = !DILocation(line: 111, column: 5, scope: !320)
!500 = !DILabel(scope: !320, name: "error_no_close", file: !78, line: 112)
!501 = !DILocation(line: 112, column: 1, scope: !320)
!502 = !DILocation(line: 113, column: 15, scope: !320)
!503 = !DILocation(line: 113, column: 20, scope: !320)
!504 = !DILocation(line: 113, column: 5, scope: !320)
!505 = !DILocation(line: 114, column: 10, scope: !320)
!506 = !DILocation(line: 114, column: 5, scope: !320)
!507 = !DILocation(line: 115, column: 5, scope: !320)
!508 = !DILocation(line: 116, column: 1, scope: !320)
!509 = distinct !DISubprogram(name: "destroy_realm_file", scope: !78, file: !78, line: 118, type: !510, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !54, !53}
!512 = !DILocalVariable(name: "entry", arg: 1, scope: !509, file: !78, line: 118, type: !54)
!513 = !DILocation(line: 118, column: 54, scope: !509)
!514 = !DILocalVariable(name: "context", arg: 2, scope: !509, file: !78, line: 119, type: !53)
!515 = !DILocation(line: 119, column: 39, scope: !509)
!516 = !DILocalVariable(name: "rpf", scope: !509, file: !78, line: 121, type: !76)
!517 = !DILocation(line: 121, column: 35, scope: !509)
!518 = !DILocation(line: 121, column: 73, scope: !509)
!519 = !DILocation(line: 122, column: 15, scope: !509)
!520 = !DILocation(line: 122, column: 20, scope: !509)
!521 = !DILocation(line: 122, column: 5, scope: !509)
!522 = !DILocation(line: 123, column: 10, scope: !509)
!523 = !DILocation(line: 123, column: 5, scope: !509)
!524 = !DILocation(line: 124, column: 1, scope: !509)
!525 = distinct !DISubprogram(name: "lwan_http_authorize_shutdown", scope: !78, file: !78, line: 136, type: !526, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !261)
!526 = !DISubroutineType(types: !527)
!527 = !{null}
!528 = !DILocation(line: 138, column: 19, scope: !525)
!529 = !DILocation(line: 138, column: 5, scope: !525)
!530 = !DILocation(line: 139, column: 1, scope: !525)
!531 = !DILocalVariable(name: "request", arg: 1, scope: !90, file: !78, line: 184, type: !94)
!532 = !DILocation(line: 184, column: 37, scope: !90)
!533 = !DILocalVariable(name: "authorization", arg: 2, scope: !90, file: !78, line: 185, type: !260)
!534 = !DILocation(line: 185, column: 35, scope: !90)
!535 = !DILocalVariable(name: "realm", arg: 3, scope: !90, file: !78, line: 186, type: !239)
!536 = !DILocation(line: 186, column: 33, scope: !90)
!537 = !DILocalVariable(name: "password_file", arg: 4, scope: !90, file: !78, line: 187, type: !239)
!538 = !DILocation(line: 187, column: 33, scope: !90)
!539 = !DILocalVariable(name: "headers", scope: !90, file: !78, line: 191, type: !204)
!540 = !DILocation(line: 191, column: 23, scope: !90)
!541 = !DILocation(line: 193, column: 10, scope: !542)
!542 = distinct !DILexicalBlock(scope: !90, file: !78, line: 193, column: 9)
!543 = !DILocation(line: 193, column: 25, scope: !542)
!544 = !DILocation(line: 193, column: 9, scope: !90)
!545 = !DILocation(line: 194, column: 9, scope: !542)
!546 = !DILocation(line: 196, column: 9, scope: !547)
!547 = distinct !DILexicalBlock(scope: !90, file: !78, line: 196, column: 9)
!548 = !DILocation(line: 196, column: 9, scope: !90)
!549 = !DILocation(line: 197, column: 9, scope: !547)
!550 = !DILocation(line: 199, column: 5, scope: !90)
!551 = !DILocation(line: 199, column: 20, scope: !90)
!552 = !DILocation(line: 199, column: 26, scope: !90)
!553 = !DILocation(line: 200, column: 5, scope: !90)
!554 = !DILocation(line: 200, column: 20, scope: !90)
!555 = !DILocation(line: 200, column: 24, scope: !90)
!556 = !DILocation(line: 202, column: 19, scope: !557)
!557 = distinct !DILexicalBlock(scope: !90, file: !78, line: 202, column: 9)
!558 = !DILocation(line: 202, column: 28, scope: !557)
!559 = !DILocation(line: 202, column: 34, scope: !557)
!560 = !DILocation(line: 202, column: 40, scope: !557)
!561 = !DILocation(line: 202, column: 55, scope: !557)
!562 = !DILocation(line: 202, column: 9, scope: !557)
!563 = !DILocation(line: 202, column: 9, scope: !90)
!564 = !DILocation(line: 203, column: 9, scope: !557)
!565 = !DILocation(line: 202, column: 68, scope: !557)
!566 = !DILabel(scope: !90, name: "unauthorized", file: !78, line: 205)
!567 = !DILocation(line: 205, column: 1, scope: !90)
!568 = !DILocation(line: 206, column: 27, scope: !90)
!569 = !DILocation(line: 206, column: 36, scope: !90)
!570 = !DILocation(line: 206, column: 42, scope: !90)
!571 = !DILocation(line: 206, column: 15, scope: !90)
!572 = !DILocation(line: 206, column: 13, scope: !90)
!573 = !DILocation(line: 207, column: 5, scope: !90)
!574 = !DILocation(line: 207, column: 16, scope: !90)
!575 = !DILocation(line: 207, column: 20, scope: !90)
!576 = !DILocation(line: 208, column: 36, scope: !90)
!577 = !DILocation(line: 208, column: 45, scope: !90)
!578 = !DILocation(line: 208, column: 51, scope: !90)
!579 = !DILocation(line: 209, column: 36, scope: !90)
!580 = !DILocation(line: 208, column: 24, scope: !90)
!581 = !DILocation(line: 208, column: 5, scope: !90)
!582 = !DILocation(line: 208, column: 16, scope: !90)
!583 = !DILocation(line: 208, column: 22, scope: !90)
!584 = !DILocation(line: 210, column: 22, scope: !90)
!585 = !DILocation(line: 210, column: 33, scope: !90)
!586 = !DILocation(line: 210, column: 39, scope: !90)
!587 = !DILocation(line: 210, column: 5, scope: !90)
!588 = !DILocation(line: 210, column: 16, scope: !90)
!589 = !DILocation(line: 210, column: 20, scope: !90)
!590 = !DILocation(line: 212, column: 33, scope: !90)
!591 = !DILocation(line: 212, column: 5, scope: !90)
!592 = !DILocation(line: 212, column: 14, scope: !90)
!593 = !DILocation(line: 212, column: 23, scope: !90)
!594 = !DILocation(line: 212, column: 31, scope: !90)
!595 = !DILocation(line: 213, column: 5, scope: !90)
!596 = !DILocation(line: 214, column: 1, scope: !90)
!597 = distinct !DISubprogram(name: "authorize", scope: !78, file: !78, line: 142, type: !598, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!598 = !DISubroutineType(types: !599)
!599 = !{!93, !120, !260, !239}
!600 = !DILocalVariable(name: "coro", arg: 1, scope: !597, file: !78, line: 142, type: !120)
!601 = !DILocation(line: 142, column: 19, scope: !597)
!602 = !DILocalVariable(name: "authorization", arg: 2, scope: !597, file: !78, line: 143, type: !260)
!603 = !DILocation(line: 143, column: 26, scope: !597)
!604 = !DILocalVariable(name: "password_file", arg: 3, scope: !597, file: !78, line: 144, type: !239)
!605 = !DILocation(line: 144, column: 24, scope: !597)
!606 = !DILocalVariable(name: "rpf", scope: !597, file: !78, line: 146, type: !76)
!607 = !DILocation(line: 146, column: 35, scope: !597)
!608 = !DILocalVariable(name: "decoded", scope: !597, file: !78, line: 147, type: !85)
!609 = !DILocation(line: 147, column: 20, scope: !597)
!610 = !DILocalVariable(name: "colon", scope: !597, file: !78, line: 148, type: !66)
!611 = !DILocation(line: 148, column: 11, scope: !597)
!612 = !DILocalVariable(name: "password", scope: !597, file: !78, line: 149, type: !66)
!613 = !DILocation(line: 149, column: 11, scope: !597)
!614 = !DILocalVariable(name: "looked_password", scope: !597, file: !78, line: 150, type: !66)
!615 = !DILocation(line: 150, column: 11, scope: !597)
!616 = !DILocalVariable(name: "decoded_len", scope: !597, file: !78, line: 151, type: !107)
!617 = !DILocation(line: 151, column: 12, scope: !597)
!618 = !DILocalVariable(name: "password_ok", scope: !597, file: !78, line: 152, type: !93)
!619 = !DILocation(line: 152, column: 10, scope: !597)
!620 = !DILocation(line: 155, column: 13, scope: !597)
!621 = !DILocation(line: 155, column: 35, scope: !597)
!622 = !DILocation(line: 155, column: 41, scope: !597)
!623 = !DILocation(line: 154, column: 43, scope: !597)
!624 = !DILocation(line: 154, column: 9, scope: !597)
!625 = !DILocation(line: 156, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !597, file: !78, line: 156, column: 9)
!627 = !DILocation(line: 156, column: 9, scope: !597)
!628 = !DILocation(line: 157, column: 9, scope: !626)
!629 = !DILocation(line: 159, column: 46, scope: !597)
!630 = !DILocation(line: 159, column: 61, scope: !597)
!631 = !DILocation(line: 160, column: 29, scope: !597)
!632 = !DILocation(line: 160, column: 44, scope: !597)
!633 = !DILocation(line: 159, column: 15, scope: !597)
!634 = !DILocation(line: 159, column: 13, scope: !597)
!635 = !DILocation(line: 161, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !597, file: !78, line: 161, column: 9)
!637 = !DILocation(line: 161, column: 9, scope: !597)
!638 = !DILocation(line: 162, column: 9, scope: !636)
!639 = !DILocation(line: 164, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !597, file: !78, line: 164, column: 9)
!641 = !DILocation(line: 164, column: 9, scope: !597)
!642 = !DILocation(line: 165, column: 9, scope: !640)
!643 = !DILocation(line: 167, column: 20, scope: !597)
!644 = !DILocation(line: 167, column: 34, scope: !597)
!645 = !DILocation(line: 167, column: 13, scope: !597)
!646 = !DILocation(line: 167, column: 11, scope: !597)
!647 = !DILocation(line: 168, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !597, file: !78, line: 168, column: 9)
!649 = !DILocation(line: 168, column: 9, scope: !597)
!650 = !DILocation(line: 169, column: 9, scope: !648)
!651 = !DILocation(line: 171, column: 6, scope: !597)
!652 = !DILocation(line: 171, column: 12, scope: !597)
!653 = !DILocation(line: 172, column: 16, scope: !597)
!654 = !DILocation(line: 172, column: 22, scope: !597)
!655 = !DILocation(line: 172, column: 14, scope: !597)
!656 = !DILocation(line: 174, column: 33, scope: !597)
!657 = !DILocation(line: 174, column: 38, scope: !597)
!658 = !DILocation(line: 174, column: 47, scope: !597)
!659 = !DILocation(line: 174, column: 23, scope: !597)
!660 = !DILocation(line: 174, column: 21, scope: !597)
!661 = !DILocation(line: 175, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !597, file: !78, line: 175, column: 9)
!663 = !DILocation(line: 175, column: 9, scope: !597)
!664 = !DILocation(line: 176, column: 31, scope: !662)
!665 = !DILocation(line: 176, column: 41, scope: !662)
!666 = !DILocation(line: 176, column: 24, scope: !662)
!667 = !DILocation(line: 176, column: 23, scope: !662)
!668 = !DILocation(line: 176, column: 21, scope: !662)
!669 = !DILocation(line: 176, column: 9, scope: !662)
!670 = !DILabel(scope: !597, name: "out", file: !78, line: 178)
!671 = !DILocation(line: 178, column: 1, scope: !597)
!672 = !DILocation(line: 179, column: 10, scope: !597)
!673 = !DILocation(line: 179, column: 5, scope: !597)
!674 = !DILocation(line: 180, column: 12, scope: !597)
!675 = !DILocation(line: 180, column: 5, scope: !597)
!676 = !DILocation(line: 181, column: 1, scope: !597)
!677 = distinct !DISubprogram(name: "fourty_two_and_free", scope: !78, file: !78, line: 37, type: !159, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !261)
!678 = !DILocalVariable(name: "str", arg: 1, scope: !677, file: !78, line: 37, type: !53)
!679 = !DILocation(line: 37, column: 39, scope: !677)
!680 = !DILocation(line: 39, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !78, line: 39, column: 9)
!682 = !DILocation(line: 39, column: 9, scope: !677)
!683 = !DILocalVariable(name: "s", scope: !684, file: !78, line: 40, type: !66)
!684 = distinct !DILexicalBlock(scope: !681, file: !78, line: 39, column: 22)
!685 = !DILocation(line: 40, column: 15, scope: !684)
!686 = !DILocation(line: 40, column: 19, scope: !684)
!687 = !DILocation(line: 41, column: 9, scope: !684)
!688 = !DILocation(line: 41, column: 17, scope: !684)
!689 = !DILocation(line: 41, column: 16, scope: !684)
!690 = !DILocation(line: 42, column: 15, scope: !684)
!691 = !DILocation(line: 42, column: 18, scope: !684)
!692 = distinct !{!692, !687, !693, !472}
!693 = !DILocation(line: 42, column: 20, scope: !684)
!694 = !DILocation(line: 43, column: 14, scope: !684)
!695 = !DILocation(line: 43, column: 9, scope: !684)
!696 = !DILocation(line: 44, column: 5, scope: !684)
!697 = !DILocation(line: 45, column: 1, scope: !677)
