; ModuleID = '../TrackingBenchmark/ImageMeasurements.cpp'
source_filename = "../TrackingBenchmark/ImageMeasurements.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.Point = type { float, float }
%class.ProjectedCylinder = type { [4 x %class.Point] }
%class.ImageMeasurements = type <{ %"class.std::vector", float, float, float, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl" }
%"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl" = type { %"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Point, std::allocator<Point>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MultiCameraProjectedBody = type { %"class.std::vector.5" }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl" }
%"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl" = type { %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ProjectedBody = type { %"class.std::vector.10" }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl" }
%"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl" = type { %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FlexImage = type <{ ptr, ptr, i32, i32, %class.FISize, i32, [4 x i8] }>
%class.FISize = type { i32, i32 }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl" }
%"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl" = type { %"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl_data" }
%"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.BinaryImage = type { ptr, ptr, i32, i32 }

$_ZN5PointC2Ev = comdat any

$_ZN5Point3SetEff = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_Z3magR5Point = comdat any

$_Z15SampleEdgePointffRK9FlexImageIhLi1EERiS3_ = comdat any

$_ZN5PointD2Ev = comdat any

$_ZN5PointC2Eff = comdat any

$_Z17SampleInsidePointffRK11BinaryImageRiS2_ = comdat any

$_ZNKSt6vectorI9FlexImageIhLi1EESaIS1_EE4sizeEv = comdat any

$_ZN24MultiCameraProjectedBodyclEi = comdat any

$_ZN13ProjectedBody4SizeEv = comdat any

$_ZN13ProjectedBodyclEi = comdat any

$_ZNSt6vectorI9FlexImageIhLi1EESaIS1_EEixEm = comdat any

$_ZNKSt6vectorI11BinaryImageSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI11BinaryImageSaIS0_EEixEm = comdat any

$_ZNK9FlexImageIhLi1EE5WidthEv = comdat any

$_ZNK9FlexImageIhLi1EE6HeightEv = comdat any

$_ZNK9FlexImageIhLi1EEclEii = comdat any

$_ZNK9FlexImageIhLi1EEclEiii = comdat any

$_ZNK11BinaryImage5WidthEv = comdat any

$_ZNK11BinaryImage6HeightEv = comdat any

$_ZNK11BinaryImageclEii = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImageMeasurements.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1324 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1326
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1328
  ret void, !dbg !1326
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN17ImageMeasurements9EdgeErrorERK17ProjectedCylinderRK9FlexImageIhLi1EERfRi(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !1329 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %class.Point, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca ptr, align 8
  %21 = alloca %class.Point, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1346, metadata !DIExpression()), !dbg !1348
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1349, metadata !DIExpression()), !dbg !1350
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1351, metadata !DIExpression()), !dbg !1352
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1353, metadata !DIExpression()), !dbg !1354
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1355, metadata !DIExpression()), !dbg !1356
  %33 = load ptr, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i32 0, ptr %11, align 4, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1359, metadata !DIExpression()), !dbg !1362
  %34 = load ptr, ptr %7, align 8, !dbg !1363
  %35 = getelementptr inbounds %class.ProjectedCylinder, ptr %34, i32 0, i32 0, !dbg !1364
  %36 = getelementptr inbounds [4 x %class.Point], ptr %35, i64 0, i64 0, !dbg !1363
  store ptr %36, ptr %12, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13), !dbg !1366
  %37 = load ptr, ptr %7, align 8, !dbg !1367
  %38 = getelementptr inbounds %class.ProjectedCylinder, ptr %37, i32 0, i32 0, !dbg !1368
  %39 = getelementptr inbounds [4 x %class.Point], ptr %38, i64 0, i64 1, !dbg !1367
  %40 = getelementptr inbounds %class.Point, ptr %39, i32 0, i32 0, !dbg !1369
  %41 = load float, ptr %40, align 4, !dbg !1369
  %42 = load ptr, ptr %12, align 8, !dbg !1370
  %43 = getelementptr inbounds %class.Point, ptr %42, i32 0, i32 0, !dbg !1371
  %44 = load float, ptr %43, align 4, !dbg !1371
  %45 = fsub float %41, %44, !dbg !1372
  %46 = load ptr, ptr %7, align 8, !dbg !1373
  %47 = getelementptr inbounds %class.ProjectedCylinder, ptr %46, i32 0, i32 0, !dbg !1374
  %48 = getelementptr inbounds [4 x %class.Point], ptr %47, i64 0, i64 1, !dbg !1373
  %49 = getelementptr inbounds %class.Point, ptr %48, i32 0, i32 1, !dbg !1375
  %50 = load float, ptr %49, align 4, !dbg !1375
  %51 = load ptr, ptr %12, align 8, !dbg !1376
  %52 = getelementptr inbounds %class.Point, ptr %51, i32 0, i32 1, !dbg !1377
  %53 = load float, ptr %52, align 4, !dbg !1377
  %54 = fsub float %50, %53, !dbg !1378
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %45, float noundef %54)
          to label %55 unwind label %139, !dbg !1379

55:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1380, metadata !DIExpression()), !dbg !1381
  %56 = invoke noundef double @_Z3magR5Point(ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %57 unwind label %139, !dbg !1382

57:                                               ; preds = %55
  %58 = getelementptr inbounds %class.ImageMeasurements, ptr %33, i32 0, i32 1, !dbg !1383
  %59 = load float, ptr %58, align 8, !dbg !1383
  %60 = fpext float %59 to double, !dbg !1383
  %61 = fdiv double %56, %60, !dbg !1384
  %62 = fadd double %61, 5.000000e-01, !dbg !1385
  %63 = fptosi double %62 to i32, !dbg !1386
  store i32 %63, ptr %17, align 4, !dbg !1387
  store i32 4, ptr %18, align 4, !dbg !1388
  %64 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %17, ptr noundef nonnull align 4 dereferenceable(4) %18)
          to label %65 unwind label %139, !dbg !1389

65:                                               ; preds = %57
  %66 = load i32, ptr %64, align 4, !dbg !1389
  store i32 %66, ptr %16, align 4, !dbg !1381
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1390, metadata !DIExpression()), !dbg !1391
  %67 = load i32, ptr %16, align 4, !dbg !1392
  %68 = add nsw i32 %67, 1, !dbg !1392
  store i32 %68, ptr %16, align 4, !dbg !1392
  %69 = sitofp i32 %67 to float, !dbg !1393
  %70 = fdiv float 1.000000e+00, %69, !dbg !1394
  store float %70, ptr %19, align 4, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1395, metadata !DIExpression()), !dbg !1396
  %71 = load ptr, ptr %7, align 8, !dbg !1397
  %72 = getelementptr inbounds %class.ProjectedCylinder, ptr %71, i32 0, i32 0, !dbg !1398
  %73 = getelementptr inbounds [4 x %class.Point], ptr %72, i64 0, i64 2, !dbg !1397
  store ptr %73, ptr %20, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1399, metadata !DIExpression()), !dbg !1400
  invoke void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %74 unwind label %139, !dbg !1400

74:                                               ; preds = %65
  %75 = load ptr, ptr %7, align 8, !dbg !1401
  %76 = getelementptr inbounds %class.ProjectedCylinder, ptr %75, i32 0, i32 0, !dbg !1402
  %77 = getelementptr inbounds [4 x %class.Point], ptr %76, i64 0, i64 3, !dbg !1401
  %78 = getelementptr inbounds %class.Point, ptr %77, i32 0, i32 0, !dbg !1403
  %79 = load float, ptr %78, align 4, !dbg !1403
  %80 = load ptr, ptr %20, align 8, !dbg !1404
  %81 = getelementptr inbounds %class.Point, ptr %80, i32 0, i32 0, !dbg !1405
  %82 = load float, ptr %81, align 4, !dbg !1405
  %83 = fsub float %79, %82, !dbg !1406
  %84 = load ptr, ptr %7, align 8, !dbg !1407
  %85 = getelementptr inbounds %class.ProjectedCylinder, ptr %84, i32 0, i32 0, !dbg !1408
  %86 = getelementptr inbounds [4 x %class.Point], ptr %85, i64 0, i64 3, !dbg !1407
  %87 = getelementptr inbounds %class.Point, ptr %86, i32 0, i32 1, !dbg !1409
  %88 = load float, ptr %87, align 4, !dbg !1409
  %89 = load ptr, ptr %20, align 8, !dbg !1410
  %90 = getelementptr inbounds %class.Point, ptr %89, i32 0, i32 1, !dbg !1411
  %91 = load float, ptr %90, align 4, !dbg !1411
  %92 = fsub float %88, %91, !dbg !1412
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef %83, float noundef %92)
          to label %93 unwind label %143, !dbg !1413

93:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1414, metadata !DIExpression()), !dbg !1415
  %94 = invoke noundef double @_Z3magR5Point(ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %95 unwind label %143, !dbg !1416

95:                                               ; preds = %93
  %96 = getelementptr inbounds %class.ImageMeasurements, ptr %33, i32 0, i32 1, !dbg !1417
  %97 = load float, ptr %96, align 8, !dbg !1417
  %98 = fpext float %97 to double, !dbg !1417
  %99 = fdiv double %94, %98, !dbg !1418
  %100 = fadd double %99, 5.000000e-01, !dbg !1419
  %101 = fptosi double %100 to i32, !dbg !1420
  store i32 %101, ptr %23, align 4, !dbg !1421
  store i32 4, ptr %24, align 4, !dbg !1422
  %102 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %23, ptr noundef nonnull align 4 dereferenceable(4) %24)
          to label %103 unwind label %143, !dbg !1423

103:                                              ; preds = %95
  %104 = load i32, ptr %102, align 4, !dbg !1423
  store i32 %104, ptr %22, align 4, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1424, metadata !DIExpression()), !dbg !1425
  %105 = load i32, ptr %22, align 4, !dbg !1426
  %106 = add nsw i32 %105, 1, !dbg !1426
  store i32 %106, ptr %22, align 4, !dbg !1426
  %107 = sitofp i32 %105 to float, !dbg !1427
  %108 = fdiv float 1.000000e+00, %107, !dbg !1428
  store float %108, ptr %25, align 4, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1429, metadata !DIExpression()), !dbg !1430
  store float 0.000000e+00, ptr %26, align 4, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1431, metadata !DIExpression()), !dbg !1433
  store i32 0, ptr %27, align 4, !dbg !1433
  br label %109, !dbg !1434

109:                                              ; preds = %136, %103
  %110 = load i32, ptr %27, align 4, !dbg !1435
  %111 = load i32, ptr %16, align 4, !dbg !1437
  %112 = icmp slt i32 %110, %111, !dbg !1438
  br i1 %112, label %113, label %147, !dbg !1439

113:                                              ; preds = %109
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1440, metadata !DIExpression()), !dbg !1442
  %114 = load ptr, ptr %12, align 8, !dbg !1443
  %115 = getelementptr inbounds %class.Point, ptr %114, i32 0, i32 0, !dbg !1444
  %116 = load float, ptr %115, align 4, !dbg !1444
  %117 = load float, ptr %26, align 4, !dbg !1445
  %118 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 0, !dbg !1446
  %119 = load float, ptr %118, align 4, !dbg !1446
  %120 = call float @llvm.fmuladd.f32(float %117, float %119, float %116), !dbg !1447
  store float %120, ptr %28, align 4, !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1448, metadata !DIExpression()), !dbg !1449
  %121 = load ptr, ptr %12, align 8, !dbg !1450
  %122 = getelementptr inbounds %class.Point, ptr %121, i32 0, i32 1, !dbg !1451
  %123 = load float, ptr %122, align 4, !dbg !1451
  %124 = load float, ptr %26, align 4, !dbg !1452
  %125 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 1, !dbg !1453
  %126 = load float, ptr %125, align 4, !dbg !1453
  %127 = call float @llvm.fmuladd.f32(float %124, float %126, float %123), !dbg !1454
  store float %127, ptr %29, align 4, !dbg !1449
  %128 = load float, ptr %28, align 4, !dbg !1455
  %129 = load float, ptr %29, align 4, !dbg !1456
  %130 = load ptr, ptr %8, align 8, !dbg !1457
  %131 = load ptr, ptr %10, align 8, !dbg !1458
  invoke void @_Z15SampleEdgePointffRK9FlexImageIhLi1EERiS3_(float noundef %128, float noundef %129, ptr noundef nonnull align 8 dereferenceable(36) %130, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %131)
          to label %132 unwind label %143, !dbg !1459

132:                                              ; preds = %113
  %133 = load float, ptr %19, align 4, !dbg !1460
  %134 = load float, ptr %26, align 4, !dbg !1461
  %135 = fadd float %134, %133, !dbg !1461
  store float %135, ptr %26, align 4, !dbg !1461
  br label %136, !dbg !1462

136:                                              ; preds = %132
  %137 = load i32, ptr %27, align 4, !dbg !1463
  %138 = add nsw i32 %137, 1, !dbg !1463
  store i32 %138, ptr %27, align 4, !dbg !1463
  br label %109, !dbg !1464, !llvm.loop !1465

139:                                              ; preds = %65, %57, %55, %5
  %140 = landingpad { ptr, i32 }
          cleanup, !dbg !1468
  %141 = extractvalue { ptr, i32 } %140, 0, !dbg !1468
  store ptr %141, ptr %14, align 8, !dbg !1468
  %142 = extractvalue { ptr, i32 } %140, 1, !dbg !1468
  store i32 %142, ptr %15, align 4, !dbg !1468
  br label %185, !dbg !1468

143:                                              ; preds = %152, %113, %95, %93, %74
  %144 = landingpad { ptr, i32 }
          cleanup, !dbg !1468
  %145 = extractvalue { ptr, i32 } %144, 0, !dbg !1468
  store ptr %145, ptr %14, align 8, !dbg !1468
  %146 = extractvalue { ptr, i32 } %144, 1, !dbg !1468
  store i32 %146, ptr %15, align 4, !dbg !1468
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %21) #3, !dbg !1468
  br label %185, !dbg !1468

147:                                              ; preds = %109
  store float 0.000000e+00, ptr %26, align 4, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1470, metadata !DIExpression()), !dbg !1472
  store i32 0, ptr %30, align 4, !dbg !1472
  br label %148, !dbg !1473

148:                                              ; preds = %175, %147
  %149 = load i32, ptr %30, align 4, !dbg !1474
  %150 = load i32, ptr %22, align 4, !dbg !1476
  %151 = icmp slt i32 %149, %150, !dbg !1477
  br i1 %151, label %152, label %178, !dbg !1478

152:                                              ; preds = %148
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1479, metadata !DIExpression()), !dbg !1481
  %153 = load ptr, ptr %20, align 8, !dbg !1482
  %154 = getelementptr inbounds %class.Point, ptr %153, i32 0, i32 0, !dbg !1483
  %155 = load float, ptr %154, align 4, !dbg !1483
  %156 = load float, ptr %26, align 4, !dbg !1484
  %157 = getelementptr inbounds %class.Point, ptr %21, i32 0, i32 0, !dbg !1485
  %158 = load float, ptr %157, align 4, !dbg !1485
  %159 = call float @llvm.fmuladd.f32(float %156, float %158, float %155), !dbg !1486
  store float %159, ptr %31, align 4, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1487, metadata !DIExpression()), !dbg !1488
  %160 = load ptr, ptr %20, align 8, !dbg !1489
  %161 = getelementptr inbounds %class.Point, ptr %160, i32 0, i32 1, !dbg !1490
  %162 = load float, ptr %161, align 4, !dbg !1490
  %163 = load float, ptr %26, align 4, !dbg !1491
  %164 = getelementptr inbounds %class.Point, ptr %21, i32 0, i32 1, !dbg !1492
  %165 = load float, ptr %164, align 4, !dbg !1492
  %166 = call float @llvm.fmuladd.f32(float %163, float %165, float %162), !dbg !1493
  store float %166, ptr %32, align 4, !dbg !1488
  %167 = load float, ptr %31, align 4, !dbg !1494
  %168 = load float, ptr %32, align 4, !dbg !1495
  %169 = load ptr, ptr %8, align 8, !dbg !1496
  %170 = load ptr, ptr %10, align 8, !dbg !1497
  invoke void @_Z15SampleEdgePointffRK9FlexImageIhLi1EERiS3_(float noundef %167, float noundef %168, ptr noundef nonnull align 8 dereferenceable(36) %169, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %170)
          to label %171 unwind label %143, !dbg !1498

171:                                              ; preds = %152
  %172 = load float, ptr %25, align 4, !dbg !1499
  %173 = load float, ptr %26, align 4, !dbg !1500
  %174 = fadd float %173, %172, !dbg !1500
  store float %174, ptr %26, align 4, !dbg !1500
  br label %175, !dbg !1501

175:                                              ; preds = %171
  %176 = load i32, ptr %30, align 4, !dbg !1502
  %177 = add nsw i32 %176, 1, !dbg !1502
  store i32 %177, ptr %30, align 4, !dbg !1502
  br label %148, !dbg !1503, !llvm.loop !1504

178:                                              ; preds = %148
  %179 = load i32, ptr %11, align 4, !dbg !1506
  %180 = sitofp i32 %179 to float, !dbg !1506
  %181 = fdiv float %180, 6.502500e+04, !dbg !1507
  %182 = load ptr, ptr %9, align 8, !dbg !1508
  %183 = load float, ptr %182, align 4, !dbg !1509
  %184 = fadd float %183, %181, !dbg !1509
  store float %184, ptr %182, align 4, !dbg !1509
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %21) #3, !dbg !1468
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13) #3, !dbg !1468
  ret void, !dbg !1468

185:                                              ; preds = %143, %139
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13) #3, !dbg !1468
  br label %186, !dbg !1468

186:                                              ; preds = %185
  %187 = load ptr, ptr %14, align 8, !dbg !1468
  %188 = load i32, ptr %15, align 4, !dbg !1468
  %189 = insertvalue { ptr, i32 } poison, ptr %187, 0, !dbg !1468
  %190 = insertvalue { ptr, i32 } %189, i32 %188, 1, !dbg !1468
  resume { ptr, i32 } %190, !dbg !1468
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !1510 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1513
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1514
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, float noundef %2) #7 comdat align 2 !dbg !1515 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1516, metadata !DIExpression()), !dbg !1517
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1518, metadata !DIExpression()), !dbg !1519
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1520, metadata !DIExpression()), !dbg !1521
  %7 = load ptr, ptr %4, align 8
  %8 = load float, ptr %5, align 4, !dbg !1522
  %9 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 0, !dbg !1523
  store float %8, ptr %9, align 4, !dbg !1524
  %10 = load float, ptr %6, align 4, !dbg !1525
  %11 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 1, !dbg !1526
  store float %10, ptr %11, align 4, !dbg !1527
  ret void, !dbg !1528
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #7 comdat !dbg !1529 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !1539
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !1541
  %6 = load ptr, ptr %4, align 8, !dbg !1542
  %7 = load i32, ptr %6, align 4, !dbg !1542
  %8 = load ptr, ptr %5, align 8, !dbg !1544
  %9 = load i32, ptr %8, align 4, !dbg !1544
  %10 = icmp slt i32 %7, %9, !dbg !1545
  br i1 %10, label %11, label %13, !dbg !1546

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !1547
  store ptr %12, ptr %3, align 8, !dbg !1548
  br label %15, !dbg !1548

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !1549
  store ptr %14, ptr %3, align 8, !dbg !1550
  br label %15, !dbg !1550

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !1551
  ret ptr %16, !dbg !1551
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef double @_Z3magR5Point(ptr noundef nonnull align 4 dereferenceable(8) %0) #7 comdat !dbg !1552 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1556, metadata !DIExpression()), !dbg !1557
  %3 = load ptr, ptr %2, align 8, !dbg !1558
  %4 = getelementptr inbounds %class.Point, ptr %3, i32 0, i32 0, !dbg !1559
  %5 = load float, ptr %4, align 4, !dbg !1559
  %6 = load ptr, ptr %2, align 8, !dbg !1560
  %7 = getelementptr inbounds %class.Point, ptr %6, i32 0, i32 0, !dbg !1561
  %8 = load float, ptr %7, align 4, !dbg !1561
  %9 = load ptr, ptr %2, align 8, !dbg !1562
  %10 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !1563
  %11 = load float, ptr %10, align 4, !dbg !1563
  %12 = load ptr, ptr %2, align 8, !dbg !1564
  %13 = getelementptr inbounds %class.Point, ptr %12, i32 0, i32 1, !dbg !1565
  %14 = load float, ptr %13, align 4, !dbg !1565
  %15 = fmul float %11, %14, !dbg !1566
  %16 = call float @llvm.fmuladd.f32(float %5, float %8, float %15), !dbg !1567
  %17 = fpext float %16 to double, !dbg !1568
  %18 = call double @sqrt(double noundef %17) #3, !dbg !1569
  ret double %18, !dbg !1570
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z15SampleEdgePointffRK9FlexImageIhLi1EERiS3_(float noundef %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #4 comdat !dbg !1571 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1574, metadata !DIExpression()), !dbg !1575
  store float %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1576, metadata !DIExpression()), !dbg !1577
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1578, metadata !DIExpression()), !dbg !1579
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1580, metadata !DIExpression()), !dbg !1581
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1582, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1584, metadata !DIExpression()), !dbg !1585
  %14 = load float, ptr %6, align 4, !dbg !1586
  %15 = fadd float %14, 5.000000e-01, !dbg !1587
  %16 = fptosi float %15 to i32, !dbg !1586
  store i32 %16, ptr %11, align 4, !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1588, metadata !DIExpression()), !dbg !1589
  %17 = load float, ptr %7, align 4, !dbg !1590
  %18 = fadd float %17, 5.000000e-01, !dbg !1591
  %19 = fptosi float %18 to i32, !dbg !1590
  store i32 %19, ptr %12, align 4, !dbg !1589
  %20 = load i32, ptr %11, align 4, !dbg !1592
  %21 = icmp sge i32 %20, 0, !dbg !1594
  br i1 %21, label %22, label %52, !dbg !1595

22:                                               ; preds = %5
  %23 = load i32, ptr %11, align 4, !dbg !1596
  %24 = load ptr, ptr %8, align 8, !dbg !1597
  %25 = call noundef i32 @_ZNK9FlexImageIhLi1EE5WidthEv(ptr noundef nonnull align 8 dereferenceable(36) %24), !dbg !1598
  %26 = icmp slt i32 %23, %25, !dbg !1599
  br i1 %26, label %27, label %52, !dbg !1600

27:                                               ; preds = %22
  %28 = load i32, ptr %12, align 4, !dbg !1601
  %29 = icmp sge i32 %28, 0, !dbg !1602
  br i1 %29, label %30, label %52, !dbg !1603

30:                                               ; preds = %27
  %31 = load i32, ptr %12, align 4, !dbg !1604
  %32 = load ptr, ptr %8, align 8, !dbg !1605
  %33 = call noundef i32 @_ZNK9FlexImageIhLi1EE6HeightEv(ptr noundef nonnull align 8 dereferenceable(36) %32), !dbg !1606
  %34 = icmp slt i32 %31, %33, !dbg !1607
  br i1 %34, label %35, label %52, !dbg !1608

35:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1609, metadata !DIExpression()), !dbg !1611
  %36 = load ptr, ptr %8, align 8, !dbg !1612
  %37 = load i32, ptr %11, align 4, !dbg !1613
  %38 = load i32, ptr %12, align 4, !dbg !1614
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK9FlexImageIhLi1EEclEii(ptr noundef nonnull align 8 dereferenceable(36) %36, i32 noundef %37, i32 noundef %38), !dbg !1612
  %40 = load i8, ptr %39, align 1, !dbg !1612
  %41 = zext i8 %40 to i32, !dbg !1612
  %42 = sub nsw i32 255, %41, !dbg !1615
  store i32 %42, ptr %13, align 4, !dbg !1611
  %43 = load i32, ptr %13, align 4, !dbg !1616
  %44 = load i32, ptr %13, align 4, !dbg !1617
  %45 = mul nsw i32 %43, %44, !dbg !1618
  %46 = load ptr, ptr %9, align 8, !dbg !1619
  %47 = load i32, ptr %46, align 4, !dbg !1620
  %48 = add nsw i32 %47, %45, !dbg !1620
  store i32 %48, ptr %46, align 4, !dbg !1620
  %49 = load ptr, ptr %10, align 8, !dbg !1621
  %50 = load i32, ptr %49, align 4, !dbg !1622
  %51 = add nsw i32 %50, 1, !dbg !1622
  store i32 %51, ptr %49, align 4, !dbg !1622
  br label %52, !dbg !1623

52:                                               ; preds = %35, %30, %27, %22, %5
  ret void, !dbg !1624
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !1625 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1626, metadata !DIExpression()), !dbg !1627
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1628
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN17ImageMeasurements11InsideErrorERK17ProjectedCylinderRK11BinaryImageRiS6_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !1629 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %class.Point, align 4
  %14 = alloca %class.Point, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %class.Point, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca %class.Point, align 4
  %28 = alloca %class.Point, align 4
  %29 = alloca i32, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1637, metadata !DIExpression()), !dbg !1638
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1639, metadata !DIExpression()), !dbg !1640
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1641, metadata !DIExpression()), !dbg !1642
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1643, metadata !DIExpression()), !dbg !1644
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1645, metadata !DIExpression()), !dbg !1646
  %32 = load ptr, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1647, metadata !DIExpression()), !dbg !1648
  %33 = load ptr, ptr %7, align 8, !dbg !1649
  %34 = getelementptr inbounds %class.ProjectedCylinder, ptr %33, i32 0, i32 0, !dbg !1650
  %35 = getelementptr inbounds [4 x %class.Point], ptr %34, i64 0, i64 0, !dbg !1649
  store ptr %35, ptr %11, align 8, !dbg !1648
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1651, metadata !DIExpression()), !dbg !1652
  %36 = load ptr, ptr %7, align 8, !dbg !1653
  %37 = getelementptr inbounds %class.ProjectedCylinder, ptr %36, i32 0, i32 0, !dbg !1654
  %38 = getelementptr inbounds [4 x %class.Point], ptr %37, i64 0, i64 3, !dbg !1653
  store ptr %38, ptr %12, align 8, !dbg !1652
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13), !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1657, metadata !DIExpression()), !dbg !1658
  invoke void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %39 unwind label %216, !dbg !1658

