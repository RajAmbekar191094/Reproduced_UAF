; ModuleID = '../TrackingBenchmark/CameraModel.cpp'
source_filename = "../TrackingBenchmark/CameraModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%class.DMatrix = type { [3 x [4 x float]] }
%class.Camera = type { %class.Point, %class.Point, float, [5 x float], [3 x [3 x float]], %class.Vector3, %class.Vector3, %class.DMatrix, %class.Vector3 }
%class.Point = type { float, float }
%class.Vector3 = type { float, float, float }

$_ZN7DMatrixIfEclEii = comdat any

$_Z7InverseIfE7DMatrixIT_ERKS2_ = comdat any

$_ZN7DMatrixIfED2Ev = comdat any

$_ZN7DMatrixIfEC2Ev = comdat any

$_ZN7DMatrixIfE5ClearEv = comdat any

$_ZN7Vector3IfEC2Efff = comdat any

$_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_ = comdat any

$_ZN7Vector3IfED2Ev = comdat any

$_ZN7Vector3IfEC2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [42 x i8] c"Unable to open camera calibration file : \00", align 1, !dbg !7
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_CameraModel.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1401 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1403
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1405
  ret void, !dbg !1403
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN6Camera10LoadParamsEPKc(ptr noundef nonnull align 4 dereferenceable(160) %0, ptr noundef %1) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !1406 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::basic_ifstream", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %class.DMatrix, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !1415
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !1417
  %11 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1418, metadata !DIExpression()), !dbg !1422
  %12 = load ptr, ptr %5, align 8, !dbg !1423
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %6, ptr noundef %12, i32 noundef 8), !dbg !1422
  %13 = invoke noundef zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(ptr noundef nonnull align 8 dereferenceable(256) %6)
          to label %14 unwind label %23, !dbg !1424

14:                                               ; preds = %2
  br i1 %13, label %27, label %15, !dbg !1426

15:                                               ; preds = %14
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
          to label %17 unwind label %23, !dbg !1427

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 8, !dbg !1429
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18)
          to label %20 unwind label %23, !dbg !1430

20:                                               ; preds = %17
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %22 unwind label %23, !dbg !1431

22:                                               ; preds = %20
  store i1 false, ptr %3, align 1, !dbg !1432
  store i32 1, ptr %9, align 4
  br label %238, !dbg !1432

23:                                               ; preds = %216, %210, %203, %196, %189, %183, %176, %169, %162, %156, %149, %142, %135, %131, %127, %123, %119, %115, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %62, %58, %54, %50, %46, %43, %39, %35, %31, %27, %20, %17, %15, %2
  %24 = landingpad { ptr, i32 }
          cleanup, !dbg !1433
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !1433
  store ptr %25, ptr %7, align 8, !dbg !1433
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !1433
  store i32 %26, ptr %8, align 4, !dbg !1433
  br label %240, !dbg !1433

27:                                               ; preds = %14
  %28 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 0, !dbg !1434
  %29 = getelementptr inbounds %class.Point, ptr %28, i32 0, i32 0, !dbg !1435
  %30 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %29)
          to label %31 unwind label %23, !dbg !1436

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 0, !dbg !1437
  %33 = getelementptr inbounds %class.Point, ptr %32, i32 0, i32 1, !dbg !1438
  %34 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(4) %33)
          to label %35 unwind label %23, !dbg !1439

35:                                               ; preds = %31
  %36 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 1, !dbg !1440
  %37 = getelementptr inbounds %class.Point, ptr %36, i32 0, i32 0, !dbg !1441
  %38 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 4 dereferenceable(4) %37)
          to label %39 unwind label %23, !dbg !1442

39:                                               ; preds = %35
  %40 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 1, !dbg !1443
  %41 = getelementptr inbounds %class.Point, ptr %40, i32 0, i32 1, !dbg !1444
  %42 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(4) %41)
          to label %43 unwind label %23, !dbg !1445

43:                                               ; preds = %39
  %44 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 2, !dbg !1446
  %45 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(4) %44)
          to label %46 unwind label %23, !dbg !1447

46:                                               ; preds = %43
  %47 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 3, !dbg !1448
  %48 = getelementptr inbounds [5 x float], ptr %47, i64 0, i64 0, !dbg !1448
  %49 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %48)
          to label %50 unwind label %23, !dbg !1449

50:                                               ; preds = %46
  %51 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 3, !dbg !1450
  %52 = getelementptr inbounds [5 x float], ptr %51, i64 0, i64 1, !dbg !1450
  %53 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 4 dereferenceable(4) %52)
          to label %54 unwind label %23, !dbg !1451

54:                                               ; preds = %50
  %55 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 3, !dbg !1452
  %56 = getelementptr inbounds [5 x float], ptr %55, i64 0, i64 2, !dbg !1452
  %57 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(4) %56)
          to label %58 unwind label %23, !dbg !1453

58:                                               ; preds = %54
  %59 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 3, !dbg !1454
  %60 = getelementptr inbounds [5 x float], ptr %59, i64 0, i64 3, !dbg !1454
  %61 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 4 dereferenceable(4) %60)
          to label %62 unwind label %23, !dbg !1455

62:                                               ; preds = %58
  %63 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 3, !dbg !1456
  %64 = getelementptr inbounds [5 x float], ptr %63, i64 0, i64 4, !dbg !1456
  %65 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 4 dereferenceable(4) %64)
          to label %66 unwind label %23, !dbg !1457

66:                                               ; preds = %62
  %67 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1458
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %67, i64 0, i64 0, !dbg !1458
  %69 = getelementptr inbounds [3 x float], ptr %68, i64 0, i64 0, !dbg !1458
  %70 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %69)
          to label %71 unwind label %23, !dbg !1459

71:                                               ; preds = %66
  %72 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1460
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 0, !dbg !1460
  %74 = getelementptr inbounds [3 x float], ptr %73, i64 0, i64 1, !dbg !1460
  %75 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull align 4 dereferenceable(4) %74)
          to label %76 unwind label %23, !dbg !1461

76:                                               ; preds = %71
  %77 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1462
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %77, i64 0, i64 0, !dbg !1462
  %79 = getelementptr inbounds [3 x float], ptr %78, i64 0, i64 2, !dbg !1462
  %80 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 4 dereferenceable(4) %79)
          to label %81 unwind label %23, !dbg !1463

81:                                               ; preds = %76
  %82 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1464
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %82, i64 0, i64 1, !dbg !1464
  %84 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 0, !dbg !1464
  %85 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 4 dereferenceable(4) %84)
          to label %86 unwind label %23, !dbg !1465

86:                                               ; preds = %81
  %87 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1466
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %87, i64 0, i64 1, !dbg !1466
  %89 = getelementptr inbounds [3 x float], ptr %88, i64 0, i64 1, !dbg !1466
  %90 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull align 4 dereferenceable(4) %89)
          to label %91 unwind label %23, !dbg !1467

91:                                               ; preds = %86
  %92 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1468
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %92, i64 0, i64 1, !dbg !1468
  %94 = getelementptr inbounds [3 x float], ptr %93, i64 0, i64 2, !dbg !1468
  %95 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull align 4 dereferenceable(4) %94)
          to label %96 unwind label %23, !dbg !1469

96:                                               ; preds = %91
  %97 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1470
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %97, i64 0, i64 2, !dbg !1470
  %99 = getelementptr inbounds [3 x float], ptr %98, i64 0, i64 0, !dbg !1470
  %100 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 4 dereferenceable(4) %99)
          to label %101 unwind label %23, !dbg !1471

101:                                              ; preds = %96
  %102 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1472
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %102, i64 0, i64 2, !dbg !1472
  %104 = getelementptr inbounds [3 x float], ptr %103, i64 0, i64 1, !dbg !1472
  %105 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %100, ptr noundef nonnull align 4 dereferenceable(4) %104)
          to label %106 unwind label %23, !dbg !1473

106:                                              ; preds = %101
  %107 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1474
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %107, i64 0, i64 2, !dbg !1474
  %109 = getelementptr inbounds [3 x float], ptr %108, i64 0, i64 2, !dbg !1474
  %110 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %105, ptr noundef nonnull align 4 dereferenceable(4) %109)
          to label %111 unwind label %23, !dbg !1475

111:                                              ; preds = %106
  %112 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1476
  %113 = getelementptr inbounds %class.Vector3, ptr %112, i32 0, i32 0, !dbg !1477
  %114 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %113)
          to label %115 unwind label %23, !dbg !1478

115:                                              ; preds = %111
  %116 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1479
  %117 = getelementptr inbounds %class.Vector3, ptr %116, i32 0, i32 1, !dbg !1480
  %118 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %114, ptr noundef nonnull align 4 dereferenceable(4) %117)
          to label %119 unwind label %23, !dbg !1481

119:                                              ; preds = %115
  %120 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1482
  %121 = getelementptr inbounds %class.Vector3, ptr %120, i32 0, i32 2, !dbg !1483
  %122 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %118, ptr noundef nonnull align 4 dereferenceable(4) %121)
          to label %123 unwind label %23, !dbg !1484

123:                                              ; preds = %119
  %124 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 5, !dbg !1485
  %125 = getelementptr inbounds %class.Vector3, ptr %124, i32 0, i32 0, !dbg !1486
  %126 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %125)
          to label %127 unwind label %23, !dbg !1487

127:                                              ; preds = %123
  %128 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 5, !dbg !1488
  %129 = getelementptr inbounds %class.Vector3, ptr %128, i32 0, i32 1, !dbg !1489
  %130 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr noundef nonnull align 4 dereferenceable(4) %129)
          to label %131 unwind label %23, !dbg !1490

131:                                              ; preds = %127
  %132 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 5, !dbg !1491
  %133 = getelementptr inbounds %class.Vector3, ptr %132, i32 0, i32 2, !dbg !1492
  %134 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %130, ptr noundef nonnull align 4 dereferenceable(4) %133)
          to label %135 unwind label %23, !dbg !1493

135:                                              ; preds = %131
  %136 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1494
  %137 = getelementptr inbounds [3 x [3 x float]], ptr %136, i64 0, i64 0, !dbg !1494
  %138 = getelementptr inbounds [3 x float], ptr %137, i64 0, i64 0, !dbg !1494
  %139 = load float, ptr %138, align 4, !dbg !1494
  %140 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1495
  %141 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %140, i32 noundef 0, i32 noundef 0)
          to label %142 unwind label %23, !dbg !1495

142:                                              ; preds = %135
  store float %139, ptr %141, align 4, !dbg !1496
  %143 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1497
  %144 = getelementptr inbounds [3 x [3 x float]], ptr %143, i64 0, i64 0, !dbg !1497
  %145 = getelementptr inbounds [3 x float], ptr %144, i64 0, i64 1, !dbg !1497
  %146 = load float, ptr %145, align 4, !dbg !1497
  %147 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1498
  %148 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %147, i32 noundef 0, i32 noundef 1)
          to label %149 unwind label %23, !dbg !1498

149:                                              ; preds = %142
  store float %146, ptr %148, align 4, !dbg !1499
  %150 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1500
  %151 = getelementptr inbounds [3 x [3 x float]], ptr %150, i64 0, i64 0, !dbg !1500
  %152 = getelementptr inbounds [3 x float], ptr %151, i64 0, i64 2, !dbg !1500
  %153 = load float, ptr %152, align 4, !dbg !1500
  %154 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1501
  %155 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %154, i32 noundef 0, i32 noundef 2)
          to label %156 unwind label %23, !dbg !1501

156:                                              ; preds = %149
  store float %153, ptr %155, align 4, !dbg !1502
  %157 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1503
  %158 = getelementptr inbounds %class.Vector3, ptr %157, i32 0, i32 0, !dbg !1504
  %159 = load float, ptr %158, align 4, !dbg !1504
  %160 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1505
  %161 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %160, i32 noundef 0, i32 noundef 3)
          to label %162 unwind label %23, !dbg !1505

162:                                              ; preds = %156
  store float %159, ptr %161, align 4, !dbg !1506
  %163 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1507
  %164 = getelementptr inbounds [3 x [3 x float]], ptr %163, i64 0, i64 1, !dbg !1507
  %165 = getelementptr inbounds [3 x float], ptr %164, i64 0, i64 0, !dbg !1507
  %166 = load float, ptr %165, align 4, !dbg !1507
  %167 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1508
  %168 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %167, i32 noundef 1, i32 noundef 0)
          to label %169 unwind label %23, !dbg !1508

169:                                              ; preds = %162
  store float %166, ptr %168, align 4, !dbg !1509
  %170 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1510
  %171 = getelementptr inbounds [3 x [3 x float]], ptr %170, i64 0, i64 1, !dbg !1510
  %172 = getelementptr inbounds [3 x float], ptr %171, i64 0, i64 1, !dbg !1510
  %173 = load float, ptr %172, align 4, !dbg !1510
  %174 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1511
  %175 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %174, i32 noundef 1, i32 noundef 1)
          to label %176 unwind label %23, !dbg !1511

176:                                              ; preds = %169
  store float %173, ptr %175, align 4, !dbg !1512
  %177 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1513
  %178 = getelementptr inbounds [3 x [3 x float]], ptr %177, i64 0, i64 1, !dbg !1513
  %179 = getelementptr inbounds [3 x float], ptr %178, i64 0, i64 2, !dbg !1513
  %180 = load float, ptr %179, align 4, !dbg !1513
  %181 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1514
  %182 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %181, i32 noundef 1, i32 noundef 2)
          to label %183 unwind label %23, !dbg !1514

183:                                              ; preds = %176
  store float %180, ptr %182, align 4, !dbg !1515
  %184 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1516
  %185 = getelementptr inbounds %class.Vector3, ptr %184, i32 0, i32 1, !dbg !1517
  %186 = load float, ptr %185, align 4, !dbg !1517
  %187 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1518
  %188 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %187, i32 noundef 1, i32 noundef 3)
          to label %189 unwind label %23, !dbg !1518

189:                                              ; preds = %183
  store float %186, ptr %188, align 4, !dbg !1519
  %190 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1520
  %191 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 2, !dbg !1520
  %192 = getelementptr inbounds [3 x float], ptr %191, i64 0, i64 0, !dbg !1520
  %193 = load float, ptr %192, align 4, !dbg !1520
  %194 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1521
  %195 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %194, i32 noundef 2, i32 noundef 0)
          to label %196 unwind label %23, !dbg !1521

196:                                              ; preds = %189
  store float %193, ptr %195, align 4, !dbg !1522
  %197 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1523
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %197, i64 0, i64 2, !dbg !1523
  %199 = getelementptr inbounds [3 x float], ptr %198, i64 0, i64 1, !dbg !1523
  %200 = load float, ptr %199, align 4, !dbg !1523
  %201 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1524
  %202 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %201, i32 noundef 2, i32 noundef 1)
          to label %203 unwind label %23, !dbg !1524

203:                                              ; preds = %196
  store float %200, ptr %202, align 4, !dbg !1525
  %204 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 4, !dbg !1526
  %205 = getelementptr inbounds [3 x [3 x float]], ptr %204, i64 0, i64 2, !dbg !1526
  %206 = getelementptr inbounds [3 x float], ptr %205, i64 0, i64 2, !dbg !1526
  %207 = load float, ptr %206, align 4, !dbg !1526
  %208 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1527
  %209 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %208, i32 noundef 2, i32 noundef 2)
          to label %210 unwind label %23, !dbg !1527

210:                                              ; preds = %203
  store float %207, ptr %209, align 4, !dbg !1528
  %211 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 6, !dbg !1529
  %212 = getelementptr inbounds %class.Vector3, ptr %211, i32 0, i32 2, !dbg !1530
  %213 = load float, ptr %212, align 4, !dbg !1530
  %214 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1531
  %215 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %214, i32 noundef 2, i32 noundef 3)
          to label %216 unwind label %23, !dbg !1531

216:                                              ; preds = %210
  store float %213, ptr %215, align 4, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1533, metadata !DIExpression()), !dbg !1534
  %217 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 7, !dbg !1535
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %10, ptr noundef nonnull align 4 dereferenceable(48) %217)
          to label %218 unwind label %23, !dbg !1536

218:                                              ; preds = %216
  %219 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 0, i32 noundef 3)
          to label %220 unwind label %234, !dbg !1537

220:                                              ; preds = %218
  %221 = load float, ptr %219, align 4, !dbg !1537
  %222 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 8, !dbg !1538
  %223 = getelementptr inbounds %class.Vector3, ptr %222, i32 0, i32 0, !dbg !1539
  store float %221, ptr %223, align 4, !dbg !1540
  %224 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 1, i32 noundef 3)
          to label %225 unwind label %234, !dbg !1541

225:                                              ; preds = %220
  %226 = load float, ptr %224, align 4, !dbg !1541
  %227 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 8, !dbg !1542
  %228 = getelementptr inbounds %class.Vector3, ptr %227, i32 0, i32 1, !dbg !1543
  store float %226, ptr %228, align 4, !dbg !1544
  %229 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 2, i32 noundef 3)
          to label %230 unwind label %234, !dbg !1545

230:                                              ; preds = %225
  %231 = load float, ptr %229, align 4, !dbg !1545
  %232 = getelementptr inbounds %class.Camera, ptr %11, i32 0, i32 8, !dbg !1546
  %233 = getelementptr inbounds %class.Vector3, ptr %232, i32 0, i32 2, !dbg !1547
  store float %231, ptr %233, align 4, !dbg !1548
  store i1 true, ptr %3, align 1, !dbg !1549
  store i32 1, ptr %9, align 4
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %10) #3, !dbg !1550
  br label %238

