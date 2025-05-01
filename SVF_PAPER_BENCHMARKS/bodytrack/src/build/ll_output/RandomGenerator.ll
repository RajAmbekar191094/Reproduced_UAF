; ModuleID = '../TrackingBenchmark/RandomGenerator.cpp'
source_filename = "../TrackingBenchmark/RandomGenerator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.RandomGenerator = type { i64, i64, i64, [32 x i64], i64, double }

$_ZN15RandomGenerator4SeedEl = comdat any

@_ZN15RandomGeneratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15RandomGeneratorC2Ev

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN15RandomGeneratorC2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 align 2 !dbg !392 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.RandomGenerator, ptr %3, i32 0, i32 2, !dbg !397
  store i64 0, ptr %4, align 8, !dbg !399
  %5 = getelementptr inbounds %class.RandomGenerator, ptr %3, i32 0, i32 1, !dbg !400
  store i64 123456789, ptr %5, align 8, !dbg !401
  %6 = getelementptr inbounds %class.RandomGenerator, ptr %3, i32 0, i32 4, !dbg !402
  store i64 0, ptr %6, align 8, !dbg !403
  call void @_ZN15RandomGenerator4SeedEl(ptr noundef nonnull align 8 dereferenceable(296) %3, i64 noundef 1), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN15RandomGenerator4SeedEl(ptr noundef nonnull align 8 dereferenceable(296) %0, i64 noundef %1) #2 comdat align 2 !dbg !406 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !409, metadata !DIExpression()), !dbg !410
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !411
  %7 = icmp sgt i64 %6, 0, !dbg !412
  br i1 %7, label %8, label %11, !dbg !413

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8, !dbg !414
  %10 = sub nsw i64 0, %9, !dbg !415
  br label %13, !dbg !413

11:                                               ; preds = %2
  %12 = load i64, ptr %4, align 8, !dbg !416
  br label %13, !dbg !413

13:                                               ; preds = %11, %8
  %14 = phi i64 [ %10, %8 ], [ %12, %11 ], !dbg !413
  %15 = getelementptr inbounds %class.RandomGenerator, ptr %5, i32 0, i32 0, !dbg !417
  store i64 %14, ptr %15, align 8, !dbg !418
  %16 = call noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %5), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %0) #2 align 2 !dbg !421 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !422, metadata !DIExpression()), !dbg !423
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !424
  %11 = load i64, ptr %10, align 8, !dbg !424
  %12 = icmp sle i64 %11, 0, !dbg !426
  br i1 %12, label %13, label %70, !dbg !427

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !428
  %15 = load i64, ptr %14, align 8, !dbg !428
  %16 = sub nsw i64 0, %15, !dbg !430
  %17 = icmp slt i64 %16, 1, !dbg !431
  br i1 %17, label %18, label %19, !dbg !432

18:                                               ; preds = %13
  br label %23, !dbg !432

19:                                               ; preds = %13
  %20 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !433
  %21 = load i64, ptr %20, align 8, !dbg !433
  %22 = sub nsw i64 0, %21, !dbg !434
  br label %23, !dbg !432

23:                                               ; preds = %19, %18
  %24 = phi i64 [ 1, %18 ], [ %22, %19 ], !dbg !432
  %25 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !435
  store i64 %24, ptr %25, align 8, !dbg !436
  %26 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !437
  store i64 %24, ptr %26, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %4, metadata !439, metadata !DIExpression()), !dbg !441
  store i32 39, ptr %4, align 4, !dbg !441
  br label %27, !dbg !442

27:                                               ; preds = %62, %23
  %28 = load i32, ptr %4, align 4, !dbg !443
  %29 = icmp sge i32 %28, 0, !dbg !445
  br i1 %29, label %30, label %65, !dbg !446

30:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %5, metadata !447, metadata !DIExpression()), !dbg !449
  %31 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !450
  %32 = load i64, ptr %31, align 8, !dbg !450
  %33 = sdiv i64 %32, 53668, !dbg !451
  store i64 %33, ptr %5, align 8, !dbg !449
  %34 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !452
  %35 = load i64, ptr %34, align 8, !dbg !452
  %36 = load i64, ptr %5, align 8, !dbg !453
  %37 = mul nsw i64 %36, 53668, !dbg !454
  %38 = sub nsw i64 %35, %37, !dbg !455
  %39 = mul nsw i64 40014, %38, !dbg !456
  %40 = load i64, ptr %5, align 8, !dbg !457
  %41 = mul nsw i64 %40, 12211, !dbg !458
  %42 = sub nsw i64 %39, %41, !dbg !459
  %43 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !460
  store i64 %42, ptr %43, align 8, !dbg !461
  %44 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !462
  %45 = load i64, ptr %44, align 8, !dbg !462
  %46 = icmp slt i64 %45, 0, !dbg !464
  br i1 %46, label %47, label %51, !dbg !465

47:                                               ; preds = %30
  %48 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !466
  %49 = load i64, ptr %48, align 8, !dbg !467
  %50 = add nsw i64 %49, 2147483563, !dbg !467
  store i64 %50, ptr %48, align 8, !dbg !467
  br label %51, !dbg !466

51:                                               ; preds = %47, %30
  %52 = load i32, ptr %4, align 4, !dbg !468
  %53 = icmp slt i32 %52, 32, !dbg !470
  br i1 %53, label %54, label %61, !dbg !471

54:                                               ; preds = %51
  %55 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !472
  %56 = load i64, ptr %55, align 8, !dbg !472
  %57 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 3, !dbg !473
  %58 = load i32, ptr %4, align 4, !dbg !474
  %59 = sext i32 %58 to i64, !dbg !473
  %60 = getelementptr inbounds [32 x i64], ptr %57, i64 0, i64 %59, !dbg !473
  store i64 %56, ptr %60, align 8, !dbg !475
  br label %61, !dbg !473

61:                                               ; preds = %54, %51
  br label %62, !dbg !476

62:                                               ; preds = %61
  %63 = load i32, ptr %4, align 4, !dbg !477
  %64 = add nsw i32 %63, -1, !dbg !477
  store i32 %64, ptr %4, align 4, !dbg !477
  br label %27, !dbg !478, !llvm.loop !479

65:                                               ; preds = %27
  %66 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 3, !dbg !482
  %67 = getelementptr inbounds [32 x i64], ptr %66, i64 0, i64 0, !dbg !482
  %68 = load i64, ptr %67, align 8, !dbg !482
  %69 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !483
  store i64 %68, ptr %69, align 8, !dbg !484
  br label %70, !dbg !485