39:                                               ; preds = %5
  %40 = load ptr, ptr %7, align 8, !dbg !1659
  %41 = getelementptr inbounds %class.ProjectedCylinder, ptr %40, i32 0, i32 0, !dbg !1660
  %42 = getelementptr inbounds [4 x %class.Point], ptr %41, i64 0, i64 1, !dbg !1659
  %43 = getelementptr inbounds %class.Point, ptr %42, i32 0, i32 0, !dbg !1661
  %44 = load float, ptr %43, align 4, !dbg !1661
  %45 = load ptr, ptr %11, align 8, !dbg !1662
  %46 = getelementptr inbounds %class.Point, ptr %45, i32 0, i32 0, !dbg !1663
  %47 = load float, ptr %46, align 4, !dbg !1663
  %48 = fsub float %44, %47, !dbg !1664
  %49 = load ptr, ptr %7, align 8, !dbg !1665
  %50 = getelementptr inbounds %class.ProjectedCylinder, ptr %49, i32 0, i32 0, !dbg !1666
  %51 = getelementptr inbounds [4 x %class.Point], ptr %50, i64 0, i64 1, !dbg !1665
  %52 = getelementptr inbounds %class.Point, ptr %51, i32 0, i32 1, !dbg !1667
  %53 = load float, ptr %52, align 4, !dbg !1667
  %54 = load ptr, ptr %11, align 8, !dbg !1668
  %55 = getelementptr inbounds %class.Point, ptr %54, i32 0, i32 1, !dbg !1669
  %56 = load float, ptr %55, align 4, !dbg !1669
  %57 = fsub float %53, %56, !dbg !1670
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %48, float noundef %57)
          to label %58 unwind label %220, !dbg !1671

58:                                               ; preds = %39
  %59 = load ptr, ptr %7, align 8, !dbg !1672
  %60 = getelementptr inbounds %class.ProjectedCylinder, ptr %59, i32 0, i32 0, !dbg !1673
  %61 = getelementptr inbounds [4 x %class.Point], ptr %60, i64 0, i64 2, !dbg !1672
  %62 = getelementptr inbounds %class.Point, ptr %61, i32 0, i32 0, !dbg !1674
  %63 = load float, ptr %62, align 4, !dbg !1674
  %64 = load ptr, ptr %12, align 8, !dbg !1675
  %65 = getelementptr inbounds %class.Point, ptr %64, i32 0, i32 0, !dbg !1676
  %66 = load float, ptr %65, align 4, !dbg !1676
  %67 = fsub float %63, %66, !dbg !1677
  %68 = load ptr, ptr %7, align 8, !dbg !1678
  %69 = getelementptr inbounds %class.ProjectedCylinder, ptr %68, i32 0, i32 0, !dbg !1679
  %70 = getelementptr inbounds [4 x %class.Point], ptr %69, i64 0, i64 2, !dbg !1678
  %71 = getelementptr inbounds %class.Point, ptr %70, i32 0, i32 1, !dbg !1680
  %72 = load float, ptr %71, align 4, !dbg !1680
  %73 = load ptr, ptr %12, align 8, !dbg !1681
  %74 = getelementptr inbounds %class.Point, ptr %73, i32 0, i32 1, !dbg !1682
  %75 = load float, ptr %74, align 4, !dbg !1682
  %76 = fsub float %72, %75, !dbg !1683
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef %67, float noundef %76)
          to label %77 unwind label %220, !dbg !1684

77:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1685, metadata !DIExpression()), !dbg !1686
  %78 = load ptr, ptr %11, align 8, !dbg !1687
  %79 = getelementptr inbounds %class.Point, ptr %78, i32 0, i32 0, !dbg !1688
  %80 = load float, ptr %79, align 4, !dbg !1688
  %81 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 0, !dbg !1689
  %82 = load float, ptr %81, align 4, !dbg !1689
  %83 = fdiv float %82, 2.000000e+00, !dbg !1690
  %84 = fadd float %80, %83, !dbg !1691
  %85 = load ptr, ptr %12, align 8, !dbg !1692
  %86 = getelementptr inbounds %class.Point, ptr %85, i32 0, i32 0, !dbg !1693
  %87 = load float, ptr %86, align 4, !dbg !1693
  %88 = getelementptr inbounds %class.Point, ptr %14, i32 0, i32 0, !dbg !1694
  %89 = load float, ptr %88, align 4, !dbg !1694
  %90 = fdiv float %89, 2.000000e+00, !dbg !1695
  %91 = fadd float %87, %90, !dbg !1696
  %92 = fsub float %84, %91, !dbg !1697
  %93 = load ptr, ptr %11, align 8, !dbg !1698
  %94 = getelementptr inbounds %class.Point, ptr %93, i32 0, i32 1, !dbg !1699
  %95 = load float, ptr %94, align 4, !dbg !1699
  %96 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 1, !dbg !1700
  %97 = load float, ptr %96, align 4, !dbg !1700
  %98 = fdiv float %97, 2.000000e+00, !dbg !1701
  %99 = fadd float %95, %98, !dbg !1702
  %100 = load ptr, ptr %12, align 8, !dbg !1703
  %101 = getelementptr inbounds %class.Point, ptr %100, i32 0, i32 1, !dbg !1704
  %102 = load float, ptr %101, align 4, !dbg !1704
  %103 = getelementptr inbounds %class.Point, ptr %14, i32 0, i32 1, !dbg !1705
  %104 = load float, ptr %103, align 4, !dbg !1705
  %105 = fdiv float %104, 2.000000e+00, !dbg !1706
  %106 = fadd float %102, %105, !dbg !1707
  %107 = fsub float %99, %106, !dbg !1708
  invoke void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %17, float noundef %92, float noundef %107)
          to label %108 unwind label %220, !dbg !1686

108:                                              ; preds = %77
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1709, metadata !DIExpression()), !dbg !1710
  %109 = invoke noundef double @_Z3magR5Point(ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %110 unwind label %224, !dbg !1711

110:                                              ; preds = %108
  %111 = getelementptr inbounds %class.ImageMeasurements, ptr %32, i32 0, i32 3, !dbg !1712
  %112 = load float, ptr %111, align 8, !dbg !1712
  %113 = fpext float %112 to double, !dbg !1712
  %114 = fdiv double %109, %113, !dbg !1713
  %115 = fadd double %114, 5.000000e-01, !dbg !1714
  %116 = fptosi double %115 to i32, !dbg !1715
  store i32 %116, ptr %19, align 4, !dbg !1716
  store i32 4, ptr %20, align 4, !dbg !1717
  %117 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 4 dereferenceable(4) %20)
          to label %118 unwind label %224, !dbg !1718

118:                                              ; preds = %110
  %119 = load i32, ptr %117, align 4, !dbg !1718
  store i32 %119, ptr %18, align 4, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1719, metadata !DIExpression()), !dbg !1720
  %120 = invoke noundef double @_Z3magR5Point(ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %121 unwind label %224, !dbg !1721

121:                                              ; preds = %118
  %122 = getelementptr inbounds %class.ImageMeasurements, ptr %32, i32 0, i32 2, !dbg !1722
  %123 = load float, ptr %122, align 4, !dbg !1722
  %124 = fpext float %123 to double, !dbg !1722
  %125 = fdiv double %120, %124, !dbg !1723
  %126 = fadd double %125, 5.000000e-01, !dbg !1724
  %127 = fptosi double %126 to i32, !dbg !1725
  store i32 %127, ptr %22, align 4, !dbg !1726
  store i32 4, ptr %23, align 4, !dbg !1727
  %128 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %23)
          to label %129 unwind label %224, !dbg !1728

129:                                              ; preds = %121
  %130 = load i32, ptr %128, align 4, !dbg !1728
  store i32 %130, ptr %21, align 4, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1729, metadata !DIExpression()), !dbg !1730
  %131 = load i32, ptr %18, align 4, !dbg !1731
  %132 = add nsw i32 %131, 1, !dbg !1731
  store i32 %132, ptr %18, align 4, !dbg !1731
  %133 = sitofp i32 %131 to float, !dbg !1732
  %134 = fdiv float 1.000000e+00, %133, !dbg !1733
  store float %134, ptr %24, align 4, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1734, metadata !DIExpression()), !dbg !1735
  %135 = load i32, ptr %21, align 4, !dbg !1736
  %136 = sitofp i32 %135 to float, !dbg !1736
  %137 = fdiv float 1.000000e+00, %136, !dbg !1737
  store float %137, ptr %25, align 4, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1738, metadata !DIExpression()), !dbg !1739
  store float 0.000000e+00, ptr %26, align 4, !dbg !1739
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1740, metadata !DIExpression()), !dbg !1741
  invoke void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %27)
          to label %138 unwind label %224, !dbg !1741

138:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1742, metadata !DIExpression()), !dbg !1743
  invoke void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %28)
          to label %139 unwind label %228, !dbg !1743

139:                                              ; preds = %138
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1744, metadata !DIExpression()), !dbg !1746
  store i32 0, ptr %29, align 4, !dbg !1746
  br label %140, !dbg !1747

140:                                              ; preds = %237, %139
  %141 = load i32, ptr %29, align 4, !dbg !1748
  %142 = load i32, ptr %18, align 4, !dbg !1750
  %143 = icmp slt i32 %141, %142, !dbg !1751
  br i1 %143, label %144, label %240, !dbg !1752

144:                                              ; preds = %140
  %145 = load ptr, ptr %11, align 8, !dbg !1753
  %146 = getelementptr inbounds %class.Point, ptr %145, i32 0, i32 0, !dbg !1755
  %147 = load float, ptr %146, align 4, !dbg !1755
  %148 = load float, ptr %26, align 4, !dbg !1756
  %149 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 0, !dbg !1757
  %150 = load float, ptr %149, align 4, !dbg !1757
  %151 = call float @llvm.fmuladd.f32(float %148, float %150, float %147), !dbg !1758
  %152 = load ptr, ptr %11, align 8, !dbg !1759
  %153 = getelementptr inbounds %class.Point, ptr %152, i32 0, i32 1, !dbg !1760
  %154 = load float, ptr %153, align 4, !dbg !1760
  %155 = load float, ptr %26, align 4, !dbg !1761
  %156 = getelementptr inbounds %class.Point, ptr %13, i32 0, i32 1, !dbg !1762
  %157 = load float, ptr %156, align 4, !dbg !1762
  %158 = call float @llvm.fmuladd.f32(float %155, float %157, float %154), !dbg !1763
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %27, float noundef %151, float noundef %158)
          to label %159 unwind label %232, !dbg !1764

159:                                              ; preds = %144
  %160 = load ptr, ptr %12, align 8, !dbg !1765
  %161 = getelementptr inbounds %class.Point, ptr %160, i32 0, i32 0, !dbg !1766
  %162 = load float, ptr %161, align 4, !dbg !1766
  %163 = load float, ptr %26, align 4, !dbg !1767
  %164 = getelementptr inbounds %class.Point, ptr %14, i32 0, i32 0, !dbg !1768
  %165 = load float, ptr %164, align 4, !dbg !1768
  %166 = call float @llvm.fmuladd.f32(float %163, float %165, float %162), !dbg !1769
  %167 = load ptr, ptr %12, align 8, !dbg !1770
  %168 = getelementptr inbounds %class.Point, ptr %167, i32 0, i32 1, !dbg !1771
  %169 = load float, ptr %168, align 4, !dbg !1771
  %170 = load float, ptr %26, align 4, !dbg !1772
  %171 = getelementptr inbounds %class.Point, ptr %14, i32 0, i32 1, !dbg !1773
  %172 = load float, ptr %171, align 4, !dbg !1773
  %173 = call float @llvm.fmuladd.f32(float %170, float %172, float %169), !dbg !1774
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %28, float noundef %166, float noundef %173)
          to label %174 unwind label %232, !dbg !1775

174:                                              ; preds = %159
  %175 = getelementptr inbounds %class.Point, ptr %28, i32 0, i32 0, !dbg !1776
  %176 = load float, ptr %175, align 4, !dbg !1776
  %177 = getelementptr inbounds %class.Point, ptr %27, i32 0, i32 0, !dbg !1777
  %178 = load float, ptr %177, align 4, !dbg !1777
  %179 = fsub float %176, %178, !dbg !1778
  %180 = getelementptr inbounds %class.Point, ptr %28, i32 0, i32 1, !dbg !1779
  %181 = load float, ptr %180, align 4, !dbg !1779
  %182 = getelementptr inbounds %class.Point, ptr %27, i32 0, i32 1, !dbg !1780
  %183 = load float, ptr %182, align 4, !dbg !1780
  %184 = fsub float %181, %183, !dbg !1781
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %17, float noundef %179, float noundef %184)
          to label %185 unwind label %232, !dbg !1782

185:                                              ; preds = %174
  %186 = load float, ptr %24, align 4, !dbg !1783
  %187 = load float, ptr %26, align 4, !dbg !1784
  %188 = fadd float %187, %186, !dbg !1784
  store float %188, ptr %26, align 4, !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1785, metadata !DIExpression()), !dbg !1786
  store float 0.000000e+00, ptr %30, align 4, !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1787, metadata !DIExpression()), !dbg !1789
  store i32 0, ptr %31, align 4, !dbg !1789
  br label %189, !dbg !1790

189:                                              ; preds = %213, %185
  %190 = load i32, ptr %31, align 4, !dbg !1791
  %191 = load i32, ptr %21, align 4, !dbg !1793
  %192 = icmp slt i32 %190, %191, !dbg !1794
  br i1 %192, label %193, label %236, !dbg !1795

193:                                              ; preds = %189
  %194 = getelementptr inbounds %class.Point, ptr %27, i32 0, i32 0, !dbg !1796
  %195 = load float, ptr %194, align 4, !dbg !1796
  %196 = load float, ptr %30, align 4, !dbg !1798
  %197 = getelementptr inbounds %class.Point, ptr %17, i32 0, i32 0, !dbg !1799
  %198 = load float, ptr %197, align 4, !dbg !1799
  %199 = call float @llvm.fmuladd.f32(float %196, float %198, float %195), !dbg !1800
  %200 = getelementptr inbounds %class.Point, ptr %27, i32 0, i32 1, !dbg !1801
  %201 = load float, ptr %200, align 4, !dbg !1801
  %202 = load float, ptr %30, align 4, !dbg !1802
  %203 = getelementptr inbounds %class.Point, ptr %17, i32 0, i32 1, !dbg !1803
  %204 = load float, ptr %203, align 4, !dbg !1803
  %205 = call float @llvm.fmuladd.f32(float %202, float %204, float %201), !dbg !1804
  %206 = load ptr, ptr %8, align 8, !dbg !1805
  %207 = load ptr, ptr %9, align 8, !dbg !1806
  %208 = load ptr, ptr %10, align 8, !dbg !1807
  invoke void @_Z17SampleInsidePointffRK11BinaryImageRiS2_(float noundef %199, float noundef %205, ptr noundef nonnull align 8 dereferenceable(24) %206, ptr noundef nonnull align 4 dereferenceable(4) %207, ptr noundef nonnull align 4 dereferenceable(4) %208)
          to label %209 unwind label %232, !dbg !1808

209:                                              ; preds = %193
  %210 = load float, ptr %25, align 4, !dbg !1809
  %211 = load float, ptr %30, align 4, !dbg !1810
  %212 = fadd float %211, %210, !dbg !1810
  store float %212, ptr %30, align 4, !dbg !1810
  br label %213, !dbg !1811

213:                                              ; preds = %209
  %214 = load i32, ptr %31, align 4, !dbg !1812
  %215 = add nsw i32 %214, 1, !dbg !1812
  store i32 %215, ptr %31, align 4, !dbg !1812
  br label %189, !dbg !1813, !llvm.loop !1814

216:                                              ; preds = %5
  %217 = landingpad { ptr, i32 }
          cleanup, !dbg !1816
  %218 = extractvalue { ptr, i32 } %217, 0, !dbg !1816
  store ptr %218, ptr %15, align 8, !dbg !1816
  %219 = extractvalue { ptr, i32 } %217, 1, !dbg !1816
  store i32 %219, ptr %16, align 4, !dbg !1816
  br label %244, !dbg !1816

220:                                              ; preds = %77, %58, %39
  %221 = landingpad { ptr, i32 }
          cleanup, !dbg !1816
  %222 = extractvalue { ptr, i32 } %221, 0, !dbg !1816
  store ptr %222, ptr %15, align 8, !dbg !1816
  %223 = extractvalue { ptr, i32 } %221, 1, !dbg !1816
  store i32 %223, ptr %16, align 4, !dbg !1816
  br label %243, !dbg !1816

224:                                              ; preds = %129, %121, %118, %110, %108
  %225 = landingpad { ptr, i32 }
          cleanup, !dbg !1816
  %226 = extractvalue { ptr, i32 } %225, 0, !dbg !1816
  store ptr %226, ptr %15, align 8, !dbg !1816
  %227 = extractvalue { ptr, i32 } %225, 1, !dbg !1816
  store i32 %227, ptr %16, align 4, !dbg !1816
  br label %242, !dbg !1816

228:                                              ; preds = %138
  %229 = landingpad { ptr, i32 }
          cleanup, !dbg !1816
  %230 = extractvalue { ptr, i32 } %229, 0, !dbg !1816
  store ptr %230, ptr %15, align 8, !dbg !1816
  %231 = extractvalue { ptr, i32 } %229, 1, !dbg !1816
  store i32 %231, ptr %16, align 4, !dbg !1816
  br label %241, !dbg !1816

232:                                              ; preds = %193, %174, %159, %144
  %233 = landingpad { ptr, i32 }
          cleanup, !dbg !1817
  %234 = extractvalue { ptr, i32 } %233, 0, !dbg !1817
  store ptr %234, ptr %15, align 8, !dbg !1817
  %235 = extractvalue { ptr, i32 } %233, 1, !dbg !1817
  store i32 %235, ptr %16, align 4, !dbg !1817
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %28) #3, !dbg !1816
  br label %241, !dbg !1816

236:                                              ; preds = %189
  br label %237, !dbg !1818

237:                                              ; preds = %236
  %238 = load i32, ptr %29, align 4, !dbg !1819
  %239 = add nsw i32 %238, 1, !dbg !1819
  store i32 %239, ptr %29, align 4, !dbg !1819
  br label %140, !dbg !1820, !llvm.loop !1821

240:                                              ; preds = %140
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %28) #3, !dbg !1816
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %27) #3, !dbg !1816
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %17) #3, !dbg !1816
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %14) #3, !dbg !1816
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13) #3, !dbg !1816
  ret void, !dbg !1816

241:                                              ; preds = %232, %228
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %27) #3, !dbg !1816
  br label %242, !dbg !1816

242:                                              ; preds = %241, %224
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %17) #3, !dbg !1816
  br label %243, !dbg !1816

243:                                              ; preds = %242, %220
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %14) #3, !dbg !1816
  br label %244, !dbg !1816

244:                                              ; preds = %243, %216
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %13) #3, !dbg !1816
  br label %245, !dbg !1816

245:                                              ; preds = %244
  %246 = load ptr, ptr %15, align 8, !dbg !1816
  %247 = load i32, ptr %16, align 4, !dbg !1816
  %248 = insertvalue { ptr, i32 } poison, ptr %246, 0, !dbg !1816
  %249 = insertvalue { ptr, i32 } %248, i32 %247, 1, !dbg !1816
  resume { ptr, i32 } %249, !dbg !1816
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, float noundef %2) unnamed_addr #6 comdat align 2 !dbg !1823 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1824, metadata !DIExpression()), !dbg !1825
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1826, metadata !DIExpression()), !dbg !1827
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1828, metadata !DIExpression()), !dbg !1829
  %7 = load ptr, ptr %4, align 8
  %8 = load float, ptr %5, align 4, !dbg !1830
  %9 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 0, !dbg !1832
  store float %8, ptr %9, align 4, !dbg !1833
  %10 = load float, ptr %6, align 4, !dbg !1834
  %11 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 1, !dbg !1835
  store float %10, ptr %11, align 4, !dbg !1836
  ret void, !dbg !1837
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z17SampleInsidePointffRK11BinaryImageRiS2_(float noundef %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #4 comdat !dbg !1838 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1841, metadata !DIExpression()), !dbg !1842
  store float %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1843, metadata !DIExpression()), !dbg !1844
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1845, metadata !DIExpression()), !dbg !1846
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1847, metadata !DIExpression()), !dbg !1848
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1849, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1851, metadata !DIExpression()), !dbg !1852
  %14 = load float, ptr %6, align 4, !dbg !1853
  %15 = fadd float %14, 5.000000e-01, !dbg !1854
  %16 = fptosi float %15 to i32, !dbg !1853
  store i32 %16, ptr %11, align 4, !dbg !1852
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1855, metadata !DIExpression()), !dbg !1856
  %17 = load float, ptr %7, align 4, !dbg !1857
  %18 = fadd float %17, 5.000000e-01, !dbg !1858
  %19 = fptosi float %18 to i32, !dbg !1857
  store i32 %19, ptr %12, align 4, !dbg !1856
  %20 = load i32, ptr %11, align 4, !dbg !1859
  %21 = icmp sge i32 %20, 0, !dbg !1861
  br i1 %21, label %22, label %48, !dbg !1862

22:                                               ; preds = %5
  %23 = load i32, ptr %11, align 4, !dbg !1863
  %24 = load ptr, ptr %8, align 8, !dbg !1864
  %25 = call noundef i32 @_ZNK11BinaryImage5WidthEv(ptr noundef nonnull align 8 dereferenceable(24) %24), !dbg !1865
  %26 = icmp slt i32 %23, %25, !dbg !1866
  br i1 %26, label %27, label %48, !dbg !1867

27:                                               ; preds = %22
  %28 = load i32, ptr %12, align 4, !dbg !1868
  %29 = icmp sge i32 %28, 0, !dbg !1869
  br i1 %29, label %30, label %48, !dbg !1870

30:                                               ; preds = %27
  %31 = load i32, ptr %12, align 4, !dbg !1871
  %32 = load ptr, ptr %8, align 8, !dbg !1872
  %33 = call noundef i32 @_ZNK11BinaryImage6HeightEv(ptr noundef nonnull align 8 dereferenceable(24) %32), !dbg !1873
  %34 = icmp slt i32 %31, %33, !dbg !1874
  br i1 %34, label %35, label %48, !dbg !1875

35:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1876, metadata !DIExpression()), !dbg !1878
  %36 = load ptr, ptr %8, align 8, !dbg !1879
  %37 = load i32, ptr %11, align 4, !dbg !1880
  %38 = load i32, ptr %12, align 4, !dbg !1881
  %39 = call noundef i32 @_ZNK11BinaryImageclEii(ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef %37, i32 noundef %38), !dbg !1879
  %40 = sub nsw i32 1, %39, !dbg !1882
  store i32 %40, ptr %13, align 4, !dbg !1878
  %41 = load i32, ptr %13, align 4, !dbg !1883
  %42 = load ptr, ptr %9, align 8, !dbg !1884
  %43 = load i32, ptr %42, align 4, !dbg !1885
  %44 = add nsw i32 %43, %41, !dbg !1885
  store i32 %44, ptr %42, align 4, !dbg !1885
  %45 = load ptr, ptr %10, align 8, !dbg !1886
  %46 = load i32, ptr %45, align 4, !dbg !1887
  %47 = add nsw i32 %46, 1, !dbg !1887
  store i32 %47, ptr %45, align 4, !dbg !1887
  br label %48, !dbg !1888

48:                                               ; preds = %35, %30, %27, %22, %5
  ret void, !dbg !1889
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_ZN17ImageMeasurements14ImageErrorEdgeERSt6vectorI9FlexImageIhLi1EESaIS2_EER24MultiCameraProjectedBody(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 align 2 !dbg !1890 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1898, metadata !DIExpression()), !dbg !1899
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !1901
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1902, metadata !DIExpression()), !dbg !1903
  %12 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1904, metadata !DIExpression()), !dbg !1905
  store i32 0, ptr %7, align 4, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1906, metadata !DIExpression()), !dbg !1907
  store float 0.000000e+00, ptr %8, align 4, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1908, metadata !DIExpression()), !dbg !1910
  store i32 0, ptr %9, align 4, !dbg !1910
  br label %13, !dbg !1911

13:                                               ; preds = %42, %3
  %14 = load i32, ptr %9, align 4, !dbg !1912
  %15 = load ptr, ptr %5, align 8, !dbg !1914
  %16 = call noundef i64 @_ZNKSt6vectorI9FlexImageIhLi1EESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !1915
  %17 = trunc i64 %16 to i32, !dbg !1914
  %18 = icmp slt i32 %14, %17, !dbg !1916
  br i1 %18, label %19, label %45, !dbg !1917

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1918, metadata !DIExpression()), !dbg !1920
  %20 = load ptr, ptr %6, align 8, !dbg !1921
  %21 = load i32, ptr %9, align 4, !dbg !1922
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN24MultiCameraProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef %21), !dbg !1921
  %23 = call noundef i32 @_ZN13ProjectedBody4SizeEv(ptr noundef nonnull align 8 dereferenceable(24) %22), !dbg !1923
  store i32 %23, ptr %10, align 4, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1924, metadata !DIExpression()), !dbg !1926
  store i32 0, ptr %11, align 4, !dbg !1926
  br label %24, !dbg !1927

