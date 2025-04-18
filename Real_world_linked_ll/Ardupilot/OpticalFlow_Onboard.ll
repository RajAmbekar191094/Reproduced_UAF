; ModuleID = '/home/raj/ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp'
source_filename = "/home/raj/ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%class.Functor = type { ptr, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.Linux::OpticalFlow_Onboard" = type <{ %"class.AP_HAL::OpticalFlow", ptr, %"class.Linux::VideoIn::Frame", ptr, ptr, ptr, i64, %union.pthread_mutex_t, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, i32, i8, [3 x i8], %class.Functor, %class.Vector3, [4 x i8] }>
%"class.AP_HAL::OpticalFlow" = type { ptr }
%"class.Linux::VideoIn::Frame" = type <{ i32, i32, ptr, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%class.Vector3 = type { float, float, float }
%"class.Linux::VideoIn" = type { i32, ptr, i32, i8, i32, i32, i32, i32, i32, i32 }
%"class.AP_HAL::OpticalFlow::Data_Frame" = type { float, float, float, float, i32, i8 }
%struct.Vector2 = type { float, float }

$_ZN5Linux7VideoInC2Ev = comdat any

$_ZNSt6vectorIjSaIjEEC2Ev = comdat any

$_ZNSt6vectorIjSaIjEE5beginEv = comdat any

$_ZNSt6vectorIjSaIjEE3endEv = comdat any

$_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv = comdat any

$_ZNSt6vectorIjSaIjEED2Ev = comdat any

$_ZN7Vector3IfEC2Ev = comdat any

$_ZN7Vector2IfEC2Ev = comdat any

$_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEEC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev = comdat any

$_ZNSaIjEC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIjEC2Ev = comdat any

$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIjSaIjEED2Ev = comdat any

$_ZSt8_DestroyIPjEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm = comdat any

$_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm = comdat any

$_ZNSaIjED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIjED2Ev = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv = comdat any

$_ZTSN6AP_HAL11OpticalFlowE = comdat any

$_ZTIN6AP_HAL11OpticalFlowE = comdat any

@__const._ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE.param = private unnamed_addr constant %struct.sched_param { i32 11 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/video0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [48 x i8] c"OpticalFlow_Onboard: couldn't open video device\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [47 x i8] c"OpticalFlow_Onboard: couldn't set video format\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [43 x i8] c"OpticalFlow_Onboard: format not supported\0A\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [53 x i8] c"OpticalFlow_Onboard: couldn't allocate video buffers\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [42 x i8] c"OpticalFlow_Onboard: failed to init mutex\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [41 x i8] c"OpticalFlow_Onboard: failed to init attr\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [45 x i8] c"OpticalFlow_Onboard: failed to create thread\00", align 1, !dbg !38
@.str.8 = private unnamed_addr constant [58 x i8] c"OpticalFlow_Onboard: couldn't allocate conversion buffer\0A\00", align 1, !dbg !43
@.str.9 = private unnamed_addr constant [52 x i8] c"OpticalFlow_Onboard: couldn't allocate crop buffer\0A\00", align 1, !dbg !48
@.str.10 = private unnamed_addr constant [41 x i8] c"OpticalFlow_Onboard: couldn't get frame\0A\00", align 1, !dbg !53
@_ZTVN5Linux19OpticalFlow_OnboardE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Linux19OpticalFlow_OnboardE, ptr @_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE, ptr @_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN5Linux19OpticalFlow_OnboardE = dso_local constant [30 x i8] c"N5Linux19OpticalFlow_OnboardE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN6AP_HAL11OpticalFlowE = linkonce_odr dso_local constant [23 x i8] c"N6AP_HAL11OpticalFlowE\00", comdat, align 1
@_ZTIN6AP_HAL11OpticalFlowE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6AP_HAL11OpticalFlowE }, comdat, align 8
@_ZTIN5Linux19OpticalFlow_OnboardE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux19OpticalFlow_OnboardE, ptr @_ZTIN6AP_HAL11OpticalFlowE }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !1623 {
  %4 = alloca %class.Functor, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.pthread_attr_t, align 8
  %14 = alloca %struct.sched_param, align 4
  %15 = alloca ptr, align 8
  %16 = alloca %"class.std::vector", align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %21 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr %1, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %2, ptr %24, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1626, metadata !DIExpression()), !dbg !1627
  %25 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1630, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1632, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1634, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1636, metadata !DIExpression()), !dbg !1637
  store i32 1, ptr %10, align 4, !dbg !1637
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1638, metadata !DIExpression()), !dbg !1639
  store i32 0, ptr %11, align 4, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1640, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1642, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1652, metadata !DIExpression()), !dbg !1657
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 @__const._ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE.param, i64 4, i1 false), !dbg !1657
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 8, !dbg !1658
  %27 = load i8, ptr %26, align 8, !dbg !1658
  %28 = trunc i8 %27 to i1, !dbg !1658
  br i1 %28, label %29, label %30, !dbg !1660

29:                                               ; preds = %3
  br label %203, !dbg !1661

30:                                               ; preds = %3
  %31 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 26, !dbg !1663
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %4, i64 16, i1 false), !dbg !1664
  %32 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 48) #13, !dbg !1665, !heapallocsite !128
  call void @_ZN5Linux7VideoInC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %32) #14, !dbg !1666
  %33 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1667
  store ptr %32, ptr %33, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1669, metadata !DIExpression()), !dbg !1670
  store ptr @.str, ptr %15, align 8, !dbg !1670
  store i32 1, ptr %10, align 4, !dbg !1671
  store i32 8, ptr %11, align 4, !dbg !1672
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1673
  store i32 64, ptr %34, align 4, !dbg !1674
  %35 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1675
  store i32 64, ptr %35, align 8, !dbg !1676
  store i32 240, ptr %8, align 4, !dbg !1677
  store i32 240, ptr %9, align 4, !dbg !1678
  store i32 0, ptr %6, align 4, !dbg !1679
  store i32 40, ptr %7, align 4, !dbg !1680
  %36 = load ptr, ptr %15, align 8, !dbg !1681
  %37 = icmp eq ptr %36, null, !dbg !1683
  br i1 %37, label %44, label %38, !dbg !1684

38:                                               ; preds = %30
  %39 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1685
  %40 = load ptr, ptr %39, align 8, !dbg !1685
  %41 = load ptr, ptr %15, align 8, !dbg !1686
  %42 = load i32, ptr %10, align 4, !dbg !1687
  %43 = call noundef zeroext i1 @_ZN5Linux7VideoIn11open_deviceEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef %41, i32 noundef %42), !dbg !1688
  br i1 %43, label %45, label %44, !dbg !1689

44:                                               ; preds = %38, %30
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1) #15, !dbg !1690
  unreachable, !dbg !1690

45:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @_ZNSt6vectorIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #14, !dbg !1693
  %46 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1694
  %47 = load ptr, ptr %46, align 8, !dbg !1694
  invoke void @_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef %16)
          to label %48 unwind label %68, !dbg !1695

48:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1696, metadata !DIExpression()), !dbg !1698
  store ptr %16, ptr %19, align 8, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1700, metadata !DIExpression()), !dbg !1698
  %49 = load ptr, ptr %19, align 8, !dbg !1701
  %50 = call ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %49) #14, !dbg !1701
  %51 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %20, i32 0, i32 0, !dbg !1701
  store ptr %50, ptr %51, align 8, !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1702, metadata !DIExpression()), !dbg !1698
  %52 = load ptr, ptr %19, align 8, !dbg !1701
  %53 = call ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %52) #14, !dbg !1701
  %54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %21, i32 0, i32 0, !dbg !1701
  store ptr %53, ptr %54, align 8, !dbg !1701
  br label %55, !dbg !1701

55:                                               ; preds = %79, %48
  %56 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) #14, !dbg !1701
  br i1 %56, label %57, label %81, !dbg !1701

57:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1703, metadata !DIExpression()), !dbg !1705
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #14, !dbg !1706
  %59 = load i32, ptr %58, align 4, !dbg !1706
  store i32 %59, ptr %22, align 4, !dbg !1705
  %60 = load i32, ptr %22, align 4, !dbg !1707
  %61 = icmp eq i32 %60, 842094158, !dbg !1710
  br i1 %61, label %65, label %62, !dbg !1711

62:                                               ; preds = %57
  %63 = load i32, ptr %22, align 4, !dbg !1712
  %64 = icmp eq i32 %63, 1497715271, !dbg !1713
  br i1 %64, label %65, label %72, !dbg !1714

65:                                               ; preds = %62, %57
  %66 = load i32, ptr %22, align 4, !dbg !1715
  %67 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1717
  store i32 %66, ptr %67, align 4, !dbg !1718
  br label %81, !dbg !1719

68:                                               ; preds = %199, %189, %179, %166, %163, %161, %155, %128, %105, %91, %81, %45
  %69 = landingpad { ptr, i32 }
          cleanup, !dbg !1720
  %70 = extractvalue { ptr, i32 } %69, 0, !dbg !1720
  store ptr %70, ptr %17, align 8, !dbg !1720
  %71 = extractvalue { ptr, i32 } %69, 1, !dbg !1720
  store i32 %71, ptr %18, align 4, !dbg !1720
  br label %204, !dbg !1720

72:                                               ; preds = %62
  %73 = load i32, ptr %22, align 4, !dbg !1721
  %74 = icmp eq i32 %73, 1448695129, !dbg !1723
  br i1 %74, label %75, label %78, !dbg !1724

75:                                               ; preds = %72
  %76 = load i32, ptr %22, align 4, !dbg !1725
  %77 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1727
  store i32 %76, ptr %77, align 4, !dbg !1728
  br label %78, !dbg !1729

78:                                               ; preds = %75, %72
  br label %79, !dbg !1730

79:                                               ; preds = %78
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #14, !dbg !1701
  br label %55, !dbg !1701, !llvm.loop !1731

81:                                               ; preds = %65, %55
  %82 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1733
  %83 = load ptr, ptr %82, align 8, !dbg !1733
  %84 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1735
  %85 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1736
  %86 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1737
  %87 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !1738
  %88 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 18, !dbg !1739
  %89 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(48) %83, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88)
          to label %90 unwind label %68, !dbg !1740

90:                                               ; preds = %81
  br i1 %89, label %93, label %91, !dbg !1741

91:                                               ; preds = %90
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.2) #15
          to label %92 unwind label %68, !dbg !1742

92:                                               ; preds = %91
  unreachable, !dbg !1742

93:                                               ; preds = %90
  %94 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1744
  %95 = load i32, ptr %94, align 4, !dbg !1744
  %96 = icmp ne i32 %95, 842094158, !dbg !1746
  br i1 %96, label %97, label %107, !dbg !1747

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1748
  %99 = load i32, ptr %98, align 4, !dbg !1748
  %100 = icmp ne i32 %99, 1497715271, !dbg !1749
  br i1 %100, label %101, label %107, !dbg !1750

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !1751
  %103 = load i32, ptr %102, align 4, !dbg !1751
  %104 = icmp ne i32 %103, 1448695129, !dbg !1752
  br i1 %104, label %105, label %107, !dbg !1753

105:                                              ; preds = %101
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.3) #15
          to label %106 unwind label %68, !dbg !1754

106:                                              ; preds = %105
  unreachable, !dbg !1754

107:                                              ; preds = %101, %97, %93
  %108 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1756
  %109 = load i32, ptr %108, align 4, !dbg !1756
  %110 = icmp eq i32 %109, 64, !dbg !1758
  br i1 %110, label %111, label %117, !dbg !1759

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1760
  %113 = load i32, ptr %112, align 8, !dbg !1760
  %114 = icmp eq i32 %113, 64, !dbg !1761
  br i1 %114, label %115, label %117, !dbg !1762

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !1763
  store i8 0, ptr %116, align 1, !dbg !1765
  br label %128, !dbg !1766

117:                                              ; preds = %111, %107
  %118 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !1767
  store i8 1, ptr %118, align 1, !dbg !1769
  %119 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1770
  %120 = load i32, ptr %119, align 4, !dbg !1770
  %121 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 12, !dbg !1771
  store i32 %120, ptr %121, align 4, !dbg !1772
  %122 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1773
  %123 = load i32, ptr %122, align 8, !dbg !1773
  %124 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 13, !dbg !1774
  store i32 %123, ptr %124, align 8, !dbg !1775
  %125 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1776
  store i32 64, ptr %125, align 4, !dbg !1777
  %126 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1778
  store i32 64, ptr %126, align 8, !dbg !1779
  %127 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !1780
  store i32 64, ptr %127, align 8, !dbg !1781
  br label %128

128:                                              ; preds = %117, %115
  %129 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1782
  %130 = load ptr, ptr %129, align 8, !dbg !1782
  %131 = load i32, ptr %7, align 4, !dbg !1784
  %132 = load i32, ptr %6, align 4, !dbg !1785
  %133 = load i32, ptr %8, align 4, !dbg !1786
  %134 = load i32, ptr %9, align 4, !dbg !1787
  %135 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn8set_cropEjjjj(ptr noundef nonnull align 8 dereferenceable(48) %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134)
          to label %136 unwind label %68, !dbg !1788

136:                                              ; preds = %128
  br i1 %135, label %137, label %139, !dbg !1789

137:                                              ; preds = %136
  %138 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 10, !dbg !1790
  store i8 0, ptr %138, align 2, !dbg !1792
  br label %155, !dbg !1793

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 10, !dbg !1794
  store i8 1, ptr %140, align 2, !dbg !1796
  %141 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !1797
  %142 = load i8, ptr %141, align 1, !dbg !1797
  %143 = trunc i8 %142 to i1, !dbg !1797
  br i1 %143, label %154, label %144, !dbg !1799

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1800
  %146 = load i32, ptr %145, align 4, !dbg !1800
  %147 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 12, !dbg !1802
  store i32 %146, ptr %147, align 4, !dbg !1803
  %148 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1804
  %149 = load i32, ptr %148, align 8, !dbg !1804
  %150 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 13, !dbg !1805
  store i32 %149, ptr %150, align 8, !dbg !1806
  %151 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1807
  store i32 64, ptr %151, align 4, !dbg !1808
  %152 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !1809
  store i32 64, ptr %152, align 8, !dbg !1810
  %153 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !1811
  store i32 64, ptr %153, align 8, !dbg !1812
  br label %154, !dbg !1813

154:                                              ; preds = %144, %139
  br label %155

155:                                              ; preds = %154, %137
  %156 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1814
  %157 = load ptr, ptr %156, align 8, !dbg !1814
  %158 = load i32, ptr %11, align 4, !dbg !1816
  %159 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn16allocate_buffersEj(ptr noundef nonnull align 8 dereferenceable(48) %157, i32 noundef %158)
          to label %160 unwind label %68, !dbg !1817

160:                                              ; preds = %155
  br i1 %159, label %163, label %161, !dbg !1818

161:                                              ; preds = %160
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.4) #15
          to label %162 unwind label %68, !dbg !1819

162:                                              ; preds = %161
  unreachable, !dbg !1819

163:                                              ; preds = %160
  %164 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !1821
  %165 = load ptr, ptr %164, align 8, !dbg !1821
  invoke void @_ZN5Linux7VideoIn15prepare_captureEv(ptr noundef nonnull align 8 dereferenceable(48) %165)
          to label %166 unwind label %68, !dbg !1822

166:                                              ; preds = %163
  %167 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 28) #13
          to label %168 unwind label %68, !dbg !1823, !heapallocsite !773

168:                                              ; preds = %166
  %169 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !1824
  %170 = load i32, ptr %169, align 4, !dbg !1824
  %171 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !1825
  %172 = load i32, ptr %171, align 8, !dbg !1825
  invoke void @_ZN5Linux8Flow_PX4C1Ejjjff(ptr noundef nonnull align 4 dereferenceable(27) %167, i32 noundef %170, i32 noundef %172, i32 noundef 4, float noundef 3.000000e+01, float noundef 5.000000e+03)
          to label %173 unwind label %181, !dbg !1826

173:                                              ; preds = %168
  %174 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 5, !dbg !1827
  store ptr %167, ptr %174, align 8, !dbg !1828
  %175 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 7, !dbg !1829
  %176 = call i32 @pthread_mutex_init(ptr noundef %175, ptr noundef null) #14, !dbg !1830
  store i32 %176, ptr %12, align 4, !dbg !1831
  %177 = load i32, ptr %12, align 4, !dbg !1832
  %178 = icmp ne i32 %177, 0, !dbg !1834
  br i1 %178, label %179, label %185, !dbg !1835

179:                                              ; preds = %173
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.5) #15
          to label %180 unwind label %68, !dbg !1836

180:                                              ; preds = %179
  unreachable, !dbg !1836

181:                                              ; preds = %168
  %182 = landingpad { ptr, i32 }
          cleanup, !dbg !1720
  %183 = extractvalue { ptr, i32 } %182, 0, !dbg !1720
  store ptr %183, ptr %17, align 8, !dbg !1720
  %184 = extractvalue { ptr, i32 } %182, 1, !dbg !1720
  store i32 %184, ptr %18, align 4, !dbg !1720
  call void @_ZdlPv(ptr noundef %167) #16, !dbg !1823
  br label %204, !dbg !1823

185:                                              ; preds = %173
  %186 = call i32 @pthread_attr_init(ptr noundef %13) #14, !dbg !1838
  store i32 %186, ptr %12, align 4, !dbg !1839
  %187 = load i32, ptr %12, align 4, !dbg !1840
  %188 = icmp ne i32 %187, 0, !dbg !1842
  br i1 %188, label %189, label %191, !dbg !1843

189:                                              ; preds = %185
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.6) #15
          to label %190 unwind label %68, !dbg !1844

190:                                              ; preds = %189
  unreachable, !dbg !1844

191:                                              ; preds = %185
  %192 = call i32 @pthread_attr_setinheritsched(ptr noundef %13, i32 noundef 1) #14, !dbg !1846
  %193 = call i32 @pthread_attr_setschedpolicy(ptr noundef %13, i32 noundef 1) #14, !dbg !1847
  %194 = call i32 @pthread_attr_setschedparam(ptr noundef %13, ptr noundef %14) #14, !dbg !1848
  %195 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 6, !dbg !1849
  %196 = call i32 @pthread_create(ptr noundef %195, ptr noundef %13, ptr noundef @_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv, ptr noundef %25) #14, !dbg !1850
  store i32 %196, ptr %12, align 4, !dbg !1851
  %197 = load i32, ptr %12, align 4, !dbg !1852
  %198 = icmp ne i32 %197, 0, !dbg !1854
  br i1 %198, label %199, label %201, !dbg !1855

199:                                              ; preds = %191
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.7) #15
          to label %200 unwind label %68, !dbg !1856

200:                                              ; preds = %199
  unreachable, !dbg !1856

201:                                              ; preds = %191
  %202 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 8, !dbg !1858
  store i8 1, ptr %202, align 8, !dbg !1859
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #14, !dbg !1720
  br label %203, !dbg !1720

203:                                              ; preds = %201, %29
  ret void, !dbg !1720

204:                                              ; preds = %181, %68
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #14, !dbg !1720
  br label %205, !dbg !1720

205:                                              ; preds = %204
  %206 = load ptr, ptr %17, align 8, !dbg !1720
  %207 = load i32, ptr %18, align 4, !dbg !1720
  %208 = insertvalue { ptr, i32 } poison, ptr %206, 0, !dbg !1720
  %209 = insertvalue { ptr, i32 } %208, i32 %207, 1, !dbg !1720
  resume { ptr, i32 } %209, !dbg !1720
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux7VideoInC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !dbg !1860 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::VideoIn", ptr %3, i32 0, i32 0, !dbg !1864
  store i32 -1, ptr %4, align 8, !dbg !1864
  %5 = getelementptr inbounds %"class.Linux::VideoIn", ptr %3, i32 0, i32 9, !dbg !1865
  store i32 1, ptr %5, align 4, !dbg !1865
  ret void, !dbg !1866
}

declare noundef zeroext i1 @_ZN5Linux7VideoIn11open_deviceEPKcj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) #5

; Function Attrs: noreturn
declare void @_ZN6AP_HAL5panicEPKcz(ptr noundef, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !1867 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1868, metadata !DIExpression()), !dbg !1869
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !1870
  ret void, !dbg !1871
}

declare void @_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !1872 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1873, metadata !DIExpression()), !dbg !1874
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !1875
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !1876
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #14, !dbg !1877
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !1878
  %8 = load ptr, ptr %7, align 8, !dbg !1878
  ret ptr %8, !dbg !1878
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !1879 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1880, metadata !DIExpression()), !dbg !1881
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !1882
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !1883
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #14, !dbg !1884
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !1885
  %8 = load ptr, ptr %7, align 8, !dbg !1885
  ret ptr %8, !dbg !1885
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !1886 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1890, metadata !DIExpression()), !dbg !1891
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1892, metadata !DIExpression()), !dbg !1893
  %5 = load ptr, ptr %3, align 8, !dbg !1894
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14, !dbg !1895
  %7 = load ptr, ptr %6, align 8, !dbg !1895
  %8 = load ptr, ptr %4, align 8, !dbg !1896
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #14, !dbg !1897
  %10 = load ptr, ptr %9, align 8, !dbg !1897
  %11 = icmp ne ptr %7, %10, !dbg !1898
  ret i1 %11, !dbg !1899
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !1900 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1901, metadata !DIExpression()), !dbg !1903
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !1904
  %5 = load ptr, ptr %4, align 8, !dbg !1904
  ret ptr %5, !dbg !1905
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !1906 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1907, metadata !DIExpression()), !dbg !1909
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !1910
  %5 = load ptr, ptr %4, align 8, !dbg !1911
  %6 = getelementptr inbounds i32, ptr %5, i32 1, !dbg !1911
  store ptr %6, ptr %4, align 8, !dbg !1911
  ret ptr %3, !dbg !1912
}

declare noundef zeroext i1 @_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare noundef zeroext i1 @_ZN5Linux7VideoIn8set_cropEjjjj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

declare noundef zeroext i1 @_ZN5Linux7VideoIn16allocate_buffersEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) #5

declare void @_ZN5Linux7VideoIn15prepare_captureEv(ptr noundef nonnull align 8 dereferenceable(48)) #5

declare void @_ZN5Linux8Flow_PX4C1Ejjjff(ptr noundef nonnull align 4 dereferenceable(27), i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv(ptr noundef %0) #0 align 2 !dbg !1913 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1914, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1916, metadata !DIExpression()), !dbg !1917
  %4 = load ptr, ptr %2, align 8, !dbg !1918
  store ptr %4, ptr %3, align 8, !dbg !1917
  %5 = load ptr, ptr %3, align 8, !dbg !1919
  call void @_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv(ptr noundef nonnull align 8 dereferenceable(196) %5), !dbg !1920
  ret ptr null, !dbg !1921
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1922 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1923, metadata !DIExpression()), !dbg !1924
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !1925
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !1927
  %6 = load ptr, ptr %5, align 8, !dbg !1927
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !1928
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !1929
  %9 = load ptr, ptr %8, align 8, !dbg !1929
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !1930
  invoke void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !1931

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !1932
  ret void, !dbg !1933

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1931
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !1931
  call void @__clang_call_terminate(ptr %14) #17, !dbg !1931
  unreachable, !dbg !1931
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #7 align 2 !dbg !1934 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1935, metadata !DIExpression()), !dbg !1936
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1937, metadata !DIExpression()), !dbg !1938
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1939, metadata !DIExpression()), !dbg !1940
  %7 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 7, !dbg !1941
  %8 = call i32 @pthread_mutex_lock(ptr noundef %7) #14, !dbg !1942
  %9 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 9, !dbg !1943
  %10 = load i8, ptr %9, align 1, !dbg !1943
  %11 = trunc i8 %10 to i1, !dbg !1943
  br i1 %11, label %13, label %12, !dbg !1945

12:                                               ; preds = %2
  store i8 0, ptr %5, align 1, !dbg !1946
  br label %44, !dbg !1948

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 19, !dbg !1949
  %15 = load float, ptr %14, align 8, !dbg !1949
  %16 = load ptr, ptr %4, align 8, !dbg !1950
  %17 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %16, i32 0, i32 0, !dbg !1951
  store float %15, ptr %17, align 4, !dbg !1952
  %18 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 20, !dbg !1953
  %19 = load float, ptr %18, align 4, !dbg !1953
  %20 = load ptr, ptr %4, align 8, !dbg !1954
  %21 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %20, i32 0, i32 1, !dbg !1955
  store float %19, ptr %21, align 4, !dbg !1956
  %22 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 21, !dbg !1957
  %23 = load float, ptr %22, align 8, !dbg !1957
  %24 = load ptr, ptr %4, align 8, !dbg !1958
  %25 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %24, i32 0, i32 2, !dbg !1959
  store float %23, ptr %25, align 4, !dbg !1960
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 22, !dbg !1961
  %27 = load float, ptr %26, align 4, !dbg !1961
  %28 = load ptr, ptr %4, align 8, !dbg !1962
  %29 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %28, i32 0, i32 3, !dbg !1963
  store float %27, ptr %29, align 4, !dbg !1964
  %30 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 23, !dbg !1965
  %31 = load i32, ptr %30, align 8, !dbg !1965
  %32 = load ptr, ptr %4, align 8, !dbg !1966
  %33 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %32, i32 0, i32 4, !dbg !1967
  store i32 %31, ptr %33, align 4, !dbg !1968
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 24, !dbg !1969
  %35 = load i8, ptr %34, align 4, !dbg !1969
  %36 = load ptr, ptr %4, align 8, !dbg !1970
  %37 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %36, i32 0, i32 5, !dbg !1971
  store i8 %35, ptr %37, align 4, !dbg !1972
  %38 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 23, !dbg !1973
  store i32 0, ptr %38, align 8, !dbg !1974
  %39 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 19, !dbg !1975
  store float 0.000000e+00, ptr %39, align 8, !dbg !1976
  %40 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 20, !dbg !1977
  store float 0.000000e+00, ptr %40, align 4, !dbg !1978
  %41 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 21, !dbg !1979
  store float 0.000000e+00, ptr %41, align 8, !dbg !1980
  %42 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 22, !dbg !1981
  store float 0.000000e+00, ptr %42, align 4, !dbg !1982
  %43 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 9, !dbg !1983
  store i8 0, ptr %43, align 1, !dbg !1984
  store i8 1, ptr %5, align 1, !dbg !1985
  br label %44, !dbg !1986

