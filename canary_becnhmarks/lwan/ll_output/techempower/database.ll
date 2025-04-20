; ModuleID = '/home/raj/lwan/techempower/database.c'
source_filename = "/home/raj/lwan/techempower/database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_mysql = type { %struct.db, ptr }
%struct.db = type { ptr, ptr }
%struct.db_stmt_mysql = type { %struct.db_stmt, ptr, ptr, ptr, i8 }
%struct.db_stmt = type { ptr, ptr, ptr }
%struct.db_sqlite = type { %struct.db, ptr }
%struct.db_stmt_sqlite = type { %struct.db_stmt, ptr }
%struct.db_row = type { %union.anon, i8, i64 }
%union.anon = type { ptr }
%struct.MYSQL_BIND = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i8, i8, i8, i8, ptr }

@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_connect_mysql(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !431 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !435, metadata !DIExpression()), !dbg !436
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !437, metadata !DIExpression()), !dbg !438
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !439, metadata !DIExpression()), !dbg !440
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata ptr %10, metadata !443, metadata !DIExpression()), !dbg !444
  %11 = call noalias ptr @malloc(i64 noundef 24) #6, !dbg !445
  store ptr %11, ptr %10, align 8, !dbg !444
  %12 = load ptr, ptr %10, align 8, !dbg !446
  %13 = icmp ne ptr %12, null, !dbg !446
  br i1 %13, label %15, label %14, !dbg !448

14:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !449
  br label %56, !dbg !449

15:                                               ; preds = %4
  %16 = call ptr @mysql_init(ptr noundef null), !dbg !450
  %17 = load ptr, ptr %10, align 8, !dbg !451
  %18 = getelementptr inbounds %struct.db_mysql, ptr %17, i32 0, i32 1, !dbg !452
  store ptr %16, ptr %18, align 8, !dbg !453
  %19 = load ptr, ptr %10, align 8, !dbg !454
  %20 = getelementptr inbounds %struct.db_mysql, ptr %19, i32 0, i32 1, !dbg !456
  %21 = load ptr, ptr %20, align 8, !dbg !456
  %22 = icmp ne ptr %21, null, !dbg !454
  br i1 %22, label %25, label %23, !dbg !457

23:                                               ; preds = %15
  %24 = load ptr, ptr %10, align 8, !dbg !458
  call void @free(ptr noundef %24) #7, !dbg !460
  store ptr null, ptr %5, align 8, !dbg !461
  br label %56, !dbg !461

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !dbg !462
  %27 = getelementptr inbounds %struct.db_mysql, ptr %26, i32 0, i32 1, !dbg !464
  %28 = load ptr, ptr %27, align 8, !dbg !464
  %29 = load ptr, ptr %6, align 8, !dbg !465
  %30 = load ptr, ptr %7, align 8, !dbg !466
  %31 = load ptr, ptr %8, align 8, !dbg !467
  %32 = load ptr, ptr %9, align 8, !dbg !468
  %33 = call ptr @mysql_real_connect(ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef 0, ptr noundef null, i64 noundef 0), !dbg !469
  %34 = icmp ne ptr %33, null, !dbg !469
  br i1 %34, label %36, label %35, !dbg !470

35:                                               ; preds = %25
  br label %51, !dbg !471

36:                                               ; preds = %25
  %37 = load ptr, ptr %10, align 8, !dbg !472
  %38 = getelementptr inbounds %struct.db_mysql, ptr %37, i32 0, i32 1, !dbg !474
  %39 = load ptr, ptr %38, align 8, !dbg !474
  %40 = call i32 @mysql_set_character_set(ptr noundef %39, ptr noundef @.str), !dbg !475
  %41 = icmp ne i32 %40, 0, !dbg !475
  br i1 %41, label %42, label %43, !dbg !476

42:                                               ; preds = %36
  br label %51, !dbg !477

43:                                               ; preds = %36
  %44 = load ptr, ptr %10, align 8, !dbg !478
  %45 = getelementptr inbounds %struct.db_mysql, ptr %44, i32 0, i32 0, !dbg !479
  %46 = getelementptr inbounds %struct.db, ptr %45, i32 0, i32 0, !dbg !480
  store ptr @db_disconnect_mysql, ptr %46, align 8, !dbg !481
  %47 = load ptr, ptr %10, align 8, !dbg !482
  %48 = getelementptr inbounds %struct.db_mysql, ptr %47, i32 0, i32 0, !dbg !483
  %49 = getelementptr inbounds %struct.db, ptr %48, i32 0, i32 1, !dbg !484
  store ptr @db_prepare_mysql, ptr %49, align 8, !dbg !485
  %50 = load ptr, ptr %10, align 8, !dbg !486
  store ptr %50, ptr %5, align 8, !dbg !487
  br label %56, !dbg !487

51:                                               ; preds = %42, %35
  call void @llvm.dbg.label(metadata !488), !dbg !489
  %52 = load ptr, ptr %10, align 8, !dbg !490
  %53 = getelementptr inbounds %struct.db_mysql, ptr %52, i32 0, i32 1, !dbg !491
  %54 = load ptr, ptr %53, align 8, !dbg !491
  call void @mysql_close(ptr noundef %54), !dbg !492
  %55 = load ptr, ptr %10, align 8, !dbg !493
  call void @free(ptr noundef %55) #7, !dbg !494
  store ptr null, ptr %5, align 8, !dbg !495
  br label %56, !dbg !495

56:                                               ; preds = %51, %43, %23, %14
  %57 = load ptr, ptr %5, align 8, !dbg !496
  ret ptr %57, !dbg !496
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare ptr @mysql_init(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare ptr @mysql_real_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #3

declare i32 @mysql_set_character_set(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_disconnect_mysql(ptr noundef %0) #0 !dbg !497 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata ptr %3, metadata !500, metadata !DIExpression()), !dbg !501
  %4 = load ptr, ptr %2, align 8, !dbg !502
  store ptr %4, ptr %3, align 8, !dbg !501
  %5 = load ptr, ptr %3, align 8, !dbg !503
  %6 = getelementptr inbounds %struct.db_mysql, ptr %5, i32 0, i32 1, !dbg !504
  %7 = load ptr, ptr %6, align 8, !dbg !504
  call void @mysql_close(ptr noundef %7), !dbg !505
  %8 = load ptr, ptr %2, align 8, !dbg !506
  call void @free(ptr noundef %8) #7, !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_prepare_mysql(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !509 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !510, metadata !DIExpression()), !dbg !511
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata ptr %8, metadata !516, metadata !DIExpression()), !dbg !517
  %10 = load ptr, ptr %5, align 8, !dbg !518
  store ptr %10, ptr %8, align 8, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %9, metadata !519, metadata !DIExpression()), !dbg !520
  %11 = call noalias ptr @malloc(i64 noundef 56) #6, !dbg !521
  store ptr %11, ptr %9, align 8, !dbg !520
  %12 = load ptr, ptr %9, align 8, !dbg !522
  %13 = icmp ne ptr %12, null, !dbg !522
  br i1 %13, label %15, label %14, !dbg !524

14:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !525
  br label %59, !dbg !525

15:                                               ; preds = %3
  %16 = load ptr, ptr %8, align 8, !dbg !526
  %17 = getelementptr inbounds %struct.db_mysql, ptr %16, i32 0, i32 1, !dbg !527
  %18 = load ptr, ptr %17, align 8, !dbg !527
  %19 = call ptr @mysql_stmt_init(ptr noundef %18), !dbg !528
  %20 = load ptr, ptr %9, align 8, !dbg !529
  %21 = getelementptr inbounds %struct.db_stmt_mysql, ptr %20, i32 0, i32 1, !dbg !530
  store ptr %19, ptr %21, align 8, !dbg !531
  %22 = load ptr, ptr %9, align 8, !dbg !532
  %23 = getelementptr inbounds %struct.db_stmt_mysql, ptr %22, i32 0, i32 1, !dbg !534
  %24 = load ptr, ptr %23, align 8, !dbg !534
  %25 = icmp ne ptr %24, null, !dbg !532
  br i1 %25, label %28, label %26, !dbg !535

26:                                               ; preds = %15
  %27 = load ptr, ptr %9, align 8, !dbg !536
  call void @free(ptr noundef %27) #7, !dbg !538
  store ptr null, ptr %4, align 8, !dbg !539
  br label %59, !dbg !539

28:                                               ; preds = %15
  %29 = load ptr, ptr %9, align 8, !dbg !540
  %30 = getelementptr inbounds %struct.db_stmt_mysql, ptr %29, i32 0, i32 1, !dbg !542
  %31 = load ptr, ptr %30, align 8, !dbg !542
  %32 = load ptr, ptr %6, align 8, !dbg !543
  %33 = load i64, ptr %7, align 8, !dbg !544
  %34 = call i32 @mysql_stmt_prepare(ptr noundef %31, ptr noundef %32, i64 noundef %33), !dbg !545
  %35 = icmp ne i32 %34, 0, !dbg !545
  br i1 %35, label %36, label %42, !dbg !546

36:                                               ; preds = %28
  %37 = load ptr, ptr %9, align 8, !dbg !547
  %38 = getelementptr inbounds %struct.db_stmt_mysql, ptr %37, i32 0, i32 1, !dbg !549
  %39 = load ptr, ptr %38, align 8, !dbg !549
  %40 = call zeroext i1 @mysql_stmt_close(ptr noundef %39), !dbg !550
  %41 = load ptr, ptr %9, align 8, !dbg !551
  call void @free(ptr noundef %41) #7, !dbg !552
  store ptr null, ptr %4, align 8, !dbg !553
  br label %59, !dbg !553

42:                                               ; preds = %28
  %43 = load ptr, ptr %9, align 8, !dbg !554
  %44 = getelementptr inbounds %struct.db_stmt_mysql, ptr %43, i32 0, i32 0, !dbg !555
  %45 = getelementptr inbounds %struct.db_stmt, ptr %44, i32 0, i32 0, !dbg !556
  store ptr @db_stmt_bind_mysql, ptr %45, align 8, !dbg !557
  %46 = load ptr, ptr %9, align 8, !dbg !558
  %47 = getelementptr inbounds %struct.db_stmt_mysql, ptr %46, i32 0, i32 0, !dbg !559
  %48 = getelementptr inbounds %struct.db_stmt, ptr %47, i32 0, i32 1, !dbg !560
  store ptr @db_stmt_step_mysql, ptr %48, align 8, !dbg !561
  %49 = load ptr, ptr %9, align 8, !dbg !562
  %50 = getelementptr inbounds %struct.db_stmt_mysql, ptr %49, i32 0, i32 0, !dbg !563
  %51 = getelementptr inbounds %struct.db_stmt, ptr %50, i32 0, i32 2, !dbg !564
  store ptr @db_stmt_finalize_mysql, ptr %51, align 8, !dbg !565
  %52 = load ptr, ptr %9, align 8, !dbg !566
  %53 = getelementptr inbounds %struct.db_stmt_mysql, ptr %52, i32 0, i32 3, !dbg !567
  store ptr null, ptr %53, align 8, !dbg !568
  %54 = load ptr, ptr %9, align 8, !dbg !569
  %55 = getelementptr inbounds %struct.db_stmt_mysql, ptr %54, i32 0, i32 2, !dbg !570
  store ptr null, ptr %55, align 8, !dbg !571
  %56 = load ptr, ptr %9, align 8, !dbg !572
  %57 = getelementptr inbounds %struct.db_stmt_mysql, ptr %56, i32 0, i32 4, !dbg !573
  store i8 1, ptr %57, align 8, !dbg !574
  %58 = load ptr, ptr %9, align 8, !dbg !575
  store ptr %58, ptr %4, align 8, !dbg !576
  br label %59, !dbg !576

59:                                               ; preds = %42, %36, %26, %14
  %60 = load ptr, ptr %4, align 8, !dbg !577
  ret ptr %60, !dbg !577
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @mysql_close(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_connect_sqlite(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #0 !dbg !578 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !582, metadata !DIExpression()), !dbg !583
  %12 = zext i1 %1 to i8
  store i8 %12, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !584, metadata !DIExpression()), !dbg !585
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata ptr %8, metadata !588, metadata !DIExpression()), !dbg !589
  %13 = call noalias ptr @malloc(i64 noundef 24) #6, !dbg !590
  store ptr %13, ptr %8, align 8, !dbg !589
  %14 = load ptr, ptr %8, align 8, !dbg !591
  %15 = icmp ne ptr %14, null, !dbg !591
  br i1 %15, label %17, label %16, !dbg !593

16:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !594
  br label %62, !dbg !594

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !595, metadata !DIExpression()), !dbg !596
  %18 = load i8, ptr %6, align 1, !dbg !597
  %19 = trunc i8 %18 to i1, !dbg !597
  %20 = zext i1 %19 to i64, !dbg !597
  %21 = select i1 %19, i32 1, i32 0, !dbg !597
  store i32 %21, ptr %9, align 4, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %10, metadata !598, metadata !DIExpression()), !dbg !599
  %22 = load ptr, ptr %5, align 8, !dbg !600
  %23 = load ptr, ptr %8, align 8, !dbg !601
  %24 = getelementptr inbounds %struct.db_sqlite, ptr %23, i32 0, i32 1, !dbg !602
  %25 = load i32, ptr %9, align 4, !dbg !603
  %26 = call i32 @sqlite3_open_v2(ptr noundef %22, ptr noundef %24, i32 noundef %25, ptr noundef null), !dbg !604
  store i32 %26, ptr %10, align 4, !dbg !599
  %27 = load i32, ptr %10, align 4, !dbg !605
  %28 = icmp ne i32 %27, 0, !dbg !607
  br i1 %28, label %29, label %31, !dbg !608

29:                                               ; preds = %17
  %30 = load ptr, ptr %8, align 8, !dbg !609
  call void @free(ptr noundef %30) #7, !dbg !611
  store ptr null, ptr %4, align 8, !dbg !612
  br label %62, !dbg !612

31:                                               ; preds = %17
  %32 = load ptr, ptr %7, align 8, !dbg !613
  %33 = icmp ne ptr %32, null, !dbg !613
  br i1 %33, label %34, label %54, !dbg !615

34:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %11, metadata !616, metadata !DIExpression()), !dbg !619
  store i64 0, ptr %11, align 8, !dbg !619
  br label %35, !dbg !620

35:                                               ; preds = %50, %34
  %36 = load ptr, ptr %7, align 8, !dbg !621
  %37 = load i64, ptr %11, align 8, !dbg !623
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37, !dbg !621
  %39 = load ptr, ptr %38, align 8, !dbg !621
  %40 = icmp ne ptr %39, null, !dbg !624
  br i1 %40, label %41, label %53, !dbg !624

41:                                               ; preds = %35
  %42 = load ptr, ptr %8, align 8, !dbg !625
  %43 = getelementptr inbounds %struct.db_sqlite, ptr %42, i32 0, i32 1, !dbg !626
  %44 = load ptr, ptr %43, align 8, !dbg !626
  %45 = load ptr, ptr %7, align 8, !dbg !627
  %46 = load i64, ptr %11, align 8, !dbg !628
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46, !dbg !627
  %48 = load ptr, ptr %47, align 8, !dbg !627
  %49 = call i32 @sqlite3_exec(ptr noundef %44, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !629
  br label %50, !dbg !629

50:                                               ; preds = %41
  %51 = load i64, ptr %11, align 8, !dbg !630
  %52 = add i64 %51, 1, !dbg !630
  store i64 %52, ptr %11, align 8, !dbg !630
  br label %35, !dbg !631, !llvm.loop !632

53:                                               ; preds = %35
  br label %54, !dbg !635

54:                                               ; preds = %53, %31
  %55 = load ptr, ptr %8, align 8, !dbg !636
  %56 = getelementptr inbounds %struct.db_sqlite, ptr %55, i32 0, i32 0, !dbg !637
  %57 = getelementptr inbounds %struct.db, ptr %56, i32 0, i32 0, !dbg !638
  store ptr @db_disconnect_sqlite, ptr %57, align 8, !dbg !639
  %58 = load ptr, ptr %8, align 8, !dbg !640
  %59 = getelementptr inbounds %struct.db_sqlite, ptr %58, i32 0, i32 0, !dbg !641
  %60 = getelementptr inbounds %struct.db, ptr %59, i32 0, i32 1, !dbg !642
  store ptr @db_prepare_sqlite, ptr %60, align 8, !dbg !643
  %61 = load ptr, ptr %8, align 8, !dbg !644
  store ptr %61, ptr %4, align 8, !dbg !645
  br label %62, !dbg !645

62:                                               ; preds = %54, %29, %16
  %63 = load ptr, ptr %4, align 8, !dbg !646
  ret ptr %63, !dbg !646
}

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_disconnect_sqlite(ptr noundef %0) #0 !dbg !647 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata ptr %3, metadata !650, metadata !DIExpression()), !dbg !651
  %4 = load ptr, ptr %2, align 8, !dbg !652
  store ptr %4, ptr %3, align 8, !dbg !651
  %5 = load ptr, ptr %3, align 8, !dbg !653
  %6 = getelementptr inbounds %struct.db_sqlite, ptr %5, i32 0, i32 1, !dbg !654
  %7 = load ptr, ptr %6, align 8, !dbg !654
  %8 = call i32 @sqlite3_close(ptr noundef %7), !dbg !655
  %9 = load ptr, ptr %2, align 8, !dbg !656
  call void @free(ptr noundef %9) #7, !dbg !657
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_prepare_sqlite(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !659 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !660, metadata !DIExpression()), !dbg !661
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !662, metadata !DIExpression()), !dbg !663
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata ptr %8, metadata !666, metadata !DIExpression()), !dbg !667
  %11 = load ptr, ptr %5, align 8, !dbg !668
  store ptr %11, ptr %8, align 8, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %9, metadata !669, metadata !DIExpression()), !dbg !670
  %12 = call noalias ptr @malloc(i64 noundef 32) #6, !dbg !671
  store ptr %12, ptr %9, align 8, !dbg !670
  %13 = load ptr, ptr %9, align 8, !dbg !672
  %14 = icmp ne ptr %13, null, !dbg !672
  br i1 %14, label %16, label %15, !dbg !674

15:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !675
  br label %41, !dbg !675

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !676, metadata !DIExpression()), !dbg !677
  %17 = load ptr, ptr %8, align 8, !dbg !678
  %18 = getelementptr inbounds %struct.db_sqlite, ptr %17, i32 0, i32 1, !dbg !679
  %19 = load ptr, ptr %18, align 8, !dbg !679
  %20 = load ptr, ptr %6, align 8, !dbg !680
  %21 = load i64, ptr %7, align 8, !dbg !681
  %22 = trunc i64 %21 to i32, !dbg !682
  %23 = load ptr, ptr %9, align 8, !dbg !683
  %24 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %23, i32 0, i32 1, !dbg !684
  %25 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef %22, ptr noundef %24, ptr noundef null), !dbg !685
  store i32 %25, ptr %10, align 4, !dbg !677
  %26 = load i32, ptr %10, align 4, !dbg !686
  %27 = icmp ne i32 %26, 0, !dbg !688
  br i1 %27, label %28, label %30, !dbg !689

28:                                               ; preds = %16
  %29 = load ptr, ptr %9, align 8, !dbg !690
  call void @free(ptr noundef %29) #7, !dbg !692
  store ptr null, ptr %4, align 8, !dbg !693
  br label %41, !dbg !693

30:                                               ; preds = %16
  %31 = load ptr, ptr %9, align 8, !dbg !694
  %32 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %31, i32 0, i32 0, !dbg !695
  %33 = getelementptr inbounds %struct.db_stmt, ptr %32, i32 0, i32 0, !dbg !696
  store ptr @db_stmt_bind_sqlite, ptr %33, align 8, !dbg !697
  %34 = load ptr, ptr %9, align 8, !dbg !698
  %35 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %34, i32 0, i32 0, !dbg !699
  %36 = getelementptr inbounds %struct.db_stmt, ptr %35, i32 0, i32 1, !dbg !700
  store ptr @db_stmt_step_sqlite, ptr %36, align 8, !dbg !701
  %37 = load ptr, ptr %9, align 8, !dbg !702
  %38 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %37, i32 0, i32 0, !dbg !703
  %39 = getelementptr inbounds %struct.db_stmt, ptr %38, i32 0, i32 2, !dbg !704
  store ptr @db_stmt_finalize_sqlite, ptr %39, align 8, !dbg !705
  %40 = load ptr, ptr %9, align 8, !dbg !706
  store ptr %40, ptr %4, align 8, !dbg !707
  br label %41, !dbg !707

41:                                               ; preds = %30, %28, %15
  %42 = load ptr, ptr %4, align 8, !dbg !708
  ret ptr %42, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @db_stmt_bind(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !709 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !710, metadata !DIExpression()), !dbg !711
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !712, metadata !DIExpression()), !dbg !713
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !714, metadata !DIExpression()), !dbg !715
  %7 = load ptr, ptr %4, align 8, !dbg !716
  %8 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !717
  %9 = load ptr, ptr %8, align 8, !dbg !717
  %10 = load ptr, ptr %4, align 8, !dbg !718
  %11 = load ptr, ptr %5, align 8, !dbg !719
  %12 = load i64, ptr %6, align 8, !dbg !720
  %13 = call zeroext i1 %9(ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !716
  ret i1 %13, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @db_stmt_step(ptr noundef %0, ptr noundef %1) #0 !dbg !722 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !723, metadata !DIExpression()), !dbg !724
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !725, metadata !DIExpression()), !dbg !726
  %5 = load ptr, ptr %3, align 8, !dbg !727
  %6 = getelementptr inbounds %struct.db_stmt, ptr %5, i32 0, i32 1, !dbg !728
  %7 = load ptr, ptr %6, align 8, !dbg !728
  %8 = load ptr, ptr %3, align 8, !dbg !729
  %9 = load ptr, ptr %4, align 8, !dbg !730
  %10 = call zeroext i1 %7(ptr noundef %8, ptr noundef %9), !dbg !727
  ret i1 %10, !dbg !731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_stmt_finalize(ptr noundef %0) #0 !dbg !732 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !733, metadata !DIExpression()), !dbg !734
  %3 = load ptr, ptr %2, align 8, !dbg !735
  %4 = getelementptr inbounds %struct.db_stmt, ptr %3, i32 0, i32 2, !dbg !736
  %5 = load ptr, ptr %4, align 8, !dbg !736
  %6 = load ptr, ptr %2, align 8, !dbg !737
  call void %5(ptr noundef %6), !dbg !735
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_disconnect(ptr noundef %0) #0 !dbg !739 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !740, metadata !DIExpression()), !dbg !741
  %3 = load ptr, ptr %2, align 8, !dbg !742
  %4 = getelementptr inbounds %struct.db, ptr %3, i32 0, i32 0, !dbg !743
  %5 = load ptr, ptr %4, align 8, !dbg !743
  %6 = load ptr, ptr %2, align 8, !dbg !744
  call void %5(ptr noundef %6), !dbg !742
  ret void, !dbg !745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_prepare_stmt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !746 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !747, metadata !DIExpression()), !dbg !748
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !749, metadata !DIExpression()), !dbg !750
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !751, metadata !DIExpression()), !dbg !752
  %7 = load ptr, ptr %4, align 8, !dbg !753
  %8 = getelementptr inbounds %struct.db, ptr %7, i32 0, i32 1, !dbg !754
  %9 = load ptr, ptr %8, align 8, !dbg !754
  %10 = load ptr, ptr %4, align 8, !dbg !755
  %11 = load ptr, ptr %5, align 8, !dbg !756
  %12 = load i64, ptr %6, align 8, !dbg !757
  %13 = call ptr %9(ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !753
  ret ptr %13, !dbg !758
}

declare ptr @mysql_stmt_init(ptr noundef) #3

declare i32 @mysql_stmt_prepare(ptr noundef, ptr noundef, i64 noundef) #3

declare zeroext i1 @mysql_stmt_close(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_bind_mysql(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !759 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !760, metadata !DIExpression()), !dbg !761
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !762, metadata !DIExpression()), !dbg !763
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata ptr %8, metadata !766, metadata !DIExpression()), !dbg !767
  %11 = load ptr, ptr %5, align 8, !dbg !768
  store ptr %11, ptr %8, align 8, !dbg !767
  %12 = load ptr, ptr %8, align 8, !dbg !769
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 4, !dbg !770
  store i8 1, ptr %13, align 8, !dbg !771
  %14 = load ptr, ptr %8, align 8, !dbg !772
  %15 = getelementptr inbounds %struct.db_stmt_mysql, ptr %14, i32 0, i32 2, !dbg !774
  %16 = load ptr, ptr %15, align 8, !dbg !774
  %17 = icmp ne ptr %16, null, !dbg !772
  br i1 %17, label %29, label %18, !dbg !775

18:                                               ; preds = %3
  %19 = load i64, ptr %7, align 8, !dbg !776
  %20 = call noalias ptr @calloc(i64 noundef %19, i64 noundef 112) #8, !dbg !778
  %21 = load ptr, ptr %8, align 8, !dbg !779
  %22 = getelementptr inbounds %struct.db_stmt_mysql, ptr %21, i32 0, i32 2, !dbg !780
  store ptr %20, ptr %22, align 8, !dbg !781
  %23 = load ptr, ptr %8, align 8, !dbg !782
  %24 = getelementptr inbounds %struct.db_stmt_mysql, ptr %23, i32 0, i32 2, !dbg !784
  %25 = load ptr, ptr %24, align 8, !dbg !784
  %26 = icmp ne ptr %25, null, !dbg !782
  br i1 %26, label %28, label %27, !dbg !785

27:                                               ; preds = %18
  store i1 false, ptr %4, align 1, !dbg !786
  br label %106, !dbg !786

28:                                               ; preds = %18
  br label %34, !dbg !787

29:                                               ; preds = %3
  %30 = load ptr, ptr %8, align 8, !dbg !788
  %31 = getelementptr inbounds %struct.db_stmt_mysql, ptr %30, i32 0, i32 1, !dbg !790
  %32 = load ptr, ptr %31, align 8, !dbg !790
  %33 = call zeroext i1 @mysql_stmt_reset(ptr noundef %32), !dbg !791
  br label %34

34:                                               ; preds = %29, %28
  call void @llvm.dbg.declare(metadata ptr %9, metadata !792, metadata !DIExpression()), !dbg !794
  store i64 0, ptr %9, align 8, !dbg !794
  br label %35, !dbg !795

35:                                               ; preds = %94, %34
  %36 = load i64, ptr %9, align 8, !dbg !796
  %37 = load i64, ptr %7, align 8, !dbg !798
  %38 = icmp ult i64 %36, %37, !dbg !799
  br i1 %38, label %39, label %97, !dbg !800

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 8, !dbg !801
  %41 = load i64, ptr %9, align 8, !dbg !804
  %42 = getelementptr inbounds %struct.db_row, ptr %40, i64 %41, !dbg !801
  %43 = getelementptr inbounds %struct.db_row, ptr %42, i32 0, i32 1, !dbg !805
  %44 = load i8, ptr %43, align 8, !dbg !805
  %45 = sext i8 %44 to i32, !dbg !801
  %46 = icmp eq i32 %45, 0, !dbg !806
  br i1 %46, label %47, label %48, !dbg !807

47:                                               ; preds = %39
  br label %97, !dbg !808

48:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %10, metadata !809, metadata !DIExpression()), !dbg !810
  %49 = load ptr, ptr %8, align 8, !dbg !811
  %50 = getelementptr inbounds %struct.db_stmt_mysql, ptr %49, i32 0, i32 2, !dbg !812
  %51 = load ptr, ptr %50, align 8, !dbg !812
  %52 = load i64, ptr %9, align 8, !dbg !813
  %53 = getelementptr inbounds %struct.MYSQL_BIND, ptr %51, i64 %52, !dbg !811
  store ptr %53, ptr %10, align 8, !dbg !810
  %54 = load ptr, ptr %6, align 8, !dbg !814
  %55 = load i64, ptr %9, align 8, !dbg !816
  %56 = getelementptr inbounds %struct.db_row, ptr %54, i64 %55, !dbg !814
  %57 = getelementptr inbounds %struct.db_row, ptr %56, i32 0, i32 1, !dbg !817
  %58 = load i8, ptr %57, align 8, !dbg !817
  %59 = sext i8 %58 to i32, !dbg !814
  %60 = icmp eq i32 %59, 115, !dbg !818
  br i1 %60, label %61, label %71, !dbg !819

61:                                               ; preds = %48
  %62 = load ptr, ptr %10, align 8, !dbg !820
  %63 = getelementptr inbounds %struct.MYSQL_BIND, ptr %62, i32 0, i32 13, !dbg !822
  store i32 254, ptr %63, align 8, !dbg !823
  %64 = load ptr, ptr %6, align 8, !dbg !824
  %65 = load i64, ptr %9, align 8, !dbg !825
  %66 = getelementptr inbounds %struct.db_row, ptr %64, i64 %65, !dbg !824
  %67 = getelementptr inbounds %struct.db_row, ptr %66, i32 0, i32 0, !dbg !826
  %68 = load ptr, ptr %67, align 8, !dbg !827
  %69 = load ptr, ptr %10, align 8, !dbg !828
  %70 = getelementptr inbounds %struct.MYSQL_BIND, ptr %69, i32 0, i32 2, !dbg !829
  store ptr %68, ptr %70, align 8, !dbg !830
  br label %89, !dbg !831

71:                                               ; preds = %48
  %72 = load ptr, ptr %6, align 8, !dbg !832
  %73 = load i64, ptr %9, align 8, !dbg !834
  %74 = getelementptr inbounds %struct.db_row, ptr %72, i64 %73, !dbg !832
  %75 = getelementptr inbounds %struct.db_row, ptr %74, i32 0, i32 1, !dbg !835
  %76 = load i8, ptr %75, align 8, !dbg !835
  %77 = sext i8 %76 to i32, !dbg !832
  %78 = icmp eq i32 %77, 105, !dbg !836
  br i1 %78, label %79, label %88, !dbg !837

79:                                               ; preds = %71
  %80 = load ptr, ptr %10, align 8, !dbg !838
  %81 = getelementptr inbounds %struct.MYSQL_BIND, ptr %80, i32 0, i32 13, !dbg !840
  store i32 3, ptr %81, align 8, !dbg !841
  %82 = load ptr, ptr %6, align 8, !dbg !842
  %83 = load i64, ptr %9, align 8, !dbg !843
  %84 = getelementptr inbounds %struct.db_row, ptr %82, i64 %83, !dbg !842
  %85 = getelementptr inbounds %struct.db_row, ptr %84, i32 0, i32 0, !dbg !844
  %86 = load ptr, ptr %10, align 8, !dbg !845
  %87 = getelementptr inbounds %struct.MYSQL_BIND, ptr %86, i32 0, i32 2, !dbg !846
  store ptr %85, ptr %87, align 8, !dbg !847
  br label %88, !dbg !848

88:                                               ; preds = %79, %71
  br label %89

89:                                               ; preds = %88, %61
  %90 = load ptr, ptr %10, align 8, !dbg !849
  %91 = getelementptr inbounds %struct.MYSQL_BIND, ptr %90, i32 0, i32 1, !dbg !850
  store ptr null, ptr %91, align 8, !dbg !851
  %92 = load ptr, ptr %10, align 8, !dbg !852
  %93 = getelementptr inbounds %struct.MYSQL_BIND, ptr %92, i32 0, i32 0, !dbg !853
  store ptr null, ptr %93, align 8, !dbg !854
  br label %94, !dbg !855

94:                                               ; preds = %89
  %95 = load i64, ptr %9, align 8, !dbg !856
  %96 = add i64 %95, 1, !dbg !856
  store i64 %96, ptr %9, align 8, !dbg !856
  br label %35, !dbg !857, !llvm.loop !858

97:                                               ; preds = %47, %35
  %98 = load ptr, ptr %8, align 8, !dbg !860
  %99 = getelementptr inbounds %struct.db_stmt_mysql, ptr %98, i32 0, i32 1, !dbg !861
  %100 = load ptr, ptr %99, align 8, !dbg !861
  %101 = load ptr, ptr %8, align 8, !dbg !862
  %102 = getelementptr inbounds %struct.db_stmt_mysql, ptr %101, i32 0, i32 2, !dbg !863
  %103 = load ptr, ptr %102, align 8, !dbg !863
  %104 = call zeroext i1 @mysql_stmt_bind_param(ptr noundef %100, ptr noundef %103), !dbg !864
  %105 = xor i1 %104, true, !dbg !865
  store i1 %105, ptr %4, align 1, !dbg !866
  br label %106, !dbg !866

106:                                              ; preds = %97, %27
  %107 = load i1, ptr %4, align 1, !dbg !867
  ret i1 %107, !dbg !867
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_step_mysql(ptr noundef %0, ptr noundef %1) #0 !dbg !868 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !869, metadata !DIExpression()), !dbg !870
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata ptr %6, metadata !873, metadata !DIExpression()), !dbg !874
  %11 = load ptr, ptr %4, align 8, !dbg !875
  store ptr %11, ptr %6, align 8, !dbg !874
  %12 = load ptr, ptr %6, align 8, !dbg !876
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 4, !dbg !878
  %14 = load i8, ptr %13, align 8, !dbg !878
  %15 = trunc i8 %14 to i1, !dbg !878
  br i1 %15, label %16, label %26, !dbg !879

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 8, !dbg !880
  %18 = getelementptr inbounds %struct.db_stmt_mysql, ptr %17, i32 0, i32 4, !dbg !882
  store i8 0, ptr %18, align 8, !dbg !883
  %19 = load ptr, ptr %6, align 8, !dbg !884
  %20 = getelementptr inbounds %struct.db_stmt_mysql, ptr %19, i32 0, i32 1, !dbg !886
  %21 = load ptr, ptr %20, align 8, !dbg !886
  %22 = call i32 @mysql_stmt_execute(ptr noundef %21), !dbg !887
  %23 = icmp ne i32 %22, 0, !dbg !887
  br i1 %23, label %24, label %25, !dbg !888

24:                                               ; preds = %16
  store i1 false, ptr %3, align 1, !dbg !889
  br label %156, !dbg !889

25:                                               ; preds = %16
  br label %26, !dbg !890