234:                                              ; preds = %225, %220, %218
  %235 = landingpad { ptr, i32 }
          cleanup, !dbg !1550
  %236 = extractvalue { ptr, i32 } %235, 0, !dbg !1550
  store ptr %236, ptr %7, align 8, !dbg !1550
  %237 = extractvalue { ptr, i32 } %235, 1, !dbg !1550
  store i32 %237, ptr %8, align 4, !dbg !1550
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %10) #3, !dbg !1550
  br label %240, !dbg !1550

238:                                              ; preds = %230, %22
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %6) #3, !dbg !1550
  %239 = load i1, ptr %3, align 1, !dbg !1550
  ret i1 %239, !dbg !1550

240:                                              ; preds = %234, %23
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %6) #3, !dbg !1550
  br label %241, !dbg !1550

241:                                              ; preds = %240
  %242 = load ptr, ptr %7, align 8, !dbg !1550
  %243 = load i32, ptr %8, align 4, !dbg !1550
  %244 = insertvalue { ptr, i32 } poison, ptr %242, 0, !dbg !1550
  %245 = insertvalue { ptr, i32 } %244, i32 %243, 1, !dbg !1550
  resume { ptr, i32 } %245, !dbg !1550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(ptr noundef nonnull align 8 dereferenceable(256)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) #6 comdat align 2 !dbg !1551 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1556, metadata !DIExpression()), !dbg !1557
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %class.DMatrix, ptr %7, i32 0, i32 0, !dbg !1558
  %9 = load i32, ptr %5, align 4, !dbg !1559
  %10 = sext i32 %9 to i64, !dbg !1558
  %11 = getelementptr inbounds [3 x [4 x float]], ptr %8, i64 0, i64 %10, !dbg !1558
  %12 = load i32, ptr %6, align 4, !dbg !1560
  %13 = sext i32 %12 to i64, !dbg !1558
  %14 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 %13, !dbg !1558
  ret ptr %14, !dbg !1561
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr noalias sret(%class.DMatrix) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1) #4 comdat personality ptr @__gxx_personality_v0 !dbg !1562 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %class.Vector3, align 4
  %14 = alloca %class.Vector3, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i1 false, ptr %5, align 1, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1570, metadata !DIExpression(DW_OP_deref)), !dbg !1571
  call void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0), !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1572, metadata !DIExpression()), !dbg !1574
  %15 = load ptr, ptr %4, align 8, !dbg !1575
  store ptr %15, ptr %6, align 8, !dbg !1574
  invoke void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0)
          to label %16 unwind label %224, !dbg !1576

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1577, metadata !DIExpression()), !dbg !1578
  %17 = load ptr, ptr %6, align 8, !dbg !1579
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %17, i32 noundef 1, i32 noundef 1), !dbg !1579
  %19 = load float, ptr %18, align 4, !dbg !1579
  %20 = load ptr, ptr %6, align 8, !dbg !1580
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %20, i32 noundef 2, i32 noundef 2), !dbg !1580
  %22 = load float, ptr %21, align 4, !dbg !1580
  %23 = load ptr, ptr %6, align 8, !dbg !1581
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %23, i32 noundef 1, i32 noundef 2), !dbg !1581
  %25 = load float, ptr %24, align 4, !dbg !1581
  %26 = load ptr, ptr %6, align 8, !dbg !1582
  %27 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %26, i32 noundef 2, i32 noundef 1), !dbg !1582
  %28 = load float, ptr %27, align 4, !dbg !1582
  %29 = fmul float %25, %28, !dbg !1583
  %30 = fneg float %29, !dbg !1584
  %31 = call float @llvm.fmuladd.f32(float %19, float %22, float %30), !dbg !1584
  store float %31, ptr %9, align 4, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1585, metadata !DIExpression()), !dbg !1586
  %32 = load ptr, ptr %6, align 8, !dbg !1587
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %32, i32 noundef 1, i32 noundef 0), !dbg !1587
  %34 = load float, ptr %33, align 4, !dbg !1587
  %35 = load ptr, ptr %6, align 8, !dbg !1588
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %35, i32 noundef 2, i32 noundef 2), !dbg !1588
  %37 = load float, ptr %36, align 4, !dbg !1588
  %38 = load ptr, ptr %6, align 8, !dbg !1589
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %38, i32 noundef 1, i32 noundef 2), !dbg !1589
  %40 = load float, ptr %39, align 4, !dbg !1589
  %41 = load ptr, ptr %6, align 8, !dbg !1590
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %41, i32 noundef 2, i32 noundef 0), !dbg !1590
  %43 = load float, ptr %42, align 4, !dbg !1590
  %44 = fmul float %40, %43, !dbg !1591
  %45 = fneg float %44, !dbg !1592
  %46 = call float @llvm.fmuladd.f32(float %34, float %37, float %45), !dbg !1592
  store float %46, ptr %10, align 4, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1593, metadata !DIExpression()), !dbg !1594
  %47 = load ptr, ptr %6, align 8, !dbg !1595
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %47, i32 noundef 1, i32 noundef 0), !dbg !1595
  %49 = load float, ptr %48, align 4, !dbg !1595
  %50 = load ptr, ptr %6, align 8, !dbg !1596
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %50, i32 noundef 2, i32 noundef 1), !dbg !1596
  %52 = load float, ptr %51, align 4, !dbg !1596
  %53 = load ptr, ptr %6, align 8, !dbg !1597
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %53, i32 noundef 1, i32 noundef 1), !dbg !1597
  %55 = load float, ptr %54, align 4, !dbg !1597
  %56 = load ptr, ptr %6, align 8, !dbg !1598
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %56, i32 noundef 2, i32 noundef 0), !dbg !1598
  %58 = load float, ptr %57, align 4, !dbg !1598
  %59 = fmul float %55, %58, !dbg !1599
  %60 = fneg float %59, !dbg !1600
  %61 = call float @llvm.fmuladd.f32(float %49, float %52, float %60), !dbg !1600
  store float %61, ptr %11, align 4, !dbg !1594
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1601, metadata !DIExpression()), !dbg !1602
  %62 = load ptr, ptr %6, align 8, !dbg !1603
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %62, i32 noundef 0, i32 noundef 0), !dbg !1603
  %64 = load float, ptr %63, align 4, !dbg !1603
  %65 = load float, ptr %9, align 4, !dbg !1604
  %66 = load ptr, ptr %6, align 8, !dbg !1605
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %66, i32 noundef 0, i32 noundef 1), !dbg !1605
  %68 = load float, ptr %67, align 4, !dbg !1605
  %69 = load float, ptr %10, align 4, !dbg !1606
  %70 = fmul float %68, %69, !dbg !1607
  %71 = fneg float %70, !dbg !1608
  %72 = call float @llvm.fmuladd.f32(float %64, float %65, float %71), !dbg !1608
  %73 = load ptr, ptr %6, align 8, !dbg !1609
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %73, i32 noundef 0, i32 noundef 2), !dbg !1609
  %75 = load float, ptr %74, align 4, !dbg !1609
  %76 = load float, ptr %11, align 4, !dbg !1610
  %77 = call float @llvm.fmuladd.f32(float %75, float %76, float %72), !dbg !1611
  %78 = fdiv float 1.000000e+00, %77, !dbg !1612
  store float %78, ptr %12, align 4, !dbg !1602
  %79 = load float, ptr %12, align 4, !dbg !1613
  %80 = load float, ptr %9, align 4, !dbg !1614
  %81 = fmul float %79, %80, !dbg !1615
  %82 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0), !dbg !1616
  store float %81, ptr %82, align 4, !dbg !1617
  %83 = load float, ptr %12, align 4, !dbg !1618
  %84 = load ptr, ptr %6, align 8, !dbg !1619
  %85 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %84, i32 noundef 0, i32 noundef 2), !dbg !1619
  %86 = load float, ptr %85, align 4, !dbg !1619
  %87 = load ptr, ptr %6, align 8, !dbg !1620
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %87, i32 noundef 2, i32 noundef 1), !dbg !1620
  %89 = load float, ptr %88, align 4, !dbg !1620
  %90 = load ptr, ptr %6, align 8, !dbg !1621
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %90, i32 noundef 0, i32 noundef 1), !dbg !1621
  %92 = load float, ptr %91, align 4, !dbg !1621
  %93 = load ptr, ptr %6, align 8, !dbg !1622
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %93, i32 noundef 2, i32 noundef 2), !dbg !1622
  %95 = load float, ptr %94, align 4, !dbg !1622
  %96 = fmul float %92, %95, !dbg !1623
  %97 = fneg float %96, !dbg !1624
  %98 = call float @llvm.fmuladd.f32(float %86, float %89, float %97), !dbg !1624
  %99 = fmul float %83, %98, !dbg !1625
  %100 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 1), !dbg !1626
  store float %99, ptr %100, align 4, !dbg !1627
  %101 = load float, ptr %12, align 4, !dbg !1628
  %102 = load ptr, ptr %6, align 8, !dbg !1629
  %103 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %102, i32 noundef 0, i32 noundef 1), !dbg !1629
  %104 = load float, ptr %103, align 4, !dbg !1629
  %105 = load ptr, ptr %6, align 8, !dbg !1630
  %106 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %105, i32 noundef 1, i32 noundef 2), !dbg !1630
  %107 = load float, ptr %106, align 4, !dbg !1630
  %108 = load ptr, ptr %6, align 8, !dbg !1631
  %109 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %108, i32 noundef 0, i32 noundef 2), !dbg !1631
  %110 = load float, ptr %109, align 4, !dbg !1631
  %111 = load ptr, ptr %6, align 8, !dbg !1632
  %112 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %111, i32 noundef 1, i32 noundef 1), !dbg !1632
  %113 = load float, ptr %112, align 4, !dbg !1632
  %114 = fmul float %110, %113, !dbg !1633
  %115 = fneg float %114, !dbg !1634
  %116 = call float @llvm.fmuladd.f32(float %104, float %107, float %115), !dbg !1634
  %117 = fmul float %101, %116, !dbg !1635
  %118 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 2), !dbg !1636
  store float %117, ptr %118, align 4, !dbg !1637
  %119 = load float, ptr %12, align 4, !dbg !1638
  %120 = load float, ptr %10, align 4, !dbg !1639
  %121 = fneg float %120, !dbg !1640
  %122 = fmul float %119, %121, !dbg !1641
  %123 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 0), !dbg !1642
  store float %122, ptr %123, align 4, !dbg !1643
  %124 = load float, ptr %12, align 4, !dbg !1644
  %125 = load ptr, ptr %6, align 8, !dbg !1645
  %126 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %125, i32 noundef 0, i32 noundef 0), !dbg !1645
  %127 = load float, ptr %126, align 4, !dbg !1645
  %128 = load ptr, ptr %6, align 8, !dbg !1646
  %129 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %128, i32 noundef 2, i32 noundef 2), !dbg !1646
  %130 = load float, ptr %129, align 4, !dbg !1646
  %131 = load ptr, ptr %6, align 8, !dbg !1647
  %132 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %131, i32 noundef 0, i32 noundef 2), !dbg !1647
  %133 = load float, ptr %132, align 4, !dbg !1647
  %134 = load ptr, ptr %6, align 8, !dbg !1648
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %134, i32 noundef 2, i32 noundef 0), !dbg !1648
  %136 = load float, ptr %135, align 4, !dbg !1648
  %137 = fmul float %133, %136, !dbg !1649
  %138 = fneg float %137, !dbg !1650
  %139 = call float @llvm.fmuladd.f32(float %127, float %130, float %138), !dbg !1650
  %140 = fmul float %124, %139, !dbg !1651
  %141 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 1), !dbg !1652
  store float %140, ptr %141, align 4, !dbg !1653
  %142 = load float, ptr %12, align 4, !dbg !1654
  %143 = load ptr, ptr %6, align 8, !dbg !1655
  %144 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %143, i32 noundef 0, i32 noundef 2), !dbg !1655
  %145 = load float, ptr %144, align 4, !dbg !1655
  %146 = load ptr, ptr %6, align 8, !dbg !1656
  %147 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %146, i32 noundef 1, i32 noundef 0), !dbg !1656
  %148 = load float, ptr %147, align 4, !dbg !1656
  %149 = load ptr, ptr %6, align 8, !dbg !1657
  %150 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %149, i32 noundef 0, i32 noundef 0), !dbg !1657
  %151 = load float, ptr %150, align 4, !dbg !1657
  %152 = load ptr, ptr %6, align 8, !dbg !1658
  %153 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %152, i32 noundef 1, i32 noundef 2), !dbg !1658
  %154 = load float, ptr %153, align 4, !dbg !1658
  %155 = fmul float %151, %154, !dbg !1659
  %156 = fneg float %155, !dbg !1660
  %157 = call float @llvm.fmuladd.f32(float %145, float %148, float %156), !dbg !1660
  %158 = fmul float %142, %157, !dbg !1661
  %159 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 2), !dbg !1662
  store float %158, ptr %159, align 4, !dbg !1663
  %160 = load float, ptr %12, align 4, !dbg !1664
  %161 = load float, ptr %11, align 4, !dbg !1665
  %162 = fmul float %160, %161, !dbg !1666
  %163 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 0), !dbg !1667
  store float %162, ptr %163, align 4, !dbg !1668
  %164 = load float, ptr %12, align 4, !dbg !1669
  %165 = load ptr, ptr %6, align 8, !dbg !1670
  %166 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %165, i32 noundef 0, i32 noundef 1), !dbg !1670
  %167 = load float, ptr %166, align 4, !dbg !1670
  %168 = load ptr, ptr %6, align 8, !dbg !1671
  %169 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %168, i32 noundef 2, i32 noundef 0), !dbg !1671
  %170 = load float, ptr %169, align 4, !dbg !1671
  %171 = load ptr, ptr %6, align 8, !dbg !1672
  %172 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %171, i32 noundef 0, i32 noundef 0), !dbg !1672
  %173 = load float, ptr %172, align 4, !dbg !1672
  %174 = load ptr, ptr %6, align 8, !dbg !1673
  %175 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %174, i32 noundef 2, i32 noundef 1), !dbg !1673
  %176 = load float, ptr %175, align 4, !dbg !1673
  %177 = fmul float %173, %176, !dbg !1674
  %178 = fneg float %177, !dbg !1675
  %179 = call float @llvm.fmuladd.f32(float %167, float %170, float %178), !dbg !1675
  %180 = fmul float %164, %179, !dbg !1676
  %181 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 1), !dbg !1677
  store float %180, ptr %181, align 4, !dbg !1678
  %182 = load float, ptr %12, align 4, !dbg !1679
  %183 = load ptr, ptr %6, align 8, !dbg !1680
  %184 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %183, i32 noundef 0, i32 noundef 0), !dbg !1680
  %185 = load float, ptr %184, align 4, !dbg !1680
  %186 = load ptr, ptr %6, align 8, !dbg !1681
  %187 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %186, i32 noundef 1, i32 noundef 1), !dbg !1681
  %188 = load float, ptr %187, align 4, !dbg !1681
  %189 = load ptr, ptr %6, align 8, !dbg !1682
  %190 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %189, i32 noundef 0, i32 noundef 1), !dbg !1682
  %191 = load float, ptr %190, align 4, !dbg !1682
  %192 = load ptr, ptr %6, align 8, !dbg !1683
  %193 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %192, i32 noundef 1, i32 noundef 0), !dbg !1683
  %194 = load float, ptr %193, align 4, !dbg !1683
  %195 = fmul float %191, %194, !dbg !1684
  %196 = fneg float %195, !dbg !1685
  %197 = call float @llvm.fmuladd.f32(float %185, float %188, float %196), !dbg !1685
  %198 = fmul float %182, %197, !dbg !1686
  %199 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 2), !dbg !1687
  store float %198, ptr %199, align 4, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1689, metadata !DIExpression()), !dbg !1690
  %200 = load ptr, ptr %6, align 8, !dbg !1691
  %201 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %200, i32 noundef 0, i32 noundef 3), !dbg !1691
  %202 = load float, ptr %201, align 4, !dbg !1691
  %203 = fneg float %202, !dbg !1692
  %204 = load ptr, ptr %6, align 8, !dbg !1693
  %205 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %204, i32 noundef 1, i32 noundef 3), !dbg !1693
  %206 = load float, ptr %205, align 4, !dbg !1693
  %207 = fneg float %206, !dbg !1694
  %208 = load ptr, ptr %6, align 8, !dbg !1695
  %209 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %208, i32 noundef 2, i32 noundef 3), !dbg !1695
  %210 = load float, ptr %209, align 4, !dbg !1695
  %211 = fneg float %210, !dbg !1696
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %13, float noundef %203, float noundef %207, float noundef %211)
          to label %212 unwind label %224, !dbg !1690

212:                                              ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1697, metadata !DIExpression()), !dbg !1698
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %14, ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %13)
          to label %213 unwind label %228, !dbg !1699