24:                                               ; preds = %38, %19
  %25 = load i32, ptr %11, align 4, !dbg !1928
  %26 = load i32, ptr %10, align 4, !dbg !1930
  %27 = icmp slt i32 %25, %26, !dbg !1931
  br i1 %27, label %28, label %41, !dbg !1932

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !dbg !1933
  %30 = load i32, ptr %9, align 4, !dbg !1934
  %31 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN24MultiCameraProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef %30), !dbg !1933
  %32 = load i32, ptr %11, align 4, !dbg !1935
  %33 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN13ProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef %32), !dbg !1933
  %34 = load ptr, ptr %5, align 8, !dbg !1936
  %35 = load i32, ptr %9, align 4, !dbg !1937
  %36 = sext i32 %35 to i64, !dbg !1937
  %37 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI9FlexImageIhLi1EESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %36) #3, !dbg !1936
  call void @_ZN17ImageMeasurements9EdgeErrorERK17ProjectedCylinderRK9FlexImageIhLi1EERfRi(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 4 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7), !dbg !1938
  br label %38, !dbg !1938

38:                                               ; preds = %28
  %39 = load i32, ptr %11, align 4, !dbg !1939
  %40 = add nsw i32 %39, 1, !dbg !1939
  store i32 %40, ptr %11, align 4, !dbg !1939
  br label %24, !dbg !1940, !llvm.loop !1941

41:                                               ; preds = %24
  br label %42, !dbg !1943

42:                                               ; preds = %41
  %43 = load i32, ptr %9, align 4, !dbg !1944
  %44 = add nsw i32 %43, 1, !dbg !1944
  store i32 %44, ptr %9, align 4, !dbg !1944
  br label %13, !dbg !1945, !llvm.loop !1946

45:                                               ; preds = %13
  %46 = load float, ptr %8, align 4, !dbg !1948
  %47 = load i32, ptr %7, align 4, !dbg !1949
  %48 = sitofp i32 %47 to float, !dbg !1949
  %49 = fdiv float %46, %48, !dbg !1950
  ret float %49, !dbg !1951
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI9FlexImageIhLi1EESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !1952 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1958, metadata !DIExpression()), !dbg !1960
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !1961
  %5 = getelementptr inbounds %"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !1962
  %6 = load ptr, ptr %5, align 8, !dbg !1962
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !1963
  %8 = getelementptr inbounds %"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !1964
  %9 = load ptr, ptr %8, align 8, !dbg !1964
  %10 = ptrtoint ptr %6 to i64, !dbg !1965
  %11 = ptrtoint ptr %9 to i64, !dbg !1965
  %12 = sub i64 %10, %11, !dbg !1965
  %13 = sdiv exact i64 %12, 40, !dbg !1965
  ret i64 %13, !dbg !1966
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN24MultiCameraProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #7 comdat align 2 !dbg !1967 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1974, metadata !DIExpression()), !dbg !1976
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1977, metadata !DIExpression()), !dbg !1978
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.MultiCameraProjectedBody, ptr %5, i32 0, i32 0, !dbg !1979
  %7 = load i32, ptr %4, align 4, !dbg !1980
  %8 = sext i32 %7 to i64, !dbg !1980
  %9 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8) #3, !dbg !1979
  ret ptr %9, !dbg !1981
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN13ProjectedBody4SizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !1982 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1987, metadata !DIExpression()), !dbg !1989
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.ProjectedBody, ptr %3, i32 0, i32 0, !dbg !1990
  %5 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !1991
  %6 = trunc i64 %5 to i32, !dbg !1990
  ret i32 %6, !dbg !1992
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZN13ProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #7 comdat align 2 !dbg !1993 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2000, metadata !DIExpression()), !dbg !2001
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.ProjectedBody, ptr %5, i32 0, i32 0, !dbg !2002
  %7 = load i32, ptr %4, align 4, !dbg !2003
  %8 = sext i32 %7 to i64, !dbg !2003
  %9 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8) #3, !dbg !2002
  ret ptr %9, !dbg !2004
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI9FlexImageIhLi1EESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2005 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2069, metadata !DIExpression()), !dbg !2071
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2072, metadata !DIExpression()), !dbg !2073
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %5, i32 0, i32 0, !dbg !2074
  %7 = getelementptr inbounds %"struct.std::_Vector_base<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1>>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2075
  %8 = load ptr, ptr %7, align 8, !dbg !2075
  %9 = load i64, ptr %4, align 8, !dbg !2076
  %10 = getelementptr inbounds %class.FlexImage, ptr %8, i64 %9, !dbg !2077
  ret ptr %10, !dbg !2078
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_ZN17ImageMeasurements16ImageErrorInsideERSt6vectorI11BinaryImageSaIS1_EER24MultiCameraProjectedBody(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 align 2 !dbg !2079 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2085, metadata !DIExpression()), !dbg !2086
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2087, metadata !DIExpression()), !dbg !2088
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2089, metadata !DIExpression()), !dbg !2090
  %12 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i32 0, ptr %7, align 4, !dbg !2092
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2093, metadata !DIExpression()), !dbg !2094
  store i32 0, ptr %8, align 4, !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2095, metadata !DIExpression()), !dbg !2097
  store i32 0, ptr %9, align 4, !dbg !2097
  br label %13, !dbg !2098

13:                                               ; preds = %42, %3
  %14 = load i32, ptr %9, align 4, !dbg !2099
  %15 = load ptr, ptr %5, align 8, !dbg !2101
  %16 = call noundef i64 @_ZNKSt6vectorI11BinaryImageSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !2102
  %17 = trunc i64 %16 to i32, !dbg !2101
  %18 = icmp slt i32 %14, %17, !dbg !2103
  br i1 %18, label %19, label %45, !dbg !2104

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2105, metadata !DIExpression()), !dbg !2107
  %20 = load ptr, ptr %6, align 8, !dbg !2108
  %21 = load i32, ptr %9, align 4, !dbg !2109
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN24MultiCameraProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef %21), !dbg !2108
  %23 = call noundef i32 @_ZN13ProjectedBody4SizeEv(ptr noundef nonnull align 8 dereferenceable(24) %22), !dbg !2110
  store i32 %23, ptr %10, align 4, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2111, metadata !DIExpression()), !dbg !2113
  store i32 0, ptr %11, align 4, !dbg !2113
  br label %24, !dbg !2114

24:                                               ; preds = %38, %19
  %25 = load i32, ptr %11, align 4, !dbg !2115
  %26 = load i32, ptr %10, align 4, !dbg !2117
  %27 = icmp slt i32 %25, %26, !dbg !2118
  br i1 %27, label %28, label %41, !dbg !2119

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !dbg !2120
  %30 = load i32, ptr %9, align 4, !dbg !2121
  %31 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN24MultiCameraProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef %30), !dbg !2120
  %32 = load i32, ptr %11, align 4, !dbg !2122
  %33 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN13ProjectedBodyclEi(ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef %32), !dbg !2120
  %34 = load ptr, ptr %5, align 8, !dbg !2123
  %35 = load i32, ptr %9, align 4, !dbg !2124
  %36 = sext i32 %35 to i64, !dbg !2124
  %37 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11BinaryImageSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %36) #3, !dbg !2123
  call void @_ZN17ImageMeasurements11InsideErrorERK17ProjectedCylinderRK11BinaryImageRiS6_(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 4 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7), !dbg !2125
  br label %38, !dbg !2125

38:                                               ; preds = %28
  %39 = load i32, ptr %11, align 4, !dbg !2126
  %40 = add nsw i32 %39, 1, !dbg !2126
  store i32 %40, ptr %11, align 4, !dbg !2126
  br label %24, !dbg !2127, !llvm.loop !2128

41:                                               ; preds = %24
  br label %42, !dbg !2130

42:                                               ; preds = %41
  %43 = load i32, ptr %9, align 4, !dbg !2131
  %44 = add nsw i32 %43, 1, !dbg !2131
  store i32 %44, ptr %9, align 4, !dbg !2131
  br label %13, !dbg !2132, !llvm.loop !2133