26:                                               ; preds = %25, %2
  %27 = load ptr, ptr %6, align 8, !dbg !891
  %28 = getelementptr inbounds %struct.db_stmt_mysql, ptr %27, i32 0, i32 3, !dbg !893
  %29 = load ptr, ptr %28, align 8, !dbg !893
  %30 = icmp ne ptr %29, null, !dbg !891
  br i1 %30, label %150, label %31, !dbg !894

31:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %7, metadata !895, metadata !DIExpression()), !dbg !897
  store i64 0, ptr %7, align 8, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %8, metadata !898, metadata !DIExpression()), !dbg !900
  %32 = load ptr, ptr %5, align 8, !dbg !901
  store ptr %32, ptr %8, align 8, !dbg !900
  br label %33, !dbg !902

33:                                               ; preds = %42, %31
  %34 = load ptr, ptr %8, align 8, !dbg !903
  %35 = getelementptr inbounds %struct.db_row, ptr %34, i32 0, i32 1, !dbg !905
  %36 = load i8, ptr %35, align 8, !dbg !905
  %37 = sext i8 %36 to i32, !dbg !903
  %38 = icmp ne i32 %37, 0, !dbg !906
  br i1 %38, label %39, label %45, !dbg !907

39:                                               ; preds = %33
  %40 = load i64, ptr %7, align 8, !dbg !908
  %41 = add i64 %40, 1, !dbg !908
  store i64 %41, ptr %7, align 8, !dbg !908
  br label %42, !dbg !909

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8, !dbg !910
  %44 = getelementptr inbounds %struct.db_row, ptr %43, i32 1, !dbg !910
  store ptr %44, ptr %8, align 8, !dbg !910
  br label %33, !dbg !911, !llvm.loop !912

45:                                               ; preds = %33
  %46 = load i64, ptr %7, align 8, !dbg !914
  %47 = icmp ne i64 %46, 0, !dbg !914
  br i1 %47, label %49, label %48, !dbg !916

48:                                               ; preds = %45
  store i1 false, ptr %3, align 1, !dbg !917
  br label %156, !dbg !917

49:                                               ; preds = %45
  %50 = load i64, ptr %7, align 8, !dbg !918
  %51 = call noalias ptr @calloc(i64 noundef %50, i64 noundef 112) #8, !dbg !919
  %52 = load ptr, ptr %6, align 8, !dbg !920
  %53 = getelementptr inbounds %struct.db_stmt_mysql, ptr %52, i32 0, i32 3, !dbg !921
  store ptr %51, ptr %53, align 8, !dbg !922
  %54 = load ptr, ptr %6, align 8, !dbg !923
  %55 = getelementptr inbounds %struct.db_stmt_mysql, ptr %54, i32 0, i32 3, !dbg !925
  %56 = load ptr, ptr %55, align 8, !dbg !925
  %57 = icmp ne ptr %56, null, !dbg !923
  br i1 %57, label %59, label %58, !dbg !926

58:                                               ; preds = %49
  store i1 false, ptr %3, align 1, !dbg !927
  br label %156, !dbg !927

59:                                               ; preds = %49
  %60 = load i64, ptr %7, align 8, !dbg !928
  %61 = call noalias ptr @calloc(i64 noundef %60, i64 noundef 112) #8, !dbg !929
  %62 = load ptr, ptr %6, align 8, !dbg !930
  %63 = getelementptr inbounds %struct.db_stmt_mysql, ptr %62, i32 0, i32 2, !dbg !931
  store ptr %61, ptr %63, align 8, !dbg !932
  %64 = load ptr, ptr %6, align 8, !dbg !933
  %65 = getelementptr inbounds %struct.db_stmt_mysql, ptr %64, i32 0, i32 2, !dbg !935
  %66 = load ptr, ptr %65, align 8, !dbg !935
  %67 = icmp ne ptr %66, null, !dbg !933
  br i1 %67, label %72, label %68, !dbg !936

68:                                               ; preds = %59
  %69 = load ptr, ptr %6, align 8, !dbg !937
  %70 = getelementptr inbounds %struct.db_stmt_mysql, ptr %69, i32 0, i32 2, !dbg !939
  %71 = load ptr, ptr %70, align 8, !dbg !939
  call void @free(ptr noundef %71) #7, !dbg !940
  store i1 false, ptr %3, align 1, !dbg !941
  br label %156, !dbg !941

72:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %9, metadata !942, metadata !DIExpression()), !dbg !943
  %73 = load ptr, ptr %6, align 8, !dbg !944
  %74 = getelementptr inbounds %struct.db_stmt_mysql, ptr %73, i32 0, i32 3, !dbg !945
  %75 = load ptr, ptr %74, align 8, !dbg !945
  store ptr %75, ptr %9, align 8, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %10, metadata !946, metadata !DIExpression()), !dbg !948
  store i64 0, ptr %10, align 8, !dbg !948
  br label %76, !dbg !949

76:                                               ; preds = %139, %72
  %77 = load i64, ptr %10, align 8, !dbg !950
  %78 = load i64, ptr %7, align 8, !dbg !952
  %79 = icmp ult i64 %77, %78, !dbg !953
  br i1 %79, label %80, label %142, !dbg !954

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8, !dbg !955
  %82 = load i64, ptr %10, align 8, !dbg !958
  %83 = getelementptr inbounds %struct.db_row, ptr %81, i64 %82, !dbg !955
  %84 = getelementptr inbounds %struct.db_row, ptr %83, i32 0, i32 1, !dbg !959
  %85 = load i8, ptr %84, align 8, !dbg !959
  %86 = sext i8 %85 to i32, !dbg !955
  %87 = icmp eq i32 %86, 115, !dbg !960
  br i1 %87, label %88, label %102, !dbg !961

88:                                               ; preds = %80
  %89 = load ptr, ptr %9, align 8, !dbg !962
  %90 = load i64, ptr %10, align 8, !dbg !964
  %91 = getelementptr inbounds %struct.MYSQL_BIND, ptr %89, i64 %90, !dbg !962
  %92 = getelementptr inbounds %struct.MYSQL_BIND, ptr %91, i32 0, i32 13, !dbg !965
  store i32 254, ptr %92, align 8, !dbg !966
  %93 = load ptr, ptr %5, align 8, !dbg !967
  %94 = load i64, ptr %10, align 8, !dbg !968
  %95 = getelementptr inbounds %struct.db_row, ptr %93, i64 %94, !dbg !967
  %96 = getelementptr inbounds %struct.db_row, ptr %95, i32 0, i32 0, !dbg !969
  %97 = load ptr, ptr %96, align 8, !dbg !970
  %98 = load ptr, ptr %9, align 8, !dbg !971
  %99 = load i64, ptr %10, align 8, !dbg !972
  %100 = getelementptr inbounds %struct.MYSQL_BIND, ptr %98, i64 %99, !dbg !971
  %101 = getelementptr inbounds %struct.MYSQL_BIND, ptr %100, i32 0, i32 2, !dbg !973
  store ptr %97, ptr %101, align 8, !dbg !974
  br label %125, !dbg !975

102:                                              ; preds = %80
  %103 = load ptr, ptr %5, align 8, !dbg !976
  %104 = load i64, ptr %10, align 8, !dbg !978
  %105 = getelementptr inbounds %struct.db_row, ptr %103, i64 %104, !dbg !976
  %106 = getelementptr inbounds %struct.db_row, ptr %105, i32 0, i32 1, !dbg !979
  %107 = load i8, ptr %106, align 8, !dbg !979
  %108 = sext i8 %107 to i32, !dbg !976
  %109 = icmp eq i32 %108, 105, !dbg !980
  br i1 %109, label %110, label %123, !dbg !981

110:                                              ; preds = %102
  %111 = load ptr, ptr %9, align 8, !dbg !982
  %112 = load i64, ptr %10, align 8, !dbg !984
  %113 = getelementptr inbounds %struct.MYSQL_BIND, ptr %111, i64 %112, !dbg !982
  %114 = getelementptr inbounds %struct.MYSQL_BIND, ptr %113, i32 0, i32 13, !dbg !985
  store i32 3, ptr %114, align 8, !dbg !986
  %115 = load ptr, ptr %5, align 8, !dbg !987
  %116 = load i64, ptr %10, align 8, !dbg !988
  %117 = getelementptr inbounds %struct.db_row, ptr %115, i64 %116, !dbg !987
  %118 = getelementptr inbounds %struct.db_row, ptr %117, i32 0, i32 0, !dbg !989
  %119 = load ptr, ptr %9, align 8, !dbg !990
  %120 = load i64, ptr %10, align 8, !dbg !991
  %121 = getelementptr inbounds %struct.MYSQL_BIND, ptr %119, i64 %120, !dbg !990
  %122 = getelementptr inbounds %struct.MYSQL_BIND, ptr %121, i32 0, i32 2, !dbg !992
  store ptr %118, ptr %122, align 8, !dbg !993
  br label %124, !dbg !994

123:                                              ; preds = %102
  store i1 false, ptr %3, align 1, !dbg !995
  br label %156, !dbg !995

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %88
  %126 = load ptr, ptr %9, align 8, !dbg !997
  %127 = load i64, ptr %10, align 8, !dbg !998
  %128 = getelementptr inbounds %struct.MYSQL_BIND, ptr %126, i64 %127, !dbg !997
  %129 = getelementptr inbounds %struct.MYSQL_BIND, ptr %128, i32 0, i32 1, !dbg !999
  store ptr null, ptr %129, align 8, !dbg !1000
  %130 = load ptr, ptr %5, align 8, !dbg !1001
  %131 = load i64, ptr %10, align 8, !dbg !1002
  %132 = getelementptr inbounds %struct.db_row, ptr %130, i64 %131, !dbg !1001
  %133 = getelementptr inbounds %struct.db_row, ptr %132, i32 0, i32 2, !dbg !1003
  %134 = load i64, ptr %133, align 8, !dbg !1003
  %135 = load ptr, ptr %9, align 8, !dbg !1004
  %136 = load i64, ptr %10, align 8, !dbg !1005
  %137 = getelementptr inbounds %struct.MYSQL_BIND, ptr %135, i64 %136, !dbg !1004
  %138 = getelementptr inbounds %struct.MYSQL_BIND, ptr %137, i32 0, i32 8, !dbg !1006
  store i64 %134, ptr %138, align 8, !dbg !1007
  br label %139, !dbg !1008

139:                                              ; preds = %125
  %140 = load i64, ptr %10, align 8, !dbg !1009
  %141 = add i64 %140, 1, !dbg !1009
  store i64 %141, ptr %10, align 8, !dbg !1009
  br label %76, !dbg !1010, !llvm.loop !1011

142:                                              ; preds = %76
  %143 = load ptr, ptr %6, align 8, !dbg !1013
  %144 = getelementptr inbounds %struct.db_stmt_mysql, ptr %143, i32 0, i32 1, !dbg !1015
  %145 = load ptr, ptr %144, align 8, !dbg !1015
  %146 = load ptr, ptr %9, align 8, !dbg !1016
  %147 = call zeroext i1 @mysql_stmt_bind_result(ptr noundef %145, ptr noundef %146), !dbg !1017
  br i1 %147, label %148, label %149, !dbg !1018

148:                                              ; preds = %142
  store i1 false, ptr %3, align 1, !dbg !1019
  br label %156, !dbg !1019

149:                                              ; preds = %142
  br label %150, !dbg !1020

150:                                              ; preds = %149, %26
  %151 = load ptr, ptr %6, align 8, !dbg !1021
  %152 = getelementptr inbounds %struct.db_stmt_mysql, ptr %151, i32 0, i32 1, !dbg !1022
  %153 = load ptr, ptr %152, align 8, !dbg !1022
  %154 = call i32 @mysql_stmt_fetch(ptr noundef %153), !dbg !1023
  %155 = icmp eq i32 %154, 0, !dbg !1024
  store i1 %155, ptr %3, align 1, !dbg !1025
  br label %156, !dbg !1025

156:                                              ; preds = %150, %148, %123, %68, %58, %48, %24
  %157 = load i1, ptr %3, align 1, !dbg !1026
  ret i1 %157, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stmt_finalize_mysql(ptr noundef %0) #0 !dbg !1027 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1030, metadata !DIExpression()), !dbg !1031
  %4 = load ptr, ptr %2, align 8, !dbg !1032
  store ptr %4, ptr %3, align 8, !dbg !1031
  %5 = load ptr, ptr %3, align 8, !dbg !1033
  %6 = getelementptr inbounds %struct.db_stmt_mysql, ptr %5, i32 0, i32 1, !dbg !1034
  %7 = load ptr, ptr %6, align 8, !dbg !1034
  %8 = call zeroext i1 @mysql_stmt_close(ptr noundef %7), !dbg !1035
  %9 = load ptr, ptr %3, align 8, !dbg !1036
  %10 = getelementptr inbounds %struct.db_stmt_mysql, ptr %9, i32 0, i32 3, !dbg !1037
  %11 = load ptr, ptr %10, align 8, !dbg !1037
  call void @free(ptr noundef %11) #7, !dbg !1038
  %12 = load ptr, ptr %3, align 8, !dbg !1039
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 2, !dbg !1040
  %14 = load ptr, ptr %13, align 8, !dbg !1040
  call void @free(ptr noundef %14) #7, !dbg !1041
  %15 = load ptr, ptr %3, align 8, !dbg !1042
  call void @free(ptr noundef %15) #7, !dbg !1043
  ret void, !dbg !1044
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

declare zeroext i1 @mysql_stmt_reset(ptr noundef) #3

declare zeroext i1 @mysql_stmt_bind_param(ptr noundef, ptr noundef) #3

declare i32 @mysql_stmt_execute(ptr noundef) #3

declare zeroext i1 @mysql_stmt_bind_result(ptr noundef, ptr noundef) #3

declare i32 @mysql_stmt_fetch(ptr noundef) #3

declare i32 @sqlite3_close(ptr noundef) #3

declare i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_bind_sqlite(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1045 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1046, metadata !DIExpression()), !dbg !1047
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1052, metadata !DIExpression()), !dbg !1053
  %13 = load ptr, ptr %5, align 8, !dbg !1054
  store ptr %13, ptr %8, align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1055, metadata !DIExpression()), !dbg !1058
  %14 = load ptr, ptr %6, align 8, !dbg !1059
  %15 = getelementptr inbounds %struct.db_row, ptr %14, i64 -1, !dbg !1060
  store ptr %15, ptr %9, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1061, metadata !DIExpression()), !dbg !1062
  %16 = load ptr, ptr %8, align 8, !dbg !1063
  %17 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %16, i32 0, i32 1, !dbg !1064
  %18 = load ptr, ptr %17, align 8, !dbg !1064
  %19 = call i32 @sqlite3_reset(ptr noundef %18), !dbg !1065
  %20 = load ptr, ptr %8, align 8, !dbg !1066
  %21 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %20, i32 0, i32 1, !dbg !1067
  %22 = load ptr, ptr %21, align 8, !dbg !1067
  %23 = call i32 @sqlite3_clear_bindings(ptr noundef %22), !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1069, metadata !DIExpression()), !dbg !1071
  store i64 1, ptr %11, align 8, !dbg !1071
  br label %24, !dbg !1072

24:                                               ; preds = %81, %3
  %25 = load i64, ptr %11, align 8, !dbg !1073
  %26 = load i64, ptr %7, align 8, !dbg !1075
  %27 = icmp ule i64 %25, %26, !dbg !1076
  br i1 %27, label %28, label %84, !dbg !1077

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1078, metadata !DIExpression()), !dbg !1080
  %29 = load ptr, ptr %9, align 8, !dbg !1081
  %30 = load i64, ptr %11, align 8, !dbg !1082
  %31 = getelementptr inbounds %struct.db_row, ptr %29, i64 %30, !dbg !1081
  store ptr %31, ptr %12, align 8, !dbg !1080
  %32 = load ptr, ptr %12, align 8, !dbg !1083
  %33 = getelementptr inbounds %struct.db_row, ptr %32, i32 0, i32 1, !dbg !1085
  %34 = load i8, ptr %33, align 8, !dbg !1085
  %35 = sext i8 %34 to i32, !dbg !1083
  %36 = icmp eq i32 %35, 0, !dbg !1086
  br i1 %36, label %37, label %38, !dbg !1087

37:                                               ; preds = %28
  br label %84, !dbg !1088

38:                                               ; preds = %28
  %39 = load ptr, ptr %12, align 8, !dbg !1089
  %40 = getelementptr inbounds %struct.db_row, ptr %39, i32 0, i32 1, !dbg !1091
  %41 = load i8, ptr %40, align 8, !dbg !1091
  %42 = sext i8 %41 to i32, !dbg !1089
  %43 = icmp eq i32 %42, 115, !dbg !1092
  br i1 %43, label %44, label %58, !dbg !1093