70:                                               ; preds = %65, %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !486, metadata !DIExpression()), !dbg !487
  %71 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !488
  %72 = load i64, ptr %71, align 8, !dbg !488
  %73 = sdiv i64 %72, 53668, !dbg !489
  store i64 %73, ptr %6, align 8, !dbg !487
  %74 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !490
  %75 = load i64, ptr %74, align 8, !dbg !490
  %76 = load i64, ptr %6, align 8, !dbg !491
  %77 = mul nsw i64 %76, 53668, !dbg !492
  %78 = sub nsw i64 %75, %77, !dbg !493
  %79 = mul nsw i64 40014, %78, !dbg !494
  %80 = load i64, ptr %6, align 8, !dbg !495
  %81 = mul nsw i64 %80, 12211, !dbg !496
  %82 = sub nsw i64 %79, %81, !dbg !497
  %83 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !498
  store i64 %82, ptr %83, align 8, !dbg !499
  %84 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !500
  %85 = load i64, ptr %84, align 8, !dbg !500
  %86 = icmp slt i64 %85, 0, !dbg !502
  br i1 %86, label %87, label %91, !dbg !503

87:                                               ; preds = %70
  %88 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !504
  %89 = load i64, ptr %88, align 8, !dbg !505
  %90 = add nsw i64 %89, 2147483563, !dbg !505
  store i64 %90, ptr %88, align 8, !dbg !505
  br label %91, !dbg !504

91:                                               ; preds = %87, %70
  %92 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !506
  %93 = load i64, ptr %92, align 8, !dbg !506
  %94 = sdiv i64 %93, 52774, !dbg !507
  store i64 %94, ptr %6, align 8, !dbg !508
  %95 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !509
  %96 = load i64, ptr %95, align 8, !dbg !509
  %97 = load i64, ptr %6, align 8, !dbg !510
  %98 = mul nsw i64 %97, 52774, !dbg !511
  %99 = sub nsw i64 %96, %98, !dbg !512
  %100 = mul nsw i64 40692, %99, !dbg !513
  %101 = load i64, ptr %6, align 8, !dbg !514
  %102 = mul nsw i64 %101, 3791, !dbg !515
  %103 = sub nsw i64 %100, %102, !dbg !516
  %104 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !517
  store i64 %103, ptr %104, align 8, !dbg !518
  %105 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !519
  %106 = load i64, ptr %105, align 8, !dbg !519
  %107 = icmp slt i64 %106, 0, !dbg !521
  br i1 %107, label %108, label %112, !dbg !522

108:                                              ; preds = %91
  %109 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !523
  %110 = load i64, ptr %109, align 8, !dbg !524
  %111 = add nsw i64 %110, 2147483399, !dbg !524
  store i64 %111, ptr %109, align 8, !dbg !524
  br label %112, !dbg !523

112:                                              ; preds = %108, %91
  call void @llvm.dbg.declare(metadata ptr %7, metadata !525, metadata !DIExpression()), !dbg !526
  %113 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !527
  %114 = load i64, ptr %113, align 8, !dbg !527
  %115 = sdiv i64 %114, 67108862, !dbg !528
  %116 = trunc i64 %115 to i32, !dbg !527
  store i32 %116, ptr %7, align 4, !dbg !526
  %117 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 3, !dbg !529
  %118 = load i32, ptr %7, align 4, !dbg !530
  %119 = sext i32 %118 to i64, !dbg !529
  %120 = getelementptr inbounds [32 x i64], ptr %117, i64 0, i64 %119, !dbg !529
  %121 = load i64, ptr %120, align 8, !dbg !529
  %122 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 1, !dbg !531
  %123 = load i64, ptr %122, align 8, !dbg !531
  %124 = sub nsw i64 %121, %123, !dbg !532
  %125 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !533
  store i64 %124, ptr %125, align 8, !dbg !534
  %126 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 0, !dbg !535
  %127 = load i64, ptr %126, align 8, !dbg !535
  %128 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 3, !dbg !536
  %129 = load i32, ptr %7, align 4, !dbg !537
  %130 = sext i32 %129 to i64, !dbg !536
  %131 = getelementptr inbounds [32 x i64], ptr %128, i64 0, i64 %130, !dbg !536
  store i64 %127, ptr %131, align 8, !dbg !538
  %132 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !539
  %133 = load i64, ptr %132, align 8, !dbg !539
  %134 = icmp slt i64 %133, 1, !dbg !541
  br i1 %134, label %135, label %139, !dbg !542

135:                                              ; preds = %112
  %136 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !543
  %137 = load i64, ptr %136, align 8, !dbg !544
  %138 = add nsw i64 %137, 2147483562, !dbg !544
  store i64 %138, ptr %136, align 8, !dbg !544
  br label %139, !dbg !543

139:                                              ; preds = %135, %112
  call void @llvm.dbg.declare(metadata ptr %8, metadata !545, metadata !DIExpression()), !dbg !546
  %140 = getelementptr inbounds %class.RandomGenerator, ptr %9, i32 0, i32 2, !dbg !547
  %141 = load i64, ptr %140, align 8, !dbg !547
  %142 = sitofp i64 %141 to double, !dbg !547
  %143 = fmul double 0x3E0000000AA00007, %142, !dbg !549
  store double %143, ptr %8, align 8, !dbg !550
  %144 = fcmp ogt double %143, 0x3FEFFFFFBF935359, !dbg !551
  br i1 %144, label %145, label %146, !dbg !552

145:                                              ; preds = %139
  store double 0x3FEFFFFFBF935359, ptr %2, align 8, !dbg !553
  br label %148, !dbg !553

146:                                              ; preds = %139
  %147 = load double, ptr %8, align 8, !dbg !554
  store double %147, ptr %2, align 8, !dbg !555
  br label %148, !dbg !555

148:                                              ; preds = %146, %145
  %149 = load double, ptr %2, align 8, !dbg !556
  ret double %149, !dbg !556
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_ZN15RandomGenerator5RandNEv(ptr noundef nonnull align 8 dereferenceable(296) %0) #2 align 2 !dbg !557 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !558, metadata !DIExpression()), !dbg !559
  %8 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata ptr %5, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata ptr %6, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata ptr %7, metadata !566, metadata !DIExpression()), !dbg !567
  %9 = getelementptr inbounds %class.RandomGenerator, ptr %8, i32 0, i32 4, !dbg !568
  %10 = load i64, ptr %9, align 8, !dbg !568
  %11 = icmp eq i64 %10, 0, !dbg !570
  br i1 %11, label %12, label %47, !dbg !571

12:                                               ; preds = %1
  br label %13, !dbg !572

13:                                               ; preds = %30, %12
  %14 = call noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %8), !dbg !574
  %15 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %14, double -1.000000e+00), !dbg !576
  store double %15, ptr %6, align 8, !dbg !577
  %16 = call noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %8), !dbg !578
  %17 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %16, double -1.000000e+00), !dbg !579
  store double %17, ptr %7, align 8, !dbg !580
  %18 = load double, ptr %6, align 8, !dbg !581
  %19 = load double, ptr %6, align 8, !dbg !582
  %20 = load double, ptr %7, align 8, !dbg !583
  %21 = load double, ptr %7, align 8, !dbg !584
  %22 = fmul double %20, %21, !dbg !585
  %23 = call double @llvm.fmuladd.f64(double %18, double %19, double %22), !dbg !586
  store double %23, ptr %5, align 8, !dbg !587
  br label %24, !dbg !588