44:                                               ; preds = %13, %12
  call void @llvm.dbg.label(metadata !1987), !dbg !1988
  %45 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 7, !dbg !1989
  %46 = call i32 @pthread_mutex_unlock(ptr noundef %45) #14, !dbg !1990
  %47 = load i8, ptr %5, align 1, !dbg !1991
  %48 = trunc i8 %47 to i1, !dbg !1991
  ret i1 %48, !dbg !1992
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv(ptr noundef nonnull align 8 dereferenceable(196) %0) #0 align 2 !dbg !1993 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %class.Vector3, align 4
  %7 = alloca %struct.Vector2, align 4
  %8 = alloca %"class.Linux::VideoIn::Frame", align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1994, metadata !DIExpression()), !dbg !1995
  %21 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1996, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1998, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %6), !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @_ZN7Vector2IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %7), !dbg !2006
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2007, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2009, metadata !DIExpression()), !dbg !2010
  store i32 0, ptr %9, align 4, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i32 0, ptr %10, align 4, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i32 0, ptr %11, align 4, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2015, metadata !DIExpression()), !dbg !2016
  store i32 0, ptr %12, align 4, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2017, metadata !DIExpression()), !dbg !2018
  store i32 0, ptr %13, align 4, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i32 0, ptr %14, align 4, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2021, metadata !DIExpression()), !dbg !2022
  store i32 0, ptr %15, align 4, !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2023, metadata !DIExpression()), !dbg !2024
  store i32 0, ptr %16, align 4, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i32 0, ptr %17, align 4, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2027, metadata !DIExpression()), !dbg !2028
  store ptr null, ptr %18, align 8, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2029, metadata !DIExpression()), !dbg !2030
  store ptr null, ptr %19, align 8, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2031, metadata !DIExpression()), !dbg !2032
  %22 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 16, !dbg !2033
  %23 = load i32, ptr %22, align 4, !dbg !2033
  %24 = icmp eq i32 %23, 1448695129, !dbg !2035
  br i1 %24, label %25, label %53, !dbg !2036

25:                                               ; preds = %1
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2037
  %27 = load i8, ptr %26, align 1, !dbg !2037
  %28 = trunc i8 %27 to i1, !dbg !2037
  br i1 %28, label %33, label %29, !dbg !2040

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2041
  %31 = load i8, ptr %30, align 2, !dbg !2041
  %32 = trunc i8 %31 to i1, !dbg !2041
  br i1 %32, label %33, label %39, !dbg !2042

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2043
  %35 = load i32, ptr %34, align 4, !dbg !2043
  %36 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2045
  %37 = load i32, ptr %36, align 8, !dbg !2045
  %38 = mul i32 %35, %37, !dbg !2046
  store i32 %38, ptr %9, align 4, !dbg !2047
  br label %45, !dbg !2048

39:                                               ; preds = %29
  %40 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 14, !dbg !2049
  %41 = load i32, ptr %40, align 4, !dbg !2049
  %42 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 15, !dbg !2051
  %43 = load i32, ptr %42, align 8, !dbg !2051
  %44 = mul i32 %41, %43, !dbg !2052
  store i32 %44, ptr %9, align 4, !dbg !2053
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, ptr %9, align 4, !dbg !2054
  %47 = zext i32 %46 to i64, !dbg !2054
  %48 = call noalias ptr @malloc(i64 noundef %47) #18, !dbg !2055
  store ptr %48, ptr %18, align 8, !dbg !2056
  %49 = load ptr, ptr %18, align 8, !dbg !2057
  %50 = icmp ne ptr %49, null, !dbg !2057
  br i1 %50, label %52, label %51, !dbg !2059

51:                                               ; preds = %45
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.8) #15, !dbg !2060
  unreachable, !dbg !2060

52:                                               ; preds = %45
  br label %53, !dbg !2062

53:                                               ; preds = %52, %1
  %54 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2063
  %55 = load i8, ptr %54, align 1, !dbg !2063
  %56 = trunc i8 %55 to i1, !dbg !2063
  br i1 %56, label %61, label %57, !dbg !2065

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2066
  %59 = load i8, ptr %58, align 2, !dbg !2066
  %60 = trunc i8 %59 to i1, !dbg !2066
  br i1 %60, label %61, label %74, !dbg !2067

61:                                               ; preds = %57, %53
  store i32 4096, ptr %10, align 4, !dbg !2068
  %62 = load i32, ptr %10, align 4, !dbg !2070
  %63 = zext i32 %62 to i64, !dbg !2070
  %64 = call noalias ptr @malloc(i64 noundef %63) #18, !dbg !2071
  store ptr %64, ptr %19, align 8, !dbg !2072
  %65 = load ptr, ptr %19, align 8, !dbg !2073
  %66 = icmp ne ptr %65, null, !dbg !2073
  br i1 %66, label %73, label %67, !dbg !2075

67:                                               ; preds = %61
  %68 = load ptr, ptr %18, align 8, !dbg !2076
  %69 = icmp ne ptr %68, null, !dbg !2076
  br i1 %69, label %70, label %72, !dbg !2079

70:                                               ; preds = %67
  %71 = load ptr, ptr %18, align 8, !dbg !2080
  call void @free(ptr noundef %71) #14, !dbg !2082
  br label %72, !dbg !2083

72:                                               ; preds = %70, %67
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.9) #15, !dbg !2084
  unreachable, !dbg !2084

73:                                               ; preds = %61
  br label %74, !dbg !2085

74:                                               ; preds = %73, %57
  %75 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2086
  %76 = load i8, ptr %75, align 1, !dbg !2086
  %77 = trunc i8 %76 to i1, !dbg !2086
  br i1 %77, label %78, label %107, !dbg !2088

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2089
  %80 = load i32, ptr %79, align 4, !dbg !2089
  %81 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2092
  %82 = load i32, ptr %81, align 8, !dbg !2092
  %83 = icmp ugt i32 %80, %82, !dbg !2093
  br i1 %83, label %84, label %88, !dbg !2094

84:                                               ; preds = %78
  %85 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2095
  %86 = load i32, ptr %85, align 8, !dbg !2095
  %87 = udiv i32 %86, 64, !dbg !2097
  store i32 %87, ptr %13, align 4, !dbg !2098
  br label %92, !dbg !2099

88:                                               ; preds = %78
  %89 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2100
  %90 = load i32, ptr %89, align 4, !dbg !2100
  %91 = udiv i32 %90, 64, !dbg !2102
  store i32 %91, ptr %13, align 4, !dbg !2103
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %13, align 4, !dbg !2104
  %94 = mul i32 64, %93, !dbg !2105
  store i32 %94, ptr %14, align 4, !dbg !2106
  %95 = load i32, ptr %13, align 4, !dbg !2107
  %96 = mul i32 64, %95, !dbg !2108
  store i32 %96, ptr %15, align 4, !dbg !2109
  %97 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2110
  %98 = load i32, ptr %97, align 4, !dbg !2110
  %99 = load i32, ptr %14, align 4, !dbg !2111
  %100 = sub i32 %98, %99, !dbg !2112
  %101 = udiv i32 %100, 2, !dbg !2113
  store i32 %101, ptr %16, align 4, !dbg !2114
  %102 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2115
  %103 = load i32, ptr %102, align 8, !dbg !2115
  %104 = load i32, ptr %15, align 4, !dbg !2116
  %105 = sub i32 %103, %104, !dbg !2117
  %106 = udiv i32 %105, 2, !dbg !2118
  store i32 %106, ptr %17, align 4, !dbg !2119
  br label %121, !dbg !2120

107:                                              ; preds = %74
  %108 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2121
  %109 = load i8, ptr %108, align 2, !dbg !2121
  %110 = trunc i8 %109 to i1, !dbg !2121
  br i1 %110, label %111, label %120, !dbg !2123

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2124
  %113 = load i32, ptr %112, align 4, !dbg !2124
  %114 = udiv i32 %113, 2, !dbg !2126
  %115 = sub i32 %114, 32, !dbg !2127
  store i32 %115, ptr %11, align 4, !dbg !2128
  %116 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2129
  %117 = load i32, ptr %116, align 8, !dbg !2129
  %118 = udiv i32 %117, 2, !dbg !2130
  %119 = sub i32 %118, 32, !dbg !2131
  store i32 %119, ptr %12, align 4, !dbg !2132
  br label %120, !dbg !2133

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120, %92
  br label %122, !dbg !2134

122:                                              ; preds = %121, %219, %221
  %123 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 1, !dbg !2135
  %124 = load ptr, ptr %123, align 8, !dbg !2135
  %125 = call noundef zeroext i1 @_ZN5Linux7VideoIn9get_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48) %124, ptr noundef nonnull align 8 dereferenceable(20) %8), !dbg !2138
  br i1 %125, label %137, label %126, !dbg !2139

126:                                              ; preds = %122
  %127 = load ptr, ptr %18, align 8, !dbg !2140
  %128 = icmp ne ptr %127, null, !dbg !2140
  br i1 %128, label %129, label %131, !dbg !2143

129:                                              ; preds = %126
  %130 = load ptr, ptr %18, align 8, !dbg !2144
  call void @free(ptr noundef %130) #14, !dbg !2146
  br label %131, !dbg !2147

131:                                              ; preds = %129, %126
  %132 = load ptr, ptr %19, align 8, !dbg !2148
  %133 = icmp ne ptr %132, null, !dbg !2148
  br i1 %133, label %134, label %136, !dbg !2150

134:                                              ; preds = %131
  %135 = load ptr, ptr %19, align 8, !dbg !2151
  call void @free(ptr noundef %135) #14, !dbg !2153
  br label %136, !dbg !2154

136:                                              ; preds = %134, %131
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.10) #15, !dbg !2155
  unreachable, !dbg !2155

137:                                              ; preds = %122
  %138 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 16, !dbg !2156
  %139 = load i32, ptr %138, align 4, !dbg !2156
  %140 = icmp eq i32 %139, 1448695129, !dbg !2158
  br i1 %140, label %141, label %157, !dbg !2159

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2160
  %143 = load ptr, ptr %142, align 8, !dbg !2160
  %144 = load i32, ptr %9, align 4, !dbg !2162
  %145 = mul i32 %144, 2, !dbg !2163
  %146 = load ptr, ptr %18, align 8, !dbg !2164
  call void @_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_(ptr noundef %143, i32 noundef %145, ptr noundef %146), !dbg !2165
  %147 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2166
  %148 = load ptr, ptr %147, align 8, !dbg !2166
  %149 = load i32, ptr %9, align 4, !dbg !2167
  %150 = mul i32 %149, 2, !dbg !2168
  %151 = zext i32 %150 to i64, !dbg !2167
  call void @llvm.memset.p0.i64(ptr align 1 %148, i8 0, i64 %151, i1 false), !dbg !2169
  %152 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2170
  %153 = load ptr, ptr %152, align 8, !dbg !2170
  %154 = load ptr, ptr %18, align 8, !dbg !2171
  %155 = load i32, ptr %9, align 4, !dbg !2172
  %156 = zext i32 %155 to i64, !dbg !2172
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %153, ptr align 1 %154, i64 %156, i1 false), !dbg !2173
  br label %157, !dbg !2174

157:                                              ; preds = %141, %137
  %158 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2175
  %159 = load i8, ptr %158, align 1, !dbg !2175
  %160 = trunc i8 %159 to i1, !dbg !2175
  br i1 %160, label %161, label %188, !dbg !2177

161:                                              ; preds = %157
  %162 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2178
  %163 = load ptr, ptr %162, align 8, !dbg !2178
  %164 = load ptr, ptr %19, align 8, !dbg !2180
  %165 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2181
  %166 = load i32, ptr %165, align 4, !dbg !2181
  %167 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2182
  %168 = load i32, ptr %167, align 8, !dbg !2182
  %169 = load i32, ptr %16, align 4, !dbg !2183
  %170 = load i32, ptr %14, align 4, !dbg !2184
  %171 = load i32, ptr %17, align 4, !dbg !2185
  %172 = load i32, ptr %15, align 4, !dbg !2186
  %173 = load i32, ptr %13, align 4, !dbg !2187
  %174 = load i32, ptr %13, align 4, !dbg !2188
  call void @_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj(ptr noundef %163, ptr noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174), !dbg !2189
  %175 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2190
  %176 = load ptr, ptr %175, align 8, !dbg !2190
  %177 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2191
  %178 = load i32, ptr %177, align 4, !dbg !2191
  %179 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2192
  %180 = load i32, ptr %179, align 8, !dbg !2192
  %181 = mul i32 %178, %180, !dbg !2193
  %182 = zext i32 %181 to i64, !dbg !2191
  call void @llvm.memset.p0.i64(ptr align 1 %176, i8 0, i64 %182, i1 false), !dbg !2194
  %183 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2195
  %184 = load ptr, ptr %183, align 8, !dbg !2195
  %185 = load ptr, ptr %19, align 8, !dbg !2196
  %186 = load i32, ptr %10, align 4, !dbg !2197
  %187 = zext i32 %186 to i64, !dbg !2197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %184, ptr align 1 %185, i64 %187, i1 false), !dbg !2198
  br label %214, !dbg !2199

188:                                              ; preds = %157
  %189 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2200
  %190 = load i8, ptr %189, align 2, !dbg !2200
  %191 = trunc i8 %190 to i1, !dbg !2200
  br i1 %191, label %192, label %213, !dbg !2202

192:                                              ; preds = %188
  %193 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2203
  %194 = load ptr, ptr %193, align 8, !dbg !2203
  %195 = load ptr, ptr %19, align 8, !dbg !2205
  %196 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2206
  %197 = load i32, ptr %196, align 4, !dbg !2206
  %198 = load i32, ptr %11, align 4, !dbg !2207
  %199 = load i32, ptr %12, align 4, !dbg !2208
  call void @_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj(ptr noundef %194, ptr noundef %195, i32 noundef %197, i32 noundef %198, i32 noundef 64, i32 noundef %199, i32 noundef 64), !dbg !2209
  %200 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2210
  %201 = load ptr, ptr %200, align 8, !dbg !2210
  %202 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2211
  %203 = load i32, ptr %202, align 4, !dbg !2211
  %204 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2212
  %205 = load i32, ptr %204, align 8, !dbg !2212
  %206 = mul i32 %203, %205, !dbg !2213
  %207 = zext i32 %206 to i64, !dbg !2211
  call void @llvm.memset.p0.i64(ptr align 1 %201, i8 0, i64 %207, i1 false), !dbg !2214
  %208 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2215
  %209 = load ptr, ptr %208, align 8, !dbg !2215
  %210 = load ptr, ptr %19, align 8, !dbg !2216
  %211 = load i32, ptr %10, align 4, !dbg !2217
  %212 = zext i32 %211 to i64, !dbg !2217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %209, ptr align 1 %210, i64 %212, i1 false), !dbg !2218
  br label %213, !dbg !2219

213:                                              ; preds = %192, %188
  br label %214

214:                                              ; preds = %213, %161
  %215 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2220
  %216 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %215, i32 0, i32 2, !dbg !2222
  %217 = load ptr, ptr %216, align 8, !dbg !2222
  %218 = icmp eq ptr %217, null, !dbg !2223
  br i1 %218, label %219, label %221, !dbg !2224

219:                                              ; preds = %214
  %220 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2225
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %220, ptr align 8 %8, i64 20, i1 false), !dbg !2227
  br label %122, !dbg !2228, !llvm.loop !2229

221:                                              ; preds = %214
  %222 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 26, !dbg !2232
  call void @_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(16) %222, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5), !dbg !2232
  %223 = load float, ptr %3, align 4, !dbg !2233
  %224 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 0, !dbg !2234
  store float %223, ptr %224, align 4, !dbg !2235
  %225 = load float, ptr %4, align 4, !dbg !2236
  %226 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 1, !dbg !2237
  store float %225, ptr %226, align 4, !dbg !2238
  %227 = load float, ptr %5, align 4, !dbg !2239
  %228 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 2, !dbg !2240
  store float %227, ptr %228, align 4, !dbg !2241
  %229 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 5, !dbg !2242
  %230 = load ptr, ptr %229, align 8, !dbg !2242
  %231 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2243
  %232 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %231, i32 0, i32 2, !dbg !2244
  %233 = load ptr, ptr %232, align 8, !dbg !2244
  %234 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2245
  %235 = load ptr, ptr %234, align 8, !dbg !2245
  %236 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2246
  %237 = load i32, ptr %236, align 8, !dbg !2246
  %238 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2247
  %239 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %238, i32 0, i32 0, !dbg !2248
  %240 = load i32, ptr %239, align 8, !dbg !2248
  %241 = sub i32 %237, %240, !dbg !2249
  %242 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 0, !dbg !2250
  %243 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 1, !dbg !2251
  %244 = call noundef zeroext i8 @_ZN5Linux8Flow_PX412compute_flowEPhS1_jPfS2_(ptr noundef nonnull align 4 dereferenceable(27) %230, ptr noundef %233, ptr noundef %235, i32 noundef %241, ptr noundef %242, ptr noundef %243), !dbg !2252
  store i8 %244, ptr %20, align 1, !dbg !2253
  %245 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 7, !dbg !2254
  %246 = call i32 @pthread_mutex_lock(ptr noundef %245) #14, !dbg !2255
  %247 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 0, !dbg !2256
  %248 = load float, ptr %247, align 4, !dbg !2256
  %249 = fpext float %248 to double, !dbg !2257
  %250 = fdiv double %249, 0x3FC8618618618618, !dbg !2258
  %251 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 19, !dbg !2259
  %252 = load float, ptr %251, align 8, !dbg !2260
  %253 = fpext float %252 to double, !dbg !2260
  %254 = fadd double %253, %250, !dbg !2260
  %255 = fptrunc double %254 to float, !dbg !2260
  store float %255, ptr %251, align 8, !dbg !2260
  %256 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 1, !dbg !2261
  %257 = load float, ptr %256, align 4, !dbg !2261
  %258 = fpext float %257 to double, !dbg !2262
  %259 = fdiv double %258, 0x3FC8618618618618, !dbg !2263
  %260 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 20, !dbg !2264
  %261 = load float, ptr %260, align 4, !dbg !2265
  %262 = fpext float %261 to double, !dbg !2265
  %263 = fadd double %262, %259, !dbg !2265
  %264 = fptrunc double %263 to float, !dbg !2265
  store float %264, ptr %260, align 4, !dbg !2265
  %265 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2266
  %266 = load i32, ptr %265, align 8, !dbg !2266
  %267 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2267
  %268 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %267, i32 0, i32 0, !dbg !2268
  %269 = load i32, ptr %268, align 8, !dbg !2268
  %270 = sub i32 %266, %269, !dbg !2269
  %271 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 23, !dbg !2270
  %272 = load i32, ptr %271, align 8, !dbg !2271
  %273 = add i32 %272, %270, !dbg !2271
  store i32 %273, ptr %271, align 8, !dbg !2271
  %274 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 0, !dbg !2272
  %275 = load float, ptr %274, align 4, !dbg !2272
  %276 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2273
  %277 = getelementptr inbounds %class.Vector3, ptr %276, i32 0, i32 0, !dbg !2274
  %278 = load float, ptr %277, align 8, !dbg !2274
  %279 = fadd float %275, %278, !dbg !2275
  %280 = fdiv float %279, 2.000000e+00, !dbg !2276
  %281 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2277
  %282 = load i32, ptr %281, align 8, !dbg !2277
  %283 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2278
  %284 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %283, i32 0, i32 0, !dbg !2279
  %285 = load i32, ptr %284, align 8, !dbg !2279
  %286 = sub i32 %282, %285, !dbg !2280
  %287 = uitofp i32 %286 to float, !dbg !2281
  %288 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 21, !dbg !2282
  %289 = load float, ptr %288, align 8, !dbg !2283
  %290 = call float @llvm.fmuladd.f32(float %280, float %287, float %289), !dbg !2283
  store float %290, ptr %288, align 8, !dbg !2283
  %291 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 1, !dbg !2284
  %292 = load float, ptr %291, align 4, !dbg !2284
  %293 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2285
  %294 = getelementptr inbounds %class.Vector3, ptr %293, i32 0, i32 1, !dbg !2286
  %295 = load float, ptr %294, align 4, !dbg !2286
  %296 = fadd float %292, %295, !dbg !2287
  %297 = fdiv float %296, 2.000000e+00, !dbg !2288
  %298 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2289
  %299 = load i32, ptr %298, align 8, !dbg !2289
  %300 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2290
  %301 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %300, i32 0, i32 0, !dbg !2291
  %302 = load i32, ptr %301, align 8, !dbg !2291
  %303 = sub i32 %299, %302, !dbg !2292
  %304 = uitofp i32 %303 to float, !dbg !2293
  %305 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 22, !dbg !2294
  %306 = load float, ptr %305, align 4, !dbg !2295
  %307 = call float @llvm.fmuladd.f32(float %297, float %304, float %306), !dbg !2295
  store float %307, ptr %305, align 4, !dbg !2295
  %308 = load i8, ptr %20, align 1, !dbg !2296
  %309 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 24, !dbg !2297
  store i8 %308, ptr %309, align 4, !dbg !2298
  %310 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 9, !dbg !2299
  store i8 1, ptr %310, align 1, !dbg !2300
  %311 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 7, !dbg !2301
  %312 = call i32 @pthread_mutex_unlock(ptr noundef %311) #14, !dbg !2302
  %313 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 1, !dbg !2303
  %314 = load ptr, ptr %313, align 8, !dbg !2303
  %315 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2304
  call void @_ZN5Linux7VideoIn9put_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48) %314, ptr noundef nonnull align 8 dereferenceable(20) %315), !dbg !2305
  %316 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2306
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %316, ptr align 8 %8, i64 20, i1 false), !dbg !2307
  %317 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2308
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %317, ptr align 4 %6, i64 12, i1 false), !dbg !2309
  br label %122, !dbg !2134, !llvm.loop !2229
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !dbg !2310 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2311, metadata !DIExpression()), !dbg !2313
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 2, !dbg !2314
  store float 0.000000e+00, ptr %4, align 4, !dbg !2316
  %5 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 1, !dbg !2317
  store float 0.000000e+00, ptr %5, align 4, !dbg !2318
  %6 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 0, !dbg !2319
  store float 0.000000e+00, ptr %6, align 4, !dbg !2320
  ret void, !dbg !2321
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector2IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !2322 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2323, metadata !DIExpression()), !dbg !2325
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Vector2, ptr %3, i32 0, i32 1, !dbg !2326
  store float 0.000000e+00, ptr %4, align 4, !dbg !2328
  %5 = getelementptr inbounds %struct.Vector2, ptr %3, i32 0, i32 0, !dbg !2329
  store float 0.000000e+00, ptr %5, align 4, !dbg !2330
  ret void, !dbg !2331
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #10

; Function Attrs: nounwind
declare void @free(ptr noundef) #9

declare noundef zeroext i1 @_ZN5Linux7VideoIn9get_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(20)) #5

declare void @_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

declare void @_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #0 comdat align 2 !dbg !2332 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2333, metadata !DIExpression()), !dbg !2335
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2336, metadata !DIExpression()), !dbg !2337
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2338, metadata !DIExpression()), !dbg !2337
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2339, metadata !DIExpression()), !dbg !2337
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %class.Functor, ptr %9, i32 0, i32 1, !dbg !2340
  %11 = load ptr, ptr %10, align 8, !dbg !2340
  %12 = getelementptr inbounds %class.Functor, ptr %9, i32 0, i32 0, !dbg !2341
  %13 = load ptr, ptr %12, align 8, !dbg !2341
  %14 = load ptr, ptr %6, align 8, !dbg !2342
  %15 = load ptr, ptr %7, align 8, !dbg !2342
  %16 = load ptr, ptr %8, align 8, !dbg !2342
  call void %11(ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16), !dbg !2340
  ret void, !dbg !2343
}