45:                                               ; preds = %13
  %46 = load i32, ptr %8, align 4, !dbg !2135
  %47 = sitofp i32 %46 to float, !dbg !2135
  %48 = load i32, ptr %7, align 4, !dbg !2136
  %49 = sitofp i32 %48 to float, !dbg !2136
  %50 = fdiv float %47, %49, !dbg !2137
  ret float %50, !dbg !2138
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI11BinaryImageSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2139 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2145, metadata !DIExpression()), !dbg !2147
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !2148
  %5 = getelementptr inbounds %"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !2149
  %6 = load ptr, ptr %5, align 8, !dbg !2149
  %7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !2150
  %8 = getelementptr inbounds %"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !2151
  %9 = load ptr, ptr %8, align 8, !dbg !2151
  %10 = ptrtoint ptr %6 to i64, !dbg !2152
  %11 = ptrtoint ptr %9 to i64, !dbg !2152
  %12 = sub i64 %10, %11, !dbg !2152
  %13 = sdiv exact i64 %12, 24, !dbg !2152
  ret i64 %13, !dbg !2153
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11BinaryImageSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2154 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2210, metadata !DIExpression()), !dbg !2212
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2213, metadata !DIExpression()), !dbg !2214
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %5, i32 0, i32 0, !dbg !2215
  %7 = getelementptr inbounds %"struct.std::_Vector_base<BinaryImage, std::allocator<BinaryImage>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2216
  %8 = load ptr, ptr %7, align 8, !dbg !2216
  %9 = load i64, ptr %4, align 8, !dbg !2217
  %10 = getelementptr inbounds %class.BinaryImage, ptr %8, i64 %9, !dbg !2218
  ret ptr %10, !dbg !2219
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9FlexImageIhLi1EE5WidthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7 comdat align 2 !dbg !2220 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2225, metadata !DIExpression()), !dbg !2227
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.FlexImage, ptr %3, i32 0, i32 4, !dbg !2228
  %5 = getelementptr inbounds %class.FISize, ptr %4, i32 0, i32 0, !dbg !2229
  %6 = load i32, ptr %5, align 8, !dbg !2229
  ret i32 %6, !dbg !2230
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9FlexImageIhLi1EE6HeightEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7 comdat align 2 !dbg !2231 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2233, metadata !DIExpression()), !dbg !2234
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.FlexImage, ptr %3, i32 0, i32 4, !dbg !2235
  %5 = getelementptr inbounds %class.FISize, ptr %4, i32 0, i32 1, !dbg !2236
  %6 = load i32, ptr %5, align 4, !dbg !2236
  ret i32 %6, !dbg !2237
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK9FlexImageIhLi1EEclEii(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 !dbg !2238 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2243, metadata !DIExpression()), !dbg !2244
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2247, metadata !DIExpression()), !dbg !2248
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4, !dbg !2249
  %9 = load i32, ptr %6, align 4, !dbg !2250
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK9FlexImageIhLi1EEclEiii(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %8, i32 noundef %9, i32 noundef 0), !dbg !2251
  ret ptr %10, !dbg !2252
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK9FlexImageIhLi1EEclEiii(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 comdat align 2 !dbg !2253 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2257, metadata !DIExpression()), !dbg !2258
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2261, metadata !DIExpression()), !dbg !2262
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2263, metadata !DIExpression()), !dbg !2264
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %class.FlexImage, ptr %9, i32 0, i32 1, !dbg !2265
  %11 = load ptr, ptr %10, align 8, !dbg !2265
  %12 = getelementptr inbounds %class.FlexImage, ptr %9, i32 0, i32 3, !dbg !2266
  %13 = load i32, ptr %12, align 4, !dbg !2266
  %14 = load i32, ptr %7, align 4, !dbg !2267
  %15 = mul nsw i32 %13, %14, !dbg !2268
  %16 = sext i32 %15 to i64, !dbg !2269
  %17 = getelementptr inbounds i8, ptr %11, i64 %16, !dbg !2269
  %18 = getelementptr inbounds %class.FlexImage, ptr %9, i32 0, i32 2, !dbg !2270
  %19 = load i32, ptr %18, align 8, !dbg !2270
  %20 = load i32, ptr %6, align 4, !dbg !2271
  %21 = mul nsw i32 %19, %20, !dbg !2272
  %22 = sext i32 %21 to i64, !dbg !2273
  %23 = getelementptr inbounds i8, ptr %17, i64 %22, !dbg !2273
  %24 = load i32, ptr %8, align 4, !dbg !2274
  %25 = sext i32 %24 to i64, !dbg !2274
  %26 = mul i64 %25, 1, !dbg !2275
  %27 = getelementptr inbounds i8, ptr %23, i64 %26, !dbg !2276
  ret ptr %27, !dbg !2277
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11BinaryImage5WidthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2278 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2283, metadata !DIExpression()), !dbg !2285
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.BinaryImage, ptr %3, i32 0, i32 2, !dbg !2286
  %5 = load i32, ptr %4, align 8, !dbg !2286
  ret i32 %5, !dbg !2287
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11BinaryImage6HeightEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2288 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2290, metadata !DIExpression()), !dbg !2291
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.BinaryImage, ptr %3, i32 0, i32 3, !dbg !2292
  %5 = load i32, ptr %4, align 4, !dbg !2292
  ret i32 %5, !dbg !2293
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11BinaryImageclEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) #7 comdat align 2 !dbg !2294 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2300, metadata !DIExpression()), !dbg !2301
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2302, metadata !DIExpression()), !dbg !2303
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2304, metadata !DIExpression()), !dbg !2305
  %10 = getelementptr inbounds %class.BinaryImage, ptr %9, i32 0, i32 2, !dbg !2306
  %11 = load i32, ptr %10, align 8, !dbg !2306
  %12 = load i32, ptr %6, align 4, !dbg !2307
  %13 = mul nsw i32 %11, %12, !dbg !2308
  %14 = load i32, ptr %5, align 4, !dbg !2309
  %15 = add nsw i32 %13, %14, !dbg !2310
  store i32 %15, ptr %7, align 4, !dbg !2305
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2311, metadata !DIExpression()), !dbg !2312
  %16 = load i32, ptr %7, align 4, !dbg !2313
  %17 = sdiv i32 %16, 8, !dbg !2314
  store i32 %17, ptr %8, align 4, !dbg !2312
  %18 = getelementptr inbounds %class.BinaryImage, ptr %9, i32 0, i32 1, !dbg !2315
  %19 = load ptr, ptr %18, align 8, !dbg !2315
  %20 = load i32, ptr %8, align 4, !dbg !2316
  %21 = sext i32 %20 to i64, !dbg !2315
  %22 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !2315
  %23 = load i8, ptr %22, align 1, !dbg !2315
  %24 = zext i8 %23 to i32, !dbg !2315
  %25 = load i32, ptr %7, align 4, !dbg !2317
  %26 = srem i32 %25, 8, !dbg !2318
  %27 = ashr i32 %24, %26, !dbg !2319
  %28 = and i32 %27, 1, !dbg !2320
  ret i32 %28, !dbg !2321
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2322 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2378, metadata !DIExpression()), !dbg !2380
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2381, metadata !DIExpression()), !dbg !2382
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %5, i32 0, i32 0, !dbg !2383
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2384
  %8 = load ptr, ptr %7, align 8, !dbg !2384
  %9 = load i64, ptr %4, align 8, !dbg !2385
  %10 = getelementptr inbounds %class.ProjectedBody, ptr %8, i64 %9, !dbg !2386
  ret ptr %10, !dbg !2387
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2388 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2395, metadata !DIExpression()), !dbg !2397
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %3, i32 0, i32 0, !dbg !2398
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !2399
  %6 = load ptr, ptr %5, align 8, !dbg !2399
  %7 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %3, i32 0, i32 0, !dbg !2400
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !2401
  %9 = load ptr, ptr %8, align 8, !dbg !2401
  %10 = ptrtoint ptr %6 to i64, !dbg !2402
  %11 = ptrtoint ptr %9 to i64, !dbg !2402
  %12 = sub i64 %10, %11, !dbg !2402
  %13 = sdiv exact i64 %12, 32, !dbg !2402
  ret i64 %13, !dbg !2403
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2404 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2460, metadata !DIExpression()), !dbg !2462
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2463, metadata !DIExpression()), !dbg !2464
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %5, i32 0, i32 0, !dbg !2465
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2466
  %8 = load ptr, ptr %7, align 8, !dbg !2466
  %9 = load i64, ptr %4, align 8, !dbg !2467
  %10 = getelementptr inbounds %class.ProjectedCylinder, ptr %8, i64 %9, !dbg !2468
  ret ptr %10, !dbg !2469
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_ImageMeasurements.cpp() #0 section ".text.startup" !dbg !2470 {
  call void @__cxx_global_var_init(), !dbg !2472
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322}
!llvm.ident = !{!1323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !8, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !36, imports: !37, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "../TrackingBenchmark/ImageMeasurements.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "73a1ebe7ab874009fb8e28f8e8d2db6c")
!9 = !{!10, !11, !12, !13, !15, !17, !22}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !18, line: 424, baseType: !19, flags: DIFlagPublic)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !20, line: 280, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Point", file: !23, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !24, identifier: "_ZTS5Point")
!23 = !DIFile(filename: "../TrackingBenchmark/CameraModel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "3c500b48be5c6a308af2a7bf4cee9701")
!24 = !{!25, !26, !27, !31, !34, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !22, file: !23, line: 33, baseType: !10, size: 32, flags: DIFlagPublic)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !22, file: !23, line: 33, baseType: !10, size: 32, offset: 32, flags: DIFlagPublic)
!27 = !DISubprogram(name: "Point", scope: !22, file: !23, line: 34, type: !28, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !DISubprogram(name: "Point", scope: !22, file: !23, line: 35, type: !32, scopeLine: 35, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !30, !10, !10}
!34 = !DISubprogram(name: "~Point", scope: !22, file: !23, line: 36, type: !28, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!35 = !DISubprogram(name: "Set", linkageName: "_ZN5Point3SetEff", scope: !22, file: !23, line: 37, type: !32, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!36 = !{!0}
!37 = !{!38, !42, !60, !63, !68, !76, !84, !88, !95, !99, !103, !105, !107, !111, !122, !126, !132, !138, !140, !144, !148, !152, !156, !169, !171, !175, !179, !183, !185, !190, !194, !198, !200, !202, !206, !214, !218, !222, !226, !228, !234, !236, !242, !246, !250, !255, !259, !263, !267, !269, !271, !275, !279, !283, !285, !289, !293, !295, !297, !301, !307, !312, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !334, !338, !341, !344, !347, !349, !351, !353, !356, !359, !362, !365, !368, !370, !374, !378, !381, !384, !386, !388, !390, !392, !395, !398, !401, !404, !407, !409, !413, !417, !422, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !458, !462, !468, !472, !477, !479, !483, !487, !491, !501, !505, !509, !513, !517, !521, !525, !529, !533, !537, !541, !545, !549, !551, !555, !559, !563, !569, !573, !577, !579, !583, !587, !593, !595, !599, !603, !607, !611, !615, !619, !623, !624, !625, !626, !628, !629, !630, !631, !632, !633, !634, !638, !644, !649, !653, !655, !657, !659, !661, !668, !672, !676, !680, !684, !688, !693, !697, !699, !703, !709, !713, !718, !720, !722, !726, !730, !734, !736, !738, !740, !742, !746, !748, !750, !754, !758, !762, !766, !770, !772, !774, !778, !782, !786, !790, !792, !794, !798, !802, !803, !804, !805, !806, !807, !809, !810, !811, !812, !813, !814, !815, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !849, !853, !857, !861, !865, !869, !871, !873, !875, !879, !883, !887, !891, !895, !897, !899, !901, !905, !909, !913, !915, !917, !921, !925, !931, !934, !935, !937, !939, !941, !943, !947, !949, !951, !953, !955, !957, !959, !961, !963, !967, !971, !973, !977, !981, !987, !989, !991, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1014, !1018, !1020, !1022, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1042, !1044, !1046, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1076, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1114, !1118, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1144, !1148, !1152, !1154, !1156, !1158, !1162, !1166, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1198, !1202, !1206, !1208, !1210, !1212, !1214, !1218, !1222, !1224, !1226, !1228, !1230, !1232, !1234, !1238, !1242, !1244, !1246, !1248, !1250, !1254, !1258, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1278, !1282, !1286, !1288, !1292, !1296, !1298, !1300, !1302, !1304, !1306, !1308, !1310, !1315}
!38 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !39, entity: !40, file: !41, line: 58)
!39 = !DINamespace(name: "__gnu_debug", scope: null)
!40 = !DINamespace(name: "__debug", scope: !2)
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !43, file: !59, line: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !44, line: 6, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !46, line: 21, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTS11__mbstate_t")
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !47, file: !46, line: 15, baseType: !11, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !47, file: !46, line: 20, baseType: !51, size: 32, offset: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !47, file: !46, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !52, identifier: "_ZTSN11__mbstate_tUt_E")
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !51, file: !46, line: 18, baseType: !54, size: 32)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !51, file: !46, line: 19, baseType: !56, size: 32)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 4)
!59 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !59, line: 141)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !62, line: 20, baseType: !54)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !64, file: !59, line: 143)
!64 = !DISubprogram(name: "btowc", scope: !65, file: !65, line: 285, type: !66, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!66 = !DISubroutineType(types: !67)
!67 = !{!61, !11}
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !69, file: !59, line: 144)
!69 = !DISubprogram(name: "fgetwc", scope: !65, file: !65, line: 744, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{!61, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !74, line: 5, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !59, line: 145)
!77 = !DISubprogram(name: "fgetws", scope: !65, file: !65, line: 773, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !82, !11, !83}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !85, file: !59, line: 146)
!85 = !DISubprogram(name: "fputwc", scope: !65, file: !65, line: 758, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!61, !81, !72}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !89, file: !59, line: 147)
!89 = !DISubprogram(name: "fputws", scope: !65, file: !65, line: 780, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!11, !92, !83}
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !96, file: !59, line: 148)
!96 = !DISubprogram(name: "fwide", scope: !65, file: !65, line: 588, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!11, !72, !11}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !100, file: !59, line: 149)
!100 = !DISubprogram(name: "fwprintf", scope: !65, file: !65, line: 595, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!11, !83, !92, null}
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !104, file: !59, line: 150)
!104 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !65, file: !65, line: 657, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !59, line: 151)
!106 = !DISubprogram(name: "getwc", scope: !65, file: !65, line: 745, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !108, file: !59, line: 152)
!108 = !DISubprogram(name: "getwchar", scope: !65, file: !65, line: 751, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!61}
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !59, line: 153)
!112 = !DISubprogram(name: "mbrlen", scope: !65, file: !65, line: 308, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !117, !115, !120}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 46, baseType: !21)
!116 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !123, file: !59, line: 154)
!123 = !DISubprogram(name: "mbrtowc", scope: !65, file: !65, line: 297, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!115, !82, !117, !115, !120}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !127, file: !59, line: 155)
!127 = !DISubprogram(name: "mbsinit", scope: !65, file: !65, line: 293, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!11, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !133, file: !59, line: 156)
!133 = !DISubprogram(name: "mbsrtowcs", scope: !65, file: !65, line: 338, type: !134, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{!115, !82, !136, !115, !120}
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !139, file: !59, line: 157)
!139 = !DISubprogram(name: "putwc", scope: !65, file: !65, line: 759, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !141, file: !59, line: 158)
!141 = !DISubprogram(name: "putwchar", scope: !65, file: !65, line: 765, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!61, !81}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !145, file: !59, line: 160)
!145 = !DISubprogram(name: "swprintf", scope: !65, file: !65, line: 605, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!11, !82, !115, !92, null}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !149, file: !59, line: 162)
!149 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !65, file: !65, line: 664, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!11, !92, !92, null}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !153, file: !59, line: 163)
!153 = !DISubprogram(name: "ungetwc", scope: !65, file: !65, line: 788, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!61, !61, !72}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !157, file: !59, line: 164)
!157 = !DISubprogram(name: "vfwprintf", scope: !65, file: !65, line: 613, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!11, !83, !92, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !162, identifier: "_ZTS13__va_list_tag")
!162 = !{!163, !165, !166, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !161, file: !164, baseType: !54, size: 32)
!164 = !DIFile(filename: "../TrackingBenchmark/ImageMeasurements.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !161, file: !164, baseType: !54, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !161, file: !164, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !161, file: !164, baseType: !167, size: 64, offset: 128)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !170, file: !59, line: 166)
!170 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !65, file: !65, line: 711, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !172, file: !59, line: 169)
!172 = !DISubprogram(name: "vswprintf", scope: !65, file: !65, line: 626, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!11, !82, !115, !92, !160}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !176, file: !59, line: 172)
!176 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !65, file: !65, line: 718, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!11, !92, !92, !160}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !180, file: !59, line: 174)
!180 = !DISubprogram(name: "vwprintf", scope: !65, file: !65, line: 621, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!11, !92, !160}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !184, file: !59, line: 176)
!184 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !65, file: !65, line: 715, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !186, file: !59, line: 178)
!186 = !DISubprogram(name: "wcrtomb", scope: !65, file: !65, line: 302, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!115, !189, !81, !120}
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !191, file: !59, line: 179)
!191 = !DISubprogram(name: "wcscat", scope: !65, file: !65, line: 97, type: !192, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{!80, !82, !92}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !195, file: !59, line: 180)
!195 = !DISubprogram(name: "wcscmp", scope: !65, file: !65, line: 106, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!11, !93, !93}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !199, file: !59, line: 181)
!199 = !DISubprogram(name: "wcscoll", scope: !65, file: !65, line: 131, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !201, file: !59, line: 182)
!201 = !DISubprogram(name: "wcscpy", scope: !65, file: !65, line: 87, type: !192, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !203, file: !59, line: 183)
!203 = !DISubprogram(name: "wcscspn", scope: !65, file: !65, line: 188, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!115, !93, !93}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !207, file: !59, line: 184)
!207 = !DISubprogram(name: "wcsftime", scope: !65, file: !65, line: 852, type: !208, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{!115, !82, !115, !92, !210}
!210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !65, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !215, file: !59, line: 185)
!215 = !DISubprogram(name: "wcslen", scope: !65, file: !65, line: 223, type: !216, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!115, !93}
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !219, file: !59, line: 186)
!219 = !DISubprogram(name: "wcsncat", scope: !65, file: !65, line: 101, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{!80, !82, !92, !115}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !223, file: !59, line: 187)
!223 = !DISubprogram(name: "wcsncmp", scope: !65, file: !65, line: 109, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!11, !93, !93, !115}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !227, file: !59, line: 188)
!227 = !DISubprogram(name: "wcsncpy", scope: !65, file: !65, line: 92, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !59, line: 189)
!229 = !DISubprogram(name: "wcsrtombs", scope: !65, file: !65, line: 344, type: !230, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!115, !189, !232, !115, !120}
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !235, file: !59, line: 190)
!235 = !DISubprogram(name: "wcsspn", scope: !65, file: !65, line: 192, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !237, file: !59, line: 191)
!237 = !DISubprogram(name: "wcstod", scope: !65, file: !65, line: 378, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!12, !92, !240}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !243, file: !59, line: 193)
!243 = !DISubprogram(name: "wcstof", scope: !65, file: !65, line: 383, type: !244, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!10, !92, !240}
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !59, line: 195)
!247 = !DISubprogram(name: "wcstok", scope: !65, file: !65, line: 218, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!80, !82, !92, !240}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !59, line: 196)
!251 = !DISubprogram(name: "wcstol", scope: !65, file: !65, line: 429, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !92, !240, !11}
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !59, line: 197)
!256 = !DISubprogram(name: "wcstoul", scope: !65, file: !65, line: 434, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!21, !92, !240, !11}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !260, file: !59, line: 198)
!260 = !DISubprogram(name: "wcsxfrm", scope: !65, file: !65, line: 135, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!115, !82, !92, !115}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !264, file: !59, line: 199)
!264 = !DISubprogram(name: "wctob", scope: !65, file: !65, line: 289, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!11, !61}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !268, file: !59, line: 200)
!268 = !DISubprogram(name: "wmemcmp", scope: !65, file: !65, line: 259, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !59, line: 201)
!270 = !DISubprogram(name: "wmemcpy", scope: !65, file: !65, line: 263, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !272, file: !59, line: 202)
!272 = !DISubprogram(name: "wmemmove", scope: !65, file: !65, line: 268, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!80, !80, !93, !115}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !276, file: !59, line: 203)
!276 = !DISubprogram(name: "wmemset", scope: !65, file: !65, line: 272, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!80, !80, !81, !115}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !280, file: !59, line: 204)
!280 = !DISubprogram(name: "wprintf", scope: !65, file: !65, line: 602, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!11, !92, null}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !284, file: !59, line: 205)
!284 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !65, file: !65, line: 661, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !286, file: !59, line: 206)
!286 = !DISubprogram(name: "wcschr", scope: !65, file: !65, line: 165, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!80, !93, !81}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !59, line: 207)
!290 = !DISubprogram(name: "wcspbrk", scope: !65, file: !65, line: 202, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!80, !93, !93}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !294, file: !59, line: 208)
!294 = !DISubprogram(name: "wcsrchr", scope: !65, file: !65, line: 175, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !296, file: !59, line: 209)
!296 = !DISubprogram(name: "wcsstr", scope: !65, file: !65, line: 213, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !298, file: !59, line: 210)
!298 = !DISubprogram(name: "wmemchr", scope: !65, file: !65, line: 254, type: !299, flags: DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{!80, !93, !81, !115}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !303, file: !59, line: 251)
!302 = !DINamespace(name: "__gnu_cxx", scope: null)
!303 = !DISubprogram(name: "wcstold", scope: !65, file: !65, line: 385, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !92, !240}
!306 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !308, file: !59, line: 260)
!308 = !DISubprogram(name: "wcstoll", scope: !65, file: !65, line: 442, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !92, !240, !11}
!311 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !313, file: !59, line: 261)
!313 = !DISubprogram(name: "wcstoull", scope: !65, file: !65, line: 449, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !92, !240, !11}
!316 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !59, line: 267)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !308, file: !59, line: 268)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !59, line: 269)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !243, file: !59, line: 283)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !170, file: !59, line: 286)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !176, file: !59, line: 289)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !184, file: !59, line: 292)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !59, line: 296)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !308, file: !59, line: 297)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !59, line: 298)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !328, file: !333, line: 47)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !329, line: 24, baseType: !330)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !331, line: 37, baseType: !332)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!332 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !333, line: 48)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !329, line: 25, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !331, line: 39, baseType: !337)
!337 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !333, line: 49)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !329, line: 26, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !331, line: 41, baseType: !11)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !342, file: !333, line: 50)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !329, line: 27, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !331, line: 44, baseType: !254)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !333, line: 52)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !346, line: 58, baseType: !332)
!346 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !333, line: 53)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !346, line: 60, baseType: !254)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !350, file: !333, line: 54)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !346, line: 61, baseType: !254)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !333, line: 55)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !346, line: 62, baseType: !254)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !333, line: 57)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !346, line: 43, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !331, line: 52, baseType: !330)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !333, line: 58)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !346, line: 44, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !331, line: 54, baseType: !336)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !333, line: 59)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !346, line: 45, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !331, line: 56, baseType: !340)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !363, file: !333, line: 60)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !346, line: 46, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !331, line: 58, baseType: !343)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !333, line: 62)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !346, line: 101, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !331, line: 72, baseType: !254)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !369, file: !333, line: 63)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !346, line: 87, baseType: !254)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !371, file: !333, line: 65)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !372, line: 24, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !331, line: 38, baseType: !14)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !375, file: !333, line: 66)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !372, line: 25, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !331, line: 40, baseType: !377)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !379, file: !333, line: 67)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !372, line: 26, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !331, line: 42, baseType: !54)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !333, line: 68)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !372, line: 27, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !331, line: 45, baseType: !21)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !333, line: 70)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !346, line: 71, baseType: !14)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !387, file: !333, line: 71)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !346, line: 73, baseType: !21)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !333, line: 72)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !346, line: 74, baseType: !21)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !391, file: !333, line: 73)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !346, line: 75, baseType: !21)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !333, line: 75)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !346, line: 49, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !331, line: 53, baseType: !373)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !333, line: 76)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !346, line: 50, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !331, line: 55, baseType: !376)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !399, file: !333, line: 77)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !346, line: 51, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !331, line: 57, baseType: !380)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !333, line: 78)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !346, line: 52, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !331, line: 59, baseType: !383)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !333, line: 80)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !346, line: 102, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !331, line: 73, baseType: !21)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !408, file: !333, line: 81)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !346, line: 90, baseType: !21)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !412, line: 53)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !411, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!411 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!412 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !412, line: 54)
!414 = !DISubprogram(name: "setlocale", scope: !411, file: !411, line: 122, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!15, !11, !118}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !412, line: 55)
!418 = !DISubprogram(name: "localeconv", scope: !411, file: !411, line: 125, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !423, file: !427, line: 64)
!423 = !DISubprogram(name: "isalnum", scope: !424, file: !424, line: 108, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!425 = !DISubroutineType(types: !426)
!426 = !{!11, !11}
!427 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !427, line: 65)
!429 = !DISubprogram(name: "isalpha", scope: !424, file: !424, line: 109, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !431, file: !427, line: 66)
!431 = !DISubprogram(name: "iscntrl", scope: !424, file: !424, line: 110, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !433, file: !427, line: 67)
!433 = !DISubprogram(name: "isdigit", scope: !424, file: !424, line: 111, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !427, line: 68)
!435 = !DISubprogram(name: "isgraph", scope: !424, file: !424, line: 113, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !437, file: !427, line: 69)
!437 = !DISubprogram(name: "islower", scope: !424, file: !424, line: 112, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !427, line: 70)
!439 = !DISubprogram(name: "isprint", scope: !424, file: !424, line: 114, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !441, file: !427, line: 71)
!441 = !DISubprogram(name: "ispunct", scope: !424, file: !424, line: 115, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !443, file: !427, line: 72)
!443 = !DISubprogram(name: "isspace", scope: !424, file: !424, line: 116, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !427, line: 73)
!445 = !DISubprogram(name: "isupper", scope: !424, file: !424, line: 117, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !447, file: !427, line: 74)
!447 = !DISubprogram(name: "isxdigit", scope: !424, file: !424, line: 118, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !427, line: 75)
!449 = !DISubprogram(name: "tolower", scope: !424, file: !424, line: 122, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !427, line: 76)
!451 = !DISubprogram(name: "toupper", scope: !424, file: !424, line: 125, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !427, line: 87)
!453 = !DISubprogram(name: "isblank", scope: !424, file: !424, line: 130, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !457, line: 52)
!455 = !DISubprogram(name: "abs", scope: !456, file: !456, line: 848, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!457 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !459, file: !461, line: 127)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !456, line: 63, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!461 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !463, file: !461, line: 128)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !456, line: 71, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !465, identifier: "_ZTS6ldiv_t")
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !464, file: !456, line: 69, baseType: !254, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !464, file: !456, line: 70, baseType: !254, size: 64, offset: 64)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !461, line: 130)
!469 = !DISubprogram(name: "abort", scope: !456, file: !456, line: 598, type: !470, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{null}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !473, file: !461, line: 134)
!473 = !DISubprogram(name: "atexit", scope: !456, file: !456, line: 602, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{!11, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !461, line: 137)
!478 = !DISubprogram(name: "at_quick_exit", scope: !456, file: !456, line: 607, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !461, line: 140)
!480 = !DISubprogram(name: "atof", scope: !456, file: !456, line: 102, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!12, !118}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !461, line: 141)
!484 = !DISubprogram(name: "atoi", scope: !456, file: !456, line: 105, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!11, !118}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !461, line: 142)
!488 = !DISubprogram(name: "atol", scope: !456, file: !456, line: 108, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!254, !118}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !461, line: 143)
!492 = !DISubprogram(name: "bsearch", scope: !456, file: !456, line: 828, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!167, !495, !495, !115, !115, !497}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !456, line: 816, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!11, !495, !495}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !461, line: 144)
!502 = !DISubprogram(name: "calloc", scope: !456, file: !456, line: 543, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!167, !115, !115}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !461, line: 145)
!506 = !DISubprogram(name: "div", scope: !456, file: !456, line: 860, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!459, !11, !11}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !510, file: !461, line: 146)
!510 = !DISubprogram(name: "exit", scope: !456, file: !456, line: 624, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !11}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !461, line: 147)
!514 = !DISubprogram(name: "free", scope: !456, file: !456, line: 555, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !167}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !461, line: 148)
!518 = !DISubprogram(name: "getenv", scope: !456, file: !456, line: 641, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!15, !118}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !522, file: !461, line: 149)
!522 = !DISubprogram(name: "labs", scope: !456, file: !456, line: 849, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!254, !254}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !461, line: 150)
!526 = !DISubprogram(name: "ldiv", scope: !456, file: !456, line: 862, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!463, !254, !254}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !461, line: 151)
!530 = !DISubprogram(name: "malloc", scope: !456, file: !456, line: 540, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!167, !115}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !461, line: 153)
!534 = !DISubprogram(name: "mblen", scope: !456, file: !456, line: 930, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!11, !118, !115}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !461, line: 154)
!538 = !DISubprogram(name: "mbstowcs", scope: !456, file: !456, line: 941, type: !539, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{!115, !82, !117, !115}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !461, line: 155)
!542 = !DISubprogram(name: "mbtowc", scope: !456, file: !456, line: 933, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!11, !82, !117, !115}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !461, line: 157)
!546 = !DISubprogram(name: "qsort", scope: !456, file: !456, line: 838, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !167, !115, !115, !497}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !461, line: 160)
!550 = !DISubprogram(name: "quick_exit", scope: !456, file: !456, line: 630, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !552, file: !461, line: 163)
!552 = !DISubprogram(name: "rand", scope: !456, file: !456, line: 454, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!11}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !461, line: 164)
!556 = !DISubprogram(name: "realloc", scope: !456, file: !456, line: 551, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!167, !167, !115}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !560, file: !461, line: 165)
!560 = !DISubprogram(name: "srand", scope: !456, file: !456, line: 456, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !54}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !461, line: 166)
!564 = !DISubprogram(name: "strtod", scope: !456, file: !456, line: 118, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!12, !117, !567}
!567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !461, line: 167)
!570 = !DISubprogram(name: "strtol", scope: !456, file: !456, line: 177, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!254, !117, !567, !11}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !461, line: 168)
!574 = !DISubprogram(name: "strtoul", scope: !456, file: !456, line: 181, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!21, !117, !567, !11}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !461, line: 169)
!578 = !DISubprogram(name: "system", scope: !456, file: !456, line: 791, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !461, line: 171)
!580 = !DISubprogram(name: "wcstombs", scope: !456, file: !456, line: 945, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!115, !189, !92, !115}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !584, file: !461, line: 172)
!584 = !DISubprogram(name: "wctomb", scope: !456, file: !456, line: 937, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!11, !15, !81}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !588, file: !461, line: 200)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !456, line: 81, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !590, identifier: "_ZTS7lldiv_t")
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !589, file: !456, line: 79, baseType: !311, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !589, file: !456, line: 80, baseType: !311, size: 64, offset: 64)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !594, file: !461, line: 206)
!594 = !DISubprogram(name: "_Exit", scope: !456, file: !456, line: 636, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !596, file: !461, line: 210)
!596 = !DISubprogram(name: "llabs", scope: !456, file: !456, line: 852, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!311, !311}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !600, file: !461, line: 216)
!600 = !DISubprogram(name: "lldiv", scope: !456, file: !456, line: 866, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!588, !311, !311}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !604, file: !461, line: 227)
!604 = !DISubprogram(name: "atoll", scope: !456, file: !456, line: 113, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!311, !118}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !608, file: !461, line: 228)
!608 = !DISubprogram(name: "strtoll", scope: !456, file: !456, line: 201, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!311, !117, !567, !11}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !612, file: !461, line: 229)
!612 = !DISubprogram(name: "strtoull", scope: !456, file: !456, line: 206, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!316, !117, !567, !11}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !616, file: !461, line: 231)
!616 = !DISubprogram(name: "strtof", scope: !456, file: !456, line: 124, type: !617, flags: DIFlagPrototyped, spFlags: 0)
!617 = !DISubroutineType(types: !618)
!618 = !{!10, !117, !567}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !620, file: !461, line: 232)
!620 = !DISubprogram(name: "strtold", scope: !456, file: !456, line: 127, type: !621, flags: DIFlagPrototyped, spFlags: 0)
!621 = !DISubroutineType(types: !622)
!622 = !{!306, !117, !567}
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !588, file: !461, line: 240)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !461, line: 242)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !461, line: 244)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !461, line: 245)
!627 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !302, file: !461, line: 213, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !600, file: !461, line: 246)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !604, file: !461, line: 248)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !616, file: !461, line: 249)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !461, line: 250)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !612, file: !461, line: 251)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !620, file: !461, line: 252)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !637, line: 98)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !636, line: 7, baseType: !75)
!636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!637 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !637, line: 99)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !640, line: 84, baseType: !641)
!640 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !642, line: 14, baseType: !643)
!642 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !642, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !637, line: 101)
!645 = !DISubprogram(name: "clearerr", scope: !640, file: !640, line: 786, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !650, file: !637, line: 102)
!650 = !DISubprogram(name: "fclose", scope: !640, file: !640, line: 178, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!11, !648}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !654, file: !637, line: 103)
!654 = !DISubprogram(name: "feof", scope: !640, file: !640, line: 788, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !637, line: 104)
!656 = !DISubprogram(name: "ferror", scope: !640, file: !640, line: 790, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !637, line: 105)
!658 = !DISubprogram(name: "fflush", scope: !640, file: !640, line: 230, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !637, line: 106)
!660 = !DISubprogram(name: "fgetc", scope: !640, file: !640, line: 513, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !637, line: 107)
!662 = !DISubprogram(name: "fgetpos", scope: !640, file: !640, line: 760, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!11, !665, !666}
!665 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !648)
!666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !637, line: 108)
!669 = !DISubprogram(name: "fgets", scope: !640, file: !640, line: 592, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!15, !189, !11, !665}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !637, line: 109)
!673 = !DISubprogram(name: "fopen", scope: !640, file: !640, line: 258, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!648, !117, !117}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !637, line: 110)
!677 = !DISubprogram(name: "fprintf", scope: !640, file: !640, line: 350, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!11, !665, !117, null}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !681, file: !637, line: 111)
!681 = !DISubprogram(name: "fputc", scope: !640, file: !640, line: 549, type: !682, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{!11, !11, !648}
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !637, line: 112)
!685 = !DISubprogram(name: "fputs", scope: !640, file: !640, line: 655, type: !686, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DISubroutineType(types: !687)
!687 = !{!11, !117, !665}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !637, line: 113)
!689 = !DISubprogram(name: "fread", scope: !640, file: !640, line: 675, type: !690, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DISubroutineType(types: !691)
!691 = !{!115, !692, !115, !115, !665}
!692 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !637, line: 114)
!694 = !DISubprogram(name: "freopen", scope: !640, file: !640, line: 265, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!648, !117, !117, !665}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !637, line: 115)
!698 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !640, file: !640, line: 434, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !637, line: 116)
!700 = !DISubprogram(name: "fseek", scope: !640, file: !640, line: 713, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!11, !648, !254, !11}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !637, line: 117)
!704 = !DISubprogram(name: "fsetpos", scope: !640, file: !640, line: 765, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!11, !648, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !637, line: 118)
!710 = !DISubprogram(name: "ftell", scope: !640, file: !640, line: 718, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!254, !648}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !637, line: 119)
!714 = !DISubprogram(name: "fwrite", scope: !640, file: !640, line: 681, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!115, !717, !115, !115, !665}
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !495)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !637, line: 120)
!719 = !DISubprogram(name: "getc", scope: !640, file: !640, line: 514, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !637, line: 121)
!721 = !DISubprogram(name: "getchar", scope: !640, file: !640, line: 520, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !637, line: 124)
!723 = !DISubprogram(name: "gets", scope: !640, file: !640, line: 605, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!15, !15}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !637, line: 126)
!727 = !DISubprogram(name: "perror", scope: !640, file: !640, line: 804, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !118}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !637, line: 127)
!731 = !DISubprogram(name: "printf", scope: !640, file: !640, line: 356, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!11, !117, null}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !735, file: !637, line: 128)
!735 = !DISubprogram(name: "putc", scope: !640, file: !640, line: 550, type: !682, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !637, line: 129)
!737 = !DISubprogram(name: "putchar", scope: !640, file: !640, line: 556, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !637, line: 130)
!739 = !DISubprogram(name: "puts", scope: !640, file: !640, line: 661, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !637, line: 131)
!741 = !DISubprogram(name: "remove", scope: !640, file: !640, line: 152, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !637, line: 132)
!743 = !DISubprogram(name: "rename", scope: !640, file: !640, line: 154, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!11, !118, !118}
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !747, file: !637, line: 133)
!747 = !DISubprogram(name: "rewind", scope: !640, file: !640, line: 723, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !637, line: 134)
!749 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !640, file: !640, line: 437, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !637, line: 135)
!751 = !DISubprogram(name: "setbuf", scope: !640, file: !640, line: 328, type: !752, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !665, !189}
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !637, line: 136)
!755 = !DISubprogram(name: "setvbuf", scope: !640, file: !640, line: 332, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!11, !665, !189, !11, !115}
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !637, line: 137)
!759 = !DISubprogram(name: "sprintf", scope: !640, file: !640, line: 358, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!11, !189, !117, null}
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !637, line: 138)
!763 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !640, file: !640, line: 439, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!11, !117, !117, null}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !637, line: 139)
!767 = !DISubprogram(name: "tmpfile", scope: !640, file: !640, line: 188, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!648}
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !637, line: 141)
!771 = !DISubprogram(name: "tmpnam", scope: !640, file: !640, line: 205, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !637, line: 143)
!773 = !DISubprogram(name: "ungetc", scope: !640, file: !640, line: 668, type: !682, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !637, line: 144)
!775 = !DISubprogram(name: "vfprintf", scope: !640, file: !640, line: 365, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!11, !665, !117, !160}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !637, line: 145)
!779 = !DISubprogram(name: "vprintf", scope: !640, file: !640, line: 371, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!11, !117, !160}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !637, line: 146)
!783 = !DISubprogram(name: "vsprintf", scope: !640, file: !640, line: 373, type: !784, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DISubroutineType(types: !785)
!785 = !{!11, !189, !117, !160}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !787, file: !637, line: 175)
!787 = !DISubprogram(name: "snprintf", scope: !640, file: !640, line: 378, type: !788, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!11, !189, !115, !117, null}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !791, file: !637, line: 176)
!791 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !640, file: !640, line: 479, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !793, file: !637, line: 177)
!793 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !640, file: !640, line: 484, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !795, file: !637, line: 178)
!795 = !DISubprogram(name: "vsnprintf", scope: !640, file: !640, line: 382, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DISubroutineType(types: !797)
!797 = !{!11, !189, !115, !117, !160}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !799, file: !637, line: 179)
!799 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !640, file: !640, line: 487, type: !800, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{!11, !117, !117, !160}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !637, line: 185)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !637, line: 186)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !637, line: 187)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !637, line: 188)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !799, file: !637, line: 189)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !469, file: !808, line: 38)
!808 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !473, file: !808, line: 39)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !510, file: !808, line: 40)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !478, file: !808, line: 43)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !550, file: !808, line: 46)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !459, file: !808, line: 51)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !463, file: !808, line: 52)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !816, file: !808, line: 54)
!816 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !457, line: 79, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!306, !306}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !480, file: !808, line: 55)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !484, file: !808, line: 56)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !488, file: !808, line: 57)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !492, file: !808, line: 58)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !502, file: !808, line: 59)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !627, file: !808, line: 60)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !514, file: !808, line: 61)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !518, file: !808, line: 62)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !522, file: !808, line: 63)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !526, file: !808, line: 64)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !530, file: !808, line: 65)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !534, file: !808, line: 67)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !538, file: !808, line: 68)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !542, file: !808, line: 69)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !546, file: !808, line: 71)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !552, file: !808, line: 72)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !556, file: !808, line: 73)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !560, file: !808, line: 74)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !564, file: !808, line: 75)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !570, file: !808, line: 76)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !574, file: !808, line: 77)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !578, file: !808, line: 78)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !580, file: !808, line: 80)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !584, file: !808, line: 81)
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !848, line: 77)
!844 = !DISubprogram(name: "memchr", scope: !845, file: !845, line: 89, type: !846, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!846 = !DISubroutineType(types: !847)
!847 = !{!495, !495, !11, !115}
!848 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !848, line: 78)
!850 = !DISubprogram(name: "memcmp", scope: !845, file: !845, line: 64, type: !851, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{!11, !495, !495, !115}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !848, line: 79)
!854 = !DISubprogram(name: "memcpy", scope: !845, file: !845, line: 43, type: !855, flags: DIFlagPrototyped, spFlags: 0)
!855 = !DISubroutineType(types: !856)
!856 = !{!167, !692, !717, !115}
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !848, line: 80)
!858 = !DISubprogram(name: "memmove", scope: !845, file: !845, line: 47, type: !859, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{!167, !167, !495, !115}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !848, line: 81)
!862 = !DISubprogram(name: "memset", scope: !845, file: !845, line: 61, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{!167, !167, !11, !115}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !848, line: 82)
!866 = !DISubprogram(name: "strcat", scope: !845, file: !845, line: 149, type: !867, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{!15, !189, !117}
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !848, line: 83)
!870 = !DISubprogram(name: "strcmp", scope: !845, file: !845, line: 156, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !848, line: 84)
!872 = !DISubprogram(name: "strcoll", scope: !845, file: !845, line: 163, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !848, line: 85)
!874 = !DISubprogram(name: "strcpy", scope: !845, file: !845, line: 141, type: !867, flags: DIFlagPrototyped, spFlags: 0)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !876, file: !848, line: 86)
!876 = !DISubprogram(name: "strcspn", scope: !845, file: !845, line: 293, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!115, !118, !118}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !848, line: 87)
!880 = !DISubprogram(name: "strerror", scope: !845, file: !845, line: 419, type: !881, flags: DIFlagPrototyped, spFlags: 0)
!881 = !DISubroutineType(types: !882)
!882 = !{!15, !11}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !848, line: 88)
!884 = !DISubprogram(name: "strlen", scope: !845, file: !845, line: 407, type: !885, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{!115, !118}
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !848, line: 89)
!888 = !DISubprogram(name: "strncat", scope: !845, file: !845, line: 152, type: !889, flags: DIFlagPrototyped, spFlags: 0)
!889 = !DISubroutineType(types: !890)
!890 = !{!15, !189, !117, !115}
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !848, line: 90)
!892 = !DISubprogram(name: "strncmp", scope: !845, file: !845, line: 159, type: !893, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{!11, !118, !118, !115}
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !848, line: 91)
!896 = !DISubprogram(name: "strncpy", scope: !845, file: !845, line: 144, type: !889, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !848, line: 92)
!898 = !DISubprogram(name: "strspn", scope: !845, file: !845, line: 297, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !848, line: 93)
!900 = !DISubprogram(name: "strtok", scope: !845, file: !845, line: 356, type: !867, flags: DIFlagPrototyped, spFlags: 0)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !848, line: 94)
!902 = !DISubprogram(name: "strxfrm", scope: !845, file: !845, line: 166, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!115, !189, !117, !115}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !848, line: 95)
!906 = !DISubprogram(name: "strchr", scope: !845, file: !845, line: 228, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!118, !118, !11}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !848, line: 96)
!910 = !DISubprogram(name: "strpbrk", scope: !845, file: !845, line: 305, type: !911, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{!118, !118, !118}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !914, file: !848, line: 97)
!914 = !DISubprogram(name: "strrchr", scope: !845, file: !845, line: 255, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !848, line: 98)
!916 = !DISubprogram(name: "strstr", scope: !845, file: !845, line: 332, type: !911, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !918, file: !919, line: 68)
!918 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !920, file: !919, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!919 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!920 = !DINamespace(name: "__exception_ptr", scope: !2)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !920, entity: !922, file: !919, line: 84)
!922 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !919, line: 80, type: !923, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !918}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !930, line: 82)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !927, line: 48, baseType: !928)
!927 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!930 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !932, file: !930, line: 83)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !933, line: 38, baseType: !21)
!933 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !930, line: 84)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !936, file: !930, line: 86)
!936 = !DISubprogram(name: "iswalnum", scope: !933, file: !933, line: 95, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !938, file: !930, line: 87)
!938 = !DISubprogram(name: "iswalpha", scope: !933, file: !933, line: 101, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !930, line: 89)
!940 = !DISubprogram(name: "iswblank", scope: !933, file: !933, line: 146, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !942, file: !930, line: 91)
!942 = !DISubprogram(name: "iswcntrl", scope: !933, file: !933, line: 104, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !930, line: 92)
!944 = !DISubprogram(name: "iswctype", scope: !933, file: !933, line: 159, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DISubroutineType(types: !946)
!946 = !{!11, !61, !932}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !948, file: !930, line: 93)
!948 = !DISubprogram(name: "iswdigit", scope: !933, file: !933, line: 108, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !950, file: !930, line: 94)
!950 = !DISubprogram(name: "iswgraph", scope: !933, file: !933, line: 112, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !952, file: !930, line: 95)
!952 = !DISubprogram(name: "iswlower", scope: !933, file: !933, line: 117, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !954, file: !930, line: 96)
!954 = !DISubprogram(name: "iswprint", scope: !933, file: !933, line: 120, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !930, line: 97)
!956 = !DISubprogram(name: "iswpunct", scope: !933, file: !933, line: 125, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !958, file: !930, line: 98)
!958 = !DISubprogram(name: "iswspace", scope: !933, file: !933, line: 130, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !960, file: !930, line: 99)
!960 = !DISubprogram(name: "iswupper", scope: !933, file: !933, line: 135, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !962, file: !930, line: 100)
!962 = !DISubprogram(name: "iswxdigit", scope: !933, file: !933, line: 140, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !964, file: !930, line: 101)
!964 = !DISubprogram(name: "towctrans", scope: !927, file: !927, line: 55, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!61, !61, !926}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !930, line: 102)
!968 = !DISubprogram(name: "towlower", scope: !933, file: !933, line: 166, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!61, !61}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !972, file: !930, line: 103)
!972 = !DISubprogram(name: "towupper", scope: !933, file: !933, line: 169, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !974, file: !930, line: 104)
!974 = !DISubprogram(name: "wctrans", scope: !927, file: !927, line: 52, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DISubroutineType(types: !976)
!976 = !{!926, !118}
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !978, file: !930, line: 105)
!978 = !DISubprogram(name: "wctype", scope: !933, file: !933, line: 155, type: !979, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DISubroutineType(types: !980)
!980 = !{!932, !118}
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !982, file: !986, line: 83)
!982 = !DISubprogram(name: "acos", scope: !983, file: !983, line: 53, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!984 = !DISubroutineType(types: !985)
!985 = !{!12, !12}
!986 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !986, line: 102)
!988 = !DISubprogram(name: "asin", scope: !983, file: !983, line: 55, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !990, file: !986, line: 121)
!990 = !DISubprogram(name: "atan", scope: !983, file: !983, line: 57, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !992, file: !986, line: 140)
!992 = !DISubprogram(name: "atan2", scope: !983, file: !983, line: 59, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DISubroutineType(types: !994)
!994 = !{!12, !12, !12}
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !996, file: !986, line: 161)
!996 = !DISubprogram(name: "ceil", scope: !983, file: !983, line: 159, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !998, file: !986, line: 180)
!998 = !DISubprogram(name: "cos", scope: !983, file: !983, line: 62, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1000, file: !986, line: 199)
!1000 = !DISubprogram(name: "cosh", scope: !983, file: !983, line: 71, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1002, file: !986, line: 218)
!1002 = !DISubprogram(name: "exp", scope: !983, file: !983, line: 95, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !986, line: 237)
!1004 = !DISubprogram(name: "fabs", scope: !983, file: !983, line: 162, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1006, file: !986, line: 256)
!1006 = !DISubprogram(name: "floor", scope: !983, file: !983, line: 165, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1008, file: !986, line: 275)
!1008 = !DISubprogram(name: "fmod", scope: !983, file: !983, line: 168, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1010, file: !986, line: 296)
!1010 = !DISubprogram(name: "frexp", scope: !983, file: !983, line: 98, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!12, !12, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !986, line: 315)
!1015 = !DISubprogram(name: "ldexp", scope: !983, file: !983, line: 101, type: !1016, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!12, !12, !11}
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !986, line: 334)
!1019 = !DISubprogram(name: "log", scope: !983, file: !983, line: 104, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !986, line: 353)
!1021 = !DISubprogram(name: "log10", scope: !983, file: !983, line: 107, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1023, file: !986, line: 372)
!1023 = !DISubprogram(name: "modf", scope: !983, file: !983, line: 110, type: !1024, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!12, !12, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1028, file: !986, line: 384)
!1028 = !DISubprogram(name: "pow", scope: !983, file: !983, line: 140, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1030, file: !986, line: 421)
!1030 = !DISubprogram(name: "sin", scope: !983, file: !983, line: 64, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1032, file: !986, line: 440)
!1032 = !DISubprogram(name: "sinh", scope: !983, file: !983, line: 73, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !986, line: 459)
!1034 = !DISubprogram(name: "sqrt", scope: !983, file: !983, line: 143, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !986, line: 478)
!1036 = !DISubprogram(name: "tan", scope: !983, file: !983, line: 66, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1038, file: !986, line: 497)
!1038 = !DISubprogram(name: "tanh", scope: !983, file: !983, line: 75, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1040, file: !986, line: 1065)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1041, line: 164, baseType: !12)
!1041 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !986, line: 1066)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1041, line: 163, baseType: !10)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !986, line: 1069)
!1045 = !DISubprogram(name: "acosh", scope: !983, file: !983, line: 85, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1047, file: !986, line: 1070)
!1047 = !DISubprogram(name: "acoshf", scope: !983, file: !983, line: 85, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!10, !10}
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !986, line: 1071)
!1051 = !DISubprogram(name: "acoshl", scope: !983, file: !983, line: 85, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !986, line: 1073)
!1053 = !DISubprogram(name: "asinh", scope: !983, file: !983, line: 87, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !986, line: 1074)
!1055 = !DISubprogram(name: "asinhf", scope: !983, file: !983, line: 87, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !986, line: 1075)
!1057 = !DISubprogram(name: "asinhl", scope: !983, file: !983, line: 87, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !986, line: 1077)
!1059 = !DISubprogram(name: "atanh", scope: !983, file: !983, line: 89, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !986, line: 1078)
!1061 = !DISubprogram(name: "atanhf", scope: !983, file: !983, line: 89, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1063, file: !986, line: 1079)
!1063 = !DISubprogram(name: "atanhl", scope: !983, file: !983, line: 89, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !986, line: 1081)
!1065 = !DISubprogram(name: "cbrt", scope: !983, file: !983, line: 152, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !986, line: 1082)
!1067 = !DISubprogram(name: "cbrtf", scope: !983, file: !983, line: 152, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !986, line: 1083)
!1069 = !DISubprogram(name: "cbrtl", scope: !983, file: !983, line: 152, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !986, line: 1085)
!1071 = !DISubprogram(name: "copysign", scope: !983, file: !983, line: 198, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !986, line: 1086)
!1073 = !DISubprogram(name: "copysignf", scope: !983, file: !983, line: 198, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!10, !10, !10}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1077, file: !986, line: 1087)
!1077 = !DISubprogram(name: "copysignl", scope: !983, file: !983, line: 198, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!306, !306, !306}
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1081, file: !986, line: 1089)
!1081 = !DISubprogram(name: "erf", scope: !983, file: !983, line: 231, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1083, file: !986, line: 1090)
!1083 = !DISubprogram(name: "erff", scope: !983, file: !983, line: 231, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1085, file: !986, line: 1091)
!1085 = !DISubprogram(name: "erfl", scope: !983, file: !983, line: 231, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !986, line: 1093)
!1087 = !DISubprogram(name: "erfc", scope: !983, file: !983, line: 232, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !986, line: 1094)
!1089 = !DISubprogram(name: "erfcf", scope: !983, file: !983, line: 232, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1091, file: !986, line: 1095)
!1091 = !DISubprogram(name: "erfcl", scope: !983, file: !983, line: 232, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !986, line: 1097)
!1093 = !DISubprogram(name: "exp2", scope: !983, file: !983, line: 130, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1095, file: !986, line: 1098)
!1095 = !DISubprogram(name: "exp2f", scope: !983, file: !983, line: 130, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1097, file: !986, line: 1099)
!1097 = !DISubprogram(name: "exp2l", scope: !983, file: !983, line: 130, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1099, file: !986, line: 1101)
!1099 = !DISubprogram(name: "expm1", scope: !983, file: !983, line: 119, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1101, file: !986, line: 1102)
!1101 = !DISubprogram(name: "expm1f", scope: !983, file: !983, line: 119, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1103, file: !986, line: 1103)
!1103 = !DISubprogram(name: "expm1l", scope: !983, file: !983, line: 119, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !986, line: 1105)
!1105 = !DISubprogram(name: "fdim", scope: !983, file: !983, line: 329, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1107, file: !986, line: 1106)
!1107 = !DISubprogram(name: "fdimf", scope: !983, file: !983, line: 329, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !986, line: 1107)
!1109 = !DISubprogram(name: "fdiml", scope: !983, file: !983, line: 329, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1111, file: !986, line: 1109)
!1111 = !DISubprogram(name: "fma", scope: !983, file: !983, line: 340, type: !1112, flags: DIFlagPrototyped, spFlags: 0)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!12, !12, !12, !12}
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1115, file: !986, line: 1110)
!1115 = !DISubprogram(name: "fmaf", scope: !983, file: !983, line: 340, type: !1116, flags: DIFlagPrototyped, spFlags: 0)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!10, !10, !10, !10}
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1119, file: !986, line: 1111)
!1119 = !DISubprogram(name: "fmal", scope: !983, file: !983, line: 340, type: !1120, flags: DIFlagPrototyped, spFlags: 0)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!306, !306, !306, !306}
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1123, file: !986, line: 1113)
!1123 = !DISubprogram(name: "fmax", scope: !983, file: !983, line: 333, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1125, file: !986, line: 1114)
!1125 = !DISubprogram(name: "fmaxf", scope: !983, file: !983, line: 333, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1127, file: !986, line: 1115)
!1127 = !DISubprogram(name: "fmaxl", scope: !983, file: !983, line: 333, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1129, file: !986, line: 1117)
!1129 = !DISubprogram(name: "fmin", scope: !983, file: !983, line: 336, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1131, file: !986, line: 1118)
!1131 = !DISubprogram(name: "fminf", scope: !983, file: !983, line: 336, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1133, file: !986, line: 1119)
!1133 = !DISubprogram(name: "fminl", scope: !983, file: !983, line: 336, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1135, file: !986, line: 1121)
!1135 = !DISubprogram(name: "hypot", scope: !983, file: !983, line: 147, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1137, file: !986, line: 1122)
!1137 = !DISubprogram(name: "hypotf", scope: !983, file: !983, line: 147, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1139, file: !986, line: 1123)
!1139 = !DISubprogram(name: "hypotl", scope: !983, file: !983, line: 147, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1141, file: !986, line: 1125)
!1141 = !DISubprogram(name: "ilogb", scope: !983, file: !983, line: 283, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!11, !12}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1145, file: !986, line: 1126)
!1145 = !DISubprogram(name: "ilogbf", scope: !983, file: !983, line: 283, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!11, !10}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1149, file: !986, line: 1127)
!1149 = !DISubprogram(name: "ilogbl", scope: !983, file: !983, line: 283, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!11, !306}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1153, file: !986, line: 1129)
!1153 = !DISubprogram(name: "lgamma", scope: !983, file: !983, line: 233, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1155, file: !986, line: 1130)
!1155 = !DISubprogram(name: "lgammaf", scope: !983, file: !983, line: 233, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1157, file: !986, line: 1131)
!1157 = !DISubprogram(name: "lgammal", scope: !983, file: !983, line: 233, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !986, line: 1134)
!1159 = !DISubprogram(name: "llrint", scope: !983, file: !983, line: 319, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!311, !12}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1163, file: !986, line: 1135)
!1163 = !DISubprogram(name: "llrintf", scope: !983, file: !983, line: 319, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!311, !10}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1167, file: !986, line: 1136)
!1167 = !DISubprogram(name: "llrintl", scope: !983, file: !983, line: 319, type: !1168, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!311, !306}
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1171, file: !986, line: 1138)
!1171 = !DISubprogram(name: "llround", scope: !983, file: !983, line: 325, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1173, file: !986, line: 1139)
!1173 = !DISubprogram(name: "llroundf", scope: !983, file: !983, line: 325, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1175, file: !986, line: 1140)
!1175 = !DISubprogram(name: "llroundl", scope: !983, file: !983, line: 325, type: !1168, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1177, file: !986, line: 1143)
!1177 = !DISubprogram(name: "log1p", scope: !983, file: !983, line: 122, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1179, file: !986, line: 1144)
!1179 = !DISubprogram(name: "log1pf", scope: !983, file: !983, line: 122, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1181, file: !986, line: 1145)
!1181 = !DISubprogram(name: "log1pl", scope: !983, file: !983, line: 122, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1183, file: !986, line: 1147)
!1183 = !DISubprogram(name: "log2", scope: !983, file: !983, line: 133, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1185, file: !986, line: 1148)
!1185 = !DISubprogram(name: "log2f", scope: !983, file: !983, line: 133, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1187, file: !986, line: 1149)
!1187 = !DISubprogram(name: "log2l", scope: !983, file: !983, line: 133, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1189, file: !986, line: 1151)
!1189 = !DISubprogram(name: "logb", scope: !983, file: !983, line: 125, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1191, file: !986, line: 1152)
!1191 = !DISubprogram(name: "logbf", scope: !983, file: !983, line: 125, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1193, file: !986, line: 1153)
!1193 = !DISubprogram(name: "logbl", scope: !983, file: !983, line: 125, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1195, file: !986, line: 1155)
!1195 = !DISubprogram(name: "lrint", scope: !983, file: !983, line: 317, type: !1196, flags: DIFlagPrototyped, spFlags: 0)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!254, !12}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1199, file: !986, line: 1156)
!1199 = !DISubprogram(name: "lrintf", scope: !983, file: !983, line: 317, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!254, !10}
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1203, file: !986, line: 1157)
!1203 = !DISubprogram(name: "lrintl", scope: !983, file: !983, line: 317, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!254, !306}
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1207, file: !986, line: 1159)
!1207 = !DISubprogram(name: "lround", scope: !983, file: !983, line: 323, type: !1196, flags: DIFlagPrototyped, spFlags: 0)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1209, file: !986, line: 1160)
!1209 = !DISubprogram(name: "lroundf", scope: !983, file: !983, line: 323, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1211, file: !986, line: 1161)
!1211 = !DISubprogram(name: "lroundl", scope: !983, file: !983, line: 323, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1213, file: !986, line: 1163)
!1213 = !DISubprogram(name: "nan", scope: !983, file: !983, line: 203, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1215, file: !986, line: 1164)
!1215 = !DISubprogram(name: "nanf", scope: !983, file: !983, line: 203, type: !1216, flags: DIFlagPrototyped, spFlags: 0)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!10, !118}
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1219, file: !986, line: 1165)
!1219 = !DISubprogram(name: "nanl", scope: !983, file: !983, line: 203, type: !1220, flags: DIFlagPrototyped, spFlags: 0)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!306, !118}
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1223, file: !986, line: 1167)
!1223 = !DISubprogram(name: "nearbyint", scope: !983, file: !983, line: 297, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1225, file: !986, line: 1168)
!1225 = !DISubprogram(name: "nearbyintf", scope: !983, file: !983, line: 297, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1227, file: !986, line: 1169)
!1227 = !DISubprogram(name: "nearbyintl", scope: !983, file: !983, line: 297, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !986, line: 1171)
!1229 = !DISubprogram(name: "nextafter", scope: !983, file: !983, line: 262, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1231, file: !986, line: 1172)
!1231 = !DISubprogram(name: "nextafterf", scope: !983, file: !983, line: 262, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1233, file: !986, line: 1173)
!1233 = !DISubprogram(name: "nextafterl", scope: !983, file: !983, line: 262, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1235, file: !986, line: 1175)
!1235 = !DISubprogram(name: "nexttoward", scope: !983, file: !983, line: 264, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!12, !12, !306}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1239, file: !986, line: 1176)
!1239 = !DISubprogram(name: "nexttowardf", scope: !983, file: !983, line: 264, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!10, !10, !306}
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1243, file: !986, line: 1177)
!1243 = !DISubprogram(name: "nexttowardl", scope: !983, file: !983, line: 264, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1245, file: !986, line: 1179)
!1245 = !DISubprogram(name: "remainder", scope: !983, file: !983, line: 275, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1247, file: !986, line: 1180)
!1247 = !DISubprogram(name: "remainderf", scope: !983, file: !983, line: 275, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1249, file: !986, line: 1181)
!1249 = !DISubprogram(name: "remainderl", scope: !983, file: !983, line: 275, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1251, file: !986, line: 1183)
!1251 = !DISubprogram(name: "remquo", scope: !983, file: !983, line: 310, type: !1252, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!12, !12, !12, !1013}
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1255, file: !986, line: 1184)
!1255 = !DISubprogram(name: "remquof", scope: !983, file: !983, line: 310, type: !1256, flags: DIFlagPrototyped, spFlags: 0)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!10, !10, !10, !1013}
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1259, file: !986, line: 1185)
!1259 = !DISubprogram(name: "remquol", scope: !983, file: !983, line: 310, type: !1260, flags: DIFlagPrototyped, spFlags: 0)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!306, !306, !306, !1013}
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !986, line: 1187)
!1263 = !DISubprogram(name: "rint", scope: !983, file: !983, line: 259, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1265, file: !986, line: 1188)
!1265 = !DISubprogram(name: "rintf", scope: !983, file: !983, line: 259, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !986, line: 1189)
!1267 = !DISubprogram(name: "rintl", scope: !983, file: !983, line: 259, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1269, file: !986, line: 1191)
!1269 = !DISubprogram(name: "round", scope: !983, file: !983, line: 301, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1271, file: !986, line: 1192)
!1271 = !DISubprogram(name: "roundf", scope: !983, file: !983, line: 301, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !986, line: 1193)
!1273 = !DISubprogram(name: "roundl", scope: !983, file: !983, line: 301, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1275, file: !986, line: 1195)
!1275 = !DISubprogram(name: "scalbln", scope: !983, file: !983, line: 293, type: !1276, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!12, !12, !254}
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !986, line: 1196)
!1279 = !DISubprogram(name: "scalblnf", scope: !983, file: !983, line: 293, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!10, !10, !254}
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1283, file: !986, line: 1197)
!1283 = !DISubprogram(name: "scalblnl", scope: !983, file: !983, line: 293, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!306, !306, !254}
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !986, line: 1199)
!1287 = !DISubprogram(name: "scalbn", scope: !983, file: !983, line: 279, type: !1016, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1289, file: !986, line: 1200)
!1289 = !DISubprogram(name: "scalbnf", scope: !983, file: !983, line: 279, type: !1290, flags: DIFlagPrototyped, spFlags: 0)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!10, !10, !11}
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1293, file: !986, line: 1201)
!1293 = !DISubprogram(name: "scalbnl", scope: !983, file: !983, line: 279, type: !1294, flags: DIFlagPrototyped, spFlags: 0)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!306, !306, !11}
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !986, line: 1203)
!1297 = !DISubprogram(name: "tgamma", scope: !983, file: !983, line: 238, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1299, file: !986, line: 1204)
!1299 = !DISubprogram(name: "tgammaf", scope: !983, file: !983, line: 238, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !986, line: 1205)
!1301 = !DISubprogram(name: "tgammal", scope: !983, file: !983, line: 238, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1303, file: !986, line: 1207)
!1303 = !DISubprogram(name: "trunc", scope: !983, file: !983, line: 305, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1305, file: !986, line: 1208)
!1305 = !DISubprogram(name: "truncf", scope: !983, file: !983, line: 305, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1307, file: !986, line: 1209)
!1307 = !DISubprogram(name: "truncl", scope: !983, file: !983, line: 305, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !816, file: !1309, line: 38)
!1309 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1311, file: !1309, line: 54)
!1311 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !986, line: 380, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!306, !306, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !7, entity: !2, file: !8, line: 25)
!1316 = !{i32 7, !"Dwarf Version", i32 5}
!1317 = !{i32 2, !"Debug Info Version", i32 3}
!1318 = !{i32 1, !"wchar_size", i32 4}
!1319 = !{i32 8, !"PIC Level", i32 2}
!1320 = !{i32 7, !"PIE Level", i32 2}
!1321 = !{i32 7, !"uwtable", i32 2}
!1322 = !{i32 7, !"frame-pointer", i32 2}
!1323 = !{!"clang version 16.0.0"}
!1324 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !164, file: !164, type: !470, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !1325)
!1325 = !{}
!1326 = !DILocation(line: 74, column: 25, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1324, file: !3, discriminator: 0)
!1328 = !DILocation(line: 0, scope: !1324)
!1329 = distinct !DISubprogram(name: "EdgeError", linkageName: "_ZN17ImageMeasurements9EdgeErrorERK17ProjectedCylinderRK9FlexImageIhLi1EERfRi", scope: !1330, file: !8, line: 44, type: !1332, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1345, retainedNodes: !1325)
!1330 = !DICompositeType(tag: DW_TAG_class_type, name: "ImageMeasurements", file: !1331, line: 42, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS17ImageMeasurements")
!1331 = !DIFile(filename: "../TrackingBenchmark/ImageMeasurements.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "002c6f7e559f9c6c0948944fbd746269")
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1334, !1335, !1339, !1343, !1344}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DICompositeType(tag: DW_TAG_class_type, name: "ProjectedCylinder", file: !1338, line: 34, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS17ProjectedCylinder")
!1338 = !DIFile(filename: "../TrackingBenchmark/ImageProjection.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "1f408b9d6e2708f726674c3109c2b024")
!1339 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = !DICompositeType(tag: DW_TAG_class_type, name: "FlexImage<unsigned char, 1>", file: !1342, line: 31, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9FlexImageIhLi1EE")
!1342 = !DIFile(filename: "../FlexImageLib/FlexImage.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "c48c5603df53b5adb28beda0f0ac2f29")
!1343 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!1345 = !DISubprogram(name: "EdgeError", linkageName: "_ZN17ImageMeasurements9EdgeErrorERK17ProjectedCylinderRK9FlexImageIhLi1EERfRi", scope: !1330, file: !1331, line: 51, type: !1332, scopeLine: 51, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DILocalVariable(name: "this", arg: 1, scope: !1329, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1348 = !DILocation(line: 0, scope: !1329)
!1349 = !DILocalVariable(name: "ProjCyl", arg: 2, scope: !1329, file: !8, line: 44, type: !1335)
!1350 = !DILocation(line: 44, column: 60, scope: !1329)
!1351 = !DILocalVariable(name: "EdgeMap", arg: 3, scope: !1329, file: !8, line: 44, type: !1339)
!1352 = !DILocation(line: 44, column: 88, scope: !1329)
!1353 = !DILocalVariable(name: "error", arg: 4, scope: !1329, file: !8, line: 44, type: !1343)
!1354 = !DILocation(line: 44, column: 104, scope: !1329)
!1355 = !DILocalVariable(name: "samplePoints", arg: 5, scope: !1329, file: !8, line: 44, type: !1344)
!1356 = !DILocation(line: 44, column: 116, scope: !1329)
!1357 = !DILocalVariable(name: "ErrorSSD", scope: !1329, file: !8, line: 46, type: !11)
!1358 = !DILocation(line: 46, column: 6, scope: !1329)
!1359 = !DILocalVariable(name: "p1", scope: !1329, file: !8, line: 47, type: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1362 = !DILocation(line: 47, column: 15, scope: !1329)
!1363 = !DILocation(line: 47, column: 20, scope: !1329)
!1364 = !DILocation(line: 47, column: 28, scope: !1329)
!1365 = !DILocalVariable(name: "s1", scope: !1329, file: !8, line: 48, type: !22)
!1366 = !DILocation(line: 48, column: 8, scope: !1329)
!1367 = !DILocation(line: 49, column: 9, scope: !1329)
!1368 = !DILocation(line: 49, column: 17, scope: !1329)
!1369 = !DILocation(line: 49, column: 25, scope: !1329)
!1370 = !DILocation(line: 49, column: 29, scope: !1329)
!1371 = !DILocation(line: 49, column: 32, scope: !1329)
!1372 = !DILocation(line: 49, column: 27, scope: !1329)
!1373 = !DILocation(line: 49, column: 35, scope: !1329)
!1374 = !DILocation(line: 49, column: 43, scope: !1329)
!1375 = !DILocation(line: 49, column: 51, scope: !1329)
!1376 = !DILocation(line: 49, column: 55, scope: !1329)
!1377 = !DILocation(line: 49, column: 58, scope: !1329)
!1378 = !DILocation(line: 49, column: 53, scope: !1329)
!1379 = !DILocation(line: 49, column: 5, scope: !1329)
!1380 = !DILocalVariable(name: "n1", scope: !1329, file: !8, line: 50, type: !11)
!1381 = !DILocation(line: 50, column: 6, scope: !1329)
!1382 = !DILocation(line: 50, column: 21, scope: !1329)
!1383 = !DILocation(line: 50, column: 31, scope: !1329)
!1384 = !DILocation(line: 50, column: 29, scope: !1329)
!1385 = !DILocation(line: 50, column: 37, scope: !1329)
!1386 = !DILocation(line: 50, column: 20, scope: !1329)
!1387 = !DILocation(line: 50, column: 15, scope: !1329)
!1388 = !DILocation(line: 50, column: 45, scope: !1329)
!1389 = !DILocation(line: 50, column: 11, scope: !1329)
!1390 = !DILocalVariable(name: "d1", scope: !1329, file: !8, line: 51, type: !10)
!1391 = !DILocation(line: 51, column: 8, scope: !1329)
!1392 = !DILocation(line: 51, column: 29, scope: !1329)
!1393 = !DILocation(line: 51, column: 27, scope: !1329)
!1394 = !DILocation(line: 51, column: 18, scope: !1329)
!1395 = !DILocalVariable(name: "p2", scope: !1329, file: !8, line: 53, type: !1360)
!1396 = !DILocation(line: 53, column: 15, scope: !1329)
!1397 = !DILocation(line: 53, column: 20, scope: !1329)
!1398 = !DILocation(line: 53, column: 28, scope: !1329)
!1399 = !DILocalVariable(name: "s2", scope: !1329, file: !8, line: 54, type: !22)
!1400 = !DILocation(line: 54, column: 8, scope: !1329)
!1401 = !DILocation(line: 55, column: 9, scope: !1329)
!1402 = !DILocation(line: 55, column: 17, scope: !1329)
!1403 = !DILocation(line: 55, column: 25, scope: !1329)
!1404 = !DILocation(line: 55, column: 29, scope: !1329)
!1405 = !DILocation(line: 55, column: 32, scope: !1329)
!1406 = !DILocation(line: 55, column: 27, scope: !1329)
!1407 = !DILocation(line: 55, column: 35, scope: !1329)
!1408 = !DILocation(line: 55, column: 43, scope: !1329)
!1409 = !DILocation(line: 55, column: 51, scope: !1329)
!1410 = !DILocation(line: 55, column: 55, scope: !1329)
!1411 = !DILocation(line: 55, column: 58, scope: !1329)
!1412 = !DILocation(line: 55, column: 53, scope: !1329)
!1413 = !DILocation(line: 55, column: 5, scope: !1329)
!1414 = !DILocalVariable(name: "n2", scope: !1329, file: !8, line: 56, type: !11)
!1415 = !DILocation(line: 56, column: 6, scope: !1329)
!1416 = !DILocation(line: 56, column: 21, scope: !1329)
!1417 = !DILocation(line: 56, column: 31, scope: !1329)
!1418 = !DILocation(line: 56, column: 29, scope: !1329)
!1419 = !DILocation(line: 56, column: 37, scope: !1329)
!1420 = !DILocation(line: 56, column: 20, scope: !1329)
!1421 = !DILocation(line: 56, column: 15, scope: !1329)
!1422 = !DILocation(line: 56, column: 45, scope: !1329)
!1423 = !DILocation(line: 56, column: 11, scope: !1329)
!1424 = !DILocalVariable(name: "d2", scope: !1329, file: !8, line: 57, type: !10)
!1425 = !DILocation(line: 57, column: 8, scope: !1329)
!1426 = !DILocation(line: 57, column: 29, scope: !1329)
!1427 = !DILocation(line: 57, column: 27, scope: !1329)
!1428 = !DILocation(line: 57, column: 18, scope: !1329)
!1429 = !DILocalVariable(name: "delta", scope: !1329, file: !8, line: 59, type: !10)
!1430 = !DILocation(line: 59, column: 8, scope: !1329)
!1431 = !DILocalVariable(name: "i", scope: !1432, file: !8, line: 60, type: !11)
!1432 = distinct !DILexicalBlock(scope: !1329, file: !8, line: 60, column: 2)
!1433 = !DILocation(line: 60, column: 10, scope: !1432)
!1434 = !DILocation(line: 60, column: 6, scope: !1432)
!1435 = !DILocation(line: 60, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !8, line: 60, column: 2)
!1437 = !DILocation(line: 60, column: 21, scope: !1436)
!1438 = !DILocation(line: 60, column: 19, scope: !1436)
!1439 = !DILocation(line: 60, column: 2, scope: !1432)
!1440 = !DILocalVariable(name: "x", scope: !1441, file: !8, line: 61, type: !10)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !8, line: 61, column: 2)
!1442 = !DILocation(line: 61, column: 10, scope: !1441)
!1443 = !DILocation(line: 61, column: 14, scope: !1441)
!1444 = !DILocation(line: 61, column: 17, scope: !1441)
!1445 = !DILocation(line: 61, column: 21, scope: !1441)
!1446 = !DILocation(line: 61, column: 32, scope: !1441)
!1447 = !DILocation(line: 61, column: 19, scope: !1441)
!1448 = !DILocalVariable(name: "y", scope: !1441, file: !8, line: 62, type: !10)
!1449 = !DILocation(line: 62, column: 9, scope: !1441)
!1450 = !DILocation(line: 62, column: 13, scope: !1441)
!1451 = !DILocation(line: 62, column: 16, scope: !1441)
!1452 = !DILocation(line: 62, column: 20, scope: !1441)
!1453 = !DILocation(line: 62, column: 31, scope: !1441)
!1454 = !DILocation(line: 62, column: 18, scope: !1441)
!1455 = !DILocation(line: 63, column: 19, scope: !1441)
!1456 = !DILocation(line: 63, column: 22, scope: !1441)
!1457 = !DILocation(line: 63, column: 25, scope: !1441)
!1458 = !DILocation(line: 63, column: 44, scope: !1441)
!1459 = !DILocation(line: 63, column: 3, scope: !1441)
!1460 = !DILocation(line: 64, column: 14, scope: !1441)
!1461 = !DILocation(line: 64, column: 11, scope: !1441)
!1462 = !DILocation(line: 65, column: 2, scope: !1441)
!1463 = !DILocation(line: 60, column: 26, scope: !1436)
!1464 = !DILocation(line: 60, column: 2, scope: !1436)
!1465 = distinct !{!1465, !1439, !1466, !1467}
!1466 = !DILocation(line: 65, column: 2, scope: !1432)
!1467 = !{!"llvm.loop.mustprogress"}
!1468 = !DILocation(line: 74, column: 1, scope: !1329)
!1469 = !DILocation(line: 66, column: 8, scope: !1329)
!1470 = !DILocalVariable(name: "i", scope: !1471, file: !8, line: 67, type: !11)
!1471 = distinct !DILexicalBlock(scope: !1329, file: !8, line: 67, column: 2)
!1472 = !DILocation(line: 67, column: 10, scope: !1471)
!1473 = !DILocation(line: 67, column: 6, scope: !1471)
!1474 = !DILocation(line: 67, column: 17, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !8, line: 67, column: 2)
!1476 = !DILocation(line: 67, column: 21, scope: !1475)
!1477 = !DILocation(line: 67, column: 19, scope: !1475)
!1478 = !DILocation(line: 67, column: 2, scope: !1471)
!1479 = !DILocalVariable(name: "x", scope: !1480, file: !8, line: 68, type: !10)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !8, line: 68, column: 2)
!1481 = !DILocation(line: 68, column: 10, scope: !1480)
!1482 = !DILocation(line: 68, column: 14, scope: !1480)
!1483 = !DILocation(line: 68, column: 17, scope: !1480)
!1484 = !DILocation(line: 68, column: 21, scope: !1480)
!1485 = !DILocation(line: 68, column: 32, scope: !1480)
!1486 = !DILocation(line: 68, column: 19, scope: !1480)
!1487 = !DILocalVariable(name: "y", scope: !1480, file: !8, line: 69, type: !10)
!1488 = !DILocation(line: 69, column: 9, scope: !1480)
!1489 = !DILocation(line: 69, column: 13, scope: !1480)
!1490 = !DILocation(line: 69, column: 16, scope: !1480)
!1491 = !DILocation(line: 69, column: 20, scope: !1480)
!1492 = !DILocation(line: 69, column: 31, scope: !1480)
!1493 = !DILocation(line: 69, column: 18, scope: !1480)
!1494 = !DILocation(line: 70, column: 19, scope: !1480)
!1495 = !DILocation(line: 70, column: 22, scope: !1480)
!1496 = !DILocation(line: 70, column: 25, scope: !1480)
!1497 = !DILocation(line: 70, column: 44, scope: !1480)
!1498 = !DILocation(line: 70, column: 3, scope: !1480)
!1499 = !DILocation(line: 71, column: 12, scope: !1480)
!1500 = !DILocation(line: 71, column: 9, scope: !1480)
!1501 = !DILocation(line: 72, column: 2, scope: !1480)
!1502 = !DILocation(line: 67, column: 26, scope: !1475)
!1503 = !DILocation(line: 67, column: 2, scope: !1475)
!1504 = distinct !{!1504, !1478, !1505, !1467}
!1505 = !DILocation(line: 72, column: 2, scope: !1471)
!1506 = !DILocation(line: 73, column: 18, scope: !1329)
!1507 = !DILocation(line: 73, column: 27, scope: !1329)
!1508 = !DILocation(line: 73, column: 2, scope: !1329)
!1509 = !DILocation(line: 73, column: 8, scope: !1329)
!1510 = distinct !DISubprogram(name: "Point", linkageName: "_ZN5PointC2Ev", scope: !22, file: !23, line: 34, type: !28, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !27, retainedNodes: !1325)
!1511 = !DILocalVariable(name: "this", arg: 1, scope: !1510, type: !1512, flags: DIFlagArtificial | DIFlagObjectPointer)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1513 = !DILocation(line: 0, scope: !1510)
!1514 = !DILocation(line: 34, column: 10, scope: !1510)
!1515 = distinct !DISubprogram(name: "Set", linkageName: "_ZN5Point3SetEff", scope: !22, file: !23, line: 37, type: !32, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !35, retainedNodes: !1325)
!1516 = !DILocalVariable(name: "this", arg: 1, scope: !1515, type: !1512, flags: DIFlagArtificial | DIFlagObjectPointer)
!1517 = !DILocation(line: 0, scope: !1515)
!1518 = !DILocalVariable(name: "vx", arg: 2, scope: !1515, file: !23, line: 37, type: !10)
!1519 = !DILocation(line: 37, column: 24, scope: !1515)
!1520 = !DILocalVariable(name: "vy", arg: 3, scope: !1515, file: !23, line: 37, type: !10)
!1521 = !DILocation(line: 37, column: 34, scope: !1515)
!1522 = !DILocation(line: 37, column: 42, scope: !1515)
!1523 = !DILocation(line: 37, column: 38, scope: !1515)
!1524 = !DILocation(line: 37, column: 40, scope: !1515)
!1525 = !DILocation(line: 37, column: 48, scope: !1515)
!1526 = !DILocation(line: 37, column: 46, scope: !1515)
!1527 = !DILocation(line: 37, column: 47, scope: !1515)
!1528 = !DILocation(line: 37, column: 51, scope: !1515)
!1529 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !2, file: !1530, line: 254, type: !1531, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, templateParams: !1535, retainedNodes: !1325)
!1530 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1533, !1533, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!1535 = !{!1536}
!1536 = !DITemplateTypeParameter(name: "_Tp", type: !11)
!1537 = !DILocalVariable(name: "__a", arg: 1, scope: !1529, file: !1538, line: 407, type: !1533)
!1538 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!1539 = !DILocation(line: 407, column: 19, scope: !1529)
!1540 = !DILocalVariable(name: "__b", arg: 2, scope: !1529, file: !1538, line: 407, type: !1533)
!1541 = !DILocation(line: 407, column: 31, scope: !1529)
!1542 = !DILocation(line: 259, column: 11, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1529, file: !1530, line: 259, column: 11)
!1544 = !DILocation(line: 259, column: 17, scope: !1543)
!1545 = !DILocation(line: 259, column: 15, scope: !1543)
!1546 = !DILocation(line: 259, column: 11, scope: !1529)
!1547 = !DILocation(line: 260, column: 9, scope: !1543)
!1548 = !DILocation(line: 260, column: 2, scope: !1543)
!1549 = !DILocation(line: 261, column: 14, scope: !1529)
!1550 = !DILocation(line: 261, column: 7, scope: !1529)
!1551 = !DILocation(line: 262, column: 5, scope: !1529)
!1552 = distinct !DISubprogram(name: "mag", linkageName: "_Z3magR5Point", scope: !8, file: !8, line: 28, type: !1553, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !1325)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!12, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!1556 = !DILocalVariable(name: "p", arg: 1, scope: !1552, file: !8, line: 28, type: !1555)
!1557 = !DILocation(line: 28, column: 26, scope: !1552)
!1558 = !DILocation(line: 29, column: 24, scope: !1552)
!1559 = !DILocation(line: 29, column: 26, scope: !1552)
!1560 = !DILocation(line: 29, column: 30, scope: !1552)
!1561 = !DILocation(line: 29, column: 32, scope: !1552)
!1562 = !DILocation(line: 29, column: 36, scope: !1552)
!1563 = !DILocation(line: 29, column: 38, scope: !1552)
!1564 = !DILocation(line: 29, column: 42, scope: !1552)
!1565 = !DILocation(line: 29, column: 44, scope: !1552)
!1566 = !DILocation(line: 29, column: 40, scope: !1552)
!1567 = !DILocation(line: 29, column: 34, scope: !1552)
!1568 = !DILocation(line: 29, column: 23, scope: !1552)
!1569 = !DILocation(line: 29, column: 10, scope: !1552)
!1570 = !DILocation(line: 29, column: 3, scope: !1552)
!1571 = distinct !DISubprogram(name: "SampleEdgePoint", linkageName: "_Z15SampleEdgePointffRK9FlexImageIhLi1EERiS3_", scope: !8, file: !8, line: 33, type: !1572, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !1325)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !10, !10, !1339, !1344, !1344}
!1574 = !DILocalVariable(name: "xf", arg: 1, scope: !1571, file: !8, line: 33, type: !10)
!1575 = !DILocation(line: 33, column: 35, scope: !1571)
!1576 = !DILocalVariable(name: "yf", arg: 2, scope: !1571, file: !8, line: 33, type: !10)
!1577 = !DILocation(line: 33, column: 45, scope: !1571)
!1578 = !DILocalVariable(name: "EdgeMap", arg: 3, scope: !1571, file: !8, line: 33, type: !1339)
!1579 = !DILocation(line: 33, column: 68, scope: !1571)
!1580 = !DILocalVariable(name: "error", arg: 4, scope: !1571, file: !8, line: 33, type: !1344)
!1581 = !DILocation(line: 33, column: 82, scope: !1571)
!1582 = !DILocalVariable(name: "samplePoints", arg: 5, scope: !1571, file: !8, line: 33, type: !1344)
!1583 = !DILocation(line: 33, column: 94, scope: !1571)
!1584 = !DILocalVariable(name: "x", scope: !1571, file: !8, line: 35, type: !11)
!1585 = !DILocation(line: 35, column: 6, scope: !1571)
!1586 = !DILocation(line: 35, column: 14, scope: !1571)
!1587 = !DILocation(line: 35, column: 17, scope: !1571)
!1588 = !DILocalVariable(name: "y", scope: !1571, file: !8, line: 35, type: !11)
!1589 = !DILocation(line: 35, column: 26, scope: !1571)
!1590 = !DILocation(line: 35, column: 34, scope: !1571)
!1591 = !DILocation(line: 35, column: 37, scope: !1571)
!1592 = !DILocation(line: 36, column: 6, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1571, file: !8, line: 36, column: 5)
!1594 = !DILocation(line: 36, column: 8, scope: !1593)
!1595 = !DILocation(line: 36, column: 14, scope: !1593)
!1596 = !DILocation(line: 36, column: 18, scope: !1593)
!1597 = !DILocation(line: 36, column: 22, scope: !1593)
!1598 = !DILocation(line: 36, column: 30, scope: !1593)
!1599 = !DILocation(line: 36, column: 20, scope: !1593)
!1600 = !DILocation(line: 36, column: 39, scope: !1593)
!1601 = !DILocation(line: 36, column: 43, scope: !1593)
!1602 = !DILocation(line: 36, column: 45, scope: !1593)
!1603 = !DILocation(line: 36, column: 51, scope: !1593)
!1604 = !DILocation(line: 36, column: 55, scope: !1593)
!1605 = !DILocation(line: 36, column: 59, scope: !1593)
!1606 = !DILocation(line: 36, column: 67, scope: !1593)
!1607 = !DILocation(line: 36, column: 57, scope: !1593)
!1608 = !DILocation(line: 36, column: 5, scope: !1571)
!1609 = !DILocalVariable(name: "e", scope: !1610, file: !8, line: 37, type: !11)
!1610 = distinct !DILexicalBlock(scope: !1593, file: !8, line: 37, column: 2)
!1611 = !DILocation(line: 37, column: 8, scope: !1610)
!1612 = !DILocation(line: 37, column: 18, scope: !1610)
!1613 = !DILocation(line: 37, column: 26, scope: !1610)
!1614 = !DILocation(line: 37, column: 28, scope: !1610)
!1615 = !DILocation(line: 37, column: 16, scope: !1610)
!1616 = !DILocation(line: 38, column: 13, scope: !1610)
!1617 = !DILocation(line: 38, column: 17, scope: !1610)
!1618 = !DILocation(line: 38, column: 15, scope: !1610)
!1619 = !DILocation(line: 38, column: 3, scope: !1610)
!1620 = !DILocation(line: 38, column: 9, scope: !1610)
!1621 = !DILocation(line: 39, column: 3, scope: !1610)
!1622 = !DILocation(line: 39, column: 15, scope: !1610)
!1623 = !DILocation(line: 40, column: 2, scope: !1610)
!1624 = !DILocation(line: 41, column: 1, scope: !1571)
!1625 = distinct !DISubprogram(name: "~Point", linkageName: "_ZN5PointD2Ev", scope: !22, file: !23, line: 36, type: !28, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !34, retainedNodes: !1325)
!1626 = !DILocalVariable(name: "this", arg: 1, scope: !1625, type: !1512, flags: DIFlagArtificial | DIFlagObjectPointer)
!1627 = !DILocation(line: 0, scope: !1625)
!1628 = !DILocation(line: 36, column: 11, scope: !1625)
!1629 = distinct !DISubprogram(name: "InsideError", linkageName: "_ZN17ImageMeasurements11InsideErrorERK17ProjectedCylinderRK11BinaryImageRiS6_", scope: !1330, file: !8, line: 88, type: !1630, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1636, retainedNodes: !1325)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1334, !1335, !1632, !1344, !1344}
!1632 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = !DICompositeType(tag: DW_TAG_class_type, name: "BinaryImage", file: !1635, line: 26, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11BinaryImage")
!1635 = !DIFile(filename: "../FlexImageLib/BinaryImage.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "0ca7bb74bdc4f88a70865015ab960e8b")
!1636 = !DISubprogram(name: "InsideError", linkageName: "_ZN17ImageMeasurements11InsideErrorERK17ProjectedCylinderRK11BinaryImageRiS6_", scope: !1330, file: !1331, line: 54, type: !1630, scopeLine: 54, flags: DIFlagPrototyped, spFlags: 0)
!1637 = !DILocalVariable(name: "this", arg: 1, scope: !1629, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1638 = !DILocation(line: 0, scope: !1629)
!1639 = !DILocalVariable(name: "ProjCyl", arg: 2, scope: !1629, file: !8, line: 88, type: !1335)
!1640 = !DILocation(line: 88, column: 62, scope: !1629)
!1641 = !DILocalVariable(name: "FGmap", arg: 3, scope: !1629, file: !8, line: 88, type: !1632)
!1642 = !DILocation(line: 88, column: 90, scope: !1629)
!1643 = !DILocalVariable(name: "error", arg: 4, scope: !1629, file: !8, line: 88, type: !1344)
!1644 = !DILocation(line: 88, column: 102, scope: !1629)
!1645 = !DILocalVariable(name: "samplePoints", arg: 5, scope: !1629, file: !8, line: 88, type: !1344)
!1646 = !DILocation(line: 88, column: 114, scope: !1629)
!1647 = !DILocalVariable(name: "p1", scope: !1629, file: !8, line: 90, type: !1360)
!1648 = !DILocation(line: 90, column: 15, scope: !1629)
!1649 = !DILocation(line: 90, column: 20, scope: !1629)
!1650 = !DILocation(line: 90, column: 28, scope: !1629)
!1651 = !DILocalVariable(name: "p2", scope: !1629, file: !8, line: 90, type: !1360)
!1652 = !DILocation(line: 90, column: 38, scope: !1629)
!1653 = !DILocation(line: 90, column: 43, scope: !1629)
!1654 = !DILocation(line: 90, column: 51, scope: !1629)
!1655 = !DILocalVariable(name: "s1", scope: !1629, file: !8, line: 91, type: !22)
!1656 = !DILocation(line: 91, column: 8, scope: !1629)
!1657 = !DILocalVariable(name: "s2", scope: !1629, file: !8, line: 91, type: !22)
!1658 = !DILocation(line: 91, column: 12, scope: !1629)
!1659 = !DILocation(line: 92, column: 9, scope: !1629)
!1660 = !DILocation(line: 92, column: 17, scope: !1629)
!1661 = !DILocation(line: 92, column: 25, scope: !1629)
!1662 = !DILocation(line: 92, column: 29, scope: !1629)
!1663 = !DILocation(line: 92, column: 32, scope: !1629)
!1664 = !DILocation(line: 92, column: 27, scope: !1629)
!1665 = !DILocation(line: 92, column: 35, scope: !1629)
!1666 = !DILocation(line: 92, column: 43, scope: !1629)
!1667 = !DILocation(line: 92, column: 51, scope: !1629)
!1668 = !DILocation(line: 92, column: 55, scope: !1629)
!1669 = !DILocation(line: 92, column: 58, scope: !1629)
!1670 = !DILocation(line: 92, column: 53, scope: !1629)
!1671 = !DILocation(line: 92, column: 5, scope: !1629)
!1672 = !DILocation(line: 93, column: 9, scope: !1629)
!1673 = !DILocation(line: 93, column: 17, scope: !1629)
!1674 = !DILocation(line: 93, column: 25, scope: !1629)
!1675 = !DILocation(line: 93, column: 29, scope: !1629)
!1676 = !DILocation(line: 93, column: 32, scope: !1629)
!1677 = !DILocation(line: 93, column: 27, scope: !1629)
!1678 = !DILocation(line: 93, column: 35, scope: !1629)
!1679 = !DILocation(line: 93, column: 43, scope: !1629)
!1680 = !DILocation(line: 93, column: 51, scope: !1629)
!1681 = !DILocation(line: 93, column: 55, scope: !1629)
!1682 = !DILocation(line: 93, column: 58, scope: !1629)
!1683 = !DILocation(line: 93, column: 53, scope: !1629)
!1684 = !DILocation(line: 93, column: 5, scope: !1629)
!1685 = !DILocalVariable(name: "m", scope: !1629, file: !8, line: 94, type: !22)
!1686 = !DILocation(line: 94, column: 8, scope: !1629)
!1687 = !DILocation(line: 94, column: 10, scope: !1629)
!1688 = !DILocation(line: 94, column: 13, scope: !1629)
!1689 = !DILocation(line: 94, column: 20, scope: !1629)
!1690 = !DILocation(line: 94, column: 22, scope: !1629)
!1691 = !DILocation(line: 94, column: 15, scope: !1629)
!1692 = !DILocation(line: 94, column: 32, scope: !1629)
!1693 = !DILocation(line: 94, column: 35, scope: !1629)
!1694 = !DILocation(line: 94, column: 42, scope: !1629)
!1695 = !DILocation(line: 94, column: 44, scope: !1629)
!1696 = !DILocation(line: 94, column: 37, scope: !1629)
!1697 = !DILocation(line: 94, column: 29, scope: !1629)
!1698 = !DILocation(line: 94, column: 53, scope: !1629)
!1699 = !DILocation(line: 94, column: 56, scope: !1629)
!1700 = !DILocation(line: 94, column: 63, scope: !1629)
!1701 = !DILocation(line: 94, column: 65, scope: !1629)
!1702 = !DILocation(line: 94, column: 58, scope: !1629)
!1703 = !DILocation(line: 94, column: 75, scope: !1629)
!1704 = !DILocation(line: 94, column: 78, scope: !1629)
!1705 = !DILocation(line: 94, column: 85, scope: !1629)
!1706 = !DILocation(line: 94, column: 87, scope: !1629)
!1707 = !DILocation(line: 94, column: 80, scope: !1629)
!1708 = !DILocation(line: 94, column: 72, scope: !1629)
!1709 = !DILocalVariable(name: "n1", scope: !1629, file: !8, line: 95, type: !11)
!1710 = !DILocation(line: 95, column: 6, scope: !1629)
!1711 = !DILocation(line: 95, column: 21, scope: !1629)
!1712 = !DILocation(line: 95, column: 31, scope: !1629)
!1713 = !DILocation(line: 95, column: 29, scope: !1629)
!1714 = !DILocation(line: 95, column: 38, scope: !1629)
!1715 = !DILocation(line: 95, column: 20, scope: !1629)
!1716 = !DILocation(line: 95, column: 15, scope: !1629)
!1717 = !DILocation(line: 95, column: 46, scope: !1629)
!1718 = !DILocation(line: 95, column: 11, scope: !1629)
!1719 = !DILocalVariable(name: "n2", scope: !1629, file: !8, line: 96, type: !11)
!1720 = !DILocation(line: 96, column: 6, scope: !1629)
!1721 = !DILocation(line: 96, column: 21, scope: !1629)
!1722 = !DILocation(line: 96, column: 30, scope: !1629)
!1723 = !DILocation(line: 96, column: 28, scope: !1629)
!1724 = !DILocation(line: 96, column: 37, scope: !1629)
!1725 = !DILocation(line: 96, column: 20, scope: !1629)
!1726 = !DILocation(line: 96, column: 15, scope: !1629)
!1727 = !DILocation(line: 96, column: 46, scope: !1629)
!1728 = !DILocation(line: 96, column: 11, scope: !1629)
!1729 = !DILocalVariable(name: "d1", scope: !1629, file: !8, line: 97, type: !10)
!1730 = !DILocation(line: 97, column: 8, scope: !1629)
!1731 = !DILocation(line: 97, column: 22, scope: !1629)
!1732 = !DILocation(line: 97, column: 20, scope: !1629)
!1733 = !DILocation(line: 97, column: 18, scope: !1629)
!1734 = !DILocalVariable(name: "d2", scope: !1629, file: !8, line: 98, type: !10)
!1735 = !DILocation(line: 98, column: 8, scope: !1629)
!1736 = !DILocation(line: 98, column: 20, scope: !1629)
!1737 = !DILocation(line: 98, column: 18, scope: !1629)
!1738 = !DILocalVariable(name: "delta1", scope: !1629, file: !8, line: 99, type: !10)
!1739 = !DILocation(line: 99, column: 8, scope: !1629)
!1740 = !DILocalVariable(name: "e1", scope: !1629, file: !8, line: 100, type: !22)
!1741 = !DILocation(line: 100, column: 8, scope: !1629)
!1742 = !DILocalVariable(name: "e2", scope: !1629, file: !8, line: 100, type: !22)
!1743 = !DILocation(line: 100, column: 12, scope: !1629)
!1744 = !DILocalVariable(name: "i", scope: !1745, file: !8, line: 101, type: !11)
!1745 = distinct !DILexicalBlock(scope: !1629, file: !8, line: 101, column: 2)
!1746 = !DILocation(line: 101, column: 10, scope: !1745)
!1747 = !DILocation(line: 101, column: 6, scope: !1745)
!1748 = !DILocation(line: 101, column: 17, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !8, line: 101, column: 2)
!1750 = !DILocation(line: 101, column: 21, scope: !1749)
!1751 = !DILocation(line: 101, column: 19, scope: !1749)
!1752 = !DILocation(line: 101, column: 2, scope: !1745)
!1753 = !DILocation(line: 102, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !8, line: 102, column: 2)
!1755 = !DILocation(line: 102, column: 16, scope: !1754)
!1756 = !DILocation(line: 102, column: 20, scope: !1754)
!1757 = !DILocation(line: 102, column: 32, scope: !1754)
!1758 = !DILocation(line: 102, column: 18, scope: !1754)
!1759 = !DILocation(line: 102, column: 35, scope: !1754)
!1760 = !DILocation(line: 102, column: 38, scope: !1754)
!1761 = !DILocation(line: 102, column: 42, scope: !1754)
!1762 = !DILocation(line: 102, column: 54, scope: !1754)
!1763 = !DILocation(line: 102, column: 40, scope: !1754)
!1764 = !DILocation(line: 102, column: 9, scope: !1754)
!1765 = !DILocation(line: 103, column: 10, scope: !1754)
!1766 = !DILocation(line: 103, column: 13, scope: !1754)
!1767 = !DILocation(line: 103, column: 17, scope: !1754)
!1768 = !DILocation(line: 103, column: 29, scope: !1754)
!1769 = !DILocation(line: 103, column: 15, scope: !1754)
!1770 = !DILocation(line: 103, column: 32, scope: !1754)
!1771 = !DILocation(line: 103, column: 35, scope: !1754)
!1772 = !DILocation(line: 103, column: 39, scope: !1754)
!1773 = !DILocation(line: 103, column: 51, scope: !1754)
!1774 = !DILocation(line: 103, column: 37, scope: !1754)
!1775 = !DILocation(line: 103, column: 6, scope: !1754)
!1776 = !DILocation(line: 104, column: 12, scope: !1754)
!1777 = !DILocation(line: 104, column: 19, scope: !1754)
!1778 = !DILocation(line: 104, column: 14, scope: !1754)
!1779 = !DILocation(line: 104, column: 25, scope: !1754)
!1780 = !DILocation(line: 104, column: 32, scope: !1754)
!1781 = !DILocation(line: 104, column: 27, scope: !1754)
!1782 = !DILocation(line: 104, column: 5, scope: !1754)
!1783 = !DILocation(line: 105, column: 13, scope: !1754)
!1784 = !DILocation(line: 105, column: 10, scope: !1754)
!1785 = !DILocalVariable(name: "delta2", scope: !1754, file: !8, line: 106, type: !10)
!1786 = !DILocation(line: 106, column: 9, scope: !1754)
!1787 = !DILocalVariable(name: "j", scope: !1788, file: !8, line: 107, type: !11)
!1788 = distinct !DILexicalBlock(scope: !1754, file: !8, line: 107, column: 3)
!1789 = !DILocation(line: 107, column: 11, scope: !1788)
!1790 = !DILocation(line: 107, column: 7, scope: !1788)
!1791 = !DILocation(line: 107, column: 18, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !8, line: 107, column: 3)
!1793 = !DILocation(line: 107, column: 22, scope: !1792)
!1794 = !DILocation(line: 107, column: 20, scope: !1792)
!1795 = !DILocation(line: 107, column: 3, scope: !1788)
!1796 = !DILocation(line: 108, column: 26, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !8, line: 108, column: 3)
!1798 = !DILocation(line: 108, column: 30, scope: !1797)
!1799 = !DILocation(line: 108, column: 41, scope: !1797)
!1800 = !DILocation(line: 108, column: 28, scope: !1797)
!1801 = !DILocation(line: 108, column: 47, scope: !1797)
!1802 = !DILocation(line: 108, column: 51, scope: !1797)
!1803 = !DILocation(line: 108, column: 62, scope: !1797)
!1804 = !DILocation(line: 108, column: 49, scope: !1797)
!1805 = !DILocation(line: 108, column: 65, scope: !1797)
!1806 = !DILocation(line: 108, column: 72, scope: !1797)
!1807 = !DILocation(line: 108, column: 79, scope: !1797)
!1808 = !DILocation(line: 108, column: 5, scope: !1797)
!1809 = !DILocation(line: 109, column: 14, scope: !1797)
!1810 = !DILocation(line: 109, column: 11, scope: !1797)
!1811 = !DILocation(line: 110, column: 3, scope: !1797)
!1812 = !DILocation(line: 107, column: 27, scope: !1792)
!1813 = !DILocation(line: 107, column: 3, scope: !1792)
!1814 = distinct !{!1814, !1795, !1815, !1467}
!1815 = !DILocation(line: 110, column: 3, scope: !1788)
!1816 = !DILocation(line: 112, column: 1, scope: !1629)
!1817 = !DILocation(line: 112, column: 1, scope: !1754)
!1818 = !DILocation(line: 111, column: 2, scope: !1754)
!1819 = !DILocation(line: 101, column: 26, scope: !1749)
!1820 = !DILocation(line: 101, column: 2, scope: !1749)
!1821 = distinct !{!1821, !1752, !1822, !1467}
!1822 = !DILocation(line: 111, column: 2, scope: !1745)
!1823 = distinct !DISubprogram(name: "Point", linkageName: "_ZN5PointC2Eff", scope: !22, file: !23, line: 35, type: !32, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !31, retainedNodes: !1325)
!1824 = !DILocalVariable(name: "this", arg: 1, scope: !1823, type: !1512, flags: DIFlagArtificial | DIFlagObjectPointer)
!1825 = !DILocation(line: 0, scope: !1823)
!1826 = !DILocalVariable(name: "vx", arg: 2, scope: !1823, file: !23, line: 35, type: !10)
!1827 = !DILocation(line: 35, column: 14, scope: !1823)
!1828 = !DILocalVariable(name: "vy", arg: 3, scope: !1823, file: !23, line: 35, type: !10)
!1829 = !DILocation(line: 35, column: 24, scope: !1823)
!1830 = !DILocation(line: 35, column: 32, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !23, line: 35, column: 27)
!1832 = !DILocation(line: 35, column: 28, scope: !1831)
!1833 = !DILocation(line: 35, column: 30, scope: !1831)
!1834 = !DILocation(line: 35, column: 38, scope: !1831)
!1835 = !DILocation(line: 35, column: 36, scope: !1831)
!1836 = !DILocation(line: 35, column: 37, scope: !1831)
!1837 = !DILocation(line: 35, column: 41, scope: !1823)
!1838 = distinct !DISubprogram(name: "SampleInsidePoint", linkageName: "_Z17SampleInsidePointffRK11BinaryImageRiS2_", scope: !8, file: !8, line: 77, type: !1839, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !1325)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !10, !10, !1632, !1344, !1344}
!1841 = !DILocalVariable(name: "xf", arg: 1, scope: !1838, file: !8, line: 77, type: !10)
!1842 = !DILocation(line: 77, column: 37, scope: !1838)
!1843 = !DILocalVariable(name: "yf", arg: 2, scope: !1838, file: !8, line: 77, type: !10)
!1844 = !DILocation(line: 77, column: 47, scope: !1838)
!1845 = !DILocalVariable(name: "FGmap", arg: 3, scope: !1838, file: !8, line: 77, type: !1632)
!1846 = !DILocation(line: 77, column: 70, scope: !1838)
!1847 = !DILocalVariable(name: "error", arg: 4, scope: !1838, file: !8, line: 77, type: !1344)
!1848 = !DILocation(line: 77, column: 82, scope: !1838)
!1849 = !DILocalVariable(name: "samplePoints", arg: 5, scope: !1838, file: !8, line: 77, type: !1344)
!1850 = !DILocation(line: 77, column: 94, scope: !1838)
!1851 = !DILocalVariable(name: "x", scope: !1838, file: !8, line: 79, type: !11)
!1852 = !DILocation(line: 79, column: 6, scope: !1838)
!1853 = !DILocation(line: 79, column: 14, scope: !1838)
!1854 = !DILocation(line: 79, column: 17, scope: !1838)
!1855 = !DILocalVariable(name: "y", scope: !1838, file: !8, line: 79, type: !11)
!1856 = !DILocation(line: 79, column: 26, scope: !1838)
!1857 = !DILocation(line: 79, column: 34, scope: !1838)
!1858 = !DILocation(line: 79, column: 37, scope: !1838)
!1859 = !DILocation(line: 80, column: 6, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1838, file: !8, line: 80, column: 5)
!1861 = !DILocation(line: 80, column: 8, scope: !1860)
!1862 = !DILocation(line: 80, column: 14, scope: !1860)
!1863 = !DILocation(line: 80, column: 18, scope: !1860)
!1864 = !DILocation(line: 80, column: 22, scope: !1860)
!1865 = !DILocation(line: 80, column: 28, scope: !1860)
!1866 = !DILocation(line: 80, column: 20, scope: !1860)
!1867 = !DILocation(line: 80, column: 37, scope: !1860)
!1868 = !DILocation(line: 80, column: 41, scope: !1860)
!1869 = !DILocation(line: 80, column: 43, scope: !1860)
!1870 = !DILocation(line: 80, column: 49, scope: !1860)
!1871 = !DILocation(line: 80, column: 53, scope: !1860)
!1872 = !DILocation(line: 80, column: 57, scope: !1860)
!1873 = !DILocation(line: 80, column: 63, scope: !1860)
!1874 = !DILocation(line: 80, column: 55, scope: !1860)
!1875 = !DILocation(line: 80, column: 5, scope: !1838)
!1876 = !DILocalVariable(name: "e", scope: !1877, file: !8, line: 81, type: !11)
!1877 = distinct !DILexicalBlock(scope: !1860, file: !8, line: 81, column: 2)
!1878 = !DILocation(line: 81, column: 8, scope: !1877)
!1879 = !DILocation(line: 81, column: 16, scope: !1877)
!1880 = !DILocation(line: 81, column: 22, scope: !1877)
!1881 = !DILocation(line: 81, column: 24, scope: !1877)
!1882 = !DILocation(line: 81, column: 14, scope: !1877)
!1883 = !DILocation(line: 82, column: 12, scope: !1877)
!1884 = !DILocation(line: 82, column: 3, scope: !1877)
!1885 = !DILocation(line: 82, column: 9, scope: !1877)
!1886 = !DILocation(line: 83, column: 3, scope: !1877)
!1887 = !DILocation(line: 83, column: 15, scope: !1877)
!1888 = !DILocation(line: 84, column: 2, scope: !1877)
!1889 = !DILocation(line: 85, column: 1, scope: !1838)
!1890 = distinct !DISubprogram(name: "ImageErrorEdge", linkageName: "_ZN17ImageMeasurements14ImageErrorEdgeERSt6vectorI9FlexImageIhLi1EESaIS2_EER24MultiCameraProjectedBody", scope: !1330, file: !8, line: 115, type: !1891, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1897, retainedNodes: !1325)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!10, !1334, !1893, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<FlexImage<unsigned char, 1>, std::allocator<FlexImage<unsigned char, 1> > >", scope: !2, file: !18, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI9FlexImageIhLi1EESaIS1_EE")
!1895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_class_type, name: "MultiCameraProjectedBody", file: !1338, line: 56, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS24MultiCameraProjectedBody")
!1897 = !DISubprogram(name: "ImageErrorEdge", linkageName: "_ZN17ImageMeasurements14ImageErrorEdgeERSt6vectorI9FlexImageIhLi1EESaIS2_EER24MultiCameraProjectedBody", scope: !1330, file: !1331, line: 64, type: !1891, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1898 = !DILocalVariable(name: "this", arg: 1, scope: !1890, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!1899 = !DILocation(line: 0, scope: !1890)
!1900 = !DILocalVariable(name: "ImageMaps", arg: 2, scope: !1890, file: !8, line: 115, type: !1893)
!1901 = !DILocation(line: 115, column: 67, scope: !1890)
!1902 = !DILocalVariable(name: "ProjBodies", arg: 3, scope: !1890, file: !8, line: 115, type: !1895)
!1903 = !DILocation(line: 115, column: 104, scope: !1890)
!1904 = !DILocalVariable(name: "samples", scope: !1890, file: !8, line: 117, type: !11)
!1905 = !DILocation(line: 117, column: 6, scope: !1890)
!1906 = !DILocalVariable(name: "error", scope: !1890, file: !8, line: 118, type: !10)
!1907 = !DILocation(line: 118, column: 8, scope: !1890)
!1908 = !DILocalVariable(name: "i", scope: !1909, file: !8, line: 119, type: !11)
!1909 = distinct !DILexicalBlock(scope: !1890, file: !8, line: 119, column: 2)
!1910 = !DILocation(line: 119, column: 10, scope: !1909)
!1911 = !DILocation(line: 119, column: 6, scope: !1909)
!1912 = !DILocation(line: 119, column: 17, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !8, line: 119, column: 2)
!1914 = !DILocation(line: 119, column: 26, scope: !1913)
!1915 = !DILocation(line: 119, column: 36, scope: !1913)
!1916 = !DILocation(line: 119, column: 19, scope: !1913)
!1917 = !DILocation(line: 119, column: 2, scope: !1909)
!1918 = !DILocalVariable(name: "nParts", scope: !1919, file: !8, line: 120, type: !11)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !8, line: 120, column: 2)
!1920 = !DILocation(line: 120, column: 8, scope: !1919)
!1921 = !DILocation(line: 120, column: 17, scope: !1919)
!1922 = !DILocation(line: 120, column: 28, scope: !1919)
!1923 = !DILocation(line: 120, column: 31, scope: !1919)
!1924 = !DILocalVariable(name: "j", scope: !1925, file: !8, line: 121, type: !11)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !8, line: 121, column: 3)
!1926 = !DILocation(line: 121, column: 11, scope: !1925)
!1927 = !DILocation(line: 121, column: 7, scope: !1925)
!1928 = !DILocation(line: 121, column: 18, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !8, line: 121, column: 3)
!1930 = !DILocation(line: 121, column: 22, scope: !1929)
!1931 = !DILocation(line: 121, column: 20, scope: !1929)
!1932 = !DILocation(line: 121, column: 3, scope: !1925)
!1933 = !DILocation(line: 122, column: 14, scope: !1929)
!1934 = !DILocation(line: 122, column: 25, scope: !1929)
!1935 = !DILocation(line: 122, column: 28, scope: !1929)
!1936 = !DILocation(line: 122, column: 32, scope: !1929)
!1937 = !DILocation(line: 122, column: 42, scope: !1929)
!1938 = !DILocation(line: 122, column: 4, scope: !1929)
!1939 = !DILocation(line: 121, column: 31, scope: !1929)
!1940 = !DILocation(line: 121, column: 3, scope: !1929)
!1941 = distinct !{!1941, !1932, !1942, !1467}
!1942 = !DILocation(line: 122, column: 60, scope: !1925)
!1943 = !DILocation(line: 123, column: 2, scope: !1919)
!1944 = !DILocation(line: 119, column: 45, scope: !1913)
!1945 = !DILocation(line: 119, column: 2, scope: !1913)
!1946 = distinct !{!1946, !1917, !1947, !1467}
!1947 = !DILocation(line: 123, column: 2, scope: !1909)
!1948 = !DILocation(line: 125, column: 16, scope: !1890)
!1949 = !DILocation(line: 125, column: 24, scope: !1890)
!1950 = !DILocation(line: 125, column: 22, scope: !1890)
!1951 = !DILocation(line: 125, column: 2, scope: !1890)
!1952 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI9FlexImageIhLi1EESaIS1_EE4sizeEv", scope: !1894, file: !18, line: 918, type: !1953, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1957, retainedNodes: !1325)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!17, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1957 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI9FlexImageIhLi1EESaIS1_EE4sizeEv", scope: !1894, file: !18, line: 918, type: !1953, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1958 = !DILocalVariable(name: "this", arg: 1, scope: !1952, type: !1959, flags: DIFlagArtificial | DIFlagObjectPointer)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1960 = !DILocation(line: 0, scope: !1952)
!1961 = !DILocation(line: 919, column: 32, scope: !1952)
!1962 = !DILocation(line: 919, column: 40, scope: !1952)
!1963 = !DILocation(line: 919, column: 58, scope: !1952)
!1964 = !DILocation(line: 919, column: 66, scope: !1952)
!1965 = !DILocation(line: 919, column: 50, scope: !1952)
!1966 = !DILocation(line: 919, column: 9, scope: !1952)
!1967 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN24MultiCameraProjectedBodyclEi", scope: !1896, file: !1338, line: 62, type: !1968, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1973, retainedNodes: !1325)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1970, !1972, !11}
!1970 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_class_type, name: "ProjectedBody", file: !1338, line: 44, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13ProjectedBody")
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1973 = !DISubprogram(name: "operator()", linkageName: "_ZN24MultiCameraProjectedBodyclEi", scope: !1896, file: !1338, line: 62, type: !1968, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1974 = !DILocalVariable(name: "this", arg: 1, scope: !1967, type: !1975, flags: DIFlagArtificial | DIFlagObjectPointer)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1976 = !DILocation(line: 0, scope: !1967)
!1977 = !DILocalVariable(name: "i", arg: 2, scope: !1967, file: !1338, line: 62, type: !11)
!1978 = !DILocation(line: 62, column: 32, scope: !1967)
!1979 = !DILocation(line: 62, column: 42, scope: !1967)
!1980 = !DILocation(line: 62, column: 54, scope: !1967)
!1981 = !DILocation(line: 62, column: 35, scope: !1967)
!1982 = distinct !DISubprogram(name: "Size", linkageName: "_ZN13ProjectedBody4SizeEv", scope: !1971, file: !1338, line: 52, type: !1983, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1986, retainedNodes: !1325)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!11, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1986 = !DISubprogram(name: "Size", linkageName: "_ZN13ProjectedBody4SizeEv", scope: !1971, file: !1338, line: 52, type: !1983, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1987 = !DILocalVariable(name: "this", arg: 1, scope: !1982, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1989 = !DILocation(line: 0, scope: !1982)
!1990 = !DILocation(line: 52, column: 25, scope: !1982)
!1991 = !DILocation(line: 52, column: 35, scope: !1982)
!1992 = !DILocation(line: 52, column: 13, scope: !1982)
!1993 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN13ProjectedBodyclEi", scope: !1971, file: !1338, line: 50, type: !1994, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !1997, retainedNodes: !1325)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !1985, !11}
!1996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1337, size: 64)
!1997 = !DISubprogram(name: "operator()", linkageName: "_ZN13ProjectedBodyclEi", scope: !1971, file: !1338, line: 50, type: !1994, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1998 = !DILocalVariable(name: "this", arg: 1, scope: !1993, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!1999 = !DILocation(line: 0, scope: !1993)
!2000 = !DILocalVariable(name: "i", arg: 2, scope: !1993, file: !1338, line: 50, type: !11)
!2001 = !DILocation(line: 50, column: 36, scope: !1993)
!2002 = !DILocation(line: 50, column: 47, scope: !1993)
!2003 = !DILocation(line: 50, column: 57, scope: !1993)
!2004 = !DILocation(line: 50, column: 40, scope: !1993)
!2005 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI9FlexImageIhLi1EESaIS1_EEixEm", scope: !1894, file: !18, line: 1043, type: !2006, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2068, retainedNodes: !1325)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!2008, !2067, !17}
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1894, file: !18, line: 417, baseType: !2009, flags: DIFlagPublic)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2011, file: !2010, line: 62, baseType: !2064)
!2010 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<FlexImage<unsigned char, 1> >, FlexImage<unsigned char, 1> >", scope: !302, file: !2010, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2012, templateParams: !2062, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_EE")
!2012 = !{!2013, !2045, !2050, !2054, !2058, !2059, !2060, !2061}
!2013 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2011, baseType: !2014, extraData: i32 0)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<FlexImage<unsigned char, 1> > >", scope: !2, file: !2015, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2016, templateParams: !2043, identifier: "_ZTSSt16allocator_traitsISaI9FlexImageIhLi1EEEE")
!2015 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!2016 = !{!2017, !2027, !2031, !2034, !2040}
!2017 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI9FlexImageIhLi1EEEE8allocateERS2_m", scope: !2014, file: !2015, line: 463, type: !2018, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!2020, !2022, !2026}
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2014, file: !2015, line: 420, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2014, file: !2015, line: 414, baseType: !2024)
!2024 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<FlexImage<unsigned char, 1> >", scope: !2, file: !2025, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI9FlexImageIhLi1EEE")
!2025 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !2015, line: 435, baseType: !19)
!2027 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI9FlexImageIhLi1EEEE8allocateERS2_mPKv", scope: !2014, file: !2015, line: 477, type: !2028, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2020, !2022, !2026, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !2015, line: 429, baseType: !495)
!2031 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI9FlexImageIhLi1EEEE10deallocateERS2_PS1_m", scope: !2014, file: !2015, line: 495, type: !2032, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2022, !2020, !2026}
!2034 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI9FlexImageIhLi1EEEE8max_sizeERKS2_", scope: !2014, file: !2015, line: 547, type: !2035, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2014, file: !2015, line: 435, baseType: !19)
!2038 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2040 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI9FlexImageIhLi1EEEE37select_on_container_copy_constructionERKS2_", scope: !2014, file: !2015, line: 562, type: !2041, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!2023, !2038}
!2043 = !{!2044}
!2044 = !DITemplateTypeParameter(name: "_Alloc", type: !2024)
!2045 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E17_S_select_on_copyERKS3_", scope: !2011, file: !2010, line: 97, type: !2046, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!2024, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2050 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E10_S_on_swapERS3_S5_", scope: !2011, file: !2010, line: 100, type: !2051, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !2053, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2024, size: 64)
!2054 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E27_S_propagate_on_copy_assignEv", scope: !2011, file: !2010, line: 103, type: !2055, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2057}
!2057 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!2058 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E27_S_propagate_on_move_assignEv", scope: !2011, file: !2010, line: 106, type: !2055, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2059 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E20_S_propagate_on_swapEv", scope: !2011, file: !2010, line: 109, type: !2055, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2060 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E15_S_always_equalEv", scope: !2011, file: !2010, line: 112, type: !2055, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2061 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI9FlexImageIhLi1EEES2_E15_S_nothrow_moveEv", scope: !2011, file: !2010, line: 115, type: !2055, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2062 = !{!2044, !2063}
!2063 = !DITemplateTypeParameter(type: !1341)
!2064 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2011, file: !2010, line: 56, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2014, file: !2015, line: 417, baseType: !1341)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2068 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI9FlexImageIhLi1EESaIS1_EEixEm", scope: !1894, file: !18, line: 1043, type: !2006, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2069 = !DILocalVariable(name: "this", arg: 1, scope: !2005, type: !2070, flags: DIFlagArtificial | DIFlagObjectPointer)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!2071 = !DILocation(line: 0, scope: !2005)
!2072 = !DILocalVariable(name: "__n", arg: 2, scope: !2005, file: !18, line: 1043, type: !17)
!2073 = !DILocation(line: 1043, column: 28, scope: !2005)
!2074 = !DILocation(line: 1046, column: 17, scope: !2005)
!2075 = !DILocation(line: 1046, column: 25, scope: !2005)
!2076 = !DILocation(line: 1046, column: 36, scope: !2005)
!2077 = !DILocation(line: 1046, column: 34, scope: !2005)
!2078 = !DILocation(line: 1046, column: 2, scope: !2005)
!2079 = distinct !DISubprogram(name: "ImageErrorInside", linkageName: "_ZN17ImageMeasurements16ImageErrorInsideERSt6vectorI11BinaryImageSaIS1_EER24MultiCameraProjectedBody", scope: !1330, file: !8, line: 129, type: !2080, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2084, retainedNodes: !1325)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!10, !1334, !2082, !1895}
!2082 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<BinaryImage, std::allocator<BinaryImage> >", scope: !2, file: !18, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI11BinaryImageSaIS0_EE")
!2084 = !DISubprogram(name: "ImageErrorInside", linkageName: "_ZN17ImageMeasurements16ImageErrorInsideERSt6vectorI11BinaryImageSaIS1_EER24MultiCameraProjectedBody", scope: !1330, file: !1331, line: 67, type: !2080, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2085 = !DILocalVariable(name: "this", arg: 1, scope: !2079, type: !1347, flags: DIFlagArtificial | DIFlagObjectPointer)
!2086 = !DILocation(line: 0, scope: !2079)
!2087 = !DILocalVariable(name: "ImageMaps", arg: 2, scope: !2079, file: !8, line: 129, type: !2082)
!2088 = !DILocation(line: 129, column: 69, scope: !2079)
!2089 = !DILocalVariable(name: "ProjBodies", arg: 3, scope: !2079, file: !8, line: 129, type: !1895)
!2090 = !DILocation(line: 129, column: 106, scope: !2079)
!2091 = !DILocalVariable(name: "samples", scope: !2079, file: !8, line: 131, type: !11)
!2092 = !DILocation(line: 131, column: 6, scope: !2079)
!2093 = !DILocalVariable(name: "error", scope: !2079, file: !8, line: 132, type: !11)
!2094 = !DILocation(line: 132, column: 6, scope: !2079)
!2095 = !DILocalVariable(name: "i", scope: !2096, file: !8, line: 133, type: !11)
!2096 = distinct !DILexicalBlock(scope: !2079, file: !8, line: 133, column: 2)
!2097 = !DILocation(line: 133, column: 10, scope: !2096)
!2098 = !DILocation(line: 133, column: 6, scope: !2096)
!2099 = !DILocation(line: 133, column: 17, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !8, line: 133, column: 2)
!2101 = !DILocation(line: 133, column: 26, scope: !2100)
!2102 = !DILocation(line: 133, column: 36, scope: !2100)
!2103 = !DILocation(line: 133, column: 19, scope: !2100)
!2104 = !DILocation(line: 133, column: 2, scope: !2096)
!2105 = !DILocalVariable(name: "nParts", scope: !2106, file: !8, line: 134, type: !11)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !8, line: 134, column: 2)
!2107 = !DILocation(line: 134, column: 8, scope: !2106)
!2108 = !DILocation(line: 134, column: 17, scope: !2106)
!2109 = !DILocation(line: 134, column: 28, scope: !2106)
!2110 = !DILocation(line: 134, column: 31, scope: !2106)
!2111 = !DILocalVariable(name: "j", scope: !2112, file: !8, line: 135, type: !11)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !8, line: 135, column: 3)
!2113 = !DILocation(line: 135, column: 11, scope: !2112)
!2114 = !DILocation(line: 135, column: 7, scope: !2112)
!2115 = !DILocation(line: 135, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !8, line: 135, column: 3)
!2117 = !DILocation(line: 135, column: 22, scope: !2116)
!2118 = !DILocation(line: 135, column: 20, scope: !2116)
!2119 = !DILocation(line: 135, column: 3, scope: !2112)
!2120 = !DILocation(line: 136, column: 16, scope: !2116)
!2121 = !DILocation(line: 136, column: 27, scope: !2116)
!2122 = !DILocation(line: 136, column: 30, scope: !2116)
!2123 = !DILocation(line: 136, column: 34, scope: !2116)
!2124 = !DILocation(line: 136, column: 44, scope: !2116)
!2125 = !DILocation(line: 136, column: 4, scope: !2116)
!2126 = !DILocation(line: 135, column: 31, scope: !2116)
!2127 = !DILocation(line: 135, column: 3, scope: !2116)
!2128 = distinct !{!2128, !2119, !2129, !1467}
!2129 = !DILocation(line: 136, column: 62, scope: !2112)
!2130 = !DILocation(line: 137, column: 2, scope: !2106)
!2131 = !DILocation(line: 133, column: 45, scope: !2100)
!2132 = !DILocation(line: 133, column: 2, scope: !2100)
!2133 = distinct !{!2133, !2104, !2134, !1467}
!2134 = !DILocation(line: 137, column: 2, scope: !2096)
!2135 = !DILocation(line: 139, column: 16, scope: !2079)
!2136 = !DILocation(line: 139, column: 24, scope: !2079)
!2137 = !DILocation(line: 139, column: 22, scope: !2079)
!2138 = !DILocation(line: 139, column: 2, scope: !2079)
!2139 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI11BinaryImageSaIS0_EE4sizeEv", scope: !2083, file: !18, line: 918, type: !2140, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2144, retainedNodes: !1325)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!17, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2144 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI11BinaryImageSaIS0_EE4sizeEv", scope: !2083, file: !18, line: 918, type: !2140, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2145 = !DILocalVariable(name: "this", arg: 1, scope: !2139, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2147 = !DILocation(line: 0, scope: !2139)
!2148 = !DILocation(line: 919, column: 32, scope: !2139)
!2149 = !DILocation(line: 919, column: 40, scope: !2139)
!2150 = !DILocation(line: 919, column: 58, scope: !2139)
!2151 = !DILocation(line: 919, column: 66, scope: !2139)
!2152 = !DILocation(line: 919, column: 50, scope: !2139)
!2153 = !DILocation(line: 919, column: 9, scope: !2139)
!2154 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI11BinaryImageSaIS0_EEixEm", scope: !2083, file: !18, line: 1043, type: !2155, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2209, retainedNodes: !1325)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2157, !2208, !17}
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2083, file: !18, line: 417, baseType: !2158, flags: DIFlagPublic)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2159, file: !2010, line: 62, baseType: !2205)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<BinaryImage>, BinaryImage>", scope: !302, file: !2010, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2160, templateParams: !2203, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_EE")
!2160 = !{!2161, !2189, !2194, !2198, !2199, !2200, !2201, !2202}
!2161 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2159, baseType: !2162, extraData: i32 0)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<BinaryImage> >", scope: !2, file: !2015, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2163, templateParams: !2187, identifier: "_ZTSSt16allocator_traitsISaI11BinaryImageEE")
!2163 = !{!2164, !2172, !2175, !2178, !2184}
!2164 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11BinaryImageEE8allocateERS1_m", scope: !2162, file: !2015, line: 463, type: !2165, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!2167, !2169, !2026}
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2162, file: !2015, line: 420, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2162, file: !2015, line: 414, baseType: !2171)
!2171 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<BinaryImage>", scope: !2, file: !2025, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI11BinaryImageE")
!2172 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11BinaryImageEE8allocateERS1_mPKv", scope: !2162, file: !2015, line: 477, type: !2173, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2167, !2169, !2026, !2030}
!2175 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI11BinaryImageEE10deallocateERS1_PS0_m", scope: !2162, file: !2015, line: 495, type: !2176, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2169, !2167, !2026}
!2178 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI11BinaryImageEE8max_sizeERKS1_", scope: !2162, file: !2015, line: 547, type: !2179, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2162, file: !2015, line: 435, baseType: !19)
!2182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2184 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI11BinaryImageEE37select_on_container_copy_constructionERKS1_", scope: !2162, file: !2015, line: 562, type: !2185, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2170, !2182}
!2187 = !{!2188}
!2188 = !DITemplateTypeParameter(name: "_Alloc", type: !2171)
!2189 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E17_S_select_on_copyERKS2_", scope: !2159, file: !2010, line: 97, type: !2190, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2171, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2194 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E10_S_on_swapERS2_S4_", scope: !2159, file: !2010, line: 100, type: !2195, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2197, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2171, size: 64)
!2198 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E27_S_propagate_on_copy_assignEv", scope: !2159, file: !2010, line: 103, type: !2055, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2199 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E27_S_propagate_on_move_assignEv", scope: !2159, file: !2010, line: 106, type: !2055, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2200 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E20_S_propagate_on_swapEv", scope: !2159, file: !2010, line: 109, type: !2055, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2201 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E15_S_always_equalEv", scope: !2159, file: !2010, line: 112, type: !2055, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2202 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11BinaryImageES1_E15_S_nothrow_moveEv", scope: !2159, file: !2010, line: 115, type: !2055, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2203 = !{!2188, !2204}
!2204 = !DITemplateTypeParameter(type: !1634)
!2205 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2159, file: !2010, line: 56, baseType: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2162, file: !2015, line: 417, baseType: !1634)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2209 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI11BinaryImageSaIS0_EEixEm", scope: !2083, file: !18, line: 1043, type: !2155, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2210 = !DILocalVariable(name: "this", arg: 1, scope: !2154, type: !2211, flags: DIFlagArtificial | DIFlagObjectPointer)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2212 = !DILocation(line: 0, scope: !2154)
!2213 = !DILocalVariable(name: "__n", arg: 2, scope: !2154, file: !18, line: 1043, type: !17)
!2214 = !DILocation(line: 1043, column: 28, scope: !2154)
!2215 = !DILocation(line: 1046, column: 17, scope: !2154)
!2216 = !DILocation(line: 1046, column: 25, scope: !2154)
!2217 = !DILocation(line: 1046, column: 36, scope: !2154)
!2218 = !DILocation(line: 1046, column: 34, scope: !2154)
!2219 = !DILocation(line: 1046, column: 2, scope: !2154)
!2220 = distinct !DISubprogram(name: "Width", linkageName: "_ZNK9FlexImageIhLi1EE5WidthEv", scope: !1341, file: !1342, line: 86, type: !2221, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2224, retainedNodes: !1325)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!11, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2224 = !DISubprogram(name: "Width", linkageName: "_ZNK9FlexImageIhLi1EE5WidthEv", scope: !1341, file: !1342, line: 86, type: !2221, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2225 = !DILocalVariable(name: "this", arg: 1, scope: !2220, type: !2226, flags: DIFlagArtificial | DIFlagObjectPointer)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 86, column: 38, scope: !2220)
!2229 = !DILocation(line: 86, column: 44, scope: !2220)
!2230 = !DILocation(line: 86, column: 31, scope: !2220)
!2231 = distinct !DISubprogram(name: "Height", linkageName: "_ZNK9FlexImageIhLi1EE6HeightEv", scope: !1341, file: !1342, line: 87, type: !2221, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2232, retainedNodes: !1325)
!2232 = !DISubprogram(name: "Height", linkageName: "_ZNK9FlexImageIhLi1EE6HeightEv", scope: !1341, file: !1342, line: 87, type: !2221, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2233 = !DILocalVariable(name: "this", arg: 1, scope: !2231, type: !2226, flags: DIFlagArtificial | DIFlagObjectPointer)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 87, column: 39, scope: !2231)
!2236 = !DILocation(line: 87, column: 45, scope: !2231)
!2237 = !DILocation(line: 87, column: 32, scope: !2231)
!2238 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK9FlexImageIhLi1EEclEii", scope: !1341, file: !1342, line: 115, type: !2239, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2242, retainedNodes: !1325)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2241, !2223, !11, !11}
!2241 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!2242 = !DISubprogram(name: "operator()", linkageName: "_ZNK9FlexImageIhLi1EEclEii", scope: !1341, file: !1342, line: 115, type: !2239, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2243 = !DILocalVariable(name: "this", arg: 1, scope: !2238, type: !2226, flags: DIFlagArtificial | DIFlagObjectPointer)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocalVariable(name: "x", arg: 2, scope: !2238, file: !1342, line: 115, type: !11)
!2246 = !DILocation(line: 115, column: 28, scope: !2238)
!2247 = !DILocalVariable(name: "y", arg: 3, scope: !2238, file: !1342, line: 115, type: !11)
!2248 = !DILocation(line: 115, column: 35, scope: !2238)
!2249 = !DILocation(line: 115, column: 65, scope: !2238)
!2250 = !DILocation(line: 115, column: 68, scope: !2238)
!2251 = !DILocation(line: 115, column: 54, scope: !2238)
!2252 = !DILocation(line: 115, column: 46, scope: !2238)
!2253 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK9FlexImageIhLi1EEclEiii", scope: !1341, file: !1342, line: 112, type: !2254, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2256, retainedNodes: !1325)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2241, !2223, !11, !11, !11}
!2256 = !DISubprogram(name: "operator()", linkageName: "_ZNK9FlexImageIhLi1EEclEiii", scope: !1341, file: !1342, line: 112, type: !2254, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2257 = !DILocalVariable(name: "this", arg: 1, scope: !2253, type: !2226, flags: DIFlagArtificial | DIFlagObjectPointer)
!2258 = !DILocation(line: 0, scope: !2253)
!2259 = !DILocalVariable(name: "x", arg: 2, scope: !2253, file: !1342, line: 112, type: !11)
!2260 = !DILocation(line: 112, column: 28, scope: !2253)
!2261 = !DILocalVariable(name: "y", arg: 3, scope: !2253, file: !1342, line: 112, type: !11)
!2262 = !DILocation(line: 112, column: 35, scope: !2253)
!2263 = !DILocalVariable(name: "c", arg: 4, scope: !2253, file: !1342, line: 112, type: !11)
!2264 = !DILocation(line: 112, column: 42, scope: !2253)
!2265 = !DILocation(line: 112, column: 75, scope: !2253)
!2266 = !DILocation(line: 112, column: 83, scope: !2253)
!2267 = !DILocation(line: 112, column: 96, scope: !2253)
!2268 = !DILocation(line: 112, column: 94, scope: !2253)
!2269 = !DILocation(line: 112, column: 81, scope: !2253)
!2270 = !DILocation(line: 112, column: 100, scope: !2253)
!2271 = !DILocation(line: 112, column: 107, scope: !2253)
!2272 = !DILocation(line: 112, column: 105, scope: !2253)
!2273 = !DILocation(line: 112, column: 98, scope: !2253)
!2274 = !DILocation(line: 112, column: 111, scope: !2253)
!2275 = !DILocation(line: 112, column: 112, scope: !2253)
!2276 = !DILocation(line: 112, column: 109, scope: !2253)
!2277 = !DILocation(line: 112, column: 52, scope: !2253)
!2278 = distinct !DISubprogram(name: "Width", linkageName: "_ZNK11BinaryImage5WidthEv", scope: !1634, file: !1635, line: 46, type: !2279, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2282, retainedNodes: !1325)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!11, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2282 = !DISubprogram(name: "Width", linkageName: "_ZNK11BinaryImage5WidthEv", scope: !1634, file: !1635, line: 46, type: !2279, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2283 = !DILocalVariable(name: "this", arg: 1, scope: !2278, type: !2284, flags: DIFlagArtificial | DIFlagObjectPointer)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!2285 = !DILocation(line: 0, scope: !2278)
!2286 = !DILocation(line: 46, column: 28, scope: !2278)
!2287 = !DILocation(line: 46, column: 21, scope: !2278)
!2288 = distinct !DISubprogram(name: "Height", linkageName: "_ZNK11BinaryImage6HeightEv", scope: !1634, file: !1635, line: 47, type: !2279, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2289, retainedNodes: !1325)
!2289 = !DISubprogram(name: "Height", linkageName: "_ZNK11BinaryImage6HeightEv", scope: !1634, file: !1635, line: 47, type: !2279, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2290 = !DILocalVariable(name: "this", arg: 1, scope: !2288, type: !2284, flags: DIFlagArtificial | DIFlagObjectPointer)
!2291 = !DILocation(line: 0, scope: !2288)
!2292 = !DILocation(line: 47, column: 29, scope: !2288)
!2293 = !DILocation(line: 47, column: 22, scope: !2288)
!2294 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK11BinaryImageclEii", scope: !1634, file: !1635, line: 61, type: !2295, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2297, retainedNodes: !1325)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!11, !2281, !11, !11}
!2297 = !DISubprogram(name: "operator()", linkageName: "_ZNK11BinaryImageclEii", scope: !1634, file: !1635, line: 61, type: !2295, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2298 = !DILocalVariable(name: "this", arg: 1, scope: !2294, type: !2284, flags: DIFlagArtificial | DIFlagObjectPointer)
!2299 = !DILocation(line: 0, scope: !2294)
!2300 = !DILocalVariable(name: "x", arg: 2, scope: !2294, file: !1635, line: 61, type: !11)
!2301 = !DILocation(line: 61, column: 21, scope: !2294)
!2302 = !DILocalVariable(name: "y", arg: 3, scope: !2294, file: !1635, line: 61, type: !11)
!2303 = !DILocation(line: 61, column: 28, scope: !2294)
!2304 = !DILocalVariable(name: "p", scope: !2294, file: !1635, line: 62, type: !11)
!2305 = !DILocation(line: 62, column: 8, scope: !2294)
!2306 = !DILocation(line: 62, column: 12, scope: !2294)
!2307 = !DILocation(line: 62, column: 21, scope: !2294)
!2308 = !DILocation(line: 62, column: 19, scope: !2294)
!2309 = !DILocation(line: 62, column: 25, scope: !2294)
!2310 = !DILocation(line: 62, column: 23, scope: !2294)
!2311 = !DILocalVariable(name: "i", scope: !2294, file: !1635, line: 63, type: !11)
!2312 = !DILocation(line: 63, column: 7, scope: !2294)
!2313 = !DILocation(line: 63, column: 11, scope: !2294)
!2314 = !DILocation(line: 63, column: 13, scope: !2294)
!2315 = !DILocation(line: 64, column: 11, scope: !2294)
!2316 = !DILocation(line: 64, column: 17, scope: !2294)
!2317 = !DILocation(line: 64, column: 24, scope: !2294)
!2318 = !DILocation(line: 64, column: 26, scope: !2294)
!2319 = !DILocation(line: 64, column: 20, scope: !2294)
!2320 = !DILocation(line: 64, column: 32, scope: !2294)
!2321 = !DILocation(line: 64, column: 3, scope: !2294)
!2322 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm", scope: !2323, file: !18, line: 1043, type: !2324, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2377, retainedNodes: !1325)
!2323 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<ProjectedBody, std::allocator<ProjectedBody> >", scope: !2, file: !18, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI13ProjectedBodySaIS0_EE")
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2326, !2376, !17}
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2323, file: !18, line: 417, baseType: !2327, flags: DIFlagPublic)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2328, file: !2010, line: 62, baseType: !2373)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ProjectedBody>, ProjectedBody>", scope: !302, file: !2010, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2329, templateParams: !2371, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_EE")
!2329 = !{!2330, !2357, !2362, !2366, !2367, !2368, !2369, !2370}
!2330 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2328, baseType: !2331, extraData: i32 0)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ProjectedBody> >", scope: !2, file: !2015, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2332, templateParams: !2355, identifier: "_ZTSSt16allocator_traitsISaI13ProjectedBodyEE")
!2332 = !{!2333, !2340, !2343, !2346, !2352}
!2333 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m", scope: !2331, file: !2015, line: 463, type: !2334, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2336, !2337, !2026}
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2331, file: !2015, line: 420, baseType: !1988)
!2337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2331, file: !2015, line: 414, baseType: !2339)
!2339 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ProjectedBody>", scope: !2, file: !2025, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI13ProjectedBodyE")
!2340 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_mPKv", scope: !2331, file: !2015, line: 477, type: !2341, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!2336, !2337, !2026, !2030}
!2343 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m", scope: !2331, file: !2015, line: 495, type: !2344, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2337, !2336, !2026}
!2346 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_", scope: !2331, file: !2015, line: 547, type: !2347, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2331, file: !2015, line: 435, baseType: !19)
!2350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2338)
!2352 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE37select_on_container_copy_constructionERKS1_", scope: !2331, file: !2015, line: 562, type: !2353, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2338, !2350}
!2355 = !{!2356}
!2356 = !DITemplateTypeParameter(name: "_Alloc", type: !2339)
!2357 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E17_S_select_on_copyERKS2_", scope: !2328, file: !2010, line: 97, type: !2358, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2339, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2339)
!2362 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E10_S_on_swapERS2_S4_", scope: !2328, file: !2010, line: 100, type: !2363, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2365, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2339, size: 64)
!2366 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E27_S_propagate_on_copy_assignEv", scope: !2328, file: !2010, line: 103, type: !2055, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2367 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E27_S_propagate_on_move_assignEv", scope: !2328, file: !2010, line: 106, type: !2055, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2368 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E20_S_propagate_on_swapEv", scope: !2328, file: !2010, line: 109, type: !2055, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2369 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E15_S_always_equalEv", scope: !2328, file: !2010, line: 112, type: !2055, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2370 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E15_S_nothrow_moveEv", scope: !2328, file: !2010, line: 115, type: !2055, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2371 = !{!2356, !2372}
!2372 = !DITemplateTypeParameter(type: !1971)
!2373 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2328, file: !2010, line: 56, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2331, file: !2015, line: 417, baseType: !1971)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2377 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm", scope: !2323, file: !18, line: 1043, type: !2324, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2378 = !DILocalVariable(name: "this", arg: 1, scope: !2322, type: !2379, flags: DIFlagArtificial | DIFlagObjectPointer)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2380 = !DILocation(line: 0, scope: !2322)
!2381 = !DILocalVariable(name: "__n", arg: 2, scope: !2322, file: !18, line: 1043, type: !17)
!2382 = !DILocation(line: 1043, column: 28, scope: !2322)
!2383 = !DILocation(line: 1046, column: 17, scope: !2322)
!2384 = !DILocation(line: 1046, column: 25, scope: !2322)
!2385 = !DILocation(line: 1046, column: 36, scope: !2322)
!2386 = !DILocation(line: 1046, column: 34, scope: !2322)
!2387 = !DILocation(line: 1046, column: 2, scope: !2322)
!2388 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv", scope: !2389, file: !18, line: 918, type: !2390, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2394, retainedNodes: !1325)
!2389 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<ProjectedCylinder, std::allocator<ProjectedCylinder> >", scope: !2, file: !18, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI17ProjectedCylinderSaIS0_EE")
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!17, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2389)
!2394 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv", scope: !2389, file: !18, line: 918, type: !2390, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2395 = !DILocalVariable(name: "this", arg: 1, scope: !2388, type: !2396, flags: DIFlagArtificial | DIFlagObjectPointer)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2397 = !DILocation(line: 0, scope: !2388)
!2398 = !DILocation(line: 919, column: 32, scope: !2388)
!2399 = !DILocation(line: 919, column: 40, scope: !2388)
!2400 = !DILocation(line: 919, column: 58, scope: !2388)
!2401 = !DILocation(line: 919, column: 66, scope: !2388)
!2402 = !DILocation(line: 919, column: 50, scope: !2388)
!2403 = !DILocation(line: 919, column: 9, scope: !2388)
!2404 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm", scope: !2389, file: !18, line: 1043, type: !2405, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, declaration: !2459, retainedNodes: !1325)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!2407, !2458, !17}
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2389, file: !18, line: 417, baseType: !2408, flags: DIFlagPublic)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2409, file: !2010, line: 62, baseType: !2455)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ProjectedCylinder>, ProjectedCylinder>", scope: !302, file: !2010, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2410, templateParams: !2453, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_EE")
!2410 = !{!2411, !2439, !2444, !2448, !2449, !2450, !2451, !2452}
!2411 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2409, baseType: !2412, extraData: i32 0)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ProjectedCylinder> >", scope: !2, file: !2015, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2413, templateParams: !2437, identifier: "_ZTSSt16allocator_traitsISaI17ProjectedCylinderEE")
!2413 = !{!2414, !2422, !2425, !2428, !2434}
!2414 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m", scope: !2412, file: !2015, line: 463, type: !2415, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2417, !2419, !2026}
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2412, file: !2015, line: 420, baseType: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2412, file: !2015, line: 414, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ProjectedCylinder>", scope: !2, file: !2025, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI17ProjectedCylinderE")
!2422 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_mPKv", scope: !2412, file: !2015, line: 477, type: !2423, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2417, !2419, !2026, !2030}
!2425 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m", scope: !2412, file: !2015, line: 495, type: !2426, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2419, !2417, !2026}
!2428 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_", scope: !2412, file: !2015, line: 547, type: !2429, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2412, file: !2015, line: 435, baseType: !19)
!2432 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2434 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_", scope: !2412, file: !2015, line: 562, type: !2435, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!2420, !2432}
!2437 = !{!2438}
!2438 = !DITemplateTypeParameter(name: "_Alloc", type: !2421)
!2439 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_", scope: !2409, file: !2010, line: 97, type: !2440, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2421, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2444 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E10_S_on_swapERS2_S4_", scope: !2409, file: !2010, line: 100, type: !2445, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !2447, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2421, size: 64)
!2448 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E27_S_propagate_on_copy_assignEv", scope: !2409, file: !2010, line: 103, type: !2055, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2449 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E27_S_propagate_on_move_assignEv", scope: !2409, file: !2010, line: 106, type: !2055, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2450 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E20_S_propagate_on_swapEv", scope: !2409, file: !2010, line: 109, type: !2055, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2451 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E15_S_always_equalEv", scope: !2409, file: !2010, line: 112, type: !2055, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2452 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E15_S_nothrow_moveEv", scope: !2409, file: !2010, line: 115, type: !2055, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2453 = !{!2438, !2454}
!2454 = !DITemplateTypeParameter(type: !1337)
!2455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2409, file: !2010, line: 56, baseType: !2457)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2412, file: !2015, line: 417, baseType: !1337)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2459 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm", scope: !2389, file: !18, line: 1043, type: !2405, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2460 = !DILocalVariable(name: "this", arg: 1, scope: !2404, type: !2461, flags: DIFlagArtificial | DIFlagObjectPointer)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2462 = !DILocation(line: 0, scope: !2404)
!2463 = !DILocalVariable(name: "__n", arg: 2, scope: !2404, file: !18, line: 1043, type: !17)
!2464 = !DILocation(line: 1043, column: 28, scope: !2404)
!2465 = !DILocation(line: 1046, column: 17, scope: !2404)
!2466 = !DILocation(line: 1046, column: 25, scope: !2404)
!2467 = !DILocation(line: 1046, column: 36, scope: !2404)
!2468 = !DILocation(line: 1046, column: 34, scope: !2404)
!2469 = !DILocation(line: 1046, column: 2, scope: !2404)
!2470 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_ImageMeasurements.cpp", scope: !164, file: !164, type: !2471, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !1325)
!2471 = !DISubroutineType(types: !1325)
!2472 = !DILocation(line: 0, scope: !2470)