44:                                               ; preds = %38
  %45 = load ptr, ptr %8, align 8, !dbg !1094
  %46 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %45, i32 0, i32 1, !dbg !1096
  %47 = load ptr, ptr %46, align 8, !dbg !1096
  %48 = load i64, ptr %11, align 8, !dbg !1097
  %49 = trunc i64 %48 to i32, !dbg !1098
  %50 = load ptr, ptr %12, align 8, !dbg !1099
  %51 = getelementptr inbounds %struct.db_row, ptr %50, i32 0, i32 0, !dbg !1100
  %52 = load ptr, ptr %51, align 8, !dbg !1101
  %53 = call i32 @sqlite3_bind_text(ptr noundef %47, i32 noundef %49, ptr noundef %52, i32 noundef -1, ptr noundef null), !dbg !1102
  store i32 %53, ptr %10, align 4, !dbg !1103
  %54 = load i32, ptr %10, align 4, !dbg !1104
  %55 = icmp ne i32 %54, 0, !dbg !1106
  br i1 %55, label %56, label %57, !dbg !1107

56:                                               ; preds = %44
  store i1 false, ptr %4, align 1, !dbg !1108
  br label %85, !dbg !1108

57:                                               ; preds = %44
  br label %80, !dbg !1109

58:                                               ; preds = %38
  %59 = load ptr, ptr %12, align 8, !dbg !1110
  %60 = getelementptr inbounds %struct.db_row, ptr %59, i32 0, i32 1, !dbg !1112
  %61 = load i8, ptr %60, align 8, !dbg !1112
  %62 = sext i8 %61 to i32, !dbg !1110
  %63 = icmp eq i32 %62, 105, !dbg !1113
  br i1 %63, label %64, label %78, !dbg !1114

64:                                               ; preds = %58
  %65 = load ptr, ptr %8, align 8, !dbg !1115
  %66 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %65, i32 0, i32 1, !dbg !1117
  %67 = load ptr, ptr %66, align 8, !dbg !1117
  %68 = load i64, ptr %11, align 8, !dbg !1118
  %69 = trunc i64 %68 to i32, !dbg !1119
  %70 = load ptr, ptr %12, align 8, !dbg !1120
  %71 = getelementptr inbounds %struct.db_row, ptr %70, i32 0, i32 0, !dbg !1121
  %72 = load i32, ptr %71, align 8, !dbg !1122
  %73 = call i32 @sqlite3_bind_int(ptr noundef %67, i32 noundef %69, i32 noundef %72), !dbg !1123
  store i32 %73, ptr %10, align 4, !dbg !1124
  %74 = load i32, ptr %10, align 4, !dbg !1125
  %75 = icmp ne i32 %74, 0, !dbg !1127
  br i1 %75, label %76, label %77, !dbg !1128

76:                                               ; preds = %64
  store i1 false, ptr %4, align 1, !dbg !1129
  br label %85, !dbg !1129

77:                                               ; preds = %64
  br label %79, !dbg !1130

78:                                               ; preds = %58
  store i1 false, ptr %4, align 1, !dbg !1131
  br label %85, !dbg !1131

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %57
  br label %81, !dbg !1133

81:                                               ; preds = %80
  %82 = load i64, ptr %11, align 8, !dbg !1134
  %83 = add i64 %82, 1, !dbg !1134
  store i64 %83, ptr %11, align 8, !dbg !1134
  br label %24, !dbg !1135, !llvm.loop !1136

84:                                               ; preds = %37, %24
  store i1 true, ptr %4, align 1, !dbg !1138
  br label %85, !dbg !1138

85:                                               ; preds = %84, %78, %76, %56
  %86 = load i1, ptr %4, align 1, !dbg !1139
  ret i1 %86, !dbg !1139
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_step_sqlite(ptr noundef %0, ptr noundef %1) #0 !dbg !1140 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1141, metadata !DIExpression()), !dbg !1142
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1145, metadata !DIExpression()), !dbg !1146
  %9 = load ptr, ptr %4, align 8, !dbg !1147
  store ptr %9, ptr %6, align 8, !dbg !1146
  %10 = load ptr, ptr %6, align 8, !dbg !1148
  %11 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %10, i32 0, i32 1, !dbg !1150
  %12 = load ptr, ptr %11, align 8, !dbg !1150
  %13 = call i32 @sqlite3_step(ptr noundef %12), !dbg !1151
  %14 = icmp ne i32 %13, 100, !dbg !1152
  br i1 %14, label %15, label %16, !dbg !1153

15:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !1154
  br label %61, !dbg !1154

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1155, metadata !DIExpression()), !dbg !1156
  store i32 0, ptr %7, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1157, metadata !DIExpression()), !dbg !1159
  %17 = load ptr, ptr %5, align 8, !dbg !1160
  store ptr %17, ptr %8, align 8, !dbg !1159
  br label %18, !dbg !1161

18:                                               ; preds = %55, %16
  %19 = load ptr, ptr %8, align 8, !dbg !1162
  %20 = getelementptr inbounds %struct.db_row, ptr %19, i32 0, i32 1, !dbg !1164
  %21 = load i8, ptr %20, align 8, !dbg !1164
  %22 = sext i8 %21 to i32, !dbg !1162
  %23 = icmp ne i32 %22, 0, !dbg !1165
  br i1 %23, label %24, label %60, !dbg !1166

24:                                               ; preds = %18
  %25 = load ptr, ptr %8, align 8, !dbg !1167
  %26 = getelementptr inbounds %struct.db_row, ptr %25, i32 0, i32 1, !dbg !1170
  %27 = load i8, ptr %26, align 8, !dbg !1170
  %28 = sext i8 %27 to i32, !dbg !1167
  %29 = icmp eq i32 %28, 105, !dbg !1171
  br i1 %29, label %30, label %38, !dbg !1172

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8, !dbg !1173
  %32 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %31, i32 0, i32 1, !dbg !1175
  %33 = load ptr, ptr %32, align 8, !dbg !1175
  %34 = load i32, ptr %7, align 4, !dbg !1176
  %35 = call i32 @sqlite3_column_int(ptr noundef %33, i32 noundef %34), !dbg !1177
  %36 = load ptr, ptr %8, align 8, !dbg !1178
  %37 = getelementptr inbounds %struct.db_row, ptr %36, i32 0, i32 0, !dbg !1179
  store i32 %35, ptr %37, align 8, !dbg !1180
  br label %54, !dbg !1181

38:                                               ; preds = %24
  %39 = load ptr, ptr %8, align 8, !dbg !1182
  %40 = getelementptr inbounds %struct.db_row, ptr %39, i32 0, i32 1, !dbg !1184
  %41 = load i8, ptr %40, align 8, !dbg !1184
  %42 = sext i8 %41 to i32, !dbg !1182
  %43 = icmp eq i32 %42, 115, !dbg !1185
  br i1 %43, label %44, label %52, !dbg !1186

44:                                               ; preds = %38
  %45 = load ptr, ptr %6, align 8, !dbg !1187
  %46 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %45, i32 0, i32 1, !dbg !1189
  %47 = load ptr, ptr %46, align 8, !dbg !1189
  %48 = load i32, ptr %7, align 4, !dbg !1190
  %49 = call ptr @sqlite3_column_text(ptr noundef %47, i32 noundef %48), !dbg !1191
  %50 = load ptr, ptr %8, align 8, !dbg !1192
  %51 = getelementptr inbounds %struct.db_row, ptr %50, i32 0, i32 0, !dbg !1193
  store ptr %49, ptr %51, align 8, !dbg !1194
  br label %53, !dbg !1195

52:                                               ; preds = %38
  store i1 false, ptr %3, align 1, !dbg !1196
  br label %61, !dbg !1196

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %30
  br label %55, !dbg !1198

55:                                               ; preds = %54
  %56 = load ptr, ptr %8, align 8, !dbg !1199
  %57 = getelementptr inbounds %struct.db_row, ptr %56, i32 1, !dbg !1199
  store ptr %57, ptr %8, align 8, !dbg !1199
  %58 = load i32, ptr %7, align 4, !dbg !1200
  %59 = add nsw i32 %58, 1, !dbg !1200
  store i32 %59, ptr %7, align 4, !dbg !1200
  br label %18, !dbg !1201, !llvm.loop !1202

60:                                               ; preds = %18
  store i1 true, ptr %3, align 1, !dbg !1204
  br label %61, !dbg !1204

61:                                               ; preds = %60, %52, %15
  %62 = load i1, ptr %3, align 1, !dbg !1205
  ret i1 %62, !dbg !1205
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stmt_finalize_sqlite(ptr noundef %0) #0 !dbg !1206 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1207, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1209, metadata !DIExpression()), !dbg !1210
  %4 = load ptr, ptr %2, align 8, !dbg !1211
  store ptr %4, ptr %3, align 8, !dbg !1210
  %5 = load ptr, ptr %3, align 8, !dbg !1212
  %6 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %5, i32 0, i32 1, !dbg !1213
  %7 = load ptr, ptr %6, align 8, !dbg !1213
  %8 = call i32 @sqlite3_finalize(ptr noundef %7), !dbg !1214
  %9 = load ptr, ptr %3, align 8, !dbg !1215
  call void @free(ptr noundef %9) #7, !dbg !1216
  ret void, !dbg !1217
}

declare i32 @sqlite3_reset(ptr noundef) #3

declare i32 @sqlite3_clear_bindings(ptr noundef) #3

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @sqlite3_step(ptr noundef) #3

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #3

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #3