24:                                               ; preds = %13
  %25 = load double, ptr %5, align 8, !dbg !589
  %26 = fcmp oge double %25, 1.000000e+00, !dbg !590
  br i1 %26, label %30, label %27, !dbg !591

27:                                               ; preds = %24
  %28 = load double, ptr %5, align 8, !dbg !592
  %29 = fcmp oeq double %28, 0.000000e+00, !dbg !593
  br label %30, !dbg !591

30:                                               ; preds = %27, %24
  %31 = phi i1 [ true, %24 ], [ %29, %27 ]
  br i1 %31, label %13, label %32, !dbg !588, !llvm.loop !594

32:                                               ; preds = %30
  %33 = load double, ptr %5, align 8, !dbg !596
  %34 = call double @log(double noundef %33) #4, !dbg !597
  %35 = fmul double -2.000000e+00, %34, !dbg !598
  %36 = load double, ptr %5, align 8, !dbg !599
  %37 = fdiv double %35, %36, !dbg !600
  %38 = call double @sqrt(double noundef %37) #4, !dbg !601
  store double %38, ptr %4, align 8, !dbg !602
  %39 = load double, ptr %6, align 8, !dbg !603
  %40 = load double, ptr %4, align 8, !dbg !604
  %41 = fmul double %39, %40, !dbg !605
  %42 = getelementptr inbounds %class.RandomGenerator, ptr %8, i32 0, i32 5, !dbg !606
  store double %41, ptr %42, align 8, !dbg !607
  %43 = getelementptr inbounds %class.RandomGenerator, ptr %8, i32 0, i32 4, !dbg !608
  store i64 1, ptr %43, align 8, !dbg !609
  %44 = load double, ptr %7, align 8, !dbg !610
  %45 = load double, ptr %4, align 8, !dbg !611
  %46 = fmul double %44, %45, !dbg !612
  store double %46, ptr %2, align 8, !dbg !613
  br label %51, !dbg !613

47:                                               ; preds = %1
  %48 = getelementptr inbounds %class.RandomGenerator, ptr %8, i32 0, i32 4, !dbg !614
  store i64 0, ptr %48, align 8, !dbg !616
  %49 = getelementptr inbounds %class.RandomGenerator, ptr %8, i32 0, i32 5, !dbg !617
  %50 = load double, ptr %49, align 8, !dbg !617
  store double %50, ptr %2, align 8, !dbg !618
  br label %51, !dbg !618

51:                                               ; preds = %47, %32
  %52 = load double, ptr %2, align 8, !dbg !619
  ret double %52, !dbg !619
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_ZN15RandomGenerator7RandExpEv(ptr noundef nonnull align 8 dereferenceable(296) %0) #2 align 2 !dbg !620 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !621, metadata !DIExpression()), !dbg !622
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !623, metadata !DIExpression()), !dbg !624
  %5 = call noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %4), !dbg !625
  store double %5, ptr %3, align 8, !dbg !624
  br label %6, !dbg !626

6:                                                ; preds = %9, %1
  %7 = load double, ptr %3, align 8, !dbg !627
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !628
  br i1 %8, label %9, label %11, !dbg !626

9:                                                ; preds = %6
  %10 = call noundef double @_ZN15RandomGenerator4RandEv(ptr noundef nonnull align 8 dereferenceable(296) %4), !dbg !629
  store double %10, ptr %3, align 8, !dbg !630
  br label %6, !dbg !626, !llvm.loop !631