213:                                              ; preds = %212
  %214 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 0, !dbg !1700
  %215 = load float, ptr %214, align 4, !dbg !1700
  %216 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 3), !dbg !1701
  store float %215, ptr %216, align 4, !dbg !1702
  %217 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 1, !dbg !1703
  %218 = load float, ptr %217, align 4, !dbg !1703
  %219 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 3), !dbg !1704
  store float %218, ptr %219, align 4, !dbg !1705
  %220 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 2, !dbg !1706
  %221 = load float, ptr %220, align 4, !dbg !1706
  %222 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 3), !dbg !1707
  store float %221, ptr %222, align 4, !dbg !1708
  store i1 true, ptr %5, align 1, !dbg !1709
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %14) #3, !dbg !1710
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %13) #3, !dbg !1710
  %223 = load i1, ptr %5, align 1, !dbg !1710
  br i1 %223, label %233, label %232, !dbg !1710

224:                                              ; preds = %16, %2
  %225 = landingpad { ptr, i32 }
          cleanup, !dbg !1710
  %226 = extractvalue { ptr, i32 } %225, 0, !dbg !1710
  store ptr %226, ptr %7, align 8, !dbg !1710
  %227 = extractvalue { ptr, i32 } %225, 1, !dbg !1710
  store i32 %227, ptr %8, align 4, !dbg !1710
  br label %234, !dbg !1710

228:                                              ; preds = %212
  %229 = landingpad { ptr, i32 }
          cleanup, !dbg !1710
  %230 = extractvalue { ptr, i32 } %229, 0, !dbg !1710
  store ptr %230, ptr %7, align 8, !dbg !1710
  %231 = extractvalue { ptr, i32 } %229, 1, !dbg !1710
  store i32 %231, ptr %8, align 4, !dbg !1710
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %13) #3, !dbg !1710
  br label %234, !dbg !1710

232:                                              ; preds = %213
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !1710
  br label %233, !dbg !1710

233:                                              ; preds = %232, %213
  ret void, !dbg !1710

234:                                              ; preds = %228, %224
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !1710
  br label %235, !dbg !1710

235:                                              ; preds = %234
  %236 = load ptr, ptr %7, align 8, !dbg !1710
  %237 = load i32, ptr %8, align 4, !dbg !1710
  %238 = insertvalue { ptr, i32 } poison, ptr %236, 0, !dbg !1710
  %239 = insertvalue { ptr, i32 } %238, i32 %237, 1, !dbg !1710
  resume { ptr, i32 } %239, !dbg !1710
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !dbg !1711 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1712, metadata !DIExpression()), !dbg !1713
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1714
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !dbg !1715 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1716, metadata !DIExpression()), !dbg !1717
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1718
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0) #6 comdat align 2 !dbg !1719 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1720, metadata !DIExpression()), !dbg !1721
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.DMatrix, ptr %3, i32 0, i32 0, !dbg !1722
  %5 = getelementptr inbounds [3 x [4 x float]], ptr %4, i64 0, i64 0, !dbg !1723
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 48, i1 false), !dbg !1723
  ret void, !dbg !1724
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #7 comdat align 2 !dbg !1725 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1726, metadata !DIExpression()), !dbg !1728
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1729, metadata !DIExpression()), !dbg !1730
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1731, metadata !DIExpression()), !dbg !1732
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1733, metadata !DIExpression()), !dbg !1734
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !1735
  %11 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 0, !dbg !1737
  store float %10, ptr %11, align 4, !dbg !1738
  %12 = load float, ptr %7, align 4, !dbg !1739
  %13 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 1, !dbg !1740
  store float %12, ptr %13, align 4, !dbg !1741
  %14 = load float, ptr %8, align 4, !dbg !1742
  %15 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 2, !dbg !1743
  store float %14, ptr %15, align 4, !dbg !1744
  ret void, !dbg !1745
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr noalias sret(%class.Vector3) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #4 comdat !dbg !1746 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1752, metadata !DIExpression()), !dbg !1753
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1754, metadata !DIExpression()), !dbg !1755
  store i1 false, ptr %7, align 1, !dbg !1756
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1757, metadata !DIExpression(DW_OP_deref)), !dbg !1758
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0), !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1759, metadata !DIExpression()), !dbg !1760
  %9 = load ptr, ptr %5, align 8, !dbg !1761
  store ptr %9, ptr %8, align 8, !dbg !1760
  %10 = load ptr, ptr %8, align 8, !dbg !1762
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 0, i32 noundef 0), !dbg !1762
  %12 = load float, ptr %11, align 4, !dbg !1762
  %13 = load ptr, ptr %6, align 8, !dbg !1763
  %14 = getelementptr inbounds %class.Vector3, ptr %13, i32 0, i32 0, !dbg !1764
  %15 = load float, ptr %14, align 4, !dbg !1764
  %16 = load ptr, ptr %8, align 8, !dbg !1765
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %16, i32 noundef 0, i32 noundef 1), !dbg !1765
  %18 = load float, ptr %17, align 4, !dbg !1765
  %19 = load ptr, ptr %6, align 8, !dbg !1766
  %20 = getelementptr inbounds %class.Vector3, ptr %19, i32 0, i32 1, !dbg !1767
  %21 = load float, ptr %20, align 4, !dbg !1767
  %22 = fmul float %18, %21, !dbg !1768
  %23 = call float @llvm.fmuladd.f32(float %12, float %15, float %22), !dbg !1769
  %24 = load ptr, ptr %8, align 8, !dbg !1770
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %24, i32 noundef 0, i32 noundef 2), !dbg !1770
  %26 = load float, ptr %25, align 4, !dbg !1770
  %27 = load ptr, ptr %6, align 8, !dbg !1771
  %28 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 2, !dbg !1772
  %29 = load float, ptr %28, align 4, !dbg !1772
  %30 = call float @llvm.fmuladd.f32(float %26, float %29, float %23), !dbg !1773
  %31 = load ptr, ptr %8, align 8, !dbg !1774
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %31, i32 noundef 0, i32 noundef 3), !dbg !1774
  %33 = load float, ptr %32, align 4, !dbg !1774
  %34 = fadd float %30, %33, !dbg !1775
  %35 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 0, !dbg !1776
  store float %34, ptr %35, align 4, !dbg !1777
  %36 = load ptr, ptr %8, align 8, !dbg !1778
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %36, i32 noundef 1, i32 noundef 0), !dbg !1778
  %38 = load float, ptr %37, align 4, !dbg !1778
  %39 = load ptr, ptr %6, align 8, !dbg !1779
  %40 = getelementptr inbounds %class.Vector3, ptr %39, i32 0, i32 0, !dbg !1780
  %41 = load float, ptr %40, align 4, !dbg !1780
  %42 = load ptr, ptr %8, align 8, !dbg !1781
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %42, i32 noundef 1, i32 noundef 1), !dbg !1781
  %44 = load float, ptr %43, align 4, !dbg !1781
  %45 = load ptr, ptr %6, align 8, !dbg !1782
  %46 = getelementptr inbounds %class.Vector3, ptr %45, i32 0, i32 1, !dbg !1783
  %47 = load float, ptr %46, align 4, !dbg !1783
  %48 = fmul float %44, %47, !dbg !1784
  %49 = call float @llvm.fmuladd.f32(float %38, float %41, float %48), !dbg !1785
  %50 = load ptr, ptr %8, align 8, !dbg !1786
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %50, i32 noundef 1, i32 noundef 2), !dbg !1786
  %52 = load float, ptr %51, align 4, !dbg !1786
  %53 = load ptr, ptr %6, align 8, !dbg !1787
  %54 = getelementptr inbounds %class.Vector3, ptr %53, i32 0, i32 2, !dbg !1788
  %55 = load float, ptr %54, align 4, !dbg !1788
  %56 = call float @llvm.fmuladd.f32(float %52, float %55, float %49), !dbg !1789
  %57 = load ptr, ptr %8, align 8, !dbg !1790
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %57, i32 noundef 1, i32 noundef 3), !dbg !1790
  %59 = load float, ptr %58, align 4, !dbg !1790
  %60 = fadd float %56, %59, !dbg !1791
  %61 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 1, !dbg !1792
  store float %60, ptr %61, align 4, !dbg !1793
  %62 = load ptr, ptr %8, align 8, !dbg !1794
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %62, i32 noundef 2, i32 noundef 0), !dbg !1794
  %64 = load float, ptr %63, align 4, !dbg !1794
  %65 = load ptr, ptr %6, align 8, !dbg !1795
  %66 = getelementptr inbounds %class.Vector3, ptr %65, i32 0, i32 0, !dbg !1796
  %67 = load float, ptr %66, align 4, !dbg !1796
  %68 = load ptr, ptr %8, align 8, !dbg !1797
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %68, i32 noundef 2, i32 noundef 1), !dbg !1797
  %70 = load float, ptr %69, align 4, !dbg !1797
  %71 = load ptr, ptr %6, align 8, !dbg !1798
  %72 = getelementptr inbounds %class.Vector3, ptr %71, i32 0, i32 1, !dbg !1799
  %73 = load float, ptr %72, align 4, !dbg !1799
  %74 = fmul float %70, %73, !dbg !1800
  %75 = call float @llvm.fmuladd.f32(float %64, float %67, float %74), !dbg !1801
  %76 = load ptr, ptr %8, align 8, !dbg !1802
  %77 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %76, i32 noundef 2, i32 noundef 2), !dbg !1802
  %78 = load float, ptr %77, align 4, !dbg !1802
  %79 = load ptr, ptr %6, align 8, !dbg !1803
  %80 = getelementptr inbounds %class.Vector3, ptr %79, i32 0, i32 2, !dbg !1804
  %81 = load float, ptr %80, align 4, !dbg !1804
  %82 = call float @llvm.fmuladd.f32(float %78, float %81, float %75), !dbg !1805
  %83 = load ptr, ptr %8, align 8, !dbg !1806
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %83, i32 noundef 2, i32 noundef 3), !dbg !1806
  %85 = load float, ptr %84, align 4, !dbg !1806
  %86 = fadd float %82, %85, !dbg !1807
  %87 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 2, !dbg !1808
  store float %86, ptr %87, align 4, !dbg !1809
  store i1 true, ptr %7, align 1, !dbg !1810
  %88 = load i1, ptr %7, align 1, !dbg !1811
  br i1 %88, label %90, label %89, !dbg !1811

89:                                               ; preds = %3
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) #3, !dbg !1811
  br label %90, !dbg !1811