declare i32 @sqlite3_finalize(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!423, !424, !425, !426, !427, !428, !429}
!llvm.ident = !{!430}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "techempower/database.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b1863d3de4d8cddd800a4bd2ab6539b0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !66, globals: !422, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/raj/lwan/techempower/database.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "b1863d3de4d8cddd800a4bd2ab6539b0")
!9 = !{!10, !48, !55, !60}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_field_types", file: !11, line: 53, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "/usr/include/mysql/field_types.h", directory: "", checksumkind: CSK_MD5, checksum: "1dac89ddf305112c87b3c4620861815a")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!14 = !DIEnumerator(name: "MYSQL_TYPE_DECIMAL", value: 0)
!15 = !DIEnumerator(name: "MYSQL_TYPE_TINY", value: 1)
!16 = !DIEnumerator(name: "MYSQL_TYPE_SHORT", value: 2)
!17 = !DIEnumerator(name: "MYSQL_TYPE_LONG", value: 3)
!18 = !DIEnumerator(name: "MYSQL_TYPE_FLOAT", value: 4)
!19 = !DIEnumerator(name: "MYSQL_TYPE_DOUBLE", value: 5)
!20 = !DIEnumerator(name: "MYSQL_TYPE_NULL", value: 6)
!21 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP", value: 7)
!22 = !DIEnumerator(name: "MYSQL_TYPE_LONGLONG", value: 8)
!23 = !DIEnumerator(name: "MYSQL_TYPE_INT24", value: 9)
!24 = !DIEnumerator(name: "MYSQL_TYPE_DATE", value: 10)
!25 = !DIEnumerator(name: "MYSQL_TYPE_TIME", value: 11)
!26 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME", value: 12)
!27 = !DIEnumerator(name: "MYSQL_TYPE_YEAR", value: 13)
!28 = !DIEnumerator(name: "MYSQL_TYPE_NEWDATE", value: 14)
!29 = !DIEnumerator(name: "MYSQL_TYPE_VARCHAR", value: 15)
!30 = !DIEnumerator(name: "MYSQL_TYPE_BIT", value: 16)
!31 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP2", value: 17)
!32 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME2", value: 18)
!33 = !DIEnumerator(name: "MYSQL_TYPE_TIME2", value: 19)
!34 = !DIEnumerator(name: "MYSQL_TYPE_TYPED_ARRAY", value: 20)
!35 = !DIEnumerator(name: "MYSQL_TYPE_INVALID", value: 243)
!36 = !DIEnumerator(name: "MYSQL_TYPE_BOOL", value: 244)
!37 = !DIEnumerator(name: "MYSQL_TYPE_JSON", value: 245)
!38 = !DIEnumerator(name: "MYSQL_TYPE_NEWDECIMAL", value: 246)
!39 = !DIEnumerator(name: "MYSQL_TYPE_ENUM", value: 247)
!40 = !DIEnumerator(name: "MYSQL_TYPE_SET", value: 248)
!41 = !DIEnumerator(name: "MYSQL_TYPE_TINY_BLOB", value: 249)
!42 = !DIEnumerator(name: "MYSQL_TYPE_MEDIUM_BLOB", value: 250)
!43 = !DIEnumerator(name: "MYSQL_TYPE_LONG_BLOB", value: 251)
!44 = !DIEnumerator(name: "MYSQL_TYPE_BLOB", value: 252)
!45 = !DIEnumerator(name: "MYSQL_TYPE_VAR_STRING", value: 253)
!46 = !DIEnumerator(name: "MYSQL_TYPE_STRING", value: 254)
!47 = !DIEnumerator(name: "MYSQL_TYPE_GEOMETRY", value: 255)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mysql_status", file: !49, line: 256, baseType: !12, size: 32, elements: !50)
!49 = !DIFile(filename: "/usr/include/mysql/mysql.h", directory: "", checksumkind: CSK_MD5, checksum: "1247b3d6239b685fabf3391bf8ffe6e9")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MYSQL_STATUS_READY", value: 0)
!52 = !DIEnumerator(name: "MYSQL_STATUS_GET_RESULT", value: 1)
!53 = !DIEnumerator(name: "MYSQL_STATUS_USE_RESULT", value: 2)
!54 = !DIEnumerator(name: "MYSQL_STATUS_STATEMENT_GET_RESULT", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_resultset_metadata", file: !56, line: 1024, baseType: !12, size: 32, elements: !57)
!56 = !DIFile(filename: "/usr/include/mysql/mysql_com.h", directory: "", checksumkind: CSK_MD5, checksum: "948b54ebe3c9fc7d454d9a6494ddab54")
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "RESULTSET_METADATA_NONE", value: 0)
!59 = !DIEnumerator(name: "RESULTSET_METADATA_FULL", value: 1)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_mysql_stmt_state", file: !49, line: 586, baseType: !12, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "MYSQL_STMT_INIT_DONE", value: 1)
!63 = !DIEnumerator(name: "MYSQL_STMT_PREPARE_DONE", value: 2)
!64 = !DIEnumerator(name: "MYSQL_STMT_EXECUTE_DONE", value: 3)
!65 = !DIEnumerator(name: "MYSQL_STMT_FETCH_DONE", value: 4)
!66 = !{!67, !117, !118, !304, !78, !306, !401, !410, !98, !412, !96, !421}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db", file: !2, line: 33, size: 128, elements: !69)
!69 = !{!70, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !68, file: !2, line: 34, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !67}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !68, file: !2, line: 35, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !112, !114, !116}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt", file: !2, line: 27, size: 192, elements: !80)
!80 = !{!81, !104, !108}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !79, file: !2, line: 28, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !86, !88, !101}
!85 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_row", file: !90, line: 27, size: 192, elements: !91)
!90 = !DIFile(filename: "techempower/database.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b5199ce24ba11b1ee7482ccc6d0952b7")
!91 = !{!92, !99, !100}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !89, file: !90, line: 31, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !90, line: 28, size: 64, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !93, file: !90, line: 29, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !93, file: !90, line: 30, baseType: !98, size: 32)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !89, file: !90, line: 32, baseType: !4, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !89, file: !90, line: 33, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !79, file: !2, line: 29, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!85, !86, !88}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !79, file: !2, line: 30, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !78}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_mysql", file: !2, line: 40, size: 192, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !119, file: !2, line: 41, baseType: !68, size: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !119, file: !2, line: 42, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL", file: !49, line: 337, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL", file: !49, line: 299, size: 9280, elements: !126)
!126 = !{!127, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !182, !208, !211, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !278, !279, !280, !281, !282, !286, !296, !300, !301, !303}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !125, file: !49, line: 300, baseType: !128, size: 5312)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET", file: !56, line: 947, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NET", file: !56, line: 914, size: 5312, elements: !130)
!130 = !{!131, !134, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !165, !169}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "vio", scope: !129, file: !56, line: 915, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vio", file: !56, line: 894, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !129, file: !56, line: 916, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buff_end", scope: !129, file: !56, line: 916, baseType: !135, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !129, file: !56, line: 916, baseType: !135, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !129, file: !56, line: 916, baseType: !135, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !129, file: !56, line: 917, baseType: !141, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_socket", file: !49, line: 65, baseType: !98)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "remain_in_buf", scope: !129, file: !56, line: 923, baseType: !103, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !56, line: 923, baseType: !103, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buf_length", scope: !129, file: !56, line: 923, baseType: !103, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "where_b", scope: !129, file: !56, line: 923, baseType: !103, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet", scope: !129, file: !56, line: 924, baseType: !103, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !129, file: !56, line: 924, baseType: !103, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_nr", scope: !129, file: !56, line: 925, baseType: !12, size: 32, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "compress_pkt_nr", scope: !129, file: !56, line: 925, baseType: !12, size: 32, offset: 800)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !129, file: !56, line: 926, baseType: !12, size: 32, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !129, file: !56, line: 926, baseType: !12, size: 32, offset: 864)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !129, file: !56, line: 926, baseType: !12, size: 32, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fcntl", scope: !129, file: !56, line: 927, baseType: !98, size: 32, offset: 928)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "return_status", scope: !129, file: !56, line: 928, baseType: !155, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reading_or_writing", scope: !129, file: !56, line: 929, baseType: !136, size: 8, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "save_char", scope: !129, file: !56, line: 930, baseType: !136, size: 8, offset: 1032)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !129, file: !56, line: 931, baseType: !85, size: 8, offset: 1040)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !129, file: !56, line: 932, baseType: !12, size: 32, offset: 1056)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !129, file: !56, line: 933, baseType: !136, size: 8, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !129, file: !56, line: 935, baseType: !162, size: 4096, offset: 1096)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4096, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sqlstate", scope: !129, file: !56, line: 937, baseType: !166, size: 48, offset: 5192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 6)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !129, file: !56, line: 946, baseType: !117, size: 64, offset: 5248)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "connector_fd", scope: !125, file: !49, line: 301, baseType: !135, size: 64, offset: 5312)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5376)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5440)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5504)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5568)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "server_version", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5632)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "host_info", scope: !125, file: !49, line: 302, baseType: !96, size: 64, offset: 5696)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !125, file: !49, line: 303, baseType: !96, size: 64, offset: 5760)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !125, file: !49, line: 303, baseType: !96, size: 64, offset: 5824)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !125, file: !49, line: 304, baseType: !180, size: 64, offset: 5888)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHARSET_INFO", file: !49, line: 304, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !125, file: !49, line: 305, baseType: !183, size: 64, offset: 5952)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_FIELD", file: !49, line: 143, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_FIELD", file: !49, line: 121, size: 1024, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !49, line: 122, baseType: !96, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "org_name", scope: !185, file: !49, line: 123, baseType: !96, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !185, file: !49, line: 124, baseType: !96, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "org_table", scope: !185, file: !49, line: 125, baseType: !96, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !185, file: !49, line: 126, baseType: !96, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "catalog", scope: !185, file: !49, line: 127, baseType: !96, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !185, file: !49, line: 128, baseType: !96, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !185, file: !49, line: 129, baseType: !103, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !185, file: !49, line: 130, baseType: !103, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !185, file: !49, line: 131, baseType: !12, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "org_name_length", scope: !185, file: !49, line: 132, baseType: !12, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "table_length", scope: !185, file: !49, line: 133, baseType: !12, size: 32, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "org_table_length", scope: !185, file: !49, line: 134, baseType: !12, size: 32, offset: 672)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "db_length", scope: !185, file: !49, line: 135, baseType: !12, size: 32, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "catalog_length", scope: !185, file: !49, line: 136, baseType: !12, size: 32, offset: 736)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "def_length", scope: !185, file: !49, line: 137, baseType: !12, size: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !49, line: 138, baseType: !12, size: 32, offset: 800)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "decimals", scope: !185, file: !49, line: 139, baseType: !12, size: 32, offset: 832)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "charsetnr", scope: !185, file: !49, line: 140, baseType: !12, size: 32, offset: 864)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !185, file: !49, line: 141, baseType: !10, size: 32, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !185, file: !49, line: 142, baseType: !117, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "field_alloc", scope: !125, file: !49, line: 306, baseType: !209, size: 64, offset: 6016)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "MEM_ROOT", file: !49, line: 161, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "affected_rows", scope: !125, file: !49, line: 307, baseType: !212, size: 64, offset: 6080)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !213, line: 27, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !215, line: 45, baseType: !103)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "insert_id", scope: !125, file: !49, line: 308, baseType: !212, size: 64, offset: 6144)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "extra_info", scope: !125, file: !49, line: 309, baseType: !212, size: 64, offset: 6208)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !125, file: !49, line: 310, baseType: !103, size: 64, offset: 6272)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !125, file: !49, line: 311, baseType: !103, size: 64, offset: 6336)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !125, file: !49, line: 312, baseType: !12, size: 32, offset: 6400)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !125, file: !49, line: 313, baseType: !103, size: 64, offset: 6464)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "server_capabilities", scope: !125, file: !49, line: 313, baseType: !103, size: 64, offset: 6528)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !125, file: !49, line: 314, baseType: !12, size: 32, offset: 6592)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !125, file: !49, line: 315, baseType: !12, size: 32, offset: 6624)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "server_status", scope: !125, file: !49, line: 316, baseType: !12, size: 32, offset: 6656)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "server_language", scope: !125, file: !49, line: 317, baseType: !12, size: 32, offset: 6688)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "warning_count", scope: !125, file: !49, line: 318, baseType: !12, size: 32, offset: 6720)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !125, file: !49, line: 319, baseType: !229, size: 1920, offset: 6784)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options", file: !49, line: 225, size: 1920, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !265, !269, !273, !274, !275}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !229, file: !49, line: 226, baseType: !12, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !229, file: !49, line: 226, baseType: !12, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !229, file: !49, line: 226, baseType: !12, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !229, file: !49, line: 227, baseType: !12, size: 32, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !229, file: !49, line: 227, baseType: !12, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !229, file: !49, line: 228, baseType: !103, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !229, file: !49, line: 229, baseType: !96, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !229, file: !49, line: 229, baseType: !96, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !229, file: !49, line: 229, baseType: !96, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !229, file: !49, line: 229, baseType: !96, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !229, file: !49, line: 229, baseType: !96, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "init_commands", scope: !229, file: !49, line: 230, baseType: !243, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "Init_commands_array", file: !49, line: 230, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_file", scope: !229, file: !49, line: 231, baseType: !96, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_group", scope: !229, file: !49, line: 231, baseType: !96, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "charset_dir", scope: !229, file: !49, line: 231, baseType: !96, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "charset_name", scope: !229, file: !49, line: 231, baseType: !96, size: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_key", scope: !229, file: !49, line: 232, baseType: !96, size: 64, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert", scope: !229, file: !49, line: 233, baseType: !96, size: 64, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ca", scope: !229, file: !49, line: 234, baseType: !96, size: 64, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_capath", scope: !229, file: !49, line: 235, baseType: !96, size: 64, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cipher", scope: !229, file: !49, line: 236, baseType: !96, size: 64, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory_base_name", scope: !229, file: !49, line: 237, baseType: !96, size: 64, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "max_allowed_packet", scope: !229, file: !49, line: 238, baseType: !103, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !229, file: !49, line: 239, baseType: !85, size: 8, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "named_pipe", scope: !229, file: !49, line: 239, baseType: !85, size: 8, offset: 1352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bind_address", scope: !229, file: !49, line: 243, baseType: !96, size: 64, offset: 1408)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "report_data_truncation", scope: !229, file: !49, line: 245, baseType: !85, size: 8, offset: 1472)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_init", scope: !229, file: !49, line: 248, baseType: !261, size: 64, offset: 1536)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!98, !264, !114, !117}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_read", scope: !229, file: !49, line: 249, baseType: !266, size: 64, offset: 1600)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!98, !117, !96, !12}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_end", scope: !229, file: !49, line: 250, baseType: !270, size: 64, offset: 1664)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !117}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_error", scope: !229, file: !49, line: 251, baseType: !266, size: 64, offset: 1728)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_userdata", scope: !229, file: !49, line: 252, baseType: !117, size: 64, offset: 1792)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !229, file: !49, line: 253, baseType: !276, size: 64, offset: 1856)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options_extention", file: !49, line: 223, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !125, file: !49, line: 320, baseType: !48, size: 32, offset: 8704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "resultset_metadata", scope: !125, file: !49, line: 321, baseType: !55, size: 32, offset: 8736)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "free_me", scope: !125, file: !49, line: 322, baseType: !85, size: 8, offset: 8768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !125, file: !49, line: 323, baseType: !85, size: 8, offset: 8776)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scramble", scope: !125, file: !49, line: 326, baseType: !283, size: 168, offset: 8784)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 21)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "stmts", scope: !125, file: !49, line: 328, baseType: !287, size: 64, offset: 8960)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIST", file: !289, line: 39, baseType: !290)
!289 = !DIFile(filename: "/usr/include/mysql/my_list.h", directory: "", checksumkind: CSK_MD5, checksum: "2c916b19e4f514cea577a95404bf2fb6")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LIST", file: !289, line: 36, size: 192, elements: !291)
!291 = !{!292, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !289, line: 37, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !289, line: 37, baseType: !293, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !290, file: !289, line: 38, baseType: !117, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !125, file: !49, line: 329, baseType: !297, size: 64, offset: 9024)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_METHODS", file: !49, line: 296, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "thd", scope: !125, file: !49, line: 330, baseType: !117, size: 64, offset: 9088)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_owner", scope: !125, file: !49, line: 335, baseType: !302, size: 64, offset: 9152)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !125, file: !49, line: 336, baseType: !117, size: 64, offset: 9216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt_mysql", file: !2, line: 45, size: 448, elements: !308)
!308 = !{!309, !310, !398, !399, !400}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !307, file: !2, line: 46, baseType: !79, size: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !307, file: !2, line: 47, baseType: !311, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_STMT", file: !49, line: 726, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_STMT", file: !49, line: 683, size: 5632, elements: !314)
!314 = !{!315, !316, !317, !318, !352, !353, !354, !372, !373, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mem_root", scope: !313, file: !49, line: 684, baseType: !209, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !313, file: !49, line: 685, baseType: !288, size: 192, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mysql", scope: !313, file: !49, line: 686, baseType: !123, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !313, file: !49, line: 687, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_BIND", file: !49, line: 678, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_BIND", file: !49, line: 656, size: 896, elements: !322)
!322 = !{!323, !325, !326, !327, !328, !329, !335, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !321, file: !49, line: 657, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_null", scope: !321, file: !49, line: 658, baseType: !302, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !321, file: !49, line: 659, baseType: !117, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !321, file: !49, line: 661, baseType: !302, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "row_ptr", scope: !321, file: !49, line: 662, baseType: !135, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "store_param_func", scope: !321, file: !49, line: 663, baseType: !330, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333, !334}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_result", scope: !321, file: !49, line: 664, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !334, !183, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "skip_result", scope: !321, file: !49, line: 665, baseType: !336, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !321, file: !49, line: 667, baseType: !103, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !321, file: !49, line: 668, baseType: !103, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "length_value", scope: !321, file: !49, line: 669, baseType: !103, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "param_number", scope: !321, file: !49, line: 670, baseType: !12, size: 32, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pack_length", scope: !321, file: !49, line: 671, baseType: !12, size: 32, offset: 736)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_type", scope: !321, file: !49, line: 672, baseType: !10, size: 32, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "error_value", scope: !321, file: !49, line: 673, baseType: !85, size: 8, offset: 800)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_unsigned", scope: !321, file: !49, line: 674, baseType: !85, size: 8, offset: 808)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "long_data_used", scope: !321, file: !49, line: 675, baseType: !85, size: 8, offset: 816)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_null_value", scope: !321, file: !49, line: 676, baseType: !85, size: 8, offset: 824)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !321, file: !49, line: 677, baseType: !117, size: 64, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !313, file: !49, line: 688, baseType: !319, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !313, file: !49, line: 689, baseType: !183, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !313, file: !49, line: 690, baseType: !355, size: 256, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_DATA", file: !49, line: 168, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_DATA", file: !49, line: 163, size: 256, elements: !357)
!357 = !{!358, !369, !370, !371}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !356, file: !49, line: 164, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROWS", file: !49, line: 157, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_ROWS", file: !49, line: 153, size: 192, elements: !362)
!362 = !{!363, !365, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !49, line: 154, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !361, file: !49, line: 155, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROW", file: !49, line: 145, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !361, file: !49, line: 156, baseType: !103, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !356, file: !49, line: 165, baseType: !209, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !356, file: !49, line: 166, baseType: !212, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !356, file: !49, line: 167, baseType: !12, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_cursor", scope: !313, file: !49, line: 691, baseType: !359, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "read_row_func", scope: !313, file: !49, line: 696, baseType: !374, size: 64, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!98, !377, !339}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "affected_rows", scope: !313, file: !49, line: 698, baseType: !212, size: 64, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "insert_id", scope: !313, file: !49, line: 699, baseType: !212, size: 64, offset: 960)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_id", scope: !313, file: !49, line: 700, baseType: !103, size: 64, offset: 1024)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !49, line: 701, baseType: !103, size: 64, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_rows", scope: !313, file: !49, line: 702, baseType: !103, size: 64, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "server_status", scope: !313, file: !49, line: 707, baseType: !12, size: 32, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !313, file: !49, line: 708, baseType: !12, size: 32, offset: 1248)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !313, file: !49, line: 709, baseType: !12, size: 32, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !313, file: !49, line: 710, baseType: !12, size: 32, offset: 1312)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !49, line: 711, baseType: !60, size: 32, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !313, file: !49, line: 712, baseType: !162, size: 4096, offset: 1376)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sqlstate", scope: !313, file: !49, line: 713, baseType: !166, size: 48, offset: 5472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "send_types_to_server", scope: !313, file: !49, line: 715, baseType: !85, size: 8, offset: 5520)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "bind_param_done", scope: !313, file: !49, line: 716, baseType: !85, size: 8, offset: 5528)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bind_result_done", scope: !313, file: !49, line: 717, baseType: !136, size: 8, offset: 5536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_cancelled", scope: !313, file: !49, line: 719, baseType: !85, size: 8, offset: 5544)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "update_max_length", scope: !313, file: !49, line: 724, baseType: !85, size: 8, offset: 5552)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !313, file: !49, line: 725, baseType: !396, size: 64, offset: 5568)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_STMT_EXT", file: !49, line: 680, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "param_bind", scope: !307, file: !2, line: 48, baseType: !319, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_bind", scope: !307, file: !2, line: 49, baseType: !319, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "must_execute_again", scope: !307, file: !2, line: 50, baseType: !85, size: 8, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_sqlite", file: !2, line: 219, size: 192, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !402, file: !2, line: 220, baseType: !68, size: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sqlite", scope: !402, file: !2, line: 221, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !408, line: 272, baseType: !409)
!408 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "", checksumkind: CSK_MD5, checksum: "a588c4681dc2c3e9f3424818d7f39d50")
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !408, line: 272, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt_sqlite", file: !2, line: 224, size: 256, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !414, file: !2, line: 225, baseType: !79, size: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sqlite", scope: !414, file: !2, line: 226, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !408, line: 3892, baseType: !420)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !408, line: 3892, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!422 = !{!0}
!423 = !{i32 7, !"Dwarf Version", i32 5}
!424 = !{i32 2, !"Debug Info Version", i32 3}
!425 = !{i32 1, !"wchar_size", i32 4}
!426 = !{i32 8, !"PIC Level", i32 2}
!427 = !{i32 7, !"PIE Level", i32 2}
!428 = !{i32 7, !"uwtable", i32 2}
!429 = !{i32 7, !"frame-pointer", i32 2}
!430 = !{!"clang version 16.0.0"}
!431 = distinct !DISubprogram(name: "db_connect_mysql", scope: !2, file: !2, line: 186, type: !432, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!67, !114, !114, !114, !114}
!434 = !{}
!435 = !DILocalVariable(name: "host", arg: 1, scope: !431, file: !2, line: 186, type: !114)
!436 = !DILocation(line: 186, column: 41, scope: !431)
!437 = !DILocalVariable(name: "user", arg: 2, scope: !431, file: !2, line: 186, type: !114)
!438 = !DILocation(line: 186, column: 59, scope: !431)
!439 = !DILocalVariable(name: "pass", arg: 3, scope: !431, file: !2, line: 186, type: !114)
!440 = !DILocation(line: 186, column: 77, scope: !431)
!441 = !DILocalVariable(name: "database", arg: 4, scope: !431, file: !2, line: 187, type: !114)
!442 = !DILocation(line: 187, column: 21, scope: !431)
!443 = !DILocalVariable(name: "db_mysql", scope: !431, file: !2, line: 189, type: !118)
!444 = !DILocation(line: 189, column: 22, scope: !431)
!445 = !DILocation(line: 189, column: 33, scope: !431)
!446 = !DILocation(line: 191, column: 10, scope: !447)
!447 = distinct !DILexicalBlock(scope: !431, file: !2, line: 191, column: 9)
!448 = !DILocation(line: 191, column: 9, scope: !431)
!449 = !DILocation(line: 192, column: 9, scope: !447)
!450 = !DILocation(line: 194, column: 21, scope: !431)
!451 = !DILocation(line: 194, column: 5, scope: !431)
!452 = !DILocation(line: 194, column: 15, scope: !431)
!453 = !DILocation(line: 194, column: 19, scope: !431)
!454 = !DILocation(line: 195, column: 10, scope: !455)
!455 = distinct !DILexicalBlock(scope: !431, file: !2, line: 195, column: 9)
!456 = !DILocation(line: 195, column: 20, scope: !455)
!457 = !DILocation(line: 195, column: 9, scope: !431)
!458 = !DILocation(line: 196, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !2, line: 195, column: 25)
!460 = !DILocation(line: 196, column: 9, scope: !459)
!461 = !DILocation(line: 197, column: 9, scope: !459)
!462 = !DILocation(line: 200, column: 29, scope: !463)
!463 = distinct !DILexicalBlock(scope: !431, file: !2, line: 200, column: 9)
!464 = !DILocation(line: 200, column: 39, scope: !463)
!465 = !DILocation(line: 200, column: 44, scope: !463)
!466 = !DILocation(line: 200, column: 50, scope: !463)
!467 = !DILocation(line: 200, column: 56, scope: !463)
!468 = !DILocation(line: 200, column: 62, scope: !463)
!469 = !DILocation(line: 200, column: 10, scope: !463)
!470 = !DILocation(line: 200, column: 9, scope: !431)
!471 = !DILocation(line: 201, column: 9, scope: !463)
!472 = !DILocation(line: 203, column: 33, scope: !473)
!473 = distinct !DILexicalBlock(scope: !431, file: !2, line: 203, column: 9)
!474 = !DILocation(line: 203, column: 43, scope: !473)
!475 = !DILocation(line: 203, column: 9, scope: !473)
!476 = !DILocation(line: 203, column: 9, scope: !431)
!477 = !DILocation(line: 204, column: 9, scope: !473)
!478 = !DILocation(line: 206, column: 5, scope: !431)
!479 = !DILocation(line: 206, column: 15, scope: !431)
!480 = !DILocation(line: 206, column: 20, scope: !431)
!481 = !DILocation(line: 206, column: 31, scope: !431)
!482 = !DILocation(line: 207, column: 5, scope: !431)
!483 = !DILocation(line: 207, column: 15, scope: !431)
!484 = !DILocation(line: 207, column: 20, scope: !431)
!485 = !DILocation(line: 207, column: 28, scope: !431)
!486 = !DILocation(line: 209, column: 25, scope: !431)
!487 = !DILocation(line: 209, column: 5, scope: !431)
!488 = !DILabel(scope: !431, name: "error", file: !2, line: 211)
!489 = !DILocation(line: 211, column: 1, scope: !431)
!490 = !DILocation(line: 212, column: 17, scope: !431)
!491 = !DILocation(line: 212, column: 27, scope: !431)
!492 = !DILocation(line: 212, column: 5, scope: !431)
!493 = !DILocation(line: 213, column: 10, scope: !431)
!494 = !DILocation(line: 213, column: 5, scope: !431)
!495 = !DILocation(line: 214, column: 5, scope: !431)
!496 = !DILocation(line: 215, column: 1, scope: !431)
!497 = distinct !DISubprogram(name: "db_disconnect_mysql", scope: !2, file: !2, line: 178, type: !72, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!498 = !DILocalVariable(name: "db", arg: 1, scope: !497, file: !2, line: 178, type: !67)
!499 = !DILocation(line: 178, column: 44, scope: !497)
!500 = !DILocalVariable(name: "db_mysql", scope: !497, file: !2, line: 180, type: !118)
!501 = !DILocation(line: 180, column: 22, scope: !497)
!502 = !DILocation(line: 180, column: 52, scope: !497)
!503 = !DILocation(line: 182, column: 17, scope: !497)
!504 = !DILocation(line: 182, column: 27, scope: !497)
!505 = !DILocation(line: 182, column: 5, scope: !497)
!506 = !DILocation(line: 183, column: 10, scope: !497)
!507 = !DILocation(line: 183, column: 5, scope: !497)
!508 = !DILocation(line: 184, column: 1, scope: !497)
!509 = distinct !DISubprogram(name: "db_prepare_mysql", scope: !2, file: !2, line: 147, type: !76, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!510 = !DILocalVariable(name: "db", arg: 1, scope: !509, file: !2, line: 147, type: !112)
!511 = !DILocation(line: 147, column: 58, scope: !509)
!512 = !DILocalVariable(name: "sql", arg: 2, scope: !509, file: !2, line: 147, type: !114)
!513 = !DILocation(line: 147, column: 74, scope: !509)
!514 = !DILocalVariable(name: "sql_len", arg: 3, scope: !509, file: !2, line: 148, type: !116)
!515 = !DILocation(line: 148, column: 22, scope: !509)
!516 = !DILocalVariable(name: "db_mysql", scope: !509, file: !2, line: 150, type: !304)
!517 = !DILocation(line: 150, column: 28, scope: !509)
!518 = !DILocation(line: 150, column: 64, scope: !509)
!519 = !DILocalVariable(name: "stmt_mysql", scope: !509, file: !2, line: 151, type: !306)
!520 = !DILocation(line: 151, column: 27, scope: !509)
!521 = !DILocation(line: 151, column: 40, scope: !509)
!522 = !DILocation(line: 153, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !509, file: !2, line: 153, column: 9)
!524 = !DILocation(line: 153, column: 9, scope: !509)
!525 = !DILocation(line: 154, column: 9, scope: !523)
!526 = !DILocation(line: 156, column: 40, scope: !509)
!527 = !DILocation(line: 156, column: 50, scope: !509)
!528 = !DILocation(line: 156, column: 24, scope: !509)
!529 = !DILocation(line: 156, column: 5, scope: !509)
!530 = !DILocation(line: 156, column: 17, scope: !509)
!531 = !DILocation(line: 156, column: 22, scope: !509)
!532 = !DILocation(line: 157, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !509, file: !2, line: 157, column: 9)
!534 = !DILocation(line: 157, column: 22, scope: !533)
!535 = !DILocation(line: 157, column: 9, scope: !509)
!536 = !DILocation(line: 158, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !2, line: 157, column: 28)
!538 = !DILocation(line: 158, column: 9, scope: !537)
!539 = !DILocation(line: 159, column: 9, scope: !537)
!540 = !DILocation(line: 162, column: 28, scope: !541)
!541 = distinct !DILexicalBlock(scope: !509, file: !2, line: 162, column: 9)
!542 = !DILocation(line: 162, column: 40, scope: !541)
!543 = !DILocation(line: 162, column: 46, scope: !541)
!544 = !DILocation(line: 162, column: 51, scope: !541)
!545 = !DILocation(line: 162, column: 9, scope: !541)
!546 = !DILocation(line: 162, column: 9, scope: !509)
!547 = !DILocation(line: 163, column: 26, scope: !548)
!548 = distinct !DILexicalBlock(scope: !541, file: !2, line: 162, column: 61)
!549 = !DILocation(line: 163, column: 38, scope: !548)
!550 = !DILocation(line: 163, column: 9, scope: !548)
!551 = !DILocation(line: 164, column: 14, scope: !548)
!552 = !DILocation(line: 164, column: 9, scope: !548)
!553 = !DILocation(line: 165, column: 9, scope: !548)
!554 = !DILocation(line: 168, column: 5, scope: !509)
!555 = !DILocation(line: 168, column: 17, scope: !509)
!556 = !DILocation(line: 168, column: 22, scope: !509)
!557 = !DILocation(line: 168, column: 27, scope: !509)
!558 = !DILocation(line: 169, column: 5, scope: !509)
!559 = !DILocation(line: 169, column: 17, scope: !509)
!560 = !DILocation(line: 169, column: 22, scope: !509)
!561 = !DILocation(line: 169, column: 27, scope: !509)
!562 = !DILocation(line: 170, column: 5, scope: !509)
!563 = !DILocation(line: 170, column: 17, scope: !509)
!564 = !DILocation(line: 170, column: 22, scope: !509)
!565 = !DILocation(line: 170, column: 31, scope: !509)
!566 = !DILocation(line: 171, column: 5, scope: !509)
!567 = !DILocation(line: 171, column: 17, scope: !509)
!568 = !DILocation(line: 171, column: 29, scope: !509)
!569 = !DILocation(line: 172, column: 5, scope: !509)
!570 = !DILocation(line: 172, column: 17, scope: !509)
!571 = !DILocation(line: 172, column: 28, scope: !509)
!572 = !DILocation(line: 173, column: 5, scope: !509)
!573 = !DILocation(line: 173, column: 17, scope: !509)
!574 = !DILocation(line: 173, column: 36, scope: !509)
!575 = !DILocation(line: 175, column: 29, scope: !509)
!576 = !DILocation(line: 175, column: 5, scope: !509)
!577 = !DILocation(line: 176, column: 1, scope: !509)
!578 = distinct !DISubprogram(name: "db_connect_sqlite", scope: !2, file: !2, line: 317, type: !579, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!579 = !DISubroutineType(types: !580)
!580 = !{!67, !114, !85, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!582 = !DILocalVariable(name: "path", arg: 1, scope: !578, file: !2, line: 317, type: !114)
!583 = !DILocation(line: 317, column: 42, scope: !578)
!584 = !DILocalVariable(name: "read_only", arg: 2, scope: !578, file: !2, line: 317, type: !85)
!585 = !DILocation(line: 317, column: 53, scope: !578)
!586 = !DILocalVariable(name: "pragmas", arg: 3, scope: !578, file: !2, line: 317, type: !581)
!587 = !DILocation(line: 317, column: 76, scope: !578)
!588 = !DILocalVariable(name: "db_sqlite", scope: !578, file: !2, line: 319, type: !401)
!589 = !DILocation(line: 319, column: 23, scope: !578)
!590 = !DILocation(line: 319, column: 35, scope: !578)
!591 = !DILocation(line: 321, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !578, file: !2, line: 321, column: 9)
!593 = !DILocation(line: 321, column: 9, scope: !578)
!594 = !DILocation(line: 322, column: 9, scope: !592)
!595 = !DILocalVariable(name: "flags", scope: !578, file: !2, line: 324, type: !98)
!596 = !DILocation(line: 324, column: 9, scope: !578)
!597 = !DILocation(line: 324, column: 17, scope: !578)
!598 = !DILocalVariable(name: "ret", scope: !578, file: !2, line: 325, type: !98)
!599 = !DILocation(line: 325, column: 9, scope: !578)
!600 = !DILocation(line: 325, column: 31, scope: !578)
!601 = !DILocation(line: 325, column: 38, scope: !578)
!602 = !DILocation(line: 325, column: 49, scope: !578)
!603 = !DILocation(line: 325, column: 57, scope: !578)
!604 = !DILocation(line: 325, column: 15, scope: !578)
!605 = !DILocation(line: 326, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !578, file: !2, line: 326, column: 9)
!607 = !DILocation(line: 326, column: 13, scope: !606)
!608 = !DILocation(line: 326, column: 9, scope: !578)
!609 = !DILocation(line: 327, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !2, line: 326, column: 27)
!611 = !DILocation(line: 327, column: 9, scope: !610)
!612 = !DILocation(line: 328, column: 9, scope: !610)
!613 = !DILocation(line: 331, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !578, file: !2, line: 331, column: 9)
!615 = !DILocation(line: 331, column: 9, scope: !578)
!616 = !DILocalVariable(name: "p", scope: !617, file: !2, line: 332, type: !101)
!617 = distinct !DILexicalBlock(scope: !618, file: !2, line: 332, column: 9)
!618 = distinct !DILexicalBlock(scope: !614, file: !2, line: 331, column: 18)
!619 = !DILocation(line: 332, column: 21, scope: !617)
!620 = !DILocation(line: 332, column: 14, scope: !617)
!621 = !DILocation(line: 332, column: 28, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !2, line: 332, column: 9)
!623 = !DILocation(line: 332, column: 36, scope: !622)
!624 = !DILocation(line: 332, column: 9, scope: !617)
!625 = !DILocation(line: 333, column: 26, scope: !622)
!626 = !DILocation(line: 333, column: 37, scope: !622)
!627 = !DILocation(line: 333, column: 45, scope: !622)
!628 = !DILocation(line: 333, column: 53, scope: !622)
!629 = !DILocation(line: 333, column: 13, scope: !622)
!630 = !DILocation(line: 332, column: 41, scope: !622)
!631 = !DILocation(line: 332, column: 9, scope: !622)
!632 = distinct !{!632, !624, !633, !634}
!633 = !DILocation(line: 333, column: 73, scope: !617)
!634 = !{!"llvm.loop.mustprogress"}
!635 = !DILocation(line: 334, column: 5, scope: !618)
!636 = !DILocation(line: 336, column: 5, scope: !578)
!637 = !DILocation(line: 336, column: 16, scope: !578)
!638 = !DILocation(line: 336, column: 21, scope: !578)
!639 = !DILocation(line: 336, column: 32, scope: !578)
!640 = !DILocation(line: 337, column: 5, scope: !578)
!641 = !DILocation(line: 337, column: 16, scope: !578)
!642 = !DILocation(line: 337, column: 21, scope: !578)
!643 = !DILocation(line: 337, column: 29, scope: !578)
!644 = !DILocation(line: 339, column: 25, scope: !578)
!645 = !DILocation(line: 339, column: 5, scope: !578)
!646 = !DILocation(line: 340, column: 1, scope: !578)
!647 = distinct !DISubprogram(name: "db_disconnect_sqlite", scope: !2, file: !2, line: 309, type: !72, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!648 = !DILocalVariable(name: "db", arg: 1, scope: !647, file: !2, line: 309, type: !67)
!649 = !DILocation(line: 309, column: 45, scope: !647)
!650 = !DILocalVariable(name: "db_sqlite", scope: !647, file: !2, line: 311, type: !401)
!651 = !DILocation(line: 311, column: 23, scope: !647)
!652 = !DILocation(line: 311, column: 55, scope: !647)
!653 = !DILocation(line: 313, column: 19, scope: !647)
!654 = !DILocation(line: 313, column: 30, scope: !647)
!655 = !DILocation(line: 313, column: 5, scope: !647)
!656 = !DILocation(line: 314, column: 10, scope: !647)
!657 = !DILocation(line: 314, column: 5, scope: !647)
!658 = !DILocation(line: 315, column: 1, scope: !647)
!659 = distinct !DISubprogram(name: "db_prepare_sqlite", scope: !2, file: !2, line: 287, type: !76, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!660 = !DILocalVariable(name: "db", arg: 1, scope: !659, file: !2, line: 287, type: !112)
!661 = !DILocation(line: 287, column: 59, scope: !659)
!662 = !DILocalVariable(name: "sql", arg: 2, scope: !659, file: !2, line: 287, type: !114)
!663 = !DILocation(line: 287, column: 75, scope: !659)
!664 = !DILocalVariable(name: "sql_len", arg: 3, scope: !659, file: !2, line: 288, type: !116)
!665 = !DILocation(line: 288, column: 22, scope: !659)
!666 = !DILocalVariable(name: "db_sqlite", scope: !659, file: !2, line: 290, type: !410)
!667 = !DILocation(line: 290, column: 29, scope: !659)
!668 = !DILocation(line: 290, column: 67, scope: !659)
!669 = !DILocalVariable(name: "stmt_sqlite", scope: !659, file: !2, line: 291, type: !421)
!670 = !DILocation(line: 291, column: 28, scope: !659)
!671 = !DILocation(line: 291, column: 42, scope: !659)
!672 = !DILocation(line: 293, column: 10, scope: !673)
!673 = distinct !DILexicalBlock(scope: !659, file: !2, line: 293, column: 9)
!674 = !DILocation(line: 293, column: 9, scope: !659)
!675 = !DILocation(line: 294, column: 9, scope: !673)
!676 = !DILocalVariable(name: "ret", scope: !659, file: !2, line: 296, type: !98)
!677 = !DILocation(line: 296, column: 9, scope: !659)
!678 = !DILocation(line: 296, column: 31, scope: !659)
!679 = !DILocation(line: 296, column: 42, scope: !659)
!680 = !DILocation(line: 296, column: 50, scope: !659)
!681 = !DILocation(line: 296, column: 60, scope: !659)
!682 = !DILocation(line: 296, column: 55, scope: !659)
!683 = !DILocation(line: 296, column: 70, scope: !659)
!684 = !DILocation(line: 296, column: 83, scope: !659)
!685 = !DILocation(line: 296, column: 15, scope: !659)
!686 = !DILocation(line: 297, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !659, file: !2, line: 297, column: 9)
!688 = !DILocation(line: 297, column: 13, scope: !687)
!689 = !DILocation(line: 297, column: 9, scope: !659)
!690 = !DILocation(line: 298, column: 14, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !2, line: 297, column: 27)
!692 = !DILocation(line: 298, column: 9, scope: !691)
!693 = !DILocation(line: 299, column: 9, scope: !691)
!694 = !DILocation(line: 302, column: 5, scope: !659)
!695 = !DILocation(line: 302, column: 18, scope: !659)
!696 = !DILocation(line: 302, column: 23, scope: !659)
!697 = !DILocation(line: 302, column: 28, scope: !659)
!698 = !DILocation(line: 303, column: 5, scope: !659)
!699 = !DILocation(line: 303, column: 18, scope: !659)
!700 = !DILocation(line: 303, column: 23, scope: !659)
!701 = !DILocation(line: 303, column: 28, scope: !659)
!702 = !DILocation(line: 304, column: 5, scope: !659)
!703 = !DILocation(line: 304, column: 18, scope: !659)
!704 = !DILocation(line: 304, column: 23, scope: !659)
!705 = !DILocation(line: 304, column: 32, scope: !659)
!706 = !DILocation(line: 306, column: 30, scope: !659)
!707 = !DILocation(line: 306, column: 5, scope: !659)
!708 = !DILocation(line: 307, column: 1, scope: !659)
!709 = distinct !DISubprogram(name: "db_stmt_bind", scope: !2, file: !2, line: 344, type: !83, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!710 = !DILocalVariable(name: "stmt", arg: 1, scope: !709, file: !2, line: 344, type: !86)
!711 = !DILocation(line: 344, column: 48, scope: !709)
!712 = !DILocalVariable(name: "rows", arg: 2, scope: !709, file: !2, line: 344, type: !88)
!713 = !DILocation(line: 344, column: 69, scope: !709)
!714 = !DILocalVariable(name: "n_rows", arg: 3, scope: !709, file: !2, line: 344, type: !101)
!715 = !DILocation(line: 344, column: 82, scope: !709)
!716 = !DILocation(line: 346, column: 12, scope: !709)
!717 = !DILocation(line: 346, column: 18, scope: !709)
!718 = !DILocation(line: 346, column: 23, scope: !709)
!719 = !DILocation(line: 346, column: 29, scope: !709)
!720 = !DILocation(line: 346, column: 35, scope: !709)
!721 = !DILocation(line: 346, column: 5, scope: !709)
!722 = distinct !DISubprogram(name: "db_stmt_step", scope: !2, file: !2, line: 349, type: !106, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!723 = !DILocalVariable(name: "stmt", arg: 1, scope: !722, file: !2, line: 349, type: !86)
!724 = !DILocation(line: 349, column: 48, scope: !722)
!725 = !DILocalVariable(name: "row", arg: 2, scope: !722, file: !2, line: 349, type: !88)
!726 = !DILocation(line: 349, column: 69, scope: !722)
!727 = !DILocation(line: 351, column: 12, scope: !722)
!728 = !DILocation(line: 351, column: 18, scope: !722)
!729 = !DILocation(line: 351, column: 23, scope: !722)
!730 = !DILocation(line: 351, column: 29, scope: !722)
!731 = !DILocation(line: 351, column: 5, scope: !722)
!732 = distinct !DISubprogram(name: "db_stmt_finalize", scope: !2, file: !2, line: 354, type: !110, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!733 = !DILocalVariable(name: "stmt", arg: 1, scope: !732, file: !2, line: 354, type: !78)
!734 = !DILocation(line: 354, column: 46, scope: !732)
!735 = !DILocation(line: 356, column: 5, scope: !732)
!736 = !DILocation(line: 356, column: 11, scope: !732)
!737 = !DILocation(line: 356, column: 20, scope: !732)
!738 = !DILocation(line: 357, column: 1, scope: !732)
!739 = distinct !DISubprogram(name: "db_disconnect", scope: !2, file: !2, line: 359, type: !72, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!740 = !DILocalVariable(name: "db", arg: 1, scope: !739, file: !2, line: 359, type: !67)
!741 = !DILocation(line: 359, column: 38, scope: !739)
!742 = !DILocation(line: 361, column: 5, scope: !739)
!743 = !DILocation(line: 361, column: 9, scope: !739)
!744 = !DILocation(line: 361, column: 20, scope: !739)
!745 = !DILocation(line: 362, column: 1, scope: !739)
!746 = distinct !DISubprogram(name: "db_prepare_stmt", scope: !2, file: !2, line: 364, type: !76, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !434)
!747 = !DILocalVariable(name: "db", arg: 1, scope: !746, file: !2, line: 364, type: !112)
!748 = !DILocation(line: 364, column: 57, scope: !746)
!749 = !DILocalVariable(name: "sql", arg: 2, scope: !746, file: !2, line: 364, type: !114)
!750 = !DILocation(line: 364, column: 73, scope: !746)
!751 = !DILocalVariable(name: "sql_len", arg: 3, scope: !746, file: !2, line: 365, type: !116)
!752 = !DILocation(line: 365, column: 18, scope: !746)
!753 = !DILocation(line: 367, column: 12, scope: !746)
!754 = !DILocation(line: 367, column: 16, scope: !746)
!755 = !DILocation(line: 367, column: 24, scope: !746)
!756 = !DILocation(line: 367, column: 28, scope: !746)
!757 = !DILocation(line: 367, column: 33, scope: !746)
!758 = !DILocation(line: 367, column: 5, scope: !746)
!759 = distinct !DISubprogram(name: "db_stmt_bind_mysql", scope: !2, file: !2, line: 53, type: !83, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!760 = !DILocalVariable(name: "stmt", arg: 1, scope: !759, file: !2, line: 53, type: !86)
!761 = !DILocation(line: 53, column: 54, scope: !759)
!762 = !DILocalVariable(name: "rows", arg: 2, scope: !759, file: !2, line: 54, type: !88)
!763 = !DILocation(line: 54, column: 24, scope: !759)
!764 = !DILocalVariable(name: "n_rows", arg: 3, scope: !759, file: !2, line: 54, type: !101)
!765 = !DILocation(line: 54, column: 37, scope: !759)
!766 = !DILocalVariable(name: "stmt_mysql", scope: !759, file: !2, line: 56, type: !306)
!767 = !DILocation(line: 56, column: 27, scope: !759)
!768 = !DILocation(line: 56, column: 64, scope: !759)
!769 = !DILocation(line: 58, column: 5, scope: !759)
!770 = !DILocation(line: 58, column: 17, scope: !759)
!771 = !DILocation(line: 58, column: 36, scope: !759)
!772 = !DILocation(line: 60, column: 10, scope: !773)
!773 = distinct !DILexicalBlock(scope: !759, file: !2, line: 60, column: 9)
!774 = !DILocation(line: 60, column: 22, scope: !773)
!775 = !DILocation(line: 60, column: 9, scope: !759)
!776 = !DILocation(line: 61, column: 41, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 60, column: 34)
!778 = !DILocation(line: 61, column: 34, scope: !777)
!779 = !DILocation(line: 61, column: 9, scope: !777)
!780 = !DILocation(line: 61, column: 21, scope: !777)
!781 = !DILocation(line: 61, column: 32, scope: !777)
!782 = !DILocation(line: 62, column: 14, scope: !783)
!783 = distinct !DILexicalBlock(scope: !777, file: !2, line: 62, column: 13)
!784 = !DILocation(line: 62, column: 26, scope: !783)
!785 = !DILocation(line: 62, column: 13, scope: !777)
!786 = !DILocation(line: 63, column: 13, scope: !783)
!787 = !DILocation(line: 64, column: 5, scope: !777)
!788 = !DILocation(line: 65, column: 26, scope: !789)
!789 = distinct !DILexicalBlock(scope: !773, file: !2, line: 64, column: 12)
!790 = !DILocation(line: 65, column: 38, scope: !789)
!791 = !DILocation(line: 65, column: 9, scope: !789)
!792 = !DILocalVariable(name: "row", scope: !793, file: !2, line: 68, type: !101)
!793 = distinct !DILexicalBlock(scope: !759, file: !2, line: 68, column: 5)
!794 = !DILocation(line: 68, column: 17, scope: !793)
!795 = !DILocation(line: 68, column: 10, scope: !793)
!796 = !DILocation(line: 68, column: 26, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !2, line: 68, column: 5)
!798 = !DILocation(line: 68, column: 32, scope: !797)
!799 = !DILocation(line: 68, column: 30, scope: !797)
!800 = !DILocation(line: 68, column: 5, scope: !793)
!801 = !DILocation(line: 69, column: 13, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !2, line: 69, column: 13)
!803 = distinct !DILexicalBlock(scope: !797, file: !2, line: 68, column: 47)
!804 = !DILocation(line: 69, column: 18, scope: !802)
!805 = !DILocation(line: 69, column: 23, scope: !802)
!806 = !DILocation(line: 69, column: 28, scope: !802)
!807 = !DILocation(line: 69, column: 13, scope: !803)
!808 = !DILocation(line: 69, column: 37, scope: !802)
!809 = !DILocalVariable(name: "param", scope: !803, file: !2, line: 71, type: !319)
!810 = !DILocation(line: 71, column: 21, scope: !803)
!811 = !DILocation(line: 71, column: 30, scope: !803)
!812 = !DILocation(line: 71, column: 42, scope: !803)
!813 = !DILocation(line: 71, column: 53, scope: !803)
!814 = !DILocation(line: 72, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !803, file: !2, line: 72, column: 13)
!816 = !DILocation(line: 72, column: 18, scope: !815)
!817 = !DILocation(line: 72, column: 23, scope: !815)
!818 = !DILocation(line: 72, column: 28, scope: !815)
!819 = !DILocation(line: 72, column: 13, scope: !803)
!820 = !DILocation(line: 73, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !815, file: !2, line: 72, column: 36)
!822 = !DILocation(line: 73, column: 20, scope: !821)
!823 = !DILocation(line: 73, column: 32, scope: !821)
!824 = !DILocation(line: 74, column: 29, scope: !821)
!825 = !DILocation(line: 74, column: 34, scope: !821)
!826 = !DILocation(line: 74, column: 39, scope: !821)
!827 = !DILocation(line: 74, column: 41, scope: !821)
!828 = !DILocation(line: 74, column: 13, scope: !821)
!829 = !DILocation(line: 74, column: 20, scope: !821)
!830 = !DILocation(line: 74, column: 27, scope: !821)
!831 = !DILocation(line: 75, column: 9, scope: !821)
!832 = !DILocation(line: 75, column: 20, scope: !833)
!833 = distinct !DILexicalBlock(scope: !815, file: !2, line: 75, column: 20)
!834 = !DILocation(line: 75, column: 25, scope: !833)
!835 = !DILocation(line: 75, column: 30, scope: !833)
!836 = !DILocation(line: 75, column: 35, scope: !833)
!837 = !DILocation(line: 75, column: 20, scope: !815)
!838 = !DILocation(line: 76, column: 13, scope: !839)
!839 = distinct !DILexicalBlock(scope: !833, file: !2, line: 75, column: 43)
!840 = !DILocation(line: 76, column: 20, scope: !839)
!841 = !DILocation(line: 76, column: 32, scope: !839)
!842 = !DILocation(line: 77, column: 30, scope: !839)
!843 = !DILocation(line: 77, column: 35, scope: !839)
!844 = !DILocation(line: 77, column: 40, scope: !839)
!845 = !DILocation(line: 77, column: 13, scope: !839)
!846 = !DILocation(line: 77, column: 20, scope: !839)
!847 = !DILocation(line: 77, column: 27, scope: !839)
!848 = !DILocation(line: 78, column: 9, scope: !839)
!849 = !DILocation(line: 79, column: 9, scope: !803)
!850 = !DILocation(line: 79, column: 16, scope: !803)
!851 = !DILocation(line: 79, column: 24, scope: !803)
!852 = !DILocation(line: 80, column: 9, scope: !803)
!853 = !DILocation(line: 80, column: 16, scope: !803)
!854 = !DILocation(line: 80, column: 23, scope: !803)
!855 = !DILocation(line: 81, column: 5, scope: !803)
!856 = !DILocation(line: 68, column: 43, scope: !797)
!857 = !DILocation(line: 68, column: 5, scope: !797)
!858 = distinct !{!858, !800, !859, !634}
!859 = !DILocation(line: 81, column: 5, scope: !793)
!860 = !DILocation(line: 83, column: 35, scope: !759)
!861 = !DILocation(line: 83, column: 47, scope: !759)
!862 = !DILocation(line: 83, column: 53, scope: !759)
!863 = !DILocation(line: 83, column: 65, scope: !759)
!864 = !DILocation(line: 83, column: 13, scope: !759)
!865 = !DILocation(line: 83, column: 12, scope: !759)
!866 = !DILocation(line: 83, column: 5, scope: !759)
!867 = !DILocation(line: 84, column: 1, scope: !759)
!868 = distinct !DISubprogram(name: "db_stmt_step_mysql", scope: !2, file: !2, line: 86, type: !106, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!869 = !DILocalVariable(name: "stmt", arg: 1, scope: !868, file: !2, line: 86, type: !86)
!870 = !DILocation(line: 86, column: 54, scope: !868)
!871 = !DILocalVariable(name: "row", arg: 2, scope: !868, file: !2, line: 86, type: !88)
!872 = !DILocation(line: 86, column: 75, scope: !868)
!873 = !DILocalVariable(name: "stmt_mysql", scope: !868, file: !2, line: 88, type: !306)
!874 = !DILocation(line: 88, column: 27, scope: !868)
!875 = !DILocation(line: 88, column: 64, scope: !868)
!876 = !DILocation(line: 90, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !868, file: !2, line: 90, column: 9)
!878 = !DILocation(line: 90, column: 21, scope: !877)
!879 = !DILocation(line: 90, column: 9, scope: !868)
!880 = !DILocation(line: 91, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !2, line: 90, column: 41)
!882 = !DILocation(line: 91, column: 21, scope: !881)
!883 = !DILocation(line: 91, column: 40, scope: !881)
!884 = !DILocation(line: 92, column: 32, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !2, line: 92, column: 13)
!886 = !DILocation(line: 92, column: 44, scope: !885)
!887 = !DILocation(line: 92, column: 13, scope: !885)
!888 = !DILocation(line: 92, column: 13, scope: !881)
!889 = !DILocation(line: 93, column: 13, scope: !885)
!890 = !DILocation(line: 94, column: 5, scope: !881)
!891 = !DILocation(line: 96, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !868, file: !2, line: 96, column: 9)
!893 = !DILocation(line: 96, column: 22, scope: !892)
!894 = !DILocation(line: 96, column: 9, scope: !868)
!895 = !DILocalVariable(name: "n_rows", scope: !896, file: !2, line: 97, type: !101)
!896 = distinct !DILexicalBlock(scope: !892, file: !2, line: 96, column: 35)
!897 = !DILocation(line: 97, column: 16, scope: !896)
!898 = !DILocalVariable(name: "r", scope: !899, file: !2, line: 98, type: !88)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 98, column: 9)
!900 = !DILocation(line: 98, column: 29, scope: !899)
!901 = !DILocation(line: 98, column: 33, scope: !899)
!902 = !DILocation(line: 98, column: 14, scope: !899)
!903 = !DILocation(line: 98, column: 38, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !2, line: 98, column: 9)
!905 = !DILocation(line: 98, column: 41, scope: !904)
!906 = !DILocation(line: 98, column: 46, scope: !904)
!907 = !DILocation(line: 98, column: 9, scope: !899)
!908 = !DILocation(line: 99, column: 19, scope: !904)
!909 = !DILocation(line: 99, column: 13, scope: !904)
!910 = !DILocation(line: 98, column: 56, scope: !904)
!911 = !DILocation(line: 98, column: 9, scope: !904)
!912 = distinct !{!912, !907, !913, !634}
!913 = !DILocation(line: 99, column: 19, scope: !899)
!914 = !DILocation(line: 101, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !896, file: !2, line: 101, column: 13)
!916 = !DILocation(line: 101, column: 13, scope: !896)
!917 = !DILocation(line: 102, column: 13, scope: !915)
!918 = !DILocation(line: 104, column: 42, scope: !896)
!919 = !DILocation(line: 104, column: 35, scope: !896)
!920 = !DILocation(line: 104, column: 9, scope: !896)
!921 = !DILocation(line: 104, column: 21, scope: !896)
!922 = !DILocation(line: 104, column: 33, scope: !896)
!923 = !DILocation(line: 105, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !896, file: !2, line: 105, column: 13)
!925 = !DILocation(line: 105, column: 26, scope: !924)
!926 = !DILocation(line: 105, column: 13, scope: !896)
!927 = !DILocation(line: 106, column: 13, scope: !924)
!928 = !DILocation(line: 108, column: 41, scope: !896)
!929 = !DILocation(line: 108, column: 34, scope: !896)
!930 = !DILocation(line: 108, column: 9, scope: !896)
!931 = !DILocation(line: 108, column: 21, scope: !896)
!932 = !DILocation(line: 108, column: 32, scope: !896)
!933 = !DILocation(line: 109, column: 14, scope: !934)
!934 = distinct !DILexicalBlock(scope: !896, file: !2, line: 109, column: 13)
!935 = !DILocation(line: 109, column: 26, scope: !934)
!936 = !DILocation(line: 109, column: 13, scope: !896)
!937 = !DILocation(line: 110, column: 18, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !2, line: 109, column: 38)
!939 = !DILocation(line: 110, column: 30, scope: !938)
!940 = !DILocation(line: 110, column: 13, scope: !938)
!941 = !DILocation(line: 111, column: 13, scope: !938)
!942 = !DILocalVariable(name: "result", scope: !896, file: !2, line: 114, type: !319)
!943 = !DILocation(line: 114, column: 21, scope: !896)
!944 = !DILocation(line: 114, column: 30, scope: !896)
!945 = !DILocation(line: 114, column: 42, scope: !896)
!946 = !DILocalVariable(name: "r", scope: !947, file: !2, line: 115, type: !101)
!947 = distinct !DILexicalBlock(scope: !896, file: !2, line: 115, column: 9)
!948 = !DILocation(line: 115, column: 21, scope: !947)
!949 = !DILocation(line: 115, column: 14, scope: !947)
!950 = !DILocation(line: 115, column: 28, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !2, line: 115, column: 9)
!952 = !DILocation(line: 115, column: 32, scope: !951)
!953 = !DILocation(line: 115, column: 30, scope: !951)
!954 = !DILocation(line: 115, column: 9, scope: !947)
!955 = !DILocation(line: 116, column: 17, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !2, line: 116, column: 17)
!957 = distinct !DILexicalBlock(scope: !951, file: !2, line: 115, column: 45)
!958 = !DILocation(line: 116, column: 21, scope: !956)
!959 = !DILocation(line: 116, column: 24, scope: !956)
!960 = !DILocation(line: 116, column: 29, scope: !956)
!961 = !DILocation(line: 116, column: 17, scope: !957)
!962 = !DILocation(line: 117, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !956, file: !2, line: 116, column: 37)
!964 = !DILocation(line: 117, column: 24, scope: !963)
!965 = !DILocation(line: 117, column: 27, scope: !963)
!966 = !DILocation(line: 117, column: 39, scope: !963)
!967 = !DILocation(line: 118, column: 36, scope: !963)
!968 = !DILocation(line: 118, column: 40, scope: !963)
!969 = !DILocation(line: 118, column: 43, scope: !963)
!970 = !DILocation(line: 118, column: 45, scope: !963)
!971 = !DILocation(line: 118, column: 17, scope: !963)
!972 = !DILocation(line: 118, column: 24, scope: !963)
!973 = !DILocation(line: 118, column: 27, scope: !963)
!974 = !DILocation(line: 118, column: 34, scope: !963)
!975 = !DILocation(line: 119, column: 13, scope: !963)
!976 = !DILocation(line: 119, column: 24, scope: !977)
!977 = distinct !DILexicalBlock(scope: !956, file: !2, line: 119, column: 24)
!978 = !DILocation(line: 119, column: 28, scope: !977)
!979 = !DILocation(line: 119, column: 31, scope: !977)
!980 = !DILocation(line: 119, column: 36, scope: !977)
!981 = !DILocation(line: 119, column: 24, scope: !956)
!982 = !DILocation(line: 120, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !2, line: 119, column: 44)
!984 = !DILocation(line: 120, column: 24, scope: !983)
!985 = !DILocation(line: 120, column: 27, scope: !983)
!986 = !DILocation(line: 120, column: 39, scope: !983)
!987 = !DILocation(line: 121, column: 37, scope: !983)
!988 = !DILocation(line: 121, column: 41, scope: !983)
!989 = !DILocation(line: 121, column: 44, scope: !983)
!990 = !DILocation(line: 121, column: 17, scope: !983)
!991 = !DILocation(line: 121, column: 24, scope: !983)
!992 = !DILocation(line: 121, column: 27, scope: !983)
!993 = !DILocation(line: 121, column: 34, scope: !983)
!994 = !DILocation(line: 122, column: 13, scope: !983)
!995 = !DILocation(line: 123, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !977, file: !2, line: 122, column: 20)
!997 = !DILocation(line: 126, column: 13, scope: !957)
!998 = !DILocation(line: 126, column: 20, scope: !957)
!999 = !DILocation(line: 126, column: 23, scope: !957)
!1000 = !DILocation(line: 126, column: 31, scope: !957)
!1001 = !DILocation(line: 127, column: 39, scope: !957)
!1002 = !DILocation(line: 127, column: 43, scope: !957)
!1003 = !DILocation(line: 127, column: 46, scope: !957)
!1004 = !DILocation(line: 127, column: 13, scope: !957)
!1005 = !DILocation(line: 127, column: 20, scope: !957)
!1006 = !DILocation(line: 127, column: 23, scope: !957)
!1007 = !DILocation(line: 127, column: 37, scope: !957)
!1008 = !DILocation(line: 128, column: 9, scope: !957)
!1009 = !DILocation(line: 115, column: 41, scope: !951)
!1010 = !DILocation(line: 115, column: 9, scope: !951)
!1011 = distinct !{!1011, !954, !1012, !634}
!1012 = !DILocation(line: 128, column: 9, scope: !947)
!1013 = !DILocation(line: 130, column: 36, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !896, file: !2, line: 130, column: 13)
!1015 = !DILocation(line: 130, column: 48, scope: !1014)
!1016 = !DILocation(line: 130, column: 54, scope: !1014)
!1017 = !DILocation(line: 130, column: 13, scope: !1014)
!1018 = !DILocation(line: 130, column: 13, scope: !896)
!1019 = !DILocation(line: 131, column: 13, scope: !1014)
!1020 = !DILocation(line: 132, column: 5, scope: !896)
!1021 = !DILocation(line: 134, column: 29, scope: !868)
!1022 = !DILocation(line: 134, column: 41, scope: !868)
!1023 = !DILocation(line: 134, column: 12, scope: !868)
!1024 = !DILocation(line: 134, column: 47, scope: !868)
!1025 = !DILocation(line: 134, column: 5, scope: !868)
!1026 = !DILocation(line: 135, column: 1, scope: !868)
!1027 = distinct !DISubprogram(name: "db_stmt_finalize_mysql", scope: !2, file: !2, line: 137, type: !110, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!1028 = !DILocalVariable(name: "stmt", arg: 1, scope: !1027, file: !2, line: 137, type: !78)
!1029 = !DILocation(line: 137, column: 52, scope: !1027)
!1030 = !DILocalVariable(name: "stmt_mysql", scope: !1027, file: !2, line: 139, type: !306)
!1031 = !DILocation(line: 139, column: 27, scope: !1027)
!1032 = !DILocation(line: 139, column: 64, scope: !1027)
!1033 = !DILocation(line: 141, column: 22, scope: !1027)
!1034 = !DILocation(line: 141, column: 34, scope: !1027)
!1035 = !DILocation(line: 141, column: 5, scope: !1027)
!1036 = !DILocation(line: 142, column: 10, scope: !1027)
!1037 = !DILocation(line: 142, column: 22, scope: !1027)
!1038 = !DILocation(line: 142, column: 5, scope: !1027)
!1039 = !DILocation(line: 143, column: 10, scope: !1027)
!1040 = !DILocation(line: 143, column: 22, scope: !1027)
!1041 = !DILocation(line: 143, column: 5, scope: !1027)
!1042 = !DILocation(line: 144, column: 10, scope: !1027)
!1043 = !DILocation(line: 144, column: 5, scope: !1027)
!1044 = !DILocation(line: 145, column: 1, scope: !1027)
!1045 = distinct !DISubprogram(name: "db_stmt_bind_sqlite", scope: !2, file: !2, line: 229, type: !83, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!1046 = !DILocalVariable(name: "stmt", arg: 1, scope: !1045, file: !2, line: 229, type: !86)
!1047 = !DILocation(line: 229, column: 55, scope: !1045)
!1048 = !DILocalVariable(name: "rows", arg: 2, scope: !1045, file: !2, line: 229, type: !88)
!1049 = !DILocation(line: 229, column: 76, scope: !1045)
!1050 = !DILocalVariable(name: "n_rows", arg: 3, scope: !1045, file: !2, line: 229, type: !101)
!1051 = !DILocation(line: 229, column: 89, scope: !1045)
!1052 = !DILocalVariable(name: "stmt_sqlite", scope: !1045, file: !2, line: 231, type: !412)
!1053 = !DILocation(line: 231, column: 34, scope: !1045)
!1054 = !DILocation(line: 231, column: 79, scope: !1045)
!1055 = !DILocalVariable(name: "rows_1_based", scope: !1045, file: !2, line: 232, type: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1058 = !DILocation(line: 232, column: 26, scope: !1045)
!1059 = !DILocation(line: 232, column: 41, scope: !1045)
!1060 = !DILocation(line: 232, column: 46, scope: !1045)
!1061 = !DILocalVariable(name: "ret", scope: !1045, file: !2, line: 233, type: !98)
!1062 = !DILocation(line: 233, column: 9, scope: !1045)
!1063 = !DILocation(line: 235, column: 19, scope: !1045)
!1064 = !DILocation(line: 235, column: 32, scope: !1045)
!1065 = !DILocation(line: 235, column: 5, scope: !1045)
!1066 = !DILocation(line: 236, column: 28, scope: !1045)
!1067 = !DILocation(line: 236, column: 41, scope: !1045)
!1068 = !DILocation(line: 236, column: 5, scope: !1045)
!1069 = !DILocalVariable(name: "row", scope: !1070, file: !2, line: 238, type: !101)
!1070 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 238, column: 5)
!1071 = !DILocation(line: 238, column: 17, scope: !1070)
!1072 = !DILocation(line: 238, column: 10, scope: !1070)
!1073 = !DILocation(line: 238, column: 26, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 238, column: 5)
!1075 = !DILocation(line: 238, column: 33, scope: !1074)
!1076 = !DILocation(line: 238, column: 30, scope: !1074)
!1077 = !DILocation(line: 238, column: 5, scope: !1070)
!1078 = !DILocalVariable(name: "r", scope: !1079, file: !2, line: 239, type: !1056)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 238, column: 48)
!1080 = !DILocation(line: 239, column: 30, scope: !1079)
!1081 = !DILocation(line: 239, column: 35, scope: !1079)
!1082 = !DILocation(line: 239, column: 48, scope: !1079)
!1083 = !DILocation(line: 240, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 240, column: 13)
!1085 = !DILocation(line: 240, column: 16, scope: !1084)
!1086 = !DILocation(line: 240, column: 21, scope: !1084)
!1087 = !DILocation(line: 240, column: 13, scope: !1079)
!1088 = !DILocation(line: 240, column: 30, scope: !1084)
!1089 = !DILocation(line: 242, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 242, column: 13)
!1091 = !DILocation(line: 242, column: 16, scope: !1090)
!1092 = !DILocation(line: 242, column: 21, scope: !1090)
!1093 = !DILocation(line: 242, column: 13, scope: !1079)
!1094 = !DILocation(line: 243, column: 37, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 242, column: 29)
!1096 = !DILocation(line: 243, column: 50, scope: !1095)
!1097 = !DILocation(line: 243, column: 63, scope: !1095)
!1098 = !DILocation(line: 243, column: 58, scope: !1095)
!1099 = !DILocation(line: 243, column: 68, scope: !1095)
!1100 = !DILocation(line: 243, column: 71, scope: !1095)
!1101 = !DILocation(line: 243, column: 73, scope: !1095)
!1102 = !DILocation(line: 243, column: 19, scope: !1095)
!1103 = !DILocation(line: 243, column: 17, scope: !1095)
!1104 = !DILocation(line: 244, column: 17, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 244, column: 17)
!1106 = !DILocation(line: 244, column: 21, scope: !1105)
!1107 = !DILocation(line: 244, column: 17, scope: !1095)
!1108 = !DILocation(line: 245, column: 17, scope: !1105)
!1109 = !DILocation(line: 246, column: 9, scope: !1095)
!1110 = !DILocation(line: 246, column: 20, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 246, column: 20)
!1112 = !DILocation(line: 246, column: 23, scope: !1111)
!1113 = !DILocation(line: 246, column: 28, scope: !1111)
!1114 = !DILocation(line: 246, column: 20, scope: !1090)
!1115 = !DILocation(line: 247, column: 36, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 246, column: 36)
!1117 = !DILocation(line: 247, column: 49, scope: !1116)
!1118 = !DILocation(line: 247, column: 62, scope: !1116)
!1119 = !DILocation(line: 247, column: 57, scope: !1116)
!1120 = !DILocation(line: 247, column: 67, scope: !1116)
!1121 = !DILocation(line: 247, column: 70, scope: !1116)
!1122 = !DILocation(line: 247, column: 72, scope: !1116)
!1123 = !DILocation(line: 247, column: 19, scope: !1116)
!1124 = !DILocation(line: 247, column: 17, scope: !1116)
!1125 = !DILocation(line: 248, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 248, column: 17)
!1127 = !DILocation(line: 248, column: 21, scope: !1126)
!1128 = !DILocation(line: 248, column: 17, scope: !1116)
!1129 = !DILocation(line: 249, column: 17, scope: !1126)
!1130 = !DILocation(line: 250, column: 9, scope: !1116)
!1131 = !DILocation(line: 251, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 250, column: 16)
!1133 = !DILocation(line: 253, column: 5, scope: !1079)
!1134 = !DILocation(line: 238, column: 44, scope: !1074)
!1135 = !DILocation(line: 238, column: 5, scope: !1074)
!1136 = distinct !{!1136, !1077, !1137, !634}
!1137 = !DILocation(line: 253, column: 5, scope: !1070)
!1138 = !DILocation(line: 255, column: 5, scope: !1045)
!1139 = !DILocation(line: 256, column: 1, scope: !1045)
!1140 = distinct !DISubprogram(name: "db_stmt_step_sqlite", scope: !2, file: !2, line: 258, type: !106, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!1141 = !DILocalVariable(name: "stmt", arg: 1, scope: !1140, file: !2, line: 258, type: !86)
!1142 = !DILocation(line: 258, column: 55, scope: !1140)
!1143 = !DILocalVariable(name: "row", arg: 2, scope: !1140, file: !2, line: 258, type: !88)
!1144 = !DILocation(line: 258, column: 76, scope: !1140)
!1145 = !DILocalVariable(name: "stmt_sqlite", scope: !1140, file: !2, line: 260, type: !412)
!1146 = !DILocation(line: 260, column: 34, scope: !1140)
!1147 = !DILocation(line: 260, column: 79, scope: !1140)
!1148 = !DILocation(line: 262, column: 22, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 262, column: 9)
!1150 = !DILocation(line: 262, column: 35, scope: !1149)
!1151 = !DILocation(line: 262, column: 9, scope: !1149)
!1152 = !DILocation(line: 262, column: 43, scope: !1149)
!1153 = !DILocation(line: 262, column: 9, scope: !1140)
!1154 = !DILocation(line: 263, column: 9, scope: !1149)
!1155 = !DILocalVariable(name: "column_id", scope: !1140, file: !2, line: 265, type: !98)
!1156 = !DILocation(line: 265, column: 9, scope: !1140)
!1157 = !DILocalVariable(name: "r", scope: !1158, file: !2, line: 266, type: !88)
!1158 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 266, column: 5)
!1159 = !DILocation(line: 266, column: 25, scope: !1158)
!1160 = !DILocation(line: 266, column: 29, scope: !1158)
!1161 = !DILocation(line: 266, column: 10, scope: !1158)
!1162 = !DILocation(line: 266, column: 34, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 266, column: 5)
!1164 = !DILocation(line: 266, column: 37, scope: !1163)
!1165 = !DILocation(line: 266, column: 42, scope: !1163)
!1166 = !DILocation(line: 266, column: 5, scope: !1158)
!1167 = !DILocation(line: 267, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 267, column: 13)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 266, column: 69)
!1170 = !DILocation(line: 267, column: 16, scope: !1168)
!1171 = !DILocation(line: 267, column: 21, scope: !1168)
!1172 = !DILocation(line: 267, column: 13, scope: !1169)
!1173 = !DILocation(line: 268, column: 41, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 267, column: 29)
!1175 = !DILocation(line: 268, column: 54, scope: !1174)
!1176 = !DILocation(line: 268, column: 62, scope: !1174)
!1177 = !DILocation(line: 268, column: 22, scope: !1174)
!1178 = !DILocation(line: 268, column: 13, scope: !1174)
!1179 = !DILocation(line: 268, column: 16, scope: !1174)
!1180 = !DILocation(line: 268, column: 20, scope: !1174)
!1181 = !DILocation(line: 269, column: 9, scope: !1174)
!1182 = !DILocation(line: 269, column: 20, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 269, column: 20)
!1184 = !DILocation(line: 269, column: 23, scope: !1183)
!1185 = !DILocation(line: 269, column: 28, scope: !1183)
!1186 = !DILocation(line: 269, column: 20, scope: !1168)
!1187 = !DILocation(line: 270, column: 50, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 269, column: 36)
!1189 = !DILocation(line: 270, column: 63, scope: !1188)
!1190 = !DILocation(line: 270, column: 71, scope: !1188)
!1191 = !DILocation(line: 270, column: 30, scope: !1188)
!1192 = !DILocation(line: 270, column: 13, scope: !1188)
!1193 = !DILocation(line: 270, column: 16, scope: !1188)
!1194 = !DILocation(line: 270, column: 20, scope: !1188)
!1195 = !DILocation(line: 271, column: 9, scope: !1188)
!1196 = !DILocation(line: 272, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 271, column: 16)
!1198 = !DILocation(line: 274, column: 5, scope: !1169)
!1199 = !DILocation(line: 266, column: 52, scope: !1163)
!1200 = !DILocation(line: 266, column: 65, scope: !1163)
!1201 = !DILocation(line: 266, column: 5, scope: !1163)
!1202 = distinct !{!1202, !1166, !1203, !634}
!1203 = !DILocation(line: 274, column: 5, scope: !1158)
!1204 = !DILocation(line: 276, column: 5, scope: !1140)
!1205 = !DILocation(line: 277, column: 1, scope: !1140)
!1206 = distinct !DISubprogram(name: "db_stmt_finalize_sqlite", scope: !2, file: !2, line: 279, type: !110, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !434)
!1207 = !DILocalVariable(name: "stmt", arg: 1, scope: !1206, file: !2, line: 279, type: !78)
!1208 = !DILocation(line: 279, column: 53, scope: !1206)
!1209 = !DILocalVariable(name: "stmt_sqlite", scope: !1206, file: !2, line: 281, type: !421)
!1210 = !DILocation(line: 281, column: 28, scope: !1206)
!1211 = !DILocation(line: 281, column: 67, scope: !1206)
!1212 = !DILocation(line: 283, column: 22, scope: !1206)
!1213 = !DILocation(line: 283, column: 35, scope: !1206)
!1214 = !DILocation(line: 283, column: 5, scope: !1206)
!1215 = !DILocation(line: 284, column: 10, scope: !1206)
!1216 = !DILocation(line: 284, column: 5, scope: !1206)
!1217 = !DILocation(line: 285, column: 1, scope: !1206)