11:                                               ; preds = %6
  %12 = load double, ptr %3, align 8, !dbg !633
  %13 = call double @log(double noundef %12) #4, !dbg !634
  %14 = fneg double %13, !dbg !635
  ret double %14, !dbg !636
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, imports: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../TrackingBenchmark/RandomGenerator.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "9ccd512265227204518fe2800346b9a1")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RandomGenerator", file: !4, line: 31, size: 2368, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !5, identifier: "_ZTS15RandomGenerator")
!4 = !DIFile(filename: "../TrackingBenchmark/RandomGenerator.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "5f9d08c34bad0bb24d29999218f6ba09")
!5 = !{!6, !8, !9, !10, !14, !15, !17, !21, !22, !25, !28, !29}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "mIdum", scope: !3, file: !4, line: 33, baseType: !7, size: 64, flags: DIFlagProtected)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "mIdum2", scope: !3, file: !4, line: 33, baseType: !7, size: 64, offset: 64, flags: DIFlagProtected)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "mIy", scope: !3, file: !4, line: 33, baseType: !7, size: 64, offset: 128, flags: DIFlagProtected)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "mIv", scope: !3, file: !4, line: 33, baseType: !11, size: 2048, offset: 192, flags: DIFlagProtected)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "mIset", scope: !3, file: !4, line: 33, baseType: !7, size: 64, offset: 2240, flags: DIFlagProtected)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "mGset", scope: !3, file: !4, line: 34, baseType: !16, size: 64, offset: 2304, flags: DIFlagProtected)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DISubprogram(name: "RandomGenerator", scope: !3, file: !4, line: 36, type: !18, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!21 = !DISubprogram(name: "~RandomGenerator", scope: !3, file: !4, line: 37, type: !18, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!22 = !DISubprogram(name: "Seed", linkageName: "_ZN15RandomGenerator4SeedEl", scope: !3, file: !4, line: 40, type: !23, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !20, !7}
!25 = !DISubprogram(name: "Rand", linkageName: "_ZN15RandomGenerator4RandEv", scope: !3, file: !4, line: 42, type: !26, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{!16, !20}
!28 = !DISubprogram(name: "RandN", linkageName: "_ZN15RandomGenerator5RandNEv", scope: !3, file: !4, line: 44, type: !26, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!29 = !DISubprogram(name: "RandExp", linkageName: "_ZN15RandomGenerator7RandExpEv", scope: !3, file: !4, line: 46, type: !26, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!30 = !{!31, !39, !45, !47, !49, !53, !55, !57, !59, !61, !63, !65, !67, !72, !76, !78, !80, !85, !87, !89, !91, !93, !95, !97, !100, !103, !105, !109, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !138, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !176, !180, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !206, !210, !214, !216, !218, !220, !225, !229, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !261, !265, !269, !271, !273, !275, !282, !286, !290, !292, !294, !296, !298, !300, !302, !306, !310, !312, !314, !316, !318, !322, !326, !330, !332, !334, !336, !338, !340, !342, !346, !350, !354, !356, !360, !364, !366, !368, !370, !372, !374, !376, !379}
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !33, file: !38, line: 52)
!32 = !DINamespace(name: "std", scope: null)
!33 = !DISubprogram(name: "abs", scope: !34, file: !34, line: 848, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !37}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !40, file: !44, line: 83)
!40 = !DISubprogram(name: "acos", scope: !41, file: !41, line: 53, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!42 = !DISubroutineType(types: !43)
!43 = !{!16, !16}
!44 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !46, file: !44, line: 102)
!46 = !DISubprogram(name: "asin", scope: !41, file: !41, line: 55, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !48, file: !44, line: 121)
!48 = !DISubprogram(name: "atan", scope: !41, file: !41, line: 57, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !50, file: !44, line: 140)
!50 = !DISubprogram(name: "atan2", scope: !41, file: !41, line: 59, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{!16, !16, !16}
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !54, file: !44, line: 161)
!54 = !DISubprogram(name: "ceil", scope: !41, file: !41, line: 159, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !56, file: !44, line: 180)
!56 = !DISubprogram(name: "cos", scope: !41, file: !41, line: 62, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !58, file: !44, line: 199)
!58 = !DISubprogram(name: "cosh", scope: !41, file: !41, line: 71, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !60, file: !44, line: 218)
!60 = !DISubprogram(name: "exp", scope: !41, file: !41, line: 95, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !62, file: !44, line: 237)
!62 = !DISubprogram(name: "fabs", scope: !41, file: !41, line: 162, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !64, file: !44, line: 256)
!64 = !DISubprogram(name: "floor", scope: !41, file: !41, line: 165, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !66, file: !44, line: 275)
!66 = !DISubprogram(name: "fmod", scope: !41, file: !41, line: 168, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !68, file: !44, line: 296)
!68 = !DISubprogram(name: "frexp", scope: !41, file: !41, line: 98, type: !69, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{!16, !16, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !73, file: !44, line: 315)
!73 = !DISubprogram(name: "ldexp", scope: !41, file: !41, line: 101, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!16, !16, !37}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !77, file: !44, line: 334)
!77 = !DISubprogram(name: "log", scope: !41, file: !41, line: 104, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !79, file: !44, line: 353)
!79 = !DISubprogram(name: "log10", scope: !41, file: !41, line: 107, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !81, file: !44, line: 372)
!81 = !DISubprogram(name: "modf", scope: !41, file: !41, line: 110, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!16, !16, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !86, file: !44, line: 384)
!86 = !DISubprogram(name: "pow", scope: !41, file: !41, line: 140, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !88, file: !44, line: 421)
!88 = !DISubprogram(name: "sin", scope: !41, file: !41, line: 64, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !90, file: !44, line: 440)
!90 = !DISubprogram(name: "sinh", scope: !41, file: !41, line: 73, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !92, file: !44, line: 459)
!92 = !DISubprogram(name: "sqrt", scope: !41, file: !41, line: 143, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !94, file: !44, line: 478)
!94 = !DISubprogram(name: "tan", scope: !41, file: !41, line: 66, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !96, file: !44, line: 497)
!96 = !DISubprogram(name: "tanh", scope: !41, file: !41, line: 75, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !98, file: !44, line: 1065)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !99, line: 164, baseType: !16)
!99 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !101, file: !44, line: 1066)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !99, line: 163, baseType: !102)
!102 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !104, file: !44, line: 1069)
!104 = !DISubprogram(name: "acosh", scope: !41, file: !41, line: 85, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !106, file: !44, line: 1070)
!106 = !DISubprogram(name: "acoshf", scope: !41, file: !41, line: 85, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!102, !102}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !110, file: !44, line: 1071)
!110 = !DISubprogram(name: "acoshl", scope: !41, file: !41, line: 85, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !113}
!113 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !115, file: !44, line: 1073)
!115 = !DISubprogram(name: "asinh", scope: !41, file: !41, line: 87, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !117, file: !44, line: 1074)
!117 = !DISubprogram(name: "asinhf", scope: !41, file: !41, line: 87, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !119, file: !44, line: 1075)
!119 = !DISubprogram(name: "asinhl", scope: !41, file: !41, line: 87, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !121, file: !44, line: 1077)
!121 = !DISubprogram(name: "atanh", scope: !41, file: !41, line: 89, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !123, file: !44, line: 1078)
!123 = !DISubprogram(name: "atanhf", scope: !41, file: !41, line: 89, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !125, file: !44, line: 1079)
!125 = !DISubprogram(name: "atanhl", scope: !41, file: !41, line: 89, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !127, file: !44, line: 1081)
!127 = !DISubprogram(name: "cbrt", scope: !41, file: !41, line: 152, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !129, file: !44, line: 1082)
!129 = !DISubprogram(name: "cbrtf", scope: !41, file: !41, line: 152, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !131, file: !44, line: 1083)
!131 = !DISubprogram(name: "cbrtl", scope: !41, file: !41, line: 152, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !133, file: !44, line: 1085)
!133 = !DISubprogram(name: "copysign", scope: !41, file: !41, line: 198, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !135, file: !44, line: 1086)
!135 = !DISubprogram(name: "copysignf", scope: !41, file: !41, line: 198, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!102, !102, !102}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !139, file: !44, line: 1087)
!139 = !DISubprogram(name: "copysignl", scope: !41, file: !41, line: 198, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!113, !113, !113}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !143, file: !44, line: 1089)
!143 = !DISubprogram(name: "erf", scope: !41, file: !41, line: 231, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !145, file: !44, line: 1090)
!145 = !DISubprogram(name: "erff", scope: !41, file: !41, line: 231, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !147, file: !44, line: 1091)
!147 = !DISubprogram(name: "erfl", scope: !41, file: !41, line: 231, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !149, file: !44, line: 1093)
!149 = !DISubprogram(name: "erfc", scope: !41, file: !41, line: 232, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !151, file: !44, line: 1094)
!151 = !DISubprogram(name: "erfcf", scope: !41, file: !41, line: 232, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !153, file: !44, line: 1095)
!153 = !DISubprogram(name: "erfcl", scope: !41, file: !41, line: 232, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !155, file: !44, line: 1097)
!155 = !DISubprogram(name: "exp2", scope: !41, file: !41, line: 130, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !157, file: !44, line: 1098)
!157 = !DISubprogram(name: "exp2f", scope: !41, file: !41, line: 130, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !159, file: !44, line: 1099)
!159 = !DISubprogram(name: "exp2l", scope: !41, file: !41, line: 130, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !161, file: !44, line: 1101)
!161 = !DISubprogram(name: "expm1", scope: !41, file: !41, line: 119, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !163, file: !44, line: 1102)
!163 = !DISubprogram(name: "expm1f", scope: !41, file: !41, line: 119, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !165, file: !44, line: 1103)
!165 = !DISubprogram(name: "expm1l", scope: !41, file: !41, line: 119, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !167, file: !44, line: 1105)
!167 = !DISubprogram(name: "fdim", scope: !41, file: !41, line: 329, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !169, file: !44, line: 1106)
!169 = !DISubprogram(name: "fdimf", scope: !41, file: !41, line: 329, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !171, file: !44, line: 1107)
!171 = !DISubprogram(name: "fdiml", scope: !41, file: !41, line: 329, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !173, file: !44, line: 1109)
!173 = !DISubprogram(name: "fma", scope: !41, file: !41, line: 340, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!16, !16, !16, !16}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !177, file: !44, line: 1110)
!177 = !DISubprogram(name: "fmaf", scope: !41, file: !41, line: 340, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{!102, !102, !102, !102}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !181, file: !44, line: 1111)
!181 = !DISubprogram(name: "fmal", scope: !41, file: !41, line: 340, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!113, !113, !113, !113}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !185, file: !44, line: 1113)
!185 = !DISubprogram(name: "fmax", scope: !41, file: !41, line: 333, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !187, file: !44, line: 1114)
!187 = !DISubprogram(name: "fmaxf", scope: !41, file: !41, line: 333, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !189, file: !44, line: 1115)
!189 = !DISubprogram(name: "fmaxl", scope: !41, file: !41, line: 333, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !191, file: !44, line: 1117)
!191 = !DISubprogram(name: "fmin", scope: !41, file: !41, line: 336, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !193, file: !44, line: 1118)
!193 = !DISubprogram(name: "fminf", scope: !41, file: !41, line: 336, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !195, file: !44, line: 1119)
!195 = !DISubprogram(name: "fminl", scope: !41, file: !41, line: 336, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !197, file: !44, line: 1121)
!197 = !DISubprogram(name: "hypot", scope: !41, file: !41, line: 147, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !199, file: !44, line: 1122)
!199 = !DISubprogram(name: "hypotf", scope: !41, file: !41, line: 147, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !201, file: !44, line: 1123)
!201 = !DISubprogram(name: "hypotl", scope: !41, file: !41, line: 147, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !203, file: !44, line: 1125)
!203 = !DISubprogram(name: "ilogb", scope: !41, file: !41, line: 283, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!37, !16}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !207, file: !44, line: 1126)
!207 = !DISubprogram(name: "ilogbf", scope: !41, file: !41, line: 283, type: !208, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{!37, !102}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !211, file: !44, line: 1127)
!211 = !DISubprogram(name: "ilogbl", scope: !41, file: !41, line: 283, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!37, !113}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !215, file: !44, line: 1129)
!215 = !DISubprogram(name: "lgamma", scope: !41, file: !41, line: 233, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !217, file: !44, line: 1130)
!217 = !DISubprogram(name: "lgammaf", scope: !41, file: !41, line: 233, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !219, file: !44, line: 1131)
!219 = !DISubprogram(name: "lgammal", scope: !41, file: !41, line: 233, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !221, file: !44, line: 1134)
!221 = !DISubprogram(name: "llrint", scope: !41, file: !41, line: 319, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !16}
!224 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !226, file: !44, line: 1135)
!226 = !DISubprogram(name: "llrintf", scope: !41, file: !41, line: 319, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!224, !102}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !230, file: !44, line: 1136)
!230 = !DISubprogram(name: "llrintl", scope: !41, file: !41, line: 319, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{!224, !113}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !234, file: !44, line: 1138)
!234 = !DISubprogram(name: "llround", scope: !41, file: !41, line: 325, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !236, file: !44, line: 1139)
!236 = !DISubprogram(name: "llroundf", scope: !41, file: !41, line: 325, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !238, file: !44, line: 1140)
!238 = !DISubprogram(name: "llroundl", scope: !41, file: !41, line: 325, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !240, file: !44, line: 1143)
!240 = !DISubprogram(name: "log1p", scope: !41, file: !41, line: 122, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !242, file: !44, line: 1144)
!242 = !DISubprogram(name: "log1pf", scope: !41, file: !41, line: 122, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !244, file: !44, line: 1145)
!244 = !DISubprogram(name: "log1pl", scope: !41, file: !41, line: 122, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !246, file: !44, line: 1147)
!246 = !DISubprogram(name: "log2", scope: !41, file: !41, line: 133, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !248, file: !44, line: 1148)
!248 = !DISubprogram(name: "log2f", scope: !41, file: !41, line: 133, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !250, file: !44, line: 1149)
!250 = !DISubprogram(name: "log2l", scope: !41, file: !41, line: 133, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !252, file: !44, line: 1151)
!252 = !DISubprogram(name: "logb", scope: !41, file: !41, line: 125, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !254, file: !44, line: 1152)
!254 = !DISubprogram(name: "logbf", scope: !41, file: !41, line: 125, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !256, file: !44, line: 1153)
!256 = !DISubprogram(name: "logbl", scope: !41, file: !41, line: 125, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !258, file: !44, line: 1155)
!258 = !DISubprogram(name: "lrint", scope: !41, file: !41, line: 317, type: !259, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!7, !16}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !262, file: !44, line: 1156)
!262 = !DISubprogram(name: "lrintf", scope: !41, file: !41, line: 317, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!7, !102}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !266, file: !44, line: 1157)
!266 = !DISubprogram(name: "lrintl", scope: !41, file: !41, line: 317, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!7, !113}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !270, file: !44, line: 1159)
!270 = !DISubprogram(name: "lround", scope: !41, file: !41, line: 323, type: !259, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !272, file: !44, line: 1160)
!272 = !DISubprogram(name: "lroundf", scope: !41, file: !41, line: 323, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !274, file: !44, line: 1161)
!274 = !DISubprogram(name: "lroundl", scope: !41, file: !41, line: 323, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !276, file: !44, line: 1163)
!276 = !DISubprogram(name: "nan", scope: !41, file: !41, line: 203, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!16, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !283, file: !44, line: 1164)
!283 = !DISubprogram(name: "nanf", scope: !41, file: !41, line: 203, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!102, !279}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !287, file: !44, line: 1165)
!287 = !DISubprogram(name: "nanl", scope: !41, file: !41, line: 203, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!113, !279}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !291, file: !44, line: 1167)
!291 = !DISubprogram(name: "nearbyint", scope: !41, file: !41, line: 297, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !293, file: !44, line: 1168)
!293 = !DISubprogram(name: "nearbyintf", scope: !41, file: !41, line: 297, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !295, file: !44, line: 1169)
!295 = !DISubprogram(name: "nearbyintl", scope: !41, file: !41, line: 297, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !297, file: !44, line: 1171)
!297 = !DISubprogram(name: "nextafter", scope: !41, file: !41, line: 262, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !299, file: !44, line: 1172)
!299 = !DISubprogram(name: "nextafterf", scope: !41, file: !41, line: 262, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !301, file: !44, line: 1173)
!301 = !DISubprogram(name: "nextafterl", scope: !41, file: !41, line: 262, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !303, file: !44, line: 1175)
!303 = !DISubprogram(name: "nexttoward", scope: !41, file: !41, line: 264, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!16, !16, !113}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !307, file: !44, line: 1176)
!307 = !DISubprogram(name: "nexttowardf", scope: !41, file: !41, line: 264, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!102, !102, !113}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !311, file: !44, line: 1177)
!311 = !DISubprogram(name: "nexttowardl", scope: !41, file: !41, line: 264, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !313, file: !44, line: 1179)
!313 = !DISubprogram(name: "remainder", scope: !41, file: !41, line: 275, type: !51, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !315, file: !44, line: 1180)
!315 = !DISubprogram(name: "remainderf", scope: !41, file: !41, line: 275, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !317, file: !44, line: 1181)
!317 = !DISubprogram(name: "remainderl", scope: !41, file: !41, line: 275, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !319, file: !44, line: 1183)
!319 = !DISubprogram(name: "remquo", scope: !41, file: !41, line: 310, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!16, !16, !16, !71}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !323, file: !44, line: 1184)
!323 = !DISubprogram(name: "remquof", scope: !41, file: !41, line: 310, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!102, !102, !102, !71}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !327, file: !44, line: 1185)
!327 = !DISubprogram(name: "remquol", scope: !41, file: !41, line: 310, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!113, !113, !113, !71}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !331, file: !44, line: 1187)
!331 = !DISubprogram(name: "rint", scope: !41, file: !41, line: 259, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !333, file: !44, line: 1188)
!333 = !DISubprogram(name: "rintf", scope: !41, file: !41, line: 259, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !335, file: !44, line: 1189)
!335 = !DISubprogram(name: "rintl", scope: !41, file: !41, line: 259, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !337, file: !44, line: 1191)
!337 = !DISubprogram(name: "round", scope: !41, file: !41, line: 301, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !339, file: !44, line: 1192)
!339 = !DISubprogram(name: "roundf", scope: !41, file: !41, line: 301, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !341, file: !44, line: 1193)
!341 = !DISubprogram(name: "roundl", scope: !41, file: !41, line: 301, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !343, file: !44, line: 1195)
!343 = !DISubprogram(name: "scalbln", scope: !41, file: !41, line: 293, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!16, !16, !7}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !347, file: !44, line: 1196)
!347 = !DISubprogram(name: "scalblnf", scope: !41, file: !41, line: 293, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{!102, !102, !7}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !351, file: !44, line: 1197)
!351 = !DISubprogram(name: "scalblnl", scope: !41, file: !41, line: 293, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!113, !113, !7}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !355, file: !44, line: 1199)
!355 = !DISubprogram(name: "scalbn", scope: !41, file: !41, line: 279, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !357, file: !44, line: 1200)
!357 = !DISubprogram(name: "scalbnf", scope: !41, file: !41, line: 279, type: !358, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!102, !102, !37}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !361, file: !44, line: 1201)
!361 = !DISubprogram(name: "scalbnl", scope: !41, file: !41, line: 279, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!113, !113, !37}
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !365, file: !44, line: 1203)
!365 = !DISubprogram(name: "tgamma", scope: !41, file: !41, line: 238, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !367, file: !44, line: 1204)
!367 = !DISubprogram(name: "tgammaf", scope: !41, file: !41, line: 238, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !369, file: !44, line: 1205)
!369 = !DISubprogram(name: "tgammal", scope: !41, file: !41, line: 238, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !371, file: !44, line: 1207)
!371 = !DISubprogram(name: "trunc", scope: !41, file: !41, line: 305, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !373, file: !44, line: 1208)
!373 = !DISubprogram(name: "truncf", scope: !41, file: !41, line: 305, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !32, entity: !375, file: !44, line: 1209)
!375 = !DISubprogram(name: "truncl", scope: !41, file: !41, line: 305, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !377, file: !378, line: 38)
!377 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !32, file: !38, line: 79, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !380, file: !378, line: 54)
!380 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !32, file: !44, line: 380, type: !381, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!113, !113, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!384 = !{i32 7, !"Dwarf Version", i32 5}
!385 = !{i32 2, !"Debug Info Version", i32 3}
!386 = !{i32 1, !"wchar_size", i32 4}
!387 = !{i32 8, !"PIC Level", i32 2}
!388 = !{i32 7, !"PIE Level", i32 2}
!389 = !{i32 7, !"uwtable", i32 2}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 16.0.0"}
!392 = distinct !DISubprogram(name: "RandomGenerator", linkageName: "_ZN15RandomGeneratorC2Ev", scope: !3, file: !1, line: 39, type: !18, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !17, retainedNodes: !393)
!393 = !{}
!394 = !DILocalVariable(name: "this", arg: 1, scope: !392, type: !395, flags: DIFlagArtificial | DIFlagObjectPointer)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!396 = !DILocation(line: 0, scope: !392)
!397 = !DILocation(line: 40, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !392, file: !1, line: 40, column: 1)
!399 = !DILocation(line: 40, column: 7, scope: !398)
!400 = !DILocation(line: 40, column: 12, scope: !398)
!401 = !DILocation(line: 40, column: 19, scope: !398)
!402 = !DILocation(line: 40, column: 32, scope: !398)
!403 = !DILocation(line: 40, column: 38, scope: !398)
!404 = !DILocation(line: 41, column: 2, scope: !398)
!405 = !DILocation(line: 42, column: 1, scope: !392)
!406 = distinct !DISubprogram(name: "Seed", linkageName: "_ZN15RandomGenerator4SeedEl", scope: !3, file: !4, line: 40, type: !23, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !22, retainedNodes: !393)
!407 = !DILocalVariable(name: "this", arg: 1, scope: !406, type: !395, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DILocation(line: 0, scope: !406)
!409 = !DILocalVariable(name: "s", arg: 2, scope: !406, file: !4, line: 40, type: !7)
!410 = !DILocation(line: 40, column: 17, scope: !406)
!411 = !DILocation(line: 40, column: 30, scope: !406)
!412 = !DILocation(line: 40, column: 32, scope: !406)
!413 = !DILocation(line: 40, column: 29, scope: !406)
!414 = !DILocation(line: 40, column: 40, scope: !406)
!415 = !DILocation(line: 40, column: 39, scope: !406)
!416 = !DILocation(line: 40, column: 44, scope: !406)
!417 = !DILocation(line: 40, column: 21, scope: !406)
!418 = !DILocation(line: 40, column: 27, scope: !406)
!419 = !DILocation(line: 40, column: 47, scope: !406)
!420 = !DILocation(line: 40, column: 55, scope: !406)
!421 = distinct !DISubprogram(name: "Rand", linkageName: "_ZN15RandomGenerator4RandEv", scope: !3, file: !1, line: 46, type: !26, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !25, retainedNodes: !393)
!422 = !DILocalVariable(name: "this", arg: 1, scope: !421, type: !395, flags: DIFlagArtificial | DIFlagObjectPointer)
!423 = !DILocation(line: 0, scope: !421)
!424 = !DILocation(line: 47, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !1, line: 47, column: 7)
!426 = !DILocation(line: 47, column: 13, scope: !425)
!427 = !DILocation(line: 47, column: 7, scope: !421)
!428 = !DILocation(line: 48, column: 23, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 48, column: 2)
!430 = !DILocation(line: 48, column: 22, scope: !429)
!431 = !DILocation(line: 48, column: 29, scope: !429)
!432 = !DILocation(line: 48, column: 21, scope: !429)
!433 = !DILocation(line: 48, column: 41, scope: !429)
!434 = !DILocation(line: 48, column: 40, scope: !429)
!435 = !DILocation(line: 48, column: 12, scope: !429)
!436 = !DILocation(line: 48, column: 19, scope: !429)
!437 = !DILocation(line: 48, column: 4, scope: !429)
!438 = !DILocation(line: 48, column: 10, scope: !429)
!439 = !DILocalVariable(name: "i", scope: !440, file: !1, line: 49, type: !37)
!440 = distinct !DILexicalBlock(scope: !429, file: !1, line: 49, column: 3)
!441 = !DILocation(line: 49, column: 11, scope: !440)
!442 = !DILocation(line: 49, column: 7, scope: !440)
!443 = !DILocation(line: 49, column: 25, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !1, line: 49, column: 3)
!445 = !DILocation(line: 49, column: 27, scope: !444)
!446 = !DILocation(line: 49, column: 3, scope: !440)
!447 = !DILocalVariable(name: "k", scope: !448, file: !1, line: 50, type: !7)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 50, column: 3)
!449 = !DILocation(line: 50, column: 10, scope: !448)
!450 = !DILocation(line: 50, column: 14, scope: !448)
!451 = !DILocation(line: 50, column: 20, scope: !448)
!452 = !DILocation(line: 51, column: 19, scope: !448)
!453 = !DILocation(line: 51, column: 27, scope: !448)
!454 = !DILocation(line: 51, column: 29, scope: !448)
!455 = !DILocation(line: 51, column: 25, scope: !448)
!456 = !DILocation(line: 51, column: 16, scope: !448)
!457 = !DILocation(line: 51, column: 38, scope: !448)
!458 = !DILocation(line: 51, column: 40, scope: !448)
!459 = !DILocation(line: 51, column: 36, scope: !448)
!460 = !DILocation(line: 51, column: 4, scope: !448)
!461 = !DILocation(line: 51, column: 10, scope: !448)
!462 = !DILocation(line: 52, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !448, file: !1, line: 52, column: 8)
!464 = !DILocation(line: 52, column: 14, scope: !463)
!465 = !DILocation(line: 52, column: 8, scope: !448)
!466 = !DILocation(line: 52, column: 19, scope: !463)
!467 = !DILocation(line: 52, column: 25, scope: !463)
!468 = !DILocation(line: 53, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !448, file: !1, line: 53, column: 8)
!470 = !DILocation(line: 53, column: 10, scope: !469)
!471 = !DILocation(line: 53, column: 8, scope: !448)
!472 = !DILocation(line: 53, column: 27, scope: !469)
!473 = !DILocation(line: 53, column: 18, scope: !469)
!474 = !DILocation(line: 53, column: 22, scope: !469)
!475 = !DILocation(line: 53, column: 25, scope: !469)
!476 = !DILocation(line: 54, column: 3, scope: !448)
!477 = !DILocation(line: 49, column: 34, scope: !444)
!478 = !DILocation(line: 49, column: 3, scope: !444)
!479 = distinct !{!479, !446, !480, !481}
!480 = !DILocation(line: 54, column: 3, scope: !440)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !DILocation(line: 55, column: 9, scope: !429)
!483 = !DILocation(line: 55, column: 3, scope: !429)
!484 = !DILocation(line: 55, column: 7, scope: !429)
!485 = !DILocation(line: 56, column: 2, scope: !429)
!486 = !DILocalVariable(name: "k", scope: !421, file: !1, line: 57, type: !7)
!487 = !DILocation(line: 57, column: 7, scope: !421)
!488 = !DILocation(line: 57, column: 11, scope: !421)
!489 = !DILocation(line: 57, column: 17, scope: !421)
!490 = !DILocation(line: 58, column: 17, scope: !421)
!491 = !DILocation(line: 58, column: 25, scope: !421)
!492 = !DILocation(line: 58, column: 27, scope: !421)
!493 = !DILocation(line: 58, column: 23, scope: !421)
!494 = !DILocation(line: 58, column: 14, scope: !421)
!495 = !DILocation(line: 58, column: 36, scope: !421)
!496 = !DILocation(line: 58, column: 38, scope: !421)
!497 = !DILocation(line: 58, column: 34, scope: !421)
!498 = !DILocation(line: 58, column: 2, scope: !421)
!499 = !DILocation(line: 58, column: 8, scope: !421)
!500 = !DILocation(line: 59, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !421, file: !1, line: 59, column: 6)
!502 = !DILocation(line: 59, column: 12, scope: !501)
!503 = !DILocation(line: 59, column: 6, scope: !421)
!504 = !DILocation(line: 59, column: 17, scope: !501)
!505 = !DILocation(line: 59, column: 23, scope: !501)
!506 = !DILocation(line: 60, column: 6, scope: !421)
!507 = !DILocation(line: 60, column: 13, scope: !421)
!508 = !DILocation(line: 60, column: 4, scope: !421)
!509 = !DILocation(line: 61, column: 18, scope: !421)
!510 = !DILocation(line: 61, column: 27, scope: !421)
!511 = !DILocation(line: 61, column: 29, scope: !421)
!512 = !DILocation(line: 61, column: 25, scope: !421)
!513 = !DILocation(line: 61, column: 15, scope: !421)
!514 = !DILocation(line: 61, column: 38, scope: !421)
!515 = !DILocation(line: 61, column: 40, scope: !421)
!516 = !DILocation(line: 61, column: 36, scope: !421)
!517 = !DILocation(line: 61, column: 2, scope: !421)
!518 = !DILocation(line: 61, column: 9, scope: !421)
!519 = !DILocation(line: 62, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !421, file: !1, line: 62, column: 6)
!521 = !DILocation(line: 62, column: 13, scope: !520)
!522 = !DILocation(line: 62, column: 6, scope: !421)
!523 = !DILocation(line: 62, column: 18, scope: !520)
!524 = !DILocation(line: 62, column: 25, scope: !520)
!525 = !DILocalVariable(name: "j", scope: !421, file: !1, line: 63, type: !37)
!526 = !DILocation(line: 63, column: 6, scope: !421)
!527 = !DILocation(line: 63, column: 10, scope: !421)
!528 = !DILocation(line: 63, column: 14, scope: !421)
!529 = !DILocation(line: 64, column: 8, scope: !421)
!530 = !DILocation(line: 64, column: 12, scope: !421)
!531 = !DILocation(line: 64, column: 17, scope: !421)
!532 = !DILocation(line: 64, column: 15, scope: !421)
!533 = !DILocation(line: 64, column: 2, scope: !421)
!534 = !DILocation(line: 64, column: 6, scope: !421)
!535 = !DILocation(line: 65, column: 11, scope: !421)
!536 = !DILocation(line: 65, column: 2, scope: !421)
!537 = !DILocation(line: 65, column: 6, scope: !421)
!538 = !DILocation(line: 65, column: 9, scope: !421)
!539 = !DILocation(line: 66, column: 5, scope: !540)
!540 = distinct !DILexicalBlock(scope: !421, file: !1, line: 66, column: 5)
!541 = !DILocation(line: 66, column: 9, scope: !540)
!542 = !DILocation(line: 66, column: 5, scope: !421)
!543 = !DILocation(line: 66, column: 14, scope: !540)
!544 = !DILocation(line: 66, column: 18, scope: !540)
!545 = !DILocalVariable(name: "temp", scope: !421, file: !1, line: 67, type: !16)
!546 = !DILocation(line: 67, column: 9, scope: !421)
!547 = !DILocation(line: 68, column: 19, scope: !548)
!548 = distinct !DILexicalBlock(scope: !421, file: !1, line: 68, column: 6)
!549 = !DILocation(line: 68, column: 17, scope: !548)
!550 = !DILocation(line: 68, column: 12, scope: !548)
!551 = !DILocation(line: 68, column: 24, scope: !548)
!552 = !DILocation(line: 68, column: 6, scope: !421)
!553 = !DILocation(line: 69, column: 3, scope: !548)
!554 = !DILocation(line: 71, column: 10, scope: !548)
!555 = !DILocation(line: 71, column: 3, scope: !548)
!556 = !DILocation(line: 72, column: 1, scope: !421)
!557 = distinct !DISubprogram(name: "RandN", linkageName: "_ZN15RandomGenerator5RandNEv", scope: !3, file: !1, line: 75, type: !26, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !28, retainedNodes: !393)
!558 = !DILocalVariable(name: "this", arg: 1, scope: !557, type: !395, flags: DIFlagArtificial | DIFlagObjectPointer)
!559 = !DILocation(line: 0, scope: !557)
!560 = !DILocalVariable(name: "fac", scope: !557, file: !1, line: 76, type: !16)
!561 = !DILocation(line: 76, column: 12, scope: !557)
!562 = !DILocalVariable(name: "rsq", scope: !557, file: !1, line: 76, type: !16)
!563 = !DILocation(line: 76, column: 17, scope: !557)
!564 = !DILocalVariable(name: "v1", scope: !557, file: !1, line: 76, type: !16)
!565 = !DILocation(line: 76, column: 22, scope: !557)
!566 = !DILocalVariable(name: "v2", scope: !557, file: !1, line: 76, type: !16)
!567 = !DILocation(line: 76, column: 26, scope: !557)
!568 = !DILocation(line: 77, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !557, file: !1, line: 77, column: 9)
!570 = !DILocation(line: 77, column: 15, scope: !569)
!571 = !DILocation(line: 77, column: 9, scope: !557)
!572 = !DILocation(line: 78, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !1, line: 78, column: 2)
!574 = !DILocation(line: 79, column: 16, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !1, line: 79, column: 3)
!576 = !DILocation(line: 79, column: 23, scope: !575)
!577 = !DILocation(line: 79, column: 8, scope: !575)
!578 = !DILocation(line: 80, column: 15, scope: !575)
!579 = !DILocation(line: 80, column: 22, scope: !575)
!580 = !DILocation(line: 80, column: 7, scope: !575)
!581 = !DILocation(line: 81, column: 10, scope: !575)
!582 = !DILocation(line: 81, column: 15, scope: !575)
!583 = !DILocation(line: 81, column: 20, scope: !575)
!584 = !DILocation(line: 81, column: 25, scope: !575)
!585 = !DILocation(line: 81, column: 23, scope: !575)
!586 = !DILocation(line: 81, column: 18, scope: !575)
!587 = !DILocation(line: 81, column: 8, scope: !575)
!588 = !DILocation(line: 82, column: 9, scope: !575)
!589 = !DILocation(line: 82, column: 18, scope: !573)
!590 = !DILocation(line: 82, column: 22, scope: !573)
!591 = !DILocation(line: 82, column: 29, scope: !573)
!592 = !DILocation(line: 82, column: 32, scope: !573)
!593 = !DILocation(line: 82, column: 36, scope: !573)
!594 = distinct !{!594, !572, !595, !481}
!595 = !DILocation(line: 82, column: 42, scope: !573)
!596 = !DILocation(line: 83, column: 31, scope: !573)
!597 = !DILocation(line: 83, column: 27, scope: !573)
!598 = !DILocation(line: 83, column: 25, scope: !573)
!599 = !DILocation(line: 83, column: 36, scope: !573)
!600 = !DILocation(line: 83, column: 35, scope: !573)
!601 = !DILocation(line: 83, column: 15, scope: !573)
!602 = !DILocation(line: 83, column: 13, scope: !573)
!603 = !DILocation(line: 84, column: 17, scope: !573)
!604 = !DILocation(line: 84, column: 22, scope: !573)
!605 = !DILocation(line: 84, column: 20, scope: !573)
!606 = !DILocation(line: 84, column: 9, scope: !573)
!607 = !DILocation(line: 84, column: 15, scope: !573)
!608 = !DILocation(line: 85, column: 9, scope: !573)
!609 = !DILocation(line: 85, column: 15, scope: !573)
!610 = !DILocation(line: 86, column: 18, scope: !573)
!611 = !DILocation(line: 86, column: 23, scope: !573)
!612 = !DILocation(line: 86, column: 21, scope: !573)
!613 = !DILocation(line: 86, column: 9, scope: !573)
!614 = !DILocation(line: 89, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !569, file: !1, line: 89, column: 2)
!616 = !DILocation(line: 89, column: 11, scope: !615)
!617 = !DILocation(line: 90, column: 16, scope: !615)
!618 = !DILocation(line: 90, column: 9, scope: !615)
!619 = !DILocation(line: 92, column: 1, scope: !557)
!620 = distinct !DISubprogram(name: "RandExp", linkageName: "_ZN15RandomGenerator7RandExpEv", scope: !3, file: !1, line: 95, type: !26, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !29, retainedNodes: !393)
!621 = !DILocalVariable(name: "this", arg: 1, scope: !620, type: !395, flags: DIFlagArtificial | DIFlagObjectPointer)
!622 = !DILocation(line: 0, scope: !620)
!623 = !DILocalVariable(name: "d", scope: !620, file: !1, line: 97, type: !16)
!624 = !DILocation(line: 97, column: 9, scope: !620)
!625 = !DILocation(line: 97, column: 13, scope: !620)
!626 = !DILocation(line: 98, column: 2, scope: !620)
!627 = !DILocation(line: 98, column: 8, scope: !620)
!628 = !DILocation(line: 98, column: 10, scope: !620)
!629 = !DILocation(line: 99, column: 7, scope: !620)
!630 = !DILocation(line: 99, column: 5, scope: !620)
!631 = distinct !{!631, !626, !632, !481}
!632 = !DILocation(line: 99, column: 12, scope: !620)
!633 = !DILocation(line: 100, column: 14, scope: !620)
!634 = !DILocation(line: 100, column: 10, scope: !620)
!635 = !DILocation(line: 100, column: 9, scope: !620)
!636 = !DILocation(line: 100, column: 2, scope: !620)