declare noundef zeroext i8 @_ZN5Linux8Flow_PX412compute_flowEPhS1_jPfS2_(ptr noundef nonnull align 4 dereferenceable(27), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare void @_ZN5Linux7VideoIn9put_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(20)) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !2344 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2345, metadata !DIExpression()), !dbg !2347
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2348
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14, !dbg !2348
  ret void, !dbg !2349
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !2350 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2351, metadata !DIExpression()), !dbg !2353
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !2354
  call void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !2355
  ret void, !dbg !2356
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2357 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2358, metadata !DIExpression()), !dbg !2360
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !2363 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !2367
  store ptr null, ptr %4, align 8, !dbg !2367
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !2368
  store ptr null, ptr %5, align 8, !dbg !2368
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !2369
  store ptr null, ptr %6, align 8, !dbg !2369
  ret void, !dbg !2370
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2371 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2372, metadata !DIExpression()), !dbg !2374
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2375
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat !dbg !2376 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2381, metadata !DIExpression()), !dbg !2382
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2383, metadata !DIExpression()), !dbg !2384
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2385, metadata !DIExpression()), !dbg !2386
  %7 = load ptr, ptr %4, align 8, !dbg !2387
  %8 = load ptr, ptr %5, align 8, !dbg !2388
  call void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %7, ptr noundef %8), !dbg !2389
  ret void, !dbg !2390
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2391 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2392, metadata !DIExpression()), !dbg !2393
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2394
  ret ptr %4, !dbg !2395
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #12 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2396 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2397, metadata !DIExpression()), !dbg !2398
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2399
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !2401
  %6 = load ptr, ptr %5, align 8, !dbg !2401
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2402
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !2403
  %9 = load ptr, ptr %8, align 8, !dbg !2403
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2404
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !2405
  %12 = load ptr, ptr %11, align 8, !dbg !2405
  %13 = ptrtoint ptr %9 to i64, !dbg !2406
  %14 = ptrtoint ptr %12 to i64, !dbg !2406
  %15 = sub i64 %13, %14, !dbg !2406
  %16 = sdiv exact i64 %15, 4, !dbg !2406
  invoke void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !2407

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2408
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #14, !dbg !2408
  ret void, !dbg !2409

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2407
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !2407
  call void @__clang_call_terminate(ptr %21) #17, !dbg !2407
  unreachable, !dbg !2407
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat !dbg !2410 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2415, metadata !DIExpression()), !dbg !2416
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2418
  %5 = load ptr, ptr %3, align 8, !dbg !2419
  %6 = load ptr, ptr %4, align 8, !dbg !2420
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %5, ptr noundef %6), !dbg !2421
  ret void, !dbg !2422
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 !dbg !2423 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2428, metadata !DIExpression()), !dbg !2429
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2430, metadata !DIExpression()), !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !2433 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2434, metadata !DIExpression()), !dbg !2435
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2438, metadata !DIExpression()), !dbg !2439
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2440
  %9 = icmp ne ptr %8, null, !dbg !2440
  br i1 %9, label %10, label %14, !dbg !2442

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !2443
  %12 = load ptr, ptr %5, align 8, !dbg !2444
  %13 = load i64, ptr %6, align 8, !dbg !2445
  call void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !2446
  br label %14, !dbg !2446