90:                                               ; preds = %89, %3
  ret void, !dbg !1811
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #7 comdat align 2 !dbg !1812 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1813, metadata !DIExpression()), !dbg !1814
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1815
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #7 comdat align 2 !dbg !1816 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1817, metadata !DIExpression()), !dbg !1818
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1819
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_CameraModel.cpp() #0 section ".text.startup" !dbg !1820 {
  call void @__cxx_global_var_init(), !dbg !1822
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399}
!llvm.ident = !{!1400}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 34, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "../TrackingBenchmark/CameraModel.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "7d14f35dddfb4388e3a1744e2f8ada31")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 336, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 42)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !9, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !30, globals: !145, imports: !146, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17, !24}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 29, baseType: !19, size: 32, elements: !20, identifier: "_ZTS6DMAxis")
!18 = !DIFile(filename: "../TrackingBenchmark/DMatrix.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "683bf5578c88d572073a2ceae8029be4")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "X", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "Y", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "Z", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 30, baseType: !19, size: 32, elements: !25, identifier: "_ZTS7DMOrder")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "XYZ", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "ZYX", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "YXZ", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "ZXY", value: 3, isUnsigned: true)
!30 = !{!31, !36, !32, !85}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DMatrix<float>", file: !18, line: 34, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !33, templateParams: !83, identifier: "_ZTS7DMatrixIfE")
!33 = !{!34, !40, !44, !47, !50, !55, !59, !63, !64, !65, !66, !71, !72, !75}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !18, line: 36, baseType: !35, size: 384, flags: DIFlagProtected)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 384, elements: !37)
!36 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!37 = !{!38, !39}
!38 = !DISubrange(count: 3)
!39 = !DISubrange(count: 4)
!40 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 39, type: !41, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!44 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 42, type: !45, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !43, !36, !36, !36}
!47 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 45, type: !48, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !43, !36, !36, !36, !36, !36, !36}
!50 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 48, type: !51, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !43, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!55 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 51, type: !56, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !43, !58, !36}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMAxis", file: !18, line: 29, baseType: !17)
!59 = !DISubprogram(name: "DMatrix", scope: !32, file: !18, line: 54, type: !60, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !43, !36, !36, !36, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMOrder", file: !18, line: 30, baseType: !24)
!63 = !DISubprogram(name: "~DMatrix", scope: !32, file: !18, line: 57, type: !41, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !32, file: !18, line: 60, type: !41, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!65 = !DISubprogram(name: "SetIdentity", linkageName: "_ZN7DMatrixIfE11SetIdentityEv", scope: !32, file: !18, line: 63, type: !41, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!66 = !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !32, file: !18, line: 66, type: !67, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !43, !70, !70}
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !36, size: 64)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DISubprogram(name: "Set", linkageName: "_ZN7DMatrixIfE3SetEPKf", scope: !32, file: !18, line: 69, type: !51, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "SetTranslation", linkageName: "_ZN7DMatrixIfE14SetTranslationEfff", scope: !32, file: !18, line: 72, type: !73, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !43, !54, !54, !54}
!75 = !DISubprogram(name: "Print", linkageName: "_ZN7DMatrixIfE5PrintERSo", scope: !32, file: !18, line: 75, type: !76, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !43, !78}
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !80, line: 141, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!81 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !82, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!82 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
!83 = !{!84}
!84 = !DITemplateTypeParameter(name: "T", type: !36)
!85 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Vector3<float>", file: !86, line: 36, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !87, templateParams: !83, identifier: "_ZTS7Vector3IfE")
!86 = !DIFile(filename: "../TrackingBenchmark/SmallVectors.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "633755f321eda28e3f3fa646094388cc")
!87 = !{!88, !89, !90, !91, !95, !98, !102, !103, !104, !110, !111, !114, !115, !118, !119, !122, !123, !126, !129, !130, !133, !134, !137, !141}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !85, file: !86, line: 38, baseType: !36, size: 32, flags: DIFlagPublic)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !85, file: !86, line: 38, baseType: !36, size: 32, offset: 32, flags: DIFlagPublic)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !85, file: !86, line: 38, baseType: !36, size: 32, offset: 64, flags: DIFlagPublic)
!91 = !DISubprogram(name: "Vector3", scope: !85, file: !86, line: 40, type: !92, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!95 = !DISubprogram(name: "Vector3", scope: !85, file: !86, line: 41, type: !96, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !94, !36, !36, !36}
!98 = !DISubprogram(name: "Vector3", scope: !85, file: !86, line: 42, type: !99, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !94, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!102 = !DISubprogram(name: "~Vector3", scope: !85, file: !86, line: 44, type: !92, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubprogram(name: "Set", linkageName: "_ZN7Vector3IfE3SetEfff", scope: !85, file: !86, line: 47, type: !96, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!104 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !85, file: !86, line: 51, type: !105, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!85, !107, !109}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 64)
!110 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector3IfEplERKS0_", scope: !85, file: !86, line: 55, type: !105, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!111 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector3IfEpLERKS0_", scope: !85, file: !86, line: 59, type: !112, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !94, !109}
!114 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector3IfEmIERKS0_", scope: !85, file: !86, line: 63, type: !112, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!115 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlEf", scope: !85, file: !86, line: 67, type: !116, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!85, !107, !54}
!118 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector3IfEdvEf", scope: !85, file: !86, line: 71, type: !116, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector3IfEmLEf", scope: !85, file: !86, line: 75, type: !120, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !94, !54}
!122 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector3IfEdVEf", scope: !85, file: !86, line: 79, type: !120, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "Dot", linkageName: "_ZNK7Vector3IfE3DotERKS0_", scope: !85, file: !86, line: 83, type: !124, scopeLine: 83, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!36, !107, !109}
!126 = !DISubprogram(name: "Norm", linkageName: "_ZNK7Vector3IfE4NormEv", scope: !85, file: !86, line: 87, type: !127, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!85, !107}
!129 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERKS0_", scope: !85, file: !86, line: 92, type: !105, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!130 = !DISubprogram(name: "Mag", linkageName: "_ZNK7Vector3IfE3MagEv", scope: !85, file: !86, line: 98, type: !131, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!36, !107}
!133 = !DISubprogram(name: "MagSq", linkageName: "_ZNK7Vector3IfE5MagSqEv", scope: !85, file: !86, line: 102, type: !131, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "Print", linkageName: "_ZNK7Vector3IfE5PrintEv", scope: !85, file: !86, line: 106, type: !135, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !107}
!137 = !DISubprogram(name: "operator[]", linkageName: "_ZN7Vector3IfEixEi", scope: !85, file: !86, line: 110, type: !138, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!69, !94, !140}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!141 = !DISubprogram(name: "operator==", linkageName: "_ZN7Vector3IfEeqERKS0_", scope: !85, file: !86, line: 116, type: !142, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !94, !109}
!144 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!145 = !{!0, !7}
!146 = !{!147, !151, !157, !164, !166, !168, !172, !174, !176, !178, !180, !182, !184, !186, !191, !195, !197, !199, !204, !206, !208, !210, !212, !214, !216, !219, !221, !223, !227, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !256, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !294, !298, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !324, !328, !332, !334, !336, !338, !343, !347, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !380, !384, !388, !390, !392, !394, !399, !403, !407, !409, !411, !413, !415, !417, !419, !423, !427, !429, !431, !433, !435, !439, !443, !447, !449, !451, !453, !455, !457, !459, !463, !467, !471, !473, !477, !481, !483, !485, !487, !489, !491, !493, !496, !501, !517, !520, !525, !533, !541, !545, !552, !556, !560, !562, !564, !568, !578, !582, !588, !594, !596, !600, !604, !608, !612, !625, !627, !631, !635, !639, !641, !647, !651, !655, !657, !659, !663, !671, !675, !679, !683, !685, !691, !693, !699, !703, !707, !711, !715, !719, !723, !725, !727, !731, !735, !739, !741, !745, !749, !751, !753, !757, !762, !766, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !785, !789, !796, !800, !803, !806, !809, !811, !813, !815, !818, !821, !824, !827, !830, !832, !837, !841, !844, !847, !849, !851, !853, !855, !858, !861, !864, !867, !870, !872, !876, !880, !885, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !919, !925, !929, !934, !936, !938, !942, !946, !956, !960, !964, !968, !972, !976, !980, !984, !988, !992, !996, !1000, !1004, !1006, !1010, !1014, !1018, !1024, !1028, !1032, !1034, !1038, !1042, !1048, !1050, !1054, !1058, !1062, !1066, !1070, !1074, !1078, !1079, !1080, !1081, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1093, !1099, !1104, !1108, !1110, !1112, !1114, !1116, !1123, !1127, !1131, !1135, !1139, !1143, !1148, !1152, !1154, !1158, !1164, !1168, !1173, !1175, !1177, !1181, !1185, !1189, !1191, !1193, !1195, !1197, !1201, !1203, !1205, !1209, !1213, !1217, !1221, !1225, !1227, !1229, !1233, !1237, !1241, !1245, !1247, !1249, !1253, !1257, !1258, !1259, !1260, !1261, !1262, !1268, !1271, !1272, !1274, !1276, !1278, !1280, !1284, !1286, !1288, !1290, !1292, !1294, !1296, !1298, !1300, !1304, !1308, !1310, !1314, !1318, !1324, !1328, !1332, !1336, !1340, !1344, !1346, !1348, !1350, !1354, !1358, !1362, !1366, !1370, !1372, !1374, !1376, !1380, !1384, !1388, !1390, !1392}
!147 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !148, entity: !149, file: !150, line: 58)
!148 = !DINamespace(name: "__gnu_debug", scope: null)
!149 = !DINamespace(name: "__debug", scope: !2)
!150 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !152, file: !156, line: 52)
!152 = !DISubprogram(name: "abs", scope: !153, file: !153, line: 848, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!154 = !DISubroutineType(types: !155)
!155 = !{!70, !70}
!156 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !163, line: 83)
!158 = !DISubprogram(name: "acos", scope: !159, file: !159, line: 53, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !162}
!162 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!163 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !165, file: !163, line: 102)
!165 = !DISubprogram(name: "asin", scope: !159, file: !159, line: 55, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !163, line: 121)
!167 = !DISubprogram(name: "atan", scope: !159, file: !159, line: 57, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !163, line: 140)
!169 = !DISubprogram(name: "atan2", scope: !159, file: !159, line: 59, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!162, !162, !162}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !163, line: 161)
!173 = !DISubprogram(name: "ceil", scope: !159, file: !159, line: 159, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !175, file: !163, line: 180)
!175 = !DISubprogram(name: "cos", scope: !159, file: !159, line: 62, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !163, line: 199)
!177 = !DISubprogram(name: "cosh", scope: !159, file: !159, line: 71, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !179, file: !163, line: 218)
!179 = !DISubprogram(name: "exp", scope: !159, file: !159, line: 95, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !163, line: 237)
!181 = !DISubprogram(name: "fabs", scope: !159, file: !159, line: 162, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !183, file: !163, line: 256)
!183 = !DISubprogram(name: "floor", scope: !159, file: !159, line: 165, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !185, file: !163, line: 275)
!185 = !DISubprogram(name: "fmod", scope: !159, file: !159, line: 168, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !187, file: !163, line: 296)
!187 = !DISubprogram(name: "frexp", scope: !159, file: !159, line: 98, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!162, !162, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !192, file: !163, line: 315)
!192 = !DISubprogram(name: "ldexp", scope: !159, file: !159, line: 101, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!162, !162, !70}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !163, line: 334)
!196 = !DISubprogram(name: "log", scope: !159, file: !159, line: 104, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !198, file: !163, line: 353)
!198 = !DISubprogram(name: "log10", scope: !159, file: !159, line: 107, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !163, line: 372)
!200 = !DISubprogram(name: "modf", scope: !159, file: !159, line: 110, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!162, !162, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !205, file: !163, line: 384)
!205 = !DISubprogram(name: "pow", scope: !159, file: !159, line: 140, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !207, file: !163, line: 421)
!207 = !DISubprogram(name: "sin", scope: !159, file: !159, line: 64, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !209, file: !163, line: 440)
!209 = !DISubprogram(name: "sinh", scope: !159, file: !159, line: 73, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !211, file: !163, line: 459)
!211 = !DISubprogram(name: "sqrt", scope: !159, file: !159, line: 143, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !213, file: !163, line: 478)
!213 = !DISubprogram(name: "tan", scope: !159, file: !159, line: 66, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !215, file: !163, line: 497)
!215 = !DISubprogram(name: "tanh", scope: !159, file: !159, line: 75, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !163, line: 1065)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !218, line: 164, baseType: !162)
!218 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !220, file: !163, line: 1066)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !218, line: 163, baseType: !36)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !163, line: 1069)
!222 = !DISubprogram(name: "acosh", scope: !159, file: !159, line: 85, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !224, file: !163, line: 1070)
!224 = !DISubprogram(name: "acoshf", scope: !159, file: !159, line: 85, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!36, !36}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !228, file: !163, line: 1071)
!228 = !DISubprogram(name: "acoshl", scope: !159, file: !159, line: 85, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !231}
!231 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !163, line: 1073)
!233 = !DISubprogram(name: "asinh", scope: !159, file: !159, line: 87, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !235, file: !163, line: 1074)
!235 = !DISubprogram(name: "asinhf", scope: !159, file: !159, line: 87, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !237, file: !163, line: 1075)
!237 = !DISubprogram(name: "asinhl", scope: !159, file: !159, line: 87, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !239, file: !163, line: 1077)
!239 = !DISubprogram(name: "atanh", scope: !159, file: !159, line: 89, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !241, file: !163, line: 1078)
!241 = !DISubprogram(name: "atanhf", scope: !159, file: !159, line: 89, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !243, file: !163, line: 1079)
!243 = !DISubprogram(name: "atanhl", scope: !159, file: !159, line: 89, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !245, file: !163, line: 1081)
!245 = !DISubprogram(name: "cbrt", scope: !159, file: !159, line: 152, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !163, line: 1082)
!247 = !DISubprogram(name: "cbrtf", scope: !159, file: !159, line: 152, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !249, file: !163, line: 1083)
!249 = !DISubprogram(name: "cbrtl", scope: !159, file: !159, line: 152, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !163, line: 1085)
!251 = !DISubprogram(name: "copysign", scope: !159, file: !159, line: 198, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !253, file: !163, line: 1086)
!253 = !DISubprogram(name: "copysignf", scope: !159, file: !159, line: 198, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{!36, !36, !36}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !257, file: !163, line: 1087)
!257 = !DISubprogram(name: "copysignl", scope: !159, file: !159, line: 198, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!231, !231, !231}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !261, file: !163, line: 1089)
!261 = !DISubprogram(name: "erf", scope: !159, file: !159, line: 231, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !263, file: !163, line: 1090)
!263 = !DISubprogram(name: "erff", scope: !159, file: !159, line: 231, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !265, file: !163, line: 1091)
!265 = !DISubprogram(name: "erfl", scope: !159, file: !159, line: 231, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !267, file: !163, line: 1093)
!267 = !DISubprogram(name: "erfc", scope: !159, file: !159, line: 232, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !269, file: !163, line: 1094)
!269 = !DISubprogram(name: "erfcf", scope: !159, file: !159, line: 232, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !163, line: 1095)
!271 = !DISubprogram(name: "erfcl", scope: !159, file: !159, line: 232, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !273, file: !163, line: 1097)
!273 = !DISubprogram(name: "exp2", scope: !159, file: !159, line: 130, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !163, line: 1098)
!275 = !DISubprogram(name: "exp2f", scope: !159, file: !159, line: 130, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !277, file: !163, line: 1099)
!277 = !DISubprogram(name: "exp2l", scope: !159, file: !159, line: 130, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !279, file: !163, line: 1101)
!279 = !DISubprogram(name: "expm1", scope: !159, file: !159, line: 119, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !281, file: !163, line: 1102)
!281 = !DISubprogram(name: "expm1f", scope: !159, file: !159, line: 119, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !163, line: 1103)
!283 = !DISubprogram(name: "expm1l", scope: !159, file: !159, line: 119, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !163, line: 1105)
!285 = !DISubprogram(name: "fdim", scope: !159, file: !159, line: 329, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !163, line: 1106)
!287 = !DISubprogram(name: "fdimf", scope: !159, file: !159, line: 329, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !289, file: !163, line: 1107)
!289 = !DISubprogram(name: "fdiml", scope: !159, file: !159, line: 329, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !291, file: !163, line: 1109)
!291 = !DISubprogram(name: "fma", scope: !159, file: !159, line: 340, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!162, !162, !162, !162}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !163, line: 1110)
!295 = !DISubprogram(name: "fmaf", scope: !159, file: !159, line: 340, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!36, !36, !36, !36}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !299, file: !163, line: 1111)
!299 = !DISubprogram(name: "fmal", scope: !159, file: !159, line: 340, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!231, !231, !231, !231}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !163, line: 1113)
!303 = !DISubprogram(name: "fmax", scope: !159, file: !159, line: 333, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !305, file: !163, line: 1114)
!305 = !DISubprogram(name: "fmaxf", scope: !159, file: !159, line: 333, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !307, file: !163, line: 1115)
!307 = !DISubprogram(name: "fmaxl", scope: !159, file: !159, line: 333, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !163, line: 1117)
!309 = !DISubprogram(name: "fmin", scope: !159, file: !159, line: 336, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !311, file: !163, line: 1118)
!311 = !DISubprogram(name: "fminf", scope: !159, file: !159, line: 336, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !163, line: 1119)
!313 = !DISubprogram(name: "fminl", scope: !159, file: !159, line: 336, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !315, file: !163, line: 1121)
!315 = !DISubprogram(name: "hypot", scope: !159, file: !159, line: 147, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !163, line: 1122)
!317 = !DISubprogram(name: "hypotf", scope: !159, file: !159, line: 147, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !319, file: !163, line: 1123)
!319 = !DISubprogram(name: "hypotl", scope: !159, file: !159, line: 147, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !163, line: 1125)
!321 = !DISubprogram(name: "ilogb", scope: !159, file: !159, line: 283, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!70, !162}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !163, line: 1126)
!325 = !DISubprogram(name: "ilogbf", scope: !159, file: !159, line: 283, type: !326, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!70, !36}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !163, line: 1127)
!329 = !DISubprogram(name: "ilogbl", scope: !159, file: !159, line: 283, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!70, !231}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !333, file: !163, line: 1129)
!333 = !DISubprogram(name: "lgamma", scope: !159, file: !159, line: 233, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !163, line: 1130)
!335 = !DISubprogram(name: "lgammaf", scope: !159, file: !159, line: 233, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !337, file: !163, line: 1131)
!337 = !DISubprogram(name: "lgammal", scope: !159, file: !159, line: 233, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !163, line: 1134)
!339 = !DISubprogram(name: "llrint", scope: !159, file: !159, line: 319, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !162}
!342 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !163, line: 1135)
!344 = !DISubprogram(name: "llrintf", scope: !159, file: !159, line: 319, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!342, !36}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !163, line: 1136)
!348 = !DISubprogram(name: "llrintl", scope: !159, file: !159, line: 319, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!342, !231}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !163, line: 1138)
!352 = !DISubprogram(name: "llround", scope: !159, file: !159, line: 325, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !163, line: 1139)
!354 = !DISubprogram(name: "llroundf", scope: !159, file: !159, line: 325, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !356, file: !163, line: 1140)
!356 = !DISubprogram(name: "llroundl", scope: !159, file: !159, line: 325, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !358, file: !163, line: 1143)
!358 = !DISubprogram(name: "log1p", scope: !159, file: !159, line: 122, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !163, line: 1144)
!360 = !DISubprogram(name: "log1pf", scope: !159, file: !159, line: 122, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !163, line: 1145)
!362 = !DISubprogram(name: "log1pl", scope: !159, file: !159, line: 122, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !364, file: !163, line: 1147)
!364 = !DISubprogram(name: "log2", scope: !159, file: !159, line: 133, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !163, line: 1148)
!366 = !DISubprogram(name: "log2f", scope: !159, file: !159, line: 133, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !368, file: !163, line: 1149)
!368 = !DISubprogram(name: "log2l", scope: !159, file: !159, line: 133, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !163, line: 1151)
!370 = !DISubprogram(name: "logb", scope: !159, file: !159, line: 125, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !372, file: !163, line: 1152)
!372 = !DISubprogram(name: "logbf", scope: !159, file: !159, line: 125, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !374, file: !163, line: 1153)
!374 = !DISubprogram(name: "logbl", scope: !159, file: !159, line: 125, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !163, line: 1155)
!376 = !DISubprogram(name: "lrint", scope: !159, file: !159, line: 317, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !162}
!379 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !381, file: !163, line: 1156)
!381 = !DISubprogram(name: "lrintf", scope: !159, file: !159, line: 317, type: !382, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!379, !36}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !163, line: 1157)
!385 = !DISubprogram(name: "lrintl", scope: !159, file: !159, line: 317, type: !386, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DISubroutineType(types: !387)
!387 = !{!379, !231}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !163, line: 1159)
!389 = !DISubprogram(name: "lround", scope: !159, file: !159, line: 323, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !391, file: !163, line: 1160)
!391 = !DISubprogram(name: "lroundf", scope: !159, file: !159, line: 323, type: !382, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !163, line: 1161)
!393 = !DISubprogram(name: "lroundl", scope: !159, file: !159, line: 323, type: !386, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !163, line: 1163)
!395 = !DISubprogram(name: "nan", scope: !159, file: !159, line: 203, type: !396, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DISubroutineType(types: !397)
!397 = !{!162, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !163, line: 1164)
!400 = !DISubprogram(name: "nanf", scope: !159, file: !159, line: 203, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{!36, !398}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !163, line: 1165)
!404 = !DISubprogram(name: "nanl", scope: !159, file: !159, line: 203, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{!231, !398}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !408, file: !163, line: 1167)
!408 = !DISubprogram(name: "nearbyint", scope: !159, file: !159, line: 297, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !163, line: 1168)
!410 = !DISubprogram(name: "nearbyintf", scope: !159, file: !159, line: 297, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !412, file: !163, line: 1169)
!412 = !DISubprogram(name: "nearbyintl", scope: !159, file: !159, line: 297, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !163, line: 1171)
!414 = !DISubprogram(name: "nextafter", scope: !159, file: !159, line: 262, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !416, file: !163, line: 1172)
!416 = !DISubprogram(name: "nextafterf", scope: !159, file: !159, line: 262, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !163, line: 1173)
!418 = !DISubprogram(name: "nextafterl", scope: !159, file: !159, line: 262, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !420, file: !163, line: 1175)
!420 = !DISubprogram(name: "nexttoward", scope: !159, file: !159, line: 264, type: !421, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!162, !162, !231}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !163, line: 1176)
!424 = !DISubprogram(name: "nexttowardf", scope: !159, file: !159, line: 264, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!36, !36, !231}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !163, line: 1177)
!428 = !DISubprogram(name: "nexttowardl", scope: !159, file: !159, line: 264, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !163, line: 1179)
!430 = !DISubprogram(name: "remainder", scope: !159, file: !159, line: 275, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !163, line: 1180)
!432 = !DISubprogram(name: "remainderf", scope: !159, file: !159, line: 275, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !163, line: 1181)
!434 = !DISubprogram(name: "remainderl", scope: !159, file: !159, line: 275, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !163, line: 1183)
!436 = !DISubprogram(name: "remquo", scope: !159, file: !159, line: 310, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!162, !162, !162, !190}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !163, line: 1184)
!440 = !DISubprogram(name: "remquof", scope: !159, file: !159, line: 310, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!36, !36, !36, !190}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !163, line: 1185)
!444 = !DISubprogram(name: "remquol", scope: !159, file: !159, line: 310, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!231, !231, !231, !190}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !163, line: 1187)
!448 = !DISubprogram(name: "rint", scope: !159, file: !159, line: 259, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !163, line: 1188)
!450 = !DISubprogram(name: "rintf", scope: !159, file: !159, line: 259, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !452, file: !163, line: 1189)
!452 = !DISubprogram(name: "rintl", scope: !159, file: !159, line: 259, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !163, line: 1191)
!454 = !DISubprogram(name: "round", scope: !159, file: !159, line: 301, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !163, line: 1192)
!456 = !DISubprogram(name: "roundf", scope: !159, file: !159, line: 301, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !163, line: 1193)
!458 = !DISubprogram(name: "roundl", scope: !159, file: !159, line: 301, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !163, line: 1195)
!460 = !DISubprogram(name: "scalbln", scope: !159, file: !159, line: 293, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!162, !162, !379}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !464, file: !163, line: 1196)
!464 = !DISubprogram(name: "scalblnf", scope: !159, file: !159, line: 293, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!36, !36, !379}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !163, line: 1197)
!468 = !DISubprogram(name: "scalblnl", scope: !159, file: !159, line: 293, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!231, !231, !379}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !163, line: 1199)
!472 = !DISubprogram(name: "scalbn", scope: !159, file: !159, line: 279, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !163, line: 1200)
!474 = !DISubprogram(name: "scalbnf", scope: !159, file: !159, line: 279, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!36, !36, !70}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !163, line: 1201)
!478 = !DISubprogram(name: "scalbnl", scope: !159, file: !159, line: 279, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!231, !231, !70}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !163, line: 1203)
!482 = !DISubprogram(name: "tgamma", scope: !159, file: !159, line: 238, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !163, line: 1204)
!484 = !DISubprogram(name: "tgammaf", scope: !159, file: !159, line: 238, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !163, line: 1205)
!486 = !DISubprogram(name: "tgammal", scope: !159, file: !159, line: 238, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !163, line: 1207)
!488 = !DISubprogram(name: "trunc", scope: !159, file: !159, line: 305, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !490, file: !163, line: 1208)
!490 = !DISubprogram(name: "truncf", scope: !159, file: !159, line: 305, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !163, line: 1209)
!492 = !DISubprogram(name: "truncl", scope: !159, file: !159, line: 305, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !494, file: !495, line: 38)
!494 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !156, line: 79, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !497, file: !495, line: 54)
!497 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !163, line: 380, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!231, !231, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !516, line: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !503, line: 6, baseType: !504)
!503 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !505, line: 21, baseType: !506)
!505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !507, identifier: "_ZTS11__mbstate_t")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !506, file: !505, line: 15, baseType: !70, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !506, file: !505, line: 20, baseType: !510, size: 32, offset: 32)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !505, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !511, identifier: "_ZTSN11__mbstate_tUt_E")
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !510, file: !505, line: 18, baseType: !19, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !510, file: !505, line: 19, baseType: !514, size: 32)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !515)
!515 = !{!39}
!516 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !516, line: 141)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !519, line: 20, baseType: !19)
!519 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !516, line: 143)
!521 = !DISubprogram(name: "btowc", scope: !522, file: !522, line: 285, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!522 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!523 = !DISubroutineType(types: !524)
!524 = !{!518, !70}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !516, line: 144)
!526 = !DISubprogram(name: "fgetwc", scope: !522, file: !522, line: 744, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!518, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !531, line: 5, baseType: !532)
!531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !531, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !516, line: 145)
!534 = !DISubprogram(name: "fgetws", scope: !522, file: !522, line: 773, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !539, !70, !540}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !537)
!540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !529)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !516, line: 146)
!542 = !DISubprogram(name: "fputwc", scope: !522, file: !522, line: 758, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!518, !538, !529}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !516, line: 147)
!546 = !DISubprogram(name: "fputws", scope: !522, file: !522, line: 780, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!70, !549, !540}
!549 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !516, line: 148)
!553 = !DISubprogram(name: "fwide", scope: !522, file: !522, line: 588, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!70, !529, !70}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !516, line: 149)
!557 = !DISubprogram(name: "fwprintf", scope: !522, file: !522, line: 595, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!70, !540, !549, null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !516, line: 150)
!561 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !522, file: !522, line: 657, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !563, file: !516, line: 151)
!563 = !DISubprogram(name: "getwc", scope: !522, file: !522, line: 745, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !565, file: !516, line: 152)
!565 = !DISubprogram(name: "getwchar", scope: !522, file: !522, line: 751, type: !566, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{!518}
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !569, file: !516, line: 153)
!569 = !DISubprogram(name: "mbrlen", scope: !522, file: !522, line: 308, type: !570, flags: DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{!572, !575, !572, !576}
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !573, line: 46, baseType: !574)
!573 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!574 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !398)
!576 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !516, line: 154)
!579 = !DISubprogram(name: "mbrtowc", scope: !522, file: !522, line: 297, type: !580, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{!572, !539, !575, !572, !576}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !516, line: 155)
!583 = !DISubprogram(name: "mbsinit", scope: !522, file: !522, line: 293, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!70, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !516, line: 156)
!589 = !DISubprogram(name: "mbsrtowcs", scope: !522, file: !522, line: 338, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{!572, !539, !592, !572, !576}
!592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !516, line: 157)
!595 = !DISubprogram(name: "putwc", scope: !522, file: !522, line: 759, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !516, line: 158)
!597 = !DISubprogram(name: "putwchar", scope: !522, file: !522, line: 765, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{!518, !538}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !601, file: !516, line: 160)
!601 = !DISubprogram(name: "swprintf", scope: !522, file: !522, line: 605, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DISubroutineType(types: !603)
!603 = !{!70, !539, !572, !549, null}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !516, line: 162)
!605 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !522, file: !522, line: 664, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!70, !549, !549, null}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !516, line: 163)
!609 = !DISubprogram(name: "ungetwc", scope: !522, file: !522, line: 788, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!518, !518, !529}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !613, file: !516, line: 164)
!613 = !DISubprogram(name: "vfwprintf", scope: !522, file: !522, line: 613, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!70, !540, !549, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !618, identifier: "_ZTS13__va_list_tag")
!618 = !{!619, !621, !622, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !617, file: !620, baseType: !19, size: 32)
!620 = !DIFile(filename: "../TrackingBenchmark/CameraModel.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build")
!621 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !617, file: !620, baseType: !19, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !617, file: !620, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !617, file: !620, baseType: !623, size: 64, offset: 128)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !516, line: 166)
!626 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !522, file: !522, line: 711, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !628, file: !516, line: 169)
!628 = !DISubprogram(name: "vswprintf", scope: !522, file: !522, line: 626, type: !629, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DISubroutineType(types: !630)
!630 = !{!70, !539, !572, !549, !616}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !516, line: 172)
!632 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !522, file: !522, line: 718, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{!70, !549, !549, !616}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !516, line: 174)
!636 = !DISubprogram(name: "vwprintf", scope: !522, file: !522, line: 621, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!70, !549, !616}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !516, line: 176)
!640 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !522, file: !522, line: 715, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !516, line: 178)
!642 = !DISubprogram(name: "wcrtomb", scope: !522, file: !522, line: 302, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!572, !645, !538, !576}
!645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !516, line: 179)
!648 = !DISubprogram(name: "wcscat", scope: !522, file: !522, line: 97, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!537, !539, !549}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !516, line: 180)
!652 = !DISubprogram(name: "wcscmp", scope: !522, file: !522, line: 106, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!70, !550, !550}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !516, line: 181)
!656 = !DISubprogram(name: "wcscoll", scope: !522, file: !522, line: 131, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !516, line: 182)
!658 = !DISubprogram(name: "wcscpy", scope: !522, file: !522, line: 87, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !516, line: 183)
!660 = !DISubprogram(name: "wcscspn", scope: !522, file: !522, line: 188, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!572, !550, !550}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !516, line: 184)
!664 = !DISubprogram(name: "wcsftime", scope: !522, file: !522, line: 852, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DISubroutineType(types: !666)
!666 = !{!572, !539, !572, !549, !667}
!667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !522, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !516, line: 185)
!672 = !DISubprogram(name: "wcslen", scope: !522, file: !522, line: 223, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!572, !550}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !516, line: 186)
!676 = !DISubprogram(name: "wcsncat", scope: !522, file: !522, line: 101, type: !677, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DISubroutineType(types: !678)
!678 = !{!537, !539, !549, !572}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !516, line: 187)
!680 = !DISubprogram(name: "wcsncmp", scope: !522, file: !522, line: 109, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{!70, !550, !550, !572}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !516, line: 188)
!684 = !DISubprogram(name: "wcsncpy", scope: !522, file: !522, line: 92, type: !677, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !516, line: 189)
!686 = !DISubprogram(name: "wcsrtombs", scope: !522, file: !522, line: 344, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!572, !645, !689, !572, !576}
!689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !516, line: 190)
!692 = !DISubprogram(name: "wcsspn", scope: !522, file: !522, line: 192, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !516, line: 191)
!694 = !DISubprogram(name: "wcstod", scope: !522, file: !522, line: 378, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!162, !549, !697}
!697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !516, line: 193)
!700 = !DISubprogram(name: "wcstof", scope: !522, file: !522, line: 383, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!36, !549, !697}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !516, line: 195)
!704 = !DISubprogram(name: "wcstok", scope: !522, file: !522, line: 218, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!537, !539, !549, !697}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !516, line: 196)
!708 = !DISubprogram(name: "wcstol", scope: !522, file: !522, line: 429, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!379, !549, !697, !70}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !712, file: !516, line: 197)
!712 = !DISubprogram(name: "wcstoul", scope: !522, file: !522, line: 434, type: !713, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!574, !549, !697, !70}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !516, line: 198)
!716 = !DISubprogram(name: "wcsxfrm", scope: !522, file: !522, line: 135, type: !717, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DISubroutineType(types: !718)
!718 = !{!572, !539, !549, !572}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !720, file: !516, line: 199)
!720 = !DISubprogram(name: "wctob", scope: !522, file: !522, line: 289, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{!70, !518}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !516, line: 200)
!724 = !DISubprogram(name: "wmemcmp", scope: !522, file: !522, line: 259, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !516, line: 201)
!726 = !DISubprogram(name: "wmemcpy", scope: !522, file: !522, line: 263, type: !677, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !728, file: !516, line: 202)
!728 = !DISubprogram(name: "wmemmove", scope: !522, file: !522, line: 268, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DISubroutineType(types: !730)
!730 = !{!537, !537, !550, !572}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !516, line: 203)
!732 = !DISubprogram(name: "wmemset", scope: !522, file: !522, line: 272, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{!537, !537, !538, !572}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !516, line: 204)
!736 = !DISubprogram(name: "wprintf", scope: !522, file: !522, line: 602, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{!70, !549, null}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !516, line: 205)
!740 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !522, file: !522, line: 661, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !516, line: 206)
!742 = !DISubprogram(name: "wcschr", scope: !522, file: !522, line: 165, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!537, !550, !538}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !516, line: 207)
!746 = !DISubprogram(name: "wcspbrk", scope: !522, file: !522, line: 202, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{!537, !550, !550}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !516, line: 208)
!750 = !DISubprogram(name: "wcsrchr", scope: !522, file: !522, line: 175, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !516, line: 209)
!752 = !DISubprogram(name: "wcsstr", scope: !522, file: !522, line: 213, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !516, line: 210)
!754 = !DISubprogram(name: "wmemchr", scope: !522, file: !522, line: 254, type: !755, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!537, !550, !538, !572}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !759, file: !516, line: 251)
!758 = !DINamespace(name: "__gnu_cxx", scope: null)
!759 = !DISubprogram(name: "wcstold", scope: !522, file: !522, line: 385, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!231, !549, !697}
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !763, file: !516, line: 260)
!763 = !DISubprogram(name: "wcstoll", scope: !522, file: !522, line: 442, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!342, !549, !697, !70}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !767, file: !516, line: 261)
!767 = !DISubprogram(name: "wcstoull", scope: !522, file: !522, line: 449, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!770, !549, !697, !70}
!770 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !516, line: 267)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !516, line: 268)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !516, line: 269)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !516, line: 283)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !516, line: 286)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !516, line: 289)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !516, line: 292)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !516, line: 296)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !516, line: 297)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !516, line: 298)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !783, line: 68)
!782 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !784, file: !783, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!783 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!784 = !DINamespace(name: "__exception_ptr", scope: !2)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !784, entity: !786, file: !783, line: 84)
!786 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !783, line: 80, type: !787, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !782}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !795, line: 47)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !791, line: 24, baseType: !792)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !793, line: 37, baseType: !794)
!793 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!794 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!795 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !795, line: 48)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !791, line: 25, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !793, line: 39, baseType: !799)
!799 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !801, file: !795, line: 49)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !791, line: 26, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !793, line: 41, baseType: !70)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !795, line: 50)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !791, line: 27, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !793, line: 44, baseType: !379)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !795, line: 52)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !808, line: 58, baseType: !794)
!808 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !810, file: !795, line: 53)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !808, line: 60, baseType: !379)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !795, line: 54)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !808, line: 61, baseType: !379)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !795, line: 55)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !808, line: 62, baseType: !379)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !795, line: 57)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !808, line: 43, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !793, line: 52, baseType: !792)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !795, line: 58)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !808, line: 44, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !793, line: 54, baseType: !798)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !795, line: 59)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !808, line: 45, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !793, line: 56, baseType: !802)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !795, line: 60)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !808, line: 46, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !793, line: 58, baseType: !805)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !795, line: 62)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !808, line: 101, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !793, line: 72, baseType: !379)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !795, line: 63)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !808, line: 87, baseType: !379)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !795, line: 65)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !834, line: 24, baseType: !835)
!834 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !793, line: 38, baseType: !836)
!836 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !838, file: !795, line: 66)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !834, line: 25, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !793, line: 40, baseType: !840)
!840 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !795, line: 67)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !834, line: 26, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !793, line: 42, baseType: !19)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !795, line: 68)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !834, line: 27, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !793, line: 45, baseType: !574)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !848, file: !795, line: 70)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !808, line: 71, baseType: !836)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !795, line: 71)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !808, line: 73, baseType: !574)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !852, file: !795, line: 72)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !808, line: 74, baseType: !574)
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !795, line: 73)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !808, line: 75, baseType: !574)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !795, line: 75)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !808, line: 49, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !793, line: 53, baseType: !835)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !795, line: 76)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !808, line: 50, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !793, line: 55, baseType: !839)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !795, line: 77)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !808, line: 51, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !793, line: 57, baseType: !843)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !795, line: 78)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !808, line: 52, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !793, line: 59, baseType: !846)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !795, line: 80)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !808, line: 102, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !793, line: 73, baseType: !574)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !795, line: 81)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !808, line: 90, baseType: !574)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !875, line: 53)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !874, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!874 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!875 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !875, line: 54)
!877 = !DISubprogram(name: "setlocale", scope: !874, file: !874, line: 122, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!646, !70, !398}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !875, line: 55)
!881 = !DISubprogram(name: "localeconv", scope: !874, file: !874, line: 125, type: !882, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !888, line: 64)
!886 = !DISubprogram(name: "isalnum", scope: !887, file: !887, line: 108, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!888 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !888, line: 65)
!890 = !DISubprogram(name: "isalpha", scope: !887, file: !887, line: 109, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !888, line: 66)
!892 = !DISubprogram(name: "iscntrl", scope: !887, file: !887, line: 110, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !888, line: 67)
!894 = !DISubprogram(name: "isdigit", scope: !887, file: !887, line: 111, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !888, line: 68)
!896 = !DISubprogram(name: "isgraph", scope: !887, file: !887, line: 113, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !888, line: 69)
!898 = !DISubprogram(name: "islower", scope: !887, file: !887, line: 112, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !888, line: 70)
!900 = !DISubprogram(name: "isprint", scope: !887, file: !887, line: 114, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !888, line: 71)
!902 = !DISubprogram(name: "ispunct", scope: !887, file: !887, line: 115, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !904, file: !888, line: 72)
!904 = !DISubprogram(name: "isspace", scope: !887, file: !887, line: 116, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !888, line: 73)
!906 = !DISubprogram(name: "isupper", scope: !887, file: !887, line: 117, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !908, file: !888, line: 74)
!908 = !DISubprogram(name: "isxdigit", scope: !887, file: !887, line: 118, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !888, line: 75)
!910 = !DISubprogram(name: "tolower", scope: !887, file: !887, line: 122, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !888, line: 76)
!912 = !DISubprogram(name: "toupper", scope: !887, file: !887, line: 125, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !914, file: !888, line: 87)
!914 = !DISubprogram(name: "isblank", scope: !887, file: !887, line: 130, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !918, line: 127)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !153, line: 63, baseType: !917)
!917 = !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!918 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !918, line: 128)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !153, line: 71, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !922, identifier: "_ZTS6ldiv_t")
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !921, file: !153, line: 69, baseType: !379, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !921, file: !153, line: 70, baseType: !379, size: 64, offset: 64)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !918, line: 130)
!926 = !DISubprogram(name: "abort", scope: !153, file: !153, line: 598, type: !927, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{null}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !930, file: !918, line: 134)
!930 = !DISubprogram(name: "atexit", scope: !153, file: !153, line: 602, type: !931, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DISubroutineType(types: !932)
!932 = !{!70, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !918, line: 137)
!935 = !DISubprogram(name: "at_quick_exit", scope: !153, file: !153, line: 607, type: !931, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !937, file: !918, line: 140)
!937 = !DISubprogram(name: "atof", scope: !153, file: !153, line: 102, type: !396, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !918, line: 141)
!939 = !DISubprogram(name: "atoi", scope: !153, file: !153, line: 105, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!70, !398}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !918, line: 142)
!943 = !DISubprogram(name: "atol", scope: !153, file: !153, line: 108, type: !944, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DISubroutineType(types: !945)
!945 = !{!379, !398}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !947, file: !918, line: 143)
!947 = !DISubprogram(name: "bsearch", scope: !153, file: !153, line: 828, type: !948, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DISubroutineType(types: !949)
!949 = !{!623, !950, !950, !572, !572, !952}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !153, line: 816, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!70, !950, !950}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !918, line: 144)
!957 = !DISubprogram(name: "calloc", scope: !153, file: !153, line: 543, type: !958, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{!623, !572, !572}
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !918, line: 145)
!961 = !DISubprogram(name: "div", scope: !153, file: !153, line: 860, type: !962, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DISubroutineType(types: !963)
!963 = !{!916, !70, !70}
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !918, line: 146)
!965 = !DISubprogram(name: "exit", scope: !153, file: !153, line: 624, type: !966, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !70}
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !918, line: 147)
!969 = !DISubprogram(name: "free", scope: !153, file: !153, line: 555, type: !970, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !623}
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !918, line: 148)
!973 = !DISubprogram(name: "getenv", scope: !153, file: !153, line: 641, type: !974, flags: DIFlagPrototyped, spFlags: 0)
!974 = !DISubroutineType(types: !975)
!975 = !{!646, !398}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !918, line: 149)
!977 = !DISubprogram(name: "labs", scope: !153, file: !153, line: 849, type: !978, flags: DIFlagPrototyped, spFlags: 0)
!978 = !DISubroutineType(types: !979)
!979 = !{!379, !379}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !918, line: 150)
!981 = !DISubprogram(name: "ldiv", scope: !153, file: !153, line: 862, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{!920, !379, !379}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !918, line: 151)
!985 = !DISubprogram(name: "malloc", scope: !153, file: !153, line: 540, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DISubroutineType(types: !987)
!987 = !{!623, !572}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !918, line: 153)
!989 = !DISubprogram(name: "mblen", scope: !153, file: !153, line: 930, type: !990, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DISubroutineType(types: !991)
!991 = !{!70, !398, !572}
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !918, line: 154)
!993 = !DISubprogram(name: "mbstowcs", scope: !153, file: !153, line: 941, type: !994, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DISubroutineType(types: !995)
!995 = !{!572, !539, !575, !572}
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !918, line: 155)
!997 = !DISubprogram(name: "mbtowc", scope: !153, file: !153, line: 933, type: !998, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DISubroutineType(types: !999)
!999 = !{!70, !539, !575, !572}
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !918, line: 157)
!1001 = !DISubprogram(name: "qsort", scope: !153, file: !153, line: 838, type: !1002, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !623, !572, !572, !952}
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1005, file: !918, line: 160)
!1005 = !DISubprogram(name: "quick_exit", scope: !153, file: !153, line: 630, type: !966, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1007, file: !918, line: 163)
!1007 = !DISubprogram(name: "rand", scope: !153, file: !153, line: 454, type: !1008, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!70}
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1011, file: !918, line: 164)
!1011 = !DISubprogram(name: "realloc", scope: !153, file: !153, line: 551, type: !1012, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!623, !623, !572}
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !918, line: 165)
!1015 = !DISubprogram(name: "srand", scope: !153, file: !153, line: 456, type: !1016, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !19}
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !918, line: 166)
!1019 = !DISubprogram(name: "strtod", scope: !153, file: !153, line: 118, type: !1020, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!162, !575, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !918, line: 167)
!1025 = !DISubprogram(name: "strtol", scope: !153, file: !153, line: 177, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!379, !575, !1022, !70}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !918, line: 168)
!1029 = !DISubprogram(name: "strtoul", scope: !153, file: !153, line: 181, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!574, !575, !1022, !70}
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !918, line: 169)
!1033 = !DISubprogram(name: "system", scope: !153, file: !153, line: 791, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !918, line: 171)
!1035 = !DISubprogram(name: "wcstombs", scope: !153, file: !153, line: 945, type: !1036, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!572, !645, !549, !572}
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !918, line: 172)
!1039 = !DISubprogram(name: "wctomb", scope: !153, file: !153, line: 937, type: !1040, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!70, !646, !538}
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1043, file: !918, line: 200)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !153, line: 81, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1045, identifier: "_ZTS7lldiv_t")
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1044, file: !153, line: 79, baseType: !342, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1044, file: !153, line: 80, baseType: !342, size: 64, offset: 64)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1049, file: !918, line: 206)
!1049 = !DISubprogram(name: "_Exit", scope: !153, file: !153, line: 636, type: !966, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1051, file: !918, line: 210)
!1051 = !DISubprogram(name: "llabs", scope: !153, file: !153, line: 852, type: !1052, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!342, !342}
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1055, file: !918, line: 216)
!1055 = !DISubprogram(name: "lldiv", scope: !153, file: !153, line: 866, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1043, !342, !342}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1059, file: !918, line: 227)
!1059 = !DISubprogram(name: "atoll", scope: !153, file: !153, line: 113, type: !1060, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!342, !398}
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1063, file: !918, line: 228)
!1063 = !DISubprogram(name: "strtoll", scope: !153, file: !153, line: 201, type: !1064, flags: DIFlagPrototyped, spFlags: 0)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!342, !575, !1022, !70}
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1067, file: !918, line: 229)
!1067 = !DISubprogram(name: "strtoull", scope: !153, file: !153, line: 206, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!770, !575, !1022, !70}
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1071, file: !918, line: 231)
!1071 = !DISubprogram(name: "strtof", scope: !153, file: !153, line: 124, type: !1072, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!36, !575, !1022}
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1075, file: !918, line: 232)
!1075 = !DISubprogram(name: "strtold", scope: !153, file: !153, line: 127, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!231, !575, !1022}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !918, line: 240)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !918, line: 242)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !918, line: 244)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1082, file: !918, line: 245)
!1082 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !758, file: !918, line: 213, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !918, line: 246)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !918, line: 248)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !918, line: 249)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1063, file: !918, line: 250)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !918, line: 251)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !918, line: 252)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1090, file: !1092, line: 98)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1091, line: 7, baseType: !532)
!1091 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1092 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1094, file: !1092, line: 99)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1095, line: 84, baseType: !1096)
!1095 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1097, line: 14, baseType: !1098)
!1097 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1097, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1100, file: !1092, line: 101)
!1100 = !DISubprogram(name: "clearerr", scope: !1095, file: !1095, line: 786, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !1092, line: 102)
!1105 = !DISubprogram(name: "fclose", scope: !1095, file: !1095, line: 178, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!70, !1103}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !1092, line: 103)
!1109 = !DISubprogram(name: "feof", scope: !1095, file: !1095, line: 788, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1111, file: !1092, line: 104)
!1111 = !DISubprogram(name: "ferror", scope: !1095, file: !1095, line: 790, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1113, file: !1092, line: 105)
!1113 = !DISubprogram(name: "fflush", scope: !1095, file: !1095, line: 230, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1115, file: !1092, line: 106)
!1115 = !DISubprogram(name: "fgetc", scope: !1095, file: !1095, line: 513, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1092, line: 107)
!1117 = !DISubprogram(name: "fgetpos", scope: !1095, file: !1095, line: 760, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!70, !1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1103)
!1121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1124, file: !1092, line: 108)
!1124 = !DISubprogram(name: "fgets", scope: !1095, file: !1095, line: 592, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!646, !645, !70, !1120}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !1092, line: 109)
!1128 = !DISubprogram(name: "fopen", scope: !1095, file: !1095, line: 258, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1103, !575, !575}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1132, file: !1092, line: 110)
!1132 = !DISubprogram(name: "fprintf", scope: !1095, file: !1095, line: 350, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!70, !1120, !575, null}
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1136, file: !1092, line: 111)
!1136 = !DISubprogram(name: "fputc", scope: !1095, file: !1095, line: 549, type: !1137, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!70, !70, !1103}
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !1092, line: 112)
!1140 = !DISubprogram(name: "fputs", scope: !1095, file: !1095, line: 655, type: !1141, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!70, !575, !1120}
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1144, file: !1092, line: 113)
!1144 = !DISubprogram(name: "fread", scope: !1095, file: !1095, line: 675, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!572, !1147, !572, !572, !1120}
!1147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !623)
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1149, file: !1092, line: 114)
!1149 = !DISubprogram(name: "freopen", scope: !1095, file: !1095, line: 265, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!1103, !575, !575, !1120}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1153, file: !1092, line: 115)
!1153 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1095, file: !1095, line: 434, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1155, file: !1092, line: 116)
!1155 = !DISubprogram(name: "fseek", scope: !1095, file: !1095, line: 713, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!70, !1103, !379, !70}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !1092, line: 117)
!1159 = !DISubprogram(name: "fsetpos", scope: !1095, file: !1095, line: 765, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!70, !1103, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1165, file: !1092, line: 118)
!1165 = !DISubprogram(name: "ftell", scope: !1095, file: !1095, line: 718, type: !1166, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!379, !1103}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1169, file: !1092, line: 119)
!1169 = !DISubprogram(name: "fwrite", scope: !1095, file: !1095, line: 681, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!572, !1172, !572, !572, !1120}
!1172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !950)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1174, file: !1092, line: 120)
!1174 = !DISubprogram(name: "getc", scope: !1095, file: !1095, line: 514, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1176, file: !1092, line: 121)
!1176 = !DISubprogram(name: "getchar", scope: !1095, file: !1095, line: 520, type: !1008, flags: DIFlagPrototyped, spFlags: 0)
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1178, file: !1092, line: 124)
!1178 = !DISubprogram(name: "gets", scope: !1095, file: !1095, line: 605, type: !1179, flags: DIFlagPrototyped, spFlags: 0)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!646, !646}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1182, file: !1092, line: 126)
!1182 = !DISubprogram(name: "perror", scope: !1095, file: !1095, line: 804, type: !1183, flags: DIFlagPrototyped, spFlags: 0)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !398}
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !1092, line: 127)
!1186 = !DISubprogram(name: "printf", scope: !1095, file: !1095, line: 356, type: !1187, flags: DIFlagPrototyped, spFlags: 0)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!70, !575, null}
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !1092, line: 128)
!1190 = !DISubprogram(name: "putc", scope: !1095, file: !1095, line: 550, type: !1137, flags: DIFlagPrototyped, spFlags: 0)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1192, file: !1092, line: 129)
!1192 = !DISubprogram(name: "putchar", scope: !1095, file: !1095, line: 556, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !1092, line: 130)
!1194 = !DISubprogram(name: "puts", scope: !1095, file: !1095, line: 661, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1196, file: !1092, line: 131)
!1196 = !DISubprogram(name: "remove", scope: !1095, file: !1095, line: 152, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1198, file: !1092, line: 132)
!1198 = !DISubprogram(name: "rename", scope: !1095, file: !1095, line: 154, type: !1199, flags: DIFlagPrototyped, spFlags: 0)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!70, !398, !398}
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1202, file: !1092, line: 133)
!1202 = !DISubprogram(name: "rewind", scope: !1095, file: !1095, line: 723, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1204, file: !1092, line: 134)
!1204 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1095, file: !1095, line: 437, type: !1187, flags: DIFlagPrototyped, spFlags: 0)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1206, file: !1092, line: 135)
!1206 = !DISubprogram(name: "setbuf", scope: !1095, file: !1095, line: 328, type: !1207, flags: DIFlagPrototyped, spFlags: 0)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !1120, !645}
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1210, file: !1092, line: 136)
!1210 = !DISubprogram(name: "setvbuf", scope: !1095, file: !1095, line: 332, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!70, !1120, !645, !70, !572}
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1214, file: !1092, line: 137)
!1214 = !DISubprogram(name: "sprintf", scope: !1095, file: !1095, line: 358, type: !1215, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!70, !645, !575, null}
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1218, file: !1092, line: 138)
!1218 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1095, file: !1095, line: 439, type: !1219, flags: DIFlagPrototyped, spFlags: 0)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!70, !575, !575, null}
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1222, file: !1092, line: 139)
!1222 = !DISubprogram(name: "tmpfile", scope: !1095, file: !1095, line: 188, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1103}
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1226, file: !1092, line: 141)
!1226 = !DISubprogram(name: "tmpnam", scope: !1095, file: !1095, line: 205, type: !1179, flags: DIFlagPrototyped, spFlags: 0)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1228, file: !1092, line: 143)
!1228 = !DISubprogram(name: "ungetc", scope: !1095, file: !1095, line: 668, type: !1137, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1230, file: !1092, line: 144)
!1230 = !DISubprogram(name: "vfprintf", scope: !1095, file: !1095, line: 365, type: !1231, flags: DIFlagPrototyped, spFlags: 0)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!70, !1120, !575, !616}
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1234, file: !1092, line: 145)
!1234 = !DISubprogram(name: "vprintf", scope: !1095, file: !1095, line: 371, type: !1235, flags: DIFlagPrototyped, spFlags: 0)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!70, !575, !616}
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1238, file: !1092, line: 146)
!1238 = !DISubprogram(name: "vsprintf", scope: !1095, file: !1095, line: 373, type: !1239, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!70, !645, !575, !616}
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1242, file: !1092, line: 175)
!1242 = !DISubprogram(name: "snprintf", scope: !1095, file: !1095, line: 378, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!70, !645, !572, !575, null}
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1246, file: !1092, line: 176)
!1246 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1095, file: !1095, line: 479, type: !1231, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1248, file: !1092, line: 177)
!1248 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1095, file: !1095, line: 484, type: !1235, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1250, file: !1092, line: 178)
!1250 = !DISubprogram(name: "vsnprintf", scope: !1095, file: !1095, line: 382, type: !1251, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!70, !645, !572, !575, !616}
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !758, entity: !1254, file: !1092, line: 179)
!1254 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1095, file: !1095, line: 487, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!70, !575, !575, !616}
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1242, file: !1092, line: 185)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1246, file: !1092, line: 186)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1248, file: !1092, line: 187)
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1250, file: !1092, line: 188)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1254, file: !1092, line: 189)
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1267, line: 82)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1264, line: 48, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!1267 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1269, file: !1267, line: 83)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1270, line: 38, baseType: !574)
!1270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !1267, line: 84)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !1267, line: 86)
!1273 = !DISubprogram(name: "iswalnum", scope: !1270, file: !1270, line: 95, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1275, file: !1267, line: 87)
!1275 = !DISubprogram(name: "iswalpha", scope: !1270, file: !1270, line: 101, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1277, file: !1267, line: 89)
!1277 = !DISubprogram(name: "iswblank", scope: !1270, file: !1270, line: 146, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1267, line: 91)
!1279 = !DISubprogram(name: "iswcntrl", scope: !1270, file: !1270, line: 104, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1281, file: !1267, line: 92)
!1281 = !DISubprogram(name: "iswctype", scope: !1270, file: !1270, line: 159, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!70, !518, !1269}
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1285, file: !1267, line: 93)
!1285 = !DISubprogram(name: "iswdigit", scope: !1270, file: !1270, line: 108, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !1267, line: 94)
!1287 = !DISubprogram(name: "iswgraph", scope: !1270, file: !1270, line: 112, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1289, file: !1267, line: 95)
!1289 = !DISubprogram(name: "iswlower", scope: !1270, file: !1270, line: 117, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1291, file: !1267, line: 96)
!1291 = !DISubprogram(name: "iswprint", scope: !1270, file: !1270, line: 120, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1293, file: !1267, line: 97)
!1293 = !DISubprogram(name: "iswpunct", scope: !1270, file: !1270, line: 125, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1295, file: !1267, line: 98)
!1295 = !DISubprogram(name: "iswspace", scope: !1270, file: !1270, line: 130, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !1267, line: 99)
!1297 = !DISubprogram(name: "iswupper", scope: !1270, file: !1270, line: 135, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1299, file: !1267, line: 100)
!1299 = !DISubprogram(name: "iswxdigit", scope: !1270, file: !1270, line: 140, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1267, line: 101)
!1301 = !DISubprogram(name: "towctrans", scope: !1264, file: !1264, line: 55, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!518, !518, !1263}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1305, file: !1267, line: 102)
!1305 = !DISubprogram(name: "towlower", scope: !1270, file: !1270, line: 166, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!518, !518}
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1267, line: 103)
!1309 = !DISubprogram(name: "towupper", scope: !1270, file: !1270, line: 169, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1267, line: 104)
!1311 = !DISubprogram(name: "wctrans", scope: !1264, file: !1264, line: 52, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1263, !398}
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1267, line: 105)
!1315 = !DISubprogram(name: "wctype", scope: !1270, file: !1270, line: 155, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1269, !398}
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1323, line: 77)
!1319 = !DISubprogram(name: "memchr", scope: !1320, file: !1320, line: 89, type: !1321, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!950, !950, !70, !572}
!1323 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1323, line: 78)
!1325 = !DISubprogram(name: "memcmp", scope: !1320, file: !1320, line: 64, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!70, !950, !950, !572}
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1323, line: 79)
!1329 = !DISubprogram(name: "memcpy", scope: !1320, file: !1320, line: 43, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!623, !1147, !1172, !572}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1323, line: 80)
!1333 = !DISubprogram(name: "memmove", scope: !1320, file: !1320, line: 47, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!623, !623, !950, !572}
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1323, line: 81)
!1337 = !DISubprogram(name: "memset", scope: !1320, file: !1320, line: 61, type: !1338, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!623, !623, !70, !572}
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1341, file: !1323, line: 82)
!1341 = !DISubprogram(name: "strcat", scope: !1320, file: !1320, line: 149, type: !1342, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!646, !645, !575}
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1323, line: 83)
!1345 = !DISubprogram(name: "strcmp", scope: !1320, file: !1320, line: 156, type: !1199, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1323, line: 84)
!1347 = !DISubprogram(name: "strcoll", scope: !1320, file: !1320, line: 163, type: !1199, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1323, line: 85)
!1349 = !DISubprogram(name: "strcpy", scope: !1320, file: !1320, line: 141, type: !1342, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1323, line: 86)
!1351 = !DISubprogram(name: "strcspn", scope: !1320, file: !1320, line: 293, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!572, !398, !398}
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1355, file: !1323, line: 87)
!1355 = !DISubprogram(name: "strerror", scope: !1320, file: !1320, line: 419, type: !1356, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!646, !70}
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1323, line: 88)
!1359 = !DISubprogram(name: "strlen", scope: !1320, file: !1320, line: 407, type: !1360, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!572, !398}
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1363, file: !1323, line: 89)
!1363 = !DISubprogram(name: "strncat", scope: !1320, file: !1320, line: 152, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!646, !645, !575, !572}
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1323, line: 90)
!1367 = !DISubprogram(name: "strncmp", scope: !1320, file: !1320, line: 159, type: !1368, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!70, !398, !398, !572}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1371, file: !1323, line: 91)
!1371 = !DISubprogram(name: "strncpy", scope: !1320, file: !1320, line: 144, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1373, file: !1323, line: 92)
!1373 = !DISubprogram(name: "strspn", scope: !1320, file: !1320, line: 297, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1323, line: 93)
!1375 = !DISubprogram(name: "strtok", scope: !1320, file: !1320, line: 356, type: !1342, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1377, file: !1323, line: 94)
!1377 = !DISubprogram(name: "strxfrm", scope: !1320, file: !1320, line: 166, type: !1378, flags: DIFlagPrototyped, spFlags: 0)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!572, !645, !575, !572}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1381, file: !1323, line: 95)
!1381 = !DISubprogram(name: "strchr", scope: !1320, file: !1320, line: 228, type: !1382, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!398, !398, !70}
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1385, file: !1323, line: 96)
!1385 = !DISubprogram(name: "strpbrk", scope: !1320, file: !1320, line: 305, type: !1386, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!398, !398, !398}
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1389, file: !1323, line: 97)
!1389 = !DISubprogram(name: "strrchr", scope: !1320, file: !1320, line: 255, type: !1382, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1391, file: !1323, line: 98)
!1391 = !DISubprogram(name: "strstr", scope: !1320, file: !1320, line: 332, type: !1386, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !15, entity: !2, file: !9, line: 26)
!1393 = !{i32 7, !"Dwarf Version", i32 5}
!1394 = !{i32 2, !"Debug Info Version", i32 3}
!1395 = !{i32 1, !"wchar_size", i32 4}
!1396 = !{i32 8, !"PIC Level", i32 2}
!1397 = !{i32 7, !"PIE Level", i32 2}
!1398 = !{i32 7, !"uwtable", i32 2}
!1399 = !{i32 7, !"frame-pointer", i32 2}
!1400 = !{!"clang version 16.0.0"}
!1401 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !620, file: !620, type: !927, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !1402)
!1402 = !{}
!1403 = !DILocation(line: 74, column: 25, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1401, file: !3, discriminator: 0)
!1405 = !DILocation(line: 0, scope: !1401)
!1406 = distinct !DISubprogram(name: "LoadParams", linkageName: "_ZN6Camera10LoadParamsEPKc", scope: !1407, file: !9, line: 30, type: !1409, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !1412, retainedNodes: !1402)
!1407 = !DICompositeType(tag: DW_TAG_class_type, name: "Camera", file: !1408, line: 42, size: 1280, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6Camera")
!1408 = !DIFile(filename: "../TrackingBenchmark/CameraModel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "3c500b48be5c6a308af2a7bf4cee9701")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!144, !1411, !398}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1412 = !DISubprogram(name: "LoadParams", linkageName: "_ZN6Camera10LoadParamsEPKc", scope: !1407, file: !1408, line: 55, type: !1409, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1413 = !DILocalVariable(name: "this", arg: 1, scope: !1406, type: !1414, flags: DIFlagArtificial | DIFlagObjectPointer)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1415 = !DILocation(line: 0, scope: !1406)
!1416 = !DILocalVariable(name: "fname", arg: 2, scope: !1406, file: !9, line: 30, type: !398)
!1417 = !DILocation(line: 30, column: 37, scope: !1406)
!1418 = !DILocalVariable(name: "f", scope: !1406, file: !9, line: 32, type: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifstream", scope: !2, file: !80, line: 162, baseType: !1420)
!1420 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ifstream<char, std::char_traits<char> >", scope: !2, file: !1421, line: 1087, size: 4160, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1421 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/fstream.tcc", directory: "")
!1422 = !DILocation(line: 32, column: 11, scope: !1406)
!1423 = !DILocation(line: 32, column: 13, scope: !1406)
!1424 = !DILocation(line: 33, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1406, file: !9, line: 33, column: 5)
!1426 = !DILocation(line: 33, column: 5, scope: !1406)
!1427 = !DILocation(line: 34, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !9, line: 34, column: 2)
!1429 = !DILocation(line: 34, column: 59, scope: !1428)
!1430 = !DILocation(line: 34, column: 56, scope: !1428)
!1431 = !DILocation(line: 34, column: 65, scope: !1428)
!1432 = !DILocation(line: 35, column: 3, scope: !1428)
!1433 = !DILocation(line: 51, column: 1, scope: !1425)
!1434 = !DILocation(line: 37, column: 7, scope: !1406)
!1435 = !DILocation(line: 37, column: 10, scope: !1406)
!1436 = !DILocation(line: 37, column: 4, scope: !1406)
!1437 = !DILocation(line: 37, column: 15, scope: !1406)
!1438 = !DILocation(line: 37, column: 18, scope: !1406)
!1439 = !DILocation(line: 37, column: 12, scope: !1406)
!1440 = !DILocation(line: 37, column: 23, scope: !1406)
!1441 = !DILocation(line: 37, column: 26, scope: !1406)
!1442 = !DILocation(line: 37, column: 20, scope: !1406)
!1443 = !DILocation(line: 37, column: 31, scope: !1406)
!1444 = !DILocation(line: 37, column: 34, scope: !1406)
!1445 = !DILocation(line: 37, column: 28, scope: !1406)
!1446 = !DILocation(line: 37, column: 39, scope: !1406)
!1447 = !DILocation(line: 37, column: 36, scope: !1406)
!1448 = !DILocation(line: 38, column: 7, scope: !1406)
!1449 = !DILocation(line: 38, column: 4, scope: !1406)
!1450 = !DILocation(line: 38, column: 16, scope: !1406)
!1451 = !DILocation(line: 38, column: 13, scope: !1406)
!1452 = !DILocation(line: 38, column: 25, scope: !1406)
!1453 = !DILocation(line: 38, column: 22, scope: !1406)
!1454 = !DILocation(line: 38, column: 34, scope: !1406)
!1455 = !DILocation(line: 38, column: 31, scope: !1406)
!1456 = !DILocation(line: 38, column: 43, scope: !1406)
!1457 = !DILocation(line: 38, column: 40, scope: !1406)
!1458 = !DILocation(line: 39, column: 7, scope: !1406)
!1459 = !DILocation(line: 39, column: 4, scope: !1406)
!1460 = !DILocation(line: 39, column: 23, scope: !1406)
!1461 = !DILocation(line: 39, column: 20, scope: !1406)
!1462 = !DILocation(line: 39, column: 39, scope: !1406)
!1463 = !DILocation(line: 39, column: 36, scope: !1406)
!1464 = !DILocation(line: 39, column: 55, scope: !1406)
!1465 = !DILocation(line: 39, column: 52, scope: !1406)
!1466 = !DILocation(line: 39, column: 71, scope: !1406)
!1467 = !DILocation(line: 39, column: 68, scope: !1406)
!1468 = !DILocation(line: 39, column: 87, scope: !1406)
!1469 = !DILocation(line: 39, column: 84, scope: !1406)
!1470 = !DILocation(line: 39, column: 103, scope: !1406)
!1471 = !DILocation(line: 39, column: 100, scope: !1406)
!1472 = !DILocation(line: 39, column: 119, scope: !1406)
!1473 = !DILocation(line: 39, column: 116, scope: !1406)
!1474 = !DILocation(line: 39, column: 135, scope: !1406)
!1475 = !DILocation(line: 39, column: 132, scope: !1406)
!1476 = !DILocation(line: 40, column: 7, scope: !1406)
!1477 = !DILocation(line: 40, column: 14, scope: !1406)
!1478 = !DILocation(line: 40, column: 4, scope: !1406)
!1479 = !DILocation(line: 40, column: 19, scope: !1406)
!1480 = !DILocation(line: 40, column: 26, scope: !1406)
!1481 = !DILocation(line: 40, column: 16, scope: !1406)
!1482 = !DILocation(line: 40, column: 31, scope: !1406)
!1483 = !DILocation(line: 40, column: 38, scope: !1406)
!1484 = !DILocation(line: 40, column: 28, scope: !1406)
!1485 = !DILocation(line: 41, column: 7, scope: !1406)
!1486 = !DILocation(line: 41, column: 15, scope: !1406)
!1487 = !DILocation(line: 41, column: 4, scope: !1406)
!1488 = !DILocation(line: 41, column: 20, scope: !1406)
!1489 = !DILocation(line: 41, column: 28, scope: !1406)
!1490 = !DILocation(line: 41, column: 17, scope: !1406)
!1491 = !DILocation(line: 41, column: 33, scope: !1406)
!1492 = !DILocation(line: 41, column: 41, scope: !1406)
!1493 = !DILocation(line: 41, column: 30, scope: !1406)
!1494 = !DILocation(line: 44, column: 16, scope: !1406)
!1495 = !DILocation(line: 44, column: 2, scope: !1406)
!1496 = !DILocation(line: 44, column: 14, scope: !1406)
!1497 = !DILocation(line: 44, column: 44, scope: !1406)
!1498 = !DILocation(line: 44, column: 30, scope: !1406)
!1499 = !DILocation(line: 44, column: 42, scope: !1406)
!1500 = !DILocation(line: 44, column: 72, scope: !1406)
!1501 = !DILocation(line: 44, column: 58, scope: !1406)
!1502 = !DILocation(line: 44, column: 70, scope: !1406)
!1503 = !DILocation(line: 44, column: 100, scope: !1406)
!1504 = !DILocation(line: 44, column: 107, scope: !1406)
!1505 = !DILocation(line: 44, column: 86, scope: !1406)
!1506 = !DILocation(line: 44, column: 98, scope: !1406)
!1507 = !DILocation(line: 45, column: 16, scope: !1406)
!1508 = !DILocation(line: 45, column: 2, scope: !1406)
!1509 = !DILocation(line: 45, column: 14, scope: !1406)
!1510 = !DILocation(line: 45, column: 44, scope: !1406)
!1511 = !DILocation(line: 45, column: 30, scope: !1406)
!1512 = !DILocation(line: 45, column: 42, scope: !1406)
!1513 = !DILocation(line: 45, column: 72, scope: !1406)
!1514 = !DILocation(line: 45, column: 58, scope: !1406)
!1515 = !DILocation(line: 45, column: 70, scope: !1406)
!1516 = !DILocation(line: 45, column: 100, scope: !1406)
!1517 = !DILocation(line: 45, column: 107, scope: !1406)
!1518 = !DILocation(line: 45, column: 86, scope: !1406)
!1519 = !DILocation(line: 45, column: 98, scope: !1406)
!1520 = !DILocation(line: 46, column: 16, scope: !1406)
!1521 = !DILocation(line: 46, column: 2, scope: !1406)
!1522 = !DILocation(line: 46, column: 14, scope: !1406)
!1523 = !DILocation(line: 46, column: 44, scope: !1406)
!1524 = !DILocation(line: 46, column: 30, scope: !1406)
!1525 = !DILocation(line: 46, column: 42, scope: !1406)
!1526 = !DILocation(line: 46, column: 72, scope: !1406)
!1527 = !DILocation(line: 46, column: 58, scope: !1406)
!1528 = !DILocation(line: 46, column: 70, scope: !1406)
!1529 = !DILocation(line: 46, column: 100, scope: !1406)
!1530 = !DILocation(line: 46, column: 107, scope: !1406)
!1531 = !DILocation(line: 46, column: 86, scope: !1406)
!1532 = !DILocation(line: 46, column: 98, scope: !1406)
!1533 = !DILocalVariable(name: "m2", scope: !1406, file: !9, line: 47, type: !32)
!1534 = !DILocation(line: 47, column: 11, scope: !1406)
!1535 = !DILocation(line: 47, column: 24, scope: !1406)
!1536 = !DILocation(line: 47, column: 16, scope: !1406)
!1537 = !DILocation(line: 49, column: 10, scope: !1406)
!1538 = !DILocation(line: 49, column: 2, scope: !1406)
!1539 = !DILocation(line: 49, column: 6, scope: !1406)
!1540 = !DILocation(line: 49, column: 8, scope: !1406)
!1541 = !DILocation(line: 49, column: 27, scope: !1406)
!1542 = !DILocation(line: 49, column: 19, scope: !1406)
!1543 = !DILocation(line: 49, column: 23, scope: !1406)
!1544 = !DILocation(line: 49, column: 25, scope: !1406)
!1545 = !DILocation(line: 49, column: 44, scope: !1406)
!1546 = !DILocation(line: 49, column: 36, scope: !1406)
!1547 = !DILocation(line: 49, column: 40, scope: !1406)
!1548 = !DILocation(line: 49, column: 42, scope: !1406)
!1549 = !DILocation(line: 50, column: 2, scope: !1406)
!1550 = !DILocation(line: 51, column: 1, scope: !1406)
!1551 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !32, file: !18, line: 66, type: !67, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !66, retainedNodes: !1402)
!1552 = !DILocalVariable(name: "this", arg: 1, scope: !1551, type: !31, flags: DIFlagArtificial | DIFlagObjectPointer)
!1553 = !DILocation(line: 0, scope: !1551)
!1554 = !DILocalVariable(name: "r", arg: 2, scope: !1551, file: !18, line: 66, type: !70)
!1555 = !DILocation(line: 66, column: 27, scope: !1551)
!1556 = !DILocalVariable(name: "c", arg: 3, scope: !1551, file: !18, line: 66, type: !70)
!1557 = !DILocation(line: 66, column: 34, scope: !1551)
!1558 = !DILocation(line: 66, column: 45, scope: !1551)
!1559 = !DILocation(line: 66, column: 50, scope: !1551)
!1560 = !DILocation(line: 66, column: 53, scope: !1551)
!1561 = !DILocation(line: 66, column: 38, scope: !1551)
!1562 = distinct !DISubprogram(name: "Inverse<float>", linkageName: "_Z7InverseIfE7DMatrixIT_ERKS2_", scope: !18, file: !18, line: 233, type: !1563, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !83, retainedNodes: !1402)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!32, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1567 = !DILocalVariable(name: "dm", arg: 1, scope: !1562, file: !18, line: 233, type: !1565)
!1568 = !DILocation(line: 233, column: 38, scope: !1562)
!1569 = !DILocation(line: 235, column: 2, scope: !1562)
!1570 = !DILocalVariable(name: "r", scope: !1562, file: !18, line: 235, type: !32)
!1571 = !DILocation(line: 235, column: 13, scope: !1562)
!1572 = !DILocalVariable(name: "m", scope: !1562, file: !18, line: 235, type: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!1574 = !DILocation(line: 235, column: 17, scope: !1562)
!1575 = !DILocation(line: 235, column: 38, scope: !1562)
!1576 = !DILocation(line: 236, column: 4, scope: !1562)
!1577 = !DILocalVariable(name: "k1", scope: !1562, file: !18, line: 237, type: !36)
!1578 = !DILocation(line: 237, column: 4, scope: !1562)
!1579 = !DILocation(line: 237, column: 9, scope: !1562)
!1580 = !DILocation(line: 237, column: 18, scope: !1562)
!1581 = !DILocation(line: 237, column: 27, scope: !1562)
!1582 = !DILocation(line: 237, column: 36, scope: !1562)
!1583 = !DILocation(line: 237, column: 34, scope: !1562)
!1584 = !DILocation(line: 237, column: 25, scope: !1562)
!1585 = !DILocalVariable(name: "k2", scope: !1562, file: !18, line: 238, type: !36)
!1586 = !DILocation(line: 238, column: 4, scope: !1562)
!1587 = !DILocation(line: 238, column: 9, scope: !1562)
!1588 = !DILocation(line: 238, column: 18, scope: !1562)
!1589 = !DILocation(line: 238, column: 27, scope: !1562)
!1590 = !DILocation(line: 238, column: 36, scope: !1562)
!1591 = !DILocation(line: 238, column: 34, scope: !1562)
!1592 = !DILocation(line: 238, column: 25, scope: !1562)
!1593 = !DILocalVariable(name: "k3", scope: !1562, file: !18, line: 239, type: !36)
!1594 = !DILocation(line: 239, column: 4, scope: !1562)
!1595 = !DILocation(line: 239, column: 9, scope: !1562)
!1596 = !DILocation(line: 239, column: 18, scope: !1562)
!1597 = !DILocation(line: 239, column: 27, scope: !1562)
!1598 = !DILocation(line: 239, column: 36, scope: !1562)
!1599 = !DILocation(line: 239, column: 34, scope: !1562)
!1600 = !DILocation(line: 239, column: 25, scope: !1562)
!1601 = !DILocalVariable(name: "c", scope: !1562, file: !18, line: 240, type: !36)
!1602 = !DILocation(line: 240, column: 4, scope: !1562)
!1603 = !DILocation(line: 240, column: 18, scope: !1562)
!1604 = !DILocation(line: 240, column: 27, scope: !1562)
!1605 = !DILocation(line: 240, column: 32, scope: !1562)
!1606 = !DILocation(line: 240, column: 41, scope: !1562)
!1607 = !DILocation(line: 240, column: 39, scope: !1562)
!1608 = !DILocation(line: 240, column: 30, scope: !1562)
!1609 = !DILocation(line: 240, column: 46, scope: !1562)
!1610 = !DILocation(line: 240, column: 55, scope: !1562)
!1611 = !DILocation(line: 240, column: 44, scope: !1562)
!1612 = !DILocation(line: 240, column: 15, scope: !1562)
!1613 = !DILocation(line: 241, column: 11, scope: !1562)
!1614 = !DILocation(line: 241, column: 15, scope: !1562)
!1615 = !DILocation(line: 241, column: 13, scope: !1562)
!1616 = !DILocation(line: 241, column: 2, scope: !1562)
!1617 = !DILocation(line: 241, column: 9, scope: !1562)
!1618 = !DILocation(line: 242, column: 11, scope: !1562)
!1619 = !DILocation(line: 242, column: 16, scope: !1562)
!1620 = !DILocation(line: 242, column: 25, scope: !1562)
!1621 = !DILocation(line: 242, column: 34, scope: !1562)
!1622 = !DILocation(line: 242, column: 43, scope: !1562)
!1623 = !DILocation(line: 242, column: 41, scope: !1562)
!1624 = !DILocation(line: 242, column: 32, scope: !1562)
!1625 = !DILocation(line: 242, column: 13, scope: !1562)
!1626 = !DILocation(line: 242, column: 2, scope: !1562)
!1627 = !DILocation(line: 242, column: 9, scope: !1562)
!1628 = !DILocation(line: 243, column: 11, scope: !1562)
!1629 = !DILocation(line: 243, column: 16, scope: !1562)
!1630 = !DILocation(line: 243, column: 25, scope: !1562)
!1631 = !DILocation(line: 243, column: 34, scope: !1562)
!1632 = !DILocation(line: 243, column: 43, scope: !1562)
!1633 = !DILocation(line: 243, column: 41, scope: !1562)
!1634 = !DILocation(line: 243, column: 32, scope: !1562)
!1635 = !DILocation(line: 243, column: 13, scope: !1562)
!1636 = !DILocation(line: 243, column: 2, scope: !1562)
!1637 = !DILocation(line: 243, column: 9, scope: !1562)
!1638 = !DILocation(line: 244, column: 11, scope: !1562)
!1639 = !DILocation(line: 244, column: 16, scope: !1562)
!1640 = !DILocation(line: 244, column: 15, scope: !1562)
!1641 = !DILocation(line: 244, column: 13, scope: !1562)
!1642 = !DILocation(line: 244, column: 2, scope: !1562)
!1643 = !DILocation(line: 244, column: 9, scope: !1562)
!1644 = !DILocation(line: 245, column: 11, scope: !1562)
!1645 = !DILocation(line: 245, column: 16, scope: !1562)
!1646 = !DILocation(line: 245, column: 25, scope: !1562)
!1647 = !DILocation(line: 245, column: 34, scope: !1562)
!1648 = !DILocation(line: 245, column: 43, scope: !1562)
!1649 = !DILocation(line: 245, column: 41, scope: !1562)
!1650 = !DILocation(line: 245, column: 32, scope: !1562)
!1651 = !DILocation(line: 245, column: 13, scope: !1562)
!1652 = !DILocation(line: 245, column: 2, scope: !1562)
!1653 = !DILocation(line: 245, column: 9, scope: !1562)
!1654 = !DILocation(line: 246, column: 11, scope: !1562)
!1655 = !DILocation(line: 246, column: 16, scope: !1562)
!1656 = !DILocation(line: 246, column: 25, scope: !1562)
!1657 = !DILocation(line: 246, column: 34, scope: !1562)
!1658 = !DILocation(line: 246, column: 43, scope: !1562)
!1659 = !DILocation(line: 246, column: 41, scope: !1562)
!1660 = !DILocation(line: 246, column: 32, scope: !1562)
!1661 = !DILocation(line: 246, column: 13, scope: !1562)
!1662 = !DILocation(line: 246, column: 2, scope: !1562)
!1663 = !DILocation(line: 246, column: 9, scope: !1562)
!1664 = !DILocation(line: 247, column: 11, scope: !1562)
!1665 = !DILocation(line: 247, column: 15, scope: !1562)
!1666 = !DILocation(line: 247, column: 13, scope: !1562)
!1667 = !DILocation(line: 247, column: 2, scope: !1562)
!1668 = !DILocation(line: 247, column: 9, scope: !1562)
!1669 = !DILocation(line: 248, column: 11, scope: !1562)
!1670 = !DILocation(line: 248, column: 16, scope: !1562)
!1671 = !DILocation(line: 248, column: 25, scope: !1562)
!1672 = !DILocation(line: 248, column: 34, scope: !1562)
!1673 = !DILocation(line: 248, column: 43, scope: !1562)
!1674 = !DILocation(line: 248, column: 41, scope: !1562)
!1675 = !DILocation(line: 248, column: 32, scope: !1562)
!1676 = !DILocation(line: 248, column: 13, scope: !1562)
!1677 = !DILocation(line: 248, column: 2, scope: !1562)
!1678 = !DILocation(line: 248, column: 9, scope: !1562)
!1679 = !DILocation(line: 249, column: 11, scope: !1562)
!1680 = !DILocation(line: 249, column: 16, scope: !1562)
!1681 = !DILocation(line: 249, column: 25, scope: !1562)
!1682 = !DILocation(line: 249, column: 34, scope: !1562)
!1683 = !DILocation(line: 249, column: 43, scope: !1562)
!1684 = !DILocation(line: 249, column: 41, scope: !1562)
!1685 = !DILocation(line: 249, column: 32, scope: !1562)
!1686 = !DILocation(line: 249, column: 13, scope: !1562)
!1687 = !DILocation(line: 249, column: 2, scope: !1562)
!1688 = !DILocation(line: 249, column: 9, scope: !1562)
!1689 = !DILocalVariable(name: "v", scope: !1562, file: !18, line: 250, type: !85)
!1690 = !DILocation(line: 250, column: 13, scope: !1562)
!1691 = !DILocation(line: 250, column: 16, scope: !1562)
!1692 = !DILocation(line: 250, column: 15, scope: !1562)
!1693 = !DILocation(line: 250, column: 25, scope: !1562)
!1694 = !DILocation(line: 250, column: 24, scope: !1562)
!1695 = !DILocation(line: 250, column: 34, scope: !1562)
!1696 = !DILocation(line: 250, column: 33, scope: !1562)
!1697 = !DILocalVariable(name: "t", scope: !1562, file: !18, line: 251, type: !85)
!1698 = !DILocation(line: 251, column: 13, scope: !1562)
!1699 = !DILocation(line: 251, column: 19, scope: !1562)
!1700 = !DILocation(line: 252, column: 13, scope: !1562)
!1701 = !DILocation(line: 252, column: 2, scope: !1562)
!1702 = !DILocation(line: 252, column: 9, scope: !1562)
!1703 = !DILocation(line: 252, column: 28, scope: !1562)
!1704 = !DILocation(line: 252, column: 17, scope: !1562)
!1705 = !DILocation(line: 252, column: 24, scope: !1562)
!1706 = !DILocation(line: 252, column: 42, scope: !1562)
!1707 = !DILocation(line: 252, column: 31, scope: !1562)
!1708 = !DILocation(line: 252, column: 38, scope: !1562)
!1709 = !DILocation(line: 253, column: 2, scope: !1562)
!1710 = !DILocation(line: 254, column: 1, scope: !1562)
!1711 = distinct !DISubprogram(name: "~DMatrix", linkageName: "_ZN7DMatrixIfED2Ev", scope: !32, file: !18, line: 57, type: !41, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !63, retainedNodes: !1402)
!1712 = !DILocalVariable(name: "this", arg: 1, scope: !1711, type: !31, flags: DIFlagArtificial | DIFlagObjectPointer)
!1713 = !DILocation(line: 0, scope: !1711)
!1714 = !DILocation(line: 57, column: 14, scope: !1711)
!1715 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2Ev", scope: !32, file: !18, line: 39, type: !41, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !40, retainedNodes: !1402)
!1716 = !DILocalVariable(name: "this", arg: 1, scope: !1715, type: !31, flags: DIFlagArtificial | DIFlagObjectPointer)
!1717 = !DILocation(line: 0, scope: !1715)
!1718 = !DILocation(line: 39, column: 13, scope: !1715)
!1719 = distinct !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !32, file: !18, line: 60, type: !41, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !64, retainedNodes: !1402)
!1720 = !DILocalVariable(name: "this", arg: 1, scope: !1719, type: !31, flags: DIFlagArtificial | DIFlagObjectPointer)
!1721 = !DILocation(line: 0, scope: !1719)
!1722 = !DILocation(line: 60, column: 23, scope: !1719)
!1723 = !DILocation(line: 60, column: 16, scope: !1719)
!1724 = !DILocation(line: 60, column: 49, scope: !1719)
!1725 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Efff", scope: !85, file: !86, line: 41, type: !96, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !95, retainedNodes: !1402)
!1726 = !DILocalVariable(name: "this", arg: 1, scope: !1725, type: !1727, flags: DIFlagArtificial | DIFlagObjectPointer)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1728 = !DILocation(line: 0, scope: !1725)
!1729 = !DILocalVariable(name: "xv", arg: 2, scope: !1725, file: !86, line: 41, type: !36)
!1730 = !DILocation(line: 41, column: 19, scope: !1725)
!1731 = !DILocalVariable(name: "yv", arg: 3, scope: !1725, file: !86, line: 41, type: !36)
!1732 = !DILocation(line: 41, column: 25, scope: !1725)
!1733 = !DILocalVariable(name: "zv", arg: 4, scope: !1725, file: !86, line: 41, type: !36)
!1734 = !DILocation(line: 41, column: 31, scope: !1725)
!1735 = !DILocation(line: 41, column: 42, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1725, file: !86, line: 41, column: 36)
!1737 = !DILocation(line: 41, column: 38, scope: !1736)
!1738 = !DILocation(line: 41, column: 40, scope: !1736)
!1739 = !DILocation(line: 41, column: 51, scope: !1736)
!1740 = !DILocation(line: 41, column: 47, scope: !1736)
!1741 = !DILocation(line: 41, column: 49, scope: !1736)
!1742 = !DILocation(line: 41, column: 59, scope: !1736)
!1743 = !DILocation(line: 41, column: 55, scope: !1736)
!1744 = !DILocation(line: 41, column: 57, scope: !1736)
!1745 = !DILocation(line: 41, column: 63, scope: !1725)
!1746 = distinct !DISubprogram(name: "operator*<float, float>", linkageName: "_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_", scope: !18, file: !18, line: 142, type: !1747, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !1749, retainedNodes: !1402)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!85, !1565, !109}
!1749 = !{!1750, !1751}
!1750 = !DITemplateTypeParameter(name: "T1", type: !36)
!1751 = !DITemplateTypeParameter(name: "T2", type: !36)
!1752 = !DILocalVariable(name: "dm", arg: 1, scope: !1746, file: !18, line: 142, type: !1565)
!1753 = !DILocation(line: 142, column: 49, scope: !1746)
!1754 = !DILocalVariable(name: "v", arg: 2, scope: !1746, file: !18, line: 142, type: !109)
!1755 = !DILocation(line: 142, column: 72, scope: !1746)
!1756 = !DILocation(line: 144, column: 2, scope: !1746)
!1757 = !DILocalVariable(name: "r", scope: !1746, file: !18, line: 144, type: !85)
!1758 = !DILocation(line: 144, column: 14, scope: !1746)
!1759 = !DILocalVariable(name: "m", scope: !1746, file: !18, line: 145, type: !1573)
!1760 = !DILocation(line: 145, column: 15, scope: !1746)
!1761 = !DILocation(line: 145, column: 37, scope: !1746)
!1762 = !DILocation(line: 146, column: 8, scope: !1746)
!1763 = !DILocation(line: 146, column: 17, scope: !1746)
!1764 = !DILocation(line: 146, column: 19, scope: !1746)
!1765 = !DILocation(line: 146, column: 23, scope: !1746)
!1766 = !DILocation(line: 146, column: 32, scope: !1746)
!1767 = !DILocation(line: 146, column: 34, scope: !1746)
!1768 = !DILocation(line: 146, column: 30, scope: !1746)
!1769 = !DILocation(line: 146, column: 21, scope: !1746)
!1770 = !DILocation(line: 146, column: 38, scope: !1746)
!1771 = !DILocation(line: 146, column: 47, scope: !1746)
!1772 = !DILocation(line: 146, column: 49, scope: !1746)
!1773 = !DILocation(line: 146, column: 36, scope: !1746)
!1774 = !DILocation(line: 146, column: 53, scope: !1746)
!1775 = !DILocation(line: 146, column: 51, scope: !1746)
!1776 = !DILocation(line: 146, column: 4, scope: !1746)
!1777 = !DILocation(line: 146, column: 6, scope: !1746)
!1778 = !DILocation(line: 147, column: 8, scope: !1746)
!1779 = !DILocation(line: 147, column: 17, scope: !1746)
!1780 = !DILocation(line: 147, column: 19, scope: !1746)
!1781 = !DILocation(line: 147, column: 23, scope: !1746)
!1782 = !DILocation(line: 147, column: 32, scope: !1746)
!1783 = !DILocation(line: 147, column: 34, scope: !1746)
!1784 = !DILocation(line: 147, column: 30, scope: !1746)
!1785 = !DILocation(line: 147, column: 21, scope: !1746)
!1786 = !DILocation(line: 147, column: 38, scope: !1746)
!1787 = !DILocation(line: 147, column: 47, scope: !1746)
!1788 = !DILocation(line: 147, column: 49, scope: !1746)
!1789 = !DILocation(line: 147, column: 36, scope: !1746)
!1790 = !DILocation(line: 147, column: 53, scope: !1746)
!1791 = !DILocation(line: 147, column: 51, scope: !1746)
!1792 = !DILocation(line: 147, column: 4, scope: !1746)
!1793 = !DILocation(line: 147, column: 6, scope: !1746)
!1794 = !DILocation(line: 148, column: 8, scope: !1746)
!1795 = !DILocation(line: 148, column: 17, scope: !1746)
!1796 = !DILocation(line: 148, column: 19, scope: !1746)
!1797 = !DILocation(line: 148, column: 23, scope: !1746)
!1798 = !DILocation(line: 148, column: 32, scope: !1746)
!1799 = !DILocation(line: 148, column: 34, scope: !1746)
!1800 = !DILocation(line: 148, column: 30, scope: !1746)
!1801 = !DILocation(line: 148, column: 21, scope: !1746)
!1802 = !DILocation(line: 148, column: 38, scope: !1746)
!1803 = !DILocation(line: 148, column: 47, scope: !1746)
!1804 = !DILocation(line: 148, column: 49, scope: !1746)
!1805 = !DILocation(line: 148, column: 36, scope: !1746)
!1806 = !DILocation(line: 148, column: 53, scope: !1746)
!1807 = !DILocation(line: 148, column: 51, scope: !1746)
!1808 = !DILocation(line: 148, column: 4, scope: !1746)
!1809 = !DILocation(line: 148, column: 6, scope: !1746)
!1810 = !DILocation(line: 149, column: 2, scope: !1746)
!1811 = !DILocation(line: 150, column: 1, scope: !1746)
!1812 = distinct !DISubprogram(name: "~Vector3", linkageName: "_ZN7Vector3IfED2Ev", scope: !85, file: !86, line: 44, type: !92, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !102, retainedNodes: !1402)
!1813 = !DILocalVariable(name: "this", arg: 1, scope: !1812, type: !1727, flags: DIFlagArtificial | DIFlagObjectPointer)
!1814 = !DILocation(line: 0, scope: !1812)
!1815 = !DILocation(line: 44, column: 14, scope: !1812)
!1816 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Ev", scope: !85, file: !86, line: 40, type: !92, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !91, retainedNodes: !1402)
!1817 = !DILocalVariable(name: "this", arg: 1, scope: !1816, type: !1727, flags: DIFlagArtificial | DIFlagObjectPointer)
!1818 = !DILocation(line: 0, scope: !1816)
!1819 = !DILocation(line: 40, column: 13, scope: !1816)
!1820 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_CameraModel.cpp", scope: !620, file: !620, type: !1821, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !1402)
!1821 = !DISubroutineType(types: !1402)
!1822 = !DILocation(line: 0, scope: !1820)