14:                                               ; preds = %10, %3
  ret void, !dbg !2447
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !2448 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2450, metadata !DIExpression()), !dbg !2451
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !2452
  ret void, !dbg !2454
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !2455 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !2457
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2460, metadata !DIExpression()), !dbg !2461
  %7 = load ptr, ptr %4, align 8, !dbg !2462
  %8 = load ptr, ptr %5, align 8, !dbg !2463
  %9 = load i64, ptr %6, align 8, !dbg !2464
  call void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !2465
  ret void, !dbg !2466
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #7 comdat align 2 !dbg !2467 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2468, metadata !DIExpression()), !dbg !2469
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2470, metadata !DIExpression()), !dbg !2471
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2472, metadata !DIExpression()), !dbg !2473
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2474
  call void @_ZdlPv(ptr noundef %8) #14, !dbg !2475
  ret void, !dbg !2476
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2477 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2478, metadata !DIExpression()), !dbg !2479
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !2480
  ret void, !dbg !2482
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2483 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2484, metadata !DIExpression()), !dbg !2485
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2486
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !2487 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2490, metadata !DIExpression()), !dbg !2491
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2492
  %7 = load ptr, ptr %4, align 8, !dbg !2493
  %8 = load ptr, ptr %7, align 8, !dbg !2493
  store ptr %8, ptr %6, align 8, !dbg !2492
  ret void, !dbg !2494
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !2495 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2497
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2498
  ret ptr %4, !dbg !2499
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!55}
!llvm.module.flags = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!llvm.ident = !{!1622}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "39989a6ca62b51870b8b66b5593f6083")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 12)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 48)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 47)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 43)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 53)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 42)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 41)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 45)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 58)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 52)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !35, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !56, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !114, globals: !1040, imports: !1041, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "39989a6ca62b51870b8b66b5593f6083")
!57 = !{!58, !66, !71}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_memory", file: !59, line: 185, baseType: !60, size: 32, elements: !61, identifier: "_ZTS11v4l2_memory")
!59 = !DIFile(filename: "/usr/include/linux/videodev2.h", directory: "", checksumkind: CSK_MD5, checksum: "3cc097f94f263de2816b0907cfe35b21")
!60 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "V4L2_MEMORY_MMAP", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "V4L2_MEMORY_USERPTR", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "V4L2_MEMORY_OVERLAY", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "V4L2_MEMORY_DMABUF", value: 4, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 124, baseType: !60, size: 32, elements: !68)
!67 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Rotation", file: !72, line: 28, baseType: !60, size: 32, elements: !73, identifier: "_ZTS8Rotation")
!72 = !DIFile(filename: "ardupilot/libraries/AP_Math/rotations.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "04a17862c10c9a57597560af0328029e")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!74 = !DIEnumerator(name: "ROTATION_NONE", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "ROTATION_YAW_45", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "ROTATION_YAW_90", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "ROTATION_YAW_135", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "ROTATION_YAW_180", value: 4, isUnsigned: true)
!79 = !DIEnumerator(name: "ROTATION_YAW_225", value: 5, isUnsigned: true)
!80 = !DIEnumerator(name: "ROTATION_YAW_270", value: 6, isUnsigned: true)
!81 = !DIEnumerator(name: "ROTATION_YAW_315", value: 7, isUnsigned: true)
!82 = !DIEnumerator(name: "ROTATION_ROLL_180", value: 8, isUnsigned: true)
!83 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_45", value: 9, isUnsigned: true)
!84 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_90", value: 10, isUnsigned: true)
!85 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_135", value: 11, isUnsigned: true)
!86 = !DIEnumerator(name: "ROTATION_PITCH_180", value: 12, isUnsigned: true)
!87 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_225", value: 13, isUnsigned: true)
!88 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_270", value: 14, isUnsigned: true)
!89 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_315", value: 15, isUnsigned: true)
!90 = !DIEnumerator(name: "ROTATION_ROLL_90", value: 16, isUnsigned: true)
!91 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_45", value: 17, isUnsigned: true)
!92 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_90", value: 18, isUnsigned: true)
!93 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_135", value: 19, isUnsigned: true)
!94 = !DIEnumerator(name: "ROTATION_ROLL_270", value: 20, isUnsigned: true)
!95 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_45", value: 21, isUnsigned: true)
!96 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_90", value: 22, isUnsigned: true)
!97 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_135", value: 23, isUnsigned: true)
!98 = !DIEnumerator(name: "ROTATION_PITCH_90", value: 24, isUnsigned: true)
!99 = !DIEnumerator(name: "ROTATION_PITCH_270", value: 25, isUnsigned: true)
!100 = !DIEnumerator(name: "ROTATION_PITCH_180_YAW_90", value: 26, isUnsigned: true)
!101 = !DIEnumerator(name: "ROTATION_PITCH_180_YAW_270", value: 27, isUnsigned: true)
!102 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_90", value: 28, isUnsigned: true)
!103 = !DIEnumerator(name: "ROTATION_ROLL_180_PITCH_90", value: 29, isUnsigned: true)
!104 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_90", value: 30, isUnsigned: true)
!105 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_180", value: 31, isUnsigned: true)
!106 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_180", value: 32, isUnsigned: true)
!107 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_270", value: 33, isUnsigned: true)
!108 = !DIEnumerator(name: "ROTATION_ROLL_180_PITCH_270", value: 34, isUnsigned: true)
!109 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_270", value: 35, isUnsigned: true)
!110 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_180_YAW_90", value: 36, isUnsigned: true)
!111 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_270", value: 37, isUnsigned: true)
!112 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_68_YAW_293", value: 38, isUnsigned: true)
!113 = !DIEnumerator(name: "ROTATION_MAX", value: 39, isUnsigned: true)
!114 = !{!115, !117, !734, !140, !521, !827, !522, !128, !181, !186, !189, !210, !216, !313, !867, !975}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !60)
!116 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "OpticalFlow_Onboard", scope: !120, file: !119, line: 27, size: 1600, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !121, vtableHolder: !123)
!119 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7b4c9e700f27d160076bb32dcc190a2a")
!120 = !DINamespace(name: "Linux", scope: null)
!121 = !{!122, !126, !762, !763, !767, !771, !775, !778, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !820, !821, !822, !823, !824, !825, !864, !953, !957, !969, !972}
!122 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !118, baseType: !123, flags: DIFlagPublic, extraData: i32 0)
!123 = !DICompositeType(tag: DW_TAG_class_type, name: "OpticalFlow", scope: !125, file: !124, line: 17, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL11OpticalFlowE")
!124 = !DIFile(filename: "ardupilot/libraries/AP_HAL/OpticalFlow.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9f9f121a90eb4c8138cfdc938010b02e")
!125 = !DINamespace(name: "AP_HAL", scope: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_videoin", scope: !118, file: !119, line: 35, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "VideoIn", scope: !120, file: !129, line: 26, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !130, identifier: "_ZTSN5Linux7VideoInE")
!129 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/VideoIn.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "af2f23b8636078178400514c9d07cdfc")
!130 = !{!131, !133, !136, !137, !139, !144, !145, !146, !147, !148, !149, !161, !164, !168, !171, !174, !177, !723, !727, !730, !731, !738, !741, !744, !747, !750, !751}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !128, file: !129, line: 72, baseType: !132, size: 32)
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_buffers", scope: !128, file: !129, line: 73, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "buffer", file: !129, line: 21, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS6buffer")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_nbufs", scope: !128, file: !129, line: 74, baseType: !60, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_streaming", scope: !128, file: !129, line: 75, baseType: !138, size: 8, offset: 160)
!138 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_width", scope: !128, file: !129, line: 76, baseType: !140, size: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 26, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !143, line: 42, baseType: !60)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_height", scope: !128, file: !129, line: 77, baseType: !140, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_format", scope: !128, file: !129, line: 78, baseType: !140, size: 32, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_bytesperline", scope: !128, file: !129, line: 79, baseType: !140, size: 32, offset: 288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_sizeimage", scope: !128, file: !129, line: 80, baseType: !140, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_memtype", scope: !128, file: !129, line: 81, baseType: !140, size: 32, offset: 352)
!149 = !DISubprogram(name: "get_frame", linkageName: "_ZN5Linux7VideoIn9get_frameERNS0_5FrameE", scope: !128, file: !129, line: 41, type: !150, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!138, !152, !153}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Frame", scope: !128, file: !129, line: 31, size: 192, flags: DIFlagPublic | DIFlagTypePassByValue, elements: !155, identifier: "_ZTSN5Linux7VideoIn5FrameE")
!155 = !{!156, !157, !158, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !154, file: !129, line: 34, baseType: !140, size: 32, flags: DIFlagPublic)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !154, file: !129, line: 35, baseType: !140, size: 32, offset: 32, flags: DIFlagPublic)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !154, file: !129, line: 36, baseType: !159, size: 64, offset: 64, flags: DIFlagPublic)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !154, file: !129, line: 38, baseType: !140, size: 32, offset: 128)
!161 = !DISubprogram(name: "put_frame", linkageName: "_ZN5Linux7VideoIn9put_frameERNS0_5FrameE", scope: !128, file: !129, line: 42, type: !162, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !152, !153}
!164 = !DISubprogram(name: "set_device_path", linkageName: "_ZN5Linux7VideoIn15set_device_pathEPKc", scope: !128, file: !129, line: 43, type: !165, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !152, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!168 = !DISubprogram(name: "init", linkageName: "_ZN5Linux7VideoIn4initEv", scope: !128, file: !129, line: 44, type: !169, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !152}
!171 = !DISubprogram(name: "open_device", linkageName: "_ZN5Linux7VideoIn11open_deviceEPKcj", scope: !128, file: !129, line: 45, type: !172, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!138, !152, !167, !140}
!174 = !DISubprogram(name: "allocate_buffers", linkageName: "_ZN5Linux7VideoIn16allocate_buffersEj", scope: !128, file: !129, line: 46, type: !175, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!138, !152, !140}
!177 = !DISubprogram(name: "get_pixel_formats", linkageName: "_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE", scope: !128, file: !129, line: 47, type: !178, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !152, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<unsigned int, std::allocator<unsigned int> >", scope: !183, file: !182, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !184, templateParams: !721, identifier: "_ZTSSt6vectorIjSaIjEE")
!182 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!183 = !DINamespace(name: "std", scope: null)
!184 = !{!185, !407, !426, !442, !443, !449, !452, !455, !459, !465, !469, !475, !480, !484, !487, !490, !493, !496, !501, !502, !506, !509, !512, !515, !518, !580, !586, !587, !588, !593, !598, !599, !600, !601, !602, !603, !604, !607, !608, !611, !612, !613, !614, !617, !618, !626, !633, !636, !637, !638, !641, !644, !645, !646, !649, !652, !655, !659, !660, !663, !666, !669, !672, !675, !678, !681, !682, !683, !684, !685, !688, !689, !692, !693, !694, !698, !701, !706, !709, !712, !715, !718}
!185 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !186, flags: DIFlagProtected, extraData: i32 0)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<unsigned int, std::allocator<unsigned int> >", scope: !183, file: !182, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !187, templateParams: !406, identifier: "_ZTSSt12_Vector_baseIjSaIjEE")
!187 = !{!188, !357, !362, !367, !371, !374, !379, !382, !385, !389, !392, !395, !398, !399, !402, !405}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !186, file: !182, line: 340, baseType: !189, size: 192)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !186, file: !182, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !190, identifier: "_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE")
!190 = !{!191, !312, !337, !341, !346, !350, !354}
!191 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !189, baseType: !192, extraData: i32 0)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !186, file: !182, line: 87, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !195, file: !194, line: 120, baseType: !311)
!194 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<unsigned int>", scope: !196, file: !194, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !310, templateParams: !260, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIjEjE6rebindIjEE")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<unsigned int>, unsigned int>", scope: !197, file: !194, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !198, templateParams: !308, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIjEjEE")
!197 = !DINamespace(name: "__gnu_cxx", scope: null)
!198 = !{!199, !295, !298, !301, !304, !305, !306, !307}
!199 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !196, baseType: !200, extraData: i32 0)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<unsigned int> >", scope: !183, file: !201, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !202, templateParams: !293, identifier: "_ZTSSt16allocator_traitsISaIjEE")
!201 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!202 = !{!203, !277, !281, !284, !290}
!203 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIjEE8allocateERS0_m", scope: !200, file: !201, line: 463, type: !204, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !208, !276}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !200, file: !201, line: 420, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !200, file: !201, line: 414, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<unsigned int>", scope: !183, file: !211, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !212, templateParams: !260, identifier: "_ZTSSaIjE")
!211 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!212 = !{!213, !262, !266, !271, !275}
!213 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !210, baseType: !214, flags: DIFlagPublic, extraData: i32 0)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<unsigned int>", scope: !183, file: !215, line: 48, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!216 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<unsigned int>", scope: !197, file: !217, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !218, templateParams: !260, identifier: "_ZTSN9__gnu_cxx13new_allocatorIjEE")
!217 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!218 = !{!219, !223, !228, !229, !236, !244, !253, !256, !259}
!219 = !DISubprogram(name: "new_allocator", scope: !216, file: !217, line: 79, type: !220, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!223 = !DISubprogram(name: "new_allocator", scope: !216, file: !217, line: 82, type: !224, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !222, !226}
!226 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!228 = !DISubprogram(name: "~new_allocator", scope: !216, file: !217, line: 89, type: !220, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!229 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE7addressERj", scope: !216, file: !217, line: 92, type: !230, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !233, !234}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !216, file: !217, line: 62, baseType: !207, flags: DIFlagPublic)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !216, file: !217, line: 64, baseType: !235, flags: DIFlagPublic)
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !60, size: 64)
!236 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE7addressERKj", scope: !216, file: !217, line: 96, type: !237, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !233, !242}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !216, file: !217, line: 63, baseType: !240, flags: DIFlagPublic)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !216, file: !217, line: 65, baseType: !243, flags: DIFlagPublic)
!243 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !241, size: 64)
!244 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv", scope: !216, file: !217, line: 103, type: !245, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!207, !222, !247, !251}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !217, line: 59, baseType: !248, flags: DIFlagPublic)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !183, file: !249, line: 280, baseType: !250)
!249 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!250 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!253 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm", scope: !216, file: !217, line: 132, type: !254, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !222, !207, !247}
!256 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv", scope: !216, file: !217, line: 154, type: !257, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!247, !233}
!259 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv", scope: !216, file: !217, line: 197, type: !257, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!260 = !{!261}
!261 = !DITemplateTypeParameter(name: "_Tp", type: !60)
!262 = !DISubprogram(name: "allocator", scope: !210, file: !211, line: 156, type: !263, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!266 = !DISubprogram(name: "allocator", scope: !210, file: !211, line: 159, type: !267, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !265, !269}
!269 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!271 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIjEaSERKS_", scope: !210, file: !211, line: 164, type: !272, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !265, !269}
!274 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!275 = !DISubprogram(name: "~allocator", scope: !210, file: !211, line: 174, type: !263, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !201, line: 435, baseType: !248)
!277 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIjEE8allocateERS0_mPKv", scope: !200, file: !201, line: 477, type: !278, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!206, !208, !276, !280}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !201, line: 429, baseType: !251)
!281 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm", scope: !200, file: !201, line: 495, type: !282, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !208, !206, !276}
!284 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_", scope: !200, file: !201, line: 547, type: !285, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !200, file: !201, line: 435, baseType: !248)
!288 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!290 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIjEE37select_on_container_copy_constructionERKS0_", scope: !200, file: !201, line: 562, type: !291, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!209, !288}
!293 = !{!294}
!294 = !DITemplateTypeParameter(name: "_Alloc", type: !210)
!295 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE17_S_select_on_copyERKS1_", scope: !196, file: !194, line: 97, type: !296, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!210, !269}
!298 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE10_S_on_swapERS1_S3_", scope: !196, file: !194, line: 100, type: !299, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !274, !274}
!301 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE27_S_propagate_on_copy_assignEv", scope: !196, file: !194, line: 103, type: !302, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!138}
!304 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE27_S_propagate_on_move_assignEv", scope: !196, file: !194, line: 106, type: !302, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!305 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE20_S_propagate_on_swapEv", scope: !196, file: !194, line: 109, type: !302, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!306 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE15_S_always_equalEv", scope: !196, file: !194, line: 112, type: !302, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!307 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE15_S_nothrow_moveEv", scope: !196, file: !194, line: 115, type: !302, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!308 = !{!294, !309}
!309 = !DITemplateTypeParameter(type: !60)
!310 = !{}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<unsigned int>", scope: !200, file: !201, line: 450, baseType: !210)
!312 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !189, baseType: !313, extraData: i32 0)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !186, file: !182, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !314, identifier: "_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE")
!314 = !{!315, !318, !319, !320, !324, !328, !333}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !313, file: !182, line: 93, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !186, file: !182, line: 89, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !196, file: !194, line: 57, baseType: !206)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !313, file: !182, line: 94, baseType: !316, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !313, file: !182, line: 95, baseType: !316, size: 64, offset: 128)
!320 = !DISubprogram(name: "_Vector_impl_data", scope: !313, file: !182, line: 97, type: !321, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!324 = !DISubprogram(name: "_Vector_impl_data", scope: !313, file: !182, line: 102, type: !325, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !323, !327}
!327 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !313, size: 64)
!328 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_", scope: !313, file: !182, line: 109, type: !329, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !323, !331}
!331 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!333 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_", scope: !313, file: !182, line: 117, type: !334, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !323, !336}
!336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !313, size: 64)
!337 = !DISubprogram(name: "_Vector_impl", scope: !189, file: !182, line: 131, type: !338, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!341 = !DISubprogram(name: "_Vector_impl", scope: !189, file: !182, line: 136, type: !342, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !340, !344}
!344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!346 = !DISubprogram(name: "_Vector_impl", scope: !189, file: !182, line: 143, type: !347, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !340, !349}
!349 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !189, size: 64)
!350 = !DISubprogram(name: "_Vector_impl", scope: !189, file: !182, line: 147, type: !351, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !340, !353}
!353 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !192, size: 64)
!354 = !DISubprogram(name: "_Vector_impl", scope: !189, file: !182, line: 151, type: !355, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !340, !353, !349}
!357 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !186, file: !182, line: 276, type: !358, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !192, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !186, file: !182, line: 280, type: !363, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!344, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!367 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv", scope: !186, file: !182, line: 284, type: !368, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !365}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !186, file: !182, line: 273, baseType: !210)
!371 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 288, type: !372, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !361}
!374 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 293, type: !375, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !361, !377}
!377 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!379 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 298, type: !380, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !361, !248}
!382 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 303, type: !383, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !361, !248, !377}
!385 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 308, type: !386, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !361, !388}
!388 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !186, size: 64)
!389 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 312, type: !390, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !361, !353}
!392 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 315, type: !393, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !361, !388, !377}
!395 = !DISubprogram(name: "_Vector_base", scope: !186, file: !182, line: 328, type: !396, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !361, !377, !388}
!398 = !DISubprogram(name: "~_Vector_base", scope: !186, file: !182, line: 333, type: !372, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm", scope: !186, file: !182, line: 343, type: !400, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{!316, !361, !248}
!402 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm", scope: !186, file: !182, line: 350, type: !403, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !361, !316, !248}
!405 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm", scope: !186, file: !182, line: 359, type: !380, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!406 = !{!261, !294}
!407 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIjSaIjEE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !181, file: !182, line: 431, type: !408, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!138, !410}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !183, file: !411, line: 83, baseType: !412)
!411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !183, file: !411, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !413, templateParams: !423, identifier: "_ZTSSt17integral_constantIbLb1EE")
!413 = !{!414, !416, !422}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !412, file: !411, line: 67, baseType: !415, flags: DIFlagStaticMember, extraData: i1 true)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!416 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !412, file: !411, line: 70, type: !417, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !412, file: !411, line: 68, baseType: !138)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!422 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !412, file: !411, line: 75, type: !417, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!423 = !{!424, !425}
!424 = !DITemplateTypeParameter(name: "_Tp", type: !138)
!425 = !DITemplateValueParameter(name: "__v", type: !138, value: i1 true)
!426 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIjSaIjEE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !181, file: !182, line: 440, type: !427, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!138, !429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !183, file: !411, line: 86, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !183, file: !411, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !431, templateParams: !440, identifier: "_ZTSSt17integral_constantIbLb0EE")
!431 = !{!432, !433, !439}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !430, file: !411, line: 67, baseType: !415, flags: DIFlagStaticMember, extraData: i1 false)
!433 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !430, file: !411, line: 70, type: !434, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !430, file: !411, line: 68, baseType: !138)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!439 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !430, file: !411, line: 75, type: !434, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!440 = !{!424, !441}
!441 = !DITemplateValueParameter(name: "__v", type: !138, value: i1 false)
!442 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorIjSaIjEE15_S_use_relocateEv", scope: !181, file: !182, line: 444, type: !302, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!443 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE", scope: !181, file: !182, line: 453, type: !444, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !446, !446, !446, !447, !410}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !181, file: !182, line: 415, baseType: !316, flags: DIFlagPublic)
!447 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !181, file: !182, line: 410, baseType: !192)
!449 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb0EE", scope: !181, file: !182, line: 460, type: !450, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!450 = !DISubroutineType(types: !451)
!451 = !{!446, !446, !446, !446, !447, !429}
!452 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_", scope: !181, file: !182, line: 465, type: !453, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!446, !446, !446, !446, !447}
!455 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 487, type: !456, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!459 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 497, type: !460, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !458, !462}
!462 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !181, file: !182, line: 426, baseType: !210, flags: DIFlagPublic)
!465 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 510, type: !466, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !458, !468, !462}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !182, line: 424, baseType: !248, flags: DIFlagPublic)
!469 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 522, type: !470, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !458, !468, !472, !462}
!472 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !181, file: !182, line: 414, baseType: !60, flags: DIFlagPublic)
!475 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 553, type: !476, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !458, !478}
!478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!480 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 572, type: !481, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !458, !483}
!483 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !181, size: 64)
!484 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 575, type: !485, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !458, !478, !462}
!487 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 585, type: !488, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !458, !483, !462, !410}
!490 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 589, type: !491, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !458, !483, !462, !429}
!493 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 607, type: !494, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !458, !483, !462}
!496 = !DISubprogram(name: "vector", scope: !181, file: !182, line: 625, type: !497, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !458, !499, !462}
!499 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<unsigned int>", scope: !183, file: !500, line: 47, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIjE")
!500 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!501 = !DISubprogram(name: "~vector", scope: !181, file: !182, line: 678, type: !456, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!502 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSERKS1_", scope: !181, file: !182, line: 695, type: !503, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !458, !478}
!505 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!506 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSEOS1_", scope: !181, file: !182, line: 709, type: !507, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!505, !458, !483}
!509 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSESt16initializer_listIjE", scope: !181, file: !182, line: 730, type: !510, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!505, !458, !499}
!512 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIjSaIjEE6assignEmRKj", scope: !181, file: !182, line: 749, type: !513, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !458, !468, !472}
!515 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIjSaIjEE6assignESt16initializer_listIjE", scope: !181, file: !182, line: 794, type: !516, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !458, !499}
!518 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIjSaIjEE5beginEv", scope: !181, file: !182, line: 811, type: !519, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !458}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !181, file: !182, line: 419, baseType: !522, flags: DIFlagPublic)
!522 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", scope: !197, file: !523, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !524, templateParams: !578, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEE")
!523 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!524 = !{!525, !526, !530, !535, !546, !551, !555, !558, !559, !560, !567, !570, !573, !574, !575}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !522, file: !523, line: 1007, baseType: !207, size: 64, flags: DIFlagProtected)
!526 = !DISubprogram(name: "__normal_iterator", scope: !522, file: !523, line: 1023, type: !527, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!530 = !DISubprogram(name: "__normal_iterator", scope: !522, file: !523, line: 1027, type: !531, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !529, !533}
!533 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!535 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv", scope: !522, file: !523, line: 1042, type: !536, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !544}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !522, file: !523, line: 1016, baseType: !539, flags: DIFlagPublic)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !541, file: !540, line: 216, baseType: !235)
!540 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<unsigned int *>", scope: !183, file: !540, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !310, templateParams: !542, identifier: "_ZTSSt15iterator_traitsIPjE")
!542 = !{!543}
!543 = !DITemplateTypeParameter(name: "_Iterator", type: !207)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!546 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEptEv", scope: !522, file: !523, line: 1047, type: !547, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !544}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !522, file: !523, line: 1017, baseType: !550, flags: DIFlagPublic)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !541, file: !540, line: 215, baseType: !207)
!551 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv", scope: !522, file: !523, line: 1052, type: !552, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!554, !529}
!554 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !522, size: 64)
!555 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEi", scope: !522, file: !523, line: 1060, type: !556, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!522, !529, !132}
!558 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmmEv", scope: !522, file: !523, line: 1066, type: !552, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!559 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmmEi", scope: !522, file: !523, line: 1074, type: !556, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!560 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEixEl", scope: !522, file: !523, line: 1080, type: !561, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!538, !544, !563}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !522, file: !523, line: 1015, baseType: !564, flags: DIFlagPublic)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !541, file: !540, line: 214, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !183, file: !249, line: 281, baseType: !566)
!566 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!567 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEpLEl", scope: !522, file: !523, line: 1085, type: !568, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!554, !529, !563}
!570 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl", scope: !522, file: !523, line: 1090, type: !571, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!522, !544, !563}
!573 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmIEl", scope: !522, file: !523, line: 1095, type: !568, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!574 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmiEl", scope: !522, file: !523, line: 1100, type: !571, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!575 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv", scope: !522, file: !523, line: 1105, type: !576, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!533, !544}
!578 = !{!543, !579}
!579 = !DITemplateTypeParameter(name: "_Container", type: !181)
!580 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIjSaIjEE5beginEv", scope: !181, file: !182, line: 820, type: !581, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !585}
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !181, file: !182, line: 421, baseType: !584, flags: DIFlagPublic)
!584 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", scope: !197, file: !523, line: 1004, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEE")
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!586 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIjSaIjEE3endEv", scope: !181, file: !182, line: 829, type: !519, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!587 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIjSaIjEE3endEv", scope: !181, file: !182, line: 838, type: !581, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!588 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIjSaIjEE6rbeginEv", scope: !181, file: !182, line: 847, type: !589, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!591, !458}
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !181, file: !182, line: 423, baseType: !592, flags: DIFlagPublic)
!592 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > > >", scope: !183, file: !523, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEE")
!593 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIjSaIjEE6rbeginEv", scope: !181, file: !182, line: 856, type: !594, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !585}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !181, file: !182, line: 422, baseType: !597, flags: DIFlagPublic)
!597 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > > >", scope: !183, file: !523, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEE")
!598 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIjSaIjEE4rendEv", scope: !181, file: !182, line: 865, type: !589, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!599 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIjSaIjEE4rendEv", scope: !181, file: !182, line: 874, type: !594, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIjSaIjEE6cbeginEv", scope: !181, file: !182, line: 884, type: !581, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!601 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIjSaIjEE4cendEv", scope: !181, file: !182, line: 893, type: !581, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!602 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIjSaIjEE7crbeginEv", scope: !181, file: !182, line: 902, type: !594, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIjSaIjEE5crendEv", scope: !181, file: !182, line: 911, type: !594, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIjSaIjEE4sizeEv", scope: !181, file: !182, line: 918, type: !605, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!468, !585}
!607 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIjSaIjEE8max_sizeEv", scope: !181, file: !182, line: 923, type: !605, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!608 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIjSaIjEE6resizeEm", scope: !181, file: !182, line: 937, type: !609, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !458, !468}
!611 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIjSaIjEE6resizeEmRKj", scope: !181, file: !182, line: 957, type: !513, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!612 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIjSaIjEE13shrink_to_fitEv", scope: !181, file: !182, line: 989, type: !456, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!613 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIjSaIjEE8capacityEv", scope: !181, file: !182, line: 998, type: !605, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!614 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIjSaIjEE5emptyEv", scope: !181, file: !182, line: 1007, type: !615, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!138, !585}
!617 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIjSaIjEE7reserveEm", scope: !181, file: !182, line: 1028, type: !609, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!618 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIjSaIjEEixEm", scope: !181, file: !182, line: 1043, type: !619, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !458, !468}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !181, file: !182, line: 417, baseType: !622, flags: DIFlagPublic)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !196, file: !194, line: 62, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !196, file: !194, line: 56, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !200, file: !201, line: 417, baseType: !60)
!626 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIjSaIjEEixEm", scope: !181, file: !182, line: 1061, type: !627, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !585, !468}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !181, file: !182, line: 418, baseType: !630, flags: DIFlagPublic)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !196, file: !194, line: 63, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!633 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIjSaIjEE14_M_range_checkEm", scope: !181, file: !182, line: 1070, type: !634, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !585, !468}
!636 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIjSaIjEE2atEm", scope: !181, file: !182, line: 1092, type: !619, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!637 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIjSaIjEE2atEm", scope: !181, file: !182, line: 1110, type: !627, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!638 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIjSaIjEE5frontEv", scope: !181, file: !182, line: 1121, type: !639, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{!621, !458}
!641 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIjSaIjEE5frontEv", scope: !181, file: !182, line: 1132, type: !642, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!629, !585}
!644 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIjSaIjEE4backEv", scope: !181, file: !182, line: 1143, type: !639, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!645 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIjSaIjEE4backEv", scope: !181, file: !182, line: 1154, type: !642, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!646 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIjSaIjEE4dataEv", scope: !181, file: !182, line: 1168, type: !647, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!207, !458}
!649 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIjSaIjEE4dataEv", scope: !181, file: !182, line: 1172, type: !650, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!240, !585}
!652 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIjSaIjEE9push_backERKj", scope: !181, file: !182, line: 1187, type: !653, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !458, !472}
!655 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIjSaIjEE9push_backEOj", scope: !181, file: !182, line: 1203, type: !656, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !458, !658}
!658 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !474, size: 64)
!659 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIjSaIjEE8pop_backEv", scope: !181, file: !182, line: 1225, type: !456, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!660 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_", scope: !181, file: !182, line: 1263, type: !661, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!521, !458, !583, !472}
!663 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !181, file: !182, line: 1293, type: !664, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!521, !458, !583, !658}
!666 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EESt16initializer_listIjE", scope: !181, file: !182, line: 1310, type: !667, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{!521, !458, !583, !499}
!669 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_", scope: !181, file: !182, line: 1335, type: !670, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!521, !458, !583, !468, !472}
!672 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE", scope: !181, file: !182, line: 1430, type: !673, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!521, !458, !583}
!675 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_", scope: !181, file: !182, line: 1457, type: !676, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!521, !458, !583, !583}
!678 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIjSaIjEE4swapERS1_", scope: !181, file: !182, line: 1480, type: !679, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !458, !505}
!681 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIjSaIjEE5clearEv", scope: !181, file: !182, line: 1498, type: !456, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!682 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIjSaIjEE18_M_fill_initializeEmRKj", scope: !181, file: !182, line: 1593, type: !513, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!683 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIjSaIjEE21_M_default_initializeEm", scope: !181, file: !182, line: 1603, type: !609, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!684 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_fill_assignEmRKj", scope: !181, file: !182, line: 1645, type: !513, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!685 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj", scope: !181, file: !182, line: 1684, type: !686, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !458, !521, !468, !472}
!688 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIjSaIjEE17_M_default_appendEm", scope: !181, file: !182, line: 1689, type: !609, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!689 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIjSaIjEE16_M_shrink_to_fitEv", scope: !181, file: !182, line: 1692, type: !690, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!690 = !DISubroutineType(types: !691)
!691 = !{!138, !458}
!692 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !181, file: !182, line: 1741, type: !664, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!693 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorIjSaIjEE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !181, file: !182, line: 1750, type: !664, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!694 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc", scope: !181, file: !182, line: 1756, type: !695, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !585, !468, !167}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !181, file: !182, line: 424, baseType: !248, flags: DIFlagPublic)
!698 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_", scope: !181, file: !182, line: 1767, type: !699, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!697, !468, !462}
!701 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_", scope: !181, file: !182, line: 1776, type: !702, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{!697, !704}
!704 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!706 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIjSaIjEE15_M_erase_at_endEPj", scope: !181, file: !182, line: 1792, type: !707, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !458, !446}
!709 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EE", scope: !181, file: !182, line: 1804, type: !710, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!521, !458, !521}
!712 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_", scope: !181, file: !182, line: 1807, type: !713, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!521, !458, !521, !521}
!715 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !181, file: !182, line: 1815, type: !716, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !458, !483, !410}
!718 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !181, file: !182, line: 1826, type: !719, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !458, !483, !429}
!721 = !{!261, !722}
!722 = !DITemplateTypeParameter(name: "_Alloc", type: !210, defaulted: true)
!723 = !DISubprogram(name: "set_format", linkageName: "_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_", scope: !128, file: !129, line: 48, type: !724, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!138, !152, !726, !726, !726, !726, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!727 = !DISubprogram(name: "set_crop", linkageName: "_ZN5Linux7VideoIn8set_cropEjjjj", scope: !128, file: !129, line: 50, type: !728, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!138, !152, !140, !140, !140, !140}
!730 = !DISubprogram(name: "prepare_capture", linkageName: "_ZN5Linux7VideoIn15prepare_captureEv", scope: !128, file: !129, line: 52, type: !169, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!731 = !DISubprogram(name: "shrink_8bpp", linkageName: "_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj", scope: !128, file: !129, line: 54, type: !732, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734, !734, !140, !140, !140, !140, !140, !140, !140, !140}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !141, line: 24, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !143, line: 38, baseType: !737)
!737 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!738 = !DISubprogram(name: "crop_8bpp", linkageName: "_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj", scope: !128, file: !129, line: 59, type: !739, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !734, !734, !140, !140, !140, !140, !140}
!741 = !DISubprogram(name: "yuyv_to_grey", linkageName: "_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_", scope: !128, file: !129, line: 64, type: !742, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !734, !140, !734}
!744 = !DISubprogram(name: "_queue_buffer", linkageName: "_ZN5Linux7VideoIn13_queue_bufferEi", scope: !128, file: !129, line: 68, type: !745, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !152, !132}
!747 = !DISubprogram(name: "_set_streaming", linkageName: "_ZN5Linux7VideoIn14_set_streamingEb", scope: !128, file: !129, line: 69, type: !748, scopeLine: 69, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!138, !152, !138}
!750 = !DISubprogram(name: "_dequeue_frame", linkageName: "_ZN5Linux7VideoIn14_dequeue_frameERNS0_5FrameE", scope: !128, file: !129, line: 70, type: !150, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubprogram(name: "_timeval_to_us", linkageName: "_ZN5Linux7VideoIn14_timeval_to_usER7timeval", scope: !128, file: !129, line: 71, type: !752, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DISubroutineType(types: !753)
!753 = !{!140, !152, !754}
!754 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !756, line: 8, size: 128, flags: DIFlagTypePassByValue, elements: !757, identifier: "_ZTS7timeval")
!756 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !755, file: !756, line: 14, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !143, line: 160, baseType: !566)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !755, file: !756, line: 15, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !143, line: 162, baseType: !566)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_last_video_frame", scope: !118, file: !119, line: 36, baseType: !154, size: 192, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_pwm", scope: !118, file: !119, line: 37, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_class_type, name: "PWM_Sysfs_Base", scope: !120, file: !766, line: 8, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!766 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/PWM_Sysfs.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5af82f9c516108dd2231a00cd6683187")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_camerasensor", scope: !118, file: !119, line: 38, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_class_type, name: "CameraSensor", scope: !120, file: !770, line: 19, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5Linux12CameraSensorE")
!770 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/CameraSensor.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ab06175cc466a95f4dd846f5b2b8ee79")
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flow", scope: !118, file: !119, line: 39, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_class_type, name: "Flow_PX4", scope: !120, file: !774, line: 19, size: 224, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5Linux8Flow_PX4E")
!774 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Flow_PX4.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7ee789e8cf27f3c8c3149c08ea7cb467")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_thread", scope: !118, file: !119, line: 40, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !777, line: 27, baseType: !250)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_mutex", scope: !118, file: !119, line: 41, baseType: !779, size: 320, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !777, line: 72, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !777, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !781, identifier: "_ZTS15pthread_mutex_t")
!781 = !{!782, !802, !806}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !780, file: !777, line: 69, baseType: !783, size: 320)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !784, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !785, identifier: "_ZTS17__pthread_mutex_s")
!784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!785 = !{!786, !787, !788, !789, !790, !791, !793, !794}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !783, file: !784, line: 24, baseType: !132, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !784, line: 25, baseType: !60, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !783, file: !784, line: 26, baseType: !132, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !783, file: !784, line: 28, baseType: !60, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !783, file: !784, line: 32, baseType: !132, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !783, file: !784, line: 34, baseType: !792, size: 16, offset: 160)
!792 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !783, file: !784, line: 35, baseType: !792, size: 16, offset: 176)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !783, file: !784, line: 36, baseType: !795, size: 128, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !796, line: 55, baseType: !797)
!796 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !796, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !798, identifier: "_ZTS23__pthread_internal_list")
!798 = !{!799, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !797, file: !796, line: 53, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !797, file: !796, line: 54, baseType: !800, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !780, file: !777, line: 70, baseType: !803, size: 320)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 40)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !780, file: !777, line: 71, baseType: !566, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_initialized", scope: !118, file: !119, line: 42, baseType: !138, size: 8, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_data_available", scope: !118, file: !119, line: 43, baseType: !138, size: 8, offset: 904)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_crop_by_software", scope: !118, file: !119, line: 44, baseType: !138, size: 8, offset: 912)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_shrink_by_software", scope: !118, file: !119, line: 45, baseType: !138, size: 8, offset: 920)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_camera_output_width", scope: !118, file: !119, line: 46, baseType: !140, size: 32, offset: 928)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_camera_output_height", scope: !118, file: !119, line: 47, baseType: !140, size: 32, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_width", scope: !118, file: !119, line: 48, baseType: !140, size: 32, offset: 992)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_height", scope: !118, file: !119, line: 49, baseType: !140, size: 32, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_format", scope: !118, file: !119, line: 50, baseType: !140, size: 32, offset: 1056)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_bytesperline", scope: !118, file: !119, line: 51, baseType: !140, size: 32, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_sizeimage", scope: !118, file: !119, line: 52, baseType: !140, size: 32, offset: 1120)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_pixel_flow_x_integral", scope: !118, file: !119, line: 53, baseType: !819, size: 32, offset: 1152)
!819 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_pixel_flow_y_integral", scope: !118, file: !119, line: 54, baseType: !819, size: 32, offset: 1184)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_gyro_x_integral", scope: !118, file: !119, line: 55, baseType: !819, size: 32, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_gyro_y_integral", scope: !118, file: !119, line: 56, baseType: !819, size: 32, offset: 1248)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_integration_timespan", scope: !118, file: !119, line: 57, baseType: !140, size: 32, offset: 1280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_surface_quality", scope: !118, file: !119, line: 58, baseType: !735, size: 8, offset: 1312)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_get_gyro", scope: !118, file: !119, line: 59, baseType: !826, size: 128, offset: 1344)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "Gyro_Cb", scope: !123, file: !124, line: 29, baseType: !827, flags: DIFlagPublic)
!827 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Functor<void, float &, float &, float &>", file: !828, line: 36, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !829, templateParams: !859, identifier: "_ZTS7FunctorIvJRfS0_S0_EE")
!828 = !DIFile(filename: "ardupilot/libraries/AP_HAL/utility/functor.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ce8d7f01a6b110e9ab9c61001786a69b")
!829 = !{!830, !831, !836, !840, !844, !847, !852, !856}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_obj", scope: !827, file: !828, line: 78, baseType: !159, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_method", scope: !827, file: !828, line: 79, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !159, !835, !835, !835}
!835 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !819, size: 64)
!836 = !DISubprogram(name: "Functor", scope: !827, file: !828, line: 39, type: !837, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !839, !159, !832}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!840 = !DISubprogram(name: "Functor", scope: !827, file: !828, line: 46, type: !841, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !839, !843}
!843 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!844 = !DISubprogram(name: "Functor", scope: !827, file: !828, line: 49, type: !845, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !839}
!847 = !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_", scope: !827, file: !828, line: 53, type: !848, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850, !835, !835, !835}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!852 = !DISubprogram(name: "operator==", linkageName: "_ZN7FunctorIvJRfS0_S0_EEeqERKS1_", scope: !827, file: !828, line: 60, type: !853, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!138, !839, !855}
!855 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !851, size: 64)
!856 = !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEcvbEv", scope: !827, file: !828, line: 66, type: !857, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!857 = !DISubroutineType(types: !858)
!858 = !{!138, !850}
!859 = !{!860, !861}
!860 = !DITemplateTypeParameter(name: "RetType", type: null)
!861 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !862)
!862 = !{!863, !863, !863}
!863 = !DITemplateTypeParameter(type: !835)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_last_gyro_rate", scope: !118, file: !119, line: 60, baseType: !865, size: 96, offset: 1472)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vector3f", file: !866, line: 218, baseType: !867)
!866 = !DIFile(filename: "ardupilot/libraries/AP_Math/vector3.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "29233b5c46fd321fe8809e56c85d2bd8")
!867 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Vector3<float>", file: !866, line: 64, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !868, templateParams: !951, identifier: "_ZTS7Vector3IfE")
!868 = !{!869, !870, !871, !872, !876, !880, !881, !887, !888, !891, !894, !895, !898, !899, !903, !904, !907, !908, !911, !915, !918, !925, !928, !929, !930, !933, !934, !935, !938, !939, !942, !943, !944, !945, !946, !949, !950}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !867, file: !866, line: 68, baseType: !819, size: 32, flags: DIFlagPublic)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !867, file: !866, line: 68, baseType: !819, size: 32, offset: 32, flags: DIFlagPublic)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !867, file: !866, line: 68, baseType: !819, size: 32, offset: 64, flags: DIFlagPublic)
!872 = !DISubprogram(name: "Vector3", scope: !867, file: !866, line: 71, type: !873, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!876 = !DISubprogram(name: "Vector3", scope: !867, file: !866, line: 76, type: !877, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !875, !879, !879, !879}
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!880 = !DISubprogram(name: "operator()", linkageName: "_ZN7Vector3IfEclEfff", scope: !867, file: !866, line: 80, type: !877, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!881 = !DISubprogram(name: "operator==", linkageName: "_ZNK7Vector3IfEeqERKS0_", scope: !867, file: !866, line: 86, type: !882, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!138, !884, !886}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!886 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !885, size: 64)
!887 = !DISubprogram(name: "operator!=", linkageName: "_ZNK7Vector3IfEneERKS0_", scope: !867, file: !866, line: 89, type: !882, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!888 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEngEv", scope: !867, file: !866, line: 92, type: !889, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!889 = !DISubroutineType(types: !890)
!890 = !{!867, !884}
!891 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector3IfEplERKS0_", scope: !867, file: !866, line: 95, type: !892, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!892 = !DISubroutineType(types: !893)
!893 = !{!867, !884, !886}
!894 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !867, file: !866, line: 98, type: !892, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!895 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlEf", scope: !867, file: !866, line: 101, type: !896, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!867, !884, !879}
!898 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector3IfEdvEf", scope: !867, file: !866, line: 104, type: !896, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!899 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector3IfEpLERKS0_", scope: !867, file: !866, line: 107, type: !900, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!902, !875, !886}
!902 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !867, size: 64)
!903 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector3IfEmIERKS0_", scope: !867, file: !866, line: 110, type: !900, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!904 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector3IfEmLEf", scope: !867, file: !866, line: 113, type: !905, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!905 = !DISubroutineType(types: !906)
!906 = !{!902, !875, !879}
!907 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector3IfEdVEf", scope: !867, file: !866, line: 116, type: !905, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!908 = !DISubprogram(name: "operator[]", linkageName: "_ZN7Vector3IfEixEh", scope: !867, file: !866, line: 119, type: !909, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{!835, !875, !735}
!911 = !DISubprogram(name: "operator[]", linkageName: "_ZNK7Vector3IfEixEh", scope: !867, file: !866, line: 127, type: !912, scopeLine: 127, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !884, !735}
!914 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !879, size: 64)
!915 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERKS0_", scope: !867, file: !866, line: 136, type: !916, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!916 = !DISubroutineType(types: !917)
!917 = !{!819, !884, !886}
!918 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERK7Matrix3IfE", scope: !867, file: !866, line: 139, type: !919, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!919 = !DISubroutineType(types: !920)
!920 = !{!867, !884, !921}
!921 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DICompositeType(tag: DW_TAG_class_type, name: "Matrix3<float>", file: !924, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS7Matrix3IfE")
!924 = !DIFile(filename: "ardupilot/libraries/AP_Math/matrix3.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "8c023c39d650bc76ff484f39d0e25f8b")
!925 = !DISubprogram(name: "mul_rowcol", linkageName: "_ZNK7Vector3IfE10mul_rowcolERKS0_", scope: !867, file: !866, line: 142, type: !926, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!926 = !DISubroutineType(types: !927)
!927 = !{!923, !884, !886}
!928 = !DISubprogram(name: "operator%", linkageName: "_ZNK7Vector3IfErmERKS0_", scope: !867, file: !866, line: 145, type: !892, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!929 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector3IfE5angleERKS0_", scope: !867, file: !866, line: 148, type: !916, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!930 = !DISubprogram(name: "is_nan", linkageName: "_ZNK7Vector3IfE6is_nanEv", scope: !867, file: !866, line: 151, type: !931, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!931 = !DISubroutineType(types: !932)
!932 = !{!138, !884}
!933 = !DISubprogram(name: "is_inf", linkageName: "_ZNK7Vector3IfE6is_infEv", scope: !867, file: !866, line: 154, type: !931, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!934 = !DISubprogram(name: "is_zero", linkageName: "_ZNK7Vector3IfE7is_zeroEv", scope: !867, file: !866, line: 157, type: !931, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!935 = !DISubprogram(name: "rotate", linkageName: "_ZN7Vector3IfE6rotateE8Rotation", scope: !867, file: !866, line: 161, type: !936, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !875, !71}
!938 = !DISubprogram(name: "rotate_inverse", linkageName: "_ZN7Vector3IfE14rotate_inverseE8Rotation", scope: !867, file: !866, line: 162, type: !936, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!939 = !DISubprogram(name: "length_squared", linkageName: "_ZNK7Vector3IfE14length_squaredEv", scope: !867, file: !866, line: 165, type: !940, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!819, !884}
!942 = !DISubprogram(name: "length", linkageName: "_ZNK7Vector3IfE6lengthEv", scope: !867, file: !866, line: 171, type: !940, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!943 = !DISubprogram(name: "normalize", linkageName: "_ZN7Vector3IfE9normalizeEv", scope: !867, file: !866, line: 174, type: !873, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!944 = !DISubprogram(name: "zero", linkageName: "_ZN7Vector3IfE4zeroEv", scope: !867, file: !866, line: 180, type: !873, scopeLine: 180, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!945 = !DISubprogram(name: "normalized", linkageName: "_ZNK7Vector3IfE10normalizedEv", scope: !867, file: !866, line: 186, type: !889, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!946 = !DISubprogram(name: "reflect", linkageName: "_ZN7Vector3IfE7reflectERKS0_", scope: !867, file: !866, line: 192, type: !947, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !875, !886}
!949 = !DISubprogram(name: "project", linkageName: "_ZN7Vector3IfE7projectERKS0_", scope: !867, file: !866, line: 200, type: !947, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!950 = !DISubprogram(name: "projected", linkageName: "_ZNK7Vector3IfE9projectedERKS0_", scope: !867, file: !866, line: 206, type: !892, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!951 = !{!952}
!952 = !DITemplateTypeParameter(name: "T", type: !819)
!953 = !DISubprogram(name: "init", linkageName: "_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE", scope: !118, file: !119, line: 29, type: !954, scopeLine: 29, containingType: !118, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !956, !826}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!957 = !DISubprogram(name: "read", linkageName: "_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE", scope: !118, file: !119, line: 30, type: !958, scopeLine: 30, containingType: !118, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!958 = !DISubroutineType(types: !959)
!959 = !{!138, !956, !960}
!960 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Data_Frame", scope: !123, file: !124, line: 19, size: 192, flags: DIFlagPublic | DIFlagTypePassByValue, elements: !962, identifier: "_ZTSN6AP_HAL11OpticalFlow10Data_FrameE")
!962 = !{!963, !964, !965, !966, !967, !968}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_flow_x_integral", scope: !961, file: !124, line: 21, baseType: !819, size: 32, flags: DIFlagPublic)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_flow_y_integral", scope: !961, file: !124, line: 22, baseType: !819, size: 32, offset: 32, flags: DIFlagPublic)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gyro_x_integral", scope: !961, file: !124, line: 23, baseType: !819, size: 32, offset: 64, flags: DIFlagPublic)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gyro_y_integral", scope: !961, file: !124, line: 24, baseType: !819, size: 32, offset: 96, flags: DIFlagPublic)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "delta_time", scope: !961, file: !124, line: 25, baseType: !140, size: 32, offset: 128, flags: DIFlagPublic)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !961, file: !124, line: 26, baseType: !735, size: 8, offset: 160, flags: DIFlagPublic)
!969 = !DISubprogram(name: "_run_optflow", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv", scope: !118, file: !119, line: 33, type: !970, scopeLine: 33, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !956}
!972 = !DISubprogram(name: "_read_thread", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv", scope: !118, file: !119, line: 34, type: !973, scopeLine: 34, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{!159, !159}
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector2<float>", file: !976, line: 36, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !977, templateParams: !951, identifier: "_ZTS7Vector2IfE")
!976 = !DIFile(filename: "ardupilot/libraries/AP_Math/vector2.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "84a3a252617a33abfb36b94d0fc43de7")
!977 = !{!978, !979, !980, !984, !987, !988, !994, !995, !998, !1001, !1002, !1005, !1006, !1010, !1011, !1014, !1015, !1018, !1019, !1020, !1023, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1036, !1037}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !975, file: !976, line: 38, baseType: !819, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !975, file: !976, line: 38, baseType: !819, size: 32, offset: 32)
!980 = !DISubprogram(name: "Vector2", scope: !975, file: !976, line: 41, type: !981, scopeLine: 41, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!984 = !DISubprogram(name: "Vector2", scope: !975, file: !976, line: 46, type: !985, scopeLine: 46, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !983, !879, !879}
!987 = !DISubprogram(name: "operator()", linkageName: "_ZN7Vector2IfEclEff", scope: !975, file: !976, line: 50, type: !985, scopeLine: 50, flags: DIFlagPrototyped, spFlags: 0)
!988 = !DISubprogram(name: "operator==", linkageName: "_ZNK7Vector2IfEeqERKS0_", scope: !975, file: !976, line: 56, type: !989, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DISubroutineType(types: !990)
!990 = !{!138, !991, !993}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!993 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !992, size: 64)
!994 = !DISubprogram(name: "operator!=", linkageName: "_ZNK7Vector2IfEneERKS0_", scope: !975, file: !976, line: 59, type: !989, scopeLine: 59, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector2IfEngEv", scope: !975, file: !976, line: 62, type: !996, scopeLine: 62, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DISubroutineType(types: !997)
!997 = !{!975, !991}
!998 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector2IfEplERKS0_", scope: !975, file: !976, line: 65, type: !999, scopeLine: 65, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!975, !991, !993}
!1001 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector2IfEmiERKS0_", scope: !975, file: !976, line: 68, type: !999, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector2IfEmlEf", scope: !975, file: !976, line: 71, type: !1003, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!975, !991, !879}
!1005 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector2IfEdvEf", scope: !975, file: !976, line: 74, type: !1003, scopeLine: 74, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector2IfEpLERKS0_", scope: !975, file: !976, line: 77, type: !1007, scopeLine: 77, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!1009, !983, !993}
!1009 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !975, size: 64)
!1010 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector2IfEmIERKS0_", scope: !975, file: !976, line: 80, type: !1007, scopeLine: 80, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector2IfEmLEf", scope: !975, file: !976, line: 83, type: !1012, scopeLine: 83, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!1009, !983, !879}
!1014 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector2IfEdVEf", scope: !975, file: !976, line: 86, type: !1012, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector2IfEmlERKS0_", scope: !975, file: !976, line: 89, type: !1016, scopeLine: 89, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!819, !991, !993}
!1018 = !DISubprogram(name: "operator%", linkageName: "_ZNK7Vector2IfErmERKS0_", scope: !975, file: !976, line: 92, type: !1016, scopeLine: 92, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector2IfE5angleERKS0_", scope: !975, file: !976, line: 95, type: !1016, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector2IfE5angleEv", scope: !975, file: !976, line: 98, type: !1021, scopeLine: 98, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!819, !991}
!1023 = !DISubprogram(name: "is_nan", linkageName: "_ZNK7Vector2IfE6is_nanEv", scope: !975, file: !976, line: 101, type: !1024, scopeLine: 101, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!138, !991}
!1026 = !DISubprogram(name: "is_inf", linkageName: "_ZNK7Vector2IfE6is_infEv", scope: !975, file: !976, line: 104, type: !1024, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DISubprogram(name: "is_zero", linkageName: "_ZNK7Vector2IfE7is_zeroEv", scope: !975, file: !976, line: 107, type: !1024, scopeLine: 107, flags: DIFlagPrototyped, spFlags: 0)
!1028 = !DISubprogram(name: "zero", linkageName: "_ZN7Vector2IfE4zeroEv", scope: !975, file: !976, line: 110, type: !981, scopeLine: 110, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DISubprogram(name: "length_squared", linkageName: "_ZNK7Vector2IfE14length_squaredEv", scope: !975, file: !976, line: 116, type: !1021, scopeLine: 116, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DISubprogram(name: "length", linkageName: "_ZNK7Vector2IfE6lengthEv", scope: !975, file: !976, line: 122, type: !1021, scopeLine: 122, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DISubprogram(name: "normalize", linkageName: "_ZN7Vector2IfE9normalizeEv", scope: !975, file: !976, line: 125, type: !981, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DISubprogram(name: "normalized", linkageName: "_ZNK7Vector2IfE10normalizedEv", scope: !975, file: !976, line: 131, type: !996, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DISubprogram(name: "reflect", linkageName: "_ZN7Vector2IfE7reflectERKS0_", scope: !975, file: !976, line: 137, type: !1034, scopeLine: 137, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !983, !993}
!1036 = !DISubprogram(name: "project", linkageName: "_ZN7Vector2IfE7projectERKS0_", scope: !975, file: !976, line: 145, type: !1034, scopeLine: 145, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubprogram(name: "projected", linkageName: "_ZN7Vector2IfE9projectedERKS0_", scope: !975, file: !976, line: 151, type: !1038, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!975, !983, !993}
!1040 = !{!0, !8, !13, !18, !23, !28, !33, !38, !43, !48, !53}
!1041 = !{!1042, !1047, !1053, !1057, !1063, !1067, !1073, !1078, !1080, !1085, !1089, !1093, !1101, !1103, !1107, !1111, !1115, !1120, !1124, !1128, !1132, !1136, !1144, !1148, !1152, !1154, !1158, !1162, !1166, !1172, !1176, !1180, !1182, !1190, !1194, !1201, !1203, !1207, !1211, !1215, !1219, !1224, !1228, !1233, !1234, !1235, !1236, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1287, !1289, !1291, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1314, !1318, !1320, !1322, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1342, !1344, !1346, !1350, !1354, !1356, !1358, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1378, !1382, !1384, !1386, !1388, !1390, !1392, !1394, !1396, !1398, !1400, !1402, !1404, !1406, !1408, !1410, !1412, !1416, !1420, !1424, !1426, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1446, !1450, !1454, !1456, !1458, !1460, !1464, !1468, !1472, !1474, !1476, !1478, !1480, !1482, !1484, !1486, !1488, !1490, !1492, !1494, !1496, !1500, !1504, !1508, !1510, !1512, !1514, !1516, !1520, !1524, !1526, !1528, !1530, !1532, !1534, !1536, !1540, !1544, !1546, !1548, !1550, !1552, !1556, !1560, !1564, !1566, !1568, !1570, !1572, !1574, !1576, !1580, !1584, !1588, !1590, !1594, !1598, !1600, !1602, !1604, !1606, !1608, !1610, !1614}
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1043, file: !1046, line: 58)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1044, line: 24, baseType: !1045)
!1044 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!1045 = !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!1046 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1048, file: !1052, line: 52)
!1048 = !DISubprogram(name: "abs", scope: !1049, file: !1049, line: 848, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!132, !132}
!1052 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1054, file: !1056, line: 127)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1049, line: 63, baseType: !1055)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1056 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1058, file: !1056, line: 128)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1049, line: 71, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1060, identifier: "_ZTS6ldiv_t")
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1059, file: !1049, line: 69, baseType: !566, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1059, file: !1049, line: 70, baseType: !566, size: 64, offset: 64)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1064, file: !1056, line: 130)
!1064 = !DISubprogram(name: "abort", scope: !1049, file: !1049, line: 598, type: !1065, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1068, file: !1056, line: 132)
!1068 = !DISubprogram(name: "aligned_alloc", scope: !1049, file: !1049, line: 592, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!159, !1071, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1072, line: 46, baseType: !250)
!1072 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1074, file: !1056, line: 134)
!1074 = !DISubprogram(name: "atexit", scope: !1049, file: !1049, line: 602, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!132, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1079, file: !1056, line: 137)
!1079 = !DISubprogram(name: "at_quick_exit", scope: !1049, file: !1049, line: 607, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1081, file: !1056, line: 140)
!1081 = !DISubprogram(name: "atof", scope: !1049, file: !1049, line: 102, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !167}
!1084 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1086, file: !1056, line: 141)
!1086 = !DISubprogram(name: "atoi", scope: !1049, file: !1049, line: 105, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!132, !167}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1090, file: !1056, line: 142)
!1090 = !DISubprogram(name: "atol", scope: !1049, file: !1049, line: 108, type: !1091, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!566, !167}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1094, file: !1056, line: 143)
!1094 = !DISubprogram(name: "bsearch", scope: !1049, file: !1049, line: 828, type: !1095, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!159, !251, !251, !1071, !1071, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1049, line: 816, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!132, !251, !251}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1102, file: !1056, line: 144)
!1102 = !DISubprogram(name: "calloc", scope: !1049, file: !1049, line: 543, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1104, file: !1056, line: 145)
!1104 = !DISubprogram(name: "div", scope: !1049, file: !1049, line: 860, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1054, !132, !132}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1108, file: !1056, line: 146)
!1108 = !DISubprogram(name: "exit", scope: !1049, file: !1049, line: 624, type: !1109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !132}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1112, file: !1056, line: 147)
!1112 = !DISubprogram(name: "free", scope: !1049, file: !1049, line: 555, type: !1113, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !159}
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1116, file: !1056, line: 148)
!1116 = !DISubprogram(name: "getenv", scope: !1049, file: !1049, line: 641, type: !1117, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1119, !167}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1121, file: !1056, line: 149)
!1121 = !DISubprogram(name: "labs", scope: !1049, file: !1049, line: 849, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!566, !566}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1125, file: !1056, line: 150)
!1125 = !DISubprogram(name: "ldiv", scope: !1049, file: !1049, line: 862, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1058, !566, !566}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1129, file: !1056, line: 151)
!1129 = !DISubprogram(name: "malloc", scope: !1049, file: !1049, line: 540, type: !1130, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!159, !1071}
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1133, file: !1056, line: 153)
!1133 = !DISubprogram(name: "mblen", scope: !1049, file: !1049, line: 930, type: !1134, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!132, !167, !1071}
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1137, file: !1056, line: 154)
!1137 = !DISubprogram(name: "mbstowcs", scope: !1049, file: !1049, line: 941, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!1071, !1140, !1143, !1071}
!1140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1145, file: !1056, line: 155)
!1145 = !DISubprogram(name: "mbtowc", scope: !1049, file: !1049, line: 933, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!132, !1140, !1143, !1071}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1149, file: !1056, line: 157)
!1149 = !DISubprogram(name: "qsort", scope: !1049, file: !1049, line: 838, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !159, !1071, !1071, !1097}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1153, file: !1056, line: 160)
!1153 = !DISubprogram(name: "quick_exit", scope: !1049, file: !1049, line: 630, type: !1109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1155, file: !1056, line: 163)
!1155 = !DISubprogram(name: "rand", scope: !1049, file: !1049, line: 454, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!132}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1159, file: !1056, line: 164)
!1159 = !DISubprogram(name: "realloc", scope: !1049, file: !1049, line: 551, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!159, !159, !1071}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1163, file: !1056, line: 165)
!1163 = !DISubprogram(name: "srand", scope: !1049, file: !1049, line: 456, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !60}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1167, file: !1056, line: 166)
!1167 = !DISubprogram(name: "strtod", scope: !1049, file: !1049, line: 118, type: !1168, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1084, !1143, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1173, file: !1056, line: 167)
!1173 = !DISubprogram(name: "strtol", scope: !1049, file: !1049, line: 177, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!566, !1143, !1170, !132}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1177, file: !1056, line: 168)
!1177 = !DISubprogram(name: "strtoul", scope: !1049, file: !1049, line: 181, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!250, !1143, !1170, !132}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1181, file: !1056, line: 169)
!1181 = !DISubprogram(name: "system", scope: !1049, file: !1049, line: 791, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1183, file: !1056, line: 171)
!1183 = !DISubprogram(name: "wcstombs", scope: !1049, file: !1049, line: 945, type: !1184, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1071, !1186, !1187, !1071}
!1186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1119)
!1187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1191, file: !1056, line: 172)
!1191 = !DISubprogram(name: "wctomb", scope: !1049, file: !1049, line: 937, type: !1192, flags: DIFlagPrototyped, spFlags: 0)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!132, !1119, !1142}
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1195, file: !1056, line: 200)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1049, line: 81, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1197, identifier: "_ZTS7lldiv_t")
!1197 = !{!1198, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1196, file: !1049, line: 79, baseType: !1199, size: 64)
!1199 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1196, file: !1049, line: 80, baseType: !1199, size: 64, offset: 64)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1202, file: !1056, line: 206)
!1202 = !DISubprogram(name: "_Exit", scope: !1049, file: !1049, line: 636, type: !1109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1204, file: !1056, line: 210)
!1204 = !DISubprogram(name: "llabs", scope: !1049, file: !1049, line: 852, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1199, !1199}
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1208, file: !1056, line: 216)
!1208 = !DISubprogram(name: "lldiv", scope: !1049, file: !1049, line: 866, type: !1209, flags: DIFlagPrototyped, spFlags: 0)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1195, !1199, !1199}
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1212, file: !1056, line: 227)
!1212 = !DISubprogram(name: "atoll", scope: !1049, file: !1049, line: 113, type: !1213, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1199, !167}
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1216, file: !1056, line: 228)
!1216 = !DISubprogram(name: "strtoll", scope: !1049, file: !1049, line: 201, type: !1217, flags: DIFlagPrototyped, spFlags: 0)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1199, !1143, !1170, !132}
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1220, file: !1056, line: 229)
!1220 = !DISubprogram(name: "strtoull", scope: !1049, file: !1049, line: 206, type: !1221, flags: DIFlagPrototyped, spFlags: 0)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1223, !1143, !1170, !132}
!1223 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1225, file: !1056, line: 231)
!1225 = !DISubprogram(name: "strtof", scope: !1049, file: !1049, line: 124, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!819, !1143, !1170}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !197, entity: !1229, file: !1056, line: 232)
!1229 = !DISubprogram(name: "strtold", scope: !1049, file: !1049, line: 127, type: !1230, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!1232, !1143, !1170}
!1232 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1195, file: !1056, line: 240)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1202, file: !1056, line: 242)
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1204, file: !1056, line: 244)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1237, file: !1056, line: 245)
!1237 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !197, file: !1056, line: 213, type: !1209, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1208, file: !1056, line: 246)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1212, file: !1056, line: 248)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1225, file: !1056, line: 249)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1216, file: !1056, line: 250)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1220, file: !1056, line: 251)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1229, file: !1056, line: 252)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1064, file: !1245, line: 38)
!1245 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1074, file: !1245, line: 39)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1108, file: !1245, line: 40)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1079, file: !1245, line: 43)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1153, file: !1245, line: 46)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1054, file: !1245, line: 51)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1058, file: !1245, line: 52)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1253, file: !1245, line: 54)
!1253 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !183, file: !1052, line: 103, type: !1254, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !1256}
!1256 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1081, file: !1245, line: 55)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1086, file: !1245, line: 56)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1090, file: !1245, line: 57)
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1094, file: !1245, line: 58)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1102, file: !1245, line: 59)
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1237, file: !1245, line: 60)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1112, file: !1245, line: 61)
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1116, file: !1245, line: 62)
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1121, file: !1245, line: 63)
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1125, file: !1245, line: 64)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1129, file: !1245, line: 65)
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1133, file: !1245, line: 67)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1137, file: !1245, line: 68)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1145, file: !1245, line: 69)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1149, file: !1245, line: 71)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1155, file: !1245, line: 72)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1159, file: !1245, line: 73)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1163, file: !1245, line: 74)
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1167, file: !1245, line: 75)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1173, file: !1245, line: 76)
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1177, file: !1245, line: 77)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1181, file: !1245, line: 78)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1183, file: !1245, line: 80)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !1191, file: !1245, line: 81)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1282, file: !1286, line: 83)
!1282 = !DISubprogram(name: "acos", scope: !1283, file: !1283, line: 53, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1084, !1084}
!1286 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1288, file: !1286, line: 102)
!1288 = !DISubprogram(name: "asin", scope: !1283, file: !1283, line: 55, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1290, file: !1286, line: 121)
!1290 = !DISubprogram(name: "atan", scope: !1283, file: !1283, line: 57, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1292, file: !1286, line: 140)
!1292 = !DISubprogram(name: "atan2", scope: !1283, file: !1283, line: 59, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!1084, !1084, !1084}
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1296, file: !1286, line: 161)
!1296 = !DISubprogram(name: "ceil", scope: !1283, file: !1283, line: 159, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1298, file: !1286, line: 180)
!1298 = !DISubprogram(name: "cos", scope: !1283, file: !1283, line: 62, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1300, file: !1286, line: 199)
!1300 = !DISubprogram(name: "cosh", scope: !1283, file: !1283, line: 71, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1302, file: !1286, line: 218)
!1302 = !DISubprogram(name: "exp", scope: !1283, file: !1283, line: 95, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1304, file: !1286, line: 237)
!1304 = !DISubprogram(name: "fabs", scope: !1283, file: !1283, line: 162, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1306, file: !1286, line: 256)
!1306 = !DISubprogram(name: "floor", scope: !1283, file: !1283, line: 165, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1308, file: !1286, line: 275)
!1308 = !DISubprogram(name: "fmod", scope: !1283, file: !1283, line: 168, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1310, file: !1286, line: 296)
!1310 = !DISubprogram(name: "frexp", scope: !1283, file: !1283, line: 98, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!1084, !1084, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1315, file: !1286, line: 315)
!1315 = !DISubprogram(name: "ldexp", scope: !1283, file: !1283, line: 101, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1084, !1084, !132}
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1319, file: !1286, line: 334)
!1319 = !DISubprogram(name: "log", scope: !1283, file: !1283, line: 104, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1321, file: !1286, line: 353)
!1321 = !DISubprogram(name: "log10", scope: !1283, file: !1283, line: 107, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1323, file: !1286, line: 372)
!1323 = !DISubprogram(name: "modf", scope: !1283, file: !1283, line: 110, type: !1324, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1084, !1084, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1328, file: !1286, line: 384)
!1328 = !DISubprogram(name: "pow", scope: !1283, file: !1283, line: 140, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1330, file: !1286, line: 421)
!1330 = !DISubprogram(name: "sin", scope: !1283, file: !1283, line: 64, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1332, file: !1286, line: 440)
!1332 = !DISubprogram(name: "sinh", scope: !1283, file: !1283, line: 73, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1334, file: !1286, line: 459)
!1334 = !DISubprogram(name: "sqrt", scope: !1283, file: !1283, line: 143, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1336, file: !1286, line: 478)
!1336 = !DISubprogram(name: "tan", scope: !1283, file: !1283, line: 66, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1338, file: !1286, line: 497)
!1338 = !DISubprogram(name: "tanh", scope: !1283, file: !1283, line: 75, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1340, file: !1286, line: 1065)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1341, line: 164, baseType: !1084)
!1341 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1343, file: !1286, line: 1066)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1341, line: 163, baseType: !819)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1345, file: !1286, line: 1069)
!1345 = !DISubprogram(name: "acosh", scope: !1283, file: !1283, line: 85, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1347, file: !1286, line: 1070)
!1347 = !DISubprogram(name: "acoshf", scope: !1283, file: !1283, line: 85, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!819, !819}
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1351, file: !1286, line: 1071)
!1351 = !DISubprogram(name: "acoshl", scope: !1283, file: !1283, line: 85, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1232, !1232}
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1355, file: !1286, line: 1073)
!1355 = !DISubprogram(name: "asinh", scope: !1283, file: !1283, line: 87, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1357, file: !1286, line: 1074)
!1357 = !DISubprogram(name: "asinhf", scope: !1283, file: !1283, line: 87, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1359, file: !1286, line: 1075)
!1359 = !DISubprogram(name: "asinhl", scope: !1283, file: !1283, line: 87, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1361, file: !1286, line: 1077)
!1361 = !DISubprogram(name: "atanh", scope: !1283, file: !1283, line: 89, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1363, file: !1286, line: 1078)
!1363 = !DISubprogram(name: "atanhf", scope: !1283, file: !1283, line: 89, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1365, file: !1286, line: 1079)
!1365 = !DISubprogram(name: "atanhl", scope: !1283, file: !1283, line: 89, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1367, file: !1286, line: 1081)
!1367 = !DISubprogram(name: "cbrt", scope: !1283, file: !1283, line: 152, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1369, file: !1286, line: 1082)
!1369 = !DISubprogram(name: "cbrtf", scope: !1283, file: !1283, line: 152, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1371, file: !1286, line: 1083)
!1371 = !DISubprogram(name: "cbrtl", scope: !1283, file: !1283, line: 152, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1373, file: !1286, line: 1085)
!1373 = !DISubprogram(name: "copysign", scope: !1283, file: !1283, line: 198, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1375, file: !1286, line: 1086)
!1375 = !DISubprogram(name: "copysignf", scope: !1283, file: !1283, line: 198, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!819, !819, !819}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1379, file: !1286, line: 1087)
!1379 = !DISubprogram(name: "copysignl", scope: !1283, file: !1283, line: 198, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1232, !1232, !1232}
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1383, file: !1286, line: 1089)
!1383 = !DISubprogram(name: "erf", scope: !1283, file: !1283, line: 231, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1385, file: !1286, line: 1090)
!1385 = !DISubprogram(name: "erff", scope: !1283, file: !1283, line: 231, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1387, file: !1286, line: 1091)
!1387 = !DISubprogram(name: "erfl", scope: !1283, file: !1283, line: 231, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1389, file: !1286, line: 1093)
!1389 = !DISubprogram(name: "erfc", scope: !1283, file: !1283, line: 232, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1391, file: !1286, line: 1094)
!1391 = !DISubprogram(name: "erfcf", scope: !1283, file: !1283, line: 232, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1393, file: !1286, line: 1095)
!1393 = !DISubprogram(name: "erfcl", scope: !1283, file: !1283, line: 232, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1395, file: !1286, line: 1097)
!1395 = !DISubprogram(name: "exp2", scope: !1283, file: !1283, line: 130, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1397, file: !1286, line: 1098)
!1397 = !DISubprogram(name: "exp2f", scope: !1283, file: !1283, line: 130, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1399, file: !1286, line: 1099)
!1399 = !DISubprogram(name: "exp2l", scope: !1283, file: !1283, line: 130, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1401, file: !1286, line: 1101)
!1401 = !DISubprogram(name: "expm1", scope: !1283, file: !1283, line: 119, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1403, file: !1286, line: 1102)
!1403 = !DISubprogram(name: "expm1f", scope: !1283, file: !1283, line: 119, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1405, file: !1286, line: 1103)
!1405 = !DISubprogram(name: "expm1l", scope: !1283, file: !1283, line: 119, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1407, file: !1286, line: 1105)
!1407 = !DISubprogram(name: "fdim", scope: !1283, file: !1283, line: 329, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1409, file: !1286, line: 1106)
!1409 = !DISubprogram(name: "fdimf", scope: !1283, file: !1283, line: 329, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1411, file: !1286, line: 1107)
!1411 = !DISubprogram(name: "fdiml", scope: !1283, file: !1283, line: 329, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1413, file: !1286, line: 1109)
!1413 = !DISubprogram(name: "fma", scope: !1283, file: !1283, line: 340, type: !1414, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1084, !1084, !1084, !1084}
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1417, file: !1286, line: 1110)
!1417 = !DISubprogram(name: "fmaf", scope: !1283, file: !1283, line: 340, type: !1418, flags: DIFlagPrototyped, spFlags: 0)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!819, !819, !819, !819}
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1421, file: !1286, line: 1111)
!1421 = !DISubprogram(name: "fmal", scope: !1283, file: !1283, line: 340, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1232, !1232, !1232, !1232}
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1425, file: !1286, line: 1113)
!1425 = !DISubprogram(name: "fmax", scope: !1283, file: !1283, line: 333, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1427, file: !1286, line: 1114)
!1427 = !DISubprogram(name: "fmaxf", scope: !1283, file: !1283, line: 333, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1429, file: !1286, line: 1115)
!1429 = !DISubprogram(name: "fmaxl", scope: !1283, file: !1283, line: 333, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1431, file: !1286, line: 1117)
!1431 = !DISubprogram(name: "fmin", scope: !1283, file: !1283, line: 336, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1433, file: !1286, line: 1118)
!1433 = !DISubprogram(name: "fminf", scope: !1283, file: !1283, line: 336, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1435, file: !1286, line: 1119)
!1435 = !DISubprogram(name: "fminl", scope: !1283, file: !1283, line: 336, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1437, file: !1286, line: 1121)
!1437 = !DISubprogram(name: "hypot", scope: !1283, file: !1283, line: 147, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1439, file: !1286, line: 1122)
!1439 = !DISubprogram(name: "hypotf", scope: !1283, file: !1283, line: 147, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1441, file: !1286, line: 1123)
!1441 = !DISubprogram(name: "hypotl", scope: !1283, file: !1283, line: 147, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1443, file: !1286, line: 1125)
!1443 = !DISubprogram(name: "ilogb", scope: !1283, file: !1283, line: 283, type: !1444, flags: DIFlagPrototyped, spFlags: 0)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!132, !1084}
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1447, file: !1286, line: 1126)
!1447 = !DISubprogram(name: "ilogbf", scope: !1283, file: !1283, line: 283, type: !1448, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!132, !819}
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1451, file: !1286, line: 1127)
!1451 = !DISubprogram(name: "ilogbl", scope: !1283, file: !1283, line: 283, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!132, !1232}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1455, file: !1286, line: 1129)
!1455 = !DISubprogram(name: "lgamma", scope: !1283, file: !1283, line: 233, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1457, file: !1286, line: 1130)
!1457 = !DISubprogram(name: "lgammaf", scope: !1283, file: !1283, line: 233, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1459, file: !1286, line: 1131)
!1459 = !DISubprogram(name: "lgammal", scope: !1283, file: !1283, line: 233, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1461, file: !1286, line: 1134)
!1461 = !DISubprogram(name: "llrint", scope: !1283, file: !1283, line: 319, type: !1462, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1199, !1084}
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1465, file: !1286, line: 1135)
!1465 = !DISubprogram(name: "llrintf", scope: !1283, file: !1283, line: 319, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1199, !819}
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1469, file: !1286, line: 1136)
!1469 = !DISubprogram(name: "llrintl", scope: !1283, file: !1283, line: 319, type: !1470, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1199, !1232}
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1473, file: !1286, line: 1138)
!1473 = !DISubprogram(name: "llround", scope: !1283, file: !1283, line: 325, type: !1462, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1475, file: !1286, line: 1139)
!1475 = !DISubprogram(name: "llroundf", scope: !1283, file: !1283, line: 325, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1477, file: !1286, line: 1140)
!1477 = !DISubprogram(name: "llroundl", scope: !1283, file: !1283, line: 325, type: !1470, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1479, file: !1286, line: 1143)
!1479 = !DISubprogram(name: "log1p", scope: !1283, file: !1283, line: 122, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1481, file: !1286, line: 1144)
!1481 = !DISubprogram(name: "log1pf", scope: !1283, file: !1283, line: 122, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1483, file: !1286, line: 1145)
!1483 = !DISubprogram(name: "log1pl", scope: !1283, file: !1283, line: 122, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1485, file: !1286, line: 1147)
!1485 = !DISubprogram(name: "log2", scope: !1283, file: !1283, line: 133, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1487, file: !1286, line: 1148)
!1487 = !DISubprogram(name: "log2f", scope: !1283, file: !1283, line: 133, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1489, file: !1286, line: 1149)
!1489 = !DISubprogram(name: "log2l", scope: !1283, file: !1283, line: 133, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1491, file: !1286, line: 1151)
!1491 = !DISubprogram(name: "logb", scope: !1283, file: !1283, line: 125, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1493, file: !1286, line: 1152)
!1493 = !DISubprogram(name: "logbf", scope: !1283, file: !1283, line: 125, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1495, file: !1286, line: 1153)
!1495 = !DISubprogram(name: "logbl", scope: !1283, file: !1283, line: 125, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1497, file: !1286, line: 1155)
!1497 = !DISubprogram(name: "lrint", scope: !1283, file: !1283, line: 317, type: !1498, flags: DIFlagPrototyped, spFlags: 0)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!566, !1084}
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1501, file: !1286, line: 1156)
!1501 = !DISubprogram(name: "lrintf", scope: !1283, file: !1283, line: 317, type: !1502, flags: DIFlagPrototyped, spFlags: 0)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!566, !819}
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1505, file: !1286, line: 1157)
!1505 = !DISubprogram(name: "lrintl", scope: !1283, file: !1283, line: 317, type: !1506, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!566, !1232}
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1509, file: !1286, line: 1159)
!1509 = !DISubprogram(name: "lround", scope: !1283, file: !1283, line: 323, type: !1498, flags: DIFlagPrototyped, spFlags: 0)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1511, file: !1286, line: 1160)
!1511 = !DISubprogram(name: "lroundf", scope: !1283, file: !1283, line: 323, type: !1502, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1513, file: !1286, line: 1161)
!1513 = !DISubprogram(name: "lroundl", scope: !1283, file: !1283, line: 323, type: !1506, flags: DIFlagPrototyped, spFlags: 0)
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1515, file: !1286, line: 1163)
!1515 = !DISubprogram(name: "nan", scope: !1283, file: !1283, line: 203, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1517, file: !1286, line: 1164)
!1517 = !DISubprogram(name: "nanf", scope: !1283, file: !1283, line: 203, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!819, !167}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1521, file: !1286, line: 1165)
!1521 = !DISubprogram(name: "nanl", scope: !1283, file: !1283, line: 203, type: !1522, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1232, !167}
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1525, file: !1286, line: 1167)
!1525 = !DISubprogram(name: "nearbyint", scope: !1283, file: !1283, line: 297, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1527, file: !1286, line: 1168)
!1527 = !DISubprogram(name: "nearbyintf", scope: !1283, file: !1283, line: 297, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1529, file: !1286, line: 1169)
!1529 = !DISubprogram(name: "nearbyintl", scope: !1283, file: !1283, line: 297, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1531, file: !1286, line: 1171)
!1531 = !DISubprogram(name: "nextafter", scope: !1283, file: !1283, line: 262, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1533, file: !1286, line: 1172)
!1533 = !DISubprogram(name: "nextafterf", scope: !1283, file: !1283, line: 262, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1535, file: !1286, line: 1173)
!1535 = !DISubprogram(name: "nextafterl", scope: !1283, file: !1283, line: 262, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1537, file: !1286, line: 1175)
!1537 = !DISubprogram(name: "nexttoward", scope: !1283, file: !1283, line: 264, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1084, !1084, !1232}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1541, file: !1286, line: 1176)
!1541 = !DISubprogram(name: "nexttowardf", scope: !1283, file: !1283, line: 264, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!819, !819, !1232}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1545, file: !1286, line: 1177)
!1545 = !DISubprogram(name: "nexttowardl", scope: !1283, file: !1283, line: 264, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1547, file: !1286, line: 1179)
!1547 = !DISubprogram(name: "remainder", scope: !1283, file: !1283, line: 275, type: !1293, flags: DIFlagPrototyped, spFlags: 0)
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1549, file: !1286, line: 1180)
!1549 = !DISubprogram(name: "remainderf", scope: !1283, file: !1283, line: 275, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1551, file: !1286, line: 1181)
!1551 = !DISubprogram(name: "remainderl", scope: !1283, file: !1283, line: 275, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1553, file: !1286, line: 1183)
!1553 = !DISubprogram(name: "remquo", scope: !1283, file: !1283, line: 310, type: !1554, flags: DIFlagPrototyped, spFlags: 0)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1084, !1084, !1084, !1313}
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1557, file: !1286, line: 1184)
!1557 = !DISubprogram(name: "remquof", scope: !1283, file: !1283, line: 310, type: !1558, flags: DIFlagPrototyped, spFlags: 0)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!819, !819, !819, !1313}
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1561, file: !1286, line: 1185)
!1561 = !DISubprogram(name: "remquol", scope: !1283, file: !1283, line: 310, type: !1562, flags: DIFlagPrototyped, spFlags: 0)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1232, !1232, !1232, !1313}
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1565, file: !1286, line: 1187)
!1565 = !DISubprogram(name: "rint", scope: !1283, file: !1283, line: 259, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1567, file: !1286, line: 1188)
!1567 = !DISubprogram(name: "rintf", scope: !1283, file: !1283, line: 259, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1569, file: !1286, line: 1189)
!1569 = !DISubprogram(name: "rintl", scope: !1283, file: !1283, line: 259, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1571, file: !1286, line: 1191)
!1571 = !DISubprogram(name: "round", scope: !1283, file: !1283, line: 301, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1573, file: !1286, line: 1192)
!1573 = !DISubprogram(name: "roundf", scope: !1283, file: !1283, line: 301, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1575, file: !1286, line: 1193)
!1575 = !DISubprogram(name: "roundl", scope: !1283, file: !1283, line: 301, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1577, file: !1286, line: 1195)
!1577 = !DISubprogram(name: "scalbln", scope: !1283, file: !1283, line: 293, type: !1578, flags: DIFlagPrototyped, spFlags: 0)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1084, !1084, !566}
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1581, file: !1286, line: 1196)
!1581 = !DISubprogram(name: "scalblnf", scope: !1283, file: !1283, line: 293, type: !1582, flags: DIFlagPrototyped, spFlags: 0)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!819, !819, !566}
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1585, file: !1286, line: 1197)
!1585 = !DISubprogram(name: "scalblnl", scope: !1283, file: !1283, line: 293, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1232, !1232, !566}
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1589, file: !1286, line: 1199)
!1589 = !DISubprogram(name: "scalbn", scope: !1283, file: !1283, line: 279, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1591, file: !1286, line: 1200)
!1591 = !DISubprogram(name: "scalbnf", scope: !1283, file: !1283, line: 279, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!819, !819, !132}
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1595, file: !1286, line: 1201)
!1595 = !DISubprogram(name: "scalbnl", scope: !1283, file: !1283, line: 279, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1232, !1232, !132}
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1599, file: !1286, line: 1203)
!1599 = !DISubprogram(name: "tgamma", scope: !1283, file: !1283, line: 238, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1601, file: !1286, line: 1204)
!1601 = !DISubprogram(name: "tgammaf", scope: !1283, file: !1283, line: 238, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1603, file: !1286, line: 1205)
!1603 = !DISubprogram(name: "tgammal", scope: !1283, file: !1283, line: 238, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1605, file: !1286, line: 1207)
!1605 = !DISubprogram(name: "trunc", scope: !1283, file: !1283, line: 305, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1607, file: !1286, line: 1208)
!1607 = !DISubprogram(name: "truncf", scope: !1283, file: !1283, line: 305, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !183, entity: !1609, file: !1286, line: 1209)
!1609 = !DISubprogram(name: "truncl", scope: !1283, file: !1283, line: 305, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1611, entity: !1612, file: !1613, line: 58)
!1611 = !DINamespace(name: "__gnu_debug", scope: null)
!1612 = !DINamespace(name: "__debug", scope: !183)
!1613 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1614 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !55, entity: !120, file: !2, line: 40)
!1615 = !{i32 7, !"Dwarf Version", i32 5}
!1616 = !{i32 2, !"Debug Info Version", i32 3}
!1617 = !{i32 1, !"wchar_size", i32 4}
!1618 = !{i32 8, !"PIC Level", i32 2}
!1619 = !{i32 7, !"PIE Level", i32 2}
!1620 = !{i32 7, !"uwtable", i32 2}
!1621 = !{i32 7, !"frame-pointer", i32 2}
!1622 = !{!"clang version 16.0.0"}
!1623 = distinct !DISubprogram(name: "init", linkageName: "_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE", scope: !118, file: !2, line: 43, type: !954, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !953, retainedNodes: !310)
!1624 = !DILocalVariable(name: "this", arg: 1, scope: !1623, type: !117, flags: DIFlagArtificial | DIFlagObjectPointer)
!1625 = !DILocation(line: 0, scope: !1623)
!1626 = !DILocalVariable(name: "get_gyro", arg: 2, scope: !1623, file: !2, line: 43, type: !826)
!1627 = !DILocation(line: 43, column: 61, scope: !1623)
!1628 = !DILocalVariable(name: "top", scope: !1623, file: !2, line: 45, type: !140)
!1629 = !DILocation(line: 45, column: 14, scope: !1623)
!1630 = !DILocalVariable(name: "left", scope: !1623, file: !2, line: 45, type: !140)
!1631 = !DILocation(line: 45, column: 19, scope: !1623)
!1632 = !DILocalVariable(name: "crop_width", scope: !1623, file: !2, line: 46, type: !140)
!1633 = !DILocation(line: 46, column: 14, scope: !1623)
!1634 = !DILocalVariable(name: "crop_height", scope: !1623, file: !2, line: 46, type: !140)
!1635 = !DILocation(line: 46, column: 26, scope: !1623)
!1636 = !DILocalVariable(name: "memtype", scope: !1623, file: !2, line: 47, type: !140)
!1637 = !DILocation(line: 47, column: 14, scope: !1623)
!1638 = !DILocalVariable(name: "nbufs", scope: !1623, file: !2, line: 48, type: !60)
!1639 = !DILocation(line: 48, column: 18, scope: !1623)
!1640 = !DILocalVariable(name: "ret", scope: !1623, file: !2, line: 49, type: !132)
!1641 = !DILocation(line: 49, column: 9, scope: !1623)
!1642 = !DILocalVariable(name: "attr", scope: !1623, file: !2, line: 50, type: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !777, line: 62, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !777, line: 56, size: 448, flags: DIFlagTypePassByValue, elements: !1645, identifier: "_ZTS14pthread_attr_t")
!1645 = !{!1646, !1650}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1644, file: !777, line: 58, baseType: !1647, size: 448)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 448, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 56)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1644, file: !777, line: 59, baseType: !566, size: 64)
!1651 = !DILocation(line: 50, column: 20, scope: !1623)
!1652 = !DILocalVariable(name: "param", scope: !1623, file: !2, line: 51, type: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !1654, line: 23, size: 32, flags: DIFlagTypePassByValue, elements: !1655, identifier: "_ZTS11sched_param")
!1654 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h", directory: "", checksumkind: CSK_MD5, checksum: "13c2f29d5f5dc39597ef32d201b78292")
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !1653, file: !1654, line: 25, baseType: !132, size: 32)
!1657 = !DILocation(line: 51, column: 24, scope: !1623)
!1658 = !DILocation(line: 55, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 55, column: 9)
!1660 = !DILocation(line: 55, column: 9, scope: !1623)
!1661 = !DILocation(line: 56, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 55, column: 23)
!1663 = !DILocation(line: 59, column: 5, scope: !1623)
!1664 = !DILocation(line: 59, column: 15, scope: !1623)
!1665 = !DILocation(line: 60, column: 16, scope: !1623)
!1666 = !DILocation(line: 60, column: 20, scope: !1623)
!1667 = !DILocation(line: 60, column: 5, scope: !1623)
!1668 = !DILocation(line: 60, column: 14, scope: !1623)
!1669 = !DILocalVariable(name: "device_path", scope: !1623, file: !2, line: 61, type: !167)
!1670 = !DILocation(line: 61, column: 17, scope: !1623)
!1671 = !DILocation(line: 62, column: 13, scope: !1623)
!1672 = !DILocation(line: 63, column: 11, scope: !1623)
!1673 = !DILocation(line: 64, column: 5, scope: !1623)
!1674 = !DILocation(line: 64, column: 12, scope: !1623)
!1675 = !DILocation(line: 65, column: 5, scope: !1623)
!1676 = !DILocation(line: 65, column: 13, scope: !1623)
!1677 = !DILocation(line: 66, column: 16, scope: !1623)
!1678 = !DILocation(line: 67, column: 17, scope: !1623)
!1679 = !DILocation(line: 68, column: 9, scope: !1623)
!1680 = !DILocation(line: 70, column: 10, scope: !1623)
!1681 = !DILocation(line: 73, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 73, column: 9)
!1683 = !DILocation(line: 73, column: 21, scope: !1682)
!1684 = !DILocation(line: 73, column: 29, scope: !1682)
!1685 = !DILocation(line: 74, column: 10, scope: !1682)
!1686 = !DILocation(line: 74, column: 32, scope: !1682)
!1687 = !DILocation(line: 74, column: 45, scope: !1682)
!1688 = !DILocation(line: 74, column: 20, scope: !1682)
!1689 = !DILocation(line: 73, column: 9, scope: !1623)
!1690 = !DILocation(line: 75, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 74, column: 55)
!1692 = !DILocalVariable(name: "pixel_formats", scope: !1623, file: !2, line: 96, type: !181)
!1693 = !DILocation(line: 96, column: 27, scope: !1623)
!1694 = !DILocation(line: 98, column: 5, scope: !1623)
!1695 = !DILocation(line: 98, column: 15, scope: !1623)
!1696 = !DILocalVariable(name: "__range1", scope: !1697, type: !505, flags: DIFlagArtificial)
!1697 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 100, column: 5)
!1698 = !DILocation(line: 0, scope: !1697)
!1699 = !DILocation(line: 100, column: 28, scope: !1697)
!1700 = !DILocalVariable(name: "__begin1", scope: !1697, type: !521, flags: DIFlagArtificial)
!1701 = !DILocation(line: 100, column: 26, scope: !1697)
!1702 = !DILocalVariable(name: "__end1", scope: !1697, type: !521, flags: DIFlagArtificial)
!1703 = !DILocalVariable(name: "px_fmt", scope: !1704, file: !2, line: 100, type: !140)
!1704 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 100, column: 5)
!1705 = !DILocation(line: 100, column: 19, scope: !1704)
!1706 = !DILocation(line: 100, column: 26, scope: !1704)
!1707 = !DILocation(line: 101, column: 13, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 101, column: 13)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 100, column: 43)
!1710 = !DILocation(line: 101, column: 20, scope: !1708)
!1711 = !DILocation(line: 101, column: 41, scope: !1708)
!1712 = !DILocation(line: 101, column: 44, scope: !1708)
!1713 = !DILocation(line: 101, column: 51, scope: !1708)
!1714 = !DILocation(line: 101, column: 13, scope: !1709)
!1715 = !DILocation(line: 102, column: 23, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 101, column: 73)
!1717 = !DILocation(line: 102, column: 13, scope: !1716)
!1718 = !DILocation(line: 102, column: 21, scope: !1716)
!1719 = !DILocation(line: 103, column: 13, scope: !1716)
!1720 = !DILocation(line: 192, column: 1, scope: !1623)
!1721 = !DILocation(line: 108, column: 13, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 108, column: 13)
!1723 = !DILocation(line: 108, column: 20, scope: !1722)
!1724 = !DILocation(line: 108, column: 13, scope: !1709)
!1725 = !DILocation(line: 109, column: 23, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 108, column: 42)
!1727 = !DILocation(line: 109, column: 13, scope: !1726)
!1728 = !DILocation(line: 109, column: 21, scope: !1726)
!1729 = !DILocation(line: 110, column: 9, scope: !1726)
!1730 = !DILocation(line: 100, column: 5, scope: !1697)
!1731 = distinct !{!1731, !1730, !1732}
!1732 = !DILocation(line: 111, column: 5, scope: !1697)
!1733 = !DILocation(line: 114, column: 10, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 114, column: 9)
!1735 = !DILocation(line: 114, column: 32, scope: !1734)
!1736 = !DILocation(line: 114, column: 41, scope: !1734)
!1737 = !DILocation(line: 114, column: 51, scope: !1734)
!1738 = !DILocation(line: 114, column: 61, scope: !1734)
!1739 = !DILocation(line: 115, column: 32, scope: !1734)
!1740 = !DILocation(line: 114, column: 20, scope: !1734)
!1741 = !DILocation(line: 114, column: 9, scope: !1623)
!1742 = !DILocation(line: 116, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 115, column: 45)
!1744 = !DILocation(line: 119, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 119, column: 9)
!1746 = !DILocation(line: 119, column: 17, scope: !1745)
!1747 = !DILocation(line: 119, column: 38, scope: !1745)
!1748 = !DILocation(line: 119, column: 41, scope: !1745)
!1749 = !DILocation(line: 119, column: 49, scope: !1745)
!1750 = !DILocation(line: 119, column: 70, scope: !1745)
!1751 = !DILocation(line: 120, column: 9, scope: !1745)
!1752 = !DILocation(line: 120, column: 17, scope: !1745)
!1753 = !DILocation(line: 119, column: 9, scope: !1623)
!1754 = !DILocation(line: 121, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 120, column: 39)
!1756 = !DILocation(line: 124, column: 9, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 124, column: 9)
!1758 = !DILocation(line: 124, column: 16, scope: !1757)
!1759 = !DILocation(line: 124, column: 52, scope: !1757)
!1760 = !DILocation(line: 125, column: 9, scope: !1757)
!1761 = !DILocation(line: 125, column: 17, scope: !1757)
!1762 = !DILocation(line: 124, column: 9, scope: !1623)
!1763 = !DILocation(line: 126, column: 9, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 125, column: 55)
!1765 = !DILocation(line: 126, column: 29, scope: !1764)
!1766 = !DILocation(line: 127, column: 5, scope: !1764)
!1767 = !DILocation(line: 130, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 127, column: 12)
!1769 = !DILocation(line: 130, column: 29, scope: !1768)
!1770 = !DILocation(line: 131, column: 32, scope: !1768)
!1771 = !DILocation(line: 131, column: 9, scope: !1768)
!1772 = !DILocation(line: 131, column: 30, scope: !1768)
!1773 = !DILocation(line: 132, column: 33, scope: !1768)
!1774 = !DILocation(line: 132, column: 9, scope: !1768)
!1775 = !DILocation(line: 132, column: 31, scope: !1768)
!1776 = !DILocation(line: 136, column: 9, scope: !1768)
!1777 = !DILocation(line: 136, column: 16, scope: !1768)
!1778 = !DILocation(line: 137, column: 9, scope: !1768)
!1779 = !DILocation(line: 137, column: 17, scope: !1768)
!1780 = !DILocation(line: 138, column: 9, scope: !1768)
!1781 = !DILocation(line: 138, column: 23, scope: !1768)
!1782 = !DILocation(line: 141, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 141, column: 9)
!1784 = !DILocation(line: 141, column: 28, scope: !1783)
!1785 = !DILocation(line: 141, column: 34, scope: !1783)
!1786 = !DILocation(line: 141, column: 39, scope: !1783)
!1787 = !DILocation(line: 141, column: 51, scope: !1783)
!1788 = !DILocation(line: 141, column: 19, scope: !1783)
!1789 = !DILocation(line: 141, column: 9, scope: !1623)
!1790 = !DILocation(line: 142, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 141, column: 65)
!1792 = !DILocation(line: 142, column: 27, scope: !1791)
!1793 = !DILocation(line: 143, column: 5, scope: !1791)
!1794 = !DILocation(line: 144, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 143, column: 12)
!1796 = !DILocation(line: 144, column: 27, scope: !1795)
!1797 = !DILocation(line: 146, column: 14, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 146, column: 13)
!1799 = !DILocation(line: 146, column: 13, scope: !1795)
!1800 = !DILocation(line: 149, column: 36, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 146, column: 35)
!1802 = !DILocation(line: 149, column: 13, scope: !1801)
!1803 = !DILocation(line: 149, column: 34, scope: !1801)
!1804 = !DILocation(line: 150, column: 37, scope: !1801)
!1805 = !DILocation(line: 150, column: 13, scope: !1801)
!1806 = !DILocation(line: 150, column: 35, scope: !1801)
!1807 = !DILocation(line: 154, column: 13, scope: !1801)
!1808 = !DILocation(line: 154, column: 20, scope: !1801)
!1809 = !DILocation(line: 155, column: 13, scope: !1801)
!1810 = !DILocation(line: 155, column: 21, scope: !1801)
!1811 = !DILocation(line: 156, column: 13, scope: !1801)
!1812 = !DILocation(line: 156, column: 27, scope: !1801)
!1813 = !DILocation(line: 157, column: 9, scope: !1801)
!1814 = !DILocation(line: 160, column: 10, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 160, column: 9)
!1816 = !DILocation(line: 160, column: 37, scope: !1815)
!1817 = !DILocation(line: 160, column: 20, scope: !1815)
!1818 = !DILocation(line: 160, column: 9, scope: !1623)
!1819 = !DILocation(line: 161, column: 9, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 160, column: 45)
!1821 = !DILocation(line: 164, column: 5, scope: !1623)
!1822 = !DILocation(line: 164, column: 15, scope: !1623)
!1823 = !DILocation(line: 167, column: 13, scope: !1623)
!1824 = !DILocation(line: 167, column: 26, scope: !1623)
!1825 = !DILocation(line: 167, column: 34, scope: !1623)
!1826 = !DILocation(line: 167, column: 17, scope: !1623)
!1827 = !DILocation(line: 167, column: 5, scope: !1623)
!1828 = !DILocation(line: 167, column: 11, scope: !1623)
!1829 = !DILocation(line: 174, column: 31, scope: !1623)
!1830 = !DILocation(line: 174, column: 11, scope: !1623)
!1831 = !DILocation(line: 174, column: 9, scope: !1623)
!1832 = !DILocation(line: 175, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 175, column: 9)
!1834 = !DILocation(line: 175, column: 13, scope: !1833)
!1835 = !DILocation(line: 175, column: 9, scope: !1623)
!1836 = !DILocation(line: 176, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 175, column: 19)
!1838 = !DILocation(line: 179, column: 11, scope: !1623)
!1839 = !DILocation(line: 179, column: 9, scope: !1623)
!1840 = !DILocation(line: 180, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 180, column: 9)
!1842 = !DILocation(line: 180, column: 13, scope: !1841)
!1843 = !DILocation(line: 180, column: 9, scope: !1623)
!1844 = !DILocation(line: 181, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 180, column: 19)
!1846 = !DILocation(line: 183, column: 5, scope: !1623)
!1847 = !DILocation(line: 184, column: 5, scope: !1623)
!1848 = !DILocation(line: 185, column: 5, scope: !1623)
!1849 = !DILocation(line: 186, column: 27, scope: !1623)
!1850 = !DILocation(line: 186, column: 11, scope: !1623)
!1851 = !DILocation(line: 186, column: 9, scope: !1623)
!1852 = !DILocation(line: 187, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 187, column: 9)
!1854 = !DILocation(line: 187, column: 13, scope: !1853)
!1855 = !DILocation(line: 187, column: 9, scope: !1623)
!1856 = !DILocation(line: 188, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 187, column: 19)
!1858 = !DILocation(line: 191, column: 5, scope: !1623)
!1859 = !DILocation(line: 191, column: 18, scope: !1623)
!1860 = distinct !DISubprogram(name: "VideoIn", linkageName: "_ZN5Linux7VideoInC2Ev", scope: !128, file: !129, line: 26, type: !169, scopeLine: 26, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !1861, retainedNodes: !310)
!1861 = !DISubprogram(name: "VideoIn", scope: !128, type: !169, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1862 = !DILocalVariable(name: "this", arg: 1, scope: !1860, type: !127, flags: DIFlagArtificial | DIFlagObjectPointer)
!1863 = !DILocation(line: 0, scope: !1860)
!1864 = !DILocation(line: 72, column: 9, scope: !1860)
!1865 = !DILocation(line: 81, column: 14, scope: !1860)
!1866 = !DILocation(line: 26, column: 14, scope: !1860)
!1867 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIjSaIjEEC2Ev", scope: !181, file: !182, line: 487, type: !456, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !455, retainedNodes: !310)
!1868 = !DILocalVariable(name: "this", arg: 1, scope: !1867, type: !180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1869 = !DILocation(line: 0, scope: !1867)
!1870 = !DILocation(line: 487, column: 7, scope: !1867)
!1871 = !DILocation(line: 487, column: 24, scope: !1867)
!1872 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIjSaIjEE5beginEv", scope: !181, file: !182, line: 811, type: !519, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !518, retainedNodes: !310)
!1873 = !DILocalVariable(name: "this", arg: 1, scope: !1872, type: !180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1874 = !DILocation(line: 0, scope: !1872)
!1875 = !DILocation(line: 812, column: 31, scope: !1872)
!1876 = !DILocation(line: 812, column: 39, scope: !1872)
!1877 = !DILocation(line: 812, column: 16, scope: !1872)
!1878 = !DILocation(line: 812, column: 9, scope: !1872)
!1879 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIjSaIjEE3endEv", scope: !181, file: !182, line: 829, type: !519, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !586, retainedNodes: !310)
!1880 = !DILocalVariable(name: "this", arg: 1, scope: !1879, type: !180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1881 = !DILocation(line: 0, scope: !1879)
!1882 = !DILocation(line: 830, column: 31, scope: !1879)
!1883 = !DILocation(line: 830, column: 39, scope: !1879)
!1884 = !DILocation(line: 830, column: 16, scope: !1879)
!1885 = !DILocation(line: 830, column: 9, scope: !1879)
!1886 = distinct !DISubprogram(name: "operator!=<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", linkageName: "_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !197, file: !523, line: 1179, type: !1887, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, templateParams: !578, retainedNodes: !310)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!138, !1889, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !545, size: 64)
!1890 = !DILocalVariable(name: "__lhs", arg: 1, scope: !1886, file: !523, line: 1179, type: !1889)
!1891 = !DILocation(line: 1179, column: 64, scope: !1886)
!1892 = !DILocalVariable(name: "__rhs", arg: 2, scope: !1886, file: !523, line: 1180, type: !1889)
!1893 = !DILocation(line: 1180, column: 57, scope: !1886)
!1894 = !DILocation(line: 1182, column: 14, scope: !1886)
!1895 = !DILocation(line: 1182, column: 20, scope: !1886)
!1896 = !DILocation(line: 1182, column: 30, scope: !1886)
!1897 = !DILocation(line: 1182, column: 36, scope: !1886)
!1898 = !DILocation(line: 1182, column: 27, scope: !1886)
!1899 = !DILocation(line: 1182, column: 7, scope: !1886)
!1900 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv", scope: !522, file: !523, line: 1042, type: !536, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !535, retainedNodes: !310)
!1901 = !DILocalVariable(name: "this", arg: 1, scope: !1900, type: !1902, flags: DIFlagArtificial | DIFlagObjectPointer)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1903 = !DILocation(line: 0, scope: !1900)
!1904 = !DILocation(line: 1043, column: 17, scope: !1900)
!1905 = !DILocation(line: 1043, column: 9, scope: !1900)
!1906 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv", scope: !522, file: !523, line: 1052, type: !552, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !551, retainedNodes: !310)
!1907 = !DILocalVariable(name: "this", arg: 1, scope: !1906, type: !1908, flags: DIFlagArtificial | DIFlagObjectPointer)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1909 = !DILocation(line: 0, scope: !1906)
!1910 = !DILocation(line: 1054, column: 4, scope: !1906)
!1911 = !DILocation(line: 1054, column: 2, scope: !1906)
!1912 = !DILocation(line: 1055, column: 2, scope: !1906)
!1913 = distinct !DISubprogram(name: "_read_thread", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv", scope: !118, file: !2, line: 221, type: !973, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !972, retainedNodes: !310)
!1914 = !DILocalVariable(name: "arg", arg: 1, scope: !1913, file: !2, line: 221, type: !159)
!1915 = !DILocation(line: 221, column: 47, scope: !1913)
!1916 = !DILocalVariable(name: "optflow_onboard", scope: !1913, file: !2, line: 223, type: !117)
!1917 = !DILocation(line: 223, column: 26, scope: !1913)
!1918 = !DILocation(line: 223, column: 68, scope: !1913)
!1919 = !DILocation(line: 225, column: 5, scope: !1913)
!1920 = !DILocation(line: 225, column: 22, scope: !1913)
!1921 = !DILocation(line: 226, column: 5, scope: !1913)
!1922 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIjSaIjEED2Ev", scope: !181, file: !182, line: 678, type: !456, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !501, retainedNodes: !310)
!1923 = !DILocalVariable(name: "this", arg: 1, scope: !1922, type: !180, flags: DIFlagArtificial | DIFlagObjectPointer)
!1924 = !DILocation(line: 0, scope: !1922)
!1925 = !DILocation(line: 680, column: 22, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !182, line: 679, column: 7)
!1927 = !DILocation(line: 680, column: 30, scope: !1926)
!1928 = !DILocation(line: 680, column: 46, scope: !1926)
!1929 = !DILocation(line: 680, column: 54, scope: !1926)
!1930 = !DILocation(line: 681, column: 9, scope: !1926)
!1931 = !DILocation(line: 680, column: 2, scope: !1926)
!1932 = !DILocation(line: 683, column: 7, scope: !1926)
!1933 = !DILocation(line: 683, column: 7, scope: !1922)
!1934 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE", scope: !118, file: !2, line: 194, type: !958, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !957, retainedNodes: !310)
!1935 = !DILocalVariable(name: "this", arg: 1, scope: !1934, type: !117, flags: DIFlagArtificial | DIFlagObjectPointer)
!1936 = !DILocation(line: 0, scope: !1934)
!1937 = !DILocalVariable(name: "frame", arg: 2, scope: !1934, file: !2, line: 194, type: !960)
!1938 = !DILocation(line: 194, column: 65, scope: !1934)
!1939 = !DILocalVariable(name: "ret", scope: !1934, file: !2, line: 196, type: !138)
!1940 = !DILocation(line: 196, column: 10, scope: !1934)
!1941 = !DILocation(line: 198, column: 25, scope: !1934)
!1942 = !DILocation(line: 198, column: 5, scope: !1934)
!1943 = !DILocation(line: 199, column: 10, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 199, column: 9)
!1945 = !DILocation(line: 199, column: 9, scope: !1934)
!1946 = !DILocation(line: 200, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 199, column: 27)
!1948 = !DILocation(line: 201, column: 9, scope: !1947)
!1949 = !DILocation(line: 203, column: 35, scope: !1934)
!1950 = !DILocation(line: 203, column: 5, scope: !1934)
!1951 = !DILocation(line: 203, column: 11, scope: !1934)
!1952 = !DILocation(line: 203, column: 33, scope: !1934)
!1953 = !DILocation(line: 204, column: 35, scope: !1934)
!1954 = !DILocation(line: 204, column: 5, scope: !1934)
!1955 = !DILocation(line: 204, column: 11, scope: !1934)
!1956 = !DILocation(line: 204, column: 33, scope: !1934)
!1957 = !DILocation(line: 205, column: 29, scope: !1934)
!1958 = !DILocation(line: 205, column: 5, scope: !1934)
!1959 = !DILocation(line: 205, column: 11, scope: !1934)
!1960 = !DILocation(line: 205, column: 27, scope: !1934)
!1961 = !DILocation(line: 206, column: 29, scope: !1934)
!1962 = !DILocation(line: 206, column: 5, scope: !1934)
!1963 = !DILocation(line: 206, column: 11, scope: !1934)
!1964 = !DILocation(line: 206, column: 27, scope: !1934)
!1965 = !DILocation(line: 207, column: 24, scope: !1934)
!1966 = !DILocation(line: 207, column: 5, scope: !1934)
!1967 = !DILocation(line: 207, column: 11, scope: !1934)
!1968 = !DILocation(line: 207, column: 22, scope: !1934)
!1969 = !DILocation(line: 208, column: 21, scope: !1934)
!1970 = !DILocation(line: 208, column: 5, scope: !1934)
!1971 = !DILocation(line: 208, column: 11, scope: !1934)
!1972 = !DILocation(line: 208, column: 19, scope: !1934)
!1973 = !DILocation(line: 209, column: 5, scope: !1934)
!1974 = !DILocation(line: 209, column: 27, scope: !1934)
!1975 = !DILocation(line: 210, column: 5, scope: !1934)
!1976 = !DILocation(line: 210, column: 28, scope: !1934)
!1977 = !DILocation(line: 211, column: 5, scope: !1934)
!1978 = !DILocation(line: 211, column: 28, scope: !1934)
!1979 = !DILocation(line: 212, column: 5, scope: !1934)
!1980 = !DILocation(line: 212, column: 22, scope: !1934)
!1981 = !DILocation(line: 213, column: 5, scope: !1934)
!1982 = !DILocation(line: 213, column: 22, scope: !1934)
!1983 = !DILocation(line: 214, column: 5, scope: !1934)
!1984 = !DILocation(line: 214, column: 21, scope: !1934)
!1985 = !DILocation(line: 215, column: 9, scope: !1934)
!1986 = !DILocation(line: 215, column: 5, scope: !1934)
!1987 = !DILabel(scope: !1934, name: "end", file: !2, line: 216)
!1988 = !DILocation(line: 216, column: 1, scope: !1934)
!1989 = !DILocation(line: 217, column: 27, scope: !1934)
!1990 = !DILocation(line: 217, column: 5, scope: !1934)
!1991 = !DILocation(line: 218, column: 12, scope: !1934)
!1992 = !DILocation(line: 218, column: 5, scope: !1934)
!1993 = distinct !DISubprogram(name: "_run_optflow", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv", scope: !118, file: !2, line: 229, type: !970, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !969, retainedNodes: !310)
!1994 = !DILocalVariable(name: "this", arg: 1, scope: !1993, type: !117, flags: DIFlagArtificial | DIFlagObjectPointer)
!1995 = !DILocation(line: 0, scope: !1993)
!1996 = !DILocalVariable(name: "rate_x", scope: !1993, file: !2, line: 231, type: !819)
!1997 = !DILocation(line: 231, column: 11, scope: !1993)
!1998 = !DILocalVariable(name: "rate_y", scope: !1993, file: !2, line: 231, type: !819)
!1999 = !DILocation(line: 231, column: 19, scope: !1993)
!2000 = !DILocalVariable(name: "rate_z", scope: !1993, file: !2, line: 231, type: !819)
!2001 = !DILocation(line: 231, column: 27, scope: !1993)
!2002 = !DILocalVariable(name: "gyro_rate", scope: !1993, file: !2, line: 232, type: !865)
!2003 = !DILocation(line: 232, column: 14, scope: !1993)
!2004 = !DILocalVariable(name: "flow_rate", scope: !1993, file: !2, line: 233, type: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vector2f", file: !976, line: 161, baseType: !975)
!2006 = !DILocation(line: 233, column: 14, scope: !1993)
!2007 = !DILocalVariable(name: "video_frame", scope: !1993, file: !2, line: 234, type: !154)
!2008 = !DILocation(line: 234, column: 20, scope: !1993)
!2009 = !DILocalVariable(name: "convert_buffer_size", scope: !1993, file: !2, line: 235, type: !140)
!2010 = !DILocation(line: 235, column: 14, scope: !1993)
!2011 = !DILocalVariable(name: "output_buffer_size", scope: !1993, file: !2, line: 235, type: !140)
!2012 = !DILocation(line: 235, column: 39, scope: !1993)
!2013 = !DILocalVariable(name: "crop_left", scope: !1993, file: !2, line: 236, type: !140)
!2014 = !DILocation(line: 236, column: 14, scope: !1993)
!2015 = !DILocalVariable(name: "crop_top", scope: !1993, file: !2, line: 236, type: !140)
!2016 = !DILocation(line: 236, column: 29, scope: !1993)
!2017 = !DILocalVariable(name: "shrink_scale", scope: !1993, file: !2, line: 237, type: !140)
!2018 = !DILocation(line: 237, column: 14, scope: !1993)
!2019 = !DILocalVariable(name: "shrink_width", scope: !1993, file: !2, line: 237, type: !140)
!2020 = !DILocation(line: 237, column: 32, scope: !1993)
!2021 = !DILocalVariable(name: "shrink_height", scope: !1993, file: !2, line: 237, type: !140)
!2022 = !DILocation(line: 237, column: 50, scope: !1993)
!2023 = !DILocalVariable(name: "shrink_width_offset", scope: !1993, file: !2, line: 238, type: !140)
!2024 = !DILocation(line: 238, column: 14, scope: !1993)
!2025 = !DILocalVariable(name: "shrink_height_offset", scope: !1993, file: !2, line: 238, type: !140)
!2026 = !DILocation(line: 238, column: 39, scope: !1993)
!2027 = !DILocalVariable(name: "convert_buffer", scope: !1993, file: !2, line: 239, type: !734)
!2028 = !DILocation(line: 239, column: 14, scope: !1993)
!2029 = !DILocalVariable(name: "output_buffer", scope: !1993, file: !2, line: 239, type: !734)
!2030 = !DILocation(line: 239, column: 38, scope: !1993)
!2031 = !DILocalVariable(name: "qual", scope: !1993, file: !2, line: 240, type: !735)
!2032 = !DILocation(line: 240, column: 13, scope: !1993)
!2033 = !DILocation(line: 242, column: 9, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 242, column: 9)
!2035 = !DILocation(line: 242, column: 17, scope: !2034)
!2036 = !DILocation(line: 242, column: 9, scope: !1993)
!2037 = !DILocation(line: 243, column: 13, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 243, column: 13)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 242, column: 39)
!2040 = !DILocation(line: 243, column: 33, scope: !2038)
!2041 = !DILocation(line: 243, column: 36, scope: !2038)
!2042 = !DILocation(line: 243, column: 13, scope: !2039)
!2043 = !DILocation(line: 244, column: 35, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !2, line: 243, column: 55)
!2045 = !DILocation(line: 244, column: 58, scope: !2044)
!2046 = !DILocation(line: 244, column: 56, scope: !2044)
!2047 = !DILocation(line: 244, column: 33, scope: !2044)
!2048 = !DILocation(line: 245, column: 9, scope: !2044)
!2049 = !DILocation(line: 246, column: 35, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2038, file: !2, line: 245, column: 16)
!2051 = !DILocation(line: 246, column: 44, scope: !2050)
!2052 = !DILocation(line: 246, column: 42, scope: !2050)
!2053 = !DILocation(line: 246, column: 33, scope: !2050)
!2054 = !DILocation(line: 249, column: 44, scope: !2039)
!2055 = !DILocation(line: 249, column: 37, scope: !2039)
!2056 = !DILocation(line: 249, column: 24, scope: !2039)
!2057 = !DILocation(line: 250, column: 14, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 250, column: 13)
!2059 = !DILocation(line: 250, column: 13, scope: !2039)
!2060 = !DILocation(line: 251, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 250, column: 30)
!2062 = !DILocation(line: 253, column: 5, scope: !2039)
!2063 = !DILocation(line: 255, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 255, column: 9)
!2065 = !DILocation(line: 255, column: 29, scope: !2064)
!2066 = !DILocation(line: 255, column: 32, scope: !2064)
!2067 = !DILocation(line: 255, column: 9, scope: !1993)
!2068 = !DILocation(line: 256, column: 28, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 255, column: 51)
!2070 = !DILocation(line: 259, column: 43, scope: !2069)
!2071 = !DILocation(line: 259, column: 36, scope: !2069)
!2072 = !DILocation(line: 259, column: 23, scope: !2069)
!2073 = !DILocation(line: 260, column: 14, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 260, column: 13)
!2075 = !DILocation(line: 260, column: 13, scope: !2069)
!2076 = !DILocation(line: 261, column: 17, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 261, column: 17)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 260, column: 29)
!2079 = !DILocation(line: 261, column: 17, scope: !2078)
!2080 = !DILocation(line: 262, column: 22, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 261, column: 33)
!2082 = !DILocation(line: 262, column: 17, scope: !2081)
!2083 = !DILocation(line: 263, column: 13, scope: !2081)
!2084 = !DILocation(line: 265, column: 13, scope: !2078)
!2085 = !DILocation(line: 267, column: 5, scope: !2069)
!2086 = !DILocation(line: 269, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 269, column: 9)
!2088 = !DILocation(line: 269, column: 9, scope: !1993)
!2089 = !DILocation(line: 270, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 270, column: 13)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 269, column: 30)
!2092 = !DILocation(line: 270, column: 36, scope: !2090)
!2093 = !DILocation(line: 270, column: 34, scope: !2090)
!2094 = !DILocation(line: 270, column: 13, scope: !2091)
!2095 = !DILocation(line: 271, column: 39, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 270, column: 59)
!2097 = !DILocation(line: 271, column: 61, scope: !2096)
!2098 = !DILocation(line: 271, column: 26, scope: !2096)
!2099 = !DILocation(line: 273, column: 9, scope: !2096)
!2100 = !DILocation(line: 274, column: 39, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 273, column: 16)
!2102 = !DILocation(line: 274, column: 60, scope: !2101)
!2103 = !DILocation(line: 274, column: 26, scope: !2101)
!2104 = !DILocation(line: 278, column: 59, scope: !2091)
!2105 = !DILocation(line: 278, column: 57, scope: !2091)
!2106 = !DILocation(line: 278, column: 22, scope: !2091)
!2107 = !DILocation(line: 279, column: 61, scope: !2091)
!2108 = !DILocation(line: 279, column: 59, scope: !2091)
!2109 = !DILocation(line: 279, column: 23, scope: !2091)
!2110 = !DILocation(line: 281, column: 32, scope: !2091)
!2111 = !DILocation(line: 281, column: 55, scope: !2091)
!2112 = !DILocation(line: 281, column: 53, scope: !2091)
!2113 = !DILocation(line: 281, column: 69, scope: !2091)
!2114 = !DILocation(line: 281, column: 29, scope: !2091)
!2115 = !DILocation(line: 282, column: 33, scope: !2091)
!2116 = !DILocation(line: 282, column: 57, scope: !2091)
!2117 = !DILocation(line: 282, column: 55, scope: !2091)
!2118 = !DILocation(line: 282, column: 72, scope: !2091)
!2119 = !DILocation(line: 282, column: 30, scope: !2091)
!2120 = !DILocation(line: 283, column: 5, scope: !2091)
!2121 = !DILocation(line: 283, column: 16, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 283, column: 16)
!2123 = !DILocation(line: 283, column: 16, scope: !2087)
!2124 = !DILocation(line: 284, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 283, column: 35)
!2126 = !DILocation(line: 284, column: 42, scope: !2125)
!2127 = !DILocation(line: 284, column: 46, scope: !2125)
!2128 = !DILocation(line: 284, column: 19, scope: !2125)
!2129 = !DILocation(line: 286, column: 20, scope: !2125)
!2130 = !DILocation(line: 286, column: 42, scope: !2125)
!2131 = !DILocation(line: 286, column: 46, scope: !2125)
!2132 = !DILocation(line: 286, column: 18, scope: !2125)
!2133 = !DILocation(line: 288, column: 5, scope: !2125)
!2134 = !DILocation(line: 290, column: 5, scope: !1993)
!2135 = !DILocation(line: 292, column: 14, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 292, column: 13)
!2137 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 290, column: 17)
!2138 = !DILocation(line: 292, column: 24, scope: !2136)
!2139 = !DILocation(line: 292, column: 13, scope: !2137)
!2140 = !DILocation(line: 293, column: 17, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 293, column: 17)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 292, column: 48)
!2143 = !DILocation(line: 293, column: 17, scope: !2142)
!2144 = !DILocation(line: 294, column: 21, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 293, column: 33)
!2146 = !DILocation(line: 294, column: 16, scope: !2145)
!2147 = !DILocation(line: 295, column: 13, scope: !2145)
!2148 = !DILocation(line: 297, column: 17, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 297, column: 17)
!2150 = !DILocation(line: 297, column: 17, scope: !2142)
!2151 = !DILocation(line: 298, column: 21, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 297, column: 32)
!2153 = !DILocation(line: 298, column: 16, scope: !2152)
!2154 = !DILocation(line: 299, column: 13, scope: !2152)
!2155 = !DILocation(line: 301, column: 13, scope: !2142)
!2156 = !DILocation(line: 304, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 304, column: 13)
!2158 = !DILocation(line: 304, column: 21, scope: !2157)
!2159 = !DILocation(line: 304, column: 13, scope: !2137)
!2160 = !DILocation(line: 305, column: 58, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 304, column: 43)
!2162 = !DILocation(line: 306, column: 17, scope: !2161)
!2163 = !DILocation(line: 306, column: 37, scope: !2161)
!2164 = !DILocation(line: 306, column: 42, scope: !2161)
!2165 = !DILocation(line: 305, column: 13, scope: !2161)
!2166 = !DILocation(line: 308, column: 32, scope: !2161)
!2167 = !DILocation(line: 308, column: 41, scope: !2161)
!2168 = !DILocation(line: 308, column: 61, scope: !2161)
!2169 = !DILocation(line: 308, column: 13, scope: !2161)
!2170 = !DILocation(line: 309, column: 32, scope: !2161)
!2171 = !DILocation(line: 309, column: 38, scope: !2161)
!2172 = !DILocation(line: 309, column: 54, scope: !2161)
!2173 = !DILocation(line: 309, column: 13, scope: !2161)
!2174 = !DILocation(line: 310, column: 9, scope: !2161)
!2175 = !DILocation(line: 312, column: 13, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 312, column: 13)
!2177 = !DILocation(line: 312, column: 13, scope: !2137)
!2178 = !DILocation(line: 315, column: 57, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !2, line: 312, column: 34)
!2180 = !DILocation(line: 315, column: 63, scope: !2179)
!2181 = !DILocation(line: 316, column: 34, scope: !2179)
!2182 = !DILocation(line: 316, column: 56, scope: !2179)
!2183 = !DILocation(line: 317, column: 34, scope: !2179)
!2184 = !DILocation(line: 317, column: 55, scope: !2179)
!2185 = !DILocation(line: 318, column: 34, scope: !2179)
!2186 = !DILocation(line: 318, column: 56, scope: !2179)
!2187 = !DILocation(line: 319, column: 34, scope: !2179)
!2188 = !DILocation(line: 319, column: 48, scope: !2179)
!2189 = !DILocation(line: 315, column: 13, scope: !2179)
!2190 = !DILocation(line: 320, column: 32, scope: !2179)
!2191 = !DILocation(line: 320, column: 41, scope: !2179)
!2192 = !DILocation(line: 320, column: 64, scope: !2179)
!2193 = !DILocation(line: 320, column: 62, scope: !2179)
!2194 = !DILocation(line: 320, column: 13, scope: !2179)
!2195 = !DILocation(line: 321, column: 32, scope: !2179)
!2196 = !DILocation(line: 321, column: 38, scope: !2179)
!2197 = !DILocation(line: 321, column: 53, scope: !2179)
!2198 = !DILocation(line: 321, column: 13, scope: !2179)
!2199 = !DILocation(line: 322, column: 9, scope: !2179)
!2200 = !DILocation(line: 322, column: 20, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2176, file: !2, line: 322, column: 20)
!2202 = !DILocation(line: 322, column: 20, scope: !2176)
!2203 = !DILocation(line: 323, column: 55, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 322, column: 39)
!2205 = !DILocation(line: 323, column: 61, scope: !2204)
!2206 = !DILocation(line: 324, column: 32, scope: !2204)
!2207 = !DILocation(line: 325, column: 32, scope: !2204)
!2208 = !DILocation(line: 326, column: 32, scope: !2204)
!2209 = !DILocation(line: 323, column: 13, scope: !2204)
!2210 = !DILocation(line: 328, column: 32, scope: !2204)
!2211 = !DILocation(line: 328, column: 41, scope: !2204)
!2212 = !DILocation(line: 328, column: 64, scope: !2204)
!2213 = !DILocation(line: 328, column: 62, scope: !2204)
!2214 = !DILocation(line: 328, column: 13, scope: !2204)
!2215 = !DILocation(line: 329, column: 32, scope: !2204)
!2216 = !DILocation(line: 329, column: 38, scope: !2204)
!2217 = !DILocation(line: 329, column: 53, scope: !2204)
!2218 = !DILocation(line: 329, column: 13, scope: !2204)
!2219 = !DILocation(line: 330, column: 9, scope: !2204)
!2220 = !DILocation(line: 334, column: 13, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 334, column: 13)
!2222 = !DILocation(line: 334, column: 31, scope: !2221)
!2223 = !DILocation(line: 334, column: 36, scope: !2221)
!2224 = !DILocation(line: 334, column: 13, scope: !2137)
!2225 = !DILocation(line: 335, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 334, column: 45)
!2227 = !DILocation(line: 335, column: 31, scope: !2226)
!2228 = !DILocation(line: 336, column: 13, scope: !2226)
!2229 = distinct !{!2229, !2134, !2230, !2231}
!2230 = !DILocation(line: 395, column: 5, scope: !1993)
!2231 = !{!"llvm.loop.mustprogress"}
!2232 = !DILocation(line: 340, column: 9, scope: !2137)
!2233 = !DILocation(line: 341, column: 23, scope: !2137)
!2234 = !DILocation(line: 341, column: 19, scope: !2137)
!2235 = !DILocation(line: 341, column: 21, scope: !2137)
!2236 = !DILocation(line: 342, column: 23, scope: !2137)
!2237 = !DILocation(line: 342, column: 19, scope: !2137)
!2238 = !DILocation(line: 342, column: 21, scope: !2137)
!2239 = !DILocation(line: 343, column: 23, scope: !2137)
!2240 = !DILocation(line: 343, column: 19, scope: !2137)
!2241 = !DILocation(line: 343, column: 21, scope: !2137)
!2242 = !DILocation(line: 367, column: 16, scope: !2137)
!2243 = !DILocation(line: 367, column: 46, scope: !2137)
!2244 = !DILocation(line: 367, column: 64, scope: !2137)
!2245 = !DILocation(line: 368, column: 59, scope: !2137)
!2246 = !DILocation(line: 369, column: 48, scope: !2137)
!2247 = !DILocation(line: 370, column: 36, scope: !2137)
!2248 = !DILocation(line: 370, column: 54, scope: !2137)
!2249 = !DILocation(line: 369, column: 58, scope: !2137)
!2250 = !DILocation(line: 371, column: 47, scope: !2137)
!2251 = !DILocation(line: 371, column: 61, scope: !2137)
!2252 = !DILocation(line: 367, column: 23, scope: !2137)
!2253 = !DILocation(line: 367, column: 14, scope: !2137)
!2254 = !DILocation(line: 374, column: 29, scope: !2137)
!2255 = !DILocation(line: 374, column: 9, scope: !2137)
!2256 = !DILocation(line: 375, column: 45, scope: !2137)
!2257 = !DILocation(line: 375, column: 35, scope: !2137)
!2258 = !DILocation(line: 375, column: 47, scope: !2137)
!2259 = !DILocation(line: 375, column: 9, scope: !2137)
!2260 = !DILocation(line: 375, column: 32, scope: !2137)
!2261 = !DILocation(line: 377, column: 45, scope: !2137)
!2262 = !DILocation(line: 377, column: 35, scope: !2137)
!2263 = !DILocation(line: 377, column: 47, scope: !2137)
!2264 = !DILocation(line: 377, column: 9, scope: !2137)
!2265 = !DILocation(line: 377, column: 32, scope: !2137)
!2266 = !DILocation(line: 379, column: 46, scope: !2137)
!2267 = !DILocation(line: 380, column: 34, scope: !2137)
!2268 = !DILocation(line: 380, column: 52, scope: !2137)
!2269 = !DILocation(line: 379, column: 56, scope: !2137)
!2270 = !DILocation(line: 379, column: 9, scope: !2137)
!2271 = !DILocation(line: 379, column: 31, scope: !2137)
!2272 = !DILocation(line: 381, column: 46, scope: !2137)
!2273 = !DILocation(line: 381, column: 50, scope: !2137)
!2274 = !DILocation(line: 381, column: 66, scope: !2137)
!2275 = !DILocation(line: 381, column: 48, scope: !2137)
!2276 = !DILocation(line: 381, column: 69, scope: !2137)
!2277 = !DILocation(line: 382, column: 48, scope: !2137)
!2278 = !DILocation(line: 383, column: 35, scope: !2137)
!2279 = !DILocation(line: 383, column: 53, scope: !2137)
!2280 = !DILocation(line: 382, column: 58, scope: !2137)
!2281 = !DILocation(line: 382, column: 35, scope: !2137)
!2282 = !DILocation(line: 381, column: 9, scope: !2137)
!2283 = !DILocation(line: 381, column: 32, scope: !2137)
!2284 = !DILocation(line: 384, column: 46, scope: !2137)
!2285 = !DILocation(line: 384, column: 50, scope: !2137)
!2286 = !DILocation(line: 384, column: 66, scope: !2137)
!2287 = !DILocation(line: 384, column: 48, scope: !2137)
!2288 = !DILocation(line: 384, column: 69, scope: !2137)
!2289 = !DILocation(line: 385, column: 48, scope: !2137)
!2290 = !DILocation(line: 386, column: 35, scope: !2137)
!2291 = !DILocation(line: 386, column: 53, scope: !2137)
!2292 = !DILocation(line: 385, column: 58, scope: !2137)
!2293 = !DILocation(line: 385, column: 35, scope: !2137)
!2294 = !DILocation(line: 384, column: 9, scope: !2137)
!2295 = !DILocation(line: 384, column: 32, scope: !2137)
!2296 = !DILocation(line: 387, column: 28, scope: !2137)
!2297 = !DILocation(line: 387, column: 9, scope: !2137)
!2298 = !DILocation(line: 387, column: 26, scope: !2137)
!2299 = !DILocation(line: 388, column: 9, scope: !2137)
!2300 = !DILocation(line: 388, column: 25, scope: !2137)
!2301 = !DILocation(line: 389, column: 31, scope: !2137)
!2302 = !DILocation(line: 389, column: 9, scope: !2137)
!2303 = !DILocation(line: 392, column: 9, scope: !2137)
!2304 = !DILocation(line: 392, column: 29, scope: !2137)
!2305 = !DILocation(line: 392, column: 19, scope: !2137)
!2306 = !DILocation(line: 393, column: 9, scope: !2137)
!2307 = !DILocation(line: 393, column: 27, scope: !2137)
!2308 = !DILocation(line: 394, column: 9, scope: !2137)
!2309 = !DILocation(line: 394, column: 25, scope: !2137)
!2310 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Ev", scope: !867, file: !866, line: 71, type: !873, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !872, retainedNodes: !310)
!2311 = !DILocalVariable(name: "this", arg: 1, scope: !2310, type: !2312, flags: DIFlagArtificial | DIFlagObjectPointer)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!2313 = !DILocation(line: 0, scope: !2310)
!2314 = !DILocation(line: 72, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !866, line: 71, column: 18)
!2316 = !DILocation(line: 72, column: 19, scope: !2315)
!2317 = !DILocation(line: 72, column: 13, scope: !2315)
!2318 = !DILocation(line: 72, column: 15, scope: !2315)
!2319 = !DILocation(line: 72, column: 9, scope: !2315)
!2320 = !DILocation(line: 72, column: 11, scope: !2315)
!2321 = !DILocation(line: 73, column: 5, scope: !2310)
!2322 = distinct !DISubprogram(name: "Vector2", linkageName: "_ZN7Vector2IfEC2Ev", scope: !975, file: !976, line: 41, type: !981, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !980, retainedNodes: !310)
!2323 = !DILocalVariable(name: "this", arg: 1, scope: !2322, type: !2324, flags: DIFlagArtificial | DIFlagObjectPointer)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!2325 = !DILocation(line: 0, scope: !2322)
!2326 = !DILocation(line: 42, column: 13, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !976, line: 41, column: 18)
!2328 = !DILocation(line: 42, column: 15, scope: !2327)
!2329 = !DILocation(line: 42, column: 9, scope: !2327)
!2330 = !DILocation(line: 42, column: 11, scope: !2327)
!2331 = !DILocation(line: 43, column: 5, scope: !2322)
!2332 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_", scope: !827, file: !828, line: 53, type: !848, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !847, retainedNodes: !310)
!2333 = !DILocalVariable(name: "this", arg: 1, scope: !2332, type: !2334, flags: DIFlagArtificial | DIFlagObjectPointer)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!2335 = !DILocation(line: 0, scope: !2332)
!2336 = !DILocalVariable(name: "args", arg: 2, scope: !2332, file: !828, line: 53, type: !835)
!2337 = !DILocation(line: 53, column: 32, scope: !2332)
!2338 = !DILocalVariable(name: "args", arg: 3, scope: !2332, file: !828, line: 53, type: !835)
!2339 = !DILocalVariable(name: "args", arg: 4, scope: !2332, file: !828, line: 53, type: !835)
!2340 = !DILocation(line: 55, column: 16, scope: !2332)
!2341 = !DILocation(line: 55, column: 24, scope: !2332)
!2342 = !DILocation(line: 55, column: 30, scope: !2332)
!2343 = !DILocation(line: 55, column: 9, scope: !2332)
!2344 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIjSaIjEEC2Ev", scope: !186, file: !182, line: 288, type: !372, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !371, retainedNodes: !310)
!2345 = !DILocalVariable(name: "this", arg: 1, scope: !2344, type: !2346, flags: DIFlagArtificial | DIFlagObjectPointer)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2347 = !DILocation(line: 0, scope: !2344)
!2348 = !DILocation(line: 288, column: 7, scope: !2344)
!2349 = !DILocation(line: 288, column: 30, scope: !2344)
!2350 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev", scope: !189, file: !182, line: 131, type: !338, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !337, retainedNodes: !310)
!2351 = !DILocalVariable(name: "this", arg: 1, scope: !2350, type: !2352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2353 = !DILocation(line: 0, scope: !2350)
!2354 = !DILocation(line: 133, column: 4, scope: !2350)
!2355 = !DILocation(line: 131, column: 2, scope: !2350)
!2356 = !DILocation(line: 134, column: 4, scope: !2350)
!2357 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIjEC2Ev", scope: !210, file: !211, line: 156, type: !263, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !262, retainedNodes: !310)
!2358 = !DILocalVariable(name: "this", arg: 1, scope: !2357, type: !2359, flags: DIFlagArtificial | DIFlagObjectPointer)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2360 = !DILocation(line: 0, scope: !2357)
!2361 = !DILocation(line: 156, column: 7, scope: !2357)
!2362 = !DILocation(line: 156, column: 38, scope: !2357)
!2363 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev", scope: !313, file: !182, line: 97, type: !321, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !320, retainedNodes: !310)
!2364 = !DILocalVariable(name: "this", arg: 1, scope: !2363, type: !2365, flags: DIFlagArtificial | DIFlagObjectPointer)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2366 = !DILocation(line: 0, scope: !2363)
!2367 = !DILocation(line: 98, column: 4, scope: !2363)
!2368 = !DILocation(line: 98, column: 16, scope: !2363)
!2369 = !DILocation(line: 98, column: 29, scope: !2363)
!2370 = !DILocation(line: 99, column: 4, scope: !2363)
!2371 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIjEC2Ev", scope: !216, file: !217, line: 79, type: !220, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !219, retainedNodes: !310)
!2372 = !DILocalVariable(name: "this", arg: 1, scope: !2371, type: !2373, flags: DIFlagArtificial | DIFlagObjectPointer)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2374 = !DILocation(line: 0, scope: !2371)
!2375 = !DILocation(line: 79, column: 47, scope: !2371)
!2376 = distinct !DISubprogram(name: "_Destroy<unsigned int *, unsigned int>", linkageName: "_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E", scope: !183, file: !201, line: 845, type: !2377, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, templateParams: !2379, retainedNodes: !310)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !207, !207, !274}
!2379 = !{!2380, !261}
!2380 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !207)
!2381 = !DILocalVariable(name: "__first", arg: 1, scope: !2376, file: !201, line: 845, type: !207)
!2382 = !DILocation(line: 845, column: 31, scope: !2376)
!2383 = !DILocalVariable(name: "__last", arg: 2, scope: !2376, file: !201, line: 845, type: !207)
!2384 = !DILocation(line: 845, column: 57, scope: !2376)
!2385 = !DILocalVariable(arg: 3, scope: !2376, file: !201, line: 846, type: !274)
!2386 = !DILocation(line: 846, column: 22, scope: !2376)
!2387 = !DILocation(line: 848, column: 16, scope: !2376)
!2388 = !DILocation(line: 848, column: 25, scope: !2376)
!2389 = !DILocation(line: 848, column: 7, scope: !2376)
!2390 = !DILocation(line: 849, column: 5, scope: !2376)
!2391 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !186, file: !182, line: 276, type: !358, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !357, retainedNodes: !310)
!2392 = !DILocalVariable(name: "this", arg: 1, scope: !2391, type: !2346, flags: DIFlagArtificial | DIFlagObjectPointer)
!2393 = !DILocation(line: 0, scope: !2391)
!2394 = !DILocation(line: 277, column: 22, scope: !2391)
!2395 = !DILocation(line: 277, column: 9, scope: !2391)
!2396 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIjSaIjEED2Ev", scope: !186, file: !182, line: 333, type: !372, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !398, retainedNodes: !310)
!2397 = !DILocalVariable(name: "this", arg: 1, scope: !2396, type: !2346, flags: DIFlagArtificial | DIFlagObjectPointer)
!2398 = !DILocation(line: 0, scope: !2396)
!2399 = !DILocation(line: 335, column: 16, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !182, line: 334, column: 7)
!2401 = !DILocation(line: 335, column: 24, scope: !2400)
!2402 = !DILocation(line: 336, column: 9, scope: !2400)
!2403 = !DILocation(line: 336, column: 17, scope: !2400)
!2404 = !DILocation(line: 336, column: 37, scope: !2400)
!2405 = !DILocation(line: 336, column: 45, scope: !2400)
!2406 = !DILocation(line: 336, column: 35, scope: !2400)
!2407 = !DILocation(line: 335, column: 2, scope: !2400)
!2408 = !DILocation(line: 337, column: 7, scope: !2400)
!2409 = !DILocation(line: 337, column: 7, scope: !2396)
!2410 = distinct !DISubprogram(name: "_Destroy<unsigned int *>", linkageName: "_ZSt8_DestroyIPjEvT_S1_", scope: !183, file: !2411, line: 182, type: !2412, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, templateParams: !2414, retainedNodes: !310)
!2411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !207, !207}
!2414 = !{!2380}
!2415 = !DILocalVariable(name: "__first", arg: 1, scope: !2410, file: !2411, line: 182, type: !207)
!2416 = !DILocation(line: 182, column: 31, scope: !2410)
!2417 = !DILocalVariable(name: "__last", arg: 2, scope: !2410, file: !2411, line: 182, type: !207)
!2418 = !DILocation(line: 182, column: 57, scope: !2410)
!2419 = !DILocation(line: 196, column: 12, scope: !2410)
!2420 = !DILocation(line: 196, column: 21, scope: !2410)
!2421 = !DILocation(line: 195, column: 7, scope: !2410)
!2422 = !DILocation(line: 197, column: 5, scope: !2410)
!2423 = distinct !DISubprogram(name: "__destroy<unsigned int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_", scope: !2424, file: !2411, line: 172, type: !2412, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, templateParams: !2414, declaration: !2427, retainedNodes: !310)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !183, file: !2411, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !310, templateParams: !2425, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!2425 = !{!2426}
!2426 = !DITemplateValueParameter(type: !138, value: i1 true)
!2427 = !DISubprogram(name: "__destroy<unsigned int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_", scope: !2424, file: !2411, line: 172, type: !2412, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !2414)
!2428 = !DILocalVariable(arg: 1, scope: !2423, file: !2411, line: 172, type: !207)
!2429 = !DILocation(line: 172, column: 35, scope: !2423)
!2430 = !DILocalVariable(arg: 2, scope: !2423, file: !2411, line: 172, type: !207)
!2431 = !DILocation(line: 172, column: 53, scope: !2423)
!2432 = !DILocation(line: 172, column: 57, scope: !2423)
!2433 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm", scope: !186, file: !182, line: 350, type: !403, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !402, retainedNodes: !310)
!2434 = !DILocalVariable(name: "this", arg: 1, scope: !2433, type: !2346, flags: DIFlagArtificial | DIFlagObjectPointer)
!2435 = !DILocation(line: 0, scope: !2433)
!2436 = !DILocalVariable(name: "__p", arg: 2, scope: !2433, file: !182, line: 350, type: !316)
!2437 = !DILocation(line: 350, column: 29, scope: !2433)
!2438 = !DILocalVariable(name: "__n", arg: 3, scope: !2433, file: !182, line: 350, type: !248)
!2439 = !DILocation(line: 350, column: 41, scope: !2433)
!2440 = !DILocation(line: 353, column: 6, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !182, line: 353, column: 6)
!2442 = !DILocation(line: 353, column: 6, scope: !2433)
!2443 = !DILocation(line: 354, column: 20, scope: !2441)
!2444 = !DILocation(line: 354, column: 29, scope: !2441)
!2445 = !DILocation(line: 354, column: 34, scope: !2441)
!2446 = !DILocation(line: 354, column: 4, scope: !2441)
!2447 = !DILocation(line: 355, column: 7, scope: !2433)
!2448 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev", scope: !189, file: !182, line: 128, type: !338, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !2449, retainedNodes: !310)
!2449 = !DISubprogram(name: "~_Vector_impl", scope: !189, type: !338, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2450 = !DILocalVariable(name: "this", arg: 1, scope: !2448, type: !2352, flags: DIFlagArtificial | DIFlagObjectPointer)
!2451 = !DILocation(line: 0, scope: !2448)
!2452 = !DILocation(line: 128, column: 14, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !182, line: 128, column: 14)
!2454 = !DILocation(line: 128, column: 14, scope: !2448)
!2455 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm", scope: !200, file: !201, line: 495, type: !282, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !281, retainedNodes: !310)
!2456 = !DILocalVariable(name: "__a", arg: 1, scope: !2455, file: !201, line: 495, type: !208)
!2457 = !DILocation(line: 495, column: 34, scope: !2455)
!2458 = !DILocalVariable(name: "__p", arg: 2, scope: !2455, file: !201, line: 495, type: !206)
!2459 = !DILocation(line: 495, column: 47, scope: !2455)
!2460 = !DILocalVariable(name: "__n", arg: 3, scope: !2455, file: !201, line: 495, type: !276)
!2461 = !DILocation(line: 495, column: 62, scope: !2455)
!2462 = !DILocation(line: 496, column: 9, scope: !2455)
!2463 = !DILocation(line: 496, column: 24, scope: !2455)
!2464 = !DILocation(line: 496, column: 29, scope: !2455)
!2465 = !DILocation(line: 496, column: 13, scope: !2455)
!2466 = !DILocation(line: 496, column: 35, scope: !2455)
!2467 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm", scope: !216, file: !217, line: 132, type: !254, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !253, retainedNodes: !310)
!2468 = !DILocalVariable(name: "this", arg: 1, scope: !2467, type: !2373, flags: DIFlagArtificial | DIFlagObjectPointer)
!2469 = !DILocation(line: 0, scope: !2467)
!2470 = !DILocalVariable(name: "__p", arg: 2, scope: !2467, file: !217, line: 132, type: !207)
!2471 = !DILocation(line: 132, column: 23, scope: !2467)
!2472 = !DILocalVariable(name: "__t", arg: 3, scope: !2467, file: !217, line: 132, type: !247)
!2473 = !DILocation(line: 132, column: 38, scope: !2467)
!2474 = !DILocation(line: 145, column: 20, scope: !2467)
!2475 = !DILocation(line: 145, column: 2, scope: !2467)
!2476 = !DILocation(line: 150, column: 7, scope: !2467)
!2477 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIjED2Ev", scope: !210, file: !211, line: 174, type: !263, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !275, retainedNodes: !310)
!2478 = !DILocalVariable(name: "this", arg: 1, scope: !2477, type: !2359, flags: DIFlagArtificial | DIFlagObjectPointer)
!2479 = !DILocation(line: 0, scope: !2477)
!2480 = !DILocation(line: 174, column: 39, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !211, line: 174, column: 37)
!2482 = !DILocation(line: 174, column: 39, scope: !2477)
!2483 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIjED2Ev", scope: !216, file: !217, line: 89, type: !220, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !228, retainedNodes: !310)
!2484 = !DILocalVariable(name: "this", arg: 1, scope: !2483, type: !2373, flags: DIFlagArtificial | DIFlagObjectPointer)
!2485 = !DILocation(line: 0, scope: !2483)
!2486 = !DILocation(line: 89, column: 48, scope: !2483)
!2487 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_", scope: !522, file: !523, line: 1027, type: !531, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !530, retainedNodes: !310)
!2488 = !DILocalVariable(name: "this", arg: 1, scope: !2487, type: !1908, flags: DIFlagArtificial | DIFlagObjectPointer)
!2489 = !DILocation(line: 0, scope: !2487)
!2490 = !DILocalVariable(name: "__i", arg: 2, scope: !2487, file: !523, line: 1027, type: !533)
!2491 = !DILocation(line: 1027, column: 42, scope: !2487)
!2492 = !DILocation(line: 1028, column: 9, scope: !2487)
!2493 = !DILocation(line: 1028, column: 20, scope: !2487)
!2494 = !DILocation(line: 1028, column: 27, scope: !2487)
!2495 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv", scope: !522, file: !523, line: 1105, type: !576, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, declaration: !575, retainedNodes: !310)
!2496 = !DILocalVariable(name: "this", arg: 1, scope: !2495, type: !1902, flags: DIFlagArtificial | DIFlagObjectPointer)
!2497 = !DILocation(line: 0, scope: !2495)
!2498 = !DILocation(line: 1106, column: 16, scope: !2495)
!2499 = !DILocation(line: 1106, column: 9, scope: !2495)
