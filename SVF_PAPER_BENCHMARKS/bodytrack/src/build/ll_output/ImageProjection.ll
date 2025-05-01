; ModuleID = '../TrackingBenchmark/ImageProjection.cpp'
source_filename = "../TrackingBenchmark/ImageProjection.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.Vector3 = type { float, float, float }
%class.DMatrix = type { [3 x [4 x float]] }
%class.KTCylinder = type { float, float, float, %class.DMatrix }
%class.Camera = type { %class.Point, %class.Point, float, [5 x float], [3 x [3 x float]], %class.Vector3, %class.Vector3, %class.DMatrix, %class.Vector3 }
%class.Point = type { float, float }
%class.ProjectedCylinder = type { [4 x %class.Point] }
%class.ProjectedBody = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl" }
%"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl" = type { %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.BodyGeometry = type { %"class.std::vector.0", %class.BodyParameters, %"class.std::vector.5", %"class.std::vector.5", %"class.std::vector.10", %"class.std::vector.10" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl" }
%"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl" = type { %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.BodyParameters = type { [10 x [4 x float]], [18 x float] }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MultiCameraProjectedBody = type { %"class.std::vector.15" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl" }
%"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl" = type { %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MultiCamera = type { %"class.std::vector.20" }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl" }
%"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl" = type { %"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::integral_constant" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }

$_ZN7Vector3IfEC2Efff = comdat any

$_ZNK7Vector3IfEmiERKS0_ = comdat any

$_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_ = comdat any

$_Z7InverseIfE7DMatrixIT_ERKS2_ = comdat any

$_ZN7Vector3IfED2Ev = comdat any

$_ZN7DMatrixIfED2Ev = comdat any

$_ZN7Vector3IfEC2Ev = comdat any

$_ZN7Vector3IfE3SetEfff = comdat any

$_Z13ProjectPointsR7Vector3IfER5PointR6Camera = comdat any

$_ZNK12BodyGeometry16GetBodyPartCountEv = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEm = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm = comdat any

$_ZNK12BodyGeometryclEi = comdat any

$_ZN11MultiCamera14GetCameraCountEv = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EE6resizeEm = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm = comdat any

$_ZN11MultiCameraclEi = comdat any

$_ZN5PointC2Eff = comdat any

$_ZN5Point3SetEff = comdat any

$_ZN5PointD2Ev = comdat any

$_ZNKSt6vectorI10KTCylinderSaIS0_EE4sizeEv = comdat any

$_ZNKSt6vectorI10KTCylinderSaIS0_EEixEm = comdat any

$_ZNKSt6vectorI6CameraSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI6CameraSaIS0_EEixEm = comdat any

$_ZN7DMatrixIfEclEii = comdat any

$_ZN7DMatrixIfEC2Ev = comdat any

$_ZN7DMatrixIfE5ClearEv = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIP17ProjectedCylindermS0_ET_S2_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIP17ProjectedCylindermET_S2_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP17ProjectedCylindermEET_S4_T0_ = comdat any

$_ZSt10_ConstructI17ProjectedCylinderJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_ = comdat any

$_ZN17ProjectedCylinderC2Ev = comdat any

$_ZN5PointC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP17ProjectedCylinderEEvT_S4_ = comdat any

$_ZSt8_DestroyI17ProjectedCylinderEvPT_ = comdat any

$_ZN17ProjectedCylinderD2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE10deallocateEPS1_m = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP17ProjectedCylinderET_S2_ = comdat any

$_ZSt19__relocate_object_aI17ProjectedCylinderS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE7destroyIS1_EEvPT_ = comdat any

$_ZSt8_DestroyIP17ProjectedCylinderS0_EvT_S2_RSaIT0_E = comdat any

$_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIP13ProjectedBodymS0_ET_S2_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorI13ProjectedBodySaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP13ProjectedBodyS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt6vectorI13ProjectedBodySaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIP13ProjectedBodymET_S2_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ProjectedBodymEET_S4_T0_ = comdat any

$_ZSt10_ConstructI13ProjectedBodyJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIP13ProjectedBodyEvT_S2_ = comdat any

$_ZN13ProjectedBodyC2Ev = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI17ProjectedCylinderEC2Ev = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP13ProjectedBodyEEvT_S4_ = comdat any

$_ZSt8_DestroyI13ProjectedBodyEvPT_ = comdat any

$_ZN13ProjectedBodyD2Ev = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderED2Ev = comdat any

$_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPK13ProjectedBodyPS0_S0_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorI13ProjectedBodyPKS0_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPK13ProjectedBodyPS0_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ProjectedBodyPS2_EET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructI13ProjectedBodyJRKS0_EEvPT_DpOT0_ = comdat any

$_ZN13ProjectedBodyC2ERKS_ = comdat any

$_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_ = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2EmRKS1_ = comdat any

$_ZNSaI17ProjectedCylinderED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv = comdat any

$_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE3endEv = comdat any

$_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_ = comdat any

$_ZNSaI17ProjectedCylinderEC2ERKS0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_M_create_storageEm = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_ = comdat any

$_ZN9__gnu_cxxneIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZSt10_ConstructI17ProjectedCylinderJRKS0_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE10deallocateEPS1_m = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1, !dbg !7
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImageProjection.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1994 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1995
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1997
  ret void, !dbg !1995
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN17ProjectedCylinder15ImageProjectionERK10KTCylinderR6Camera(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(160) %2) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !1998 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %class.Vector3, align 4
  %8 = alloca %class.Vector3, align 4
  %9 = alloca %class.Vector3, align 4
  %10 = alloca %class.DMatrix, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  %15 = alloca %class.Vector3, align 4
  %16 = alloca [4 x %class.Vector3], align 16
  %17 = alloca %class.Vector3, align 4
  %18 = alloca %class.Vector3, align 4
  %19 = alloca %class.Vector3, align 4
  %20 = alloca %class.Vector3, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1999, metadata !DIExpression()), !dbg !2000
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2001, metadata !DIExpression()), !dbg !2002
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2003, metadata !DIExpression()), !dbg !2004
  %22 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2005, metadata !DIExpression()), !dbg !2006
  %23 = load ptr, ptr %5, align 8, !dbg !2007
  %24 = getelementptr inbounds %class.KTCylinder, ptr %23, i32 0, i32 2, !dbg !2008
  %25 = load float, ptr %24, align 4, !dbg !2008
  %26 = fdiv float %25, 2.000000e+00, !dbg !2009
  call void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %26), !dbg !2006
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2010, metadata !DIExpression()), !dbg !2011
  %27 = load ptr, ptr %5, align 8, !dbg !2012
  %28 = getelementptr inbounds %class.KTCylinder, ptr %27, i32 0, i32 3, !dbg !2013
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %10, ptr noundef nonnull align 4 dereferenceable(48) %28)
          to label %29 unwind label %194, !dbg !2014

29:                                               ; preds = %3
  %30 = load ptr, ptr %6, align 8, !dbg !2015
  %31 = getelementptr inbounds %class.Camera, ptr %30, i32 0, i32 8, !dbg !2016
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %9, ptr noundef nonnull align 4 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(12) %31)
          to label %32 unwind label %198, !dbg !2017

32:                                               ; preds = %29
  invoke void @_ZNK7Vector3IfEmiERKS0_(ptr sret(%class.Vector3) align 4 %8, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %33 unwind label %202, !dbg !2018

33:                                               ; preds = %32
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %9) #3, !dbg !2019
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %10) #3, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2020, metadata !DIExpression()), !dbg !2021
  %34 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 0, !dbg !2022
  %35 = load float, ptr %34, align 4, !dbg !2022
  %36 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 0, !dbg !2023
  %37 = load float, ptr %36, align 4, !dbg !2023
  %38 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 1, !dbg !2024
  %39 = load float, ptr %38, align 4, !dbg !2024
  %40 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 1, !dbg !2025
  %41 = load float, ptr %40, align 4, !dbg !2025
  %42 = fmul float %39, %41, !dbg !2026
  %43 = call float @llvm.fmuladd.f32(float %35, float %37, float %42), !dbg !2027
  %44 = fpext float %43 to double, !dbg !2028
  store double %44, ptr %13, align 8, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2029, metadata !DIExpression()), !dbg !2030
  %45 = load double, ptr %13, align 8, !dbg !2031
  %46 = call double @sqrt(double noundef %45) #3, !dbg !2032
  %47 = fptrunc double %46 to float, !dbg !2032
  store float %47, ptr %14, align 4, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2033, metadata !DIExpression()), !dbg !2034
  %48 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 1, !dbg !2035
  %49 = load float, ptr %48, align 4, !dbg !2035
  %50 = fneg float %49, !dbg !2036
  %51 = load float, ptr %14, align 4, !dbg !2037
  %52 = fdiv float %50, %51, !dbg !2038
  %53 = getelementptr inbounds %class.Vector3, ptr %8, i32 0, i32 0, !dbg !2039
  %54 = load float, ptr %53, align 4, !dbg !2039
  %55 = load float, ptr %14, align 4, !dbg !2040
  %56 = fdiv float %54, %55, !dbg !2041
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %15, float noundef %52, float noundef %56, float noundef 0.000000e+00)
          to label %57 unwind label %207, !dbg !2034

57:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2042, metadata !DIExpression()), !dbg !2044
  %58 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i32 0, i32 0, !dbg !2044
  %59 = getelementptr inbounds %class.Vector3, ptr %58, i64 4, !dbg !2044
  br label %60, !dbg !2044

60:                                               ; preds = %62, %57
  %61 = phi ptr [ %58, %57 ], [ %63, %62 ], !dbg !2044
  invoke void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %61)
          to label %62 unwind label %211, !dbg !2044

62:                                               ; preds = %60
  %63 = getelementptr inbounds %class.Vector3, ptr %61, i64 1, !dbg !2044
  %64 = icmp eq ptr %63, %59, !dbg !2044
  br i1 %64, label %65, label %60, !dbg !2044

65:                                               ; preds = %62
  %66 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 0, !dbg !2045
  %67 = load ptr, ptr %5, align 8, !dbg !2046
  %68 = getelementptr inbounds %class.KTCylinder, ptr %67, i32 0, i32 0, !dbg !2047
  %69 = load float, ptr %68, align 4, !dbg !2047
  %70 = fneg float %69, !dbg !2048
  %71 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 0, !dbg !2049
  %72 = load float, ptr %71, align 4, !dbg !2049
  %73 = fmul float %70, %72, !dbg !2050
  %74 = load ptr, ptr %5, align 8, !dbg !2051
  %75 = getelementptr inbounds %class.KTCylinder, ptr %74, i32 0, i32 0, !dbg !2052
  %76 = load float, ptr %75, align 4, !dbg !2052
  %77 = fneg float %76, !dbg !2053
  %78 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 1, !dbg !2054
  %79 = load float, ptr %78, align 4, !dbg !2054
  %80 = fmul float %77, %79, !dbg !2055
  %81 = load ptr, ptr %5, align 8, !dbg !2056
  %82 = getelementptr inbounds %class.KTCylinder, ptr %81, i32 0, i32 0, !dbg !2057
  %83 = load float, ptr %82, align 4, !dbg !2057
  %84 = fneg float %83, !dbg !2058
  %85 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 2, !dbg !2059
  %86 = load float, ptr %85, align 4, !dbg !2059
  %87 = fmul float %84, %86, !dbg !2060
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %66, float noundef %73, float noundef %80, float noundef %87)
          to label %88 unwind label %221, !dbg !2061

88:                                               ; preds = %65
  %89 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 1, !dbg !2062
  %90 = load ptr, ptr %5, align 8, !dbg !2063
  %91 = getelementptr inbounds %class.KTCylinder, ptr %90, i32 0, i32 1, !dbg !2064
  %92 = load float, ptr %91, align 4, !dbg !2064
  %93 = fneg float %92, !dbg !2065
  %94 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 0, !dbg !2066
  %95 = load float, ptr %94, align 4, !dbg !2066
  %96 = fmul float %93, %95, !dbg !2067
  %97 = load ptr, ptr %5, align 8, !dbg !2068
  %98 = getelementptr inbounds %class.KTCylinder, ptr %97, i32 0, i32 1, !dbg !2069
  %99 = load float, ptr %98, align 4, !dbg !2069
  %100 = fneg float %99, !dbg !2070
  %101 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 1, !dbg !2071
  %102 = load float, ptr %101, align 4, !dbg !2071
  %103 = fmul float %100, %102, !dbg !2072
  %104 = load ptr, ptr %5, align 8, !dbg !2073
  %105 = getelementptr inbounds %class.KTCylinder, ptr %104, i32 0, i32 2, !dbg !2074
  %106 = load float, ptr %105, align 4, !dbg !2074
  %107 = load ptr, ptr %5, align 8, !dbg !2075
  %108 = getelementptr inbounds %class.KTCylinder, ptr %107, i32 0, i32 1, !dbg !2076
  %109 = load float, ptr %108, align 4, !dbg !2076
  %110 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 2, !dbg !2077
  %111 = load float, ptr %110, align 4, !dbg !2077
  %112 = fneg float %109, !dbg !2078
  %113 = call float @llvm.fmuladd.f32(float %112, float %111, float %106), !dbg !2078
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %89, float noundef %96, float noundef %103, float noundef %113)
          to label %114 unwind label %221, !dbg !2079

114:                                              ; preds = %88
  %115 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 2, !dbg !2080
  %116 = load ptr, ptr %5, align 8, !dbg !2081
  %117 = getelementptr inbounds %class.KTCylinder, ptr %116, i32 0, i32 1, !dbg !2082
  %118 = load float, ptr %117, align 4, !dbg !2082
  %119 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 0, !dbg !2083
  %120 = load float, ptr %119, align 4, !dbg !2083
  %121 = fmul float %118, %120, !dbg !2084
  %122 = load ptr, ptr %5, align 8, !dbg !2085
  %123 = getelementptr inbounds %class.KTCylinder, ptr %122, i32 0, i32 1, !dbg !2086
  %124 = load float, ptr %123, align 4, !dbg !2086
  %125 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 1, !dbg !2087
  %126 = load float, ptr %125, align 4, !dbg !2087
  %127 = fmul float %124, %126, !dbg !2088
  %128 = load ptr, ptr %5, align 8, !dbg !2089
  %129 = getelementptr inbounds %class.KTCylinder, ptr %128, i32 0, i32 2, !dbg !2090
  %130 = load float, ptr %129, align 4, !dbg !2090
  %131 = load ptr, ptr %5, align 8, !dbg !2091
  %132 = getelementptr inbounds %class.KTCylinder, ptr %131, i32 0, i32 1, !dbg !2092
  %133 = load float, ptr %132, align 4, !dbg !2092
  %134 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 2, !dbg !2093
  %135 = load float, ptr %134, align 4, !dbg !2093
  %136 = call float @llvm.fmuladd.f32(float %133, float %135, float %130), !dbg !2094
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %115, float noundef %121, float noundef %127, float noundef %136)
          to label %137 unwind label %221, !dbg !2095

137:                                              ; preds = %114
  %138 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 3, !dbg !2096
  %139 = load ptr, ptr %5, align 8, !dbg !2097
  %140 = getelementptr inbounds %class.KTCylinder, ptr %139, i32 0, i32 0, !dbg !2098
  %141 = load float, ptr %140, align 4, !dbg !2098
  %142 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 0, !dbg !2099
  %143 = load float, ptr %142, align 4, !dbg !2099
  %144 = fmul float %141, %143, !dbg !2100
  %145 = load ptr, ptr %5, align 8, !dbg !2101
  %146 = getelementptr inbounds %class.KTCylinder, ptr %145, i32 0, i32 0, !dbg !2102
  %147 = load float, ptr %146, align 4, !dbg !2102
  %148 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 1, !dbg !2103
  %149 = load float, ptr %148, align 4, !dbg !2103
  %150 = fmul float %147, %149, !dbg !2104
  %151 = load ptr, ptr %5, align 8, !dbg !2105
  %152 = getelementptr inbounds %class.KTCylinder, ptr %151, i32 0, i32 0, !dbg !2106
  %153 = load float, ptr %152, align 4, !dbg !2106
  %154 = getelementptr inbounds %class.Vector3, ptr %15, i32 0, i32 2, !dbg !2107
  %155 = load float, ptr %154, align 4, !dbg !2107
  %156 = fmul float %153, %155, !dbg !2108
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %138, float noundef %144, float noundef %150, float noundef %156)
          to label %157 unwind label %221, !dbg !2109

157:                                              ; preds = %137
  %158 = load ptr, ptr %5, align 8, !dbg !2110
  %159 = getelementptr inbounds %class.KTCylinder, ptr %158, i32 0, i32 3, !dbg !2111
  %160 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 0, !dbg !2112
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %17, ptr noundef nonnull align 4 dereferenceable(48) %159, ptr noundef nonnull align 4 dereferenceable(12) %160)
          to label %161 unwind label %221, !dbg !2113

161:                                              ; preds = %157
  %162 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 0, !dbg !2114
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %162, ptr align 4 %17, i64 12, i1 false), !dbg !2115
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %17) #3, !dbg !2114
  %163 = load ptr, ptr %5, align 8, !dbg !2116
  %164 = getelementptr inbounds %class.KTCylinder, ptr %163, i32 0, i32 3, !dbg !2117
  %165 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 1, !dbg !2118
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %18, ptr noundef nonnull align 4 dereferenceable(48) %164, ptr noundef nonnull align 4 dereferenceable(12) %165)
          to label %166 unwind label %221, !dbg !2119

166:                                              ; preds = %161
  %167 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 1, !dbg !2120
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %167, ptr align 4 %18, i64 12, i1 false), !dbg !2121
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %18) #3, !dbg !2120
  %168 = load ptr, ptr %5, align 8, !dbg !2122
  %169 = getelementptr inbounds %class.KTCylinder, ptr %168, i32 0, i32 3, !dbg !2123
  %170 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 2, !dbg !2124
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %19, ptr noundef nonnull align 4 dereferenceable(48) %169, ptr noundef nonnull align 4 dereferenceable(12) %170)
          to label %171 unwind label %221, !dbg !2125

171:                                              ; preds = %166
  %172 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 2, !dbg !2126
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %172, ptr align 4 %19, i64 12, i1 false), !dbg !2127
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %19) #3, !dbg !2126
  %173 = load ptr, ptr %5, align 8, !dbg !2128
  %174 = getelementptr inbounds %class.KTCylinder, ptr %173, i32 0, i32 3, !dbg !2129
  %175 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 3, !dbg !2130
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %20, ptr noundef nonnull align 4 dereferenceable(48) %174, ptr noundef nonnull align 4 dereferenceable(12) %175)
          to label %176 unwind label %221, !dbg !2131

176:                                              ; preds = %171
  %177 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 3, !dbg !2132
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %177, ptr align 4 %20, i64 12, i1 false), !dbg !2133
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %20) #3, !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2134, metadata !DIExpression()), !dbg !2136
  store i32 0, ptr %21, align 4, !dbg !2136
  br label %178, !dbg !2137

178:                                              ; preds = %191, %176
  %179 = load i32, ptr %21, align 4, !dbg !2138
  %180 = icmp slt i32 %179, 4, !dbg !2140
  br i1 %180, label %181, label %227, !dbg !2141

181:                                              ; preds = %178
  %182 = load i32, ptr %21, align 4, !dbg !2142
  %183 = sext i32 %182 to i64, !dbg !2143
  %184 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i64 0, i64 %183, !dbg !2143
  %185 = getelementptr inbounds %class.ProjectedCylinder, ptr %22, i32 0, i32 0, !dbg !2144
  %186 = load i32, ptr %21, align 4, !dbg !2145
  %187 = sext i32 %186 to i64, !dbg !2144
  %188 = getelementptr inbounds [4 x %class.Point], ptr %185, i64 0, i64 %187, !dbg !2144
  %189 = load ptr, ptr %6, align 8, !dbg !2146
  invoke void @_Z13ProjectPointsR7Vector3IfER5PointR6Camera(ptr noundef nonnull align 4 dereferenceable(12) %184, ptr noundef nonnull align 4 dereferenceable(8) %188, ptr noundef nonnull align 4 dereferenceable(160) %189)
          to label %190 unwind label %221, !dbg !2147

190:                                              ; preds = %181
  br label %191, !dbg !2147

191:                                              ; preds = %190
  %192 = load i32, ptr %21, align 4, !dbg !2148
  %193 = add nsw i32 %192, 1, !dbg !2148
  store i32 %193, ptr %21, align 4, !dbg !2148
  br label %178, !dbg !2149, !llvm.loop !2150

194:                                              ; preds = %3
  %195 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %196 = extractvalue { ptr, i32 } %195, 0, !dbg !2153
  store ptr %196, ptr %11, align 8, !dbg !2153
  %197 = extractvalue { ptr, i32 } %195, 1, !dbg !2153
  store i32 %197, ptr %12, align 4, !dbg !2153
  br label %242, !dbg !2153

198:                                              ; preds = %29
  %199 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %200 = extractvalue { ptr, i32 } %199, 0, !dbg !2153
  store ptr %200, ptr %11, align 8, !dbg !2153
  %201 = extractvalue { ptr, i32 } %199, 1, !dbg !2153
  store i32 %201, ptr %12, align 4, !dbg !2153
  br label %206, !dbg !2153

202:                                              ; preds = %32
  %203 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %204 = extractvalue { ptr, i32 } %203, 0, !dbg !2153
  store ptr %204, ptr %11, align 8, !dbg !2153
  %205 = extractvalue { ptr, i32 } %203, 1, !dbg !2153
  store i32 %205, ptr %12, align 4, !dbg !2153
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %9) #3, !dbg !2019
  br label %206, !dbg !2019

206:                                              ; preds = %202, %198
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %10) #3, !dbg !2019
  br label %242, !dbg !2019

207:                                              ; preds = %33
  %208 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %209 = extractvalue { ptr, i32 } %208, 0, !dbg !2153
  store ptr %209, ptr %11, align 8, !dbg !2153
  %210 = extractvalue { ptr, i32 } %208, 1, !dbg !2153
  store i32 %210, ptr %12, align 4, !dbg !2153
  br label %241, !dbg !2153

211:                                              ; preds = %60
  %212 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %213 = extractvalue { ptr, i32 } %212, 0, !dbg !2153
  store ptr %213, ptr %11, align 8, !dbg !2153
  %214 = extractvalue { ptr, i32 } %212, 1, !dbg !2153
  store i32 %214, ptr %12, align 4, !dbg !2153
  %215 = icmp eq ptr %58, %61, !dbg !2044
  br i1 %215, label %220, label %216, !dbg !2044

216:                                              ; preds = %216, %211
  %217 = phi ptr [ %61, %211 ], [ %218, %216 ], !dbg !2044
  %218 = getelementptr inbounds %class.Vector3, ptr %217, i64 -1, !dbg !2044
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %218) #3, !dbg !2044
  %219 = icmp eq ptr %218, %58, !dbg !2044
  br i1 %219, label %220, label %216, !dbg !2044

220:                                              ; preds = %216, %211
  br label %240, !dbg !2044

221:                                              ; preds = %181, %171, %166, %161, %157, %137, %114, %88, %65
  %222 = landingpad { ptr, i32 }
          cleanup, !dbg !2153
  %223 = extractvalue { ptr, i32 } %222, 0, !dbg !2153
  store ptr %223, ptr %11, align 8, !dbg !2153
  %224 = extractvalue { ptr, i32 } %222, 1, !dbg !2153
  store i32 %224, ptr %12, align 4, !dbg !2153
  %225 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i32 0, i32 0, !dbg !2153
  %226 = getelementptr inbounds %class.Vector3, ptr %225, i64 4, !dbg !2153
  br label %235, !dbg !2153

227:                                              ; preds = %178
  %228 = getelementptr inbounds [4 x %class.Vector3], ptr %16, i32 0, i32 0, !dbg !2153
  %229 = getelementptr inbounds %class.Vector3, ptr %228, i64 4, !dbg !2153
  br label %230, !dbg !2153

230:                                              ; preds = %230, %227
  %231 = phi ptr [ %229, %227 ], [ %232, %230 ], !dbg !2153
  %232 = getelementptr inbounds %class.Vector3, ptr %231, i64 -1, !dbg !2153
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %232) #3, !dbg !2153
  %233 = icmp eq ptr %232, %228, !dbg !2153
  br i1 %233, label %234, label %230, !dbg !2153

234:                                              ; preds = %230
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %15) #3, !dbg !2153
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %8) #3, !dbg !2153
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %7) #3, !dbg !2153
  ret void, !dbg !2153

235:                                              ; preds = %235, %221
  %236 = phi ptr [ %226, %221 ], [ %237, %235 ], !dbg !2153
  %237 = getelementptr inbounds %class.Vector3, ptr %236, i64 -1, !dbg !2153
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %237) #3, !dbg !2153
  %238 = icmp eq ptr %237, %225, !dbg !2153
  br i1 %238, label %239, label %235, !dbg !2153

239:                                              ; preds = %235
  br label %240, !dbg !2153

240:                                              ; preds = %239, %220
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %15) #3, !dbg !2153
  br label %241, !dbg !2153

241:                                              ; preds = %240, %207
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %8) #3, !dbg !2153
  br label %242, !dbg !2153

242:                                              ; preds = %241, %206, %194
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %7) #3, !dbg !2153
  br label %243, !dbg !2153

243:                                              ; preds = %242
  %244 = load ptr, ptr %11, align 8, !dbg !2153
  %245 = load i32, ptr %12, align 4, !dbg !2153
  %246 = insertvalue { ptr, i32 } poison, ptr %244, 0, !dbg !2153
  %247 = insertvalue { ptr, i32 } %246, i32 %245, 1, !dbg !2153
  resume { ptr, i32 } %247, !dbg !2153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 comdat align 2 !dbg !2154 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2155, metadata !DIExpression()), !dbg !2157
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2158, metadata !DIExpression()), !dbg !2159
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2160, metadata !DIExpression()), !dbg !2161
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2162, metadata !DIExpression()), !dbg !2163
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !2164
  %11 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 0, !dbg !2166
  store float %10, ptr %11, align 4, !dbg !2167
  %12 = load float, ptr %7, align 4, !dbg !2168
  %13 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 1, !dbg !2169
  store float %12, ptr %13, align 4, !dbg !2170
  %14 = load float, ptr %8, align 4, !dbg !2171
  %15 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 2, !dbg !2172
  store float %14, ptr %15, align 4, !dbg !2173
  ret void, !dbg !2174
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7Vector3IfEmiERKS0_(ptr noalias sret(%class.Vector3) align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #4 comdat align 2 !dbg !2175 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2176, metadata !DIExpression()), !dbg !2178
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2179, metadata !DIExpression()), !dbg !2180
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 0, !dbg !2181
  %9 = load float, ptr %8, align 4, !dbg !2181
  %10 = load ptr, ptr %6, align 8, !dbg !2182
  %11 = getelementptr inbounds %class.Vector3, ptr %10, i32 0, i32 0, !dbg !2183
  %12 = load float, ptr %11, align 4, !dbg !2183
  %13 = fsub float %9, %12, !dbg !2184
  %14 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 1, !dbg !2185
  %15 = load float, ptr %14, align 4, !dbg !2185
  %16 = load ptr, ptr %6, align 8, !dbg !2186
  %17 = getelementptr inbounds %class.Vector3, ptr %16, i32 0, i32 1, !dbg !2187
  %18 = load float, ptr %17, align 4, !dbg !2187
  %19 = fsub float %15, %18, !dbg !2188
  %20 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 2, !dbg !2189
  %21 = load float, ptr %20, align 4, !dbg !2189
  %22 = load ptr, ptr %6, align 8, !dbg !2190
  %23 = getelementptr inbounds %class.Vector3, ptr %22, i32 0, i32 2, !dbg !2191
  %24 = load float, ptr %23, align 4, !dbg !2191
  %25 = fsub float %21, %24, !dbg !2192
  call void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %13, float noundef %19, float noundef %25), !dbg !2193
  ret void, !dbg !2194
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr noalias sret(%class.Vector3) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #4 comdat personality ptr @__gxx_personality_v0 !dbg !2195 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2203, metadata !DIExpression()), !dbg !2204
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2205, metadata !DIExpression()), !dbg !2206
  store i1 false, ptr %7, align 1, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2208, metadata !DIExpression(DW_OP_deref)), !dbg !2209
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0), !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2210, metadata !DIExpression()), !dbg !2212
  %11 = load ptr, ptr %5, align 8, !dbg !2213
  store ptr %11, ptr %8, align 8, !dbg !2212
  %12 = load ptr, ptr %8, align 8, !dbg !2214
  %13 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %12, i32 noundef 0, i32 noundef 0)
          to label %14 unwind label %103, !dbg !2214

14:                                               ; preds = %3
  %15 = load float, ptr %13, align 4, !dbg !2214
  %16 = load ptr, ptr %6, align 8, !dbg !2215
  %17 = getelementptr inbounds %class.Vector3, ptr %16, i32 0, i32 0, !dbg !2216
  %18 = load float, ptr %17, align 4, !dbg !2216
  %19 = load ptr, ptr %8, align 8, !dbg !2217
  %20 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %19, i32 noundef 0, i32 noundef 1)
          to label %21 unwind label %103, !dbg !2217

21:                                               ; preds = %14
  %22 = load float, ptr %20, align 4, !dbg !2217
  %23 = load ptr, ptr %6, align 8, !dbg !2218
  %24 = getelementptr inbounds %class.Vector3, ptr %23, i32 0, i32 1, !dbg !2219
  %25 = load float, ptr %24, align 4, !dbg !2219
  %26 = fmul float %22, %25, !dbg !2220
  %27 = call float @llvm.fmuladd.f32(float %15, float %18, float %26), !dbg !2221
  %28 = load ptr, ptr %8, align 8, !dbg !2222
  %29 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %28, i32 noundef 0, i32 noundef 2)
          to label %30 unwind label %103, !dbg !2222

30:                                               ; preds = %21
  %31 = load float, ptr %29, align 4, !dbg !2222
  %32 = load ptr, ptr %6, align 8, !dbg !2223
  %33 = getelementptr inbounds %class.Vector3, ptr %32, i32 0, i32 2, !dbg !2224
  %34 = load float, ptr %33, align 4, !dbg !2224
  %35 = call float @llvm.fmuladd.f32(float %31, float %34, float %27), !dbg !2225
  %36 = load ptr, ptr %8, align 8, !dbg !2226
  %37 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %36, i32 noundef 0, i32 noundef 3)
          to label %38 unwind label %103, !dbg !2226

38:                                               ; preds = %30
  %39 = load float, ptr %37, align 4, !dbg !2226
  %40 = fadd float %35, %39, !dbg !2227
  %41 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 0, !dbg !2228
  store float %40, ptr %41, align 4, !dbg !2229
  %42 = load ptr, ptr %8, align 8, !dbg !2230
  %43 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %42, i32 noundef 1, i32 noundef 0)
          to label %44 unwind label %103, !dbg !2230

44:                                               ; preds = %38
  %45 = load float, ptr %43, align 4, !dbg !2230
  %46 = load ptr, ptr %6, align 8, !dbg !2231
  %47 = getelementptr inbounds %class.Vector3, ptr %46, i32 0, i32 0, !dbg !2232
  %48 = load float, ptr %47, align 4, !dbg !2232
  %49 = load ptr, ptr %8, align 8, !dbg !2233
  %50 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %49, i32 noundef 1, i32 noundef 1)
          to label %51 unwind label %103, !dbg !2233

51:                                               ; preds = %44
  %52 = load float, ptr %50, align 4, !dbg !2233
  %53 = load ptr, ptr %6, align 8, !dbg !2234
  %54 = getelementptr inbounds %class.Vector3, ptr %53, i32 0, i32 1, !dbg !2235
  %55 = load float, ptr %54, align 4, !dbg !2235
  %56 = fmul float %52, %55, !dbg !2236
  %57 = call float @llvm.fmuladd.f32(float %45, float %48, float %56), !dbg !2237
  %58 = load ptr, ptr %8, align 8, !dbg !2238
  %59 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %58, i32 noundef 1, i32 noundef 2)
          to label %60 unwind label %103, !dbg !2238

60:                                               ; preds = %51
  %61 = load float, ptr %59, align 4, !dbg !2238
  %62 = load ptr, ptr %6, align 8, !dbg !2239
  %63 = getelementptr inbounds %class.Vector3, ptr %62, i32 0, i32 2, !dbg !2240
  %64 = load float, ptr %63, align 4, !dbg !2240
  %65 = call float @llvm.fmuladd.f32(float %61, float %64, float %57), !dbg !2241
  %66 = load ptr, ptr %8, align 8, !dbg !2242
  %67 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %66, i32 noundef 1, i32 noundef 3)
          to label %68 unwind label %103, !dbg !2242

68:                                               ; preds = %60
  %69 = load float, ptr %67, align 4, !dbg !2242
  %70 = fadd float %65, %69, !dbg !2243
  %71 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 1, !dbg !2244
  store float %70, ptr %71, align 4, !dbg !2245
  %72 = load ptr, ptr %8, align 8, !dbg !2246
  %73 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %72, i32 noundef 2, i32 noundef 0)
          to label %74 unwind label %103, !dbg !2246

74:                                               ; preds = %68
  %75 = load float, ptr %73, align 4, !dbg !2246
  %76 = load ptr, ptr %6, align 8, !dbg !2247
  %77 = getelementptr inbounds %class.Vector3, ptr %76, i32 0, i32 0, !dbg !2248
  %78 = load float, ptr %77, align 4, !dbg !2248
  %79 = load ptr, ptr %8, align 8, !dbg !2249
  %80 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %79, i32 noundef 2, i32 noundef 1)
          to label %81 unwind label %103, !dbg !2249

81:                                               ; preds = %74
  %82 = load float, ptr %80, align 4, !dbg !2249
  %83 = load ptr, ptr %6, align 8, !dbg !2250
  %84 = getelementptr inbounds %class.Vector3, ptr %83, i32 0, i32 1, !dbg !2251
  %85 = load float, ptr %84, align 4, !dbg !2251
  %86 = fmul float %82, %85, !dbg !2252
  %87 = call float @llvm.fmuladd.f32(float %75, float %78, float %86), !dbg !2253
  %88 = load ptr, ptr %8, align 8, !dbg !2254
  %89 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %88, i32 noundef 2, i32 noundef 2)
          to label %90 unwind label %103, !dbg !2254

90:                                               ; preds = %81
  %91 = load float, ptr %89, align 4, !dbg !2254
  %92 = load ptr, ptr %6, align 8, !dbg !2255
  %93 = getelementptr inbounds %class.Vector3, ptr %92, i32 0, i32 2, !dbg !2256
  %94 = load float, ptr %93, align 4, !dbg !2256
  %95 = call float @llvm.fmuladd.f32(float %91, float %94, float %87), !dbg !2257
  %96 = load ptr, ptr %8, align 8, !dbg !2258
  %97 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %96, i32 noundef 2, i32 noundef 3)
          to label %98 unwind label %103, !dbg !2258

98:                                               ; preds = %90
  %99 = load float, ptr %97, align 4, !dbg !2258
  %100 = fadd float %95, %99, !dbg !2259
  %101 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 2, !dbg !2260
  store float %100, ptr %101, align 4, !dbg !2261
  store i1 true, ptr %7, align 1, !dbg !2262
  %102 = load i1, ptr %7, align 1, !dbg !2263
  br i1 %102, label %108, label %107, !dbg !2263

103:                                              ; preds = %90, %81, %74, %68, %60, %51, %44, %38, %30, %21, %14, %3
  %104 = landingpad { ptr, i32 }
          cleanup, !dbg !2263
  %105 = extractvalue { ptr, i32 } %104, 0, !dbg !2263
  store ptr %105, ptr %9, align 8, !dbg !2263
  %106 = extractvalue { ptr, i32 } %104, 1, !dbg !2263
  store i32 %106, ptr %10, align 4, !dbg !2263
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) #3, !dbg !2263
  br label %109, !dbg !2263

107:                                              ; preds = %98
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) #3, !dbg !2263
  br label %108, !dbg !2263

108:                                              ; preds = %107, %98
  ret void, !dbg !2263

109:                                              ; preds = %103
  %110 = load ptr, ptr %9, align 8, !dbg !2263
  %111 = load i32, ptr %10, align 4, !dbg !2263
  %112 = insertvalue { ptr, i32 } poison, ptr %110, 0, !dbg !2263
  %113 = insertvalue { ptr, i32 } %112, i32 %111, 1, !dbg !2263
  resume { ptr, i32 } %113, !dbg !2263
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr noalias sret(%class.DMatrix) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1) #4 comdat personality ptr @__gxx_personality_v0 !dbg !2264 {
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
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i1 false, ptr %5, align 1, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2270, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  call void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0), !dbg !2271
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2272, metadata !DIExpression()), !dbg !2273
  %15 = load ptr, ptr %4, align 8, !dbg !2274
  store ptr %15, ptr %6, align 8, !dbg !2273
  invoke void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0)
          to label %16 unwind label %224, !dbg !2275

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2276, metadata !DIExpression()), !dbg !2277
  %17 = load ptr, ptr %6, align 8, !dbg !2278
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %17, i32 noundef 1, i32 noundef 1), !dbg !2278
  %19 = load float, ptr %18, align 4, !dbg !2278
  %20 = load ptr, ptr %6, align 8, !dbg !2279
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %20, i32 noundef 2, i32 noundef 2), !dbg !2279
  %22 = load float, ptr %21, align 4, !dbg !2279
  %23 = load ptr, ptr %6, align 8, !dbg !2280
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %23, i32 noundef 1, i32 noundef 2), !dbg !2280
  %25 = load float, ptr %24, align 4, !dbg !2280
  %26 = load ptr, ptr %6, align 8, !dbg !2281
  %27 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %26, i32 noundef 2, i32 noundef 1), !dbg !2281
  %28 = load float, ptr %27, align 4, !dbg !2281
  %29 = fmul float %25, %28, !dbg !2282
  %30 = fneg float %29, !dbg !2283
  %31 = call float @llvm.fmuladd.f32(float %19, float %22, float %30), !dbg !2283
  store float %31, ptr %9, align 4, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2284, metadata !DIExpression()), !dbg !2285
  %32 = load ptr, ptr %6, align 8, !dbg !2286
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %32, i32 noundef 1, i32 noundef 0), !dbg !2286
  %34 = load float, ptr %33, align 4, !dbg !2286
  %35 = load ptr, ptr %6, align 8, !dbg !2287
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %35, i32 noundef 2, i32 noundef 2), !dbg !2287
  %37 = load float, ptr %36, align 4, !dbg !2287
  %38 = load ptr, ptr %6, align 8, !dbg !2288
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %38, i32 noundef 1, i32 noundef 2), !dbg !2288
  %40 = load float, ptr %39, align 4, !dbg !2288
  %41 = load ptr, ptr %6, align 8, !dbg !2289
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %41, i32 noundef 2, i32 noundef 0), !dbg !2289
  %43 = load float, ptr %42, align 4, !dbg !2289
  %44 = fmul float %40, %43, !dbg !2290
  %45 = fneg float %44, !dbg !2291
  %46 = call float @llvm.fmuladd.f32(float %34, float %37, float %45), !dbg !2291
  store float %46, ptr %10, align 4, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2292, metadata !DIExpression()), !dbg !2293
  %47 = load ptr, ptr %6, align 8, !dbg !2294
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %47, i32 noundef 1, i32 noundef 0), !dbg !2294
  %49 = load float, ptr %48, align 4, !dbg !2294
  %50 = load ptr, ptr %6, align 8, !dbg !2295
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %50, i32 noundef 2, i32 noundef 1), !dbg !2295
  %52 = load float, ptr %51, align 4, !dbg !2295
  %53 = load ptr, ptr %6, align 8, !dbg !2296
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %53, i32 noundef 1, i32 noundef 1), !dbg !2296
  %55 = load float, ptr %54, align 4, !dbg !2296
  %56 = load ptr, ptr %6, align 8, !dbg !2297
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %56, i32 noundef 2, i32 noundef 0), !dbg !2297
  %58 = load float, ptr %57, align 4, !dbg !2297
  %59 = fmul float %55, %58, !dbg !2298
  %60 = fneg float %59, !dbg !2299
  %61 = call float @llvm.fmuladd.f32(float %49, float %52, float %60), !dbg !2299
  store float %61, ptr %11, align 4, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2300, metadata !DIExpression()), !dbg !2301
  %62 = load ptr, ptr %6, align 8, !dbg !2302
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %62, i32 noundef 0, i32 noundef 0), !dbg !2302
  %64 = load float, ptr %63, align 4, !dbg !2302
  %65 = load float, ptr %9, align 4, !dbg !2303
  %66 = load ptr, ptr %6, align 8, !dbg !2304
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %66, i32 noundef 0, i32 noundef 1), !dbg !2304
  %68 = load float, ptr %67, align 4, !dbg !2304
  %69 = load float, ptr %10, align 4, !dbg !2305
  %70 = fmul float %68, %69, !dbg !2306
  %71 = fneg float %70, !dbg !2307
  %72 = call float @llvm.fmuladd.f32(float %64, float %65, float %71), !dbg !2307
  %73 = load ptr, ptr %6, align 8, !dbg !2308
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %73, i32 noundef 0, i32 noundef 2), !dbg !2308
  %75 = load float, ptr %74, align 4, !dbg !2308
  %76 = load float, ptr %11, align 4, !dbg !2309
  %77 = call float @llvm.fmuladd.f32(float %75, float %76, float %72), !dbg !2310
  %78 = fdiv float 1.000000e+00, %77, !dbg !2311
  store float %78, ptr %12, align 4, !dbg !2301
  %79 = load float, ptr %12, align 4, !dbg !2312
  %80 = load float, ptr %9, align 4, !dbg !2313
  %81 = fmul float %79, %80, !dbg !2314
  %82 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0), !dbg !2315
  store float %81, ptr %82, align 4, !dbg !2316
  %83 = load float, ptr %12, align 4, !dbg !2317
  %84 = load ptr, ptr %6, align 8, !dbg !2318
  %85 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %84, i32 noundef 0, i32 noundef 2), !dbg !2318
  %86 = load float, ptr %85, align 4, !dbg !2318
  %87 = load ptr, ptr %6, align 8, !dbg !2319
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %87, i32 noundef 2, i32 noundef 1), !dbg !2319
  %89 = load float, ptr %88, align 4, !dbg !2319
  %90 = load ptr, ptr %6, align 8, !dbg !2320
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %90, i32 noundef 0, i32 noundef 1), !dbg !2320
  %92 = load float, ptr %91, align 4, !dbg !2320
  %93 = load ptr, ptr %6, align 8, !dbg !2321
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %93, i32 noundef 2, i32 noundef 2), !dbg !2321
  %95 = load float, ptr %94, align 4, !dbg !2321
  %96 = fmul float %92, %95, !dbg !2322
  %97 = fneg float %96, !dbg !2323
  %98 = call float @llvm.fmuladd.f32(float %86, float %89, float %97), !dbg !2323
  %99 = fmul float %83, %98, !dbg !2324
  %100 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 1), !dbg !2325
  store float %99, ptr %100, align 4, !dbg !2326
  %101 = load float, ptr %12, align 4, !dbg !2327
  %102 = load ptr, ptr %6, align 8, !dbg !2328
  %103 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %102, i32 noundef 0, i32 noundef 1), !dbg !2328
  %104 = load float, ptr %103, align 4, !dbg !2328
  %105 = load ptr, ptr %6, align 8, !dbg !2329
  %106 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %105, i32 noundef 1, i32 noundef 2), !dbg !2329
  %107 = load float, ptr %106, align 4, !dbg !2329
  %108 = load ptr, ptr %6, align 8, !dbg !2330
  %109 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %108, i32 noundef 0, i32 noundef 2), !dbg !2330
  %110 = load float, ptr %109, align 4, !dbg !2330
  %111 = load ptr, ptr %6, align 8, !dbg !2331
  %112 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %111, i32 noundef 1, i32 noundef 1), !dbg !2331
  %113 = load float, ptr %112, align 4, !dbg !2331
  %114 = fmul float %110, %113, !dbg !2332
  %115 = fneg float %114, !dbg !2333
  %116 = call float @llvm.fmuladd.f32(float %104, float %107, float %115), !dbg !2333
  %117 = fmul float %101, %116, !dbg !2334
  %118 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 2), !dbg !2335
  store float %117, ptr %118, align 4, !dbg !2336
  %119 = load float, ptr %12, align 4, !dbg !2337
  %120 = load float, ptr %10, align 4, !dbg !2338
  %121 = fneg float %120, !dbg !2339
  %122 = fmul float %119, %121, !dbg !2340
  %123 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 0), !dbg !2341
  store float %122, ptr %123, align 4, !dbg !2342
  %124 = load float, ptr %12, align 4, !dbg !2343
  %125 = load ptr, ptr %6, align 8, !dbg !2344
  %126 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %125, i32 noundef 0, i32 noundef 0), !dbg !2344
  %127 = load float, ptr %126, align 4, !dbg !2344
  %128 = load ptr, ptr %6, align 8, !dbg !2345
  %129 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %128, i32 noundef 2, i32 noundef 2), !dbg !2345
  %130 = load float, ptr %129, align 4, !dbg !2345
  %131 = load ptr, ptr %6, align 8, !dbg !2346
  %132 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %131, i32 noundef 0, i32 noundef 2), !dbg !2346
  %133 = load float, ptr %132, align 4, !dbg !2346
  %134 = load ptr, ptr %6, align 8, !dbg !2347
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %134, i32 noundef 2, i32 noundef 0), !dbg !2347
  %136 = load float, ptr %135, align 4, !dbg !2347
  %137 = fmul float %133, %136, !dbg !2348
  %138 = fneg float %137, !dbg !2349
  %139 = call float @llvm.fmuladd.f32(float %127, float %130, float %138), !dbg !2349
  %140 = fmul float %124, %139, !dbg !2350
  %141 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 1), !dbg !2351
  store float %140, ptr %141, align 4, !dbg !2352
  %142 = load float, ptr %12, align 4, !dbg !2353
  %143 = load ptr, ptr %6, align 8, !dbg !2354
  %144 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %143, i32 noundef 0, i32 noundef 2), !dbg !2354
  %145 = load float, ptr %144, align 4, !dbg !2354
  %146 = load ptr, ptr %6, align 8, !dbg !2355
  %147 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %146, i32 noundef 1, i32 noundef 0), !dbg !2355
  %148 = load float, ptr %147, align 4, !dbg !2355
  %149 = load ptr, ptr %6, align 8, !dbg !2356
  %150 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %149, i32 noundef 0, i32 noundef 0), !dbg !2356
  %151 = load float, ptr %150, align 4, !dbg !2356
  %152 = load ptr, ptr %6, align 8, !dbg !2357
  %153 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %152, i32 noundef 1, i32 noundef 2), !dbg !2357
  %154 = load float, ptr %153, align 4, !dbg !2357
  %155 = fmul float %151, %154, !dbg !2358
  %156 = fneg float %155, !dbg !2359
  %157 = call float @llvm.fmuladd.f32(float %145, float %148, float %156), !dbg !2359
  %158 = fmul float %142, %157, !dbg !2360
  %159 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 2), !dbg !2361
  store float %158, ptr %159, align 4, !dbg !2362
  %160 = load float, ptr %12, align 4, !dbg !2363
  %161 = load float, ptr %11, align 4, !dbg !2364
  %162 = fmul float %160, %161, !dbg !2365
  %163 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 0), !dbg !2366
  store float %162, ptr %163, align 4, !dbg !2367
  %164 = load float, ptr %12, align 4, !dbg !2368
  %165 = load ptr, ptr %6, align 8, !dbg !2369
  %166 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %165, i32 noundef 0, i32 noundef 1), !dbg !2369
  %167 = load float, ptr %166, align 4, !dbg !2369
  %168 = load ptr, ptr %6, align 8, !dbg !2370
  %169 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %168, i32 noundef 2, i32 noundef 0), !dbg !2370
  %170 = load float, ptr %169, align 4, !dbg !2370
  %171 = load ptr, ptr %6, align 8, !dbg !2371
  %172 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %171, i32 noundef 0, i32 noundef 0), !dbg !2371
  %173 = load float, ptr %172, align 4, !dbg !2371
  %174 = load ptr, ptr %6, align 8, !dbg !2372
  %175 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %174, i32 noundef 2, i32 noundef 1), !dbg !2372
  %176 = load float, ptr %175, align 4, !dbg !2372
  %177 = fmul float %173, %176, !dbg !2373
  %178 = fneg float %177, !dbg !2374
  %179 = call float @llvm.fmuladd.f32(float %167, float %170, float %178), !dbg !2374
  %180 = fmul float %164, %179, !dbg !2375
  %181 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 1), !dbg !2376
  store float %180, ptr %181, align 4, !dbg !2377
  %182 = load float, ptr %12, align 4, !dbg !2378
  %183 = load ptr, ptr %6, align 8, !dbg !2379
  %184 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %183, i32 noundef 0, i32 noundef 0), !dbg !2379
  %185 = load float, ptr %184, align 4, !dbg !2379
  %186 = load ptr, ptr %6, align 8, !dbg !2380
  %187 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %186, i32 noundef 1, i32 noundef 1), !dbg !2380
  %188 = load float, ptr %187, align 4, !dbg !2380
  %189 = load ptr, ptr %6, align 8, !dbg !2381
  %190 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %189, i32 noundef 0, i32 noundef 1), !dbg !2381
  %191 = load float, ptr %190, align 4, !dbg !2381
  %192 = load ptr, ptr %6, align 8, !dbg !2382
  %193 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %192, i32 noundef 1, i32 noundef 0), !dbg !2382
  %194 = load float, ptr %193, align 4, !dbg !2382
  %195 = fmul float %191, %194, !dbg !2383
  %196 = fneg float %195, !dbg !2384
  %197 = call float @llvm.fmuladd.f32(float %185, float %188, float %196), !dbg !2384
  %198 = fmul float %182, %197, !dbg !2385
  %199 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 2), !dbg !2386
  store float %198, ptr %199, align 4, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2388, metadata !DIExpression()), !dbg !2389
  %200 = load ptr, ptr %6, align 8, !dbg !2390
  %201 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %200, i32 noundef 0, i32 noundef 3), !dbg !2390
  %202 = load float, ptr %201, align 4, !dbg !2390
  %203 = fneg float %202, !dbg !2391
  %204 = load ptr, ptr %6, align 8, !dbg !2392
  %205 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %204, i32 noundef 1, i32 noundef 3), !dbg !2392
  %206 = load float, ptr %205, align 4, !dbg !2392
  %207 = fneg float %206, !dbg !2393
  %208 = load ptr, ptr %6, align 8, !dbg !2394
  %209 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %208, i32 noundef 2, i32 noundef 3), !dbg !2394
  %210 = load float, ptr %209, align 4, !dbg !2394
  %211 = fneg float %210, !dbg !2395
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %13, float noundef %203, float noundef %207, float noundef %211)
          to label %212 unwind label %224, !dbg !2389

212:                                              ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2396, metadata !DIExpression()), !dbg !2397
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %14, ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %13)
          to label %213 unwind label %228, !dbg !2398

213:                                              ; preds = %212
  %214 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 0, !dbg !2399
  %215 = load float, ptr %214, align 4, !dbg !2399
  %216 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 3), !dbg !2400
  store float %215, ptr %216, align 4, !dbg !2401
  %217 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 1, !dbg !2402
  %218 = load float, ptr %217, align 4, !dbg !2402
  %219 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 3), !dbg !2403
  store float %218, ptr %219, align 4, !dbg !2404
  %220 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 2, !dbg !2405
  %221 = load float, ptr %220, align 4, !dbg !2405
  %222 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 3), !dbg !2406
  store float %221, ptr %222, align 4, !dbg !2407
  store i1 true, ptr %5, align 1, !dbg !2408
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %14) #3, !dbg !2409
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %13) #3, !dbg !2409
  %223 = load i1, ptr %5, align 1, !dbg !2409
  br i1 %223, label %233, label %232, !dbg !2409

224:                                              ; preds = %16, %2
  %225 = landingpad { ptr, i32 }
          cleanup, !dbg !2409
  %226 = extractvalue { ptr, i32 } %225, 0, !dbg !2409
  store ptr %226, ptr %7, align 8, !dbg !2409
  %227 = extractvalue { ptr, i32 } %225, 1, !dbg !2409
  store i32 %227, ptr %8, align 4, !dbg !2409
  br label %234, !dbg !2409

228:                                              ; preds = %212
  %229 = landingpad { ptr, i32 }
          cleanup, !dbg !2409
  %230 = extractvalue { ptr, i32 } %229, 0, !dbg !2409
  store ptr %230, ptr %7, align 8, !dbg !2409
  %231 = extractvalue { ptr, i32 } %229, 1, !dbg !2409
  store i32 %231, ptr %8, align 4, !dbg !2409
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %13) #3, !dbg !2409
  br label %234, !dbg !2409

232:                                              ; preds = %213
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !2409
  br label %233, !dbg !2409

233:                                              ; preds = %232, %213
  ret void, !dbg !2409

234:                                              ; preds = %228, %224
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !2409
  br label %235, !dbg !2409

235:                                              ; preds = %234
  %236 = load ptr, ptr %7, align 8, !dbg !2409
  %237 = load i32, ptr %8, align 4, !dbg !2409
  %238 = insertvalue { ptr, i32 } poison, ptr %236, 0, !dbg !2409
  %239 = insertvalue { ptr, i32 } %238, i32 %237, 1, !dbg !2409
  resume { ptr, i32 } %239, !dbg !2409
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 !dbg !2410 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2411, metadata !DIExpression()), !dbg !2412
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2413
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !dbg !2414 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2415, metadata !DIExpression()), !dbg !2416
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2417
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 !dbg !2418 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2419, metadata !DIExpression()), !dbg !2420
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2421
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %1, float noundef %2, float noundef %3) #7 comdat align 2 !dbg !2422 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2423, metadata !DIExpression()), !dbg !2424
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2425, metadata !DIExpression()), !dbg !2426
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2427, metadata !DIExpression()), !dbg !2428
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2429, metadata !DIExpression()), !dbg !2430
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !2431
  %11 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 0, !dbg !2432
  store float %10, ptr %11, align 4, !dbg !2433
  %12 = load float, ptr %7, align 4, !dbg !2434
  %13 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 1, !dbg !2435
  store float %12, ptr %13, align 4, !dbg !2436
  %14 = load float, ptr %8, align 4, !dbg !2437
  %15 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 2, !dbg !2438
  store float %14, ptr %15, align 4, !dbg !2439
  ret void, !dbg !2440
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z13ProjectPointsR7Vector3IfER5PointR6Camera(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(160) %2) #4 comdat personality ptr @__gxx_personality_v0 !dbg !2441 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %class.Vector3, align 4
  %8 = alloca float, align 4
  %9 = alloca %class.Point, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %class.Point, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca %class.Point, align 4
  %21 = alloca %class.Point, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2446, metadata !DIExpression()), !dbg !2447
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2448, metadata !DIExpression()), !dbg !2449
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2452, metadata !DIExpression()), !dbg !2453
  %22 = load ptr, ptr %6, align 8, !dbg !2454
  %23 = getelementptr inbounds %class.Camera, ptr %22, i32 0, i32 7, !dbg !2455
  %24 = load ptr, ptr %4, align 8, !dbg !2456
  call void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %7, ptr noundef nonnull align 4 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(12) %24), !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2458, metadata !DIExpression()), !dbg !2459
  %25 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 2, !dbg !2460
  %26 = load float, ptr %25, align 4, !dbg !2460
  %27 = fdiv float 1.000000e+00, %26, !dbg !2461
  store float %27, ptr %8, align 4, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2462, metadata !DIExpression()), !dbg !2463
  %28 = load float, ptr %8, align 4, !dbg !2464
  %29 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 0, !dbg !2465
  %30 = load float, ptr %29, align 4, !dbg !2465
  %31 = fmul float %28, %30, !dbg !2466
  %32 = load float, ptr %8, align 4, !dbg !2467
  %33 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 1, !dbg !2468
  %34 = load float, ptr %33, align 4, !dbg !2468
  %35 = fmul float %32, %34, !dbg !2469
  invoke void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %31, float noundef %35)
          to label %36 unwind label %164, !dbg !2463

36:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2470, metadata !DIExpression()), !dbg !2471
  %37 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2472
  %38 = load float, ptr %37, align 4, !dbg !2472
  %39 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2473
  %40 = load float, ptr %39, align 4, !dbg !2473
  %41 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2474
  %42 = load float, ptr %41, align 4, !dbg !2474
  %43 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2475
  %44 = load float, ptr %43, align 4, !dbg !2475
  %45 = fmul float %42, %44, !dbg !2476
  %46 = call float @llvm.fmuladd.f32(float %38, float %40, float %45), !dbg !2477
  store float %46, ptr %12, align 4, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2478, metadata !DIExpression()), !dbg !2479
  %47 = load float, ptr %12, align 4, !dbg !2480
  %48 = load float, ptr %12, align 4, !dbg !2481
  %49 = fmul float %47, %48, !dbg !2482
  store float %49, ptr %13, align 4, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2483, metadata !DIExpression()), !dbg !2484
  %50 = load float, ptr %13, align 4, !dbg !2485
  %51 = load float, ptr %12, align 4, !dbg !2486
  %52 = fmul float %50, %51, !dbg !2487
  store float %52, ptr %14, align 4, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2488, metadata !DIExpression()), !dbg !2489
  %53 = load ptr, ptr %6, align 8, !dbg !2490
  %54 = getelementptr inbounds %class.Camera, ptr %53, i32 0, i32 3, !dbg !2491
  %55 = getelementptr inbounds [5 x float], ptr %54, i64 0, i64 0, !dbg !2490
  %56 = load float, ptr %55, align 4, !dbg !2490
  %57 = load float, ptr %12, align 4, !dbg !2492
  %58 = call float @llvm.fmuladd.f32(float %56, float %57, float 1.000000e+00), !dbg !2493
  %59 = load ptr, ptr %6, align 8, !dbg !2494
  %60 = getelementptr inbounds %class.Camera, ptr %59, i32 0, i32 3, !dbg !2495
  %61 = getelementptr inbounds [5 x float], ptr %60, i64 0, i64 1, !dbg !2494
  %62 = load float, ptr %61, align 4, !dbg !2494
  %63 = load float, ptr %13, align 4, !dbg !2496
  %64 = call float @llvm.fmuladd.f32(float %62, float %63, float %58), !dbg !2497
  %65 = load ptr, ptr %6, align 8, !dbg !2498
  %66 = getelementptr inbounds %class.Camera, ptr %65, i32 0, i32 3, !dbg !2499
  %67 = getelementptr inbounds [5 x float], ptr %66, i64 0, i64 4, !dbg !2498
  %68 = load float, ptr %67, align 4, !dbg !2498
  %69 = load float, ptr %14, align 4, !dbg !2500
  %70 = call float @llvm.fmuladd.f32(float %68, float %69, float %64), !dbg !2501
  store float %70, ptr %15, align 4, !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2502, metadata !DIExpression()), !dbg !2503
  %71 = load float, ptr %15, align 4, !dbg !2504
  %72 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2505
  %73 = load float, ptr %72, align 4, !dbg !2505
  %74 = fmul float %71, %73, !dbg !2506
  %75 = load float, ptr %15, align 4, !dbg !2507
  %76 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2508
  %77 = load float, ptr %76, align 4, !dbg !2508
  %78 = fmul float %75, %77, !dbg !2509
  invoke void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %74, float noundef %78)
          to label %79 unwind label %168, !dbg !2503

79:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2510, metadata !DIExpression()), !dbg !2511
  %80 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2512
  %81 = load float, ptr %80, align 4, !dbg !2512
  %82 = fmul float 2.000000e+00, %81, !dbg !2513
  %83 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2514
  %84 = load float, ptr %83, align 4, !dbg !2514
  %85 = fmul float %82, %84, !dbg !2515
  store float %85, ptr %17, align 4, !dbg !2511
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2516, metadata !DIExpression()), !dbg !2517
  %86 = load float, ptr %12, align 4, !dbg !2518
  %87 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2519
  %88 = load float, ptr %87, align 4, !dbg !2519
  %89 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 0, !dbg !2520
  %90 = load float, ptr %89, align 4, !dbg !2520
  %91 = fmul float %88, %90, !dbg !2521
  %92 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %91, float %86), !dbg !2522
  store float %92, ptr %18, align 4, !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2523, metadata !DIExpression()), !dbg !2524
  %93 = load float, ptr %12, align 4, !dbg !2525
  %94 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2526
  %95 = load float, ptr %94, align 4, !dbg !2526
  %96 = getelementptr inbounds %class.Point, ptr %9, i32 0, i32 1, !dbg !2527
  %97 = load float, ptr %96, align 4, !dbg !2527
  %98 = fmul float %95, %97, !dbg !2528
  %99 = call float @llvm.fmuladd.f32(float 2.000000e+00, float %98, float %93), !dbg !2529
  store float %99, ptr %19, align 4, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2530, metadata !DIExpression()), !dbg !2531
  %100 = getelementptr inbounds %class.Point, ptr %16, i32 0, i32 0, !dbg !2532
  %101 = load float, ptr %100, align 4, !dbg !2532
  %102 = load ptr, ptr %6, align 8, !dbg !2533
  %103 = getelementptr inbounds %class.Camera, ptr %102, i32 0, i32 3, !dbg !2534
  %104 = getelementptr inbounds [5 x float], ptr %103, i64 0, i64 2, !dbg !2533
  %105 = load float, ptr %104, align 4, !dbg !2533
  %106 = load float, ptr %17, align 4, !dbg !2535
  %107 = call float @llvm.fmuladd.f32(float %105, float %106, float %101), !dbg !2536
  %108 = load ptr, ptr %6, align 8, !dbg !2537
  %109 = getelementptr inbounds %class.Camera, ptr %108, i32 0, i32 3, !dbg !2538
  %110 = getelementptr inbounds [5 x float], ptr %109, i64 0, i64 2, !dbg !2537
  %111 = load float, ptr %110, align 4, !dbg !2537
  %112 = load float, ptr %18, align 4, !dbg !2539
  %113 = call float @llvm.fmuladd.f32(float %111, float %112, float %107), !dbg !2540
  %114 = getelementptr inbounds %class.Point, ptr %16, i32 0, i32 1, !dbg !2541
  %115 = load float, ptr %114, align 4, !dbg !2541
  %116 = load ptr, ptr %6, align 8, !dbg !2542
  %117 = getelementptr inbounds %class.Camera, ptr %116, i32 0, i32 3, !dbg !2543
  %118 = getelementptr inbounds [5 x float], ptr %117, i64 0, i64 2, !dbg !2542
  %119 = load float, ptr %118, align 4, !dbg !2542
  %120 = load float, ptr %19, align 4, !dbg !2544
  %121 = call float @llvm.fmuladd.f32(float %119, float %120, float %115), !dbg !2545
  %122 = load ptr, ptr %6, align 8, !dbg !2546
  %123 = getelementptr inbounds %class.Camera, ptr %122, i32 0, i32 3, !dbg !2547
  %124 = getelementptr inbounds [5 x float], ptr %123, i64 0, i64 2, !dbg !2546
  %125 = load float, ptr %124, align 4, !dbg !2546
  %126 = load float, ptr %17, align 4, !dbg !2548
  %127 = call float @llvm.fmuladd.f32(float %125, float %126, float %121), !dbg !2549
  invoke void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %20, float noundef %113, float noundef %127)
          to label %128 unwind label %172, !dbg !2531

128:                                              ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2550, metadata !DIExpression()), !dbg !2551
  %129 = getelementptr inbounds %class.Point, ptr %20, i32 0, i32 0, !dbg !2552
  %130 = load float, ptr %129, align 4, !dbg !2552
  %131 = load ptr, ptr %6, align 8, !dbg !2553
  %132 = getelementptr inbounds %class.Camera, ptr %131, i32 0, i32 2, !dbg !2554
  %133 = load float, ptr %132, align 4, !dbg !2554
  %134 = getelementptr inbounds %class.Point, ptr %20, i32 0, i32 1, !dbg !2555
  %135 = load float, ptr %134, align 4, !dbg !2555
  %136 = call float @llvm.fmuladd.f32(float %133, float %135, float %130), !dbg !2556
  %137 = getelementptr inbounds %class.Point, ptr %20, i32 0, i32 1, !dbg !2557
  %138 = load float, ptr %137, align 4, !dbg !2557
  invoke void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef %136, float noundef %138)
          to label %139 unwind label %176, !dbg !2551

139:                                              ; preds = %128
  %140 = load ptr, ptr %5, align 8, !dbg !2558
  %141 = load ptr, ptr %6, align 8, !dbg !2559
  %142 = getelementptr inbounds %class.Camera, ptr %141, i32 0, i32 0, !dbg !2560
  %143 = getelementptr inbounds %class.Point, ptr %142, i32 0, i32 0, !dbg !2561
  %144 = load float, ptr %143, align 4, !dbg !2561
  %145 = getelementptr inbounds %class.Point, ptr %21, i32 0, i32 0, !dbg !2562
  %146 = load float, ptr %145, align 4, !dbg !2562
  %147 = load ptr, ptr %6, align 8, !dbg !2563
  %148 = getelementptr inbounds %class.Camera, ptr %147, i32 0, i32 1, !dbg !2564
  %149 = getelementptr inbounds %class.Point, ptr %148, i32 0, i32 0, !dbg !2565
  %150 = load float, ptr %149, align 4, !dbg !2565
  %151 = call float @llvm.fmuladd.f32(float %144, float %146, float %150), !dbg !2566
  %152 = load ptr, ptr %6, align 8, !dbg !2567
  %153 = getelementptr inbounds %class.Camera, ptr %152, i32 0, i32 0, !dbg !2568
  %154 = getelementptr inbounds %class.Point, ptr %153, i32 0, i32 1, !dbg !2569
  %155 = load float, ptr %154, align 4, !dbg !2569
  %156 = getelementptr inbounds %class.Point, ptr %21, i32 0, i32 1, !dbg !2570
  %157 = load float, ptr %156, align 4, !dbg !2570
  %158 = load ptr, ptr %6, align 8, !dbg !2571
  %159 = getelementptr inbounds %class.Camera, ptr %158, i32 0, i32 1, !dbg !2572
  %160 = getelementptr inbounds %class.Point, ptr %159, i32 0, i32 1, !dbg !2573
  %161 = load float, ptr %160, align 4, !dbg !2573
  %162 = call float @llvm.fmuladd.f32(float %155, float %157, float %161), !dbg !2574
  invoke void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %140, float noundef %151, float noundef %162)
          to label %163 unwind label %180, !dbg !2575

163:                                              ; preds = %139
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %21) #3, !dbg !2576
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %20) #3, !dbg !2576
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %16) #3, !dbg !2576
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %9) #3, !dbg !2576
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %7) #3, !dbg !2576
  ret void, !dbg !2576

164:                                              ; preds = %3
  %165 = landingpad { ptr, i32 }
          cleanup, !dbg !2576
  %166 = extractvalue { ptr, i32 } %165, 0, !dbg !2576
  store ptr %166, ptr %10, align 8, !dbg !2576
  %167 = extractvalue { ptr, i32 } %165, 1, !dbg !2576
  store i32 %167, ptr %11, align 4, !dbg !2576
  br label %187, !dbg !2576

168:                                              ; preds = %36
  %169 = landingpad { ptr, i32 }
          cleanup, !dbg !2576
  %170 = extractvalue { ptr, i32 } %169, 0, !dbg !2576
  store ptr %170, ptr %10, align 8, !dbg !2576
  %171 = extractvalue { ptr, i32 } %169, 1, !dbg !2576
  store i32 %171, ptr %11, align 4, !dbg !2576
  br label %186, !dbg !2576

172:                                              ; preds = %79
  %173 = landingpad { ptr, i32 }
          cleanup, !dbg !2576
  %174 = extractvalue { ptr, i32 } %173, 0, !dbg !2576
  store ptr %174, ptr %10, align 8, !dbg !2576
  %175 = extractvalue { ptr, i32 } %173, 1, !dbg !2576
  store i32 %175, ptr %11, align 4, !dbg !2576
  br label %185, !dbg !2576

176:                                              ; preds = %128
  %177 = landingpad { ptr, i32 }
          cleanup, !dbg !2576
  %178 = extractvalue { ptr, i32 } %177, 0, !dbg !2576
  store ptr %178, ptr %10, align 8, !dbg !2576
  %179 = extractvalue { ptr, i32 } %177, 1, !dbg !2576
  store i32 %179, ptr %11, align 4, !dbg !2576
  br label %184, !dbg !2576

180:                                              ; preds = %139
  %181 = landingpad { ptr, i32 }
          cleanup, !dbg !2576
  %182 = extractvalue { ptr, i32 } %181, 0, !dbg !2576
  store ptr %182, ptr %10, align 8, !dbg !2576
  %183 = extractvalue { ptr, i32 } %181, 1, !dbg !2576
  store i32 %183, ptr %11, align 4, !dbg !2576
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %21) #3, !dbg !2576
  br label %184, !dbg !2576

184:                                              ; preds = %180, %176
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %20) #3, !dbg !2576
  br label %185, !dbg !2576

185:                                              ; preds = %184, %172
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %16) #3, !dbg !2576
  br label %186, !dbg !2576

186:                                              ; preds = %185, %168
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %9) #3, !dbg !2576
  br label %187, !dbg !2576

187:                                              ; preds = %186, %164
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %7) #3, !dbg !2576
  br label %188, !dbg !2576

188:                                              ; preds = %187
  %189 = load ptr, ptr %10, align 8, !dbg !2576
  %190 = load i32, ptr %11, align 4, !dbg !2576
  %191 = insertvalue { ptr, i32 } poison, ptr %189, 0, !dbg !2576
  %192 = insertvalue { ptr, i32 } %191, i32 %190, 1, !dbg !2576
  resume { ptr, i32 } %192, !dbg !2576
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN13ProjectedBody15ImageProjectionERK12BodyGeometryR6Camera(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 4 dereferenceable(160) %2) #4 align 2 !dbg !2577 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !2579
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2580, metadata !DIExpression()), !dbg !2581
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2582, metadata !DIExpression()), !dbg !2583
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2584, metadata !DIExpression()), !dbg !2585
  %10 = load ptr, ptr %5, align 8, !dbg !2586
  %11 = call noundef i32 @_ZNK12BodyGeometry16GetBodyPartCountEv(ptr noundef nonnull align 8 dereferenceable(352) %10), !dbg !2587
  store i32 %11, ptr %7, align 4, !dbg !2585
  %12 = getelementptr inbounds %class.ProjectedBody, ptr %9, i32 0, i32 0, !dbg !2588
  %13 = load i32, ptr %7, align 4, !dbg !2589
  %14 = sext i32 %13 to i64, !dbg !2589
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %14), !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2591, metadata !DIExpression()), !dbg !2593
  store i32 0, ptr %8, align 4, !dbg !2593
  br label %15, !dbg !2594

15:                                               ; preds = %28, %3
  %16 = load i32, ptr %8, align 4, !dbg !2595
  %17 = load i32, ptr %7, align 4, !dbg !2597
  %18 = icmp slt i32 %16, %17, !dbg !2598
  br i1 %18, label %19, label %31, !dbg !2599

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.ProjectedBody, ptr %9, i32 0, i32 0, !dbg !2600
  %21 = load i32, ptr %8, align 4, !dbg !2601
  %22 = sext i32 %21 to i64, !dbg !2601
  %23 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %22) #3, !dbg !2600
  %24 = load ptr, ptr %5, align 8, !dbg !2602
  %25 = load i32, ptr %8, align 4, !dbg !2603
  %26 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNK12BodyGeometryclEi(ptr noundef nonnull align 8 dereferenceable(352) %24, i32 noundef %25), !dbg !2602
  %27 = load ptr, ptr %6, align 8, !dbg !2604
  call void @_ZN17ProjectedCylinder15ImageProjectionERK10KTCylinderR6Camera(ptr noundef nonnull align 4 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(60) %26, ptr noundef nonnull align 4 dereferenceable(160) %27), !dbg !2605
  br label %28, !dbg !2600

28:                                               ; preds = %19
  %29 = load i32, ptr %8, align 4, !dbg !2606
  %30 = add nsw i32 %29, 1, !dbg !2606
  store i32 %30, ptr %8, align 4, !dbg !2606
  br label %15, !dbg !2607, !llvm.loop !2608

31:                                               ; preds = %15
  ret void, !dbg !2610
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12BodyGeometry16GetBodyPartCountEv(ptr noundef nonnull align 8 dereferenceable(352) %0) #7 comdat align 2 !dbg !2611 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2618
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.BodyGeometry, ptr %3, i32 0, i32 0, !dbg !2619
  %5 = call noundef i64 @_ZNKSt6vectorI10KTCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2620
  %6 = trunc i64 %5 to i32, !dbg !2619
  ret i32 %6, !dbg !2621
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !2622 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2623, metadata !DIExpression()), !dbg !2625
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2626, metadata !DIExpression()), !dbg !2627
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !2628
  %7 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2630
  %8 = icmp ugt i64 %6, %7, !dbg !2631
  br i1 %8, label %9, label %13, !dbg !2632

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8, !dbg !2633
  %11 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2634
  %12 = sub i64 %10, %11, !dbg !2635
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %12), !dbg !2636
  br label %24, !dbg !2636

13:                                               ; preds = %2
  %14 = load i64, ptr %4, align 8, !dbg !2637
  %15 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2639
  %16 = icmp ult i64 %14, %15, !dbg !2640
  br i1 %16, label %17, label %23, !dbg !2641

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !2642
  %19 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %18, i32 0, i32 0, !dbg !2643
  %20 = load ptr, ptr %19, align 8, !dbg !2643
  %21 = load i64, ptr %4, align 8, !dbg !2644
  %22 = getelementptr inbounds %class.ProjectedCylinder, ptr %20, i64 %21, !dbg !2645
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %22) #3, !dbg !2646
  br label %23, !dbg !2646

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void, !dbg !2647
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2648 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2650
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2651, metadata !DIExpression()), !dbg !2652
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !2653
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2654
  %8 = load ptr, ptr %7, align 8, !dbg !2654
  %9 = load i64, ptr %4, align 8, !dbg !2655
  %10 = getelementptr inbounds %class.ProjectedCylinder, ptr %8, i64 %9, !dbg !2656
  ret ptr %10, !dbg !2657
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(60) ptr @_ZNK12BodyGeometryclEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1) #7 comdat align 2 !dbg !2658 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2662, metadata !DIExpression()), !dbg !2663
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2664, metadata !DIExpression()), !dbg !2665
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.BodyGeometry, ptr %5, i32 0, i32 0, !dbg !2666
  %7 = load i32, ptr %4, align 4, !dbg !2667
  %8 = sext i32 %7 to i64, !dbg !2667
  %9 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNKSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8) #3, !dbg !2666
  ret ptr %9, !dbg !2668
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN24MultiCameraProjectedBody15ImageProjectionERK12BodyGeometryR11MultiCamera(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 align 2 !dbg !2669 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2677, metadata !DIExpression()), !dbg !2679
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !2681
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2682, metadata !DIExpression()), !dbg !2683
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2684, metadata !DIExpression()), !dbg !2685
  %10 = load ptr, ptr %6, align 8, !dbg !2686
  %11 = call noundef i32 @_ZN11MultiCamera14GetCameraCountEv(ptr noundef nonnull align 8 dereferenceable(24) %10), !dbg !2687
  store i32 %11, ptr %7, align 4, !dbg !2685
  %12 = getelementptr inbounds %class.MultiCameraProjectedBody, ptr %9, i32 0, i32 0, !dbg !2688
  %13 = load i32, ptr %7, align 4, !dbg !2689
  %14 = sext i32 %13 to i64, !dbg !2689
  call void @_ZNSt6vectorI13ProjectedBodySaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %14), !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2691, metadata !DIExpression()), !dbg !2693
  store i32 0, ptr %8, align 4, !dbg !2693
  br label %15, !dbg !2694

15:                                               ; preds = %28, %3
  %16 = load i32, ptr %8, align 4, !dbg !2695
  %17 = load i32, ptr %7, align 4, !dbg !2697
  %18 = icmp slt i32 %16, %17, !dbg !2698
  br i1 %18, label %19, label %31, !dbg !2699

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.MultiCameraProjectedBody, ptr %9, i32 0, i32 0, !dbg !2700
  %21 = load i32, ptr %8, align 4, !dbg !2701
  %22 = sext i32 %21 to i64, !dbg !2701
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %22) #3, !dbg !2700
  %24 = load ptr, ptr %5, align 8, !dbg !2702
  %25 = load ptr, ptr %6, align 8, !dbg !2703
  %26 = load i32, ptr %8, align 4, !dbg !2704
  %27 = call noundef nonnull align 4 dereferenceable(160) ptr @_ZN11MultiCameraclEi(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef %26), !dbg !2703
  call void @_ZN13ProjectedBody15ImageProjectionERK12BodyGeometryR6Camera(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(352) %24, ptr noundef nonnull align 4 dereferenceable(160) %27), !dbg !2705
  br label %28, !dbg !2700

28:                                               ; preds = %19
  %29 = load i32, ptr %8, align 4, !dbg !2706
  %30 = add nsw i32 %29, 1, !dbg !2706
  store i32 %30, ptr %8, align 4, !dbg !2706
  br label %15, !dbg !2707, !llvm.loop !2708

31:                                               ; preds = %15
  ret void, !dbg !2710
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN11MultiCamera14GetCameraCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2711 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2716, metadata !DIExpression()), !dbg !2718
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.MultiCamera, ptr %3, i32 0, i32 0, !dbg !2719
  %5 = call noundef i64 @_ZNKSt6vectorI6CameraSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2720
  %6 = trunc i64 %5 to i32, !dbg !2719
  ret i32 %6, !dbg !2721
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ProjectedBodySaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !2722 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2728, metadata !DIExpression()), !dbg !2730
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2731, metadata !DIExpression()), !dbg !2732
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !2733
  %7 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2735
  %8 = icmp ugt i64 %6, %7, !dbg !2736
  br i1 %8, label %9, label %13, !dbg !2737

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8, !dbg !2738
  %11 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2739
  %12 = sub i64 %10, %11, !dbg !2740
  call void @_ZNSt6vectorI13ProjectedBodySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %12), !dbg !2741
  br label %24, !dbg !2741

13:                                               ; preds = %2
  %14 = load i64, ptr %4, align 8, !dbg !2742
  %15 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2744
  %16 = icmp ult i64 %14, %15, !dbg !2745
  br i1 %16, label %17, label %23, !dbg !2746

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %5, i32 0, i32 0, !dbg !2747
  %19 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %18, i32 0, i32 0, !dbg !2748
  %20 = load ptr, ptr %19, align 8, !dbg !2748
  %21 = load i64, ptr %4, align 8, !dbg !2749
  %22 = getelementptr inbounds %class.ProjectedBody, ptr %20, i64 %21, !dbg !2750
  call void @_ZNSt6vectorI13ProjectedBodySaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %22) #3, !dbg !2751
  br label %23, !dbg !2751

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void, !dbg !2752
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2753 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2809, metadata !DIExpression()), !dbg !2810
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %5, i32 0, i32 0, !dbg !2811
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2812
  %8 = load ptr, ptr %7, align 8, !dbg !2812
  %9 = load i64, ptr %4, align 8, !dbg !2813
  %10 = getelementptr inbounds %class.ProjectedBody, ptr %8, i64 %9, !dbg !2814
  ret ptr %10, !dbg !2815
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(160) ptr @_ZN11MultiCameraclEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #7 comdat align 2 !dbg !2816 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2820, metadata !DIExpression()), !dbg !2821
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2822, metadata !DIExpression()), !dbg !2823
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.MultiCamera, ptr %5, i32 0, i32 0, !dbg !2824
  %7 = load i32, ptr %4, align 4, !dbg !2825
  %8 = sext i32 %7 to i64, !dbg !2825
  %9 = call noundef nonnull align 4 dereferenceable(160) ptr @_ZNSt6vectorI6CameraSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8) #3, !dbg !2824
  ret ptr %9, !dbg !2826
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, float noundef %2) unnamed_addr #6 comdat align 2 !dbg !2827 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2828, metadata !DIExpression()), !dbg !2830
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2831, metadata !DIExpression()), !dbg !2832
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2833, metadata !DIExpression()), !dbg !2834
  %7 = load ptr, ptr %4, align 8
  %8 = load float, ptr %5, align 4, !dbg !2835
  %9 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 0, !dbg !2837
  store float %8, ptr %9, align 4, !dbg !2838
  %10 = load float, ptr %6, align 4, !dbg !2839
  %11 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 1, !dbg !2840
  store float %10, ptr %11, align 4, !dbg !2841
  ret void, !dbg !2842
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Point3SetEff(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, float noundef %2) #7 comdat align 2 !dbg !2843 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2844, metadata !DIExpression()), !dbg !2845
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2846, metadata !DIExpression()), !dbg !2847
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !2849
  %7 = load ptr, ptr %4, align 8
  %8 = load float, ptr %5, align 4, !dbg !2850
  %9 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 0, !dbg !2851
  store float %8, ptr %9, align 4, !dbg !2852
  %10 = load float, ptr %6, align 4, !dbg !2853
  %11 = getelementptr inbounds %class.Point, ptr %7, i32 0, i32 1, !dbg !2854
  store float %10, ptr %11, align 4, !dbg !2855
  ret void, !dbg !2856
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !2857 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2858, metadata !DIExpression()), !dbg !2859
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2860
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI10KTCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2861 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2868, metadata !DIExpression()), !dbg !2870
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !2871
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !2872
  %6 = load ptr, ptr %5, align 8, !dbg !2872
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !2873
  %8 = getelementptr inbounds %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !2874
  %9 = load ptr, ptr %8, align 8, !dbg !2874
  %10 = ptrtoint ptr %6 to i64, !dbg !2875
  %11 = ptrtoint ptr %9 to i64, !dbg !2875
  %12 = sub i64 %10, %11, !dbg !2875
  %13 = sdiv exact i64 %12, 60, !dbg !2875
  ret i64 %13, !dbg !2876
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(60) ptr @_ZNKSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2877 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2933, metadata !DIExpression()), !dbg !2934
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2935, metadata !DIExpression()), !dbg !2936
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %5, i32 0, i32 0, !dbg !2937
  %7 = getelementptr inbounds %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2938
  %8 = load ptr, ptr %7, align 8, !dbg !2938
  %9 = load i64, ptr %4, align 8, !dbg !2939
  %10 = getelementptr inbounds %class.KTCylinder, ptr %8, i64 %9, !dbg !2940
  ret ptr %10, !dbg !2941
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6CameraSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2942 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2949, metadata !DIExpression()), !dbg !2951
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %3, i32 0, i32 0, !dbg !2952
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !2953
  %6 = load ptr, ptr %5, align 8, !dbg !2953
  %7 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %3, i32 0, i32 0, !dbg !2954
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !2955
  %9 = load ptr, ptr %8, align 8, !dbg !2955
  %10 = ptrtoint ptr %6 to i64, !dbg !2956
  %11 = ptrtoint ptr %9 to i64, !dbg !2956
  %12 = sub i64 %10, %11, !dbg !2956
  %13 = sdiv exact i64 %12, 160, !dbg !2956
  ret i64 %13, !dbg !2957
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(160) ptr @_ZNSt6vectorI6CameraSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !2958 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3014, metadata !DIExpression()), !dbg !3016
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3017, metadata !DIExpression()), !dbg !3018
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %5, i32 0, i32 0, !dbg !3019
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Camera, std::allocator<Camera>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !3020
  %8 = load ptr, ptr %7, align 8, !dbg !3020
  %9 = load i64, ptr %4, align 8, !dbg !3021
  %10 = getelementptr inbounds %class.Camera, ptr %8, i64 %9, !dbg !3022
  ret ptr %10, !dbg !3023
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) #7 comdat align 2 !dbg !3024 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3025, metadata !DIExpression()), !dbg !3026
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3027, metadata !DIExpression()), !dbg !3028
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3029, metadata !DIExpression()), !dbg !3030
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %class.DMatrix, ptr %7, i32 0, i32 0, !dbg !3031
  %9 = load i32, ptr %5, align 4, !dbg !3032
  %10 = sext i32 %9 to i64, !dbg !3031
  %11 = getelementptr inbounds [3 x [4 x float]], ptr %8, i64 0, i64 %10, !dbg !3031
  %12 = load i32, ptr %6, align 4, !dbg !3033
  %13 = sext i32 %12 to i64, !dbg !3031
  %14 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 %13, !dbg !3031
  ret ptr %14, !dbg !3034
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !dbg !3035 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3036, metadata !DIExpression()), !dbg !3037
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3038
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0) #7 comdat align 2 !dbg !3039 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3040, metadata !DIExpression()), !dbg !3041
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.DMatrix, ptr %3, i32 0, i32 0, !dbg !3042
  %5 = getelementptr inbounds [3 x [4 x float]], ptr %4, i64 0, i64 0, !dbg !3043
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 48, i1 false), !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3045 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3046, metadata !DIExpression()), !dbg !3048
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3049
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !3050
  %6 = load ptr, ptr %5, align 8, !dbg !3050
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3051
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3052
  %9 = load ptr, ptr %8, align 8, !dbg !3052
  %10 = ptrtoint ptr %6 to i64, !dbg !3053
  %11 = ptrtoint ptr %9 to i64, !dbg !3053
  %12 = sub i64 %10, %11, !dbg !3053
  %13 = sdiv exact i64 %12, 32, !dbg !3053
  ret i64 %13, !dbg !3054
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3055 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3058, metadata !DIExpression()), !dbg !3059
  %11 = load ptr, ptr %3, align 8
  %12 = load i64, ptr %4, align 8, !dbg !3060
  %13 = icmp ne i64 %12, 0, !dbg !3062
  br i1 %13, label %14, label %115, !dbg !3063

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3064, metadata !DIExpression()), !dbg !3067
  %15 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3068
  store i64 %15, ptr %5, align 8, !dbg !3067
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3069, metadata !DIExpression()), !dbg !3070
  %16 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3071
  %17 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %16, i32 0, i32 2, !dbg !3072
  %18 = load ptr, ptr %17, align 8, !dbg !3072
  %19 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3073
  %20 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !3074
  %21 = load ptr, ptr %20, align 8, !dbg !3074
  %22 = ptrtoint ptr %18 to i64, !dbg !3075
  %23 = ptrtoint ptr %21 to i64, !dbg !3075
  %24 = sub i64 %22, %23, !dbg !3075
  %25 = sdiv exact i64 %24, 32, !dbg !3075
  store i64 %25, ptr %6, align 8, !dbg !3070
  %26 = load i64, ptr %5, align 8, !dbg !3076
  %27 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3078
  %28 = icmp ugt i64 %26, %27, !dbg !3079
  br i1 %28, label %35, label %29, !dbg !3080

29:                                               ; preds = %14
  %30 = load i64, ptr %6, align 8, !dbg !3081
  %31 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3082
  %32 = load i64, ptr %5, align 8, !dbg !3083
  %33 = sub i64 %31, %32, !dbg !3084
  %34 = icmp ugt i64 %30, %33, !dbg !3085
  br i1 %34, label %35, label %36, !dbg !3086

35:                                               ; preds = %29, %14
  unreachable, !dbg !3087

36:                                               ; preds = %29
  %37 = load i64, ptr %6, align 8, !dbg !3088
  %38 = load i64, ptr %4, align 8, !dbg !3090
  %39 = icmp uge i64 %37, %38, !dbg !3091
  br i1 %39, label %40, label %49, !dbg !3092

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3093
  %42 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %41, i32 0, i32 1, !dbg !3095
  %43 = load ptr, ptr %42, align 8, !dbg !3095
  %44 = load i64, ptr %4, align 8, !dbg !3096
  %45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3097
  %46 = call noundef ptr @_ZSt27__uninitialized_default_n_aIP17ProjectedCylindermS0_ET_S2_T0_RSaIT1_E(ptr noundef %43, i64 noundef %44, ptr noundef nonnull align 1 dereferenceable(1) %45), !dbg !3098
  %47 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3099
  %48 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %47, i32 0, i32 1, !dbg !3100
  store ptr %46, ptr %48, align 8, !dbg !3101
  br label %114, !dbg !3102

49:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3103, metadata !DIExpression()), !dbg !3105
  %50 = load i64, ptr %4, align 8, !dbg !3106
  %51 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %50, ptr noundef @.str), !dbg !3107
  store i64 %51, ptr %7, align 8, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3108, metadata !DIExpression()), !dbg !3109
  %52 = load i64, ptr %7, align 8, !dbg !3110
  %53 = call noundef ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %52), !dbg !3111
  store ptr %53, ptr %8, align 8, !dbg !3109
  %54 = load ptr, ptr %8, align 8, !dbg !3112
  %55 = load i64, ptr %5, align 8, !dbg !3116
  %56 = getelementptr inbounds %class.ProjectedCylinder, ptr %54, i64 %55, !dbg !3117
  %57 = load i64, ptr %4, align 8, !dbg !3118
  %58 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3119
  %59 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP17ProjectedCylindermS0_ET_S2_T0_RSaIT1_E(ptr noundef %56, i64 noundef %57, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %60 unwind label %61, !dbg !3120

60:                                               ; preds = %49
  br label %76, !dbg !3121

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3122
  %63 = extractvalue { ptr, i32 } %62, 0, !dbg !3122
  store ptr %63, ptr %9, align 8, !dbg !3122
  %64 = extractvalue { ptr, i32 } %62, 1, !dbg !3122
  store i32 %64, ptr %10, align 4, !dbg !3122
  br label %65, !dbg !3122

65:                                               ; preds = %61
  %66 = load ptr, ptr %9, align 8, !dbg !3121
  %67 = call ptr @__cxa_begin_catch(ptr %66) #3, !dbg !3121
  %68 = load ptr, ptr %8, align 8, !dbg !3123
  %69 = load i64, ptr %7, align 8, !dbg !3125
  invoke void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %68, i64 noundef %69)
          to label %70 unwind label %71, !dbg !3126

70:                                               ; preds = %65
  invoke void @__cxa_rethrow() #16
          to label %124 unwind label %71, !dbg !3127

71:                                               ; preds = %70, %65
  %72 = landingpad { ptr, i32 }
          cleanup, !dbg !3128
  %73 = extractvalue { ptr, i32 } %72, 0, !dbg !3128
  store ptr %73, ptr %9, align 8, !dbg !3128
  %74 = extractvalue { ptr, i32 } %72, 1, !dbg !3128
  store i32 %74, ptr %10, align 4, !dbg !3128
  invoke void @__cxa_end_catch()
          to label %75 unwind label %121, !dbg !3129

75:                                               ; preds = %71
  br label %116, !dbg !3129

76:                                               ; preds = %60
  %77 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3130
  %78 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %77, i32 0, i32 0, !dbg !3131
  %79 = load ptr, ptr %78, align 8, !dbg !3131
  %80 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3132
  %81 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %80, i32 0, i32 1, !dbg !3133
  %82 = load ptr, ptr %81, align 8, !dbg !3133
  %83 = load ptr, ptr %8, align 8, !dbg !3134
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3135
  %85 = call noundef ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef nonnull align 1 dereferenceable(1) %84) #3, !dbg !3136
  %86 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3137
  %87 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %86, i32 0, i32 0, !dbg !3138
  %88 = load ptr, ptr %87, align 8, !dbg !3138
  %89 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3139
  %90 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %89, i32 0, i32 2, !dbg !3140
  %91 = load ptr, ptr %90, align 8, !dbg !3140
  %92 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3141
  %93 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %92, i32 0, i32 0, !dbg !3142
  %94 = load ptr, ptr %93, align 8, !dbg !3142
  %95 = ptrtoint ptr %91 to i64, !dbg !3143
  %96 = ptrtoint ptr %94 to i64, !dbg !3143
  %97 = sub i64 %95, %96, !dbg !3143
  %98 = sdiv exact i64 %97, 32, !dbg !3143
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %88, i64 noundef %98), !dbg !3144
  %99 = load ptr, ptr %8, align 8, !dbg !3145
  %100 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3146
  %101 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %100, i32 0, i32 0, !dbg !3147
  store ptr %99, ptr %101, align 8, !dbg !3148
  %102 = load ptr, ptr %8, align 8, !dbg !3149
  %103 = load i64, ptr %5, align 8, !dbg !3150
  %104 = getelementptr inbounds %class.ProjectedCylinder, ptr %102, i64 %103, !dbg !3151
  %105 = load i64, ptr %4, align 8, !dbg !3152
  %106 = getelementptr inbounds %class.ProjectedCylinder, ptr %104, i64 %105, !dbg !3153
  %107 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3154
  %108 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %107, i32 0, i32 1, !dbg !3155
  store ptr %106, ptr %108, align 8, !dbg !3156
  %109 = load ptr, ptr %8, align 8, !dbg !3157
  %110 = load i64, ptr %7, align 8, !dbg !3158
  %111 = getelementptr inbounds %class.ProjectedCylinder, ptr %109, i64 %110, !dbg !3159
  %112 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !3160
  %113 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %112, i32 0, i32 2, !dbg !3161
  store ptr %111, ptr %113, align 8, !dbg !3162
  br label %114

114:                                              ; preds = %76, %40
  br label %115, !dbg !3163

115:                                              ; preds = %114, %2
  ret void, !dbg !3164

116:                                              ; preds = %75
  %117 = load ptr, ptr %9, align 8, !dbg !3129
  %118 = load i32, ptr %10, align 4, !dbg !3129
  %119 = insertvalue { ptr, i32 } poison, ptr %117, 0, !dbg !3129
  %120 = insertvalue { ptr, i32 } %119, i32 %118, 1, !dbg !3129
  resume { ptr, i32 } %120, !dbg !3129

121:                                              ; preds = %71
  %122 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3129
  %123 = extractvalue { ptr, i32 } %122, 0, !dbg !3129
  call void @__clang_call_terminate(ptr %123) #17, !dbg !3129
  unreachable, !dbg !3129

124:                                              ; preds = %70
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3165 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3166, metadata !DIExpression()), !dbg !3167
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3169
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3170, metadata !DIExpression()), !dbg !3172
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !3173
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !3174
  %9 = load ptr, ptr %8, align 8, !dbg !3174
  %10 = load ptr, ptr %4, align 8, !dbg !3175
  %11 = ptrtoint ptr %9 to i64, !dbg !3176
  %12 = ptrtoint ptr %10 to i64, !dbg !3176
  %13 = sub i64 %11, %12, !dbg !3176
  %14 = sdiv exact i64 %13, 32, !dbg !3176
  store i64 %14, ptr %5, align 8, !dbg !3172
  %15 = load i64, ptr %5, align 8, !dbg !3172
  %16 = icmp ne i64 %15, 0, !dbg !3172
  br i1 %16, label %17, label %27, !dbg !3177

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !3178
  %19 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !3180
  %20 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !3181
  %21 = load ptr, ptr %20, align 8, !dbg !3181
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !3182
  invoke void @_ZSt8_DestroyIP17ProjectedCylinderS0_EvT_S2_RSaIT0_E(ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %28, !dbg !3183

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !3184
  %25 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !3185
  %26 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %25, i32 0, i32 1, !dbg !3186
  store ptr %24, ptr %26, align 8, !dbg !3187
  br label %27, !dbg !3188

27:                                               ; preds = %23, %2
  ret void, !dbg !3189

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3183
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !3183
  call void @__clang_call_terminate(ptr %30) #17, !dbg !3183
  unreachable, !dbg !3183
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3190 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3191, metadata !DIExpression()), !dbg !3192
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3193
  %5 = call noundef i64 @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !3194
  ret i64 %5, !dbg !3195
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP17ProjectedCylindermS0_ET_S2_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !3196 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3205, metadata !DIExpression()), !dbg !3206
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3207, metadata !DIExpression()), !dbg !3208
  %7 = load ptr, ptr %4, align 8, !dbg !3209
  %8 = load i64, ptr %5, align 8, !dbg !3210
  %9 = call noundef ptr @_ZSt25__uninitialized_default_nIP17ProjectedCylindermET_S2_T0_(ptr noundef %7, i64 noundef %8), !dbg !3211
  ret ptr %9, !dbg !3212
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3213 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3214, metadata !DIExpression()), !dbg !3216
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3217
  ret ptr %4, !dbg !3218
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !3219 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3220, metadata !DIExpression()), !dbg !3221
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3222, metadata !DIExpression()), !dbg !3223
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3224, metadata !DIExpression()), !dbg !3225
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3226
  %11 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3228
  %12 = sub i64 %10, %11, !dbg !3229
  %13 = load i64, ptr %5, align 8, !dbg !3230
  %14 = icmp ult i64 %12, %13, !dbg !3231
  br i1 %14, label %15, label %17, !dbg !3232

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !3233
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #16, !dbg !3234
  unreachable, !dbg !3234

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3235, metadata !DIExpression()), !dbg !3236
  %18 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3237
  %19 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3238
  store i64 %19, ptr %8, align 8, !dbg !3238
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !3239
  %21 = load i64, ptr %20, align 8, !dbg !3239
  %22 = add i64 %18, %21, !dbg !3240
  store i64 %22, ptr %7, align 8, !dbg !3236
  %23 = load i64, ptr %7, align 8, !dbg !3241
  %24 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3242
  %25 = icmp ult i64 %23, %24, !dbg !3243
  br i1 %25, label %30, label %26, !dbg !3244

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !3245
  %28 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3246
  %29 = icmp ugt i64 %27, %28, !dbg !3247
  br i1 %29, label %30, label %32, !dbg !3248

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3249
  br label %34, !dbg !3248

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !3250
  br label %34, !dbg !3248

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !3248
  ret i64 %35, !dbg !3251
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !3252 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3255, metadata !DIExpression()), !dbg !3256
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3257
  %7 = icmp ne i64 %6, 0, !dbg !3258
  br i1 %7, label %8, label %12, !dbg !3257

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3259
  %10 = load i64, ptr %4, align 8, !dbg !3260
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !3261
  br label %13, !dbg !3257

12:                                               ; preds = %2
  br label %13, !dbg !3257

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !3257
  ret ptr %14, !dbg !3262
}

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !3263 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3264, metadata !DIExpression()), !dbg !3265
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3268, metadata !DIExpression()), !dbg !3269
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3270
  %9 = icmp ne ptr %8, null, !dbg !3270
  br i1 %9, label %10, label %14, !dbg !3272

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3273
  %12 = load ptr, ptr %5, align 8, !dbg !3274
  %13 = load i64, ptr %6, align 8, !dbg !3275
  call void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3276
  br label %14, !dbg !3276

14:                                               ; preds = %10, %3
  ret void, !dbg !3277
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #10 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat align 2 !dbg !130 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3278, metadata !DIExpression()), !dbg !3279
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3280, metadata !DIExpression()), !dbg !3281
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3282, metadata !DIExpression()), !dbg !3283
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3284, metadata !DIExpression()), !dbg !3285
  %10 = load ptr, ptr %5, align 8, !dbg !3286
  %11 = load ptr, ptr %6, align 8, !dbg !3287
  %12 = load ptr, ptr %7, align 8, !dbg !3288
  %13 = load ptr, ptr %8, align 8, !dbg !3289
  %14 = call noundef ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3290
  ret ptr %14, !dbg !3291
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3292 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3295, metadata !DIExpression()), !dbg !3297
  store i64 288230376151711743, ptr %3, align 8, !dbg !3297
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3298, metadata !DIExpression()), !dbg !3299
  %5 = load ptr, ptr %2, align 8, !dbg !3300
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !3301
  store i64 %6, ptr %4, align 8, !dbg !3299
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !3302

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !3302
  ret i64 %9, !dbg !3303

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3302
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !3302
  call void @__clang_call_terminate(ptr %12) #17, !dbg !3302
  unreachable, !dbg !3302
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3304 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3307
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3308
  ret ptr %4, !dbg !3309
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3310 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3311, metadata !DIExpression()), !dbg !3312
  %3 = load ptr, ptr %2, align 8, !dbg !3313
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3314
  ret i64 %4, !dbg !3315
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3316 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3326, metadata !DIExpression()), !dbg !3327
  %6 = load ptr, ptr %5, align 8, !dbg !3328
  %7 = load i64, ptr %6, align 8, !dbg !3328
  %8 = load ptr, ptr %4, align 8, !dbg !3330
  %9 = load i64, ptr %8, align 8, !dbg !3330
  %10 = icmp ult i64 %7, %9, !dbg !3331
  br i1 %10, label %11, label %13, !dbg !3332

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3333
  store ptr %12, ptr %3, align 8, !dbg !3334
  br label %15, !dbg !3334

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3335
  store ptr %14, ptr %3, align 8, !dbg !3336
  br label %15, !dbg !3336

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3337
  ret ptr %16, !dbg !3337
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3338 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3339, metadata !DIExpression()), !dbg !3341
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3342
  ret i64 %4, !dbg !3343
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3344 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3345, metadata !DIExpression()), !dbg !3346
  %3 = load ptr, ptr %2, align 8
  ret i64 288230376151711743, !dbg !3347
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP17ProjectedCylindermET_S2_T0_(ptr noundef %0, i64 noundef %1) #4 comdat !dbg !3348 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3353
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3356, metadata !DIExpression()), !dbg !3357
  store i8 1, ptr %5, align 1, !dbg !3357
  %6 = load ptr, ptr %3, align 8, !dbg !3358
  %7 = load i64, ptr %4, align 8, !dbg !3359
  %8 = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP17ProjectedCylindermEET_S4_T0_(ptr noundef %6, i64 noundef %7), !dbg !3360
  ret ptr %8, !dbg !3361
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP17ProjectedCylindermEET_S4_T0_(ptr noundef %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3362 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3367, metadata !DIExpression()), !dbg !3368
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3371, metadata !DIExpression()), !dbg !3372
  %8 = load ptr, ptr %3, align 8, !dbg !3373
  store ptr %8, ptr %5, align 8, !dbg !3372
  br label %9, !dbg !3374

9:                                                ; preds = %15, %2
  %10 = load i64, ptr %4, align 8, !dbg !3376
  %11 = icmp ugt i64 %10, 0, !dbg !3379
  br i1 %11, label %12, label %30, !dbg !3380

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !3381
  invoke void @_ZSt10_ConstructI17ProjectedCylinderJEEvPT_DpOT0_(ptr noundef %13)
          to label %14 unwind label %20, !dbg !3382

14:                                               ; preds = %12
  br label %15, !dbg !3382

15:                                               ; preds = %14
  %16 = load i64, ptr %4, align 8, !dbg !3383
  %17 = add i64 %16, -1, !dbg !3383
  store i64 %17, ptr %4, align 8, !dbg !3383
  %18 = load ptr, ptr %5, align 8, !dbg !3384
  %19 = getelementptr inbounds %class.ProjectedCylinder, ptr %18, i32 1, !dbg !3384
  store ptr %19, ptr %5, align 8, !dbg !3384
  br label %9, !dbg !3385, !llvm.loop !3386

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3388
  %22 = extractvalue { ptr, i32 } %21, 0, !dbg !3388
  store ptr %22, ptr %6, align 8, !dbg !3388
  %23 = extractvalue { ptr, i32 } %21, 1, !dbg !3388
  store i32 %23, ptr %7, align 4, !dbg !3388
  br label %24, !dbg !3388

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8, !dbg !3389
  %26 = call ptr @__cxa_begin_catch(ptr %25) #3, !dbg !3389
  %27 = load ptr, ptr %3, align 8, !dbg !3390
  %28 = load ptr, ptr %5, align 8, !dbg !3392
  invoke void @_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_(ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %32, !dbg !3393

29:                                               ; preds = %24
  invoke void @__cxa_rethrow() #16
          to label %46 unwind label %32, !dbg !3394

30:                                               ; preds = %9
  %31 = load ptr, ptr %5, align 8, !dbg !3395
  ret ptr %31, !dbg !3396

32:                                               ; preds = %29, %24
  %33 = landingpad { ptr, i32 }
          cleanup, !dbg !3397
  %34 = extractvalue { ptr, i32 } %33, 0, !dbg !3397
  store ptr %34, ptr %6, align 8, !dbg !3397
  %35 = extractvalue { ptr, i32 } %33, 1, !dbg !3397
  store i32 %35, ptr %7, align 4, !dbg !3397
  invoke void @__cxa_end_catch()
          to label %36 unwind label %43, !dbg !3398

36:                                               ; preds = %32
  br label %38, !dbg !3398

37:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !3398
  unreachable, !dbg !3398

38:                                               ; preds = %36
  %39 = load ptr, ptr %6, align 8, !dbg !3398
  %40 = load i32, ptr %7, align 4, !dbg !3398
  %41 = insertvalue { ptr, i32 } poison, ptr %39, 0, !dbg !3398
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1, !dbg !3398
  resume { ptr, i32 } %42, !dbg !3398

43:                                               ; preds = %32
  %44 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3398
  %45 = extractvalue { ptr, i32 } %44, 0, !dbg !3398
  call void @__clang_call_terminate(ptr %45) #17, !dbg !3398
  unreachable, !dbg !3398

46:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI17ProjectedCylinderJEEvPT_DpOT0_(ptr noundef %0) #4 comdat !dbg !3399 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3405, metadata !DIExpression()), !dbg !3406
  %3 = load ptr, ptr %2, align 8, !dbg !3407
  call void @_ZN17ProjectedCylinderC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %3), !dbg !3408
  ret void, !dbg !3409
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_(ptr noundef %0, ptr noundef %1) #4 comdat !dbg !3410 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3414, metadata !DIExpression()), !dbg !3415
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3416, metadata !DIExpression()), !dbg !3417
  %5 = load ptr, ptr %3, align 8, !dbg !3418
  %6 = load ptr, ptr %4, align 8, !dbg !3419
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP17ProjectedCylinderEEvT_S4_(ptr noundef %5, ptr noundef %6), !dbg !3420
  ret void, !dbg !3421
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN17ProjectedCylinderC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3422 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3423, metadata !DIExpression()), !dbg !3424
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %class.ProjectedCylinder, ptr %5, i32 0, i32 0, !dbg !3425
  %7 = getelementptr inbounds [4 x %class.Point], ptr %6, i32 0, i32 0, !dbg !3425
  %8 = getelementptr inbounds %class.Point, ptr %7, i64 4, !dbg !3425
  br label %9, !dbg !3425

9:                                                ; preds = %11, %1
  %10 = phi ptr [ %7, %1 ], [ %12, %11 ], !dbg !3425
  invoke void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %11 unwind label %15, !dbg !3425

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.Point, ptr %10, i64 1, !dbg !3425
  %13 = icmp eq ptr %12, %8, !dbg !3425
  br i1 %13, label %14, label %9, !dbg !3425

14:                                               ; preds = %11
  ret void, !dbg !3426

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup, !dbg !3426
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !3426
  store ptr %17, ptr %3, align 8, !dbg !3426
  %18 = extractvalue { ptr, i32 } %16, 1, !dbg !3426
  store i32 %18, ptr %4, align 4, !dbg !3426
  %19 = icmp eq ptr %7, %10, !dbg !3425
  br i1 %19, label %24, label %20, !dbg !3425

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %10, %15 ], [ %22, %20 ], !dbg !3425
  %22 = getelementptr inbounds %class.Point, ptr %21, i64 -1, !dbg !3425
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %22) #3, !dbg !3425
  %23 = icmp eq ptr %22, %7, !dbg !3425
  br i1 %23, label %24, label %20, !dbg !3425

24:                                               ; preds = %20, %15
  br label %25, !dbg !3425

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 8, !dbg !3425
  %27 = load i32, ptr %4, align 4, !dbg !3425
  %28 = insertvalue { ptr, i32 } poison, ptr %26, 0, !dbg !3425
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1, !dbg !3425
  resume { ptr, i32 } %29, !dbg !3425
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !3427 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3428, metadata !DIExpression()), !dbg !3429
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3430
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP17ProjectedCylinderEEvT_S4_(ptr noundef %0, ptr noundef %1) #4 comdat align 2 !dbg !3431 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3436, metadata !DIExpression()), !dbg !3437
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3438, metadata !DIExpression()), !dbg !3439
  br label %5, !dbg !3440

5:                                                ; preds = %11, %2
  %6 = load ptr, ptr %3, align 8, !dbg !3441
  %7 = load ptr, ptr %4, align 8, !dbg !3444
  %8 = icmp ne ptr %6, %7, !dbg !3445
  br i1 %8, label %9, label %14, !dbg !3446

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !3447
  call void @_ZSt8_DestroyI17ProjectedCylinderEvPT_(ptr noundef %10), !dbg !3448
  br label %11, !dbg !3448

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !dbg !3449
  %13 = getelementptr inbounds %class.ProjectedCylinder, ptr %12, i32 1, !dbg !3449
  store ptr %13, ptr %3, align 8, !dbg !3449
  br label %5, !dbg !3450, !llvm.loop !3451

14:                                               ; preds = %5
  ret void, !dbg !3453
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI17ProjectedCylinderEvPT_(ptr noundef %0) #7 comdat !dbg !3454 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3455, metadata !DIExpression()), !dbg !3456
  %3 = load ptr, ptr %2, align 8, !dbg !3457
  call void @_ZN17ProjectedCylinderD2Ev(ptr noundef nonnull align 4 dereferenceable(32) %3) #3, !dbg !3458
  ret void, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN17ProjectedCylinderD2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !dbg !3460 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3461, metadata !DIExpression()), !dbg !3462
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.ProjectedCylinder, ptr %3, i32 0, i32 0, !dbg !3463
  %5 = getelementptr inbounds [4 x %class.Point], ptr %4, i32 0, i32 0, !dbg !3463
  %6 = getelementptr inbounds %class.Point, ptr %5, i64 4, !dbg !3463
  br label %7, !dbg !3463

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %6, %1 ], [ %9, %7 ], !dbg !3463
  %9 = getelementptr inbounds %class.Point, ptr %8, i64 -1, !dbg !3463
  call void @_ZN5PointD2Ev(ptr noundef nonnull align 4 dereferenceable(8) %9) #3, !dbg !3463
  %10 = icmp eq ptr %9, %5, !dbg !3463
  br i1 %10, label %11, label %7, !dbg !3463

11:                                               ; preds = %7
  ret void, !dbg !3465
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3466 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3467, metadata !DIExpression()), !dbg !3468
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3469, metadata !DIExpression()), !dbg !3470
  %6 = load ptr, ptr %4, align 8, !dbg !3471
  %7 = load i64, ptr %6, align 8, !dbg !3471
  %8 = load ptr, ptr %5, align 8, !dbg !3473
  %9 = load i64, ptr %8, align 8, !dbg !3473
  %10 = icmp ult i64 %7, %9, !dbg !3474
  br i1 %10, label %11, label %13, !dbg !3475

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3476
  store ptr %12, ptr %3, align 8, !dbg !3477
  br label %15, !dbg !3477

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3478
  store ptr %14, ptr %3, align 8, !dbg !3479
  br label %15, !dbg !3479

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3480
  ret ptr %16, !dbg !3480
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 !dbg !3481 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3484, metadata !DIExpression()), !dbg !3485
  %5 = load ptr, ptr %3, align 8, !dbg !3486
  %6 = load i64, ptr %4, align 8, !dbg !3487
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !3488
  ret ptr %7, !dbg !3489
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !3490 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3493
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3494, metadata !DIExpression()), !dbg !3495
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3496, metadata !DIExpression()), !dbg !3497
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !3498
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !3500
  %10 = icmp ugt i64 %8, %9, !dbg !3501
  br i1 %10, label %11, label %16, !dbg !3502

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !3503
  %13 = icmp ugt i64 %12, 576460752303423487, !dbg !3506
  br i1 %13, label %14, label %15, !dbg !3507

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #16, !dbg !3508
  unreachable, !dbg !3508

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #16, !dbg !3509
  unreachable, !dbg !3509

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !3510
  %18 = mul i64 %17, 32, !dbg !3511
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #18, !dbg !3512
  ret ptr %19, !dbg !3513
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #14

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !3514 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3515, metadata !DIExpression()), !dbg !3516
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3517, metadata !DIExpression()), !dbg !3518
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3519, metadata !DIExpression()), !dbg !3520
  %7 = load ptr, ptr %4, align 8, !dbg !3521
  %8 = load ptr, ptr %5, align 8, !dbg !3522
  %9 = load i64, ptr %6, align 8, !dbg !3523
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3524
  ret void, !dbg !3525
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #7 comdat align 2 !dbg !3526 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3527, metadata !DIExpression()), !dbg !3528
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3529, metadata !DIExpression()), !dbg !3530
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3531, metadata !DIExpression()), !dbg !3532
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3533
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !3534
  ret void, !dbg !3535
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat align 2 !dbg !3536 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3537, metadata !DIExpression()), !dbg !3538
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3539, metadata !DIExpression()), !dbg !3540
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3541, metadata !DIExpression()), !dbg !3542
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3545, metadata !DIExpression()), !dbg !3546
  %10 = load ptr, ptr %6, align 8, !dbg !3547
  %11 = load ptr, ptr %7, align 8, !dbg !3548
  %12 = load ptr, ptr %8, align 8, !dbg !3549
  %13 = load ptr, ptr %9, align 8, !dbg !3550
  %14 = call noundef ptr @_ZSt12__relocate_aIP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3551
  ret ptr %14, !dbg !3552
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat !dbg !3553 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3559, metadata !DIExpression()), !dbg !3560
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3561, metadata !DIExpression()), !dbg !3562
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3563, metadata !DIExpression()), !dbg !3564
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3565, metadata !DIExpression()), !dbg !3566
  %9 = load ptr, ptr %5, align 8, !dbg !3567
  %10 = call noundef ptr @_ZSt12__niter_baseIP17ProjectedCylinderET_S2_(ptr noundef %9) #3, !dbg !3568
  %11 = load ptr, ptr %6, align 8, !dbg !3569
  %12 = call noundef ptr @_ZSt12__niter_baseIP17ProjectedCylinderET_S2_(ptr noundef %11) #3, !dbg !3570
  %13 = load ptr, ptr %7, align 8, !dbg !3571
  %14 = call noundef ptr @_ZSt12__niter_baseIP17ProjectedCylinderET_S2_(ptr noundef %13) #3, !dbg !3572
  %15 = load ptr, ptr %8, align 8, !dbg !3573
  %16 = call noundef ptr @_ZSt14__relocate_a_1IP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #3, !dbg !3574
  ret ptr %16, !dbg !3575
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat !dbg !3576 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3577, metadata !DIExpression()), !dbg !3578
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3579, metadata !DIExpression()), !dbg !3580
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3581, metadata !DIExpression()), !dbg !3582
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3585, metadata !DIExpression()), !dbg !3586
  %10 = load ptr, ptr %7, align 8, !dbg !3587
  store ptr %10, ptr %9, align 8, !dbg !3586
  br label %11, !dbg !3588

11:                                               ; preds = %19, %4
  %12 = load ptr, ptr %5, align 8, !dbg !3589
  %13 = load ptr, ptr %6, align 8, !dbg !3592
  %14 = icmp ne ptr %12, %13, !dbg !3593
  br i1 %14, label %15, label %24, !dbg !3594

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !dbg !3595
  %17 = load ptr, ptr %5, align 8, !dbg !3596
  %18 = load ptr, ptr %8, align 8, !dbg !3597
  call void @_ZSt19__relocate_object_aI17ProjectedCylinderS0_SaIS0_EEvPT_PT0_RT1_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %18) #3, !dbg !3598
  br label %19, !dbg !3598

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !dbg !3599
  %21 = getelementptr inbounds %class.ProjectedCylinder, ptr %20, i32 1, !dbg !3599
  store ptr %21, ptr %5, align 8, !dbg !3599
  %22 = load ptr, ptr %9, align 8, !dbg !3600
  %23 = getelementptr inbounds %class.ProjectedCylinder, ptr %22, i32 1, !dbg !3600
  store ptr %23, ptr %9, align 8, !dbg !3600
  br label %11, !dbg !3601, !llvm.loop !3602

24:                                               ; preds = %11
  %25 = load ptr, ptr %9, align 8, !dbg !3604
  ret ptr %25, !dbg !3605
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP17ProjectedCylinderET_S2_(ptr noundef %0) #7 comdat !dbg !3606 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3611, metadata !DIExpression()), !dbg !3612
  %3 = load ptr, ptr %2, align 8, !dbg !3613
  ret ptr %3, !dbg !3614
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI17ProjectedCylinderS0_SaIS0_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #7 comdat !dbg !3615 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3621, metadata !DIExpression()), !dbg !3622
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3623, metadata !DIExpression()), !dbg !3624
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3625, metadata !DIExpression()), !dbg !3626
  %7 = load ptr, ptr %6, align 8, !dbg !3627
  %8 = load ptr, ptr %4, align 8, !dbg !3628
  %9 = load ptr, ptr %5, align 8, !dbg !3629
  call void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(32) %9) #3, !dbg !3630
  %10 = load ptr, ptr %6, align 8, !dbg !3631
  %11 = load ptr, ptr %5, align 8, !dbg !3632
  call void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %11) #3, !dbg !3633
  ret void, !dbg !3634
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(32) %2) #7 comdat align 2 !dbg !3635 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3643, metadata !DIExpression()), !dbg !3644
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3645, metadata !DIExpression()), !dbg !3646
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3647, metadata !DIExpression()), !dbg !3648
  %7 = load ptr, ptr %4, align 8, !dbg !3649
  %8 = load ptr, ptr %5, align 8, !dbg !3650
  %9 = load ptr, ptr %6, align 8, !dbg !3651
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(32) %9) #3, !dbg !3652
  ret void, !dbg !3653
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #7 comdat align 2 !dbg !3654 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3659, metadata !DIExpression()), !dbg !3660
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3661, metadata !DIExpression()), !dbg !3662
  %5 = load ptr, ptr %3, align 8, !dbg !3663
  %6 = load ptr, ptr %4, align 8, !dbg !3664
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) #3, !dbg !3665
  ret void, !dbg !3666
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(32) %2) #7 comdat align 2 !dbg !3667 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3671, metadata !DIExpression()), !dbg !3672
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3673, metadata !DIExpression()), !dbg !3674
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3675, metadata !DIExpression()), !dbg !3676
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3677
  %9 = load ptr, ptr %6, align 8, !dbg !3678
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 32, i1 false), !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #7 comdat align 2 !dbg !3681 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3685, metadata !DIExpression()), !dbg !3686
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3687, metadata !DIExpression()), !dbg !3688
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3689
  call void @_ZN17ProjectedCylinderD2Ev(ptr noundef nonnull align 4 dereferenceable(32) %6) #3, !dbg !3690
  ret void, !dbg !3691
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP17ProjectedCylinderS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !3692 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3696, metadata !DIExpression()), !dbg !3697
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3698, metadata !DIExpression()), !dbg !3699
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3700, metadata !DIExpression()), !dbg !3701
  %7 = load ptr, ptr %4, align 8, !dbg !3702
  %8 = load ptr, ptr %5, align 8, !dbg !3703
  call void @_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_(ptr noundef %7, ptr noundef %8), !dbg !3704
  ret void, !dbg !3705
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3706 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3712, metadata !DIExpression()), !dbg !3714
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !3715
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !3716
  %6 = load ptr, ptr %5, align 8, !dbg !3716
  %7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !3717
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3718
  %9 = load ptr, ptr %8, align 8, !dbg !3718
  %10 = ptrtoint ptr %6 to i64, !dbg !3719
  %11 = ptrtoint ptr %9 to i64, !dbg !3719
  %12 = sub i64 %10, %11, !dbg !3719
  %13 = sdiv exact i64 %12, 24, !dbg !3719
  ret i64 %13, !dbg !3720
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ProjectedBodySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3721 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3725, metadata !DIExpression()), !dbg !3726
  %12 = load ptr, ptr %3, align 8
  %13 = load i64, ptr %4, align 8, !dbg !3727
  %14 = icmp ne i64 %13, 0, !dbg !3729
  br i1 %14, label %15, label %137, !dbg !3730

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3731, metadata !DIExpression()), !dbg !3733
  %16 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3734
  store i64 %16, ptr %5, align 8, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3735, metadata !DIExpression()), !dbg !3736
  %17 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3737
  %18 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %17, i32 0, i32 2, !dbg !3738
  %19 = load ptr, ptr %18, align 8, !dbg !3738
  %20 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3739
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !3740
  %22 = load ptr, ptr %21, align 8, !dbg !3740
  %23 = ptrtoint ptr %19 to i64, !dbg !3741
  %24 = ptrtoint ptr %22 to i64, !dbg !3741
  %25 = sub i64 %23, %24, !dbg !3741
  %26 = sdiv exact i64 %25, 24, !dbg !3741
  store i64 %26, ptr %6, align 8, !dbg !3736
  %27 = load i64, ptr %5, align 8, !dbg !3742
  %28 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3744
  %29 = icmp ugt i64 %27, %28, !dbg !3745
  br i1 %29, label %36, label %30, !dbg !3746

30:                                               ; preds = %15
  %31 = load i64, ptr %6, align 8, !dbg !3747
  %32 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3748
  %33 = load i64, ptr %5, align 8, !dbg !3749
  %34 = sub i64 %32, %33, !dbg !3750
  %35 = icmp ugt i64 %31, %34, !dbg !3751
  br i1 %35, label %36, label %37, !dbg !3752

36:                                               ; preds = %30, %15
  unreachable, !dbg !3753

37:                                               ; preds = %30
  %38 = load i64, ptr %6, align 8, !dbg !3754
  %39 = load i64, ptr %4, align 8, !dbg !3756
  %40 = icmp uge i64 %38, %39, !dbg !3757
  br i1 %40, label %41, label %50, !dbg !3758

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3759
  %43 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %42, i32 0, i32 1, !dbg !3761
  %44 = load ptr, ptr %43, align 8, !dbg !3761
  %45 = load i64, ptr %4, align 8, !dbg !3762
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3763
  %47 = call noundef ptr @_ZSt27__uninitialized_default_n_aIP13ProjectedBodymS0_ET_S2_T0_RSaIT1_E(ptr noundef %44, i64 noundef %45, ptr noundef nonnull align 1 dereferenceable(1) %46), !dbg !3764
  %48 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3765
  %49 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %48, i32 0, i32 1, !dbg !3766
  store ptr %47, ptr %49, align 8, !dbg !3767
  br label %136, !dbg !3768

50:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3769, metadata !DIExpression()), !dbg !3771
  %51 = load i64, ptr %4, align 8, !dbg !3772
  %52 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %51, ptr noundef @.str), !dbg !3773
  store i64 %52, ptr %7, align 8, !dbg !3771
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3774, metadata !DIExpression()), !dbg !3779
  %53 = load i64, ptr %7, align 8, !dbg !3780
  %54 = call noundef ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %53), !dbg !3781
  store ptr %54, ptr %8, align 8, !dbg !3779
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3782, metadata !DIExpression()), !dbg !3785
  store ptr null, ptr %9, align 8, !dbg !3785
  %55 = load ptr, ptr %8, align 8, !dbg !3786
  %56 = load i64, ptr %5, align 8, !dbg !3788
  %57 = getelementptr inbounds %class.ProjectedBody, ptr %55, i64 %56, !dbg !3789
  %58 = load i64, ptr %4, align 8, !dbg !3790
  %59 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3791
  %60 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP13ProjectedBodymS0_ET_S2_T0_RSaIT1_E(ptr noundef %57, i64 noundef %58, ptr noundef nonnull align 1 dereferenceable(1) %59)
          to label %61 unwind label %75, !dbg !3792

61:                                               ; preds = %50
  %62 = load ptr, ptr %8, align 8, !dbg !3793
  %63 = load i64, ptr %5, align 8, !dbg !3794
  %64 = getelementptr inbounds %class.ProjectedBody, ptr %62, i64 %63, !dbg !3795
  store ptr %64, ptr %9, align 8, !dbg !3796
  %65 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3797
  %66 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %65, i32 0, i32 0, !dbg !3798
  %67 = load ptr, ptr %66, align 8, !dbg !3798
  %68 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3799
  %69 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %68, i32 0, i32 1, !dbg !3800
  %70 = load ptr, ptr %69, align 8, !dbg !3800
  %71 = load ptr, ptr %8, align 8, !dbg !3801
  %72 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3802
  %73 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ProjectedBodyS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %67, ptr noundef %70, ptr noundef %71, ptr noundef nonnull align 1 dereferenceable(1) %72)
          to label %74 unwind label %75, !dbg !3803

74:                                               ; preds = %61
  br label %100, !dbg !3804

75:                                               ; preds = %61, %50
  %76 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3805
  %77 = extractvalue { ptr, i32 } %76, 0, !dbg !3805
  store ptr %77, ptr %10, align 8, !dbg !3805
  %78 = extractvalue { ptr, i32 } %76, 1, !dbg !3805
  store i32 %78, ptr %11, align 4, !dbg !3805
  br label %79, !dbg !3805

79:                                               ; preds = %75
  %80 = load ptr, ptr %10, align 8, !dbg !3804
  %81 = call ptr @__cxa_begin_catch(ptr %80) #3, !dbg !3804
  %82 = load ptr, ptr %9, align 8, !dbg !3806
  %83 = icmp ne ptr %82, null, !dbg !3806
  br i1 %83, label %84, label %95, !dbg !3809

84:                                               ; preds = %79
  %85 = load ptr, ptr %9, align 8, !dbg !3810
  %86 = load ptr, ptr %9, align 8, !dbg !3811
  %87 = load i64, ptr %4, align 8, !dbg !3812
  %88 = getelementptr inbounds %class.ProjectedBody, ptr %86, i64 %87, !dbg !3813
  %89 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3814
  invoke void @_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E(ptr noundef %85, ptr noundef %88, ptr noundef nonnull align 1 dereferenceable(1) %89)
          to label %90 unwind label %91, !dbg !3815

90:                                               ; preds = %84
  br label %95, !dbg !3815

91:                                               ; preds = %98, %95, %84
  %92 = landingpad { ptr, i32 }
          cleanup, !dbg !3816
  %93 = extractvalue { ptr, i32 } %92, 0, !dbg !3816
  store ptr %93, ptr %10, align 8, !dbg !3816
  %94 = extractvalue { ptr, i32 } %92, 1, !dbg !3816
  store i32 %94, ptr %11, align 4, !dbg !3816
  invoke void @__cxa_end_catch()
          to label %99 unwind label %143, !dbg !3817

95:                                               ; preds = %90, %79
  %96 = load ptr, ptr %8, align 8, !dbg !3818
  %97 = load i64, ptr %7, align 8, !dbg !3819
  invoke void @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %96, i64 noundef %97)
          to label %98 unwind label %91, !dbg !3820

98:                                               ; preds = %95
  invoke void @__cxa_rethrow() #16
          to label %146 unwind label %91, !dbg !3821

99:                                               ; preds = %91
  br label %138, !dbg !3817

100:                                              ; preds = %74
  %101 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3822
  %102 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %101, i32 0, i32 0, !dbg !3823
  %103 = load ptr, ptr %102, align 8, !dbg !3823
  %104 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3824
  %105 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %104, i32 0, i32 1, !dbg !3825
  %106 = load ptr, ptr %105, align 8, !dbg !3825
  %107 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3826
  call void @_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E(ptr noundef %103, ptr noundef %106, ptr noundef nonnull align 1 dereferenceable(1) %107), !dbg !3827
  %108 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3828
  %109 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %108, i32 0, i32 0, !dbg !3829
  %110 = load ptr, ptr %109, align 8, !dbg !3829
  %111 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3830
  %112 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %111, i32 0, i32 2, !dbg !3831
  %113 = load ptr, ptr %112, align 8, !dbg !3831
  %114 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3832
  %115 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %114, i32 0, i32 0, !dbg !3833
  %116 = load ptr, ptr %115, align 8, !dbg !3833
  %117 = ptrtoint ptr %113 to i64, !dbg !3834
  %118 = ptrtoint ptr %116 to i64, !dbg !3834
  %119 = sub i64 %117, %118, !dbg !3834
  %120 = sdiv exact i64 %119, 24, !dbg !3834
  call void @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %110, i64 noundef %120), !dbg !3835
  %121 = load ptr, ptr %8, align 8, !dbg !3836
  %122 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3837
  %123 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %122, i32 0, i32 0, !dbg !3838
  store ptr %121, ptr %123, align 8, !dbg !3839
  %124 = load ptr, ptr %8, align 8, !dbg !3840
  %125 = load i64, ptr %5, align 8, !dbg !3841
  %126 = getelementptr inbounds %class.ProjectedBody, ptr %124, i64 %125, !dbg !3842
  %127 = load i64, ptr %4, align 8, !dbg !3843
  %128 = getelementptr inbounds %class.ProjectedBody, ptr %126, i64 %127, !dbg !3844
  %129 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3845
  %130 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %129, i32 0, i32 1, !dbg !3846
  store ptr %128, ptr %130, align 8, !dbg !3847
  %131 = load ptr, ptr %8, align 8, !dbg !3848
  %132 = load i64, ptr %7, align 8, !dbg !3849
  %133 = getelementptr inbounds %class.ProjectedBody, ptr %131, i64 %132, !dbg !3850
  %134 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %12, i32 0, i32 0, !dbg !3851
  %135 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %134, i32 0, i32 2, !dbg !3852
  store ptr %133, ptr %135, align 8, !dbg !3853
  br label %136

136:                                              ; preds = %100, %41
  br label %137, !dbg !3854

137:                                              ; preds = %136, %2
  ret void, !dbg !3855

138:                                              ; preds = %99
  %139 = load ptr, ptr %10, align 8, !dbg !3817
  %140 = load i32, ptr %11, align 4, !dbg !3817
  %141 = insertvalue { ptr, i32 } poison, ptr %139, 0, !dbg !3817
  %142 = insertvalue { ptr, i32 } %141, i32 %140, 1, !dbg !3817
  resume { ptr, i32 } %142, !dbg !3817

143:                                              ; preds = %91
  %144 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3817
  %145 = extractvalue { ptr, i32 } %144, 0, !dbg !3817
  call void @__clang_call_terminate(ptr %145) #17, !dbg !3817
  unreachable, !dbg !3817

146:                                              ; preds = %98
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ProjectedBodySaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3856 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3860, metadata !DIExpression()), !dbg !3861
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3862, metadata !DIExpression()), !dbg !3863
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3864, metadata !DIExpression()), !dbg !3866
  %7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %6, i32 0, i32 0, !dbg !3867
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !3868
  %9 = load ptr, ptr %8, align 8, !dbg !3868
  %10 = load ptr, ptr %4, align 8, !dbg !3869
  %11 = ptrtoint ptr %9 to i64, !dbg !3870
  %12 = ptrtoint ptr %10 to i64, !dbg !3870
  %13 = sub i64 %11, %12, !dbg !3870
  %14 = sdiv exact i64 %13, 24, !dbg !3870
  store i64 %14, ptr %5, align 8, !dbg !3866
  %15 = load i64, ptr %5, align 8, !dbg !3866
  %16 = icmp ne i64 %15, 0, !dbg !3866
  br i1 %16, label %17, label %27, !dbg !3871

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !3872
  %19 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %6, i32 0, i32 0, !dbg !3874
  %20 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !3875
  %21 = load ptr, ptr %20, align 8, !dbg !3875
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !3876
  invoke void @_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E(ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %28, !dbg !3877

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !3878
  %25 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %6, i32 0, i32 0, !dbg !3879
  %26 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedBody, std::allocator<ProjectedBody>>::_Vector_impl_data", ptr %25, i32 0, i32 1, !dbg !3880
  store ptr %24, ptr %26, align 8, !dbg !3881
  br label %27, !dbg !3882

27:                                               ; preds = %23, %2
  ret void, !dbg !3883

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3877
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !3877
  call void @__clang_call_terminate(ptr %30) #17, !dbg !3877
  unreachable, !dbg !3877
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3884 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3886, metadata !DIExpression()), !dbg !3887
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3888
  %5 = call noundef i64 @_ZNSt6vectorI13ProjectedBodySaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !3889
  ret i64 %5, !dbg !3890
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP13ProjectedBodymS0_ET_S2_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !3891 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3899, metadata !DIExpression()), !dbg !3900
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3901, metadata !DIExpression()), !dbg !3902
  %7 = load ptr, ptr %4, align 8, !dbg !3903
  %8 = load i64, ptr %5, align 8, !dbg !3904
  %9 = call noundef ptr @_ZSt25__uninitialized_default_nIP13ProjectedBodymET_S2_T0_(ptr noundef %7, i64 noundef %8), !dbg !3905
  ret ptr %9, !dbg !3906
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3907 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3918, metadata !DIExpression()), !dbg !3920
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !3921
  ret ptr %4, !dbg !3922
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !3923 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3930, metadata !DIExpression()), !dbg !3931
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3932, metadata !DIExpression()), !dbg !3933
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3934
  %11 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3936
  %12 = sub i64 %10, %11, !dbg !3937
  %13 = load i64, ptr %5, align 8, !dbg !3938
  %14 = icmp ult i64 %12, %13, !dbg !3939
  br i1 %14, label %15, label %17, !dbg !3940

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !3941
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #16, !dbg !3942
  unreachable, !dbg !3942

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3943, metadata !DIExpression()), !dbg !3944
  %18 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3945
  %19 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3946
  store i64 %19, ptr %8, align 8, !dbg !3946
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !3947
  %21 = load i64, ptr %20, align 8, !dbg !3947
  %22 = add i64 %18, %21, !dbg !3948
  store i64 %22, ptr %7, align 8, !dbg !3944
  %23 = load i64, ptr %7, align 8, !dbg !3949
  %24 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3950
  %25 = icmp ult i64 %23, %24, !dbg !3951
  br i1 %25, label %30, label %26, !dbg !3952

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !3953
  %28 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3954
  %29 = icmp ugt i64 %27, %28, !dbg !3955
  br i1 %29, label %30, label %32, !dbg !3956

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3957
  br label %34, !dbg !3956

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !3958
  br label %34, !dbg !3956

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !3956
  ret i64 %35, !dbg !3959
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !3960 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3964, metadata !DIExpression()), !dbg !3965
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3968
  %7 = icmp ne i64 %6, 0, !dbg !3969
  br i1 %7, label %8, label %12, !dbg !3968

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %5, i32 0, i32 0, !dbg !3970
  %10 = load i64, ptr %4, align 8, !dbg !3971
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !3972
  br label %13, !dbg !3968

12:                                               ; preds = %2
  br label %13, !dbg !3968

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !3968
  ret ptr %14, !dbg !3973
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ProjectedBodyS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #4 comdat !dbg !3974 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3980, metadata !DIExpression()), !dbg !3981
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3982, metadata !DIExpression()), !dbg !3983
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3984, metadata !DIExpression()), !dbg !3985
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3986, metadata !DIExpression()), !dbg !3987
  %9 = load ptr, ptr %5, align 8, !dbg !3988
  %10 = call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ProjectedBodyPKS0_ET0_PT_(ptr noundef %9), !dbg !3988
  %11 = load ptr, ptr %6, align 8, !dbg !3989
  %12 = call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ProjectedBodyPKS0_ET0_PT_(ptr noundef %11), !dbg !3989
  %13 = load ptr, ptr %7, align 8, !dbg !3990
  %14 = load ptr, ptr %8, align 8, !dbg !3991
  %15 = call noundef ptr @_ZSt22__uninitialized_copy_aIPK13ProjectedBodyPS0_S0_ET0_T_S5_S4_RSaIT1_E(ptr noundef %10, ptr noundef %12, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %14), !dbg !3992
  ret ptr %15, !dbg !3993
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !3994 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3998, metadata !DIExpression()), !dbg !3999
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4000, metadata !DIExpression()), !dbg !4001
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4002, metadata !DIExpression()), !dbg !4003
  %7 = load ptr, ptr %4, align 8, !dbg !4004
  %8 = load ptr, ptr %5, align 8, !dbg !4005
  call void @_ZSt8_DestroyIP13ProjectedBodyEvT_S2_(ptr noundef %7, ptr noundef %8), !dbg !4006
  ret void, !dbg !4007
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !4008 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4012, metadata !DIExpression()), !dbg !4013
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4014, metadata !DIExpression()), !dbg !4015
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4016, metadata !DIExpression()), !dbg !4017
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !4018
  %9 = icmp ne ptr %8, null, !dbg !4018
  br i1 %9, label %10, label %14, !dbg !4020

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %7, i32 0, i32 0, !dbg !4021
  %12 = load ptr, ptr %5, align 8, !dbg !4022
  %13 = load i64, ptr %6, align 8, !dbg !4023
  call void @_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !4024
  br label %14, !dbg !4024

14:                                               ; preds = %10, %3
  ret void, !dbg !4025
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI13ProjectedBodySaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !4026 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4033, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64 384307168202282325, ptr %3, align 8, !dbg !4036
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4037, metadata !DIExpression()), !dbg !4038
  %5 = load ptr, ptr %2, align 8, !dbg !4039
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !4040
  store i64 %6, ptr %4, align 8, !dbg !4038
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !4041
  %8 = load i64, ptr %7, align 8, !dbg !4041
  ret i64 %8, !dbg !4042
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !4043 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4051, metadata !DIExpression()), !dbg !4053
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %3, i32 0, i32 0, !dbg !4054
  ret ptr %4, !dbg !4055
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !4056 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4057, metadata !DIExpression()), !dbg !4058
  %3 = load ptr, ptr %2, align 8, !dbg !4059
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4060
  ret i64 %4, !dbg !4061
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !4062 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4069, metadata !DIExpression()), !dbg !4071
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4072
  ret i64 %4, !dbg !4073
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !4074 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4076, metadata !DIExpression()), !dbg !4077
  %3 = load ptr, ptr %2, align 8
  ret i64 384307168202282325, !dbg !4078
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP13ProjectedBodymET_S2_T0_(ptr noundef %0, i64 noundef %1) #4 comdat !dbg !4079 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4083, metadata !DIExpression()), !dbg !4084
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4087, metadata !DIExpression()), !dbg !4088
  store i8 1, ptr %5, align 1, !dbg !4088
  %6 = load ptr, ptr %3, align 8, !dbg !4089
  %7 = load i64, ptr %4, align 8, !dbg !4090
  %8 = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ProjectedBodymEET_S4_T0_(ptr noundef %6, i64 noundef %7), !dbg !4091
  ret ptr %8, !dbg !4092
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ProjectedBodymEET_S4_T0_(ptr noundef %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4093 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4095, metadata !DIExpression()), !dbg !4096
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4099, metadata !DIExpression()), !dbg !4100
  %8 = load ptr, ptr %3, align 8, !dbg !4101
  store ptr %8, ptr %5, align 8, !dbg !4100
  br label %9, !dbg !4102

9:                                                ; preds = %15, %2
  %10 = load i64, ptr %4, align 8, !dbg !4104
  %11 = icmp ugt i64 %10, 0, !dbg !4107
  br i1 %11, label %12, label %30, !dbg !4108

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !4109
  invoke void @_ZSt10_ConstructI13ProjectedBodyJEEvPT_DpOT0_(ptr noundef %13)
          to label %14 unwind label %20, !dbg !4110

14:                                               ; preds = %12
  br label %15, !dbg !4110

15:                                               ; preds = %14
  %16 = load i64, ptr %4, align 8, !dbg !4111
  %17 = add i64 %16, -1, !dbg !4111
  store i64 %17, ptr %4, align 8, !dbg !4111
  %18 = load ptr, ptr %5, align 8, !dbg !4112
  %19 = getelementptr inbounds %class.ProjectedBody, ptr %18, i32 1, !dbg !4112
  store ptr %19, ptr %5, align 8, !dbg !4112
  br label %9, !dbg !4113, !llvm.loop !4114

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4116
  %22 = extractvalue { ptr, i32 } %21, 0, !dbg !4116
  store ptr %22, ptr %6, align 8, !dbg !4116
  %23 = extractvalue { ptr, i32 } %21, 1, !dbg !4116
  store i32 %23, ptr %7, align 4, !dbg !4116
  br label %24, !dbg !4116

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8, !dbg !4117
  %26 = call ptr @__cxa_begin_catch(ptr %25) #3, !dbg !4117
  %27 = load ptr, ptr %3, align 8, !dbg !4118
  %28 = load ptr, ptr %5, align 8, !dbg !4120
  invoke void @_ZSt8_DestroyIP13ProjectedBodyEvT_S2_(ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %32, !dbg !4121

29:                                               ; preds = %24
  invoke void @__cxa_rethrow() #16
          to label %46 unwind label %32, !dbg !4122

30:                                               ; preds = %9
  %31 = load ptr, ptr %5, align 8, !dbg !4123
  ret ptr %31, !dbg !4124

32:                                               ; preds = %29, %24
  %33 = landingpad { ptr, i32 }
          cleanup, !dbg !4125
  %34 = extractvalue { ptr, i32 } %33, 0, !dbg !4125
  store ptr %34, ptr %6, align 8, !dbg !4125
  %35 = extractvalue { ptr, i32 } %33, 1, !dbg !4125
  store i32 %35, ptr %7, align 4, !dbg !4125
  invoke void @__cxa_end_catch()
          to label %36 unwind label %43, !dbg !4126

36:                                               ; preds = %32
  br label %38, !dbg !4126

37:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !4126
  unreachable, !dbg !4126

38:                                               ; preds = %36
  %39 = load ptr, ptr %6, align 8, !dbg !4126
  %40 = load i32, ptr %7, align 4, !dbg !4126
  %41 = insertvalue { ptr, i32 } poison, ptr %39, 0, !dbg !4126
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1, !dbg !4126
  resume { ptr, i32 } %42, !dbg !4126

43:                                               ; preds = %32
  %44 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4126
  %45 = extractvalue { ptr, i32 } %44, 0, !dbg !4126
  call void @__clang_call_terminate(ptr %45) #17, !dbg !4126
  unreachable, !dbg !4126

46:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI13ProjectedBodyJEEvPT_DpOT0_(ptr noundef %0) #4 comdat !dbg !4127 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4132
  %3 = load ptr, ptr %2, align 8, !dbg !4133
  call void @_ZN13ProjectedBodyC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3), !dbg !4134
  ret void, !dbg !4135
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP13ProjectedBodyEvT_S2_(ptr noundef %0, ptr noundef %1) #4 comdat !dbg !4136 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4140, metadata !DIExpression()), !dbg !4141
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4143
  %5 = load ptr, ptr %3, align 8, !dbg !4144
  %6 = load ptr, ptr %4, align 8, !dbg !4145
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ProjectedBodyEEvT_S4_(ptr noundef %5, ptr noundef %6), !dbg !4146
  ret void, !dbg !4147
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13ProjectedBodyC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4148 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4149, metadata !DIExpression()), !dbg !4150
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.ProjectedBody, ptr %3, i32 0, i32 0, !dbg !4151
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4151
  ret void, !dbg !4152
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4153 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4155
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4156
  ret void, !dbg !4157
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4158 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4159, metadata !DIExpression()), !dbg !4160
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4161
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4161
  ret void, !dbg !4162
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4163 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4164, metadata !DIExpression()), !dbg !4166
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaI17ProjectedCylinderEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4167
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4168
  ret void, !dbg !4169
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI17ProjectedCylinderEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !4170 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4171, metadata !DIExpression()), !dbg !4173
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4174
  ret void, !dbg !4175
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4176 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4177, metadata !DIExpression()), !dbg !4179
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !4180
  store ptr null, ptr %4, align 8, !dbg !4180
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !4181
  store ptr null, ptr %5, align 8, !dbg !4181
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !4182
  store ptr null, ptr %6, align 8, !dbg !4182
  ret void, !dbg !4183
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !4184 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !4187
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ProjectedBodyEEvT_S4_(ptr noundef %0, ptr noundef %1) #4 comdat align 2 !dbg !4188 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4190, metadata !DIExpression()), !dbg !4191
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4192, metadata !DIExpression()), !dbg !4193
  br label %5, !dbg !4194

5:                                                ; preds = %11, %2
  %6 = load ptr, ptr %3, align 8, !dbg !4195
  %7 = load ptr, ptr %4, align 8, !dbg !4198
  %8 = icmp ne ptr %6, %7, !dbg !4199
  br i1 %8, label %9, label %14, !dbg !4200

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !4201
  call void @_ZSt8_DestroyI13ProjectedBodyEvPT_(ptr noundef %10), !dbg !4202
  br label %11, !dbg !4202

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !dbg !4203
  %13 = getelementptr inbounds %class.ProjectedBody, ptr %12, i32 1, !dbg !4203
  store ptr %13, ptr %3, align 8, !dbg !4203
  br label %5, !dbg !4204, !llvm.loop !4205

14:                                               ; preds = %5
  ret void, !dbg !4207
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI13ProjectedBodyEvPT_(ptr noundef %0) #7 comdat !dbg !4208 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4209, metadata !DIExpression()), !dbg !4210
  %3 = load ptr, ptr %2, align 8, !dbg !4211
  call void @_ZN13ProjectedBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4212
  ret void, !dbg !4213
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13ProjectedBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4214 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4215, metadata !DIExpression()), !dbg !4216
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.ProjectedBody, ptr %3, i32 0, i32 0, !dbg !4217
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4217
  ret void, !dbg !4219
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4220 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4222
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4223
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !4225
  %6 = load ptr, ptr %5, align 8, !dbg !4225
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4226
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !4227
  %9 = load ptr, ptr %8, align 8, !dbg !4227
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4228
  invoke void @_ZSt8_DestroyIP17ProjectedCylinderS0_EvT_S2_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !4229

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4230
  ret void, !dbg !4231

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4229
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !4229
  call void @__clang_call_terminate(ptr %14) #17, !dbg !4229
  unreachable, !dbg !4229
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4232 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4233, metadata !DIExpression()), !dbg !4234
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4235
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !4237
  %6 = load ptr, ptr %5, align 8, !dbg !4237
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4238
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !4239
  %9 = load ptr, ptr %8, align 8, !dbg !4239
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4240
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !4241
  %12 = load ptr, ptr %11, align 8, !dbg !4241
  %13 = ptrtoint ptr %9 to i64, !dbg !4242
  %14 = ptrtoint ptr %12 to i64, !dbg !4242
  %15 = sub i64 %13, %14, !dbg !4242
  %16 = sdiv exact i64 %15, 32, !dbg !4242
  invoke void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !4243

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !4244
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #3, !dbg !4244
  ret void, !dbg !4245

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4243
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !4243
  call void @__clang_call_terminate(ptr %21) #17, !dbg !4243
  unreachable, !dbg !4243
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !4246 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4248, metadata !DIExpression()), !dbg !4249
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4250
  ret void, !dbg !4252
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !4253 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4254, metadata !DIExpression()), !dbg !4255
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !4256
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 !dbg !4257 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4258, metadata !DIExpression()), !dbg !4259
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4261
  %5 = load ptr, ptr %3, align 8, !dbg !4262
  %6 = load i64, ptr %4, align 8, !dbg !4263
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !4264
  ret ptr %7, !dbg !4265
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !4266 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4271, metadata !DIExpression()), !dbg !4273
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4274, metadata !DIExpression()), !dbg !4275
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4276, metadata !DIExpression()), !dbg !4277
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !4278
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !4280
  %10 = icmp ugt i64 %8, %9, !dbg !4281
  br i1 %10, label %11, label %16, !dbg !4282

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !4283
  %13 = icmp ugt i64 %12, 768614336404564650, !dbg !4286
  br i1 %13, label %14, label %15, !dbg !4287

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #16, !dbg !4288
  unreachable, !dbg !4288

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #16, !dbg !4289
  unreachable, !dbg !4289

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !4290
  %18 = mul i64 %17, 24, !dbg !4291
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #18, !dbg !4292
  ret ptr %19, !dbg !4293
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPK13ProjectedBodyPS0_S0_ET0_T_S5_S4_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #4 comdat !dbg !4294 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4299, metadata !DIExpression()), !dbg !4300
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4301, metadata !DIExpression()), !dbg !4302
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4303, metadata !DIExpression()), !dbg !4304
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4305, metadata !DIExpression()), !dbg !4306
  %9 = load ptr, ptr %5, align 8, !dbg !4307
  %10 = load ptr, ptr %6, align 8, !dbg !4308
  %11 = load ptr, ptr %7, align 8, !dbg !4309
  %12 = call noundef ptr @_ZSt18uninitialized_copyIPK13ProjectedBodyPS0_ET0_T_S5_S4_(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !4310
  ret ptr %12, !dbg !4311
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ProjectedBodyPKS0_ET0_PT_(ptr noundef %0) #7 comdat !dbg !4312 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4317, metadata !DIExpression()), !dbg !4318
  %3 = load ptr, ptr %2, align 8, !dbg !4319
  ret ptr %3, !dbg !4320
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPK13ProjectedBodyPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat !dbg !4321 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4325, metadata !DIExpression()), !dbg !4326
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4327, metadata !DIExpression()), !dbg !4328
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4331, metadata !DIExpression()), !dbg !4332
  store i8 1, ptr %7, align 1, !dbg !4332
  %8 = load ptr, ptr %4, align 8, !dbg !4333
  %9 = load ptr, ptr %5, align 8, !dbg !4334
  %10 = load ptr, ptr %6, align 8, !dbg !4335
  %11 = call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ProjectedBodyPS2_EET0_T_S7_S6_(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !4336
  ret ptr %11, !dbg !4337
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ProjectedBodyPS2_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4338 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4343, metadata !DIExpression()), !dbg !4344
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4345, metadata !DIExpression()), !dbg !4346
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4347, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4349, metadata !DIExpression()), !dbg !4350
  %10 = load ptr, ptr %6, align 8, !dbg !4351
  store ptr %10, ptr %7, align 8, !dbg !4350
  br label %11, !dbg !4352

11:                                               ; preds = %19, %3
  %12 = load ptr, ptr %4, align 8, !dbg !4354
  %13 = load ptr, ptr %5, align 8, !dbg !4357
  %14 = icmp ne ptr %12, %13, !dbg !4358
  br i1 %14, label %15, label %34, !dbg !4359

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !dbg !4360
  %17 = load ptr, ptr %4, align 8, !dbg !4361
  invoke void @_ZSt10_ConstructI13ProjectedBodyJRKS0_EEvPT_DpOT0_(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %18 unwind label %24, !dbg !4362

18:                                               ; preds = %15
  br label %19, !dbg !4362

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !dbg !4363
  %21 = getelementptr inbounds %class.ProjectedBody, ptr %20, i32 1, !dbg !4363
  store ptr %21, ptr %4, align 8, !dbg !4363
  %22 = load ptr, ptr %7, align 8, !dbg !4364
  %23 = getelementptr inbounds %class.ProjectedBody, ptr %22, i32 1, !dbg !4364
  store ptr %23, ptr %7, align 8, !dbg !4364
  br label %11, !dbg !4365, !llvm.loop !4366

24:                                               ; preds = %15
  %25 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4368
  %26 = extractvalue { ptr, i32 } %25, 0, !dbg !4368
  store ptr %26, ptr %8, align 8, !dbg !4368
  %27 = extractvalue { ptr, i32 } %25, 1, !dbg !4368
  store i32 %27, ptr %9, align 4, !dbg !4368
  br label %28, !dbg !4368

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 8, !dbg !4369
  %30 = call ptr @__cxa_begin_catch(ptr %29) #3, !dbg !4369
  %31 = load ptr, ptr %6, align 8, !dbg !4370
  %32 = load ptr, ptr %7, align 8, !dbg !4372
  invoke void @_ZSt8_DestroyIP13ProjectedBodyEvT_S2_(ptr noundef %31, ptr noundef %32)
          to label %33 unwind label %36, !dbg !4373

33:                                               ; preds = %28
  invoke void @__cxa_rethrow() #16
          to label %50 unwind label %36, !dbg !4374

34:                                               ; preds = %11
  %35 = load ptr, ptr %7, align 8, !dbg !4375
  ret ptr %35, !dbg !4376

36:                                               ; preds = %33, %28
  %37 = landingpad { ptr, i32 }
          cleanup, !dbg !4377
  %38 = extractvalue { ptr, i32 } %37, 0, !dbg !4377
  store ptr %38, ptr %8, align 8, !dbg !4377
  %39 = extractvalue { ptr, i32 } %37, 1, !dbg !4377
  store i32 %39, ptr %9, align 4, !dbg !4377
  invoke void @__cxa_end_catch()
          to label %40 unwind label %47, !dbg !4378

40:                                               ; preds = %36
  br label %42, !dbg !4378

41:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !4378
  unreachable, !dbg !4378

42:                                               ; preds = %40
  %43 = load ptr, ptr %8, align 8, !dbg !4378
  %44 = load i32, ptr %9, align 4, !dbg !4378
  %45 = insertvalue { ptr, i32 } poison, ptr %43, 0, !dbg !4378
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1, !dbg !4378
  resume { ptr, i32 } %46, !dbg !4378

47:                                               ; preds = %36
  %48 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4378
  %49 = extractvalue { ptr, i32 } %48, 0, !dbg !4378
  call void @__clang_call_terminate(ptr %49) #17, !dbg !4378
  unreachable, !dbg !4378

50:                                               ; preds = %33
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI13ProjectedBodyJRKS0_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #4 comdat !dbg !4379 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4387, metadata !DIExpression()), !dbg !4388
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4389, metadata !DIExpression()), !dbg !4390
  %5 = load ptr, ptr %3, align 8, !dbg !4391
  %6 = load ptr, ptr %4, align 8, !dbg !4392
  call void @_ZN13ProjectedBodyC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6), !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13ProjectedBodyC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 comdat align 2 !dbg !4395 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4399, metadata !DIExpression()), !dbg !4400
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4401, metadata !DIExpression()), !dbg !4400
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.ProjectedBody, ptr %5, i32 0, i32 0, !dbg !4402
  %7 = load ptr, ptr %4, align 8, !dbg !4402
  %8 = getelementptr inbounds %class.ProjectedBody, ptr %7, i32 0, i32 0, !dbg !4402
  call void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8), !dbg !4402
  ret void, !dbg !4402
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4403 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4404, metadata !DIExpression()), !dbg !4405
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4406, metadata !DIExpression()), !dbg !4407
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8, !dbg !4408
  %12 = call noundef i64 @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4409
  %13 = load ptr, ptr %4, align 8, !dbg !4410
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #3, !dbg !4411
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_(ptr sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 1 dereferenceable(1) %14), !dbg !4412
  invoke void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %15 unwind label %34, !dbg !4413

15:                                               ; preds = %2
  call void @_ZNSaI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !4413
  %16 = load ptr, ptr %4, align 8, !dbg !4414
  %17 = call ptr @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #3, !dbg !4416
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !4416
  store ptr %17, ptr %18, align 8, !dbg !4416
  %19 = load ptr, ptr %4, align 8, !dbg !4417
  %20 = call ptr @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #3, !dbg !4418
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !4418
  store ptr %20, ptr %21, align 8, !dbg !4418
  %22 = getelementptr inbounds %"struct.std::_Vector_base", ptr %10, i32 0, i32 0, !dbg !4419
  %23 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %22, i32 0, i32 0, !dbg !4420
  %24 = load ptr, ptr %23, align 8, !dbg !4420
  %25 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !4421
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !4422
  %27 = load ptr, ptr %26, align 8, !dbg !4422
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !4422
  %29 = load ptr, ptr %28, align 8, !dbg !4422
  %30 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %27, ptr %29, ptr noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %31 unwind label %38, !dbg !4422

31:                                               ; preds = %15
  %32 = getelementptr inbounds %"struct.std::_Vector_base", ptr %10, i32 0, i32 0, !dbg !4423
  %33 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %32, i32 0, i32 1, !dbg !4424
  store ptr %30, ptr %33, align 8, !dbg !4425
  ret void, !dbg !4426

34:                                               ; preds = %2
  %35 = landingpad { ptr, i32 }
          cleanup, !dbg !4426
  %36 = extractvalue { ptr, i32 } %35, 0, !dbg !4426
  store ptr %36, ptr %6, align 8, !dbg !4426
  %37 = extractvalue { ptr, i32 } %35, 1, !dbg !4426
  store i32 %37, ptr %7, align 4, !dbg !4426
  call void @_ZNSaI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !4413
  br label %42, !dbg !4413

38:                                               ; preds = %15
  %39 = landingpad { ptr, i32 }
          cleanup, !dbg !4427
  %40 = extractvalue { ptr, i32 } %39, 0, !dbg !4427
  store ptr %40, ptr %6, align 8, !dbg !4427
  %41 = extractvalue { ptr, i32 } %39, 1, !dbg !4427
  store i32 %41, ptr %7, align 4, !dbg !4427
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !4427
  br label %42, !dbg !4427

42:                                               ; preds = %38, %34
  %43 = load ptr, ptr %6, align 8, !dbg !4413
  %44 = load i32, ptr %7, align 4, !dbg !4413
  %45 = insertvalue { ptr, i32 } poison, ptr %43, 0, !dbg !4413
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1, !dbg !4413
  resume { ptr, i32 } %46, !dbg !4413
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 !dbg !4428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4429, metadata !DIExpression()), !dbg !4430
  %5 = load ptr, ptr %4, align 8, !dbg !4431
  call void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_(ptr sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %5), !dbg !4432
  ret void, !dbg !4433
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4434 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4437, metadata !DIExpression()), !dbg !4438
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4439, metadata !DIExpression()), !dbg !4440
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %9, i32 0, i32 0, !dbg !4441
  %11 = load ptr, ptr %6, align 8, !dbg !4442
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 1 dereferenceable(1) %11) #3, !dbg !4441
  %12 = load i64, ptr %5, align 8, !dbg !4443
  invoke void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %12)
          to label %13 unwind label %14, !dbg !4445

13:                                               ; preds = %3
  ret void, !dbg !4446

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup, !dbg !4447
  %16 = extractvalue { ptr, i32 } %15, 0, !dbg !4447
  store ptr %16, ptr %7, align 8, !dbg !4447
  %17 = extractvalue { ptr, i32 } %15, 1, !dbg !4447
  store i32 %17, ptr %8, align 4, !dbg !4447
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !4447
  br label %18, !dbg !4447

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !dbg !4447
  %20 = load i32, ptr %8, align 4, !dbg !4447
  %21 = insertvalue { ptr, i32 } poison, ptr %19, 0, !dbg !4447
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1, !dbg !4447
  resume { ptr, i32 } %22, !dbg !4447
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !4448 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4449, metadata !DIExpression()), !dbg !4450
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4451
  ret void, !dbg !4453
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #4 comdat !dbg !4454 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4461, metadata !DIExpression()), !dbg !4462
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4463, metadata !DIExpression()), !dbg !4464
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false), !dbg !4467
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 8, i1 false), !dbg !4468
  %13 = load ptr, ptr %7, align 8, !dbg !4469
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !4470
  %15 = load ptr, ptr %14, align 8, !dbg !4470
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !4470
  %17 = load ptr, ptr %16, align 8, !dbg !4470
  %18 = call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %15, ptr %17, ptr noundef %13), !dbg !4470
  ret ptr %18, !dbg !4471
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !4472 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4473, metadata !DIExpression()), !dbg !4474
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !4475
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !4476
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !4477
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !4478
  %8 = load ptr, ptr %7, align 8, !dbg !4478
  ret ptr %8, !dbg !4478
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !4479 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4480, metadata !DIExpression()), !dbg !4481
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !4482
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !4483
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !4484
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !4485
  %8 = load ptr, ptr %7, align 8, !dbg !4485
  ret ptr %8, !dbg !4485
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7 comdat align 2 !dbg !4486 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4487, metadata !DIExpression()), !dbg !4488
  %5 = load ptr, ptr %4, align 8, !dbg !4489
  call void @_ZNSaI17ProjectedCylinderEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !4489
  ret void, !dbg !4490
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI17ProjectedCylinderEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !dbg !4491 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4492, metadata !DIExpression()), !dbg !4493
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4494, metadata !DIExpression()), !dbg !4495
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4496
  call void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #3, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !dbg !4499 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4500, metadata !DIExpression()), !dbg !4501
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4502, metadata !DIExpression()), !dbg !4503
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !4504
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !dbg !4505 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4506, metadata !DIExpression()), !dbg !4507
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4508, metadata !DIExpression()), !dbg !4509
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4510
  call void @_ZNSaI17ProjectedCylinderEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #3, !dbg !4511
  call void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !4512
  ret void, !dbg !4513
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !4514 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4516
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4517, metadata !DIExpression()), !dbg !4518
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !4519
  %7 = call noundef ptr @_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %6), !dbg !4520
  %8 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !4521
  %9 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %8, i32 0, i32 0, !dbg !4522
  store ptr %7, ptr %9, align 8, !dbg !4523
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !4524
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !4525
  %12 = load ptr, ptr %11, align 8, !dbg !4525
  %13 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !4526
  %14 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %13, i32 0, i32 1, !dbg !4527
  store ptr %12, ptr %14, align 8, !dbg !4528
  %15 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !4529
  %16 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %15, i32 0, i32 0, !dbg !4530
  %17 = load ptr, ptr %16, align 8, !dbg !4530
  %18 = load i64, ptr %4, align 8, !dbg !4531
  %19 = getelementptr inbounds %class.ProjectedCylinder, ptr %17, i64 %18, !dbg !4532
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !4533
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder>>::_Vector_impl_data", ptr %20, i32 0, i32 2, !dbg !4534
  store ptr %19, ptr %21, align 8, !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #4 comdat !dbg !4537 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4541, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4543, metadata !DIExpression()), !dbg !4544
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4547, metadata !DIExpression()), !dbg !4548
  store i8 1, ptr %7, align 1, !dbg !4548
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false), !dbg !4549
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false), !dbg !4550
  %12 = load ptr, ptr %6, align 8, !dbg !4551
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !4552
  %14 = load ptr, ptr %13, align 8, !dbg !4552
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !4552
  %16 = load ptr, ptr %15, align 8, !dbg !4552
  %17 = call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %14, ptr %16, ptr noundef %12), !dbg !4552
  ret ptr %17, !dbg !4553
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4554 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4558, metadata !DIExpression()), !dbg !4559
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4560, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4562, metadata !DIExpression()), !dbg !4563
  %12 = load ptr, ptr %6, align 8, !dbg !4564
  store ptr %12, ptr %7, align 8, !dbg !4563
  br label %13, !dbg !4565

13:                                               ; preds = %19, %3
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !4567
  br i1 %14, label %15, label %33, !dbg !4570

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !dbg !4571
  %17 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !4572
  invoke void @_ZSt10_ConstructI17ProjectedCylinderJRKS0_EEvPT_DpOT0_(ptr noundef %16, ptr noundef nonnull align 4 dereferenceable(32) %17)
          to label %18 unwind label %23, !dbg !4573

18:                                               ; preds = %15
  br label %19, !dbg !4573

19:                                               ; preds = %18
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !4574
  %21 = load ptr, ptr %7, align 8, !dbg !4575
  %22 = getelementptr inbounds %class.ProjectedCylinder, ptr %21, i32 1, !dbg !4575
  store ptr %22, ptr %7, align 8, !dbg !4575
  br label %13, !dbg !4576, !llvm.loop !4577

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4579
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !4579
  store ptr %25, ptr %8, align 8, !dbg !4579
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !4579
  store i32 %26, ptr %9, align 4, !dbg !4579
  br label %27, !dbg !4579

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8, !dbg !4580
  %29 = call ptr @__cxa_begin_catch(ptr %28) #3, !dbg !4580
  %30 = load ptr, ptr %6, align 8, !dbg !4581
  %31 = load ptr, ptr %7, align 8, !dbg !4583
  invoke void @_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_(ptr noundef %30, ptr noundef %31)
          to label %32 unwind label %35, !dbg !4584

32:                                               ; preds = %27
  invoke void @__cxa_rethrow() #16
          to label %49 unwind label %35, !dbg !4585

33:                                               ; preds = %13
  %34 = load ptr, ptr %7, align 8, !dbg !4586
  ret ptr %34, !dbg !4587

35:                                               ; preds = %32, %27
  %36 = landingpad { ptr, i32 }
          cleanup, !dbg !4588
  %37 = extractvalue { ptr, i32 } %36, 0, !dbg !4588
  store ptr %37, ptr %8, align 8, !dbg !4588
  %38 = extractvalue { ptr, i32 } %36, 1, !dbg !4588
  store i32 %38, ptr %9, align 4, !dbg !4588
  invoke void @__cxa_end_catch()
          to label %39 unwind label %46, !dbg !4589

39:                                               ; preds = %35
  br label %41, !dbg !4589

40:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !4589
  unreachable, !dbg !4589

41:                                               ; preds = %39
  %42 = load ptr, ptr %8, align 8, !dbg !4589
  %43 = load i32, ptr %9, align 4, !dbg !4589
  %44 = insertvalue { ptr, i32 } poison, ptr %42, 0, !dbg !4589
  %45 = insertvalue { ptr, i32 } %44, i32 %43, 1, !dbg !4589
  resume { ptr, i32 } %45, !dbg !4589

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4589
  %48 = extractvalue { ptr, i32 } %47, 0, !dbg !4589
  call void @__clang_call_terminate(ptr %48) #17, !dbg !4589
  unreachable, !dbg !4589

49:                                               ; preds = %32
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !4590 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4594, metadata !DIExpression()), !dbg !4595
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4596, metadata !DIExpression()), !dbg !4597
  %5 = load ptr, ptr %3, align 8, !dbg !4598
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !4599
  %7 = load ptr, ptr %6, align 8, !dbg !4599
  %8 = load ptr, ptr %4, align 8, !dbg !4600
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !4601
  %10 = load ptr, ptr %9, align 8, !dbg !4601
  %11 = icmp ne ptr %7, %10, !dbg !4602
  ret i1 %11, !dbg !4603
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI17ProjectedCylinderJRKS0_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #7 comdat !dbg !4604 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4611, metadata !DIExpression()), !dbg !4612
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4613, metadata !DIExpression()), !dbg !4614
  %5 = load ptr, ptr %3, align 8, !dbg !4615
  %6 = load ptr, ptr %4, align 8, !dbg !4616
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %6, i64 32, i1 false), !dbg !4617
  ret void, !dbg !4618
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !4619 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4620, metadata !DIExpression()), !dbg !4622
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !4623
  %5 = load ptr, ptr %4, align 8, !dbg !4623
  ret ptr %5, !dbg !4624
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !4625 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4626, metadata !DIExpression()), !dbg !4628
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !4629
  %5 = load ptr, ptr %4, align 8, !dbg !4630
  %6 = getelementptr inbounds %class.ProjectedCylinder, ptr %5, i32 1, !dbg !4630
  store ptr %6, ptr %4, align 8, !dbg !4630
  ret ptr %3, !dbg !4631
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !4632 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4633, metadata !DIExpression()), !dbg !4634
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !4635
  ret ptr %4, !dbg !4636
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !dbg !4637 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4638, metadata !DIExpression()), !dbg !4639
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4640, metadata !DIExpression()), !dbg !4641
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !4642
  %7 = load ptr, ptr %4, align 8, !dbg !4643
  %8 = load ptr, ptr %7, align 8, !dbg !4643
  store ptr %8, ptr %6, align 8, !dbg !4642
  ret void, !dbg !4644
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !4645 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4646, metadata !DIExpression()), !dbg !4647
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4650, metadata !DIExpression()), !dbg !4651
  %7 = load ptr, ptr %4, align 8, !dbg !4652
  %8 = load ptr, ptr %5, align 8, !dbg !4653
  %9 = load i64, ptr %6, align 8, !dbg !4654
  call void @_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !4655
  ret void, !dbg !4656
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #7 comdat align 2 !dbg !4657 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4661, metadata !DIExpression()), !dbg !4662
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4663, metadata !DIExpression()), !dbg !4664
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4665, metadata !DIExpression()), !dbg !4666
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !4667
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !4668
  ret void, !dbg !4669
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_ImageProjection.cpp() #0 section ".text.startup" !dbg !4670 {
  call void @__cxx_global_var_init(), !dbg !4672
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
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { allocsize(0) }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992}
!llvm.ident = !{!1993}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 634, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 26)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !16, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !31, globals: !747, imports: !748, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../TrackingBenchmark/ImageProjection.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "ab42fbdf90147509082f298a34f44dce")
!17 = !{!18, !25}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 29, baseType: !20, size: 32, elements: !21, identifier: "_ZTS6DMAxis")
!19 = !DIFile(filename: "../TrackingBenchmark/DMatrix.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "683bf5578c88d572073a2ceae8029be4")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "X", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "Y", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "Z", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 30, baseType: !20, size: 32, elements: !26, identifier: "_ZTS7DMOrder")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "XYZ", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "ZYX", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "YXZ", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "ZXY", value: 3, isUnsigned: true)
!31 = !{!32, !33, !34, !39, !36, !91, !92, !94, !129, !665, !467, !686, !100, !688, !40, !95, !666, !131, !468, !134, !137, !157, !163, !256}
!32 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !35, line: 424, baseType: !36, flags: DIFlagPublic)
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !37, line: 280, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DMatrix<float>", file: !19, line: 34, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !41, templateParams: !89, identifier: "_ZTS7DMatrixIfE")
!41 = !{!42, !47, !51, !54, !57, !62, !66, !70, !71, !72, !73, !77, !78, !81}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !19, line: 36, baseType: !43, size: 384, flags: DIFlagProtected)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 384, elements: !44)
!44 = !{!45, !46}
!45 = !DISubrange(count: 3)
!46 = !DISubrange(count: 4)
!47 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 39, type: !48, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 42, type: !52, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !50, !32, !32, !32}
!54 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 45, type: !55, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !50, !32, !32, !32, !32, !32, !32}
!57 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 48, type: !58, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !50, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!62 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 51, type: !63, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !50, !65, !32}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMAxis", file: !19, line: 29, baseType: !18)
!66 = !DISubprogram(name: "DMatrix", scope: !40, file: !19, line: 54, type: !67, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !50, !32, !32, !32, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMOrder", file: !19, line: 30, baseType: !25)
!70 = !DISubprogram(name: "~DMatrix", scope: !40, file: !19, line: 57, type: !48, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!71 = !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !40, file: !19, line: 60, type: !48, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "SetIdentity", linkageName: "_ZN7DMatrixIfE11SetIdentityEv", scope: !40, file: !19, line: 63, type: !48, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!73 = !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !40, file: !19, line: 66, type: !74, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !50, !33, !33}
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!77 = !DISubprogram(name: "Set", linkageName: "_ZN7DMatrixIfE3SetEPKf", scope: !40, file: !19, line: 69, type: !58, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!78 = !DISubprogram(name: "SetTranslation", linkageName: "_ZN7DMatrixIfE14SetTranslationEfff", scope: !40, file: !19, line: 72, type: !79, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !50, !61, !61, !61}
!81 = !DISubprogram(name: "Print", linkageName: "_ZN7DMatrixIfE5PrintERSo", scope: !40, file: !19, line: 75, type: !82, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !50, !84}
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !86, line: 141, baseType: !87)
!86 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!87 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !88, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!88 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
!89 = !{!90}
!90 = !DITemplateTypeParameter(name: "T", type: !32)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ProjectedCylinder", file: !96, line: 34, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !97, identifier: "_ZTS17ProjectedCylinder")
!96 = !DIFile(filename: "../TrackingBenchmark/ImageProjection.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "1f408b9d6e2708f726674c3109c2b024")
!97 = !{!98, !115, !119, !120}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "mPts", scope: !95, file: !96, line: 37, baseType: !99, size: 256, flags: DIFlagPublic)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !114)
!100 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Point", file: !101, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !102, identifier: "_ZTS5Point")
!101 = !DIFile(filename: "../TrackingBenchmark/CameraModel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "3c500b48be5c6a308af2a7bf4cee9701")
!102 = !{!103, !104, !105, !109, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !100, file: !101, line: 33, baseType: !32, size: 32, flags: DIFlagPublic)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !100, file: !101, line: 33, baseType: !32, size: 32, offset: 32, flags: DIFlagPublic)
!105 = !DISubprogram(name: "Point", scope: !100, file: !101, line: 34, type: !106, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "Point", scope: !100, file: !101, line: 35, type: !110, scopeLine: 35, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108, !32, !32}
!112 = !DISubprogram(name: "~Point", scope: !100, file: !101, line: 36, type: !106, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubprogram(name: "Set", linkageName: "_ZN5Point3SetEff", scope: !100, file: !101, line: 37, type: !110, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!114 = !{!46}
!115 = !DISubprogram(name: "ProjectedCylinder", scope: !95, file: !96, line: 38, type: !116, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!119 = !DISubprogram(name: "~ProjectedCylinder", scope: !95, file: !96, line: 39, type: !116, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubprogram(name: "ImageProjection", linkageName: "_ZN17ProjectedCylinder15ImageProjectionERK10KTCylinderR6Camera", scope: !95, file: !96, line: 40, type: !121, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !118, !123, !127}
!123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_class_type, name: "KTCylinder", file: !126, line: 57, size: 480, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS10KTCylinder")
!126 = !DIFile(filename: "../TrackingBenchmark/BodyGeometry.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "ddbc3a72ce843900c4aedf25f05d8264")
!127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_class_type, name: "Camera", file: !101, line: 42, size: 1280, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6Camera")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !130, file: !35, line: 468, baseType: !664)
!130 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_", scope: !131, file: !35, line: 465, type: !394, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !393, retainedNodes: !253)
!131 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<ProjectedCylinder, std::allocator<ProjectedCylinder> >", scope: !2, file: !35, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !132, templateParams: !662, identifier: "_ZTSSt6vectorI17ProjectedCylinderSaIS0_EE")
!132 = !{!133, !350, !368, !383, !384, !390, !393, !396, !400, !406, !409, !415, !420, !424, !427, !430, !433, !436, !441, !442, !446, !449, !452, !455, !458, !464, !526, !527, !528, !533, !538, !539, !540, !541, !542, !543, !544, !547, !548, !551, !552, !553, !554, !557, !558, !566, !573, !576, !577, !578, !581, !584, !585, !586, !589, !592, !595, !599, !600, !603, !606, !609, !612, !615, !618, !621, !622, !623, !624, !625, !628, !629, !632, !633, !634, !639, !642, !647, !650, !653, !656, !659}
!133 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !131, baseType: !134, flags: DIFlagProtected, extraData: i32 0)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<ProjectedCylinder, std::allocator<ProjectedCylinder> >", scope: !2, file: !35, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !135, templateParams: !349, identifier: "_ZTSSt12_Vector_baseI17ProjectedCylinderSaIS0_EE")
!135 = !{!136, !300, !305, !310, !314, !317, !322, !325, !328, !332, !335, !338, !341, !342, !345, !348}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !134, file: !35, line: 340, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !134, file: !35, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !138, identifier: "_ZTSNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implE")
!138 = !{!139, !255, !280, !284, !289, !293, !297}
!139 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !137, baseType: !140, extraData: i32 0)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !134, file: !35, line: 87, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !143, file: !142, line: 120, baseType: !254)
!142 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<ProjectedCylinder>", scope: !144, file: !142, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !202, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E6rebindIS1_EE")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ProjectedCylinder>, ProjectedCylinder>", scope: !145, file: !142, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !146, templateParams: !251, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_EE")
!145 = !DINamespace(name: "__gnu_cxx", scope: null)
!146 = !{!147, !237, !240, !243, !247, !248, !249, !250}
!147 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !144, baseType: !148, extraData: i32 0)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ProjectedCylinder> >", scope: !2, file: !149, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !150, templateParams: !235, identifier: "_ZTSSt16allocator_traitsISaI17ProjectedCylinderEE")
!149 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!150 = !{!151, !219, !223, !226, !232}
!151 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m", scope: !148, file: !149, line: 463, type: !152, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !155, !218}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !148, file: !149, line: 420, baseType: !94)
!155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !148, file: !149, line: 414, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ProjectedCylinder>", scope: !2, file: !158, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !159, templateParams: !202, identifier: "_ZTSSaI17ProjectedCylinderE")
!158 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!159 = !{!160, !204, !208, !213, !217}
!160 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !157, baseType: !161, flags: DIFlagPublic, extraData: i32 0)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<ProjectedCylinder>", scope: !2, file: !162, line: 48, baseType: !163)
!162 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!163 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<ProjectedCylinder>", scope: !145, file: !164, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !165, templateParams: !202, identifier: "_ZTSN9__gnu_cxx13new_allocatorI17ProjectedCylinderEE")
!164 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!165 = !{!166, !170, !175, !176, !183, !191, !195, !198, !201}
!166 = !DISubprogram(name: "new_allocator", scope: !163, file: !164, line: 79, type: !167, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DISubprogram(name: "new_allocator", scope: !163, file: !164, line: 82, type: !171, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !169, !173}
!173 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!175 = !DISubprogram(name: "~new_allocator", scope: !163, file: !164, line: 89, type: !167, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE7addressERS1_", scope: !163, file: !164, line: 92, type: !177, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !163, file: !164, line: 62, baseType: !94, flags: DIFlagPublic)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !163, file: !164, line: 64, baseType: !182, flags: DIFlagPublic)
!182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 64)
!183 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE7addressERKS1_", scope: !163, file: !164, line: 96, type: !184, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !180, !189}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !163, file: !164, line: 63, baseType: !187, flags: DIFlagPublic)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !163, file: !164, line: 65, baseType: !190, flags: DIFlagPublic)
!190 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !188, size: 64)
!191 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE8allocateEmPKv", scope: !163, file: !164, line: 103, type: !192, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{!94, !169, !194, !92}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !164, line: 59, baseType: !36, flags: DIFlagPublic)
!195 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE10deallocateEPS1_m", scope: !163, file: !164, line: 132, type: !196, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !169, !94, !194}
!198 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE8max_sizeEv", scope: !163, file: !164, line: 154, type: !199, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!194, !180}
!201 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv", scope: !163, file: !164, line: 197, type: !199, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!202 = !{!203}
!203 = !DITemplateTypeParameter(name: "_Tp", type: !95)
!204 = !DISubprogram(name: "allocator", scope: !157, file: !158, line: 156, type: !205, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DISubprogram(name: "allocator", scope: !157, file: !158, line: 159, type: !209, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !207, !211}
!211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!213 = !DISubprogram(name: "operator=", linkageName: "_ZNSaI17ProjectedCylinderEaSERKS0_", scope: !157, file: !158, line: 164, type: !214, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !207, !211}
!216 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 64)
!217 = !DISubprogram(name: "~allocator", scope: !157, file: !158, line: 174, type: !205, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !149, line: 435, baseType: !36)
!219 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_mPKv", scope: !148, file: !149, line: 477, type: !220, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{!154, !155, !218, !222}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !149, line: 429, baseType: !92)
!223 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m", scope: !148, file: !149, line: 495, type: !224, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !155, !154, !218}
!226 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_", scope: !148, file: !149, line: 547, type: !227, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !148, file: !149, line: 435, baseType: !36)
!230 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!232 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_", scope: !148, file: !149, line: 562, type: !233, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!156, !230}
!235 = !{!236}
!236 = !DITemplateTypeParameter(name: "_Alloc", type: !157)
!237 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_", scope: !144, file: !142, line: 97, type: !238, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!157, !211}
!240 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E10_S_on_swapERS2_S4_", scope: !144, file: !142, line: 100, type: !241, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !216, !216}
!243 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E27_S_propagate_on_copy_assignEv", scope: !144, file: !142, line: 103, type: !244, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!246}
!246 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!247 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E27_S_propagate_on_move_assignEv", scope: !144, file: !142, line: 106, type: !244, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!248 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E20_S_propagate_on_swapEv", scope: !144, file: !142, line: 109, type: !244, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!249 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E15_S_always_equalEv", scope: !144, file: !142, line: 112, type: !244, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!250 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E15_S_nothrow_moveEv", scope: !144, file: !142, line: 115, type: !244, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!251 = !{!236, !252}
!252 = !DITemplateTypeParameter(type: !95)
!253 = !{}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<ProjectedCylinder>", scope: !148, file: !149, line: 450, baseType: !157)
!255 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !137, baseType: !256, extraData: i32 0)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !134, file: !35, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !257, identifier: "_ZTSNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataE")
!257 = !{!258, !261, !262, !263, !267, !271, !276}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !256, file: !35, line: 93, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !134, file: !35, line: 89, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !144, file: !142, line: 57, baseType: !154)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !256, file: !35, line: 94, baseType: !259, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !256, file: !35, line: 95, baseType: !259, size: 64, offset: 128)
!263 = !DISubprogram(name: "_Vector_impl_data", scope: !256, file: !35, line: 97, type: !264, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!267 = !DISubprogram(name: "_Vector_impl_data", scope: !256, file: !35, line: 102, type: !268, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !266, !270}
!270 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !256, size: 64)
!271 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_", scope: !256, file: !35, line: 109, type: !272, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !266, !274}
!274 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!276 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_", scope: !256, file: !35, line: 117, type: !277, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !266, !279}
!279 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !256, size: 64)
!280 = !DISubprogram(name: "_Vector_impl", scope: !137, file: !35, line: 131, type: !281, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!284 = !DISubprogram(name: "_Vector_impl", scope: !137, file: !35, line: 136, type: !285, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !283, !287}
!287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!289 = !DISubprogram(name: "_Vector_impl", scope: !137, file: !35, line: 143, type: !290, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !283, !292}
!292 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !137, size: 64)
!293 = !DISubprogram(name: "_Vector_impl", scope: !137, file: !35, line: 147, type: !294, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !283, !296}
!296 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !140, size: 64)
!297 = !DISubprogram(name: "_Vector_impl", scope: !137, file: !35, line: 151, type: !298, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !283, !296, !292}
!300 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv", scope: !134, file: !35, line: 276, type: !301, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !140, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv", scope: !134, file: !35, line: 280, type: !306, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!287, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!310 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13get_allocatorEv", scope: !134, file: !35, line: 284, type: !311, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !308}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !134, file: !35, line: 273, baseType: !157)
!314 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 288, type: !315, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !304}
!317 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 293, type: !318, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !304, !320}
!320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!322 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 298, type: !323, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !304, !36}
!325 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 303, type: !326, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !304, !36, !320}
!328 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 308, type: !329, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !304, !331}
!331 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !134, size: 64)
!332 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 312, type: !333, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !304, !296}
!335 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 315, type: !336, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !304, !331, !320}
!338 = !DISubprogram(name: "_Vector_base", scope: !134, file: !35, line: 328, type: !339, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !304, !320, !331}
!341 = !DISubprogram(name: "~_Vector_base", scope: !134, file: !35, line: 333, type: !315, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm", scope: !134, file: !35, line: 343, type: !343, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{!259, !304, !36}
!345 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m", scope: !134, file: !35, line: 350, type: !346, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !304, !259, !36}
!348 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_M_create_storageEm", scope: !134, file: !35, line: 359, type: !323, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!349 = !{!203, !236}
!350 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !131, file: !35, line: 431, type: !351, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{!246, !353}
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !2, file: !354, line: 83, baseType: !355)
!354 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !2, file: !354, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !356, templateParams: !365, identifier: "_ZTSSt17integral_constantIbLb1EE")
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !354, line: 67, baseType: !358, flags: DIFlagStaticMember, extraData: i1 true)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!359 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !355, file: !354, line: 70, type: !360, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !355, file: !354, line: 68, baseType: !246)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!365 = !{!366, !367}
!366 = !DITemplateTypeParameter(name: "_Tp", type: !246)
!367 = !DITemplateValueParameter(name: "__v", type: !246, value: i8 1)
!368 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !131, file: !35, line: 440, type: !369, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!369 = !DISubroutineType(types: !370)
!370 = !{!246, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !2, file: !354, line: 86, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !2, file: !354, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !373, templateParams: !381, identifier: "_ZTSSt17integral_constantIbLb0EE")
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !354, line: 67, baseType: !358, flags: DIFlagStaticMember, extraData: i1 false)
!375 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !372, file: !354, line: 70, type: !376, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !372, file: !354, line: 68, baseType: !246)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!381 = !{!366, !382}
!382 = !DITemplateValueParameter(name: "__v", type: !246, value: i8 0)
!383 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_S_use_relocateEv", scope: !131, file: !35, line: 444, type: !244, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!384 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE", scope: !131, file: !35, line: 453, type: !385, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !387, !387, !387, !388, !353}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !131, file: !35, line: 415, baseType: !259, flags: DIFlagPublic)
!388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !131, file: !35, line: 410, baseType: !140)
!390 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb0EE", scope: !131, file: !35, line: 460, type: !391, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!387, !387, !387, !387, !388, !371}
!393 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_", scope: !131, file: !35, line: 465, type: !394, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!387, !387, !387, !387, !388}
!396 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 487, type: !397, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!400 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 497, type: !401, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !399, !403}
!403 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !131, file: !35, line: 426, baseType: !157, flags: DIFlagPublic)
!406 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 510, type: !407, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !399, !34, !403}
!409 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 522, type: !410, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !399, !34, !412, !403}
!412 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !131, file: !35, line: 414, baseType: !95, flags: DIFlagPublic)
!415 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 553, type: !416, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !399, !418}
!418 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!420 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 572, type: !421, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !399, !423}
!423 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !131, size: 64)
!424 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 575, type: !425, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !399, !418, !403}
!427 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 585, type: !428, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !399, !423, !403, !353}
!430 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 589, type: !431, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !399, !423, !403, !371}
!433 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 607, type: !434, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !399, !423, !403}
!436 = !DISubprogram(name: "vector", scope: !131, file: !35, line: 625, type: !437, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !399, !439, !403}
!439 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<ProjectedCylinder>", scope: !2, file: !440, line: 47, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listI17ProjectedCylinderE")
!440 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!441 = !DISubprogram(name: "~vector", scope: !131, file: !35, line: 678, type: !397, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!442 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEaSERKS2_", scope: !131, file: !35, line: 695, type: !443, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !399, !418}
!445 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !131, size: 64)
!446 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEaSEOS2_", scope: !131, file: !35, line: 709, type: !447, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{!445, !399, !423}
!449 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEaSESt16initializer_listIS0_E", scope: !131, file: !35, line: 730, type: !450, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!450 = !DISubroutineType(types: !451)
!451 = !{!445, !399, !439}
!452 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6assignEmRKS0_", scope: !131, file: !35, line: 749, type: !453, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !399, !34, !412}
!455 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6assignESt16initializer_listIS0_E", scope: !131, file: !35, line: 794, type: !456, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !399, !439}
!458 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv", scope: !131, file: !35, line: 811, type: !459, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !399}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !131, file: !35, line: 419, baseType: !462, flags: DIFlagPublic)
!462 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >", scope: !145, file: !463, line: 1004, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIP17ProjectedCylinderSt6vectorIS1_SaIS1_EEEE")
!463 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!464 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv", scope: !131, file: !35, line: 820, type: !465, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !525}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !131, file: !35, line: 421, baseType: !468, flags: DIFlagPublic)
!468 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >", scope: !145, file: !463, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !469, templateParams: !523, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEE")
!469 = !{!470, !471, !475, !480, !491, !496, !500, !503, !504, !505, !512, !515, !518, !519, !520}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !468, file: !463, line: 1007, baseType: !187, size: 64, flags: DIFlagProtected)
!471 = !DISubprogram(name: "__normal_iterator", scope: !468, file: !463, line: 1023, type: !472, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!475 = !DISubprogram(name: "__normal_iterator", scope: !468, file: !463, line: 1027, type: !476, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !474, !478}
!478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!480 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEdeEv", scope: !468, file: !463, line: 1042, type: !481, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !489}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !468, file: !463, line: 1016, baseType: !484, flags: DIFlagPublic)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !486, file: !485, line: 227, baseType: !190)
!485 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const ProjectedCylinder *>", scope: !2, file: !485, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !487, identifier: "_ZTSSt15iterator_traitsIPK17ProjectedCylinderE")
!487 = !{!488}
!488 = !DITemplateTypeParameter(name: "_Iterator", type: !187)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!491 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEptEv", scope: !468, file: !463, line: 1047, type: !492, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !489}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !468, file: !463, line: 1017, baseType: !495, flags: DIFlagPublic)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !486, file: !485, line: 226, baseType: !187)
!496 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEv", scope: !468, file: !463, line: 1052, type: !497, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !474}
!499 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !468, size: 64)
!500 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEi", scope: !468, file: !463, line: 1060, type: !501, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!468, !474, !33}
!503 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEmmEv", scope: !468, file: !463, line: 1066, type: !497, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEmmEi", scope: !468, file: !463, line: 1074, type: !501, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEixEl", scope: !468, file: !463, line: 1080, type: !506, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!483, !489, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !468, file: !463, line: 1015, baseType: !509, flags: DIFlagPublic)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !486, file: !485, line: 225, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !37, line: 281, baseType: !511)
!511 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!512 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEpLEl", scope: !468, file: !463, line: 1085, type: !513, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!499, !474, !508}
!515 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEplEl", scope: !468, file: !463, line: 1090, type: !516, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!468, !489, !508}
!518 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEmIEl", scope: !468, file: !463, line: 1095, type: !513, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEmiEl", scope: !468, file: !463, line: 1100, type: !516, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!520 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv", scope: !468, file: !463, line: 1105, type: !521, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!478, !489}
!523 = !{!488, !524}
!524 = !DITemplateTypeParameter(name: "_Container", type: !131)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE3endEv", scope: !131, file: !35, line: 829, type: !459, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE3endEv", scope: !131, file: !35, line: 838, type: !465, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6rbeginEv", scope: !131, file: !35, line: 847, type: !529, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !399}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !131, file: !35, line: 423, baseType: !532, flags: DIFlagPublic)
!532 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > > >", scope: !2, file: !463, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEE")
!533 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE6rbeginEv", scope: !131, file: !35, line: 856, type: !534, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !525}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !131, file: !35, line: 422, baseType: !537, flags: DIFlagPublic)
!537 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > > >", scope: !2, file: !463, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEE")
!538 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE4rendEv", scope: !131, file: !35, line: 865, type: !529, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4rendEv", scope: !131, file: !35, line: 874, type: !534, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE6cbeginEv", scope: !131, file: !35, line: 884, type: !465, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4cendEv", scope: !131, file: !35, line: 893, type: !465, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE7crbeginEv", scope: !131, file: !35, line: 902, type: !534, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!543 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5crendEv", scope: !131, file: !35, line: 911, type: !534, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv", scope: !131, file: !35, line: 918, type: !545, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!34, !525}
!547 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv", scope: !131, file: !35, line: 923, type: !545, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!548 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEm", scope: !131, file: !35, line: 937, type: !549, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !399, !34}
!551 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEmRKS0_", scope: !131, file: !35, line: 957, type: !453, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!552 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE13shrink_to_fitEv", scope: !131, file: !35, line: 989, type: !397, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!553 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8capacityEv", scope: !131, file: !35, line: 998, type: !545, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5emptyEv", scope: !131, file: !35, line: 1007, type: !555, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!246, !525}
!557 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE7reserveEm", scope: !131, file: !35, line: 1028, type: !549, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm", scope: !131, file: !35, line: 1043, type: !559, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !399, !34}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !131, file: !35, line: 417, baseType: !562, flags: DIFlagPublic)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !144, file: !142, line: 62, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !144, file: !142, line: 56, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !148, file: !149, line: 417, baseType: !95)
!566 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EEixEm", scope: !131, file: !35, line: 1061, type: !567, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !525, !34}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !131, file: !35, line: 418, baseType: !570, flags: DIFlagPublic)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !144, file: !142, line: 63, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!573 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE14_M_range_checkEm", scope: !131, file: !35, line: 1070, type: !574, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !525, !34}
!576 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE2atEm", scope: !131, file: !35, line: 1092, type: !559, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE2atEm", scope: !131, file: !35, line: 1110, type: !567, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!578 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE5frontEv", scope: !131, file: !35, line: 1121, type: !579, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!561, !399}
!581 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5frontEv", scope: !131, file: !35, line: 1132, type: !582, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{!569, !525}
!584 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE4backEv", scope: !131, file: !35, line: 1143, type: !579, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!585 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4backEv", scope: !131, file: !35, line: 1154, type: !582, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!586 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE4dataEv", scope: !131, file: !35, line: 1168, type: !587, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!94, !399}
!589 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4dataEv", scope: !131, file: !35, line: 1172, type: !590, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{!187, !525}
!592 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE9push_backERKS0_", scope: !131, file: !35, line: 1187, type: !593, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !399, !412}
!595 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE9push_backEOS0_", scope: !131, file: !35, line: 1203, type: !596, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !399, !598}
!598 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !414, size: 64)
!599 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE8pop_backEv", scope: !131, file: !35, line: 1225, type: !397, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_", scope: !131, file: !35, line: 1263, type: !601, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!461, !399, !467, !412}
!603 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !131, file: !35, line: 1293, type: !604, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{!461, !399, !467, !598}
!606 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EESt16initializer_listIS0_E", scope: !131, file: !35, line: 1310, type: !607, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!461, !399, !467, !439}
!609 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_", scope: !131, file: !35, line: 1335, type: !610, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!461, !399, !467, !34, !412}
!612 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE", scope: !131, file: !35, line: 1430, type: !613, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!461, !399, !467}
!615 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_", scope: !131, file: !35, line: 1457, type: !616, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!461, !399, !467, !467}
!618 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE4swapERS2_", scope: !131, file: !35, line: 1480, type: !619, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !399, !445}
!621 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE5clearEv", scope: !131, file: !35, line: 1498, type: !397, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!622 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE18_M_fill_initializeEmRKS0_", scope: !131, file: !35, line: 1593, type: !453, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!623 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE21_M_default_initializeEm", scope: !131, file: !35, line: 1603, type: !549, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!624 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_fill_assignEmRKS0_", scope: !131, file: !35, line: 1645, type: !453, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!625 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_", scope: !131, file: !35, line: 1684, type: !626, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !399, !461, !34, !412}
!628 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_M_default_appendEm", scope: !131, file: !35, line: 1689, type: !549, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!629 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE16_M_shrink_to_fitEv", scope: !131, file: !35, line: 1692, type: !630, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!246, !399}
!632 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !131, file: !35, line: 1741, type: !604, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!633 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !131, file: !35, line: 1750, type: !604, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!634 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE12_M_check_lenEmPKc", scope: !131, file: !35, line: 1756, type: !635, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !525, !34, !638}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !131, file: !35, line: 424, baseType: !36, flags: DIFlagPublic)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!639 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_S_check_init_lenEmRKS1_", scope: !131, file: !35, line: 1767, type: !640, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!640 = !DISubroutineType(types: !641)
!641 = !{!637, !34, !403}
!642 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_max_sizeERKS1_", scope: !131, file: !35, line: 1776, type: !643, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!637, !645}
!645 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!647 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_M_erase_at_endEPS0_", scope: !131, file: !35, line: 1792, type: !648, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !399, !387}
!650 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE", scope: !131, file: !35, line: 1804, type: !651, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!461, !399, !461}
!653 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EES6_", scope: !131, file: !35, line: 1807, type: !654, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!461, !399, !461, !461}
!656 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE", scope: !131, file: !35, line: 1815, type: !657, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !399, !423, !353}
!659 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb0EE", scope: !131, file: !35, line: 1826, type: !660, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !399, !423, !371}
!662 = !{!203, !663}
!663 = !DITemplateTypeParameter(name: "_Alloc", type: !157, defaulted: true)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !2, file: !354, line: 91, baseType: !355)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ProjectedBody", file: !96, line: 44, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !667, identifier: "_ZTS13ProjectedBody")
!667 = !{!668, !669, !673, !674, !677, !683}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mProjCyls", scope: !666, file: !96, line: 46, baseType: !131, size: 192)
!669 = !DISubprogram(name: "ProjectedBody", scope: !666, file: !96, line: 48, type: !670, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!673 = !DISubprogram(name: "~ProjectedBody", scope: !666, file: !96, line: 49, type: !670, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!674 = !DISubprogram(name: "operator()", linkageName: "_ZN13ProjectedBodyclEi", scope: !666, file: !96, line: 50, type: !675, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!675 = !DISubroutineType(types: !676)
!676 = !{!182, !672, !33}
!677 = !DISubprogram(name: "ImageProjection", linkageName: "_ZN13ProjectedBody15ImageProjectionERK12BodyGeometryR6Camera", scope: !666, file: !96, line: 51, type: !678, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !672, !680, !127}
!680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DICompositeType(tag: DW_TAG_class_type, name: "BodyGeometry", file: !126, line: 73, size: 2816, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12BodyGeometry")
!683 = !DISubprogram(name: "Size", linkageName: "_ZN13ProjectedBody4SizeEv", scope: !666, file: !96, line: 52, type: !684, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!33, !672}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!688 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Vector3<float>", file: !689, line: 36, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !690, templateParams: !89, identifier: "_ZTS7Vector3IfE")
!689 = !DIFile(filename: "../TrackingBenchmark/SmallVectors.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "633755f321eda28e3f3fa646094388cc")
!690 = !{!691, !692, !693, !694, !698, !701, !705, !706, !707, !713, !714, !717, !718, !721, !722, !725, !726, !729, !732, !733, !736, !737, !740, !744}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !688, file: !689, line: 38, baseType: !32, size: 32, flags: DIFlagPublic)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !688, file: !689, line: 38, baseType: !32, size: 32, offset: 32, flags: DIFlagPublic)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !688, file: !689, line: 38, baseType: !32, size: 32, offset: 64, flags: DIFlagPublic)
!694 = !DISubprogram(name: "Vector3", scope: !688, file: !689, line: 40, type: !695, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!698 = !DISubprogram(name: "Vector3", scope: !688, file: !689, line: 41, type: !699, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !697, !32, !32, !32}
!701 = !DISubprogram(name: "Vector3", scope: !688, file: !689, line: 42, type: !702, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !697, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!705 = !DISubprogram(name: "~Vector3", scope: !688, file: !689, line: 44, type: !695, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!706 = !DISubprogram(name: "Set", linkageName: "_ZN7Vector3IfE3SetEfff", scope: !688, file: !689, line: 47, type: !699, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!707 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !688, file: !689, line: 51, type: !708, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!688, !710, !712}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!712 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !711, size: 64)
!713 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector3IfEplERKS0_", scope: !688, file: !689, line: 55, type: !708, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!714 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector3IfEpLERKS0_", scope: !688, file: !689, line: 59, type: !715, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !697, !712}
!717 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector3IfEmIERKS0_", scope: !688, file: !689, line: 63, type: !715, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!718 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlEf", scope: !688, file: !689, line: 67, type: !719, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!688, !710, !61}
!721 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector3IfEdvEf", scope: !688, file: !689, line: 71, type: !719, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!722 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector3IfEmLEf", scope: !688, file: !689, line: 75, type: !723, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !697, !61}
!725 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector3IfEdVEf", scope: !688, file: !689, line: 79, type: !723, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!726 = !DISubprogram(name: "Dot", linkageName: "_ZNK7Vector3IfE3DotERKS0_", scope: !688, file: !689, line: 83, type: !727, scopeLine: 83, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!32, !710, !712}
!729 = !DISubprogram(name: "Norm", linkageName: "_ZNK7Vector3IfE4NormEv", scope: !688, file: !689, line: 87, type: !730, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!688, !710}
!732 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERKS0_", scope: !688, file: !689, line: 92, type: !708, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!733 = !DISubprogram(name: "Mag", linkageName: "_ZNK7Vector3IfE3MagEv", scope: !688, file: !689, line: 98, type: !734, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!32, !710}
!736 = !DISubprogram(name: "MagSq", linkageName: "_ZNK7Vector3IfE5MagSqEv", scope: !688, file: !689, line: 102, type: !734, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!737 = !DISubprogram(name: "Print", linkageName: "_ZNK7Vector3IfE5PrintEv", scope: !688, file: !689, line: 106, type: !738, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !710}
!740 = !DISubprogram(name: "operator[]", linkageName: "_ZN7Vector3IfEixEi", scope: !688, file: !689, line: 110, type: !741, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!76, !697, !743}
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!744 = !DISubprogram(name: "operator==", linkageName: "_ZN7Vector3IfEeqERKS0_", scope: !688, file: !689, line: 116, type: !745, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!246, !697, !712}
!747 = !{!0, !7}
!748 = !{!749, !753, !759, !766, !768, !770, !774, !776, !778, !780, !782, !784, !786, !788, !793, !797, !799, !801, !806, !808, !810, !812, !814, !816, !818, !821, !823, !825, !829, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !858, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !896, !900, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !926, !930, !934, !936, !938, !940, !945, !949, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !981, !985, !989, !991, !993, !995, !999, !1003, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1023, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1063, !1067, !1071, !1073, !1077, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1096, !1101, !1116, !1119, !1124, !1132, !1140, !1144, !1151, !1155, !1159, !1161, !1163, !1167, !1176, !1180, !1186, !1192, !1194, !1198, !1202, !1206, !1210, !1222, !1224, !1228, !1232, !1236, !1238, !1244, !1248, !1252, !1254, !1256, !1260, !1268, !1272, !1276, !1280, !1282, !1288, !1290, !1296, !1300, !1304, !1308, !1312, !1316, !1320, !1322, !1324, !1328, !1332, !1336, !1338, !1342, !1346, !1348, !1350, !1354, !1358, !1362, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1381, !1385, !1392, !1396, !1399, !1402, !1405, !1407, !1409, !1411, !1414, !1417, !1420, !1423, !1426, !1428, !1433, !1437, !1440, !1443, !1445, !1447, !1449, !1451, !1454, !1457, !1460, !1463, !1466, !1468, !1472, !1476, !1481, !1485, !1487, !1489, !1491, !1493, !1495, !1497, !1499, !1501, !1503, !1505, !1507, !1509, !1511, !1515, !1521, !1525, !1530, !1532, !1534, !1538, !1542, !1550, !1554, !1558, !1562, !1566, !1570, !1574, !1578, !1582, !1586, !1590, !1594, !1598, !1600, !1604, !1608, !1612, !1618, !1622, !1626, !1628, !1632, !1636, !1642, !1644, !1648, !1652, !1656, !1660, !1664, !1668, !1672, !1673, !1674, !1675, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1687, !1693, !1698, !1702, !1704, !1706, !1708, !1710, !1717, !1721, !1725, !1729, !1733, !1737, !1742, !1746, !1748, !1752, !1758, !1762, !1767, !1769, !1771, !1775, !1779, !1783, !1785, !1787, !1789, !1791, !1795, !1797, !1799, !1803, !1807, !1811, !1815, !1819, !1821, !1823, !1827, !1831, !1835, !1839, !1841, !1843, !1847, !1851, !1852, !1853, !1854, !1855, !1856, !1862, !1865, !1866, !1868, !1870, !1872, !1874, !1878, !1880, !1882, !1884, !1886, !1888, !1890, !1892, !1894, !1898, !1902, !1904, !1908, !1912, !1918, !1922, !1926, !1930, !1934, !1938, !1940, !1942, !1944, !1948, !1952, !1956, !1960, !1964, !1966, !1968, !1970, !1974, !1978, !1982, !1984}
!749 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !750, entity: !751, file: !752, line: 58)
!750 = !DINamespace(name: "__gnu_debug", scope: null)
!751 = !DINamespace(name: "__debug", scope: !2)
!752 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !758, line: 52)
!754 = !DISubprogram(name: "abs", scope: !755, file: !755, line: 848, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!756 = !DISubroutineType(types: !757)
!757 = !{!33, !33}
!758 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !760, file: !765, line: 83)
!760 = !DISubprogram(name: "acos", scope: !761, file: !761, line: 53, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !764}
!764 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!765 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !765, line: 102)
!767 = !DISubprogram(name: "asin", scope: !761, file: !761, line: 55, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !765, line: 121)
!769 = !DISubprogram(name: "atan", scope: !761, file: !761, line: 57, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !765, line: 140)
!771 = !DISubprogram(name: "atan2", scope: !761, file: !761, line: 59, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!764, !764, !764}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !765, line: 161)
!775 = !DISubprogram(name: "ceil", scope: !761, file: !761, line: 159, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !765, line: 180)
!777 = !DISubprogram(name: "cos", scope: !761, file: !761, line: 62, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !765, line: 199)
!779 = !DISubprogram(name: "cosh", scope: !761, file: !761, line: 71, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !765, line: 218)
!781 = !DISubprogram(name: "exp", scope: !761, file: !761, line: 95, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !765, line: 237)
!783 = !DISubprogram(name: "fabs", scope: !761, file: !761, line: 162, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !765, line: 256)
!785 = !DISubprogram(name: "floor", scope: !761, file: !761, line: 165, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !765, line: 275)
!787 = !DISubprogram(name: "fmod", scope: !761, file: !761, line: 168, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !765, line: 296)
!789 = !DISubprogram(name: "frexp", scope: !761, file: !761, line: 98, type: !790, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!764, !764, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !765, line: 315)
!794 = !DISubprogram(name: "ldexp", scope: !761, file: !761, line: 101, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!764, !764, !33}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !765, line: 334)
!798 = !DISubprogram(name: "log", scope: !761, file: !761, line: 104, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !765, line: 353)
!800 = !DISubprogram(name: "log10", scope: !761, file: !761, line: 107, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !765, line: 372)
!802 = !DISubprogram(name: "modf", scope: !761, file: !761, line: 110, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!764, !764, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !765, line: 384)
!807 = !DISubprogram(name: "pow", scope: !761, file: !761, line: 140, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !765, line: 421)
!809 = !DISubprogram(name: "sin", scope: !761, file: !761, line: 64, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !765, line: 440)
!811 = !DISubprogram(name: "sinh", scope: !761, file: !761, line: 73, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !765, line: 459)
!813 = !DISubprogram(name: "sqrt", scope: !761, file: !761, line: 143, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !765, line: 478)
!815 = !DISubprogram(name: "tan", scope: !761, file: !761, line: 66, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !765, line: 497)
!817 = !DISubprogram(name: "tanh", scope: !761, file: !761, line: 75, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !765, line: 1065)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !820, line: 164, baseType: !764)
!820 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !765, line: 1066)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !820, line: 163, baseType: !32)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !765, line: 1069)
!824 = !DISubprogram(name: "acosh", scope: !761, file: !761, line: 85, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !765, line: 1070)
!826 = !DISubprogram(name: "acoshf", scope: !761, file: !761, line: 85, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!32, !32}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !765, line: 1071)
!830 = !DISubprogram(name: "acoshl", scope: !761, file: !761, line: 85, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !833}
!833 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !765, line: 1073)
!835 = !DISubprogram(name: "asinh", scope: !761, file: !761, line: 87, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !765, line: 1074)
!837 = !DISubprogram(name: "asinhf", scope: !761, file: !761, line: 87, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !765, line: 1075)
!839 = !DISubprogram(name: "asinhl", scope: !761, file: !761, line: 87, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !765, line: 1077)
!841 = !DISubprogram(name: "atanh", scope: !761, file: !761, line: 89, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !765, line: 1078)
!843 = !DISubprogram(name: "atanhf", scope: !761, file: !761, line: 89, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !765, line: 1079)
!845 = !DISubprogram(name: "atanhl", scope: !761, file: !761, line: 89, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !765, line: 1081)
!847 = !DISubprogram(name: "cbrt", scope: !761, file: !761, line: 152, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !765, line: 1082)
!849 = !DISubprogram(name: "cbrtf", scope: !761, file: !761, line: 152, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !765, line: 1083)
!851 = !DISubprogram(name: "cbrtl", scope: !761, file: !761, line: 152, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !765, line: 1085)
!853 = !DISubprogram(name: "copysign", scope: !761, file: !761, line: 198, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !765, line: 1086)
!855 = !DISubprogram(name: "copysignf", scope: !761, file: !761, line: 198, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!32, !32, !32}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !765, line: 1087)
!859 = !DISubprogram(name: "copysignl", scope: !761, file: !761, line: 198, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!833, !833, !833}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !863, file: !765, line: 1089)
!863 = !DISubprogram(name: "erf", scope: !761, file: !761, line: 231, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !765, line: 1090)
!865 = !DISubprogram(name: "erff", scope: !761, file: !761, line: 231, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !765, line: 1091)
!867 = !DISubprogram(name: "erfl", scope: !761, file: !761, line: 231, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !765, line: 1093)
!869 = !DISubprogram(name: "erfc", scope: !761, file: !761, line: 232, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !765, line: 1094)
!871 = !DISubprogram(name: "erfcf", scope: !761, file: !761, line: 232, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !765, line: 1095)
!873 = !DISubprogram(name: "erfcl", scope: !761, file: !761, line: 232, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !765, line: 1097)
!875 = !DISubprogram(name: "exp2", scope: !761, file: !761, line: 130, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !765, line: 1098)
!877 = !DISubprogram(name: "exp2f", scope: !761, file: !761, line: 130, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !765, line: 1099)
!879 = !DISubprogram(name: "exp2l", scope: !761, file: !761, line: 130, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !765, line: 1101)
!881 = !DISubprogram(name: "expm1", scope: !761, file: !761, line: 119, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !765, line: 1102)
!883 = !DISubprogram(name: "expm1f", scope: !761, file: !761, line: 119, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !765, line: 1103)
!885 = !DISubprogram(name: "expm1l", scope: !761, file: !761, line: 119, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !765, line: 1105)
!887 = !DISubprogram(name: "fdim", scope: !761, file: !761, line: 329, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !765, line: 1106)
!889 = !DISubprogram(name: "fdimf", scope: !761, file: !761, line: 329, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !765, line: 1107)
!891 = !DISubprogram(name: "fdiml", scope: !761, file: !761, line: 329, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !765, line: 1109)
!893 = !DISubprogram(name: "fma", scope: !761, file: !761, line: 340, type: !894, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DISubroutineType(types: !895)
!895 = !{!764, !764, !764, !764}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !765, line: 1110)
!897 = !DISubprogram(name: "fmaf", scope: !761, file: !761, line: 340, type: !898, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!32, !32, !32, !32}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !901, file: !765, line: 1111)
!901 = !DISubprogram(name: "fmal", scope: !761, file: !761, line: 340, type: !902, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!833, !833, !833, !833}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !765, line: 1113)
!905 = !DISubprogram(name: "fmax", scope: !761, file: !761, line: 333, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !907, file: !765, line: 1114)
!907 = !DISubprogram(name: "fmaxf", scope: !761, file: !761, line: 333, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !765, line: 1115)
!909 = !DISubprogram(name: "fmaxl", scope: !761, file: !761, line: 333, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !765, line: 1117)
!911 = !DISubprogram(name: "fmin", scope: !761, file: !761, line: 336, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !765, line: 1118)
!913 = !DISubprogram(name: "fminf", scope: !761, file: !761, line: 336, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !915, file: !765, line: 1119)
!915 = !DISubprogram(name: "fminl", scope: !761, file: !761, line: 336, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !765, line: 1121)
!917 = !DISubprogram(name: "hypot", scope: !761, file: !761, line: 147, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !765, line: 1122)
!919 = !DISubprogram(name: "hypotf", scope: !761, file: !761, line: 147, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !765, line: 1123)
!921 = !DISubprogram(name: "hypotl", scope: !761, file: !761, line: 147, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !765, line: 1125)
!923 = !DISubprogram(name: "ilogb", scope: !761, file: !761, line: 283, type: !924, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!33, !764}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !765, line: 1126)
!927 = !DISubprogram(name: "ilogbf", scope: !761, file: !761, line: 283, type: !928, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DISubroutineType(types: !929)
!929 = !{!33, !32}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !931, file: !765, line: 1127)
!931 = !DISubprogram(name: "ilogbl", scope: !761, file: !761, line: 283, type: !932, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!33, !833}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !765, line: 1129)
!935 = !DISubprogram(name: "lgamma", scope: !761, file: !761, line: 233, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !937, file: !765, line: 1130)
!937 = !DISubprogram(name: "lgammaf", scope: !761, file: !761, line: 233, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !765, line: 1131)
!939 = !DISubprogram(name: "lgammal", scope: !761, file: !761, line: 233, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !941, file: !765, line: 1134)
!941 = !DISubprogram(name: "llrint", scope: !761, file: !761, line: 319, type: !942, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DISubroutineType(types: !943)
!943 = !{!944, !764}
!944 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !946, file: !765, line: 1135)
!946 = !DISubprogram(name: "llrintf", scope: !761, file: !761, line: 319, type: !947, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{!944, !32}
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !950, file: !765, line: 1136)
!950 = !DISubprogram(name: "llrintl", scope: !761, file: !761, line: 319, type: !951, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DISubroutineType(types: !952)
!952 = !{!944, !833}
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !954, file: !765, line: 1138)
!954 = !DISubprogram(name: "llround", scope: !761, file: !761, line: 325, type: !942, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !765, line: 1139)
!956 = !DISubprogram(name: "llroundf", scope: !761, file: !761, line: 325, type: !947, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !958, file: !765, line: 1140)
!958 = !DISubprogram(name: "llroundl", scope: !761, file: !761, line: 325, type: !951, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !960, file: !765, line: 1143)
!960 = !DISubprogram(name: "log1p", scope: !761, file: !761, line: 122, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !962, file: !765, line: 1144)
!962 = !DISubprogram(name: "log1pf", scope: !761, file: !761, line: 122, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !964, file: !765, line: 1145)
!964 = !DISubprogram(name: "log1pl", scope: !761, file: !761, line: 122, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !966, file: !765, line: 1147)
!966 = !DISubprogram(name: "log2", scope: !761, file: !761, line: 133, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !765, line: 1148)
!968 = !DISubprogram(name: "log2f", scope: !761, file: !761, line: 133, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !970, file: !765, line: 1149)
!970 = !DISubprogram(name: "log2l", scope: !761, file: !761, line: 133, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !972, file: !765, line: 1151)
!972 = !DISubprogram(name: "logb", scope: !761, file: !761, line: 125, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !974, file: !765, line: 1152)
!974 = !DISubprogram(name: "logbf", scope: !761, file: !761, line: 125, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !976, file: !765, line: 1153)
!976 = !DISubprogram(name: "logbl", scope: !761, file: !761, line: 125, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !978, file: !765, line: 1155)
!978 = !DISubprogram(name: "lrint", scope: !761, file: !761, line: 317, type: !979, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DISubroutineType(types: !980)
!980 = !{!511, !764}
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !982, file: !765, line: 1156)
!982 = !DISubprogram(name: "lrintf", scope: !761, file: !761, line: 317, type: !983, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DISubroutineType(types: !984)
!984 = !{!511, !32}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !986, file: !765, line: 1157)
!986 = !DISubprogram(name: "lrintl", scope: !761, file: !761, line: 317, type: !987, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DISubroutineType(types: !988)
!988 = !{!511, !833}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !990, file: !765, line: 1159)
!990 = !DISubprogram(name: "lround", scope: !761, file: !761, line: 323, type: !979, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !992, file: !765, line: 1160)
!992 = !DISubprogram(name: "lroundf", scope: !761, file: !761, line: 323, type: !983, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !765, line: 1161)
!994 = !DISubprogram(name: "lroundl", scope: !761, file: !761, line: 323, type: !987, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !996, file: !765, line: 1163)
!996 = !DISubprogram(name: "nan", scope: !761, file: !761, line: 203, type: !997, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DISubroutineType(types: !998)
!998 = !{!764, !638}
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1000, file: !765, line: 1164)
!1000 = !DISubprogram(name: "nanf", scope: !761, file: !761, line: 203, type: !1001, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!32, !638}
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !765, line: 1165)
!1004 = !DISubprogram(name: "nanl", scope: !761, file: !761, line: 203, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!833, !638}
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1008, file: !765, line: 1167)
!1008 = !DISubprogram(name: "nearbyint", scope: !761, file: !761, line: 297, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1010, file: !765, line: 1168)
!1010 = !DISubprogram(name: "nearbyintf", scope: !761, file: !761, line: 297, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1012, file: !765, line: 1169)
!1012 = !DISubprogram(name: "nearbyintl", scope: !761, file: !761, line: 297, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1014, file: !765, line: 1171)
!1014 = !DISubprogram(name: "nextafter", scope: !761, file: !761, line: 262, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1016, file: !765, line: 1172)
!1016 = !DISubprogram(name: "nextafterf", scope: !761, file: !761, line: 262, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1018, file: !765, line: 1173)
!1018 = !DISubprogram(name: "nextafterl", scope: !761, file: !761, line: 262, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1020, file: !765, line: 1175)
!1020 = !DISubprogram(name: "nexttoward", scope: !761, file: !761, line: 264, type: !1021, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!764, !764, !833}
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1024, file: !765, line: 1176)
!1024 = !DISubprogram(name: "nexttowardf", scope: !761, file: !761, line: 264, type: !1025, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!32, !32, !833}
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1028, file: !765, line: 1177)
!1028 = !DISubprogram(name: "nexttowardl", scope: !761, file: !761, line: 264, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1030, file: !765, line: 1179)
!1030 = !DISubprogram(name: "remainder", scope: !761, file: !761, line: 275, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1032, file: !765, line: 1180)
!1032 = !DISubprogram(name: "remainderf", scope: !761, file: !761, line: 275, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !765, line: 1181)
!1034 = !DISubprogram(name: "remainderl", scope: !761, file: !761, line: 275, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !765, line: 1183)
!1036 = !DISubprogram(name: "remquo", scope: !761, file: !761, line: 310, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!764, !764, !764, !792}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1040, file: !765, line: 1184)
!1040 = !DISubprogram(name: "remquof", scope: !761, file: !761, line: 310, type: !1041, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!32, !32, !32, !792}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1044, file: !765, line: 1185)
!1044 = !DISubprogram(name: "remquol", scope: !761, file: !761, line: 310, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!833, !833, !833, !792}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1048, file: !765, line: 1187)
!1048 = !DISubprogram(name: "rint", scope: !761, file: !761, line: 259, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1050, file: !765, line: 1188)
!1050 = !DISubprogram(name: "rintf", scope: !761, file: !761, line: 259, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1052, file: !765, line: 1189)
!1052 = !DISubprogram(name: "rintl", scope: !761, file: !761, line: 259, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1054, file: !765, line: 1191)
!1054 = !DISubprogram(name: "round", scope: !761, file: !761, line: 301, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1056, file: !765, line: 1192)
!1056 = !DISubprogram(name: "roundf", scope: !761, file: !761, line: 301, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1058, file: !765, line: 1193)
!1058 = !DISubprogram(name: "roundl", scope: !761, file: !761, line: 301, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1060, file: !765, line: 1195)
!1060 = !DISubprogram(name: "scalbln", scope: !761, file: !761, line: 293, type: !1061, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!764, !764, !511}
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1064, file: !765, line: 1196)
!1064 = !DISubprogram(name: "scalblnf", scope: !761, file: !761, line: 293, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!32, !32, !511}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1068, file: !765, line: 1197)
!1068 = !DISubprogram(name: "scalblnl", scope: !761, file: !761, line: 293, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!833, !833, !511}
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1072, file: !765, line: 1199)
!1072 = !DISubprogram(name: "scalbn", scope: !761, file: !761, line: 279, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1074, file: !765, line: 1200)
!1074 = !DISubprogram(name: "scalbnf", scope: !761, file: !761, line: 279, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!32, !32, !33}
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1078, file: !765, line: 1201)
!1078 = !DISubprogram(name: "scalbnl", scope: !761, file: !761, line: 279, type: !1079, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!833, !833, !33}
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1082, file: !765, line: 1203)
!1082 = !DISubprogram(name: "tgamma", scope: !761, file: !761, line: 238, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1084, file: !765, line: 1204)
!1084 = !DISubprogram(name: "tgammaf", scope: !761, file: !761, line: 238, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1086, file: !765, line: 1205)
!1086 = !DISubprogram(name: "tgammal", scope: !761, file: !761, line: 238, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1088, file: !765, line: 1207)
!1088 = !DISubprogram(name: "trunc", scope: !761, file: !761, line: 305, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1090, file: !765, line: 1208)
!1090 = !DISubprogram(name: "truncf", scope: !761, file: !761, line: 305, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1092, file: !765, line: 1209)
!1092 = !DISubprogram(name: "truncl", scope: !761, file: !761, line: 305, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !1094, file: !1095, line: 38)
!1094 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !758, line: 79, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !1097, file: !1095, line: 54)
!1097 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !765, line: 380, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!833, !833, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1102, file: !1115, line: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1103, line: 6, baseType: !1104)
!1103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1105, line: 21, baseType: !1106)
!1105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1107, identifier: "_ZTS11__mbstate_t")
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1106, file: !1105, line: 15, baseType: !33, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1106, file: !1105, line: 20, baseType: !1110, size: 32, offset: 32)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1105, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1111, identifier: "_ZTSN11__mbstate_tUt_E")
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1110, file: !1105, line: 18, baseType: !20, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1110, file: !1105, line: 19, baseType: !1114, size: 32)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !114)
!1115 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1115, line: 141)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1118, line: 20, baseType: !20)
!1118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !1115, line: 143)
!1120 = !DISubprogram(name: "btowc", scope: !1121, file: !1121, line: 285, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1117, !33}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1125, file: !1115, line: 144)
!1125 = !DISubprogram(name: "fgetwc", scope: !1121, file: !1121, line: 744, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1117, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1130, line: 5, baseType: !1131)
!1130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1130, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1133, file: !1115, line: 145)
!1133 = !DISubprogram(name: "fgetws", scope: !1121, file: !1121, line: 773, type: !1134, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1136, !1138, !33, !1139}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1136)
!1139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1128)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1141, file: !1115, line: 146)
!1141 = !DISubprogram(name: "fputwc", scope: !1121, file: !1121, line: 758, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1117, !1137, !1128}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1145, file: !1115, line: 147)
!1145 = !DISubprogram(name: "fputws", scope: !1121, file: !1121, line: 780, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!33, !1148, !1139}
!1148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1152, file: !1115, line: 148)
!1152 = !DISubprogram(name: "fwide", scope: !1121, file: !1121, line: 588, type: !1153, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!33, !1128, !33}
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1156, file: !1115, line: 149)
!1156 = !DISubprogram(name: "fwprintf", scope: !1121, file: !1121, line: 595, type: !1157, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!33, !1139, !1148, null}
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1160, file: !1115, line: 150)
!1160 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1121, file: !1121, line: 657, type: !1157, flags: DIFlagPrototyped, spFlags: 0)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1162, file: !1115, line: 151)
!1162 = !DISubprogram(name: "getwc", scope: !1121, file: !1121, line: 745, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1164, file: !1115, line: 152)
!1164 = !DISubprogram(name: "getwchar", scope: !1121, file: !1121, line: 751, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1117}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1168, file: !1115, line: 153)
!1168 = !DISubprogram(name: "mbrlen", scope: !1121, file: !1121, line: 308, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1171, !1173, !1171, !1174}
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1172, line: 46, baseType: !38)
!1172 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!1174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1177, file: !1115, line: 154)
!1177 = !DISubprogram(name: "mbrtowc", scope: !1121, file: !1121, line: 297, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1171, !1138, !1173, !1171, !1174}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1181, file: !1115, line: 155)
!1181 = !DISubprogram(name: "mbsinit", scope: !1121, file: !1121, line: 293, type: !1182, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!33, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1187, file: !1115, line: 156)
!1187 = !DISubprogram(name: "mbsrtowcs", scope: !1121, file: !1121, line: 338, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1171, !1138, !1190, !1171, !1174}
!1190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1193, file: !1115, line: 157)
!1193 = !DISubprogram(name: "putwc", scope: !1121, file: !1121, line: 759, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1195, file: !1115, line: 158)
!1195 = !DISubprogram(name: "putwchar", scope: !1121, file: !1121, line: 765, type: !1196, flags: DIFlagPrototyped, spFlags: 0)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1117, !1137}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1199, file: !1115, line: 160)
!1199 = !DISubprogram(name: "swprintf", scope: !1121, file: !1121, line: 605, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!33, !1138, !1171, !1148, null}
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1203, file: !1115, line: 162)
!1203 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1121, file: !1121, line: 664, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!33, !1148, !1148, null}
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1207, file: !1115, line: 163)
!1207 = !DISubprogram(name: "ungetwc", scope: !1121, file: !1121, line: 788, type: !1208, flags: DIFlagPrototyped, spFlags: 0)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1117, !1117, !1128}
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1211, file: !1115, line: 164)
!1211 = !DISubprogram(name: "vfwprintf", scope: !1121, file: !1121, line: 613, type: !1212, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!33, !1139, !1148, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1216, identifier: "_ZTS13__va_list_tag")
!1216 = !{!1217, !1219, !1220, !1221}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1215, file: !1218, baseType: !20, size: 32)
!1218 = !DIFile(filename: "../TrackingBenchmark/ImageProjection.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1215, file: !1218, baseType: !20, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1215, file: !1218, baseType: !91, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1215, file: !1218, baseType: !91, size: 64, offset: 128)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1223, file: !1115, line: 166)
!1223 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1121, file: !1121, line: 711, type: !1212, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1225, file: !1115, line: 169)
!1225 = !DISubprogram(name: "vswprintf", scope: !1121, file: !1121, line: 626, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!33, !1138, !1171, !1148, !1214}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1115, line: 172)
!1229 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1121, file: !1121, line: 718, type: !1230, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!33, !1148, !1148, !1214}
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1233, file: !1115, line: 174)
!1233 = !DISubprogram(name: "vwprintf", scope: !1121, file: !1121, line: 621, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!33, !1148, !1214}
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1237, file: !1115, line: 176)
!1237 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1121, file: !1121, line: 715, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1239, file: !1115, line: 178)
!1239 = !DISubprogram(name: "wcrtomb", scope: !1121, file: !1121, line: 302, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1171, !1242, !1137, !1174}
!1242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1245, file: !1115, line: 179)
!1245 = !DISubprogram(name: "wcscat", scope: !1121, file: !1121, line: 97, type: !1246, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1136, !1138, !1148}
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1249, file: !1115, line: 180)
!1249 = !DISubprogram(name: "wcscmp", scope: !1121, file: !1121, line: 106, type: !1250, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!33, !1149, !1149}
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1253, file: !1115, line: 181)
!1253 = !DISubprogram(name: "wcscoll", scope: !1121, file: !1121, line: 131, type: !1250, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1255, file: !1115, line: 182)
!1255 = !DISubprogram(name: "wcscpy", scope: !1121, file: !1121, line: 87, type: !1246, flags: DIFlagPrototyped, spFlags: 0)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1257, file: !1115, line: 183)
!1257 = !DISubprogram(name: "wcscspn", scope: !1121, file: !1121, line: 188, type: !1258, flags: DIFlagPrototyped, spFlags: 0)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1171, !1149, !1149}
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1261, file: !1115, line: 184)
!1261 = !DISubprogram(name: "wcsftime", scope: !1121, file: !1121, line: 852, type: !1262, flags: DIFlagPrototyped, spFlags: 0)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1171, !1138, !1171, !1148, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1121, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1269, file: !1115, line: 185)
!1269 = !DISubprogram(name: "wcslen", scope: !1121, file: !1121, line: 223, type: !1270, flags: DIFlagPrototyped, spFlags: 0)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!1171, !1149}
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !1115, line: 186)
!1273 = !DISubprogram(name: "wcsncat", scope: !1121, file: !1121, line: 101, type: !1274, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!1136, !1138, !1148, !1171}
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1277, file: !1115, line: 187)
!1277 = !DISubprogram(name: "wcsncmp", scope: !1121, file: !1121, line: 109, type: !1278, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!33, !1149, !1149, !1171}
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1281, file: !1115, line: 188)
!1281 = !DISubprogram(name: "wcsncpy", scope: !1121, file: !1121, line: 92, type: !1274, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1283, file: !1115, line: 189)
!1283 = !DISubprogram(name: "wcsrtombs", scope: !1121, file: !1121, line: 344, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1171, !1242, !1286, !1171, !1174}
!1286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1289, file: !1115, line: 190)
!1289 = !DISubprogram(name: "wcsspn", scope: !1121, file: !1121, line: 192, type: !1258, flags: DIFlagPrototyped, spFlags: 0)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1291, file: !1115, line: 191)
!1291 = !DISubprogram(name: "wcstod", scope: !1121, file: !1121, line: 378, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!764, !1148, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !1115, line: 193)
!1297 = !DISubprogram(name: "wcstof", scope: !1121, file: !1121, line: 383, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!32, !1148, !1294}
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1115, line: 195)
!1301 = !DISubprogram(name: "wcstok", scope: !1121, file: !1121, line: 218, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1136, !1138, !1148, !1294}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1305, file: !1115, line: 196)
!1305 = !DISubprogram(name: "wcstol", scope: !1121, file: !1121, line: 429, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!511, !1148, !1294, !33}
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1115, line: 197)
!1309 = !DISubprogram(name: "wcstoul", scope: !1121, file: !1121, line: 434, type: !1310, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!38, !1148, !1294, !33}
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1313, file: !1115, line: 198)
!1313 = !DISubprogram(name: "wcsxfrm", scope: !1121, file: !1121, line: 135, type: !1314, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1171, !1138, !1148, !1171}
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1317, file: !1115, line: 199)
!1317 = !DISubprogram(name: "wctob", scope: !1121, file: !1121, line: 289, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!33, !1117}
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1321, file: !1115, line: 200)
!1321 = !DISubprogram(name: "wmemcmp", scope: !1121, file: !1121, line: 259, type: !1278, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1115, line: 201)
!1323 = !DISubprogram(name: "wmemcpy", scope: !1121, file: !1121, line: 263, type: !1274, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1115, line: 202)
!1325 = !DISubprogram(name: "wmemmove", scope: !1121, file: !1121, line: 268, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1136, !1136, !1149, !1171}
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1115, line: 203)
!1329 = !DISubprogram(name: "wmemset", scope: !1121, file: !1121, line: 272, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1136, !1136, !1137, !1171}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1115, line: 204)
!1333 = !DISubprogram(name: "wprintf", scope: !1121, file: !1121, line: 602, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!33, !1148, null}
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1115, line: 205)
!1337 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1121, file: !1121, line: 661, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1115, line: 206)
!1339 = !DISubprogram(name: "wcschr", scope: !1121, file: !1121, line: 165, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1136, !1149, !1137}
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1343, file: !1115, line: 207)
!1343 = !DISubprogram(name: "wcspbrk", scope: !1121, file: !1121, line: 202, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1136, !1149, !1149}
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1115, line: 208)
!1347 = !DISubprogram(name: "wcsrchr", scope: !1121, file: !1121, line: 175, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1115, line: 209)
!1349 = !DISubprogram(name: "wcsstr", scope: !1121, file: !1121, line: 213, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1115, line: 210)
!1351 = !DISubprogram(name: "wmemchr", scope: !1121, file: !1121, line: 254, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1136, !1149, !1137, !1171}
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1355, file: !1115, line: 251)
!1355 = !DISubprogram(name: "wcstold", scope: !1121, file: !1121, line: 385, type: !1356, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!833, !1148, !1294}
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1359, file: !1115, line: 260)
!1359 = !DISubprogram(name: "wcstoll", scope: !1121, file: !1121, line: 442, type: !1360, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!944, !1148, !1294, !33}
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1363, file: !1115, line: 261)
!1363 = !DISubprogram(name: "wcstoull", scope: !1121, file: !1121, line: 449, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1366, !1148, !1294, !33}
!1366 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1355, file: !1115, line: 267)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1115, line: 268)
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1363, file: !1115, line: 269)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !1115, line: 283)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1223, file: !1115, line: 286)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1115, line: 289)
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1237, file: !1115, line: 292)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1355, file: !1115, line: 296)
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1115, line: 297)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1363, file: !1115, line: 298)
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1378, file: !1379, line: 68)
!1378 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1380, file: !1379, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1379 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1380 = !DINamespace(name: "__exception_ptr", scope: !2)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1380, entity: !1382, file: !1379, line: 84)
!1382 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1379, line: 80, type: !1383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1378}
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1386, file: !1391, line: 47)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1387, line: 24, baseType: !1388)
!1387 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1389, line: 37, baseType: !1390)
!1389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1390 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1391 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1393, file: !1391, line: 48)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1387, line: 25, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1389, line: 39, baseType: !1395)
!1395 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1397, file: !1391, line: 49)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1387, line: 26, baseType: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1389, line: 41, baseType: !33)
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1400, file: !1391, line: 50)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1387, line: 27, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1389, line: 44, baseType: !511)
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1403, file: !1391, line: 52)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1404, line: 58, baseType: !1390)
!1404 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1406, file: !1391, line: 53)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1404, line: 60, baseType: !511)
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1408, file: !1391, line: 54)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1404, line: 61, baseType: !511)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1410, file: !1391, line: 55)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1404, line: 62, baseType: !511)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1412, file: !1391, line: 57)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1404, line: 43, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1389, line: 52, baseType: !1388)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1415, file: !1391, line: 58)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1404, line: 44, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1389, line: 54, baseType: !1394)
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1418, file: !1391, line: 59)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1404, line: 45, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1389, line: 56, baseType: !1398)
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1421, file: !1391, line: 60)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1404, line: 46, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1389, line: 58, baseType: !1401)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1424, file: !1391, line: 62)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1404, line: 101, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1389, line: 72, baseType: !511)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1427, file: !1391, line: 63)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1404, line: 87, baseType: !511)
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1429, file: !1391, line: 65)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1430, line: 24, baseType: !1431)
!1430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1389, line: 38, baseType: !1432)
!1432 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1434, file: !1391, line: 66)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1430, line: 25, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1389, line: 40, baseType: !1436)
!1436 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1438, file: !1391, line: 67)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1430, line: 26, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1389, line: 42, baseType: !20)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1441, file: !1391, line: 68)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1430, line: 27, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1389, line: 45, baseType: !38)
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1444, file: !1391, line: 70)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1404, line: 71, baseType: !1432)
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1446, file: !1391, line: 71)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1404, line: 73, baseType: !38)
!1447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1448, file: !1391, line: 72)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1404, line: 74, baseType: !38)
!1449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1450, file: !1391, line: 73)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1404, line: 75, baseType: !38)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1452, file: !1391, line: 75)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1404, line: 49, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1389, line: 53, baseType: !1431)
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1455, file: !1391, line: 76)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1404, line: 50, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1389, line: 55, baseType: !1435)
!1457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1458, file: !1391, line: 77)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1404, line: 51, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1389, line: 57, baseType: !1439)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1461, file: !1391, line: 78)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1404, line: 52, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1389, line: 59, baseType: !1442)
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1464, file: !1391, line: 80)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1404, line: 102, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1389, line: 73, baseType: !38)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1467, file: !1391, line: 81)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1404, line: 90, baseType: !38)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1471, line: 53)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1470, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1470 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1471 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1473, file: !1471, line: 54)
!1473 = !DISubprogram(name: "setlocale", scope: !1470, file: !1470, line: 122, type: !1474, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1243, !33, !638}
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1477, file: !1471, line: 55)
!1477 = !DISubprogram(name: "localeconv", scope: !1470, file: !1470, line: 125, type: !1478, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1482, file: !1484, line: 64)
!1482 = !DISubprogram(name: "isalnum", scope: !1483, file: !1483, line: 108, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1483 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1484 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1486, file: !1484, line: 65)
!1486 = !DISubprogram(name: "isalpha", scope: !1483, file: !1483, line: 109, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1488, file: !1484, line: 66)
!1488 = !DISubprogram(name: "iscntrl", scope: !1483, file: !1483, line: 110, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1490, file: !1484, line: 67)
!1490 = !DISubprogram(name: "isdigit", scope: !1483, file: !1483, line: 111, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1492, file: !1484, line: 68)
!1492 = !DISubprogram(name: "isgraph", scope: !1483, file: !1483, line: 113, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1494, file: !1484, line: 69)
!1494 = !DISubprogram(name: "islower", scope: !1483, file: !1483, line: 112, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1496, file: !1484, line: 70)
!1496 = !DISubprogram(name: "isprint", scope: !1483, file: !1483, line: 114, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1498, file: !1484, line: 71)
!1498 = !DISubprogram(name: "ispunct", scope: !1483, file: !1483, line: 115, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1500, file: !1484, line: 72)
!1500 = !DISubprogram(name: "isspace", scope: !1483, file: !1483, line: 116, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1502, file: !1484, line: 73)
!1502 = !DISubprogram(name: "isupper", scope: !1483, file: !1483, line: 117, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1504, file: !1484, line: 74)
!1504 = !DISubprogram(name: "isxdigit", scope: !1483, file: !1483, line: 118, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1506, file: !1484, line: 75)
!1506 = !DISubprogram(name: "tolower", scope: !1483, file: !1483, line: 122, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1508, file: !1484, line: 76)
!1508 = !DISubprogram(name: "toupper", scope: !1483, file: !1483, line: 125, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1510, file: !1484, line: 87)
!1510 = !DISubprogram(name: "isblank", scope: !1483, file: !1483, line: 130, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1512, file: !1514, line: 127)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !755, line: 63, baseType: !1513)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1514 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1516, file: !1514, line: 128)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !755, line: 71, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1518, identifier: "_ZTS6ldiv_t")
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1517, file: !755, line: 69, baseType: !511, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1517, file: !755, line: 70, baseType: !511, size: 64, offset: 64)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1522, file: !1514, line: 130)
!1522 = !DISubprogram(name: "abort", scope: !755, file: !755, line: 598, type: !1523, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null}
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1526, file: !1514, line: 134)
!1526 = !DISubprogram(name: "atexit", scope: !755, file: !755, line: 602, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!33, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1531, file: !1514, line: 137)
!1531 = !DISubprogram(name: "at_quick_exit", scope: !755, file: !755, line: 607, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1533, file: !1514, line: 140)
!1533 = !DISubprogram(name: "atof", scope: !755, file: !755, line: 102, type: !997, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1535, file: !1514, line: 141)
!1535 = !DISubprogram(name: "atoi", scope: !755, file: !755, line: 105, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!33, !638}
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1539, file: !1514, line: 142)
!1539 = !DISubprogram(name: "atol", scope: !755, file: !755, line: 108, type: !1540, flags: DIFlagPrototyped, spFlags: 0)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!511, !638}
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1543, file: !1514, line: 143)
!1543 = !DISubprogram(name: "bsearch", scope: !755, file: !755, line: 828, type: !1544, flags: DIFlagPrototyped, spFlags: 0)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!91, !92, !92, !1171, !1171, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !755, line: 816, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!33, !92, !92}
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1514, line: 144)
!1551 = !DISubprogram(name: "calloc", scope: !755, file: !755, line: 543, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!91, !1171, !1171}
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1555, file: !1514, line: 145)
!1555 = !DISubprogram(name: "div", scope: !755, file: !755, line: 860, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1512, !33, !33}
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1514, line: 146)
!1559 = !DISubprogram(name: "exit", scope: !755, file: !755, line: 624, type: !1560, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !33}
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1563, file: !1514, line: 147)
!1563 = !DISubprogram(name: "free", scope: !755, file: !755, line: 555, type: !1564, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !91}
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1567, file: !1514, line: 148)
!1567 = !DISubprogram(name: "getenv", scope: !755, file: !755, line: 641, type: !1568, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1243, !638}
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1571, file: !1514, line: 149)
!1571 = !DISubprogram(name: "labs", scope: !755, file: !755, line: 849, type: !1572, flags: DIFlagPrototyped, spFlags: 0)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!511, !511}
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1575, file: !1514, line: 150)
!1575 = !DISubprogram(name: "ldiv", scope: !755, file: !755, line: 862, type: !1576, flags: DIFlagPrototyped, spFlags: 0)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1516, !511, !511}
!1578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1579, file: !1514, line: 151)
!1579 = !DISubprogram(name: "malloc", scope: !755, file: !755, line: 540, type: !1580, flags: DIFlagPrototyped, spFlags: 0)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!91, !1171}
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1583, file: !1514, line: 153)
!1583 = !DISubprogram(name: "mblen", scope: !755, file: !755, line: 930, type: !1584, flags: DIFlagPrototyped, spFlags: 0)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!33, !638, !1171}
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1587, file: !1514, line: 154)
!1587 = !DISubprogram(name: "mbstowcs", scope: !755, file: !755, line: 941, type: !1588, flags: DIFlagPrototyped, spFlags: 0)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1171, !1138, !1173, !1171}
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1591, file: !1514, line: 155)
!1591 = !DISubprogram(name: "mbtowc", scope: !755, file: !755, line: 933, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!33, !1138, !1173, !1171}
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1595, file: !1514, line: 157)
!1595 = !DISubprogram(name: "qsort", scope: !755, file: !755, line: 838, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !91, !1171, !1171, !1546}
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1599, file: !1514, line: 160)
!1599 = !DISubprogram(name: "quick_exit", scope: !755, file: !755, line: 630, type: !1560, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1601, file: !1514, line: 163)
!1601 = !DISubprogram(name: "rand", scope: !755, file: !755, line: 454, type: !1602, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!33}
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1605, file: !1514, line: 164)
!1605 = !DISubprogram(name: "realloc", scope: !755, file: !755, line: 551, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!91, !91, !1171}
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1609, file: !1514, line: 165)
!1609 = !DISubprogram(name: "srand", scope: !755, file: !755, line: 456, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !20}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1613, file: !1514, line: 166)
!1613 = !DISubprogram(name: "strtod", scope: !755, file: !755, line: 118, type: !1614, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!764, !1173, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1619, file: !1514, line: 167)
!1619 = !DISubprogram(name: "strtol", scope: !755, file: !755, line: 177, type: !1620, flags: DIFlagPrototyped, spFlags: 0)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!511, !1173, !1616, !33}
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1623, file: !1514, line: 168)
!1623 = !DISubprogram(name: "strtoul", scope: !755, file: !755, line: 181, type: !1624, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!38, !1173, !1616, !33}
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1627, file: !1514, line: 169)
!1627 = !DISubprogram(name: "system", scope: !755, file: !755, line: 791, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1629, file: !1514, line: 171)
!1629 = !DISubprogram(name: "wcstombs", scope: !755, file: !755, line: 945, type: !1630, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1171, !1242, !1148, !1171}
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1633, file: !1514, line: 172)
!1633 = !DISubprogram(name: "wctomb", scope: !755, file: !755, line: 937, type: !1634, flags: DIFlagPrototyped, spFlags: 0)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!33, !1243, !1137}
!1636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1637, file: !1514, line: 200)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !755, line: 81, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1639, identifier: "_ZTS7lldiv_t")
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1638, file: !755, line: 79, baseType: !944, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1638, file: !755, line: 80, baseType: !944, size: 64, offset: 64)
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1643, file: !1514, line: 206)
!1643 = !DISubprogram(name: "_Exit", scope: !755, file: !755, line: 636, type: !1560, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1645, file: !1514, line: 210)
!1645 = !DISubprogram(name: "llabs", scope: !755, file: !755, line: 852, type: !1646, flags: DIFlagPrototyped, spFlags: 0)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!944, !944}
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1649, file: !1514, line: 216)
!1649 = !DISubprogram(name: "lldiv", scope: !755, file: !755, line: 866, type: !1650, flags: DIFlagPrototyped, spFlags: 0)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1637, !944, !944}
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1653, file: !1514, line: 227)
!1653 = !DISubprogram(name: "atoll", scope: !755, file: !755, line: 113, type: !1654, flags: DIFlagPrototyped, spFlags: 0)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!944, !638}
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1657, file: !1514, line: 228)
!1657 = !DISubprogram(name: "strtoll", scope: !755, file: !755, line: 201, type: !1658, flags: DIFlagPrototyped, spFlags: 0)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!944, !1173, !1616, !33}
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1661, file: !1514, line: 229)
!1661 = !DISubprogram(name: "strtoull", scope: !755, file: !755, line: 206, type: !1662, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1366, !1173, !1616, !33}
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1665, file: !1514, line: 231)
!1665 = !DISubprogram(name: "strtof", scope: !755, file: !755, line: 124, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!32, !1173, !1616}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1669, file: !1514, line: 232)
!1669 = !DISubprogram(name: "strtold", scope: !755, file: !755, line: 127, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!833, !1173, !1616}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1637, file: !1514, line: 240)
!1673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1643, file: !1514, line: 242)
!1674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1645, file: !1514, line: 244)
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1676, file: !1514, line: 245)
!1676 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !145, file: !1514, line: 213, type: !1650, flags: DIFlagPrototyped, spFlags: 0)
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1649, file: !1514, line: 246)
!1678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1653, file: !1514, line: 248)
!1679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1665, file: !1514, line: 249)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1657, file: !1514, line: 250)
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1661, file: !1514, line: 251)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1669, file: !1514, line: 252)
!1683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1684, file: !1686, line: 98)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1685, line: 7, baseType: !1131)
!1685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1686 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1688, file: !1686, line: 99)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1689, line: 84, baseType: !1690)
!1689 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1691, line: 14, baseType: !1692)
!1691 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1691, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1694, file: !1686, line: 101)
!1694 = !DISubprogram(name: "clearerr", scope: !1689, file: !1689, line: 786, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1697}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1699, file: !1686, line: 102)
!1699 = !DISubprogram(name: "fclose", scope: !1689, file: !1689, line: 178, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!33, !1697}
!1702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1703, file: !1686, line: 103)
!1703 = !DISubprogram(name: "feof", scope: !1689, file: !1689, line: 788, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1705, file: !1686, line: 104)
!1705 = !DISubprogram(name: "ferror", scope: !1689, file: !1689, line: 790, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1707, file: !1686, line: 105)
!1707 = !DISubprogram(name: "fflush", scope: !1689, file: !1689, line: 230, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1709, file: !1686, line: 106)
!1709 = !DISubprogram(name: "fgetc", scope: !1689, file: !1689, line: 513, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1711, file: !1686, line: 107)
!1711 = !DISubprogram(name: "fgetpos", scope: !1689, file: !1689, line: 760, type: !1712, flags: DIFlagPrototyped, spFlags: 0)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!33, !1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1697)
!1715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1718, file: !1686, line: 108)
!1718 = !DISubprogram(name: "fgets", scope: !1689, file: !1689, line: 592, type: !1719, flags: DIFlagPrototyped, spFlags: 0)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1243, !1242, !33, !1714}
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1722, file: !1686, line: 109)
!1722 = !DISubprogram(name: "fopen", scope: !1689, file: !1689, line: 258, type: !1723, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1697, !1173, !1173}
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1726, file: !1686, line: 110)
!1726 = !DISubprogram(name: "fprintf", scope: !1689, file: !1689, line: 350, type: !1727, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!33, !1714, !1173, null}
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1730, file: !1686, line: 111)
!1730 = !DISubprogram(name: "fputc", scope: !1689, file: !1689, line: 549, type: !1731, flags: DIFlagPrototyped, spFlags: 0)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!33, !33, !1697}
!1733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1734, file: !1686, line: 112)
!1734 = !DISubprogram(name: "fputs", scope: !1689, file: !1689, line: 655, type: !1735, flags: DIFlagPrototyped, spFlags: 0)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!33, !1173, !1714}
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1738, file: !1686, line: 113)
!1738 = !DISubprogram(name: "fread", scope: !1689, file: !1689, line: 675, type: !1739, flags: DIFlagPrototyped, spFlags: 0)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1171, !1741, !1171, !1171, !1714}
!1741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!1742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1743, file: !1686, line: 114)
!1743 = !DISubprogram(name: "freopen", scope: !1689, file: !1689, line: 265, type: !1744, flags: DIFlagPrototyped, spFlags: 0)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1697, !1173, !1173, !1714}
!1746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1747, file: !1686, line: 115)
!1747 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1689, file: !1689, line: 434, type: !1727, flags: DIFlagPrototyped, spFlags: 0)
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1749, file: !1686, line: 116)
!1749 = !DISubprogram(name: "fseek", scope: !1689, file: !1689, line: 713, type: !1750, flags: DIFlagPrototyped, spFlags: 0)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!33, !1697, !511, !33}
!1752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1753, file: !1686, line: 117)
!1753 = !DISubprogram(name: "fsetpos", scope: !1689, file: !1689, line: 765, type: !1754, flags: DIFlagPrototyped, spFlags: 0)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!33, !1697, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1759, file: !1686, line: 118)
!1759 = !DISubprogram(name: "ftell", scope: !1689, file: !1689, line: 718, type: !1760, flags: DIFlagPrototyped, spFlags: 0)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!511, !1697}
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1763, file: !1686, line: 119)
!1763 = !DISubprogram(name: "fwrite", scope: !1689, file: !1689, line: 681, type: !1764, flags: DIFlagPrototyped, spFlags: 0)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1171, !1766, !1171, !1171, !1714}
!1766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!1767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1768, file: !1686, line: 120)
!1768 = !DISubprogram(name: "getc", scope: !1689, file: !1689, line: 514, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1770, file: !1686, line: 121)
!1770 = !DISubprogram(name: "getchar", scope: !1689, file: !1689, line: 520, type: !1602, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1772, file: !1686, line: 124)
!1772 = !DISubprogram(name: "gets", scope: !1689, file: !1689, line: 605, type: !1773, flags: DIFlagPrototyped, spFlags: 0)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1243, !1243}
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1776, file: !1686, line: 126)
!1776 = !DISubprogram(name: "perror", scope: !1689, file: !1689, line: 804, type: !1777, flags: DIFlagPrototyped, spFlags: 0)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !638}
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1780, file: !1686, line: 127)
!1780 = !DISubprogram(name: "printf", scope: !1689, file: !1689, line: 356, type: !1781, flags: DIFlagPrototyped, spFlags: 0)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!33, !1173, null}
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1784, file: !1686, line: 128)
!1784 = !DISubprogram(name: "putc", scope: !1689, file: !1689, line: 550, type: !1731, flags: DIFlagPrototyped, spFlags: 0)
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1786, file: !1686, line: 129)
!1786 = !DISubprogram(name: "putchar", scope: !1689, file: !1689, line: 556, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1788, file: !1686, line: 130)
!1788 = !DISubprogram(name: "puts", scope: !1689, file: !1689, line: 661, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1790, file: !1686, line: 131)
!1790 = !DISubprogram(name: "remove", scope: !1689, file: !1689, line: 152, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1792, file: !1686, line: 132)
!1792 = !DISubprogram(name: "rename", scope: !1689, file: !1689, line: 154, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!33, !638, !638}
!1795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1796, file: !1686, line: 133)
!1796 = !DISubprogram(name: "rewind", scope: !1689, file: !1689, line: 723, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1798, file: !1686, line: 134)
!1798 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1689, file: !1689, line: 437, type: !1781, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1800, file: !1686, line: 135)
!1800 = !DISubprogram(name: "setbuf", scope: !1689, file: !1689, line: 328, type: !1801, flags: DIFlagPrototyped, spFlags: 0)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1714, !1242}
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1804, file: !1686, line: 136)
!1804 = !DISubprogram(name: "setvbuf", scope: !1689, file: !1689, line: 332, type: !1805, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!33, !1714, !1242, !33, !1171}
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1808, file: !1686, line: 137)
!1808 = !DISubprogram(name: "sprintf", scope: !1689, file: !1689, line: 358, type: !1809, flags: DIFlagPrototyped, spFlags: 0)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!33, !1242, !1173, null}
!1811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1812, file: !1686, line: 138)
!1812 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1689, file: !1689, line: 439, type: !1813, flags: DIFlagPrototyped, spFlags: 0)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!33, !1173, !1173, null}
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1816, file: !1686, line: 139)
!1816 = !DISubprogram(name: "tmpfile", scope: !1689, file: !1689, line: 188, type: !1817, flags: DIFlagPrototyped, spFlags: 0)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1697}
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1820, file: !1686, line: 141)
!1820 = !DISubprogram(name: "tmpnam", scope: !1689, file: !1689, line: 205, type: !1773, flags: DIFlagPrototyped, spFlags: 0)
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1822, file: !1686, line: 143)
!1822 = !DISubprogram(name: "ungetc", scope: !1689, file: !1689, line: 668, type: !1731, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1824, file: !1686, line: 144)
!1824 = !DISubprogram(name: "vfprintf", scope: !1689, file: !1689, line: 365, type: !1825, flags: DIFlagPrototyped, spFlags: 0)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!33, !1714, !1173, !1214}
!1827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1828, file: !1686, line: 145)
!1828 = !DISubprogram(name: "vprintf", scope: !1689, file: !1689, line: 371, type: !1829, flags: DIFlagPrototyped, spFlags: 0)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!33, !1173, !1214}
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1832, file: !1686, line: 146)
!1832 = !DISubprogram(name: "vsprintf", scope: !1689, file: !1689, line: 373, type: !1833, flags: DIFlagPrototyped, spFlags: 0)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!33, !1242, !1173, !1214}
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1836, file: !1686, line: 175)
!1836 = !DISubprogram(name: "snprintf", scope: !1689, file: !1689, line: 378, type: !1837, flags: DIFlagPrototyped, spFlags: 0)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!33, !1242, !1171, !1173, null}
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1840, file: !1686, line: 176)
!1840 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1689, file: !1689, line: 479, type: !1825, flags: DIFlagPrototyped, spFlags: 0)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1842, file: !1686, line: 177)
!1842 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1689, file: !1689, line: 484, type: !1829, flags: DIFlagPrototyped, spFlags: 0)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1844, file: !1686, line: 178)
!1844 = !DISubprogram(name: "vsnprintf", scope: !1689, file: !1689, line: 382, type: !1845, flags: DIFlagPrototyped, spFlags: 0)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!33, !1242, !1171, !1173, !1214}
!1847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !145, entity: !1848, file: !1686, line: 179)
!1848 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1689, file: !1689, line: 487, type: !1849, flags: DIFlagPrototyped, spFlags: 0)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!33, !1173, !1173, !1214}
!1851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1836, file: !1686, line: 185)
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1840, file: !1686, line: 186)
!1853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1842, file: !1686, line: 187)
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1844, file: !1686, line: 188)
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1848, file: !1686, line: 189)
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1857, file: !1861, line: 82)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1858, line: 48, baseType: !1859)
!1858 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1861 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1863, file: !1861, line: 83)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1864, line: 38, baseType: !38)
!1864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1861, line: 84)
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1867, file: !1861, line: 86)
!1867 = !DISubprogram(name: "iswalnum", scope: !1864, file: !1864, line: 95, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1869, file: !1861, line: 87)
!1869 = !DISubprogram(name: "iswalpha", scope: !1864, file: !1864, line: 101, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1871, file: !1861, line: 89)
!1871 = !DISubprogram(name: "iswblank", scope: !1864, file: !1864, line: 146, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1873, file: !1861, line: 91)
!1873 = !DISubprogram(name: "iswcntrl", scope: !1864, file: !1864, line: 104, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1875, file: !1861, line: 92)
!1875 = !DISubprogram(name: "iswctype", scope: !1864, file: !1864, line: 159, type: !1876, flags: DIFlagPrototyped, spFlags: 0)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!33, !1117, !1863}
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1879, file: !1861, line: 93)
!1879 = !DISubprogram(name: "iswdigit", scope: !1864, file: !1864, line: 108, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1881, file: !1861, line: 94)
!1881 = !DISubprogram(name: "iswgraph", scope: !1864, file: !1864, line: 112, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1883, file: !1861, line: 95)
!1883 = !DISubprogram(name: "iswlower", scope: !1864, file: !1864, line: 117, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1885, file: !1861, line: 96)
!1885 = !DISubprogram(name: "iswprint", scope: !1864, file: !1864, line: 120, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1887, file: !1861, line: 97)
!1887 = !DISubprogram(name: "iswpunct", scope: !1864, file: !1864, line: 125, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1889, file: !1861, line: 98)
!1889 = !DISubprogram(name: "iswspace", scope: !1864, file: !1864, line: 130, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1891, file: !1861, line: 99)
!1891 = !DISubprogram(name: "iswupper", scope: !1864, file: !1864, line: 135, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1893, file: !1861, line: 100)
!1893 = !DISubprogram(name: "iswxdigit", scope: !1864, file: !1864, line: 140, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1895, file: !1861, line: 101)
!1895 = !DISubprogram(name: "towctrans", scope: !1858, file: !1858, line: 55, type: !1896, flags: DIFlagPrototyped, spFlags: 0)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1117, !1117, !1857}
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1899, file: !1861, line: 102)
!1899 = !DISubprogram(name: "towlower", scope: !1864, file: !1864, line: 166, type: !1900, flags: DIFlagPrototyped, spFlags: 0)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1117, !1117}
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1903, file: !1861, line: 103)
!1903 = !DISubprogram(name: "towupper", scope: !1864, file: !1864, line: 169, type: !1900, flags: DIFlagPrototyped, spFlags: 0)
!1904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1905, file: !1861, line: 104)
!1905 = !DISubprogram(name: "wctrans", scope: !1858, file: !1858, line: 52, type: !1906, flags: DIFlagPrototyped, spFlags: 0)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1857, !638}
!1908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1909, file: !1861, line: 105)
!1909 = !DISubprogram(name: "wctype", scope: !1864, file: !1864, line: 155, type: !1910, flags: DIFlagPrototyped, spFlags: 0)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1863, !638}
!1912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1913, file: !1917, line: 77)
!1913 = !DISubprogram(name: "memchr", scope: !1914, file: !1914, line: 89, type: !1915, flags: DIFlagPrototyped, spFlags: 0)
!1914 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!92, !92, !33, !1171}
!1917 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1919, file: !1917, line: 78)
!1919 = !DISubprogram(name: "memcmp", scope: !1914, file: !1914, line: 64, type: !1920, flags: DIFlagPrototyped, spFlags: 0)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!33, !92, !92, !1171}
!1922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1923, file: !1917, line: 79)
!1923 = !DISubprogram(name: "memcpy", scope: !1914, file: !1914, line: 43, type: !1924, flags: DIFlagPrototyped, spFlags: 0)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!91, !1741, !1766, !1171}
!1926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1927, file: !1917, line: 80)
!1927 = !DISubprogram(name: "memmove", scope: !1914, file: !1914, line: 47, type: !1928, flags: DIFlagPrototyped, spFlags: 0)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!91, !91, !92, !1171}
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1931, file: !1917, line: 81)
!1931 = !DISubprogram(name: "memset", scope: !1914, file: !1914, line: 61, type: !1932, flags: DIFlagPrototyped, spFlags: 0)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!91, !91, !33, !1171}
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1935, file: !1917, line: 82)
!1935 = !DISubprogram(name: "strcat", scope: !1914, file: !1914, line: 149, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1243, !1242, !1173}
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1939, file: !1917, line: 83)
!1939 = !DISubprogram(name: "strcmp", scope: !1914, file: !1914, line: 156, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1941, file: !1917, line: 84)
!1941 = !DISubprogram(name: "strcoll", scope: !1914, file: !1914, line: 163, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1943, file: !1917, line: 85)
!1943 = !DISubprogram(name: "strcpy", scope: !1914, file: !1914, line: 141, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1945, file: !1917, line: 86)
!1945 = !DISubprogram(name: "strcspn", scope: !1914, file: !1914, line: 293, type: !1946, flags: DIFlagPrototyped, spFlags: 0)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1171, !638, !638}
!1948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1949, file: !1917, line: 87)
!1949 = !DISubprogram(name: "strerror", scope: !1914, file: !1914, line: 419, type: !1950, flags: DIFlagPrototyped, spFlags: 0)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1243, !33}
!1952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1953, file: !1917, line: 88)
!1953 = !DISubprogram(name: "strlen", scope: !1914, file: !1914, line: 407, type: !1954, flags: DIFlagPrototyped, spFlags: 0)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1171, !638}
!1956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1957, file: !1917, line: 89)
!1957 = !DISubprogram(name: "strncat", scope: !1914, file: !1914, line: 152, type: !1958, flags: DIFlagPrototyped, spFlags: 0)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1243, !1242, !1173, !1171}
!1960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1961, file: !1917, line: 90)
!1961 = !DISubprogram(name: "strncmp", scope: !1914, file: !1914, line: 159, type: !1962, flags: DIFlagPrototyped, spFlags: 0)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!33, !638, !638, !1171}
!1964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1965, file: !1917, line: 91)
!1965 = !DISubprogram(name: "strncpy", scope: !1914, file: !1914, line: 144, type: !1958, flags: DIFlagPrototyped, spFlags: 0)
!1966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1967, file: !1917, line: 92)
!1967 = !DISubprogram(name: "strspn", scope: !1914, file: !1914, line: 297, type: !1946, flags: DIFlagPrototyped, spFlags: 0)
!1968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1969, file: !1917, line: 93)
!1969 = !DISubprogram(name: "strtok", scope: !1914, file: !1914, line: 356, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1971, file: !1917, line: 94)
!1971 = !DISubprogram(name: "strxfrm", scope: !1914, file: !1914, line: 166, type: !1972, flags: DIFlagPrototyped, spFlags: 0)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1171, !1242, !1173, !1171}
!1974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1975, file: !1917, line: 95)
!1975 = !DISubprogram(name: "strchr", scope: !1914, file: !1914, line: 228, type: !1976, flags: DIFlagPrototyped, spFlags: 0)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!638, !638, !33}
!1978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1979, file: !1917, line: 96)
!1979 = !DISubprogram(name: "strpbrk", scope: !1914, file: !1914, line: 305, type: !1980, flags: DIFlagPrototyped, spFlags: 0)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!638, !638, !638}
!1982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1983, file: !1917, line: 97)
!1983 = !DISubprogram(name: "strrchr", scope: !1914, file: !1914, line: 255, type: !1976, flags: DIFlagPrototyped, spFlags: 0)
!1984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1985, file: !1917, line: 98)
!1985 = !DISubprogram(name: "strstr", scope: !1914, file: !1914, line: 332, type: !1980, flags: DIFlagPrototyped, spFlags: 0)
!1986 = !{i32 7, !"Dwarf Version", i32 5}
!1987 = !{i32 2, !"Debug Info Version", i32 3}
!1988 = !{i32 1, !"wchar_size", i32 4}
!1989 = !{i32 8, !"PIC Level", i32 2}
!1990 = !{i32 7, !"PIE Level", i32 2}
!1991 = !{i32 7, !"uwtable", i32 2}
!1992 = !{i32 7, !"frame-pointer", i32 2}
!1993 = !{!"clang version 16.0.0"}
!1994 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1218, file: !1218, type: !1523, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !253)
!1995 = !DILocation(line: 74, column: 25, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1994, file: !3, discriminator: 0)
!1997 = !DILocation(line: 0, scope: !1994)
!1998 = distinct !DISubprogram(name: "ImageProjection", linkageName: "_ZN17ProjectedCylinder15ImageProjectionERK10KTCylinderR6Camera", scope: !95, file: !16, line: 50, type: !121, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !120, retainedNodes: !253)
!1999 = !DILocalVariable(name: "this", arg: 1, scope: !1998, type: !94, flags: DIFlagArtificial | DIFlagObjectPointer)
!2000 = !DILocation(line: 0, scope: !1998)
!2001 = !DILocalVariable(name: "cyl", arg: 2, scope: !1998, file: !16, line: 50, type: !123)
!2002 = !DILocation(line: 50, column: 59, scope: !1998)
!2003 = !DILocalVariable(name: "camera", arg: 3, scope: !1998, file: !16, line: 50, type: !127)
!2004 = !DILocation(line: 50, column: 72, scope: !1998)
!2005 = !DILocalVariable(name: "point", scope: !1998, file: !16, line: 52, type: !688)
!2006 = !DILocation(line: 52, column: 11, scope: !1998)
!2007 = !DILocation(line: 52, column: 29, scope: !1998)
!2008 = !DILocation(line: 52, column: 33, scope: !1998)
!2009 = !DILocation(line: 52, column: 39, scope: !1998)
!2010 = !DILocalVariable(name: "r", scope: !1998, file: !16, line: 53, type: !688)
!2011 = !DILocation(line: 53, column: 11, scope: !1998)
!2012 = !DILocation(line: 53, column: 31, scope: !1998)
!2013 = !DILocation(line: 53, column: 35, scope: !1998)
!2014 = !DILocation(line: 53, column: 23, scope: !1998)
!2015 = !DILocation(line: 53, column: 43, scope: !1998)
!2016 = !DILocation(line: 53, column: 50, scope: !1998)
!2017 = !DILocation(line: 53, column: 41, scope: !1998)
!2018 = !DILocation(line: 53, column: 21, scope: !1998)
!2019 = !DILocation(line: 53, column: 15, scope: !1998)
!2020 = !DILocalVariable(name: "rnorm2", scope: !1998, file: !16, line: 54, type: !764)
!2021 = !DILocation(line: 54, column: 9, scope: !1998)
!2022 = !DILocation(line: 54, column: 20, scope: !1998)
!2023 = !DILocation(line: 54, column: 26, scope: !1998)
!2024 = !DILocation(line: 54, column: 32, scope: !1998)
!2025 = !DILocation(line: 54, column: 38, scope: !1998)
!2026 = !DILocation(line: 54, column: 34, scope: !1998)
!2027 = !DILocation(line: 54, column: 28, scope: !1998)
!2028 = !DILocation(line: 54, column: 18, scope: !1998)
!2029 = !DILocalVariable(name: "norm_r", scope: !1998, file: !16, line: 55, type: !32)
!2030 = !DILocation(line: 55, column: 8, scope: !1998)
!2031 = !DILocation(line: 55, column: 29, scope: !1998)
!2032 = !DILocation(line: 55, column: 24, scope: !1998)
!2033 = !DILocalVariable(name: "r2", scope: !1998, file: !16, line: 56, type: !688)
!2034 = !DILocation(line: 56, column: 11, scope: !1998)
!2035 = !DILocation(line: 56, column: 17, scope: !1998)
!2036 = !DILocation(line: 56, column: 14, scope: !1998)
!2037 = !DILocation(line: 56, column: 21, scope: !1998)
!2038 = !DILocation(line: 56, column: 19, scope: !1998)
!2039 = !DILocation(line: 56, column: 31, scope: !1998)
!2040 = !DILocation(line: 56, column: 35, scope: !1998)
!2041 = !DILocation(line: 56, column: 33, scope: !1998)
!2042 = !DILocalVariable(name: "pts", scope: !1998, file: !16, line: 58, type: !2043)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 384, elements: !114)
!2044 = !DILocation(line: 58, column: 11, scope: !1998)
!2045 = !DILocation(line: 59, column: 2, scope: !1998)
!2046 = !DILocation(line: 59, column: 14, scope: !1998)
!2047 = !DILocation(line: 59, column: 18, scope: !1998)
!2048 = !DILocation(line: 59, column: 13, scope: !1998)
!2049 = !DILocation(line: 59, column: 30, scope: !1998)
!2050 = !DILocation(line: 59, column: 25, scope: !1998)
!2051 = !DILocation(line: 59, column: 35, scope: !1998)
!2052 = !DILocation(line: 59, column: 39, scope: !1998)
!2053 = !DILocation(line: 59, column: 34, scope: !1998)
!2054 = !DILocation(line: 59, column: 51, scope: !1998)
!2055 = !DILocation(line: 59, column: 46, scope: !1998)
!2056 = !DILocation(line: 59, column: 56, scope: !1998)
!2057 = !DILocation(line: 59, column: 60, scope: !1998)
!2058 = !DILocation(line: 59, column: 55, scope: !1998)
!2059 = !DILocation(line: 59, column: 72, scope: !1998)
!2060 = !DILocation(line: 59, column: 67, scope: !1998)
!2061 = !DILocation(line: 59, column: 9, scope: !1998)
!2062 = !DILocation(line: 60, column: 2, scope: !1998)
!2063 = !DILocation(line: 60, column: 14, scope: !1998)
!2064 = !DILocation(line: 60, column: 18, scope: !1998)
!2065 = !DILocation(line: 60, column: 13, scope: !1998)
!2066 = !DILocation(line: 60, column: 27, scope: !1998)
!2067 = !DILocation(line: 60, column: 22, scope: !1998)
!2068 = !DILocation(line: 60, column: 32, scope: !1998)
!2069 = !DILocation(line: 60, column: 36, scope: !1998)
!2070 = !DILocation(line: 60, column: 31, scope: !1998)
!2071 = !DILocation(line: 60, column: 45, scope: !1998)
!2072 = !DILocation(line: 60, column: 40, scope: !1998)
!2073 = !DILocation(line: 60, column: 49, scope: !1998)
!2074 = !DILocation(line: 60, column: 53, scope: !1998)
!2075 = !DILocation(line: 60, column: 63, scope: !1998)
!2076 = !DILocation(line: 60, column: 67, scope: !1998)
!2077 = !DILocation(line: 60, column: 76, scope: !1998)
!2078 = !DILocation(line: 60, column: 60, scope: !1998)
!2079 = !DILocation(line: 60, column: 9, scope: !1998)
!2080 = !DILocation(line: 61, column: 2, scope: !1998)
!2081 = !DILocation(line: 61, column: 13, scope: !1998)
!2082 = !DILocation(line: 61, column: 17, scope: !1998)
!2083 = !DILocation(line: 61, column: 26, scope: !1998)
!2084 = !DILocation(line: 61, column: 21, scope: !1998)
!2085 = !DILocation(line: 61, column: 30, scope: !1998)
!2086 = !DILocation(line: 61, column: 34, scope: !1998)
!2087 = !DILocation(line: 61, column: 43, scope: !1998)
!2088 = !DILocation(line: 61, column: 38, scope: !1998)
!2089 = !DILocation(line: 61, column: 47, scope: !1998)
!2090 = !DILocation(line: 61, column: 51, scope: !1998)
!2091 = !DILocation(line: 61, column: 61, scope: !1998)
!2092 = !DILocation(line: 61, column: 65, scope: !1998)
!2093 = !DILocation(line: 61, column: 74, scope: !1998)
!2094 = !DILocation(line: 61, column: 58, scope: !1998)
!2095 = !DILocation(line: 61, column: 9, scope: !1998)
!2096 = !DILocation(line: 62, column: 2, scope: !1998)
!2097 = !DILocation(line: 62, column: 13, scope: !1998)
!2098 = !DILocation(line: 62, column: 17, scope: !1998)
!2099 = !DILocation(line: 62, column: 29, scope: !1998)
!2100 = !DILocation(line: 62, column: 24, scope: !1998)
!2101 = !DILocation(line: 62, column: 33, scope: !1998)
!2102 = !DILocation(line: 62, column: 37, scope: !1998)
!2103 = !DILocation(line: 62, column: 49, scope: !1998)
!2104 = !DILocation(line: 62, column: 44, scope: !1998)
!2105 = !DILocation(line: 62, column: 53, scope: !1998)
!2106 = !DILocation(line: 62, column: 57, scope: !1998)
!2107 = !DILocation(line: 62, column: 69, scope: !1998)
!2108 = !DILocation(line: 62, column: 64, scope: !1998)
!2109 = !DILocation(line: 62, column: 9, scope: !1998)
!2110 = !DILocation(line: 63, column: 11, scope: !1998)
!2111 = !DILocation(line: 63, column: 15, scope: !1998)
!2112 = !DILocation(line: 63, column: 22, scope: !1998)
!2113 = !DILocation(line: 63, column: 20, scope: !1998)
!2114 = !DILocation(line: 63, column: 2, scope: !1998)
!2115 = !DILocation(line: 63, column: 9, scope: !1998)
!2116 = !DILocation(line: 64, column: 11, scope: !1998)
!2117 = !DILocation(line: 64, column: 15, scope: !1998)
!2118 = !DILocation(line: 64, column: 22, scope: !1998)
!2119 = !DILocation(line: 64, column: 20, scope: !1998)
!2120 = !DILocation(line: 64, column: 2, scope: !1998)
!2121 = !DILocation(line: 64, column: 9, scope: !1998)
!2122 = !DILocation(line: 65, column: 11, scope: !1998)
!2123 = !DILocation(line: 65, column: 15, scope: !1998)
!2124 = !DILocation(line: 65, column: 22, scope: !1998)
!2125 = !DILocation(line: 65, column: 20, scope: !1998)
!2126 = !DILocation(line: 65, column: 2, scope: !1998)
!2127 = !DILocation(line: 65, column: 9, scope: !1998)
!2128 = !DILocation(line: 66, column: 11, scope: !1998)
!2129 = !DILocation(line: 66, column: 15, scope: !1998)
!2130 = !DILocation(line: 66, column: 22, scope: !1998)
!2131 = !DILocation(line: 66, column: 20, scope: !1998)
!2132 = !DILocation(line: 66, column: 2, scope: !1998)
!2133 = !DILocation(line: 66, column: 9, scope: !1998)
!2134 = !DILocalVariable(name: "i", scope: !2135, file: !16, line: 68, type: !33)
!2135 = distinct !DILexicalBlock(scope: !1998, file: !16, line: 68, column: 2)
!2136 = !DILocation(line: 68, column: 10, scope: !2135)
!2137 = !DILocation(line: 68, column: 6, scope: !2135)
!2138 = !DILocation(line: 68, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !16, line: 68, column: 2)
!2140 = !DILocation(line: 68, column: 17, scope: !2139)
!2141 = !DILocation(line: 68, column: 2, scope: !2135)
!2142 = !DILocation(line: 69, column: 21, scope: !2139)
!2143 = !DILocation(line: 69, column: 17, scope: !2139)
!2144 = !DILocation(line: 69, column: 25, scope: !2139)
!2145 = !DILocation(line: 69, column: 30, scope: !2139)
!2146 = !DILocation(line: 69, column: 34, scope: !2139)
!2147 = !DILocation(line: 69, column: 3, scope: !2139)
!2148 = !DILocation(line: 68, column: 23, scope: !2139)
!2149 = !DILocation(line: 68, column: 2, scope: !2139)
!2150 = distinct !{!2150, !2141, !2151, !2152}
!2151 = !DILocation(line: 69, column: 40, scope: !2135)
!2152 = !{!"llvm.loop.mustprogress"}
!2153 = !DILocation(line: 70, column: 1, scope: !1998)
!2154 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Efff", scope: !688, file: !689, line: 41, type: !699, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !698, retainedNodes: !253)
!2155 = !DILocalVariable(name: "this", arg: 1, scope: !2154, type: !2156, flags: DIFlagArtificial | DIFlagObjectPointer)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!2157 = !DILocation(line: 0, scope: !2154)
!2158 = !DILocalVariable(name: "xv", arg: 2, scope: !2154, file: !689, line: 41, type: !32)
!2159 = !DILocation(line: 41, column: 19, scope: !2154)
!2160 = !DILocalVariable(name: "yv", arg: 3, scope: !2154, file: !689, line: 41, type: !32)
!2161 = !DILocation(line: 41, column: 25, scope: !2154)
!2162 = !DILocalVariable(name: "zv", arg: 4, scope: !2154, file: !689, line: 41, type: !32)
!2163 = !DILocation(line: 41, column: 31, scope: !2154)
!2164 = !DILocation(line: 41, column: 42, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !689, line: 41, column: 36)
!2166 = !DILocation(line: 41, column: 38, scope: !2165)
!2167 = !DILocation(line: 41, column: 40, scope: !2165)
!2168 = !DILocation(line: 41, column: 51, scope: !2165)
!2169 = !DILocation(line: 41, column: 47, scope: !2165)
!2170 = !DILocation(line: 41, column: 49, scope: !2165)
!2171 = !DILocation(line: 41, column: 59, scope: !2165)
!2172 = !DILocation(line: 41, column: 55, scope: !2165)
!2173 = !DILocation(line: 41, column: 57, scope: !2165)
!2174 = !DILocation(line: 41, column: 63, scope: !2154)
!2175 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !688, file: !689, line: 51, type: !708, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !707, retainedNodes: !253)
!2176 = !DILocalVariable(name: "this", arg: 1, scope: !2175, type: !2177, flags: DIFlagArtificial | DIFlagObjectPointer)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!2178 = !DILocation(line: 0, scope: !2175)
!2179 = !DILocalVariable(name: "v", arg: 2, scope: !2175, file: !689, line: 51, type: !712)
!2180 = !DILocation(line: 51, column: 42, scope: !2175)
!2181 = !DILocation(line: 52, column: 19, scope: !2175)
!2182 = !DILocation(line: 52, column: 23, scope: !2175)
!2183 = !DILocation(line: 52, column: 25, scope: !2175)
!2184 = !DILocation(line: 52, column: 21, scope: !2175)
!2185 = !DILocation(line: 52, column: 28, scope: !2175)
!2186 = !DILocation(line: 52, column: 32, scope: !2175)
!2187 = !DILocation(line: 52, column: 34, scope: !2175)
!2188 = !DILocation(line: 52, column: 30, scope: !2175)
!2189 = !DILocation(line: 52, column: 37, scope: !2175)
!2190 = !DILocation(line: 52, column: 41, scope: !2175)
!2191 = !DILocation(line: 52, column: 43, scope: !2175)
!2192 = !DILocation(line: 52, column: 39, scope: !2175)
!2193 = !DILocation(line: 52, column: 11, scope: !2175)
!2194 = !DILocation(line: 52, column: 4, scope: !2175)
!2195 = distinct !DISubprogram(name: "operator*<float, float>", linkageName: "_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_", scope: !19, file: !19, line: 142, type: !2196, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !2200, retainedNodes: !253)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!688, !2198, !712}
!2198 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!2200 = !{!2201, !2202}
!2201 = !DITemplateTypeParameter(name: "T1", type: !32)
!2202 = !DITemplateTypeParameter(name: "T2", type: !32)
!2203 = !DILocalVariable(name: "dm", arg: 1, scope: !2195, file: !19, line: 142, type: !2198)
!2204 = !DILocation(line: 142, column: 49, scope: !2195)
!2205 = !DILocalVariable(name: "v", arg: 2, scope: !2195, file: !19, line: 142, type: !712)
!2206 = !DILocation(line: 142, column: 72, scope: !2195)
!2207 = !DILocation(line: 144, column: 2, scope: !2195)
!2208 = !DILocalVariable(name: "r", scope: !2195, file: !19, line: 144, type: !688)
!2209 = !DILocation(line: 144, column: 14, scope: !2195)
!2210 = !DILocalVariable(name: "m", scope: !2195, file: !19, line: 145, type: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !40, size: 64)
!2212 = !DILocation(line: 145, column: 15, scope: !2195)
!2213 = !DILocation(line: 145, column: 37, scope: !2195)
!2214 = !DILocation(line: 146, column: 8, scope: !2195)
!2215 = !DILocation(line: 146, column: 17, scope: !2195)
!2216 = !DILocation(line: 146, column: 19, scope: !2195)
!2217 = !DILocation(line: 146, column: 23, scope: !2195)
!2218 = !DILocation(line: 146, column: 32, scope: !2195)
!2219 = !DILocation(line: 146, column: 34, scope: !2195)
!2220 = !DILocation(line: 146, column: 30, scope: !2195)
!2221 = !DILocation(line: 146, column: 21, scope: !2195)
!2222 = !DILocation(line: 146, column: 38, scope: !2195)
!2223 = !DILocation(line: 146, column: 47, scope: !2195)
!2224 = !DILocation(line: 146, column: 49, scope: !2195)
!2225 = !DILocation(line: 146, column: 36, scope: !2195)
!2226 = !DILocation(line: 146, column: 53, scope: !2195)
!2227 = !DILocation(line: 146, column: 51, scope: !2195)
!2228 = !DILocation(line: 146, column: 4, scope: !2195)
!2229 = !DILocation(line: 146, column: 6, scope: !2195)
!2230 = !DILocation(line: 147, column: 8, scope: !2195)
!2231 = !DILocation(line: 147, column: 17, scope: !2195)
!2232 = !DILocation(line: 147, column: 19, scope: !2195)
!2233 = !DILocation(line: 147, column: 23, scope: !2195)
!2234 = !DILocation(line: 147, column: 32, scope: !2195)
!2235 = !DILocation(line: 147, column: 34, scope: !2195)
!2236 = !DILocation(line: 147, column: 30, scope: !2195)
!2237 = !DILocation(line: 147, column: 21, scope: !2195)
!2238 = !DILocation(line: 147, column: 38, scope: !2195)
!2239 = !DILocation(line: 147, column: 47, scope: !2195)
!2240 = !DILocation(line: 147, column: 49, scope: !2195)
!2241 = !DILocation(line: 147, column: 36, scope: !2195)
!2242 = !DILocation(line: 147, column: 53, scope: !2195)
!2243 = !DILocation(line: 147, column: 51, scope: !2195)
!2244 = !DILocation(line: 147, column: 4, scope: !2195)
!2245 = !DILocation(line: 147, column: 6, scope: !2195)
!2246 = !DILocation(line: 148, column: 8, scope: !2195)
!2247 = !DILocation(line: 148, column: 17, scope: !2195)
!2248 = !DILocation(line: 148, column: 19, scope: !2195)
!2249 = !DILocation(line: 148, column: 23, scope: !2195)
!2250 = !DILocation(line: 148, column: 32, scope: !2195)
!2251 = !DILocation(line: 148, column: 34, scope: !2195)
!2252 = !DILocation(line: 148, column: 30, scope: !2195)
!2253 = !DILocation(line: 148, column: 21, scope: !2195)
!2254 = !DILocation(line: 148, column: 38, scope: !2195)
!2255 = !DILocation(line: 148, column: 47, scope: !2195)
!2256 = !DILocation(line: 148, column: 49, scope: !2195)
!2257 = !DILocation(line: 148, column: 36, scope: !2195)
!2258 = !DILocation(line: 148, column: 53, scope: !2195)
!2259 = !DILocation(line: 148, column: 51, scope: !2195)
!2260 = !DILocation(line: 148, column: 4, scope: !2195)
!2261 = !DILocation(line: 148, column: 6, scope: !2195)
!2262 = !DILocation(line: 149, column: 2, scope: !2195)
!2263 = !DILocation(line: 150, column: 1, scope: !2195)
!2264 = distinct !DISubprogram(name: "Inverse<float>", linkageName: "_Z7InverseIfE7DMatrixIT_ERKS2_", scope: !19, file: !19, line: 233, type: !2265, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !89, retainedNodes: !253)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!40, !2198}
!2267 = !DILocalVariable(name: "dm", arg: 1, scope: !2264, file: !19, line: 233, type: !2198)
!2268 = !DILocation(line: 233, column: 38, scope: !2264)
!2269 = !DILocation(line: 235, column: 2, scope: !2264)
!2270 = !DILocalVariable(name: "r", scope: !2264, file: !19, line: 235, type: !40)
!2271 = !DILocation(line: 235, column: 13, scope: !2264)
!2272 = !DILocalVariable(name: "m", scope: !2264, file: !19, line: 235, type: !2211)
!2273 = !DILocation(line: 235, column: 17, scope: !2264)
!2274 = !DILocation(line: 235, column: 38, scope: !2264)
!2275 = !DILocation(line: 236, column: 4, scope: !2264)
!2276 = !DILocalVariable(name: "k1", scope: !2264, file: !19, line: 237, type: !32)
!2277 = !DILocation(line: 237, column: 4, scope: !2264)
!2278 = !DILocation(line: 237, column: 9, scope: !2264)
!2279 = !DILocation(line: 237, column: 18, scope: !2264)
!2280 = !DILocation(line: 237, column: 27, scope: !2264)
!2281 = !DILocation(line: 237, column: 36, scope: !2264)
!2282 = !DILocation(line: 237, column: 34, scope: !2264)
!2283 = !DILocation(line: 237, column: 25, scope: !2264)
!2284 = !DILocalVariable(name: "k2", scope: !2264, file: !19, line: 238, type: !32)
!2285 = !DILocation(line: 238, column: 4, scope: !2264)
!2286 = !DILocation(line: 238, column: 9, scope: !2264)
!2287 = !DILocation(line: 238, column: 18, scope: !2264)
!2288 = !DILocation(line: 238, column: 27, scope: !2264)
!2289 = !DILocation(line: 238, column: 36, scope: !2264)
!2290 = !DILocation(line: 238, column: 34, scope: !2264)
!2291 = !DILocation(line: 238, column: 25, scope: !2264)
!2292 = !DILocalVariable(name: "k3", scope: !2264, file: !19, line: 239, type: !32)
!2293 = !DILocation(line: 239, column: 4, scope: !2264)
!2294 = !DILocation(line: 239, column: 9, scope: !2264)
!2295 = !DILocation(line: 239, column: 18, scope: !2264)
!2296 = !DILocation(line: 239, column: 27, scope: !2264)
!2297 = !DILocation(line: 239, column: 36, scope: !2264)
!2298 = !DILocation(line: 239, column: 34, scope: !2264)
!2299 = !DILocation(line: 239, column: 25, scope: !2264)
!2300 = !DILocalVariable(name: "c", scope: !2264, file: !19, line: 240, type: !32)
!2301 = !DILocation(line: 240, column: 4, scope: !2264)
!2302 = !DILocation(line: 240, column: 18, scope: !2264)
!2303 = !DILocation(line: 240, column: 27, scope: !2264)
!2304 = !DILocation(line: 240, column: 32, scope: !2264)
!2305 = !DILocation(line: 240, column: 41, scope: !2264)
!2306 = !DILocation(line: 240, column: 39, scope: !2264)
!2307 = !DILocation(line: 240, column: 30, scope: !2264)
!2308 = !DILocation(line: 240, column: 46, scope: !2264)
!2309 = !DILocation(line: 240, column: 55, scope: !2264)
!2310 = !DILocation(line: 240, column: 44, scope: !2264)
!2311 = !DILocation(line: 240, column: 15, scope: !2264)
!2312 = !DILocation(line: 241, column: 11, scope: !2264)
!2313 = !DILocation(line: 241, column: 15, scope: !2264)
!2314 = !DILocation(line: 241, column: 13, scope: !2264)
!2315 = !DILocation(line: 241, column: 2, scope: !2264)
!2316 = !DILocation(line: 241, column: 9, scope: !2264)
!2317 = !DILocation(line: 242, column: 11, scope: !2264)
!2318 = !DILocation(line: 242, column: 16, scope: !2264)
!2319 = !DILocation(line: 242, column: 25, scope: !2264)
!2320 = !DILocation(line: 242, column: 34, scope: !2264)
!2321 = !DILocation(line: 242, column: 43, scope: !2264)
!2322 = !DILocation(line: 242, column: 41, scope: !2264)
!2323 = !DILocation(line: 242, column: 32, scope: !2264)
!2324 = !DILocation(line: 242, column: 13, scope: !2264)
!2325 = !DILocation(line: 242, column: 2, scope: !2264)
!2326 = !DILocation(line: 242, column: 9, scope: !2264)
!2327 = !DILocation(line: 243, column: 11, scope: !2264)
!2328 = !DILocation(line: 243, column: 16, scope: !2264)
!2329 = !DILocation(line: 243, column: 25, scope: !2264)
!2330 = !DILocation(line: 243, column: 34, scope: !2264)
!2331 = !DILocation(line: 243, column: 43, scope: !2264)
!2332 = !DILocation(line: 243, column: 41, scope: !2264)
!2333 = !DILocation(line: 243, column: 32, scope: !2264)
!2334 = !DILocation(line: 243, column: 13, scope: !2264)
!2335 = !DILocation(line: 243, column: 2, scope: !2264)
!2336 = !DILocation(line: 243, column: 9, scope: !2264)
!2337 = !DILocation(line: 244, column: 11, scope: !2264)
!2338 = !DILocation(line: 244, column: 16, scope: !2264)
!2339 = !DILocation(line: 244, column: 15, scope: !2264)
!2340 = !DILocation(line: 244, column: 13, scope: !2264)
!2341 = !DILocation(line: 244, column: 2, scope: !2264)
!2342 = !DILocation(line: 244, column: 9, scope: !2264)
!2343 = !DILocation(line: 245, column: 11, scope: !2264)
!2344 = !DILocation(line: 245, column: 16, scope: !2264)
!2345 = !DILocation(line: 245, column: 25, scope: !2264)
!2346 = !DILocation(line: 245, column: 34, scope: !2264)
!2347 = !DILocation(line: 245, column: 43, scope: !2264)
!2348 = !DILocation(line: 245, column: 41, scope: !2264)
!2349 = !DILocation(line: 245, column: 32, scope: !2264)
!2350 = !DILocation(line: 245, column: 13, scope: !2264)
!2351 = !DILocation(line: 245, column: 2, scope: !2264)
!2352 = !DILocation(line: 245, column: 9, scope: !2264)
!2353 = !DILocation(line: 246, column: 11, scope: !2264)
!2354 = !DILocation(line: 246, column: 16, scope: !2264)
!2355 = !DILocation(line: 246, column: 25, scope: !2264)
!2356 = !DILocation(line: 246, column: 34, scope: !2264)
!2357 = !DILocation(line: 246, column: 43, scope: !2264)
!2358 = !DILocation(line: 246, column: 41, scope: !2264)
!2359 = !DILocation(line: 246, column: 32, scope: !2264)
!2360 = !DILocation(line: 246, column: 13, scope: !2264)
!2361 = !DILocation(line: 246, column: 2, scope: !2264)
!2362 = !DILocation(line: 246, column: 9, scope: !2264)
!2363 = !DILocation(line: 247, column: 11, scope: !2264)
!2364 = !DILocation(line: 247, column: 15, scope: !2264)
!2365 = !DILocation(line: 247, column: 13, scope: !2264)
!2366 = !DILocation(line: 247, column: 2, scope: !2264)
!2367 = !DILocation(line: 247, column: 9, scope: !2264)
!2368 = !DILocation(line: 248, column: 11, scope: !2264)
!2369 = !DILocation(line: 248, column: 16, scope: !2264)
!2370 = !DILocation(line: 248, column: 25, scope: !2264)
!2371 = !DILocation(line: 248, column: 34, scope: !2264)
!2372 = !DILocation(line: 248, column: 43, scope: !2264)
!2373 = !DILocation(line: 248, column: 41, scope: !2264)
!2374 = !DILocation(line: 248, column: 32, scope: !2264)
!2375 = !DILocation(line: 248, column: 13, scope: !2264)
!2376 = !DILocation(line: 248, column: 2, scope: !2264)
!2377 = !DILocation(line: 248, column: 9, scope: !2264)
!2378 = !DILocation(line: 249, column: 11, scope: !2264)
!2379 = !DILocation(line: 249, column: 16, scope: !2264)
!2380 = !DILocation(line: 249, column: 25, scope: !2264)
!2381 = !DILocation(line: 249, column: 34, scope: !2264)
!2382 = !DILocation(line: 249, column: 43, scope: !2264)
!2383 = !DILocation(line: 249, column: 41, scope: !2264)
!2384 = !DILocation(line: 249, column: 32, scope: !2264)
!2385 = !DILocation(line: 249, column: 13, scope: !2264)
!2386 = !DILocation(line: 249, column: 2, scope: !2264)
!2387 = !DILocation(line: 249, column: 9, scope: !2264)
!2388 = !DILocalVariable(name: "v", scope: !2264, file: !19, line: 250, type: !688)
!2389 = !DILocation(line: 250, column: 13, scope: !2264)
!2390 = !DILocation(line: 250, column: 16, scope: !2264)
!2391 = !DILocation(line: 250, column: 15, scope: !2264)
!2392 = !DILocation(line: 250, column: 25, scope: !2264)
!2393 = !DILocation(line: 250, column: 24, scope: !2264)
!2394 = !DILocation(line: 250, column: 34, scope: !2264)
!2395 = !DILocation(line: 250, column: 33, scope: !2264)
!2396 = !DILocalVariable(name: "t", scope: !2264, file: !19, line: 251, type: !688)
!2397 = !DILocation(line: 251, column: 13, scope: !2264)
!2398 = !DILocation(line: 251, column: 19, scope: !2264)
!2399 = !DILocation(line: 252, column: 13, scope: !2264)
!2400 = !DILocation(line: 252, column: 2, scope: !2264)
!2401 = !DILocation(line: 252, column: 9, scope: !2264)
!2402 = !DILocation(line: 252, column: 28, scope: !2264)
!2403 = !DILocation(line: 252, column: 17, scope: !2264)
!2404 = !DILocation(line: 252, column: 24, scope: !2264)
!2405 = !DILocation(line: 252, column: 42, scope: !2264)
!2406 = !DILocation(line: 252, column: 31, scope: !2264)
!2407 = !DILocation(line: 252, column: 38, scope: !2264)
!2408 = !DILocation(line: 253, column: 2, scope: !2264)
!2409 = !DILocation(line: 254, column: 1, scope: !2264)
!2410 = distinct !DISubprogram(name: "~Vector3", linkageName: "_ZN7Vector3IfED2Ev", scope: !688, file: !689, line: 44, type: !695, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !705, retainedNodes: !253)
!2411 = !DILocalVariable(name: "this", arg: 1, scope: !2410, type: !2156, flags: DIFlagArtificial | DIFlagObjectPointer)
!2412 = !DILocation(line: 0, scope: !2410)
!2413 = !DILocation(line: 44, column: 14, scope: !2410)
!2414 = distinct !DISubprogram(name: "~DMatrix", linkageName: "_ZN7DMatrixIfED2Ev", scope: !40, file: !19, line: 57, type: !48, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !70, retainedNodes: !253)
!2415 = !DILocalVariable(name: "this", arg: 1, scope: !2414, type: !39, flags: DIFlagArtificial | DIFlagObjectPointer)
!2416 = !DILocation(line: 0, scope: !2414)
!2417 = !DILocation(line: 57, column: 14, scope: !2414)
!2418 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Ev", scope: !688, file: !689, line: 40, type: !695, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !694, retainedNodes: !253)
!2419 = !DILocalVariable(name: "this", arg: 1, scope: !2418, type: !2156, flags: DIFlagArtificial | DIFlagObjectPointer)
!2420 = !DILocation(line: 0, scope: !2418)
!2421 = !DILocation(line: 40, column: 13, scope: !2418)
!2422 = distinct !DISubprogram(name: "Set", linkageName: "_ZN7Vector3IfE3SetEfff", scope: !688, file: !689, line: 47, type: !699, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !706, retainedNodes: !253)
!2423 = !DILocalVariable(name: "this", arg: 1, scope: !2422, type: !2156, flags: DIFlagArtificial | DIFlagObjectPointer)
!2424 = !DILocation(line: 0, scope: !2422)
!2425 = !DILocalVariable(name: "xv", arg: 2, scope: !2422, file: !689, line: 47, type: !32)
!2426 = !DILocation(line: 47, column: 20, scope: !2422)
!2427 = !DILocalVariable(name: "yv", arg: 3, scope: !2422, file: !689, line: 47, type: !32)
!2428 = !DILocation(line: 47, column: 26, scope: !2422)
!2429 = !DILocalVariable(name: "zv", arg: 4, scope: !2422, file: !689, line: 47, type: !32)
!2430 = !DILocation(line: 47, column: 32, scope: !2422)
!2431 = !DILocation(line: 47, column: 43, scope: !2422)
!2432 = !DILocation(line: 47, column: 39, scope: !2422)
!2433 = !DILocation(line: 47, column: 41, scope: !2422)
!2434 = !DILocation(line: 47, column: 52, scope: !2422)
!2435 = !DILocation(line: 47, column: 48, scope: !2422)
!2436 = !DILocation(line: 47, column: 50, scope: !2422)
!2437 = !DILocation(line: 47, column: 60, scope: !2422)
!2438 = !DILocation(line: 47, column: 56, scope: !2422)
!2439 = !DILocation(line: 47, column: 58, scope: !2422)
!2440 = !DILocation(line: 47, column: 64, scope: !2422)
!2441 = distinct !DISubprogram(name: "ProjectPoints", linkageName: "_Z13ProjectPointsR7Vector3IfER5PointR6Camera", scope: !16, file: !16, line: 27, type: !2442, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !253)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2444, !2445, !127}
!2444 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !688, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100, size: 64)
!2446 = !DILocalVariable(name: "pt_3D", arg: 1, scope: !2441, file: !16, line: 27, type: !2444)
!2447 = !DILocation(line: 27, column: 37, scope: !2441)
!2448 = !DILocalVariable(name: "pt_2D", arg: 2, scope: !2441, file: !16, line: 27, type: !2445)
!2449 = !DILocation(line: 27, column: 51, scope: !2441)
!2450 = !DILocalVariable(name: "camera", arg: 3, scope: !2441, file: !16, line: 27, type: !127)
!2451 = !DILocation(line: 27, column: 66, scope: !2441)
!2452 = !DILocalVariable(name: "X2", scope: !2441, file: !16, line: 29, type: !688)
!2453 = !DILocation(line: 29, column: 11, scope: !2441)
!2454 = !DILocation(line: 29, column: 16, scope: !2441)
!2455 = !DILocation(line: 29, column: 23, scope: !2441)
!2456 = !DILocation(line: 29, column: 32, scope: !2441)
!2457 = !DILocation(line: 29, column: 30, scope: !2441)
!2458 = !DILocalVariable(name: "inv_Z", scope: !2441, file: !16, line: 30, type: !32)
!2459 = !DILocation(line: 30, column: 8, scope: !2441)
!2460 = !DILocation(line: 30, column: 26, scope: !2441)
!2461 = !DILocation(line: 30, column: 22, scope: !2441)
!2462 = !DILocalVariable(name: "pt", scope: !2441, file: !16, line: 31, type: !100)
!2463 = !DILocation(line: 31, column: 8, scope: !2441)
!2464 = !DILocation(line: 31, column: 11, scope: !2441)
!2465 = !DILocation(line: 31, column: 22, scope: !2441)
!2466 = !DILocation(line: 31, column: 17, scope: !2441)
!2467 = !DILocation(line: 31, column: 24, scope: !2441)
!2468 = !DILocation(line: 31, column: 35, scope: !2441)
!2469 = !DILocation(line: 31, column: 30, scope: !2441)
!2470 = !DILocalVariable(name: "r2", scope: !2441, file: !16, line: 33, type: !32)
!2471 = !DILocation(line: 33, column: 8, scope: !2441)
!2472 = !DILocation(line: 33, column: 17, scope: !2441)
!2473 = !DILocation(line: 33, column: 24, scope: !2441)
!2474 = !DILocation(line: 33, column: 33, scope: !2441)
!2475 = !DILocation(line: 33, column: 40, scope: !2441)
!2476 = !DILocation(line: 33, column: 35, scope: !2441)
!2477 = !DILocation(line: 33, column: 27, scope: !2441)
!2478 = !DILocalVariable(name: "r4", scope: !2441, file: !16, line: 34, type: !32)
!2479 = !DILocation(line: 34, column: 8, scope: !2441)
!2480 = !DILocation(line: 34, column: 13, scope: !2441)
!2481 = !DILocation(line: 34, column: 18, scope: !2441)
!2482 = !DILocation(line: 34, column: 16, scope: !2441)
!2483 = !DILocalVariable(name: "r6", scope: !2441, file: !16, line: 35, type: !32)
!2484 = !DILocation(line: 35, column: 8, scope: !2441)
!2485 = !DILocation(line: 35, column: 13, scope: !2441)
!2486 = !DILocation(line: 35, column: 18, scope: !2441)
!2487 = !DILocation(line: 35, column: 16, scope: !2441)
!2488 = !DILocalVariable(name: "cdist", scope: !2441, file: !16, line: 36, type: !32)
!2489 = !DILocation(line: 36, column: 8, scope: !2441)
!2490 = !DILocation(line: 36, column: 24, scope: !2441)
!2491 = !DILocation(line: 36, column: 31, scope: !2441)
!2492 = !DILocation(line: 36, column: 39, scope: !2441)
!2493 = !DILocation(line: 36, column: 22, scope: !2441)
!2494 = !DILocation(line: 36, column: 44, scope: !2441)
!2495 = !DILocation(line: 36, column: 51, scope: !2441)
!2496 = !DILocation(line: 36, column: 59, scope: !2441)
!2497 = !DILocation(line: 36, column: 42, scope: !2441)
!2498 = !DILocation(line: 36, column: 64, scope: !2441)
!2499 = !DILocation(line: 36, column: 71, scope: !2441)
!2500 = !DILocation(line: 36, column: 79, scope: !2441)
!2501 = !DILocation(line: 36, column: 62, scope: !2441)
!2502 = !DILocalVariable(name: "pt2", scope: !2441, file: !16, line: 37, type: !100)
!2503 = !DILocation(line: 37, column: 8, scope: !2441)
!2504 = !DILocation(line: 37, column: 12, scope: !2441)
!2505 = !DILocation(line: 37, column: 23, scope: !2441)
!2506 = !DILocation(line: 37, column: 18, scope: !2441)
!2507 = !DILocation(line: 37, column: 25, scope: !2441)
!2508 = !DILocation(line: 37, column: 36, scope: !2441)
!2509 = !DILocation(line: 37, column: 31, scope: !2441)
!2510 = !DILocalVariable(name: "a1", scope: !2441, file: !16, line: 39, type: !32)
!2511 = !DILocation(line: 39, column: 8, scope: !2441)
!2512 = !DILocation(line: 39, column: 20, scope: !2441)
!2513 = !DILocation(line: 39, column: 15, scope: !2441)
!2514 = !DILocation(line: 39, column: 27, scope: !2441)
!2515 = !DILocation(line: 39, column: 22, scope: !2441)
!2516 = !DILocalVariable(name: "a2", scope: !2441, file: !16, line: 40, type: !32)
!2517 = !DILocation(line: 40, column: 8, scope: !2441)
!2518 = !DILocation(line: 40, column: 13, scope: !2441)
!2519 = !DILocation(line: 40, column: 26, scope: !2441)
!2520 = !DILocation(line: 40, column: 33, scope: !2441)
!2521 = !DILocation(line: 40, column: 28, scope: !2441)
!2522 = !DILocation(line: 40, column: 16, scope: !2441)
!2523 = !DILocalVariable(name: "a3", scope: !2441, file: !16, line: 41, type: !32)
!2524 = !DILocation(line: 41, column: 8, scope: !2441)
!2525 = !DILocation(line: 41, column: 13, scope: !2441)
!2526 = !DILocation(line: 41, column: 26, scope: !2441)
!2527 = !DILocation(line: 41, column: 33, scope: !2441)
!2528 = !DILocation(line: 41, column: 28, scope: !2441)
!2529 = !DILocation(line: 41, column: 16, scope: !2441)
!2530 = !DILocalVariable(name: "pt3", scope: !2441, file: !16, line: 43, type: !100)
!2531 = !DILocation(line: 43, column: 8, scope: !2441)
!2532 = !DILocation(line: 43, column: 16, scope: !2441)
!2533 = !DILocation(line: 43, column: 20, scope: !2441)
!2534 = !DILocation(line: 43, column: 27, scope: !2441)
!2535 = !DILocation(line: 43, column: 35, scope: !2441)
!2536 = !DILocation(line: 43, column: 18, scope: !2441)
!2537 = !DILocation(line: 43, column: 40, scope: !2441)
!2538 = !DILocation(line: 43, column: 47, scope: !2441)
!2539 = !DILocation(line: 43, column: 55, scope: !2441)
!2540 = !DILocation(line: 43, column: 38, scope: !2441)
!2541 = !DILocation(line: 43, column: 64, scope: !2441)
!2542 = !DILocation(line: 43, column: 68, scope: !2441)
!2543 = !DILocation(line: 43, column: 75, scope: !2441)
!2544 = !DILocation(line: 43, column: 83, scope: !2441)
!2545 = !DILocation(line: 43, column: 66, scope: !2441)
!2546 = !DILocation(line: 43, column: 88, scope: !2441)
!2547 = !DILocation(line: 43, column: 95, scope: !2441)
!2548 = !DILocation(line: 43, column: 103, scope: !2441)
!2549 = !DILocation(line: 43, column: 86, scope: !2441)
!2550 = !DILocalVariable(name: "pt4", scope: !2441, file: !16, line: 44, type: !100)
!2551 = !DILocation(line: 44, column: 8, scope: !2441)
!2552 = !DILocation(line: 44, column: 16, scope: !2441)
!2553 = !DILocation(line: 44, column: 20, scope: !2441)
!2554 = !DILocation(line: 44, column: 27, scope: !2441)
!2555 = !DILocation(line: 44, column: 41, scope: !2441)
!2556 = !DILocation(line: 44, column: 18, scope: !2441)
!2557 = !DILocation(line: 44, column: 48, scope: !2441)
!2558 = !DILocation(line: 46, column: 2, scope: !2441)
!2559 = !DILocation(line: 46, column: 12, scope: !2441)
!2560 = !DILocation(line: 46, column: 19, scope: !2441)
!2561 = !DILocation(line: 46, column: 22, scope: !2441)
!2562 = !DILocation(line: 46, column: 30, scope: !2441)
!2563 = !DILocation(line: 46, column: 34, scope: !2441)
!2564 = !DILocation(line: 46, column: 41, scope: !2441)
!2565 = !DILocation(line: 46, column: 44, scope: !2441)
!2566 = !DILocation(line: 46, column: 32, scope: !2441)
!2567 = !DILocation(line: 46, column: 48, scope: !2441)
!2568 = !DILocation(line: 46, column: 55, scope: !2441)
!2569 = !DILocation(line: 46, column: 58, scope: !2441)
!2570 = !DILocation(line: 46, column: 66, scope: !2441)
!2571 = !DILocation(line: 46, column: 70, scope: !2441)
!2572 = !DILocation(line: 46, column: 77, scope: !2441)
!2573 = !DILocation(line: 46, column: 80, scope: !2441)
!2574 = !DILocation(line: 46, column: 68, scope: !2441)
!2575 = !DILocation(line: 46, column: 8, scope: !2441)
!2576 = !DILocation(line: 47, column: 1, scope: !2441)
!2577 = distinct !DISubprogram(name: "ImageProjection", linkageName: "_ZN13ProjectedBody15ImageProjectionERK12BodyGeometryR6Camera", scope: !666, file: !16, line: 73, type: !678, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !677, retainedNodes: !253)
!2578 = !DILocalVariable(name: "this", arg: 1, scope: !2577, type: !665, flags: DIFlagArtificial | DIFlagObjectPointer)
!2579 = !DILocation(line: 0, scope: !2577)
!2580 = !DILocalVariable(name: "body", arg: 2, scope: !2577, file: !16, line: 73, type: !680)
!2581 = !DILocation(line: 73, column: 57, scope: !2577)
!2582 = !DILocalVariable(name: "camera", arg: 3, scope: !2577, file: !16, line: 73, type: !127)
!2583 = !DILocation(line: 73, column: 71, scope: !2577)
!2584 = !DILocalVariable(name: "n_parts", scope: !2577, file: !16, line: 75, type: !33)
!2585 = !DILocation(line: 75, column: 6, scope: !2577)
!2586 = !DILocation(line: 75, column: 16, scope: !2577)
!2587 = !DILocation(line: 75, column: 21, scope: !2577)
!2588 = !DILocation(line: 76, column: 2, scope: !2577)
!2589 = !DILocation(line: 76, column: 19, scope: !2577)
!2590 = !DILocation(line: 76, column: 12, scope: !2577)
!2591 = !DILocalVariable(name: "i", scope: !2592, file: !16, line: 78, type: !33)
!2592 = distinct !DILexicalBlock(scope: !2577, file: !16, line: 78, column: 2)
!2593 = !DILocation(line: 78, column: 10, scope: !2592)
!2594 = !DILocation(line: 78, column: 6, scope: !2592)
!2595 = !DILocation(line: 78, column: 14, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !16, line: 78, column: 2)
!2597 = !DILocation(line: 78, column: 16, scope: !2596)
!2598 = !DILocation(line: 78, column: 15, scope: !2596)
!2599 = !DILocation(line: 78, column: 2, scope: !2592)
!2600 = !DILocation(line: 79, column: 3, scope: !2596)
!2601 = !DILocation(line: 79, column: 13, scope: !2596)
!2602 = !DILocation(line: 79, column: 32, scope: !2596)
!2603 = !DILocation(line: 79, column: 37, scope: !2596)
!2604 = !DILocation(line: 79, column: 41, scope: !2596)
!2605 = !DILocation(line: 79, column: 16, scope: !2596)
!2606 = !DILocation(line: 78, column: 25, scope: !2596)
!2607 = !DILocation(line: 78, column: 2, scope: !2596)
!2608 = distinct !{!2608, !2599, !2609, !2152}
!2609 = !DILocation(line: 79, column: 47, scope: !2592)
!2610 = !DILocation(line: 80, column: 1, scope: !2577)
!2611 = distinct !DISubprogram(name: "GetBodyPartCount", linkageName: "_ZNK12BodyGeometry16GetBodyPartCountEv", scope: !682, file: !126, line: 101, type: !2612, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2615, retainedNodes: !253)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!33, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2615 = !DISubprogram(name: "GetBodyPartCount", linkageName: "_ZNK12BodyGeometry16GetBodyPartCountEv", scope: !682, file: !126, line: 101, type: !2612, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2616 = !DILocalVariable(name: "this", arg: 1, scope: !2611, type: !2617, flags: DIFlagArtificial | DIFlagObjectPointer)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!2618 = !DILocation(line: 0, scope: !2611)
!2619 = !DILocation(line: 101, column: 44, scope: !2611)
!2620 = !DILocation(line: 101, column: 55, scope: !2611)
!2621 = !DILocation(line: 101, column: 32, scope: !2611)
!2622 = distinct !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE6resizeEm", scope: !131, file: !35, line: 937, type: !549, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !548, retainedNodes: !253)
!2623 = !DILocalVariable(name: "this", arg: 1, scope: !2622, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!2625 = !DILocation(line: 0, scope: !2622)
!2626 = !DILocalVariable(name: "__new_size", arg: 2, scope: !2622, file: !35, line: 937, type: !34)
!2627 = !DILocation(line: 937, column: 24, scope: !2622)
!2628 = !DILocation(line: 939, column: 6, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2622, file: !35, line: 939, column: 6)
!2630 = !DILocation(line: 939, column: 19, scope: !2629)
!2631 = !DILocation(line: 939, column: 17, scope: !2629)
!2632 = !DILocation(line: 939, column: 6, scope: !2622)
!2633 = !DILocation(line: 940, column: 22, scope: !2629)
!2634 = !DILocation(line: 940, column: 35, scope: !2629)
!2635 = !DILocation(line: 940, column: 33, scope: !2629)
!2636 = !DILocation(line: 940, column: 4, scope: !2629)
!2637 = !DILocation(line: 941, column: 11, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2629, file: !35, line: 941, column: 11)
!2639 = !DILocation(line: 941, column: 24, scope: !2638)
!2640 = !DILocation(line: 941, column: 22, scope: !2638)
!2641 = !DILocation(line: 941, column: 11, scope: !2629)
!2642 = !DILocation(line: 942, column: 26, scope: !2638)
!2643 = !DILocation(line: 942, column: 34, scope: !2638)
!2644 = !DILocation(line: 942, column: 45, scope: !2638)
!2645 = !DILocation(line: 942, column: 43, scope: !2638)
!2646 = !DILocation(line: 942, column: 4, scope: !2638)
!2647 = !DILocation(line: 943, column: 7, scope: !2622)
!2648 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEixEm", scope: !131, file: !35, line: 1043, type: !559, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !558, retainedNodes: !253)
!2649 = !DILocalVariable(name: "this", arg: 1, scope: !2648, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!2650 = !DILocation(line: 0, scope: !2648)
!2651 = !DILocalVariable(name: "__n", arg: 2, scope: !2648, file: !35, line: 1043, type: !34)
!2652 = !DILocation(line: 1043, column: 28, scope: !2648)
!2653 = !DILocation(line: 1046, column: 17, scope: !2648)
!2654 = !DILocation(line: 1046, column: 25, scope: !2648)
!2655 = !DILocation(line: 1046, column: 36, scope: !2648)
!2656 = !DILocation(line: 1046, column: 34, scope: !2648)
!2657 = !DILocation(line: 1046, column: 2, scope: !2648)
!2658 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK12BodyGeometryclEi", scope: !682, file: !126, line: 92, type: !2659, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2661, retainedNodes: !253)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!123, !2614, !33}
!2661 = !DISubprogram(name: "operator()", linkageName: "_ZNK12BodyGeometryclEi", scope: !682, file: !126, line: 92, type: !2659, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2662 = !DILocalVariable(name: "this", arg: 1, scope: !2658, type: !2617, flags: DIFlagArtificial | DIFlagObjectPointer)
!2663 = !DILocation(line: 0, scope: !2658)
!2664 = !DILocalVariable(name: "i", arg: 2, scope: !2658, file: !126, line: 92, type: !33)
!2665 = !DILocation(line: 92, column: 35, scope: !2658)
!2666 = !DILocation(line: 92, column: 52, scope: !2658)
!2667 = !DILocation(line: 92, column: 63, scope: !2658)
!2668 = !DILocation(line: 92, column: 45, scope: !2658)
!2669 = distinct !DISubprogram(name: "ImageProjection", linkageName: "_ZN24MultiCameraProjectedBody15ImageProjectionERK12BodyGeometryR11MultiCamera", scope: !2670, file: !16, line: 83, type: !2671, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2676, retainedNodes: !253)
!2670 = !DICompositeType(tag: DW_TAG_class_type, name: "MultiCameraProjectedBody", file: !96, line: 56, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS24MultiCameraProjectedBody")
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2673, !680, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2674 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_class_type, name: "MultiCamera", file: !101, line: 60, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11MultiCamera")
!2676 = !DISubprogram(name: "ImageProjection", linkageName: "_ZN24MultiCameraProjectedBody15ImageProjectionERK12BodyGeometryR11MultiCamera", scope: !2670, file: !96, line: 63, type: !2671, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2677 = !DILocalVariable(name: "this", arg: 1, scope: !2669, type: !2678, flags: DIFlagArtificial | DIFlagObjectPointer)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2679 = !DILocation(line: 0, scope: !2669)
!2680 = !DILocalVariable(name: "body", arg: 2, scope: !2669, file: !16, line: 83, type: !680)
!2681 = !DILocation(line: 83, column: 68, scope: !2669)
!2682 = !DILocalVariable(name: "cameras", arg: 3, scope: !2669, file: !16, line: 83, type: !2674)
!2683 = !DILocation(line: 83, column: 87, scope: !2669)
!2684 = !DILocalVariable(name: "n_cameras", scope: !2669, file: !16, line: 85, type: !33)
!2685 = !DILocation(line: 85, column: 6, scope: !2669)
!2686 = !DILocation(line: 85, column: 18, scope: !2669)
!2687 = !DILocation(line: 85, column: 26, scope: !2669)
!2688 = !DILocation(line: 86, column: 2, scope: !2669)
!2689 = !DILocation(line: 86, column: 21, scope: !2669)
!2690 = !DILocation(line: 86, column: 14, scope: !2669)
!2691 = !DILocalVariable(name: "i", scope: !2692, file: !16, line: 87, type: !33)
!2692 = distinct !DILexicalBlock(scope: !2669, file: !16, line: 87, column: 2)
!2693 = !DILocation(line: 87, column: 10, scope: !2692)
!2694 = !DILocation(line: 87, column: 6, scope: !2692)
!2695 = !DILocation(line: 87, column: 14, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !16, line: 87, column: 2)
!2697 = !DILocation(line: 87, column: 16, scope: !2696)
!2698 = !DILocation(line: 87, column: 15, scope: !2696)
!2699 = !DILocation(line: 87, column: 2, scope: !2692)
!2700 = !DILocation(line: 88, column: 3, scope: !2696)
!2701 = !DILocation(line: 88, column: 15, scope: !2696)
!2702 = !DILocation(line: 88, column: 34, scope: !2696)
!2703 = !DILocation(line: 88, column: 40, scope: !2696)
!2704 = !DILocation(line: 88, column: 48, scope: !2696)
!2705 = !DILocation(line: 88, column: 18, scope: !2696)
!2706 = !DILocation(line: 87, column: 27, scope: !2696)
!2707 = !DILocation(line: 87, column: 2, scope: !2696)
!2708 = distinct !{!2708, !2699, !2709, !2152}
!2709 = !DILocation(line: 88, column: 50, scope: !2692)
!2710 = !DILocation(line: 89, column: 1, scope: !2669)
!2711 = distinct !DISubprogram(name: "GetCameraCount", linkageName: "_ZN11MultiCamera14GetCameraCountEv", scope: !2675, file: !101, line: 69, type: !2712, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2715, retainedNodes: !253)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!33, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2715 = !DISubprogram(name: "GetCameraCount", linkageName: "_ZN11MultiCamera14GetCameraCountEv", scope: !2675, file: !101, line: 69, type: !2712, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2716 = !DILocalVariable(name: "this", arg: 1, scope: !2711, type: !2717, flags: DIFlagArtificial | DIFlagObjectPointer)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 69, column: 36, scope: !2711)
!2720 = !DILocation(line: 69, column: 45, scope: !2711)
!2721 = !DILocation(line: 69, column: 23, scope: !2711)
!2722 = distinct !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE6resizeEm", scope: !2723, file: !35, line: 937, type: !2724, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2727, retainedNodes: !253)
!2723 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<ProjectedBody, std::allocator<ProjectedBody> >", scope: !2, file: !35, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI13ProjectedBodySaIS0_EE")
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2726, !34}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2727 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE6resizeEm", scope: !2723, file: !35, line: 937, type: !2724, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2728 = !DILocalVariable(name: "this", arg: 1, scope: !2722, type: !2729, flags: DIFlagArtificial | DIFlagObjectPointer)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2730 = !DILocation(line: 0, scope: !2722)
!2731 = !DILocalVariable(name: "__new_size", arg: 2, scope: !2722, file: !35, line: 937, type: !34)
!2732 = !DILocation(line: 937, column: 24, scope: !2722)
!2733 = !DILocation(line: 939, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2722, file: !35, line: 939, column: 6)
!2735 = !DILocation(line: 939, column: 19, scope: !2734)
!2736 = !DILocation(line: 939, column: 17, scope: !2734)
!2737 = !DILocation(line: 939, column: 6, scope: !2722)
!2738 = !DILocation(line: 940, column: 22, scope: !2734)
!2739 = !DILocation(line: 940, column: 35, scope: !2734)
!2740 = !DILocation(line: 940, column: 33, scope: !2734)
!2741 = !DILocation(line: 940, column: 4, scope: !2734)
!2742 = !DILocation(line: 941, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2734, file: !35, line: 941, column: 11)
!2744 = !DILocation(line: 941, column: 24, scope: !2743)
!2745 = !DILocation(line: 941, column: 22, scope: !2743)
!2746 = !DILocation(line: 941, column: 11, scope: !2734)
!2747 = !DILocation(line: 942, column: 26, scope: !2743)
!2748 = !DILocation(line: 942, column: 34, scope: !2743)
!2749 = !DILocation(line: 942, column: 45, scope: !2743)
!2750 = !DILocation(line: 942, column: 43, scope: !2743)
!2751 = !DILocation(line: 942, column: 4, scope: !2743)
!2752 = !DILocation(line: 943, column: 7, scope: !2722)
!2753 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm", scope: !2723, file: !35, line: 1043, type: !2754, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2806, retainedNodes: !253)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!2756, !2726, !34}
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2723, file: !35, line: 417, baseType: !2757, flags: DIFlagPublic)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2758, file: !142, line: 62, baseType: !2803)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ProjectedBody>, ProjectedBody>", scope: !145, file: !142, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2759, templateParams: !2801, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_EE")
!2759 = !{!2760, !2787, !2792, !2796, !2797, !2798, !2799, !2800}
!2760 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2758, baseType: !2761, extraData: i32 0)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ProjectedBody> >", scope: !2, file: !149, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2762, templateParams: !2785, identifier: "_ZTSSt16allocator_traitsISaI13ProjectedBodyEE")
!2762 = !{!2763, !2770, !2773, !2776, !2782}
!2763 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m", scope: !2761, file: !149, line: 463, type: !2764, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!2766, !2767, !218}
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2761, file: !149, line: 420, baseType: !665)
!2767 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2761, file: !149, line: 414, baseType: !2769)
!2769 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ProjectedBody>", scope: !2, file: !158, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI13ProjectedBodyE")
!2770 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_mPKv", scope: !2761, file: !149, line: 477, type: !2771, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!2766, !2767, !218, !222}
!2773 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m", scope: !2761, file: !149, line: 495, type: !2774, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2767, !2766, !218}
!2776 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_", scope: !2761, file: !149, line: 547, type: !2777, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2761, file: !149, line: 435, baseType: !36)
!2780 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2768)
!2782 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE37select_on_container_copy_constructionERKS1_", scope: !2761, file: !149, line: 562, type: !2783, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!2768, !2780}
!2785 = !{!2786}
!2786 = !DITemplateTypeParameter(name: "_Alloc", type: !2769)
!2787 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E17_S_select_on_copyERKS2_", scope: !2758, file: !142, line: 97, type: !2788, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2769, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2769)
!2792 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E10_S_on_swapERS2_S4_", scope: !2758, file: !142, line: 100, type: !2793, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2795, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2769, size: 64)
!2796 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E27_S_propagate_on_copy_assignEv", scope: !2758, file: !142, line: 103, type: !244, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2797 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E27_S_propagate_on_move_assignEv", scope: !2758, file: !142, line: 106, type: !244, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2798 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E20_S_propagate_on_swapEv", scope: !2758, file: !142, line: 109, type: !244, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2799 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E15_S_always_equalEv", scope: !2758, file: !142, line: 112, type: !244, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2800 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E15_S_nothrow_moveEv", scope: !2758, file: !142, line: 115, type: !244, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2801 = !{!2786, !2802}
!2802 = !DITemplateTypeParameter(type: !666)
!2803 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2758, file: !142, line: 56, baseType: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2761, file: !149, line: 417, baseType: !666)
!2806 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EEixEm", scope: !2723, file: !35, line: 1043, type: !2754, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2807 = !DILocalVariable(name: "this", arg: 1, scope: !2753, type: !2729, flags: DIFlagArtificial | DIFlagObjectPointer)
!2808 = !DILocation(line: 0, scope: !2753)
!2809 = !DILocalVariable(name: "__n", arg: 2, scope: !2753, file: !35, line: 1043, type: !34)
!2810 = !DILocation(line: 1043, column: 28, scope: !2753)
!2811 = !DILocation(line: 1046, column: 17, scope: !2753)
!2812 = !DILocation(line: 1046, column: 25, scope: !2753)
!2813 = !DILocation(line: 1046, column: 36, scope: !2753)
!2814 = !DILocation(line: 1046, column: 34, scope: !2753)
!2815 = !DILocation(line: 1046, column: 2, scope: !2753)
!2816 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN11MultiCameraclEi", scope: !2675, file: !101, line: 67, type: !2817, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2819, retainedNodes: !253)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!127, !2714, !33}
!2819 = !DISubprogram(name: "operator()", linkageName: "_ZN11MultiCameraclEi", scope: !2675, file: !101, line: 67, type: !2817, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2820 = !DILocalVariable(name: "this", arg: 1, scope: !2816, type: !2717, flags: DIFlagArtificial | DIFlagObjectPointer)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocalVariable(name: "i", arg: 2, scope: !2816, file: !101, line: 67, type: !33)
!2823 = !DILocation(line: 67, column: 25, scope: !2816)
!2824 = !DILocation(line: 67, column: 35, scope: !2816)
!2825 = !DILocation(line: 67, column: 44, scope: !2816)
!2826 = !DILocation(line: 67, column: 28, scope: !2816)
!2827 = distinct !DISubprogram(name: "Point", linkageName: "_ZN5PointC2Eff", scope: !100, file: !101, line: 35, type: !110, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !109, retainedNodes: !253)
!2828 = !DILocalVariable(name: "this", arg: 1, scope: !2827, type: !2829, flags: DIFlagArtificial | DIFlagObjectPointer)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2830 = !DILocation(line: 0, scope: !2827)
!2831 = !DILocalVariable(name: "vx", arg: 2, scope: !2827, file: !101, line: 35, type: !32)
!2832 = !DILocation(line: 35, column: 14, scope: !2827)
!2833 = !DILocalVariable(name: "vy", arg: 3, scope: !2827, file: !101, line: 35, type: !32)
!2834 = !DILocation(line: 35, column: 24, scope: !2827)
!2835 = !DILocation(line: 35, column: 32, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !101, line: 35, column: 27)
!2837 = !DILocation(line: 35, column: 28, scope: !2836)
!2838 = !DILocation(line: 35, column: 30, scope: !2836)
!2839 = !DILocation(line: 35, column: 38, scope: !2836)
!2840 = !DILocation(line: 35, column: 36, scope: !2836)
!2841 = !DILocation(line: 35, column: 37, scope: !2836)
!2842 = !DILocation(line: 35, column: 41, scope: !2827)
!2843 = distinct !DISubprogram(name: "Set", linkageName: "_ZN5Point3SetEff", scope: !100, file: !101, line: 37, type: !110, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !113, retainedNodes: !253)
!2844 = !DILocalVariable(name: "this", arg: 1, scope: !2843, type: !2829, flags: DIFlagArtificial | DIFlagObjectPointer)
!2845 = !DILocation(line: 0, scope: !2843)
!2846 = !DILocalVariable(name: "vx", arg: 2, scope: !2843, file: !101, line: 37, type: !32)
!2847 = !DILocation(line: 37, column: 24, scope: !2843)
!2848 = !DILocalVariable(name: "vy", arg: 3, scope: !2843, file: !101, line: 37, type: !32)
!2849 = !DILocation(line: 37, column: 34, scope: !2843)
!2850 = !DILocation(line: 37, column: 42, scope: !2843)
!2851 = !DILocation(line: 37, column: 38, scope: !2843)
!2852 = !DILocation(line: 37, column: 40, scope: !2843)
!2853 = !DILocation(line: 37, column: 48, scope: !2843)
!2854 = !DILocation(line: 37, column: 46, scope: !2843)
!2855 = !DILocation(line: 37, column: 47, scope: !2843)
!2856 = !DILocation(line: 37, column: 51, scope: !2843)
!2857 = distinct !DISubprogram(name: "~Point", linkageName: "_ZN5PointD2Ev", scope: !100, file: !101, line: 36, type: !106, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !112, retainedNodes: !253)
!2858 = !DILocalVariable(name: "this", arg: 1, scope: !2857, type: !2829, flags: DIFlagArtificial | DIFlagObjectPointer)
!2859 = !DILocation(line: 0, scope: !2857)
!2860 = !DILocation(line: 36, column: 11, scope: !2857)
!2861 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI10KTCylinderSaIS0_EE4sizeEv", scope: !2862, file: !35, line: 918, type: !2863, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2867, retainedNodes: !253)
!2862 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<KTCylinder, std::allocator<KTCylinder> >", scope: !2, file: !35, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI10KTCylinderSaIS0_EE")
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!34, !2865}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2867 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI10KTCylinderSaIS0_EE4sizeEv", scope: !2862, file: !35, line: 918, type: !2863, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2868 = !DILocalVariable(name: "this", arg: 1, scope: !2861, type: !2869, flags: DIFlagArtificial | DIFlagObjectPointer)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2870 = !DILocation(line: 0, scope: !2861)
!2871 = !DILocation(line: 919, column: 32, scope: !2861)
!2872 = !DILocation(line: 919, column: 40, scope: !2861)
!2873 = !DILocation(line: 919, column: 58, scope: !2861)
!2874 = !DILocation(line: 919, column: 66, scope: !2861)
!2875 = !DILocation(line: 919, column: 50, scope: !2861)
!2876 = !DILocation(line: 919, column: 9, scope: !2861)
!2877 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorI10KTCylinderSaIS0_EEixEm", scope: !2862, file: !35, line: 1061, type: !2878, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2932, retainedNodes: !253)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!2880, !2865, !34}
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2862, file: !35, line: 418, baseType: !2881, flags: DIFlagPublic)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !2882, file: !142, line: 63, baseType: !2928)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<KTCylinder>, KTCylinder>", scope: !145, file: !142, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2883, templateParams: !2926, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_EE")
!2883 = !{!2884, !2912, !2917, !2921, !2922, !2923, !2924, !2925}
!2884 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2882, baseType: !2885, extraData: i32 0)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<KTCylinder> >", scope: !2, file: !149, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2886, templateParams: !2910, identifier: "_ZTSSt16allocator_traitsISaI10KTCylinderEE")
!2886 = !{!2887, !2895, !2898, !2901, !2907}
!2887 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8allocateERS1_m", scope: !2885, file: !149, line: 463, type: !2888, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!2890, !2892, !218}
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2885, file: !149, line: 420, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2885, file: !149, line: 414, baseType: !2894)
!2894 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<KTCylinder>", scope: !2, file: !158, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI10KTCylinderE")
!2895 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8allocateERS1_mPKv", scope: !2885, file: !149, line: 477, type: !2896, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!2890, !2892, !218, !222}
!2898 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE10deallocateERS1_PS0_m", scope: !2885, file: !149, line: 495, type: !2899, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2892, !2890, !218}
!2901 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8max_sizeERKS1_", scope: !2885, file: !149, line: 547, type: !2902, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2885, file: !149, line: 435, baseType: !36)
!2905 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2907 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE37select_on_container_copy_constructionERKS1_", scope: !2885, file: !149, line: 562, type: !2908, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2893, !2905}
!2910 = !{!2911}
!2911 = !DITemplateTypeParameter(name: "_Alloc", type: !2894)
!2912 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E17_S_select_on_copyERKS2_", scope: !2882, file: !142, line: 97, type: !2913, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2894, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2917 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E10_S_on_swapERS2_S4_", scope: !2882, file: !142, line: 100, type: !2918, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{null, !2920, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2894, size: 64)
!2921 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E27_S_propagate_on_copy_assignEv", scope: !2882, file: !142, line: 103, type: !244, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2922 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E27_S_propagate_on_move_assignEv", scope: !2882, file: !142, line: 106, type: !244, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2923 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E20_S_propagate_on_swapEv", scope: !2882, file: !142, line: 109, type: !244, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2924 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E15_S_always_equalEv", scope: !2882, file: !142, line: 112, type: !244, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2925 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E15_S_nothrow_moveEv", scope: !2882, file: !142, line: 115, type: !244, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2926 = !{!2911, !2927}
!2927 = !DITemplateTypeParameter(type: !125)
!2928 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2930)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2882, file: !142, line: 56, baseType: !2931)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2885, file: !149, line: 417, baseType: !125)
!2932 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorI10KTCylinderSaIS0_EEixEm", scope: !2862, file: !35, line: 1061, type: !2878, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2933 = !DILocalVariable(name: "this", arg: 1, scope: !2877, type: !2869, flags: DIFlagArtificial | DIFlagObjectPointer)
!2934 = !DILocation(line: 0, scope: !2877)
!2935 = !DILocalVariable(name: "__n", arg: 2, scope: !2877, file: !35, line: 1061, type: !34)
!2936 = !DILocation(line: 1061, column: 28, scope: !2877)
!2937 = !DILocation(line: 1064, column: 17, scope: !2877)
!2938 = !DILocation(line: 1064, column: 25, scope: !2877)
!2939 = !DILocation(line: 1064, column: 36, scope: !2877)
!2940 = !DILocation(line: 1064, column: 34, scope: !2877)
!2941 = !DILocation(line: 1064, column: 2, scope: !2877)
!2942 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI6CameraSaIS0_EE4sizeEv", scope: !2943, file: !35, line: 918, type: !2944, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2948, retainedNodes: !253)
!2943 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<Camera, std::allocator<Camera> >", scope: !2, file: !35, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI6CameraSaIS0_EE")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!34, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2948 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI6CameraSaIS0_EE4sizeEv", scope: !2943, file: !35, line: 918, type: !2944, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2949 = !DILocalVariable(name: "this", arg: 1, scope: !2942, type: !2950, flags: DIFlagArtificial | DIFlagObjectPointer)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2951 = !DILocation(line: 0, scope: !2942)
!2952 = !DILocation(line: 919, column: 32, scope: !2942)
!2953 = !DILocation(line: 919, column: 40, scope: !2942)
!2954 = !DILocation(line: 919, column: 58, scope: !2942)
!2955 = !DILocation(line: 919, column: 66, scope: !2942)
!2956 = !DILocation(line: 919, column: 50, scope: !2942)
!2957 = !DILocation(line: 919, column: 9, scope: !2942)
!2958 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI6CameraSaIS0_EEixEm", scope: !2943, file: !35, line: 1043, type: !2959, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3013, retainedNodes: !253)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2961, !3012, !34}
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2943, file: !35, line: 417, baseType: !2962, flags: DIFlagPublic)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2963, file: !142, line: 62, baseType: !3009)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<Camera>, Camera>", scope: !145, file: !142, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2964, templateParams: !3007, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI6CameraES1_EE")
!2964 = !{!2965, !2993, !2998, !3002, !3003, !3004, !3005, !3006}
!2965 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2963, baseType: !2966, extraData: i32 0)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<Camera> >", scope: !2, file: !149, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2967, templateParams: !2991, identifier: "_ZTSSt16allocator_traitsISaI6CameraEE")
!2967 = !{!2968, !2976, !2979, !2982, !2988}
!2968 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI6CameraEE8allocateERS1_m", scope: !2966, file: !149, line: 463, type: !2969, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971, !2973, !218}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2966, file: !149, line: 420, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2966, file: !149, line: 414, baseType: !2975)
!2975 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<Camera>", scope: !2, file: !158, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI6CameraE")
!2976 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI6CameraEE8allocateERS1_mPKv", scope: !2966, file: !149, line: 477, type: !2977, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2971, !2973, !218, !222}
!2979 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI6CameraEE10deallocateERS1_PS0_m", scope: !2966, file: !149, line: 495, type: !2980, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2973, !2971, !218}
!2982 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI6CameraEE8max_sizeERKS1_", scope: !2966, file: !149, line: 547, type: !2983, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2966, file: !149, line: 435, baseType: !36)
!2986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2974)
!2988 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI6CameraEE37select_on_container_copy_constructionERKS1_", scope: !2966, file: !149, line: 562, type: !2989, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!2974, !2986}
!2991 = !{!2992}
!2992 = !DITemplateTypeParameter(name: "_Alloc", type: !2975)
!2993 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E17_S_select_on_copyERKS2_", scope: !2963, file: !142, line: 97, type: !2994, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2975, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2998 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E10_S_on_swapERS2_S4_", scope: !2963, file: !142, line: 100, type: !2999, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !3001, !3001}
!3001 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2975, size: 64)
!3002 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E27_S_propagate_on_copy_assignEv", scope: !2963, file: !142, line: 103, type: !244, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3003 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E27_S_propagate_on_move_assignEv", scope: !2963, file: !142, line: 106, type: !244, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3004 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E20_S_propagate_on_swapEv", scope: !2963, file: !142, line: 109, type: !244, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3005 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E15_S_always_equalEv", scope: !2963, file: !142, line: 112, type: !244, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3006 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI6CameraES1_E15_S_nothrow_moveEv", scope: !2963, file: !142, line: 115, type: !244, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3007 = !{!2992, !3008}
!3008 = !DITemplateTypeParameter(type: !128)
!3009 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2963, file: !142, line: 56, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2966, file: !149, line: 417, baseType: !128)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3013 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI6CameraSaIS0_EEixEm", scope: !2943, file: !35, line: 1043, type: !2959, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3014 = !DILocalVariable(name: "this", arg: 1, scope: !2958, type: !3015, flags: DIFlagArtificial | DIFlagObjectPointer)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!3016 = !DILocation(line: 0, scope: !2958)
!3017 = !DILocalVariable(name: "__n", arg: 2, scope: !2958, file: !35, line: 1043, type: !34)
!3018 = !DILocation(line: 1043, column: 28, scope: !2958)
!3019 = !DILocation(line: 1046, column: 17, scope: !2958)
!3020 = !DILocation(line: 1046, column: 25, scope: !2958)
!3021 = !DILocation(line: 1046, column: 36, scope: !2958)
!3022 = !DILocation(line: 1046, column: 34, scope: !2958)
!3023 = !DILocation(line: 1046, column: 2, scope: !2958)
!3024 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !40, file: !19, line: 66, type: !74, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !73, retainedNodes: !253)
!3025 = !DILocalVariable(name: "this", arg: 1, scope: !3024, type: !39, flags: DIFlagArtificial | DIFlagObjectPointer)
!3026 = !DILocation(line: 0, scope: !3024)
!3027 = !DILocalVariable(name: "r", arg: 2, scope: !3024, file: !19, line: 66, type: !33)
!3028 = !DILocation(line: 66, column: 27, scope: !3024)
!3029 = !DILocalVariable(name: "c", arg: 3, scope: !3024, file: !19, line: 66, type: !33)
!3030 = !DILocation(line: 66, column: 34, scope: !3024)
!3031 = !DILocation(line: 66, column: 45, scope: !3024)
!3032 = !DILocation(line: 66, column: 50, scope: !3024)
!3033 = !DILocation(line: 66, column: 53, scope: !3024)
!3034 = !DILocation(line: 66, column: 38, scope: !3024)
!3035 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2Ev", scope: !40, file: !19, line: 39, type: !48, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !47, retainedNodes: !253)
!3036 = !DILocalVariable(name: "this", arg: 1, scope: !3035, type: !39, flags: DIFlagArtificial | DIFlagObjectPointer)
!3037 = !DILocation(line: 0, scope: !3035)
!3038 = !DILocation(line: 39, column: 13, scope: !3035)
!3039 = distinct !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !40, file: !19, line: 60, type: !48, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !71, retainedNodes: !253)
!3040 = !DILocalVariable(name: "this", arg: 1, scope: !3039, type: !39, flags: DIFlagArtificial | DIFlagObjectPointer)
!3041 = !DILocation(line: 0, scope: !3039)
!3042 = !DILocation(line: 60, column: 23, scope: !3039)
!3043 = !DILocation(line: 60, column: 16, scope: !3039)
!3044 = !DILocation(line: 60, column: 49, scope: !3039)
!3045 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE4sizeEv", scope: !131, file: !35, line: 918, type: !545, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !544, retainedNodes: !253)
!3046 = !DILocalVariable(name: "this", arg: 1, scope: !3045, type: !3047, flags: DIFlagArtificial | DIFlagObjectPointer)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3048 = !DILocation(line: 0, scope: !3045)
!3049 = !DILocation(line: 919, column: 32, scope: !3045)
!3050 = !DILocation(line: 919, column: 40, scope: !3045)
!3051 = !DILocation(line: 919, column: 58, scope: !3045)
!3052 = !DILocation(line: 919, column: 66, scope: !3045)
!3053 = !DILocation(line: 919, column: 50, scope: !3045)
!3054 = !DILocation(line: 919, column: 9, scope: !3045)
!3055 = distinct !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE17_M_default_appendEm", scope: !131, file: !9, line: 612, type: !549, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !628, retainedNodes: !253)
!3056 = !DILocalVariable(name: "this", arg: 1, scope: !3055, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!3057 = !DILocation(line: 0, scope: !3055)
!3058 = !DILocalVariable(name: "__n", arg: 2, scope: !3055, file: !35, line: 1689, type: !34)
!3059 = !DILocation(line: 1689, column: 35, scope: !3055)
!3060 = !DILocation(line: 614, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3055, file: !9, line: 614, column: 11)
!3062 = !DILocation(line: 614, column: 15, scope: !3061)
!3063 = !DILocation(line: 614, column: 11, scope: !3055)
!3064 = !DILocalVariable(name: "__size", scope: !3065, file: !9, line: 616, type: !3066)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !9, line: 615, column: 2)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!3067 = !DILocation(line: 616, column: 20, scope: !3065)
!3068 = !DILocation(line: 616, column: 29, scope: !3065)
!3069 = !DILocalVariable(name: "__navail", scope: !3065, file: !9, line: 617, type: !34)
!3070 = !DILocation(line: 617, column: 14, scope: !3065)
!3071 = !DILocation(line: 617, column: 41, scope: !3065)
!3072 = !DILocation(line: 617, column: 49, scope: !3065)
!3073 = !DILocation(line: 618, column: 15, scope: !3065)
!3074 = !DILocation(line: 618, column: 23, scope: !3065)
!3075 = !DILocation(line: 618, column: 7, scope: !3065)
!3076 = !DILocation(line: 620, column: 8, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3065, file: !9, line: 620, column: 8)
!3078 = !DILocation(line: 620, column: 17, scope: !3077)
!3079 = !DILocation(line: 620, column: 15, scope: !3077)
!3080 = !DILocation(line: 620, column: 28, scope: !3077)
!3081 = !DILocation(line: 620, column: 31, scope: !3077)
!3082 = !DILocation(line: 620, column: 42, scope: !3077)
!3083 = !DILocation(line: 620, column: 55, scope: !3077)
!3084 = !DILocation(line: 620, column: 53, scope: !3077)
!3085 = !DILocation(line: 620, column: 40, scope: !3077)
!3086 = !DILocation(line: 620, column: 8, scope: !3065)
!3087 = !DILocation(line: 621, column: 6, scope: !3077)
!3088 = !DILocation(line: 623, column: 8, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3065, file: !9, line: 623, column: 8)
!3090 = !DILocation(line: 623, column: 20, scope: !3089)
!3091 = !DILocation(line: 623, column: 17, scope: !3089)
!3092 = !DILocation(line: 623, column: 8, scope: !3065)
!3093 = !DILocation(line: 627, column: 42, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !9, line: 624, column: 6)
!3095 = !DILocation(line: 627, column: 50, scope: !3094)
!3096 = !DILocation(line: 628, column: 8, scope: !3094)
!3097 = !DILocation(line: 628, column: 13, scope: !3094)
!3098 = !DILocation(line: 627, column: 3, scope: !3094)
!3099 = !DILocation(line: 626, column: 14, scope: !3094)
!3100 = !DILocation(line: 626, column: 22, scope: !3094)
!3101 = !DILocation(line: 626, column: 32, scope: !3094)
!3102 = !DILocation(line: 630, column: 6, scope: !3094)
!3103 = !DILocalVariable(name: "__len", scope: !3104, file: !9, line: 633, type: !3066)
!3104 = distinct !DILexicalBlock(scope: !3089, file: !9, line: 632, column: 6)
!3105 = !DILocation(line: 633, column: 24, scope: !3104)
!3106 = !DILocation(line: 634, column: 16, scope: !3104)
!3107 = !DILocation(line: 634, column: 3, scope: !3104)
!3108 = !DILocalVariable(name: "__new_start", scope: !3104, file: !9, line: 635, type: !387)
!3109 = !DILocation(line: 635, column: 16, scope: !3104)
!3110 = !DILocation(line: 635, column: 46, scope: !3104)
!3111 = !DILocation(line: 635, column: 34, scope: !3104)
!3112 = !DILocation(line: 640, column: 42, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !9, line: 639, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !9, line: 637, column: 3)
!3115 = distinct !DILexicalBlock(scope: !3104, file: !9, line: 636, column: 33)
!3116 = !DILocation(line: 640, column: 56, scope: !3113)
!3117 = !DILocation(line: 640, column: 54, scope: !3113)
!3118 = !DILocation(line: 641, column: 10, scope: !3113)
!3119 = !DILocation(line: 641, column: 15, scope: !3113)
!3120 = !DILocation(line: 640, column: 9, scope: !3113)
!3121 = !DILocation(line: 642, column: 7, scope: !3113)
!3122 = !DILocation(line: 683, column: 5, scope: !3113)
!3123 = !DILocation(line: 645, column: 23, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3114, file: !9, line: 644, column: 7)
!3125 = !DILocation(line: 645, column: 36, scope: !3124)
!3126 = !DILocation(line: 645, column: 9, scope: !3124)
!3127 = !DILocation(line: 646, column: 9, scope: !3124)
!3128 = !DILocation(line: 683, column: 5, scope: !3124)
!3129 = !DILocation(line: 647, column: 7, scope: !3124)
!3130 = !DILocation(line: 648, column: 23, scope: !3114)
!3131 = !DILocation(line: 648, column: 31, scope: !3114)
!3132 = !DILocation(line: 648, column: 47, scope: !3114)
!3133 = !DILocation(line: 648, column: 55, scope: !3114)
!3134 = !DILocation(line: 649, column: 10, scope: !3114)
!3135 = !DILocation(line: 649, column: 23, scope: !3114)
!3136 = !DILocation(line: 648, column: 5, scope: !3114)
!3137 = !DILocation(line: 675, column: 28, scope: !3104)
!3138 = !DILocation(line: 675, column: 36, scope: !3104)
!3139 = !DILocation(line: 676, column: 14, scope: !3104)
!3140 = !DILocation(line: 676, column: 22, scope: !3104)
!3141 = !DILocation(line: 677, column: 16, scope: !3104)
!3142 = !DILocation(line: 677, column: 24, scope: !3104)
!3143 = !DILocation(line: 677, column: 8, scope: !3104)
!3144 = !DILocation(line: 675, column: 8, scope: !3104)
!3145 = !DILocation(line: 678, column: 33, scope: !3104)
!3146 = !DILocation(line: 678, column: 14, scope: !3104)
!3147 = !DILocation(line: 678, column: 22, scope: !3104)
!3148 = !DILocation(line: 678, column: 31, scope: !3104)
!3149 = !DILocation(line: 679, column: 34, scope: !3104)
!3150 = !DILocation(line: 679, column: 48, scope: !3104)
!3151 = !DILocation(line: 679, column: 46, scope: !3104)
!3152 = !DILocation(line: 679, column: 57, scope: !3104)
!3153 = !DILocation(line: 679, column: 55, scope: !3104)
!3154 = !DILocation(line: 679, column: 14, scope: !3104)
!3155 = !DILocation(line: 679, column: 22, scope: !3104)
!3156 = !DILocation(line: 679, column: 32, scope: !3104)
!3157 = !DILocation(line: 680, column: 42, scope: !3104)
!3158 = !DILocation(line: 680, column: 56, scope: !3104)
!3159 = !DILocation(line: 680, column: 54, scope: !3104)
!3160 = !DILocation(line: 680, column: 14, scope: !3104)
!3161 = !DILocation(line: 680, column: 22, scope: !3104)
!3162 = !DILocation(line: 680, column: 40, scope: !3104)
!3163 = !DILocation(line: 682, column: 2, scope: !3065)
!3164 = !DILocation(line: 683, column: 5, scope: !3055)
!3165 = distinct !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE15_M_erase_at_endEPS0_", scope: !131, file: !35, line: 1792, type: !648, scopeLine: 1793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !647, retainedNodes: !253)
!3166 = !DILocalVariable(name: "this", arg: 1, scope: !3165, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!3167 = !DILocation(line: 0, scope: !3165)
!3168 = !DILocalVariable(name: "__pos", arg: 2, scope: !3165, file: !35, line: 1792, type: !387)
!3169 = !DILocation(line: 1792, column: 31, scope: !3165)
!3170 = !DILocalVariable(name: "__n", scope: !3171, file: !35, line: 1794, type: !34)
!3171 = distinct !DILexicalBlock(scope: !3165, file: !35, line: 1794, column: 16)
!3172 = !DILocation(line: 1794, column: 16, scope: !3171)
!3173 = !DILocation(line: 1794, column: 28, scope: !3171)
!3174 = !DILocation(line: 1794, column: 36, scope: !3171)
!3175 = !DILocation(line: 1794, column: 48, scope: !3171)
!3176 = !DILocation(line: 1794, column: 46, scope: !3171)
!3177 = !DILocation(line: 1794, column: 16, scope: !3165)
!3178 = !DILocation(line: 1796, column: 20, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3171, file: !35, line: 1795, column: 4)
!3180 = !DILocation(line: 1796, column: 33, scope: !3179)
!3181 = !DILocation(line: 1796, column: 41, scope: !3179)
!3182 = !DILocation(line: 1797, column: 6, scope: !3179)
!3183 = !DILocation(line: 1796, column: 6, scope: !3179)
!3184 = !DILocation(line: 1798, column: 32, scope: !3179)
!3185 = !DILocation(line: 1798, column: 12, scope: !3179)
!3186 = !DILocation(line: 1798, column: 20, scope: !3179)
!3187 = !DILocation(line: 1798, column: 30, scope: !3179)
!3188 = !DILocation(line: 1800, column: 4, scope: !3179)
!3189 = !DILocation(line: 1801, column: 7, scope: !3165)
!3190 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE8max_sizeEv", scope: !131, file: !35, line: 923, type: !545, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !547, retainedNodes: !253)
!3191 = !DILocalVariable(name: "this", arg: 1, scope: !3190, type: !3047, flags: DIFlagArtificial | DIFlagObjectPointer)
!3192 = !DILocation(line: 0, scope: !3190)
!3193 = !DILocation(line: 924, column: 28, scope: !3190)
!3194 = !DILocation(line: 924, column: 16, scope: !3190)
!3195 = !DILocation(line: 924, column: 9, scope: !3190)
!3196 = distinct !DISubprogram(name: "__uninitialized_default_n_a<ProjectedCylinder *, unsigned long, ProjectedCylinder>", linkageName: "_ZSt27__uninitialized_default_n_aIP17ProjectedCylindermS0_ET_S2_T0_RSaIT1_E", scope: !2, file: !3197, line: 702, type: !3198, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3200, retainedNodes: !253)
!3197 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!94, !94, !38, !216}
!3200 = !{!3201, !3202, !203}
!3201 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !94)
!3202 = !DITemplateTypeParameter(name: "_Size", type: !38)
!3203 = !DILocalVariable(name: "__first", arg: 1, scope: !3196, file: !3197, line: 702, type: !94)
!3204 = !DILocation(line: 702, column: 50, scope: !3196)
!3205 = !DILocalVariable(name: "__n", arg: 2, scope: !3196, file: !3197, line: 702, type: !38)
!3206 = !DILocation(line: 702, column: 65, scope: !3196)
!3207 = !DILocalVariable(arg: 3, scope: !3196, file: !3197, line: 703, type: !216)
!3208 = !DILocation(line: 703, column: 20, scope: !3196)
!3209 = !DILocation(line: 704, column: 45, scope: !3196)
!3210 = !DILocation(line: 704, column: 54, scope: !3196)
!3211 = !DILocation(line: 704, column: 14, scope: !3196)
!3212 = !DILocation(line: 704, column: 7, scope: !3196)
!3213 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv", scope: !134, file: !35, line: 276, type: !301, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !300, retainedNodes: !253)
!3214 = !DILocalVariable(name: "this", arg: 1, scope: !3213, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!3216 = !DILocation(line: 0, scope: !3213)
!3217 = !DILocation(line: 277, column: 22, scope: !3213)
!3218 = !DILocation(line: 277, column: 9, scope: !3213)
!3219 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE12_M_check_lenEmPKc", scope: !131, file: !35, line: 1756, type: !635, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !634, retainedNodes: !253)
!3220 = !DILocalVariable(name: "this", arg: 1, scope: !3219, type: !3047, flags: DIFlagArtificial | DIFlagObjectPointer)
!3221 = !DILocation(line: 0, scope: !3219)
!3222 = !DILocalVariable(name: "__n", arg: 2, scope: !3219, file: !35, line: 1756, type: !34)
!3223 = !DILocation(line: 1756, column: 30, scope: !3219)
!3224 = !DILocalVariable(name: "__s", arg: 3, scope: !3219, file: !35, line: 1756, type: !638)
!3225 = !DILocation(line: 1756, column: 47, scope: !3219)
!3226 = !DILocation(line: 1758, column: 6, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3219, file: !35, line: 1758, column: 6)
!3228 = !DILocation(line: 1758, column: 19, scope: !3227)
!3229 = !DILocation(line: 1758, column: 17, scope: !3227)
!3230 = !DILocation(line: 1758, column: 28, scope: !3227)
!3231 = !DILocation(line: 1758, column: 26, scope: !3227)
!3232 = !DILocation(line: 1758, column: 6, scope: !3219)
!3233 = !DILocation(line: 1759, column: 25, scope: !3227)
!3234 = !DILocation(line: 1759, column: 4, scope: !3227)
!3235 = !DILocalVariable(name: "__len", scope: !3219, file: !35, line: 1761, type: !3066)
!3236 = !DILocation(line: 1761, column: 18, scope: !3219)
!3237 = !DILocation(line: 1761, column: 26, scope: !3219)
!3238 = !DILocation(line: 1761, column: 46, scope: !3219)
!3239 = !DILocation(line: 1761, column: 35, scope: !3219)
!3240 = !DILocation(line: 1761, column: 33, scope: !3219)
!3241 = !DILocation(line: 1762, column: 10, scope: !3219)
!3242 = !DILocation(line: 1762, column: 18, scope: !3219)
!3243 = !DILocation(line: 1762, column: 16, scope: !3219)
!3244 = !DILocation(line: 1762, column: 25, scope: !3219)
!3245 = !DILocation(line: 1762, column: 28, scope: !3219)
!3246 = !DILocation(line: 1762, column: 36, scope: !3219)
!3247 = !DILocation(line: 1762, column: 34, scope: !3219)
!3248 = !DILocation(line: 1762, column: 9, scope: !3219)
!3249 = !DILocation(line: 1762, column: 50, scope: !3219)
!3250 = !DILocation(line: 1762, column: 63, scope: !3219)
!3251 = !DILocation(line: 1762, column: 2, scope: !3219)
!3252 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE11_M_allocateEm", scope: !134, file: !35, line: 343, type: !343, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !342, retainedNodes: !253)
!3253 = !DILocalVariable(name: "this", arg: 1, scope: !3252, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!3254 = !DILocation(line: 0, scope: !3252)
!3255 = !DILocalVariable(name: "__n", arg: 2, scope: !3252, file: !35, line: 343, type: !36)
!3256 = !DILocation(line: 343, column: 26, scope: !3252)
!3257 = !DILocation(line: 346, column: 9, scope: !3252)
!3258 = !DILocation(line: 346, column: 13, scope: !3252)
!3259 = !DILocation(line: 346, column: 34, scope: !3252)
!3260 = !DILocation(line: 346, column: 43, scope: !3252)
!3261 = !DILocation(line: 346, column: 20, scope: !3252)
!3262 = !DILocation(line: 346, column: 2, scope: !3252)
!3263 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE13_M_deallocateEPS0_m", scope: !134, file: !35, line: 350, type: !346, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !345, retainedNodes: !253)
!3264 = !DILocalVariable(name: "this", arg: 1, scope: !3263, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!3265 = !DILocation(line: 0, scope: !3263)
!3266 = !DILocalVariable(name: "__p", arg: 2, scope: !3263, file: !35, line: 350, type: !259)
!3267 = !DILocation(line: 350, column: 29, scope: !3263)
!3268 = !DILocalVariable(name: "__n", arg: 3, scope: !3263, file: !35, line: 350, type: !36)
!3269 = !DILocation(line: 350, column: 41, scope: !3263)
!3270 = !DILocation(line: 353, column: 6, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3263, file: !35, line: 353, column: 6)
!3272 = !DILocation(line: 353, column: 6, scope: !3263)
!3273 = !DILocation(line: 354, column: 20, scope: !3271)
!3274 = !DILocation(line: 354, column: 29, scope: !3271)
!3275 = !DILocation(line: 354, column: 34, scope: !3271)
!3276 = !DILocation(line: 354, column: 4, scope: !3271)
!3277 = !DILocation(line: 355, column: 7, scope: !3263)
!3278 = !DILocalVariable(name: "__first", arg: 1, scope: !130, file: !35, line: 465, type: !387)
!3279 = !DILocation(line: 465, column: 27, scope: !130)
!3280 = !DILocalVariable(name: "__last", arg: 2, scope: !130, file: !35, line: 465, type: !387)
!3281 = !DILocation(line: 465, column: 44, scope: !130)
!3282 = !DILocalVariable(name: "__result", arg: 3, scope: !130, file: !35, line: 465, type: !387)
!3283 = !DILocation(line: 465, column: 60, scope: !130)
!3284 = !DILocalVariable(name: "__alloc", arg: 4, scope: !130, file: !35, line: 466, type: !388)
!3285 = !DILocation(line: 466, column: 21, scope: !130)
!3286 = !DILocation(line: 469, column: 24, scope: !130)
!3287 = !DILocation(line: 469, column: 33, scope: !130)
!3288 = !DILocation(line: 469, column: 41, scope: !130)
!3289 = !DILocation(line: 469, column: 51, scope: !130)
!3290 = !DILocation(line: 469, column: 9, scope: !130)
!3291 = !DILocation(line: 469, column: 2, scope: !130)
!3292 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE11_S_max_sizeERKS1_", scope: !131, file: !35, line: 1776, type: !643, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !642, retainedNodes: !253)
!3293 = !DILocalVariable(name: "__a", arg: 1, scope: !3292, file: !35, line: 1776, type: !645)
!3294 = !DILocation(line: 1776, column: 41, scope: !3292)
!3295 = !DILocalVariable(name: "__diffmax", scope: !3292, file: !35, line: 1781, type: !3296)
!3296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!3297 = !DILocation(line: 1781, column: 15, scope: !3292)
!3298 = !DILocalVariable(name: "__allocmax", scope: !3292, file: !35, line: 1783, type: !3296)
!3299 = !DILocation(line: 1783, column: 15, scope: !3292)
!3300 = !DILocation(line: 1783, column: 52, scope: !3292)
!3301 = !DILocation(line: 1783, column: 28, scope: !3292)
!3302 = !DILocation(line: 1784, column: 9, scope: !3292)
!3303 = !DILocation(line: 1784, column: 2, scope: !3292)
!3304 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI17ProjectedCylinderSaIS0_EE19_M_get_Tp_allocatorEv", scope: !134, file: !35, line: 280, type: !306, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !305, retainedNodes: !253)
!3305 = !DILocalVariable(name: "this", arg: 1, scope: !3304, type: !3306, flags: DIFlagArtificial | DIFlagObjectPointer)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!3307 = !DILocation(line: 0, scope: !3304)
!3308 = !DILocation(line: 281, column: 22, scope: !3304)
!3309 = !DILocation(line: 281, column: 9, scope: !3304)
!3310 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8max_sizeERKS1_", scope: !148, file: !149, line: 547, type: !227, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !226, retainedNodes: !253)
!3311 = !DILocalVariable(name: "__a", arg: 1, scope: !3310, file: !149, line: 547, type: !230)
!3312 = !DILocation(line: 547, column: 38, scope: !3310)
!3313 = !DILocation(line: 550, column: 9, scope: !3310)
!3314 = !DILocation(line: 550, column: 13, scope: !3310)
!3315 = !DILocation(line: 550, column: 2, scope: !3310)
!3316 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !2, file: !3317, line: 230, type: !3318, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3322, retainedNodes: !253)
!3317 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3320, !3320, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3322 = !{!3323}
!3323 = !DITemplateTypeParameter(name: "_Tp", type: !38)
!3324 = !DILocalVariable(name: "__a", arg: 1, scope: !3316, file: !3317, line: 230, type: !3320)
!3325 = !DILocation(line: 230, column: 20, scope: !3316)
!3326 = !DILocalVariable(name: "__b", arg: 2, scope: !3316, file: !3317, line: 230, type: !3320)
!3327 = !DILocation(line: 230, column: 36, scope: !3316)
!3328 = !DILocation(line: 235, column: 11, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3316, file: !3317, line: 235, column: 11)
!3330 = !DILocation(line: 235, column: 17, scope: !3329)
!3331 = !DILocation(line: 235, column: 15, scope: !3329)
!3332 = !DILocation(line: 235, column: 11, scope: !3316)
!3333 = !DILocation(line: 236, column: 9, scope: !3329)
!3334 = !DILocation(line: 236, column: 2, scope: !3329)
!3335 = !DILocation(line: 237, column: 14, scope: !3316)
!3336 = !DILocation(line: 237, column: 7, scope: !3316)
!3337 = !DILocation(line: 238, column: 5, scope: !3316)
!3338 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE8max_sizeEv", scope: !163, file: !164, line: 154, type: !199, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !198, retainedNodes: !253)
!3339 = !DILocalVariable(name: "this", arg: 1, scope: !3338, type: !3340, flags: DIFlagArtificial | DIFlagObjectPointer)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!3341 = !DILocation(line: 0, scope: !3338)
!3342 = !DILocation(line: 155, column: 16, scope: !3338)
!3343 = !DILocation(line: 155, column: 9, scope: !3338)
!3344 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI17ProjectedCylinderE11_M_max_sizeEv", scope: !163, file: !164, line: 197, type: !199, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !201, retainedNodes: !253)
!3345 = !DILocalVariable(name: "this", arg: 1, scope: !3344, type: !3340, flags: DIFlagArtificial | DIFlagObjectPointer)
!3346 = !DILocation(line: 0, scope: !3344)
!3347 = !DILocation(line: 200, column: 2, scope: !3344)
!3348 = distinct !DISubprogram(name: "__uninitialized_default_n<ProjectedCylinder *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIP17ProjectedCylindermET_S2_T0_", scope: !2, file: !3197, line: 630, type: !3349, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3351, retainedNodes: !253)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!94, !94, !38}
!3351 = !{!3201, !3202}
!3352 = !DILocalVariable(name: "__first", arg: 1, scope: !3348, file: !3197, line: 630, type: !94)
!3353 = !DILocation(line: 630, column: 48, scope: !3348)
!3354 = !DILocalVariable(name: "__n", arg: 2, scope: !3348, file: !3197, line: 630, type: !38)
!3355 = !DILocation(line: 630, column: 63, scope: !3348)
!3356 = !DILocalVariable(name: "__can_fill", scope: !3348, file: !3197, line: 635, type: !358)
!3357 = !DILocation(line: 635, column: 22, scope: !3348)
!3358 = !DILocation(line: 640, column: 21, scope: !3348)
!3359 = !DILocation(line: 640, column: 30, scope: !3348)
!3360 = !DILocation(line: 638, column: 14, scope: !3348)
!3361 = !DILocation(line: 638, column: 7, scope: !3348)
!3362 = distinct !DISubprogram(name: "__uninit_default_n<ProjectedCylinder *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP17ProjectedCylindermEET_S4_T0_", scope: !3363, file: !3197, line: 573, type: !3349, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3351, declaration: !3366, retainedNodes: !253)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<false>", scope: !2, file: !3197, line: 569, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !3364, identifier: "_ZTSSt27__uninitialized_default_n_1ILb0EE")
!3364 = !{!3365}
!3365 = !DITemplateValueParameter(name: "_TrivialValueType", type: !246, value: i8 0)
!3366 = !DISubprogram(name: "__uninit_default_n<ProjectedCylinder *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP17ProjectedCylindermEET_S4_T0_", scope: !3363, file: !3197, line: 573, type: !3349, scopeLine: 573, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3351)
!3367 = !DILocalVariable(name: "__first", arg: 1, scope: !3362, file: !3197, line: 573, type: !94)
!3368 = !DILocation(line: 573, column: 45, scope: !3362)
!3369 = !DILocalVariable(name: "__n", arg: 2, scope: !3362, file: !3197, line: 573, type: !38)
!3370 = !DILocation(line: 573, column: 60, scope: !3362)
!3371 = !DILocalVariable(name: "__cur", scope: !3362, file: !3197, line: 575, type: !94)
!3372 = !DILocation(line: 575, column: 21, scope: !3362)
!3373 = !DILocation(line: 575, column: 29, scope: !3362)
!3374 = !DILocation(line: 578, column: 8, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3362, file: !3197, line: 577, column: 6)
!3376 = !DILocation(line: 578, column: 15, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3197, line: 578, column: 8)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3197, line: 578, column: 8)
!3379 = !DILocation(line: 578, column: 19, scope: !3377)
!3380 = !DILocation(line: 578, column: 8, scope: !3378)
!3381 = !DILocation(line: 579, column: 37, scope: !3377)
!3382 = !DILocation(line: 579, column: 3, scope: !3377)
!3383 = !DILocation(line: 578, column: 24, scope: !3377)
!3384 = !DILocation(line: 578, column: 38, scope: !3377)
!3385 = !DILocation(line: 578, column: 8, scope: !3377)
!3386 = distinct !{!3386, !3380, !3387, !2152}
!3387 = !DILocation(line: 579, column: 43, scope: !3378)
!3388 = !DILocation(line: 587, column: 2, scope: !3377)
!3389 = !DILocation(line: 581, column: 6, scope: !3375)
!3390 = !DILocation(line: 584, column: 22, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3362, file: !3197, line: 583, column: 6)
!3392 = !DILocation(line: 584, column: 31, scope: !3391)
!3393 = !DILocation(line: 584, column: 8, scope: !3391)
!3394 = !DILocation(line: 585, column: 8, scope: !3391)
!3395 = !DILocation(line: 580, column: 15, scope: !3375)
!3396 = !DILocation(line: 580, column: 8, scope: !3375)
!3397 = !DILocation(line: 587, column: 2, scope: !3391)
!3398 = !DILocation(line: 586, column: 6, scope: !3391)
!3399 = distinct !DISubprogram(name: "_Construct<ProjectedCylinder>", linkageName: "_ZSt10_ConstructI17ProjectedCylinderJEEvPT_DpOT0_", scope: !2, file: !3400, line: 109, type: !3401, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3403, retainedNodes: !253)
!3400 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !94}
!3403 = !{!203, !3404}
!3404 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !253)
!3405 = !DILocalVariable(name: "__p", arg: 1, scope: !3399, file: !3400, line: 109, type: !94)
!3406 = !DILocation(line: 109, column: 21, scope: !3399)
!3407 = !DILocation(line: 119, column: 20, scope: !3399)
!3408 = !DILocation(line: 119, column: 25, scope: !3399)
!3409 = !DILocation(line: 120, column: 5, scope: !3399)
!3410 = distinct !DISubprogram(name: "_Destroy<ProjectedCylinder *>", linkageName: "_ZSt8_DestroyIP17ProjectedCylinderEvT_S2_", scope: !2, file: !3400, line: 182, type: !3411, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3413, retainedNodes: !253)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !94, !94}
!3413 = !{!3201}
!3414 = !DILocalVariable(name: "__first", arg: 1, scope: !3410, file: !3400, line: 182, type: !94)
!3415 = !DILocation(line: 182, column: 31, scope: !3410)
!3416 = !DILocalVariable(name: "__last", arg: 2, scope: !3410, file: !3400, line: 182, type: !94)
!3417 = !DILocation(line: 182, column: 57, scope: !3410)
!3418 = !DILocation(line: 196, column: 12, scope: !3410)
!3419 = !DILocation(line: 196, column: 21, scope: !3410)
!3420 = !DILocation(line: 195, column: 7, scope: !3410)
!3421 = !DILocation(line: 197, column: 5, scope: !3410)
!3422 = distinct !DISubprogram(name: "ProjectedCylinder", linkageName: "_ZN17ProjectedCylinderC2Ev", scope: !95, file: !96, line: 38, type: !116, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !115, retainedNodes: !253)
!3423 = !DILocalVariable(name: "this", arg: 1, scope: !3422, type: !94, flags: DIFlagArtificial | DIFlagObjectPointer)
!3424 = !DILocation(line: 0, scope: !3422)
!3425 = !DILocation(line: 38, column: 2, scope: !3422)
!3426 = !DILocation(line: 38, column: 22, scope: !3422)
!3427 = distinct !DISubprogram(name: "Point", linkageName: "_ZN5PointC2Ev", scope: !100, file: !101, line: 34, type: !106, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !105, retainedNodes: !253)
!3428 = !DILocalVariable(name: "this", arg: 1, scope: !3427, type: !2829, flags: DIFlagArtificial | DIFlagObjectPointer)
!3429 = !DILocation(line: 0, scope: !3427)
!3430 = !DILocation(line: 34, column: 10, scope: !3427)
!3431 = distinct !DISubprogram(name: "__destroy<ProjectedCylinder *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP17ProjectedCylinderEEvT_S4_", scope: !3432, file: !3400, line: 160, type: !3411, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3413, declaration: !3435, retainedNodes: !253)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<false>", scope: !2, file: !3400, line: 156, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !3433, identifier: "_ZTSSt12_Destroy_auxILb0EE")
!3433 = !{!3434}
!3434 = !DITemplateValueParameter(type: !246, value: i8 0)
!3435 = !DISubprogram(name: "__destroy<ProjectedCylinder *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP17ProjectedCylinderEEvT_S4_", scope: !3432, file: !3400, line: 160, type: !3411, scopeLine: 160, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3413)
!3436 = !DILocalVariable(name: "__first", arg: 1, scope: !3431, file: !3400, line: 160, type: !94)
!3437 = !DILocation(line: 160, column: 29, scope: !3431)
!3438 = !DILocalVariable(name: "__last", arg: 2, scope: !3431, file: !3400, line: 160, type: !94)
!3439 = !DILocation(line: 160, column: 55, scope: !3431)
!3440 = !DILocation(line: 162, column: 4, scope: !3431)
!3441 = !DILocation(line: 162, column: 11, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3400, line: 162, column: 4)
!3443 = distinct !DILexicalBlock(scope: !3431, file: !3400, line: 162, column: 4)
!3444 = !DILocation(line: 162, column: 22, scope: !3442)
!3445 = !DILocation(line: 162, column: 19, scope: !3442)
!3446 = !DILocation(line: 162, column: 4, scope: !3443)
!3447 = !DILocation(line: 163, column: 38, scope: !3442)
!3448 = !DILocation(line: 163, column: 6, scope: !3442)
!3449 = !DILocation(line: 162, column: 30, scope: !3442)
!3450 = !DILocation(line: 162, column: 4, scope: !3442)
!3451 = distinct !{!3451, !3446, !3452, !2152}
!3452 = !DILocation(line: 163, column: 46, scope: !3443)
!3453 = !DILocation(line: 164, column: 2, scope: !3431)
!3454 = distinct !DISubprogram(name: "_Destroy<ProjectedCylinder>", linkageName: "_ZSt8_DestroyI17ProjectedCylinderEvPT_", scope: !2, file: !3400, line: 146, type: !3401, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !202, retainedNodes: !253)
!3455 = !DILocalVariable(name: "__pointer", arg: 1, scope: !3454, file: !3400, line: 146, type: !94)
!3456 = !DILocation(line: 146, column: 19, scope: !3454)
!3457 = !DILocation(line: 151, column: 7, scope: !3454)
!3458 = !DILocation(line: 151, column: 19, scope: !3454)
!3459 = !DILocation(line: 153, column: 5, scope: !3454)
!3460 = distinct !DISubprogram(name: "~ProjectedCylinder", linkageName: "_ZN17ProjectedCylinderD2Ev", scope: !95, file: !96, line: 39, type: !116, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !119, retainedNodes: !253)
!3461 = !DILocalVariable(name: "this", arg: 1, scope: !3460, type: !94, flags: DIFlagArtificial | DIFlagObjectPointer)
!3462 = !DILocation(line: 0, scope: !3460)
!3463 = !DILocation(line: 39, column: 23, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !96, line: 39, column: 22)
!3465 = !DILocation(line: 39, column: 23, scope: !3460)
!3466 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !2, file: !3317, line: 254, type: !3318, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3322, retainedNodes: !253)
!3467 = !DILocalVariable(name: "__a", arg: 1, scope: !3466, file: !3317, line: 254, type: !3320)
!3468 = !DILocation(line: 254, column: 20, scope: !3466)
!3469 = !DILocalVariable(name: "__b", arg: 2, scope: !3466, file: !3317, line: 254, type: !3320)
!3470 = !DILocation(line: 254, column: 36, scope: !3466)
!3471 = !DILocation(line: 259, column: 11, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3466, file: !3317, line: 259, column: 11)
!3473 = !DILocation(line: 259, column: 17, scope: !3472)
!3474 = !DILocation(line: 259, column: 15, scope: !3472)
!3475 = !DILocation(line: 259, column: 11, scope: !3466)
!3476 = !DILocation(line: 260, column: 9, scope: !3472)
!3477 = !DILocation(line: 260, column: 2, scope: !3472)
!3478 = !DILocation(line: 261, column: 14, scope: !3466)
!3479 = !DILocation(line: 261, column: 7, scope: !3466)
!3480 = !DILocation(line: 262, column: 5, scope: !3466)
!3481 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE8allocateERS1_m", scope: !148, file: !149, line: 463, type: !152, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !151, retainedNodes: !253)
!3482 = !DILocalVariable(name: "__a", arg: 1, scope: !3481, file: !149, line: 463, type: !155)
!3483 = !DILocation(line: 463, column: 32, scope: !3481)
!3484 = !DILocalVariable(name: "__n", arg: 2, scope: !3481, file: !149, line: 463, type: !218)
!3485 = !DILocation(line: 463, column: 47, scope: !3481)
!3486 = !DILocation(line: 464, column: 16, scope: !3481)
!3487 = !DILocation(line: 464, column: 29, scope: !3481)
!3488 = !DILocation(line: 464, column: 20, scope: !3481)
!3489 = !DILocation(line: 464, column: 9, scope: !3481)
!3490 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE8allocateEmPKv", scope: !163, file: !164, line: 103, type: !192, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !191, retainedNodes: !253)
!3491 = !DILocalVariable(name: "this", arg: 1, scope: !3490, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!3493 = !DILocation(line: 0, scope: !3490)
!3494 = !DILocalVariable(name: "__n", arg: 2, scope: !3490, file: !164, line: 103, type: !194)
!3495 = !DILocation(line: 103, column: 26, scope: !3490)
!3496 = !DILocalVariable(arg: 3, scope: !3490, file: !164, line: 103, type: !92)
!3497 = !DILocation(line: 103, column: 43, scope: !3490)
!3498 = !DILocation(line: 111, column: 23, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3490, file: !164, line: 111, column: 6)
!3500 = !DILocation(line: 111, column: 35, scope: !3499)
!3501 = !DILocation(line: 111, column: 27, scope: !3499)
!3502 = !DILocation(line: 111, column: 6, scope: !3490)
!3503 = !DILocation(line: 115, column: 10, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !164, line: 115, column: 10)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !164, line: 112, column: 4)
!3506 = !DILocation(line: 115, column: 14, scope: !3504)
!3507 = !DILocation(line: 115, column: 10, scope: !3505)
!3508 = !DILocation(line: 116, column: 8, scope: !3504)
!3509 = !DILocation(line: 117, column: 6, scope: !3505)
!3510 = !DILocation(line: 127, column: 42, scope: !3490)
!3511 = !DILocation(line: 127, column: 46, scope: !3490)
!3512 = !DILocation(line: 127, column: 27, scope: !3490)
!3513 = !DILocation(line: 127, column: 2, scope: !3490)
!3514 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE10deallocateERS1_PS0_m", scope: !148, file: !149, line: 495, type: !224, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !223, retainedNodes: !253)
!3515 = !DILocalVariable(name: "__a", arg: 1, scope: !3514, file: !149, line: 495, type: !155)
!3516 = !DILocation(line: 495, column: 34, scope: !3514)
!3517 = !DILocalVariable(name: "__p", arg: 2, scope: !3514, file: !149, line: 495, type: !154)
!3518 = !DILocation(line: 495, column: 47, scope: !3514)
!3519 = !DILocalVariable(name: "__n", arg: 3, scope: !3514, file: !149, line: 495, type: !218)
!3520 = !DILocation(line: 495, column: 62, scope: !3514)
!3521 = !DILocation(line: 496, column: 9, scope: !3514)
!3522 = !DILocation(line: 496, column: 24, scope: !3514)
!3523 = !DILocation(line: 496, column: 29, scope: !3514)
!3524 = !DILocation(line: 496, column: 13, scope: !3514)
!3525 = !DILocation(line: 496, column: 35, scope: !3514)
!3526 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE10deallocateEPS1_m", scope: !163, file: !164, line: 132, type: !196, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !195, retainedNodes: !253)
!3527 = !DILocalVariable(name: "this", arg: 1, scope: !3526, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!3528 = !DILocation(line: 0, scope: !3526)
!3529 = !DILocalVariable(name: "__p", arg: 2, scope: !3526, file: !164, line: 132, type: !94)
!3530 = !DILocation(line: 132, column: 23, scope: !3526)
!3531 = !DILocalVariable(name: "__t", arg: 3, scope: !3526, file: !164, line: 132, type: !194)
!3532 = !DILocation(line: 132, column: 38, scope: !3526)
!3533 = !DILocation(line: 145, column: 20, scope: !3526)
!3534 = !DILocation(line: 145, column: 2, scope: !3526)
!3535 = !DILocation(line: 150, column: 7, scope: !3526)
!3536 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE", scope: !131, file: !35, line: 453, type: !385, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !384, retainedNodes: !253)
!3537 = !DILocalVariable(name: "__first", arg: 1, scope: !3536, file: !35, line: 453, type: !387)
!3538 = !DILocation(line: 453, column: 30, scope: !3536)
!3539 = !DILocalVariable(name: "__last", arg: 2, scope: !3536, file: !35, line: 453, type: !387)
!3540 = !DILocation(line: 453, column: 47, scope: !3536)
!3541 = !DILocalVariable(name: "__result", arg: 3, scope: !3536, file: !35, line: 453, type: !387)
!3542 = !DILocation(line: 453, column: 63, scope: !3536)
!3543 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3536, file: !35, line: 454, type: !388)
!3544 = !DILocation(line: 454, column: 24, scope: !3536)
!3545 = !DILocalVariable(arg: 5, scope: !3536, file: !35, line: 454, type: !353)
!3546 = !DILocation(line: 454, column: 42, scope: !3536)
!3547 = !DILocation(line: 456, column: 27, scope: !3536)
!3548 = !DILocation(line: 456, column: 36, scope: !3536)
!3549 = !DILocation(line: 456, column: 44, scope: !3536)
!3550 = !DILocation(line: 456, column: 54, scope: !3536)
!3551 = !DILocation(line: 456, column: 9, scope: !3536)
!3552 = !DILocation(line: 456, column: 2, scope: !3536)
!3553 = distinct !DISubprogram(name: "__relocate_a<ProjectedCylinder *, ProjectedCylinder *, std::allocator<ProjectedCylinder> >", linkageName: "_ZSt12__relocate_aIP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_", scope: !2, file: !3197, line: 1040, type: !3554, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3556, retainedNodes: !253)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!94, !94, !94, !94, !216}
!3556 = !{!3557, !3201, !3558}
!3557 = !DITemplateTypeParameter(name: "_InputIterator", type: !94)
!3558 = !DITemplateTypeParameter(name: "_Allocator", type: !157)
!3559 = !DILocalVariable(name: "__first", arg: 1, scope: !3553, file: !3197, line: 1040, type: !94)
!3560 = !DILocation(line: 1040, column: 33, scope: !3553)
!3561 = !DILocalVariable(name: "__last", arg: 2, scope: !3553, file: !3197, line: 1040, type: !94)
!3562 = !DILocation(line: 1040, column: 57, scope: !3553)
!3563 = !DILocalVariable(name: "__result", arg: 3, scope: !3553, file: !3197, line: 1041, type: !94)
!3564 = !DILocation(line: 1041, column: 21, scope: !3553)
!3565 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3553, file: !3197, line: 1041, type: !216)
!3566 = !DILocation(line: 1041, column: 43, scope: !3553)
!3567 = !DILocation(line: 1046, column: 47, scope: !3553)
!3568 = !DILocation(line: 1046, column: 29, scope: !3553)
!3569 = !DILocation(line: 1047, column: 26, scope: !3553)
!3570 = !DILocation(line: 1047, column: 8, scope: !3553)
!3571 = !DILocation(line: 1048, column: 26, scope: !3553)
!3572 = !DILocation(line: 1048, column: 8, scope: !3553)
!3573 = !DILocation(line: 1048, column: 37, scope: !3553)
!3574 = !DILocation(line: 1046, column: 14, scope: !3553)
!3575 = !DILocation(line: 1046, column: 7, scope: !3553)
!3576 = distinct !DISubprogram(name: "__relocate_a_1<ProjectedCylinder *, ProjectedCylinder *, std::allocator<ProjectedCylinder> >", linkageName: "_ZSt14__relocate_a_1IP17ProjectedCylinderS1_SaIS0_EET0_T_S4_S3_RT1_", scope: !2, file: !3197, line: 1018, type: !3554, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3556, retainedNodes: !253)
!3577 = !DILocalVariable(name: "__first", arg: 1, scope: !3576, file: !3197, line: 1018, type: !94)
!3578 = !DILocation(line: 1018, column: 35, scope: !3576)
!3579 = !DILocalVariable(name: "__last", arg: 2, scope: !3576, file: !3197, line: 1018, type: !94)
!3580 = !DILocation(line: 1018, column: 59, scope: !3576)
!3581 = !DILocalVariable(name: "__result", arg: 3, scope: !3576, file: !3197, line: 1019, type: !94)
!3582 = !DILocation(line: 1019, column: 23, scope: !3576)
!3583 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3576, file: !3197, line: 1019, type: !216)
!3584 = !DILocation(line: 1019, column: 45, scope: !3576)
!3585 = !DILocalVariable(name: "__cur", scope: !3576, file: !3197, line: 1030, type: !94)
!3586 = !DILocation(line: 1030, column: 24, scope: !3576)
!3587 = !DILocation(line: 1030, column: 32, scope: !3576)
!3588 = !DILocation(line: 1031, column: 7, scope: !3576)
!3589 = !DILocation(line: 1031, column: 14, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3197, line: 1031, column: 7)
!3591 = distinct !DILexicalBlock(scope: !3576, file: !3197, line: 1031, column: 7)
!3592 = !DILocation(line: 1031, column: 25, scope: !3590)
!3593 = !DILocation(line: 1031, column: 22, scope: !3590)
!3594 = !DILocation(line: 1031, column: 7, scope: !3591)
!3595 = !DILocation(line: 1032, column: 45, scope: !3590)
!3596 = !DILocation(line: 1033, column: 24, scope: !3590)
!3597 = !DILocation(line: 1033, column: 34, scope: !3590)
!3598 = !DILocation(line: 1032, column: 2, scope: !3590)
!3599 = !DILocation(line: 1031, column: 33, scope: !3590)
!3600 = !DILocation(line: 1031, column: 50, scope: !3590)
!3601 = !DILocation(line: 1031, column: 7, scope: !3590)
!3602 = distinct !{!3602, !3594, !3603, !2152}
!3603 = !DILocation(line: 1033, column: 41, scope: !3591)
!3604 = !DILocation(line: 1034, column: 14, scope: !3576)
!3605 = !DILocation(line: 1034, column: 7, scope: !3576)
!3606 = distinct !DISubprogram(name: "__niter_base<ProjectedCylinder *>", linkageName: "_ZSt12__niter_baseIP17ProjectedCylinderET_S2_", scope: !2, file: !3317, line: 313, type: !3607, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3609, retainedNodes: !253)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!94, !94}
!3609 = !{!3610}
!3610 = !DITemplateTypeParameter(name: "_Iterator", type: !94)
!3611 = !DILocalVariable(name: "__it", arg: 1, scope: !3606, file: !3317, line: 313, type: !94)
!3612 = !DILocation(line: 313, column: 28, scope: !3606)
!3613 = !DILocation(line: 315, column: 14, scope: !3606)
!3614 = !DILocation(line: 315, column: 7, scope: !3606)
!3615 = distinct !DISubprogram(name: "__relocate_object_a<ProjectedCylinder, ProjectedCylinder, std::allocator<ProjectedCylinder> >", linkageName: "_ZSt19__relocate_object_aI17ProjectedCylinderS0_SaIS0_EEvPT_PT0_RT1_", scope: !2, file: !3197, line: 986, type: !3616, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3619, retainedNodes: !253)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3618, !3618, !216}
!3618 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!3619 = !{!203, !3620, !3558}
!3620 = !DITemplateTypeParameter(name: "_Up", type: !95)
!3621 = !DILocalVariable(name: "__dest", arg: 1, scope: !3615, file: !3197, line: 986, type: !3618)
!3622 = !DILocation(line: 986, column: 41, scope: !3615)
!3623 = !DILocalVariable(name: "__orig", arg: 2, scope: !3615, file: !3197, line: 986, type: !3618)
!3624 = !DILocation(line: 986, column: 65, scope: !3615)
!3625 = !DILocalVariable(name: "__alloc", arg: 3, scope: !3615, file: !3197, line: 987, type: !216)
!3626 = !DILocation(line: 987, column: 16, scope: !3615)
!3627 = !DILocation(line: 994, column: 27, scope: !3615)
!3628 = !DILocation(line: 994, column: 36, scope: !3615)
!3629 = !DILocation(line: 994, column: 55, scope: !3615)
!3630 = !DILocation(line: 994, column: 7, scope: !3615)
!3631 = !DILocation(line: 995, column: 25, scope: !3615)
!3632 = !DILocation(line: 995, column: 52, scope: !3615)
!3633 = !DILocation(line: 995, column: 7, scope: !3615)
!3634 = !DILocation(line: 996, column: 5, scope: !3615)
!3635 = distinct !DISubprogram(name: "construct<ProjectedCylinder, ProjectedCylinder>", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_", scope: !148, file: !149, line: 511, type: !3636, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3640, declaration: !3639, retainedNodes: !253)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !155, !94, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !95, size: 64)
!3639 = !DISubprogram(name: "construct<ProjectedCylinder, ProjectedCylinder>", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_", scope: !148, file: !149, line: 511, type: !3636, scopeLine: 511, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3640)
!3640 = !{!3620, !3641}
!3641 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !3642)
!3642 = !{!252}
!3643 = !DILocalVariable(name: "__a", arg: 1, scope: !3635, file: !149, line: 511, type: !155)
!3644 = !DILocation(line: 511, column: 28, scope: !3635)
!3645 = !DILocalVariable(name: "__p", arg: 2, scope: !3635, file: !149, line: 511, type: !94)
!3646 = !DILocation(line: 511, column: 66, scope: !3635)
!3647 = !DILocalVariable(name: "__args", arg: 3, scope: !3635, file: !149, line: 512, type: !3638)
!3648 = !DILocation(line: 512, column: 16, scope: !3635)
!3649 = !DILocation(line: 516, column: 4, scope: !3635)
!3650 = !DILocation(line: 516, column: 18, scope: !3635)
!3651 = !DILocation(line: 516, column: 43, scope: !3635)
!3652 = !DILocation(line: 516, column: 8, scope: !3635)
!3653 = !DILocation(line: 520, column: 2, scope: !3635)
!3654 = distinct !DISubprogram(name: "destroy<ProjectedCylinder>", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE7destroyIS0_EEvRS1_PT_", scope: !148, file: !149, line: 531, type: !3655, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3658, declaration: !3657, retainedNodes: !253)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !155, !94}
!3657 = !DISubprogram(name: "destroy<ProjectedCylinder>", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE7destroyIS0_EEvRS1_PT_", scope: !148, file: !149, line: 531, type: !3655, scopeLine: 531, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3658)
!3658 = !{!3620}
!3659 = !DILocalVariable(name: "__a", arg: 1, scope: !3654, file: !149, line: 531, type: !155)
!3660 = !DILocation(line: 531, column: 26, scope: !3654)
!3661 = !DILocalVariable(name: "__p", arg: 2, scope: !3654, file: !149, line: 531, type: !94)
!3662 = !DILocation(line: 531, column: 64, scope: !3654)
!3663 = !DILocation(line: 535, column: 4, scope: !3654)
!3664 = !DILocation(line: 535, column: 16, scope: !3654)
!3665 = !DILocation(line: 535, column: 8, scope: !3654)
!3666 = !DILocation(line: 539, column: 2, scope: !3654)
!3667 = distinct !DISubprogram(name: "construct<ProjectedCylinder, ProjectedCylinder>", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE9constructIS1_JS1_EEEvPT_DpOT0_", scope: !163, file: !164, line: 160, type: !3668, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3640, declaration: !3670, retainedNodes: !253)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !169, !94, !3638}
!3670 = !DISubprogram(name: "construct<ProjectedCylinder, ProjectedCylinder>", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE9constructIS1_JS1_EEEvPT_DpOT0_", scope: !163, file: !164, line: 160, type: !3668, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3640)
!3671 = !DILocalVariable(name: "this", arg: 1, scope: !3667, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!3672 = !DILocation(line: 0, scope: !3667)
!3673 = !DILocalVariable(name: "__p", arg: 2, scope: !3667, file: !164, line: 160, type: !94)
!3674 = !DILocation(line: 160, column: 17, scope: !3667)
!3675 = !DILocalVariable(name: "__args", arg: 3, scope: !3667, file: !164, line: 160, type: !3638)
!3676 = !DILocation(line: 160, column: 33, scope: !3667)
!3677 = !DILocation(line: 162, column: 18, scope: !3667)
!3678 = !DILocation(line: 162, column: 47, scope: !3667)
!3679 = !DILocation(line: 162, column: 23, scope: !3667)
!3680 = !DILocation(line: 162, column: 60, scope: !3667)
!3681 = distinct !DISubprogram(name: "destroy<ProjectedCylinder>", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE7destroyIS1_EEvPT_", scope: !163, file: !164, line: 166, type: !3682, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3658, declaration: !3684, retainedNodes: !253)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !169, !94}
!3684 = !DISubprogram(name: "destroy<ProjectedCylinder>", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderE7destroyIS1_EEvPT_", scope: !163, file: !164, line: 166, type: !3682, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3658)
!3685 = !DILocalVariable(name: "this", arg: 1, scope: !3681, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!3686 = !DILocation(line: 0, scope: !3681)
!3687 = !DILocalVariable(name: "__p", arg: 2, scope: !3681, file: !164, line: 166, type: !94)
!3688 = !DILocation(line: 166, column: 15, scope: !3681)
!3689 = !DILocation(line: 168, column: 4, scope: !3681)
!3690 = !DILocation(line: 168, column: 10, scope: !3681)
!3691 = !DILocation(line: 168, column: 17, scope: !3681)
!3692 = distinct !DISubprogram(name: "_Destroy<ProjectedCylinder *, ProjectedCylinder>", linkageName: "_ZSt8_DestroyIP17ProjectedCylinderS0_EvT_S2_RSaIT0_E", scope: !2, file: !149, line: 845, type: !3693, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3695, retainedNodes: !253)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !94, !94, !216}
!3695 = !{!3201, !203}
!3696 = !DILocalVariable(name: "__first", arg: 1, scope: !3692, file: !149, line: 845, type: !94)
!3697 = !DILocation(line: 845, column: 31, scope: !3692)
!3698 = !DILocalVariable(name: "__last", arg: 2, scope: !3692, file: !149, line: 845, type: !94)
!3699 = !DILocation(line: 845, column: 57, scope: !3692)
!3700 = !DILocalVariable(arg: 3, scope: !3692, file: !149, line: 846, type: !216)
!3701 = !DILocation(line: 846, column: 22, scope: !3692)
!3702 = !DILocation(line: 848, column: 16, scope: !3692)
!3703 = !DILocation(line: 848, column: 25, scope: !3692)
!3704 = !DILocation(line: 848, column: 7, scope: !3692)
!3705 = !DILocation(line: 849, column: 5, scope: !3692)
!3706 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv", scope: !2723, file: !35, line: 918, type: !3707, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3711, retainedNodes: !253)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!34, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!3711 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE4sizeEv", scope: !2723, file: !35, line: 918, type: !3707, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3712 = !DILocalVariable(name: "this", arg: 1, scope: !3706, type: !3713, flags: DIFlagArtificial | DIFlagObjectPointer)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3714 = !DILocation(line: 0, scope: !3706)
!3715 = !DILocation(line: 919, column: 32, scope: !3706)
!3716 = !DILocation(line: 919, column: 40, scope: !3706)
!3717 = !DILocation(line: 919, column: 58, scope: !3706)
!3718 = !DILocation(line: 919, column: 66, scope: !3706)
!3719 = !DILocation(line: 919, column: 50, scope: !3706)
!3720 = !DILocation(line: 919, column: 9, scope: !3706)
!3721 = distinct !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE17_M_default_appendEm", scope: !2723, file: !9, line: 612, type: !2724, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3722, retainedNodes: !253)
!3722 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE17_M_default_appendEm", scope: !2723, file: !35, line: 1689, type: !2724, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3723 = !DILocalVariable(name: "this", arg: 1, scope: !3721, type: !2729, flags: DIFlagArtificial | DIFlagObjectPointer)
!3724 = !DILocation(line: 0, scope: !3721)
!3725 = !DILocalVariable(name: "__n", arg: 2, scope: !3721, file: !35, line: 1689, type: !34)
!3726 = !DILocation(line: 1689, column: 35, scope: !3721)
!3727 = !DILocation(line: 614, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3721, file: !9, line: 614, column: 11)
!3729 = !DILocation(line: 614, column: 15, scope: !3728)
!3730 = !DILocation(line: 614, column: 11, scope: !3721)
!3731 = !DILocalVariable(name: "__size", scope: !3732, file: !9, line: 616, type: !3066)
!3732 = distinct !DILexicalBlock(scope: !3728, file: !9, line: 615, column: 2)
!3733 = !DILocation(line: 616, column: 20, scope: !3732)
!3734 = !DILocation(line: 616, column: 29, scope: !3732)
!3735 = !DILocalVariable(name: "__navail", scope: !3732, file: !9, line: 617, type: !34)
!3736 = !DILocation(line: 617, column: 14, scope: !3732)
!3737 = !DILocation(line: 617, column: 41, scope: !3732)
!3738 = !DILocation(line: 617, column: 49, scope: !3732)
!3739 = !DILocation(line: 618, column: 15, scope: !3732)
!3740 = !DILocation(line: 618, column: 23, scope: !3732)
!3741 = !DILocation(line: 618, column: 7, scope: !3732)
!3742 = !DILocation(line: 620, column: 8, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3732, file: !9, line: 620, column: 8)
!3744 = !DILocation(line: 620, column: 17, scope: !3743)
!3745 = !DILocation(line: 620, column: 15, scope: !3743)
!3746 = !DILocation(line: 620, column: 28, scope: !3743)
!3747 = !DILocation(line: 620, column: 31, scope: !3743)
!3748 = !DILocation(line: 620, column: 42, scope: !3743)
!3749 = !DILocation(line: 620, column: 55, scope: !3743)
!3750 = !DILocation(line: 620, column: 53, scope: !3743)
!3751 = !DILocation(line: 620, column: 40, scope: !3743)
!3752 = !DILocation(line: 620, column: 8, scope: !3732)
!3753 = !DILocation(line: 621, column: 6, scope: !3743)
!3754 = !DILocation(line: 623, column: 8, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3732, file: !9, line: 623, column: 8)
!3756 = !DILocation(line: 623, column: 20, scope: !3755)
!3757 = !DILocation(line: 623, column: 17, scope: !3755)
!3758 = !DILocation(line: 623, column: 8, scope: !3732)
!3759 = !DILocation(line: 627, column: 42, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3755, file: !9, line: 624, column: 6)
!3761 = !DILocation(line: 627, column: 50, scope: !3760)
!3762 = !DILocation(line: 628, column: 8, scope: !3760)
!3763 = !DILocation(line: 628, column: 13, scope: !3760)
!3764 = !DILocation(line: 627, column: 3, scope: !3760)
!3765 = !DILocation(line: 626, column: 14, scope: !3760)
!3766 = !DILocation(line: 626, column: 22, scope: !3760)
!3767 = !DILocation(line: 626, column: 32, scope: !3760)
!3768 = !DILocation(line: 630, column: 6, scope: !3760)
!3769 = !DILocalVariable(name: "__len", scope: !3770, file: !9, line: 633, type: !3066)
!3770 = distinct !DILexicalBlock(scope: !3755, file: !9, line: 632, column: 6)
!3771 = !DILocation(line: 633, column: 24, scope: !3770)
!3772 = !DILocation(line: 634, column: 16, scope: !3770)
!3773 = !DILocation(line: 634, column: 3, scope: !3770)
!3774 = !DILocalVariable(name: "__new_start", scope: !3770, file: !9, line: 635, type: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2723, file: !35, line: 415, baseType: !3776, flags: DIFlagPublic)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3777, file: !35, line: 89, baseType: !3778)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<ProjectedBody, std::allocator<ProjectedBody> >", scope: !2, file: !35, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseI13ProjectedBodySaIS0_EE")
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2758, file: !142, line: 57, baseType: !2766)
!3779 = !DILocation(line: 635, column: 16, scope: !3770)
!3780 = !DILocation(line: 635, column: 46, scope: !3770)
!3781 = !DILocation(line: 635, column: 34, scope: !3770)
!3782 = !DILocalVariable(name: "__destroy_from", scope: !3783, file: !9, line: 653, type: !3775)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !9, line: 652, column: 3)
!3784 = distinct !DILexicalBlock(scope: !3770, file: !9, line: 636, column: 33)
!3785 = !DILocation(line: 653, column: 13, scope: !3783)
!3786 = !DILocation(line: 656, column: 42, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !9, line: 655, column: 7)
!3788 = !DILocation(line: 656, column: 56, scope: !3787)
!3789 = !DILocation(line: 656, column: 54, scope: !3787)
!3790 = !DILocation(line: 657, column: 10, scope: !3787)
!3791 = !DILocation(line: 657, column: 15, scope: !3787)
!3792 = !DILocation(line: 656, column: 9, scope: !3787)
!3793 = !DILocation(line: 658, column: 26, scope: !3787)
!3794 = !DILocation(line: 658, column: 40, scope: !3787)
!3795 = !DILocation(line: 658, column: 38, scope: !3787)
!3796 = !DILocation(line: 658, column: 24, scope: !3787)
!3797 = !DILocation(line: 660, column: 16, scope: !3787)
!3798 = !DILocation(line: 660, column: 24, scope: !3787)
!3799 = !DILocation(line: 660, column: 40, scope: !3787)
!3800 = !DILocation(line: 660, column: 48, scope: !3787)
!3801 = !DILocation(line: 661, column: 10, scope: !3787)
!3802 = !DILocation(line: 661, column: 23, scope: !3787)
!3803 = !DILocation(line: 659, column: 9, scope: !3787)
!3804 = !DILocation(line: 662, column: 7, scope: !3787)
!3805 = !DILocation(line: 683, column: 5, scope: !3787)
!3806 = !DILocation(line: 665, column: 13, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !9, line: 665, column: 13)
!3808 = distinct !DILexicalBlock(scope: !3783, file: !9, line: 664, column: 7)
!3809 = !DILocation(line: 665, column: 13, scope: !3808)
!3810 = !DILocation(line: 666, column: 18, scope: !3807)
!3811 = !DILocation(line: 666, column: 34, scope: !3807)
!3812 = !DILocation(line: 666, column: 51, scope: !3807)
!3813 = !DILocation(line: 666, column: 49, scope: !3807)
!3814 = !DILocation(line: 667, column: 11, scope: !3807)
!3815 = !DILocation(line: 666, column: 4, scope: !3807)
!3816 = !DILocation(line: 683, column: 5, scope: !3807)
!3817 = !DILocation(line: 670, column: 7, scope: !3808)
!3818 = !DILocation(line: 668, column: 23, scope: !3808)
!3819 = !DILocation(line: 668, column: 36, scope: !3808)
!3820 = !DILocation(line: 668, column: 9, scope: !3808)
!3821 = !DILocation(line: 669, column: 9, scope: !3808)
!3822 = !DILocation(line: 671, column: 25, scope: !3783)
!3823 = !DILocation(line: 671, column: 33, scope: !3783)
!3824 = !DILocation(line: 671, column: 49, scope: !3783)
!3825 = !DILocation(line: 671, column: 57, scope: !3783)
!3826 = !DILocation(line: 672, column: 5, scope: !3783)
!3827 = !DILocation(line: 671, column: 5, scope: !3783)
!3828 = !DILocation(line: 675, column: 28, scope: !3770)
!3829 = !DILocation(line: 675, column: 36, scope: !3770)
!3830 = !DILocation(line: 676, column: 14, scope: !3770)
!3831 = !DILocation(line: 676, column: 22, scope: !3770)
!3832 = !DILocation(line: 677, column: 16, scope: !3770)
!3833 = !DILocation(line: 677, column: 24, scope: !3770)
!3834 = !DILocation(line: 677, column: 8, scope: !3770)
!3835 = !DILocation(line: 675, column: 8, scope: !3770)
!3836 = !DILocation(line: 678, column: 33, scope: !3770)
!3837 = !DILocation(line: 678, column: 14, scope: !3770)
!3838 = !DILocation(line: 678, column: 22, scope: !3770)
!3839 = !DILocation(line: 678, column: 31, scope: !3770)
!3840 = !DILocation(line: 679, column: 34, scope: !3770)
!3841 = !DILocation(line: 679, column: 48, scope: !3770)
!3842 = !DILocation(line: 679, column: 46, scope: !3770)
!3843 = !DILocation(line: 679, column: 57, scope: !3770)
!3844 = !DILocation(line: 679, column: 55, scope: !3770)
!3845 = !DILocation(line: 679, column: 14, scope: !3770)
!3846 = !DILocation(line: 679, column: 22, scope: !3770)
!3847 = !DILocation(line: 679, column: 32, scope: !3770)
!3848 = !DILocation(line: 680, column: 42, scope: !3770)
!3849 = !DILocation(line: 680, column: 56, scope: !3770)
!3850 = !DILocation(line: 680, column: 54, scope: !3770)
!3851 = !DILocation(line: 680, column: 14, scope: !3770)
!3852 = !DILocation(line: 680, column: 22, scope: !3770)
!3853 = !DILocation(line: 680, column: 40, scope: !3770)
!3854 = !DILocation(line: 682, column: 2, scope: !3732)
!3855 = !DILocation(line: 683, column: 5, scope: !3721)
!3856 = distinct !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE15_M_erase_at_endEPS0_", scope: !2723, file: !35, line: 1792, type: !3857, scopeLine: 1793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3859, retainedNodes: !253)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !2726, !3775}
!3859 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE15_M_erase_at_endEPS0_", scope: !2723, file: !35, line: 1792, type: !3857, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3860 = !DILocalVariable(name: "this", arg: 1, scope: !3856, type: !2729, flags: DIFlagArtificial | DIFlagObjectPointer)
!3861 = !DILocation(line: 0, scope: !3856)
!3862 = !DILocalVariable(name: "__pos", arg: 2, scope: !3856, file: !35, line: 1792, type: !3775)
!3863 = !DILocation(line: 1792, column: 31, scope: !3856)
!3864 = !DILocalVariable(name: "__n", scope: !3865, file: !35, line: 1794, type: !34)
!3865 = distinct !DILexicalBlock(scope: !3856, file: !35, line: 1794, column: 16)
!3866 = !DILocation(line: 1794, column: 16, scope: !3865)
!3867 = !DILocation(line: 1794, column: 28, scope: !3865)
!3868 = !DILocation(line: 1794, column: 36, scope: !3865)
!3869 = !DILocation(line: 1794, column: 48, scope: !3865)
!3870 = !DILocation(line: 1794, column: 46, scope: !3865)
!3871 = !DILocation(line: 1794, column: 16, scope: !3856)
!3872 = !DILocation(line: 1796, column: 20, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !35, line: 1795, column: 4)
!3874 = !DILocation(line: 1796, column: 33, scope: !3873)
!3875 = !DILocation(line: 1796, column: 41, scope: !3873)
!3876 = !DILocation(line: 1797, column: 6, scope: !3873)
!3877 = !DILocation(line: 1796, column: 6, scope: !3873)
!3878 = !DILocation(line: 1798, column: 32, scope: !3873)
!3879 = !DILocation(line: 1798, column: 12, scope: !3873)
!3880 = !DILocation(line: 1798, column: 20, scope: !3873)
!3881 = !DILocation(line: 1798, column: 30, scope: !3873)
!3882 = !DILocation(line: 1800, column: 4, scope: !3873)
!3883 = !DILocation(line: 1801, column: 7, scope: !3856)
!3884 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv", scope: !2723, file: !35, line: 923, type: !3707, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3885, retainedNodes: !253)
!3885 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE8max_sizeEv", scope: !2723, file: !35, line: 923, type: !3707, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3886 = !DILocalVariable(name: "this", arg: 1, scope: !3884, type: !3713, flags: DIFlagArtificial | DIFlagObjectPointer)
!3887 = !DILocation(line: 0, scope: !3884)
!3888 = !DILocation(line: 924, column: 28, scope: !3884)
!3889 = !DILocation(line: 924, column: 16, scope: !3884)
!3890 = !DILocation(line: 924, column: 9, scope: !3884)
!3891 = distinct !DISubprogram(name: "__uninitialized_default_n_a<ProjectedBody *, unsigned long, ProjectedBody>", linkageName: "_ZSt27__uninitialized_default_n_aIP13ProjectedBodymS0_ET_S2_T0_RSaIT1_E", scope: !2, file: !3197, line: 702, type: !3892, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3894, retainedNodes: !253)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!665, !665, !38, !2795}
!3894 = !{!3895, !3202, !3896}
!3895 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !665)
!3896 = !DITemplateTypeParameter(name: "_Tp", type: !666)
!3897 = !DILocalVariable(name: "__first", arg: 1, scope: !3891, file: !3197, line: 702, type: !665)
!3898 = !DILocation(line: 702, column: 50, scope: !3891)
!3899 = !DILocalVariable(name: "__n", arg: 2, scope: !3891, file: !3197, line: 702, type: !38)
!3900 = !DILocation(line: 702, column: 65, scope: !3891)
!3901 = !DILocalVariable(arg: 3, scope: !3891, file: !3197, line: 703, type: !2795)
!3902 = !DILocation(line: 703, column: 20, scope: !3891)
!3903 = !DILocation(line: 704, column: 45, scope: !3891)
!3904 = !DILocation(line: 704, column: 54, scope: !3891)
!3905 = !DILocation(line: 704, column: 14, scope: !3891)
!3906 = !DILocation(line: 704, column: 7, scope: !3891)
!3907 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv", scope: !3777, file: !35, line: 276, type: !3908, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3917, retainedNodes: !253)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!3910, !3916}
!3910 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !3777, file: !35, line: 87, baseType: !3912)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !3913, file: !142, line: 120, baseType: !3915)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<ProjectedBody>", scope: !2758, file: !142, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !3914, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI13ProjectedBodyES1_E6rebindIS1_EE")
!3914 = !{!3896}
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<ProjectedBody>", scope: !2761, file: !149, line: 450, baseType: !2769)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3917 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv", scope: !3777, file: !35, line: 276, type: !3908, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!3918 = !DILocalVariable(name: "this", arg: 1, scope: !3907, type: !3919, flags: DIFlagArtificial | DIFlagObjectPointer)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3920 = !DILocation(line: 0, scope: !3907)
!3921 = !DILocation(line: 277, column: 22, scope: !3907)
!3922 = !DILocation(line: 277, column: 9, scope: !3907)
!3923 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE12_M_check_lenEmPKc", scope: !2723, file: !35, line: 1756, type: !3924, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3927, retainedNodes: !253)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!3926, !3709, !34, !638}
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2723, file: !35, line: 424, baseType: !36, flags: DIFlagPublic)
!3927 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI13ProjectedBodySaIS0_EE12_M_check_lenEmPKc", scope: !2723, file: !35, line: 1756, type: !3924, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3928 = !DILocalVariable(name: "this", arg: 1, scope: !3923, type: !3713, flags: DIFlagArtificial | DIFlagObjectPointer)
!3929 = !DILocation(line: 0, scope: !3923)
!3930 = !DILocalVariable(name: "__n", arg: 2, scope: !3923, file: !35, line: 1756, type: !34)
!3931 = !DILocation(line: 1756, column: 30, scope: !3923)
!3932 = !DILocalVariable(name: "__s", arg: 3, scope: !3923, file: !35, line: 1756, type: !638)
!3933 = !DILocation(line: 1756, column: 47, scope: !3923)
!3934 = !DILocation(line: 1758, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3923, file: !35, line: 1758, column: 6)
!3936 = !DILocation(line: 1758, column: 19, scope: !3935)
!3937 = !DILocation(line: 1758, column: 17, scope: !3935)
!3938 = !DILocation(line: 1758, column: 28, scope: !3935)
!3939 = !DILocation(line: 1758, column: 26, scope: !3935)
!3940 = !DILocation(line: 1758, column: 6, scope: !3923)
!3941 = !DILocation(line: 1759, column: 25, scope: !3935)
!3942 = !DILocation(line: 1759, column: 4, scope: !3935)
!3943 = !DILocalVariable(name: "__len", scope: !3923, file: !35, line: 1761, type: !3066)
!3944 = !DILocation(line: 1761, column: 18, scope: !3923)
!3945 = !DILocation(line: 1761, column: 26, scope: !3923)
!3946 = !DILocation(line: 1761, column: 46, scope: !3923)
!3947 = !DILocation(line: 1761, column: 35, scope: !3923)
!3948 = !DILocation(line: 1761, column: 33, scope: !3923)
!3949 = !DILocation(line: 1762, column: 10, scope: !3923)
!3950 = !DILocation(line: 1762, column: 18, scope: !3923)
!3951 = !DILocation(line: 1762, column: 16, scope: !3923)
!3952 = !DILocation(line: 1762, column: 25, scope: !3923)
!3953 = !DILocation(line: 1762, column: 28, scope: !3923)
!3954 = !DILocation(line: 1762, column: 36, scope: !3923)
!3955 = !DILocation(line: 1762, column: 34, scope: !3923)
!3956 = !DILocation(line: 1762, column: 9, scope: !3923)
!3957 = !DILocation(line: 1762, column: 50, scope: !3923)
!3958 = !DILocation(line: 1762, column: 63, scope: !3923)
!3959 = !DILocation(line: 1762, column: 2, scope: !3923)
!3960 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE11_M_allocateEm", scope: !3777, file: !35, line: 343, type: !3961, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !3963, retainedNodes: !253)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!3776, !3916, !36}
!3963 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE11_M_allocateEm", scope: !3777, file: !35, line: 343, type: !3961, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!3964 = !DILocalVariable(name: "this", arg: 1, scope: !3960, type: !3919, flags: DIFlagArtificial | DIFlagObjectPointer)
!3965 = !DILocation(line: 0, scope: !3960)
!3966 = !DILocalVariable(name: "__n", arg: 2, scope: !3960, file: !35, line: 343, type: !36)
!3967 = !DILocation(line: 343, column: 26, scope: !3960)
!3968 = !DILocation(line: 346, column: 9, scope: !3960)
!3969 = !DILocation(line: 346, column: 13, scope: !3960)
!3970 = !DILocation(line: 346, column: 34, scope: !3960)
!3971 = !DILocation(line: 346, column: 43, scope: !3960)
!3972 = !DILocation(line: 346, column: 20, scope: !3960)
!3973 = !DILocation(line: 346, column: 2, scope: !3960)
!3974 = distinct !DISubprogram(name: "__uninitialized_move_if_noexcept_a<ProjectedBody *, ProjectedBody *, std::allocator<ProjectedBody> >", linkageName: "_ZSt34__uninitialized_move_if_noexcept_aIP13ProjectedBodyS1_SaIS0_EET0_T_S4_S3_RT1_", scope: !2, file: !3197, line: 349, type: !3975, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3977, retainedNodes: !253)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!665, !665, !665, !665, !2795}
!3977 = !{!3978, !3895, !3979}
!3978 = !DITemplateTypeParameter(name: "_InputIterator", type: !665)
!3979 = !DITemplateTypeParameter(name: "_Allocator", type: !2769)
!3980 = !DILocalVariable(name: "__first", arg: 1, scope: !3974, file: !3197, line: 349, type: !665)
!3981 = !DILocation(line: 349, column: 55, scope: !3974)
!3982 = !DILocalVariable(name: "__last", arg: 2, scope: !3974, file: !3197, line: 350, type: !665)
!3983 = !DILocation(line: 350, column: 27, scope: !3974)
!3984 = !DILocalVariable(name: "__result", arg: 3, scope: !3974, file: !3197, line: 351, type: !665)
!3985 = !DILocation(line: 351, column: 29, scope: !3974)
!3986 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3974, file: !3197, line: 352, type: !2795)
!3987 = !DILocation(line: 352, column: 24, scope: !3974)
!3988 = !DILocation(line: 355, column: 3, scope: !3974)
!3989 = !DILocation(line: 356, column: 3, scope: !3974)
!3990 = !DILocation(line: 356, column: 52, scope: !3974)
!3991 = !DILocation(line: 356, column: 62, scope: !3974)
!3992 = !DILocation(line: 354, column: 14, scope: !3974)
!3993 = !DILocation(line: 354, column: 7, scope: !3974)
!3994 = distinct !DISubprogram(name: "_Destroy<ProjectedBody *, ProjectedBody>", linkageName: "_ZSt8_DestroyIP13ProjectedBodyS0_EvT_S2_RSaIT0_E", scope: !2, file: !149, line: 845, type: !3995, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3997, retainedNodes: !253)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !665, !665, !2795}
!3997 = !{!3895, !3896}
!3998 = !DILocalVariable(name: "__first", arg: 1, scope: !3994, file: !149, line: 845, type: !665)
!3999 = !DILocation(line: 845, column: 31, scope: !3994)
!4000 = !DILocalVariable(name: "__last", arg: 2, scope: !3994, file: !149, line: 845, type: !665)
!4001 = !DILocation(line: 845, column: 57, scope: !3994)
!4002 = !DILocalVariable(arg: 3, scope: !3994, file: !149, line: 846, type: !2795)
!4003 = !DILocation(line: 846, column: 22, scope: !3994)
!4004 = !DILocation(line: 848, column: 16, scope: !3994)
!4005 = !DILocation(line: 848, column: 25, scope: !3994)
!4006 = !DILocation(line: 848, column: 7, scope: !3994)
!4007 = !DILocation(line: 849, column: 5, scope: !3994)
!4008 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m", scope: !3777, file: !35, line: 350, type: !4009, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4011, retainedNodes: !253)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3916, !3776, !36}
!4011 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI13ProjectedBodySaIS0_EE13_M_deallocateEPS0_m", scope: !3777, file: !35, line: 350, type: !4009, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!4012 = !DILocalVariable(name: "this", arg: 1, scope: !4008, type: !3919, flags: DIFlagArtificial | DIFlagObjectPointer)
!4013 = !DILocation(line: 0, scope: !4008)
!4014 = !DILocalVariable(name: "__p", arg: 2, scope: !4008, file: !35, line: 350, type: !3776)
!4015 = !DILocation(line: 350, column: 29, scope: !4008)
!4016 = !DILocalVariable(name: "__n", arg: 3, scope: !4008, file: !35, line: 350, type: !36)
!4017 = !DILocation(line: 350, column: 41, scope: !4008)
!4018 = !DILocation(line: 353, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4008, file: !35, line: 353, column: 6)
!4020 = !DILocation(line: 353, column: 6, scope: !4008)
!4021 = !DILocation(line: 354, column: 20, scope: !4019)
!4022 = !DILocation(line: 354, column: 29, scope: !4019)
!4023 = !DILocation(line: 354, column: 34, scope: !4019)
!4024 = !DILocation(line: 354, column: 4, scope: !4019)
!4025 = !DILocation(line: 355, column: 7, scope: !4008)
!4026 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE11_S_max_sizeERKS1_", scope: !2723, file: !35, line: 1776, type: !4027, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4032, retainedNodes: !253)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!3926, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !2723, file: !35, line: 410, baseType: !3911)
!4032 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI13ProjectedBodySaIS0_EE11_S_max_sizeERKS1_", scope: !2723, file: !35, line: 1776, type: !4027, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4033 = !DILocalVariable(name: "__a", arg: 1, scope: !4026, file: !35, line: 1776, type: !4029)
!4034 = !DILocation(line: 1776, column: 41, scope: !4026)
!4035 = !DILocalVariable(name: "__diffmax", scope: !4026, file: !35, line: 1781, type: !3296)
!4036 = !DILocation(line: 1781, column: 15, scope: !4026)
!4037 = !DILocalVariable(name: "__allocmax", scope: !4026, file: !35, line: 1783, type: !3296)
!4038 = !DILocation(line: 1783, column: 15, scope: !4026)
!4039 = !DILocation(line: 1783, column: 52, scope: !4026)
!4040 = !DILocation(line: 1783, column: 28, scope: !4026)
!4041 = !DILocation(line: 1784, column: 9, scope: !4026)
!4042 = !DILocation(line: 1784, column: 2, scope: !4026)
!4043 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv", scope: !3777, file: !35, line: 280, type: !4044, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4050, retainedNodes: !253)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!4046, !4048}
!4046 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!4050 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI13ProjectedBodySaIS0_EE19_M_get_Tp_allocatorEv", scope: !3777, file: !35, line: 280, type: !4044, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!4051 = !DILocalVariable(name: "this", arg: 1, scope: !4043, type: !4052, flags: DIFlagArtificial | DIFlagObjectPointer)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4053 = !DILocation(line: 0, scope: !4043)
!4054 = !DILocation(line: 281, column: 22, scope: !4043)
!4055 = !DILocation(line: 281, column: 9, scope: !4043)
!4056 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8max_sizeERKS1_", scope: !2761, file: !149, line: 547, type: !2777, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2776, retainedNodes: !253)
!4057 = !DILocalVariable(name: "__a", arg: 1, scope: !4056, file: !149, line: 547, type: !2780)
!4058 = !DILocation(line: 547, column: 38, scope: !4056)
!4059 = !DILocation(line: 550, column: 9, scope: !4056)
!4060 = !DILocation(line: 550, column: 13, scope: !4056)
!4061 = !DILocation(line: 550, column: 2, scope: !4056)
!4062 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE8max_sizeEv", scope: !4063, file: !164, line: 154, type: !4064, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4068, retainedNodes: !253)
!4063 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<ProjectedBody>", scope: !145, file: !164, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorI13ProjectedBodyEE")
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!194, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4068 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE8max_sizeEv", scope: !4063, file: !164, line: 154, type: !4064, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4069 = !DILocalVariable(name: "this", arg: 1, scope: !4062, type: !4070, flags: DIFlagArtificial | DIFlagObjectPointer)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4071 = !DILocation(line: 0, scope: !4062)
!4072 = !DILocation(line: 155, column: 16, scope: !4062)
!4073 = !DILocation(line: 155, column: 9, scope: !4062)
!4074 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv", scope: !4063, file: !164, line: 197, type: !4064, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4075, retainedNodes: !253)
!4075 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI13ProjectedBodyE11_M_max_sizeEv", scope: !4063, file: !164, line: 197, type: !4064, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!4076 = !DILocalVariable(name: "this", arg: 1, scope: !4074, type: !4070, flags: DIFlagArtificial | DIFlagObjectPointer)
!4077 = !DILocation(line: 0, scope: !4074)
!4078 = !DILocation(line: 200, column: 2, scope: !4074)
!4079 = distinct !DISubprogram(name: "__uninitialized_default_n<ProjectedBody *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIP13ProjectedBodymET_S2_T0_", scope: !2, file: !3197, line: 630, type: !4080, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4082, retainedNodes: !253)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!665, !665, !38}
!4082 = !{!3895, !3202}
!4083 = !DILocalVariable(name: "__first", arg: 1, scope: !4079, file: !3197, line: 630, type: !665)
!4084 = !DILocation(line: 630, column: 48, scope: !4079)
!4085 = !DILocalVariable(name: "__n", arg: 2, scope: !4079, file: !3197, line: 630, type: !38)
!4086 = !DILocation(line: 630, column: 63, scope: !4079)
!4087 = !DILocalVariable(name: "__can_fill", scope: !4079, file: !3197, line: 635, type: !358)
!4088 = !DILocation(line: 635, column: 22, scope: !4079)
!4089 = !DILocation(line: 640, column: 21, scope: !4079)
!4090 = !DILocation(line: 640, column: 30, scope: !4079)
!4091 = !DILocation(line: 638, column: 14, scope: !4079)
!4092 = !DILocation(line: 638, column: 7, scope: !4079)
!4093 = distinct !DISubprogram(name: "__uninit_default_n<ProjectedBody *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ProjectedBodymEET_S4_T0_", scope: !3363, file: !3197, line: 573, type: !4080, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4082, declaration: !4094, retainedNodes: !253)
!4094 = !DISubprogram(name: "__uninit_default_n<ProjectedBody *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ProjectedBodymEET_S4_T0_", scope: !3363, file: !3197, line: 573, type: !4080, scopeLine: 573, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4082)
!4095 = !DILocalVariable(name: "__first", arg: 1, scope: !4093, file: !3197, line: 573, type: !665)
!4096 = !DILocation(line: 573, column: 45, scope: !4093)
!4097 = !DILocalVariable(name: "__n", arg: 2, scope: !4093, file: !3197, line: 573, type: !38)
!4098 = !DILocation(line: 573, column: 60, scope: !4093)
!4099 = !DILocalVariable(name: "__cur", scope: !4093, file: !3197, line: 575, type: !665)
!4100 = !DILocation(line: 575, column: 21, scope: !4093)
!4101 = !DILocation(line: 575, column: 29, scope: !4093)
!4102 = !DILocation(line: 578, column: 8, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4093, file: !3197, line: 577, column: 6)
!4104 = !DILocation(line: 578, column: 15, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !3197, line: 578, column: 8)
!4106 = distinct !DILexicalBlock(scope: !4103, file: !3197, line: 578, column: 8)
!4107 = !DILocation(line: 578, column: 19, scope: !4105)
!4108 = !DILocation(line: 578, column: 8, scope: !4106)
!4109 = !DILocation(line: 579, column: 37, scope: !4105)
!4110 = !DILocation(line: 579, column: 3, scope: !4105)
!4111 = !DILocation(line: 578, column: 24, scope: !4105)
!4112 = !DILocation(line: 578, column: 38, scope: !4105)
!4113 = !DILocation(line: 578, column: 8, scope: !4105)
!4114 = distinct !{!4114, !4108, !4115, !2152}
!4115 = !DILocation(line: 579, column: 43, scope: !4106)
!4116 = !DILocation(line: 587, column: 2, scope: !4105)
!4117 = !DILocation(line: 581, column: 6, scope: !4103)
!4118 = !DILocation(line: 584, column: 22, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4093, file: !3197, line: 583, column: 6)
!4120 = !DILocation(line: 584, column: 31, scope: !4119)
!4121 = !DILocation(line: 584, column: 8, scope: !4119)
!4122 = !DILocation(line: 585, column: 8, scope: !4119)
!4123 = !DILocation(line: 580, column: 15, scope: !4103)
!4124 = !DILocation(line: 580, column: 8, scope: !4103)
!4125 = !DILocation(line: 587, column: 2, scope: !4119)
!4126 = !DILocation(line: 586, column: 6, scope: !4119)
!4127 = distinct !DISubprogram(name: "_Construct<ProjectedBody>", linkageName: "_ZSt10_ConstructI13ProjectedBodyJEEvPT_DpOT0_", scope: !2, file: !3400, line: 109, type: !4128, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4130, retainedNodes: !253)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !665}
!4130 = !{!3896, !3404}
!4131 = !DILocalVariable(name: "__p", arg: 1, scope: !4127, file: !3400, line: 109, type: !665)
!4132 = !DILocation(line: 109, column: 21, scope: !4127)
!4133 = !DILocation(line: 119, column: 20, scope: !4127)
!4134 = !DILocation(line: 119, column: 25, scope: !4127)
!4135 = !DILocation(line: 120, column: 5, scope: !4127)
!4136 = distinct !DISubprogram(name: "_Destroy<ProjectedBody *>", linkageName: "_ZSt8_DestroyIP13ProjectedBodyEvT_S2_", scope: !2, file: !3400, line: 182, type: !4137, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4139, retainedNodes: !253)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !665, !665}
!4139 = !{!3895}
!4140 = !DILocalVariable(name: "__first", arg: 1, scope: !4136, file: !3400, line: 182, type: !665)
!4141 = !DILocation(line: 182, column: 31, scope: !4136)
!4142 = !DILocalVariable(name: "__last", arg: 2, scope: !4136, file: !3400, line: 182, type: !665)
!4143 = !DILocation(line: 182, column: 57, scope: !4136)
!4144 = !DILocation(line: 196, column: 12, scope: !4136)
!4145 = !DILocation(line: 196, column: 21, scope: !4136)
!4146 = !DILocation(line: 195, column: 7, scope: !4136)
!4147 = !DILocation(line: 197, column: 5, scope: !4136)
!4148 = distinct !DISubprogram(name: "ProjectedBody", linkageName: "_ZN13ProjectedBodyC2Ev", scope: !666, file: !96, line: 48, type: !670, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !669, retainedNodes: !253)
!4149 = !DILocalVariable(name: "this", arg: 1, scope: !4148, type: !665, flags: DIFlagArtificial | DIFlagObjectPointer)
!4150 = !DILocation(line: 0, scope: !4148)
!4151 = !DILocation(line: 48, column: 2, scope: !4148)
!4152 = !DILocation(line: 48, column: 19, scope: !4148)
!4153 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2Ev", scope: !131, file: !35, line: 487, type: !397, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !396, retainedNodes: !253)
!4154 = !DILocalVariable(name: "this", arg: 1, scope: !4153, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!4155 = !DILocation(line: 0, scope: !4153)
!4156 = !DILocation(line: 487, column: 7, scope: !4153)
!4157 = !DILocation(line: 487, column: 24, scope: !4153)
!4158 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2Ev", scope: !134, file: !35, line: 288, type: !315, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !314, retainedNodes: !253)
!4159 = !DILocalVariable(name: "this", arg: 1, scope: !4158, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!4160 = !DILocation(line: 0, scope: !4158)
!4161 = !DILocation(line: 288, column: 7, scope: !4158)
!4162 = !DILocation(line: 288, column: 30, scope: !4158)
!4163 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2Ev", scope: !137, file: !35, line: 131, type: !281, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !280, retainedNodes: !253)
!4164 = !DILocalVariable(name: "this", arg: 1, scope: !4163, type: !4165, flags: DIFlagArtificial | DIFlagObjectPointer)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!4166 = !DILocation(line: 0, scope: !4163)
!4167 = !DILocation(line: 133, column: 4, scope: !4163)
!4168 = !DILocation(line: 131, column: 2, scope: !4163)
!4169 = !DILocation(line: 134, column: 4, scope: !4163)
!4170 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaI17ProjectedCylinderEC2Ev", scope: !157, file: !158, line: 156, type: !205, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !204, retainedNodes: !253)
!4171 = !DILocalVariable(name: "this", arg: 1, scope: !4170, type: !4172, flags: DIFlagArtificial | DIFlagObjectPointer)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!4173 = !DILocation(line: 0, scope: !4170)
!4174 = !DILocation(line: 156, column: 7, scope: !4170)
!4175 = !DILocation(line: 156, column: 38, scope: !4170)
!4176 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_Vector_impl_dataC2Ev", scope: !256, file: !35, line: 97, type: !264, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !263, retainedNodes: !253)
!4177 = !DILocalVariable(name: "this", arg: 1, scope: !4176, type: !4178, flags: DIFlagArtificial | DIFlagObjectPointer)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!4179 = !DILocation(line: 0, scope: !4176)
!4180 = !DILocation(line: 98, column: 4, scope: !4176)
!4181 = !DILocation(line: 98, column: 16, scope: !4176)
!4182 = !DILocation(line: 98, column: 29, scope: !4176)
!4183 = !DILocation(line: 99, column: 4, scope: !4176)
!4184 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2Ev", scope: !163, file: !164, line: 79, type: !167, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !166, retainedNodes: !253)
!4185 = !DILocalVariable(name: "this", arg: 1, scope: !4184, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!4186 = !DILocation(line: 0, scope: !4184)
!4187 = !DILocation(line: 79, column: 47, scope: !4184)
!4188 = distinct !DISubprogram(name: "__destroy<ProjectedBody *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP13ProjectedBodyEEvT_S4_", scope: !3432, file: !3400, line: 160, type: !4137, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4139, declaration: !4189, retainedNodes: !253)
!4189 = !DISubprogram(name: "__destroy<ProjectedBody *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP13ProjectedBodyEEvT_S4_", scope: !3432, file: !3400, line: 160, type: !4137, scopeLine: 160, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4139)
!4190 = !DILocalVariable(name: "__first", arg: 1, scope: !4188, file: !3400, line: 160, type: !665)
!4191 = !DILocation(line: 160, column: 29, scope: !4188)
!4192 = !DILocalVariable(name: "__last", arg: 2, scope: !4188, file: !3400, line: 160, type: !665)
!4193 = !DILocation(line: 160, column: 55, scope: !4188)
!4194 = !DILocation(line: 162, column: 4, scope: !4188)
!4195 = !DILocation(line: 162, column: 11, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !3400, line: 162, column: 4)
!4197 = distinct !DILexicalBlock(scope: !4188, file: !3400, line: 162, column: 4)
!4198 = !DILocation(line: 162, column: 22, scope: !4196)
!4199 = !DILocation(line: 162, column: 19, scope: !4196)
!4200 = !DILocation(line: 162, column: 4, scope: !4197)
!4201 = !DILocation(line: 163, column: 38, scope: !4196)
!4202 = !DILocation(line: 163, column: 6, scope: !4196)
!4203 = !DILocation(line: 162, column: 30, scope: !4196)
!4204 = !DILocation(line: 162, column: 4, scope: !4196)
!4205 = distinct !{!4205, !4200, !4206, !2152}
!4206 = !DILocation(line: 163, column: 46, scope: !4197)
!4207 = !DILocation(line: 164, column: 2, scope: !4188)
!4208 = distinct !DISubprogram(name: "_Destroy<ProjectedBody>", linkageName: "_ZSt8_DestroyI13ProjectedBodyEvPT_", scope: !2, file: !3400, line: 146, type: !4128, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !3914, retainedNodes: !253)
!4209 = !DILocalVariable(name: "__pointer", arg: 1, scope: !4208, file: !3400, line: 146, type: !665)
!4210 = !DILocation(line: 146, column: 19, scope: !4208)
!4211 = !DILocation(line: 151, column: 7, scope: !4208)
!4212 = !DILocation(line: 151, column: 19, scope: !4208)
!4213 = !DILocation(line: 153, column: 5, scope: !4208)
!4214 = distinct !DISubprogram(name: "~ProjectedBody", linkageName: "_ZN13ProjectedBodyD2Ev", scope: !666, file: !96, line: 49, type: !670, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !673, retainedNodes: !253)
!4215 = !DILocalVariable(name: "this", arg: 1, scope: !4214, type: !665, flags: DIFlagArtificial | DIFlagObjectPointer)
!4216 = !DILocation(line: 0, scope: !4214)
!4217 = !DILocation(line: 49, column: 19, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4214, file: !96, line: 49, column: 18)
!4219 = !DILocation(line: 49, column: 19, scope: !4214)
!4220 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EED2Ev", scope: !131, file: !35, line: 678, type: !397, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !441, retainedNodes: !253)
!4221 = !DILocalVariable(name: "this", arg: 1, scope: !4220, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!4222 = !DILocation(line: 0, scope: !4220)
!4223 = !DILocation(line: 680, column: 22, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4220, file: !35, line: 679, column: 7)
!4225 = !DILocation(line: 680, column: 30, scope: !4224)
!4226 = !DILocation(line: 680, column: 46, scope: !4224)
!4227 = !DILocation(line: 680, column: 54, scope: !4224)
!4228 = !DILocation(line: 681, column: 9, scope: !4224)
!4229 = !DILocation(line: 680, column: 2, scope: !4224)
!4230 = !DILocation(line: 683, column: 7, scope: !4224)
!4231 = !DILocation(line: 683, column: 7, scope: !4220)
!4232 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EED2Ev", scope: !134, file: !35, line: 333, type: !315, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !341, retainedNodes: !253)
!4233 = !DILocalVariable(name: "this", arg: 1, scope: !4232, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!4234 = !DILocation(line: 0, scope: !4232)
!4235 = !DILocation(line: 335, column: 16, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4232, file: !35, line: 334, column: 7)
!4237 = !DILocation(line: 335, column: 24, scope: !4236)
!4238 = !DILocation(line: 336, column: 9, scope: !4236)
!4239 = !DILocation(line: 336, column: 17, scope: !4236)
!4240 = !DILocation(line: 336, column: 37, scope: !4236)
!4241 = !DILocation(line: 336, column: 45, scope: !4236)
!4242 = !DILocation(line: 336, column: 35, scope: !4236)
!4243 = !DILocation(line: 335, column: 2, scope: !4236)
!4244 = !DILocation(line: 337, column: 7, scope: !4236)
!4245 = !DILocation(line: 337, column: 7, scope: !4232)
!4246 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implD2Ev", scope: !137, file: !35, line: 128, type: !281, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4247, retainedNodes: !253)
!4247 = !DISubprogram(name: "~_Vector_impl", scope: !137, type: !281, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4248 = !DILocalVariable(name: "this", arg: 1, scope: !4246, type: !4165, flags: DIFlagArtificial | DIFlagObjectPointer)
!4249 = !DILocation(line: 0, scope: !4246)
!4250 = !DILocation(line: 128, column: 14, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4246, file: !35, line: 128, column: 14)
!4252 = !DILocation(line: 128, column: 14, scope: !4246)
!4253 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderED2Ev", scope: !163, file: !164, line: 89, type: !167, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !175, retainedNodes: !253)
!4254 = !DILocalVariable(name: "this", arg: 1, scope: !4253, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!4255 = !DILocation(line: 0, scope: !4253)
!4256 = !DILocation(line: 89, column: 48, scope: !4253)
!4257 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE8allocateERS1_m", scope: !2761, file: !149, line: 463, type: !2764, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2763, retainedNodes: !253)
!4258 = !DILocalVariable(name: "__a", arg: 1, scope: !4257, file: !149, line: 463, type: !2767)
!4259 = !DILocation(line: 463, column: 32, scope: !4257)
!4260 = !DILocalVariable(name: "__n", arg: 2, scope: !4257, file: !149, line: 463, type: !218)
!4261 = !DILocation(line: 463, column: 47, scope: !4257)
!4262 = !DILocation(line: 464, column: 16, scope: !4257)
!4263 = !DILocation(line: 464, column: 29, scope: !4257)
!4264 = !DILocation(line: 464, column: 20, scope: !4257)
!4265 = !DILocation(line: 464, column: 9, scope: !4257)
!4266 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE8allocateEmPKv", scope: !4063, file: !164, line: 103, type: !4267, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4270, retainedNodes: !253)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!665, !4269, !194, !92}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4270 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE8allocateEmPKv", scope: !4063, file: !164, line: 103, type: !4267, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4271 = !DILocalVariable(name: "this", arg: 1, scope: !4266, type: !4272, flags: DIFlagArtificial | DIFlagObjectPointer)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4273 = !DILocation(line: 0, scope: !4266)
!4274 = !DILocalVariable(name: "__n", arg: 2, scope: !4266, file: !164, line: 103, type: !194)
!4275 = !DILocation(line: 103, column: 26, scope: !4266)
!4276 = !DILocalVariable(arg: 3, scope: !4266, file: !164, line: 103, type: !92)
!4277 = !DILocation(line: 103, column: 43, scope: !4266)
!4278 = !DILocation(line: 111, column: 23, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4266, file: !164, line: 111, column: 6)
!4280 = !DILocation(line: 111, column: 35, scope: !4279)
!4281 = !DILocation(line: 111, column: 27, scope: !4279)
!4282 = !DILocation(line: 111, column: 6, scope: !4266)
!4283 = !DILocation(line: 115, column: 10, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !164, line: 115, column: 10)
!4285 = distinct !DILexicalBlock(scope: !4279, file: !164, line: 112, column: 4)
!4286 = !DILocation(line: 115, column: 14, scope: !4284)
!4287 = !DILocation(line: 115, column: 10, scope: !4285)
!4288 = !DILocation(line: 116, column: 8, scope: !4284)
!4289 = !DILocation(line: 117, column: 6, scope: !4285)
!4290 = !DILocation(line: 127, column: 42, scope: !4266)
!4291 = !DILocation(line: 127, column: 46, scope: !4266)
!4292 = !DILocation(line: 127, column: 27, scope: !4266)
!4293 = !DILocation(line: 127, column: 2, scope: !4266)
!4294 = distinct !DISubprogram(name: "__uninitialized_copy_a<const ProjectedBody *, ProjectedBody *, ProjectedBody>", linkageName: "_ZSt22__uninitialized_copy_aIPK13ProjectedBodyPS0_S0_ET0_T_S5_S4_RSaIT1_E", scope: !2, file: !3197, line: 331, type: !4295, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4297, retainedNodes: !253)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!665, !686, !686, !665, !2795}
!4297 = !{!4298, !3895, !3896}
!4298 = !DITemplateTypeParameter(name: "_InputIterator", type: !686)
!4299 = !DILocalVariable(name: "__first", arg: 1, scope: !4294, file: !3197, line: 331, type: !686)
!4300 = !DILocation(line: 331, column: 43, scope: !4294)
!4301 = !DILocalVariable(name: "__last", arg: 2, scope: !4294, file: !3197, line: 331, type: !686)
!4302 = !DILocation(line: 331, column: 67, scope: !4294)
!4303 = !DILocalVariable(name: "__result", arg: 3, scope: !4294, file: !3197, line: 332, type: !665)
!4304 = !DILocation(line: 332, column: 24, scope: !4294)
!4305 = !DILocalVariable(arg: 4, scope: !4294, file: !3197, line: 332, type: !2795)
!4306 = !DILocation(line: 332, column: 49, scope: !4294)
!4307 = !DILocation(line: 333, column: 38, scope: !4294)
!4308 = !DILocation(line: 333, column: 47, scope: !4294)
!4309 = !DILocation(line: 333, column: 55, scope: !4294)
!4310 = !DILocation(line: 333, column: 14, scope: !4294)
!4311 = !DILocation(line: 333, column: 7, scope: !4294)
!4312 = distinct !DISubprogram(name: "__make_move_if_noexcept_iterator<ProjectedBody, const ProjectedBody *>", linkageName: "_ZSt32__make_move_if_noexcept_iteratorI13ProjectedBodyPKS0_ET0_PT_", scope: !2, file: !463, line: 1723, type: !4313, scopeLine: 1724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4315, retainedNodes: !253)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!686, !665}
!4315 = !{!3896, !4316}
!4316 = !DITemplateTypeParameter(name: "_ReturnType", type: !686)
!4317 = !DILocalVariable(name: "__i", arg: 1, scope: !4312, file: !463, line: 1723, type: !665)
!4318 = !DILocation(line: 1723, column: 43, scope: !4312)
!4319 = !DILocation(line: 1724, column: 26, scope: !4312)
!4320 = !DILocation(line: 1724, column: 7, scope: !4312)
!4321 = distinct !DISubprogram(name: "uninitialized_copy<const ProjectedBody *, ProjectedBody *>", linkageName: "_ZSt18uninitialized_copyIPK13ProjectedBodyPS0_ET0_T_S5_S4_", scope: !2, file: !3197, line: 126, type: !4322, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4324, retainedNodes: !253)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!665, !686, !686, !665}
!4324 = !{!4298, !3895}
!4325 = !DILocalVariable(name: "__first", arg: 1, scope: !4321, file: !3197, line: 126, type: !686)
!4326 = !DILocation(line: 126, column: 39, scope: !4321)
!4327 = !DILocalVariable(name: "__last", arg: 2, scope: !4321, file: !3197, line: 126, type: !686)
!4328 = !DILocation(line: 126, column: 63, scope: !4321)
!4329 = !DILocalVariable(name: "__result", arg: 3, scope: !4321, file: !3197, line: 127, type: !665)
!4330 = !DILocation(line: 127, column: 27, scope: !4321)
!4331 = !DILocalVariable(name: "__assignable", scope: !4321, file: !3197, line: 145, type: !358)
!4332 = !DILocation(line: 145, column: 18, scope: !4321)
!4333 = !DILocation(line: 151, column: 16, scope: !4321)
!4334 = !DILocation(line: 151, column: 25, scope: !4321)
!4335 = !DILocation(line: 151, column: 33, scope: !4321)
!4336 = !DILocation(line: 148, column: 14, scope: !4321)
!4337 = !DILocation(line: 148, column: 7, scope: !4321)
!4338 = distinct !DISubprogram(name: "__uninit_copy<const ProjectedBody *, ProjectedBody *>", linkageName: "_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ProjectedBodyPS2_EET0_T_S7_S6_", scope: !4339, file: !3197, line: 85, type: !4322, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4324, declaration: !4342, retainedNodes: !253)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_copy<false>", scope: !2, file: !3197, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !253, templateParams: !4340, identifier: "_ZTSSt20__uninitialized_copyILb0EE")
!4340 = !{!4341}
!4341 = !DITemplateValueParameter(name: "_TrivialValueTypes", type: !246, value: i8 0)
!4342 = !DISubprogram(name: "__uninit_copy<const ProjectedBody *, ProjectedBody *>", linkageName: "_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ProjectedBodyPS2_EET0_T_S7_S6_", scope: !4339, file: !3197, line: 85, type: !4322, scopeLine: 85, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4324)
!4343 = !DILocalVariable(name: "__first", arg: 1, scope: !4338, file: !3197, line: 85, type: !686)
!4344 = !DILocation(line: 85, column: 38, scope: !4338)
!4345 = !DILocalVariable(name: "__last", arg: 2, scope: !4338, file: !3197, line: 85, type: !686)
!4346 = !DILocation(line: 85, column: 62, scope: !4338)
!4347 = !DILocalVariable(name: "__result", arg: 3, scope: !4338, file: !3197, line: 86, type: !665)
!4348 = !DILocation(line: 86, column: 26, scope: !4338)
!4349 = !DILocalVariable(name: "__cur", scope: !4338, file: !3197, line: 88, type: !665)
!4350 = !DILocation(line: 88, column: 21, scope: !4338)
!4351 = !DILocation(line: 88, column: 29, scope: !4338)
!4352 = !DILocation(line: 91, column: 8, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4338, file: !3197, line: 90, column: 6)
!4354 = !DILocation(line: 91, column: 15, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3197, line: 91, column: 8)
!4356 = distinct !DILexicalBlock(scope: !4353, file: !3197, line: 91, column: 8)
!4357 = !DILocation(line: 91, column: 26, scope: !4355)
!4358 = !DILocation(line: 91, column: 23, scope: !4355)
!4359 = !DILocation(line: 91, column: 8, scope: !4356)
!4360 = !DILocation(line: 92, column: 37, scope: !4355)
!4361 = !DILocation(line: 92, column: 46, scope: !4355)
!4362 = !DILocation(line: 92, column: 3, scope: !4355)
!4363 = !DILocation(line: 91, column: 34, scope: !4355)
!4364 = !DILocation(line: 91, column: 51, scope: !4355)
!4365 = !DILocation(line: 91, column: 8, scope: !4355)
!4366 = distinct !{!4366, !4359, !4367, !2152}
!4367 = !DILocation(line: 92, column: 53, scope: !4356)
!4368 = !DILocation(line: 100, column: 2, scope: !4355)
!4369 = !DILocation(line: 94, column: 6, scope: !4353)
!4370 = !DILocation(line: 97, column: 22, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4338, file: !3197, line: 96, column: 6)
!4372 = !DILocation(line: 97, column: 32, scope: !4371)
!4373 = !DILocation(line: 97, column: 8, scope: !4371)
!4374 = !DILocation(line: 98, column: 8, scope: !4371)
!4375 = !DILocation(line: 93, column: 15, scope: !4353)
!4376 = !DILocation(line: 93, column: 8, scope: !4353)
!4377 = !DILocation(line: 100, column: 2, scope: !4371)
!4378 = !DILocation(line: 99, column: 6, scope: !4371)
!4379 = distinct !DISubprogram(name: "_Construct<ProjectedBody, const ProjectedBody &>", linkageName: "_ZSt10_ConstructI13ProjectedBodyJRKS0_EEvPT_DpOT0_", scope: !2, file: !3400, line: 109, type: !4380, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4383, retainedNodes: !253)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{null, !665, !4382}
!4382 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !687, size: 64)
!4383 = !{!3896, !4384}
!4384 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !4385)
!4385 = !{!4386}
!4386 = !DITemplateTypeParameter(type: !4382)
!4387 = !DILocalVariable(name: "__p", arg: 1, scope: !4379, file: !3400, line: 109, type: !665)
!4388 = !DILocation(line: 109, column: 21, scope: !4379)
!4389 = !DILocalVariable(name: "__args", arg: 2, scope: !4379, file: !3400, line: 109, type: !4382)
!4390 = !DILocation(line: 109, column: 37, scope: !4379)
!4391 = !DILocation(line: 119, column: 20, scope: !4379)
!4392 = !DILocation(line: 119, column: 49, scope: !4379)
!4393 = !DILocation(line: 119, column: 25, scope: !4379)
!4394 = !DILocation(line: 120, column: 5, scope: !4379)
!4395 = distinct !DISubprogram(name: "ProjectedBody", linkageName: "_ZN13ProjectedBodyC2ERKS_", scope: !666, file: !96, line: 44, type: !4396, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4398, retainedNodes: !253)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !672, !4382}
!4398 = !DISubprogram(name: "ProjectedBody", scope: !666, type: !4396, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4399 = !DILocalVariable(name: "this", arg: 1, scope: !4395, type: !665, flags: DIFlagArtificial | DIFlagObjectPointer)
!4400 = !DILocation(line: 0, scope: !4395)
!4401 = !DILocalVariable(arg: 2, scope: !4395, type: !4382)
!4402 = !DILocation(line: 44, column: 7, scope: !4395)
!4403 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorI17ProjectedCylinderSaIS0_EEC2ERKS2_", scope: !131, file: !35, line: 553, type: !416, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !415, retainedNodes: !253)
!4404 = !DILocalVariable(name: "this", arg: 1, scope: !4403, type: !2624, flags: DIFlagArtificial | DIFlagObjectPointer)
!4405 = !DILocation(line: 0, scope: !4403)
!4406 = !DILocalVariable(name: "__x", arg: 2, scope: !4403, file: !35, line: 553, type: !418)
!4407 = !DILocation(line: 553, column: 28, scope: !4403)
!4408 = !DILocation(line: 554, column: 15, scope: !4403)
!4409 = !DILocation(line: 554, column: 19, scope: !4403)
!4410 = !DILocation(line: 555, column: 35, scope: !4403)
!4411 = !DILocation(line: 555, column: 39, scope: !4403)
!4412 = !DILocation(line: 555, column: 2, scope: !4403)
!4413 = !DILocation(line: 554, column: 9, scope: !4403)
!4414 = !DILocation(line: 558, column: 32, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4403, file: !35, line: 556, column: 7)
!4416 = !DILocation(line: 558, column: 36, scope: !4415)
!4417 = !DILocation(line: 558, column: 45, scope: !4415)
!4418 = !DILocation(line: 558, column: 49, scope: !4415)
!4419 = !DILocation(line: 559, column: 17, scope: !4415)
!4420 = !DILocation(line: 559, column: 25, scope: !4415)
!4421 = !DILocation(line: 560, column: 11, scope: !4415)
!4422 = !DILocation(line: 558, column: 4, scope: !4415)
!4423 = !DILocation(line: 557, column: 8, scope: !4415)
!4424 = !DILocation(line: 557, column: 16, scope: !4415)
!4425 = !DILocation(line: 557, column: 26, scope: !4415)
!4426 = !DILocation(line: 561, column: 7, scope: !4403)
!4427 = !DILocation(line: 561, column: 7, scope: !4415)
!4428 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI17ProjectedCylinderES1_E17_S_select_on_copyERKS2_", scope: !144, file: !142, line: 97, type: !238, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !237, retainedNodes: !253)
!4429 = !DILocalVariable(name: "__a", arg: 1, scope: !4428, file: !142, line: 97, type: !211)
!4430 = !DILocation(line: 97, column: 61, scope: !4428)
!4431 = !DILocation(line: 98, column: 64, scope: !4428)
!4432 = !DILocation(line: 98, column: 14, scope: !4428)
!4433 = !DILocation(line: 98, column: 7, scope: !4428)
!4434 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EEC2EmRKS1_", scope: !134, file: !35, line: 303, type: !326, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !325, retainedNodes: !253)
!4435 = !DILocalVariable(name: "this", arg: 1, scope: !4434, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!4436 = !DILocation(line: 0, scope: !4434)
!4437 = !DILocalVariable(name: "__n", arg: 2, scope: !4434, file: !35, line: 303, type: !36)
!4438 = !DILocation(line: 303, column: 27, scope: !4434)
!4439 = !DILocalVariable(name: "__a", arg: 3, scope: !4434, file: !35, line: 303, type: !320)
!4440 = !DILocation(line: 303, column: 54, scope: !4434)
!4441 = !DILocation(line: 304, column: 9, scope: !4434)
!4442 = !DILocation(line: 304, column: 17, scope: !4434)
!4443 = !DILocation(line: 305, column: 27, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4434, file: !35, line: 305, column: 7)
!4445 = !DILocation(line: 305, column: 9, scope: !4444)
!4446 = !DILocation(line: 305, column: 33, scope: !4434)
!4447 = !DILocation(line: 305, column: 33, scope: !4444)
!4448 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaI17ProjectedCylinderED2Ev", scope: !157, file: !158, line: 174, type: !205, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !217, retainedNodes: !253)
!4449 = !DILocalVariable(name: "this", arg: 1, scope: !4448, type: !4172, flags: DIFlagArtificial | DIFlagObjectPointer)
!4450 = !DILocation(line: 0, scope: !4448)
!4451 = !DILocation(line: 174, column: 39, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4448, file: !158, line: 174, column: 37)
!4453 = !DILocation(line: 174, column: 39, scope: !4448)
!4454 = distinct !DISubprogram(name: "__uninitialized_copy_a<__gnu_cxx::__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >, ProjectedCylinder *, ProjectedCylinder>", linkageName: "_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E", scope: !2, file: !3197, line: 331, type: !4455, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4457, retainedNodes: !253)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!94, !468, !468, !94, !216}
!4457 = !{!4458, !3201, !203}
!4458 = !DITemplateTypeParameter(name: "_InputIterator", type: !468)
!4459 = !DILocalVariable(name: "__first", arg: 1, scope: !4454, file: !3197, line: 331, type: !468)
!4460 = !DILocation(line: 331, column: 43, scope: !4454)
!4461 = !DILocalVariable(name: "__last", arg: 2, scope: !4454, file: !3197, line: 331, type: !468)
!4462 = !DILocation(line: 331, column: 67, scope: !4454)
!4463 = !DILocalVariable(name: "__result", arg: 3, scope: !4454, file: !3197, line: 332, type: !94)
!4464 = !DILocation(line: 332, column: 24, scope: !4454)
!4465 = !DILocalVariable(arg: 4, scope: !4454, file: !3197, line: 332, type: !216)
!4466 = !DILocation(line: 332, column: 49, scope: !4454)
!4467 = !DILocation(line: 333, column: 38, scope: !4454)
!4468 = !DILocation(line: 333, column: 47, scope: !4454)
!4469 = !DILocation(line: 333, column: 55, scope: !4454)
!4470 = !DILocation(line: 333, column: 14, scope: !4454)
!4471 = !DILocation(line: 333, column: 7, scope: !4454)
!4472 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE5beginEv", scope: !131, file: !35, line: 820, type: !465, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !464, retainedNodes: !253)
!4473 = !DILocalVariable(name: "this", arg: 1, scope: !4472, type: !3047, flags: DIFlagArtificial | DIFlagObjectPointer)
!4474 = !DILocation(line: 0, scope: !4472)
!4475 = !DILocation(line: 821, column: 37, scope: !4472)
!4476 = !DILocation(line: 821, column: 45, scope: !4472)
!4477 = !DILocation(line: 821, column: 16, scope: !4472)
!4478 = !DILocation(line: 821, column: 9, scope: !4472)
!4479 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorI17ProjectedCylinderSaIS0_EE3endEv", scope: !131, file: !35, line: 838, type: !465, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !527, retainedNodes: !253)
!4480 = !DILocalVariable(name: "this", arg: 1, scope: !4479, type: !3047, flags: DIFlagArtificial | DIFlagObjectPointer)
!4481 = !DILocation(line: 0, scope: !4479)
!4482 = !DILocation(line: 839, column: 37, scope: !4479)
!4483 = !DILocation(line: 839, column: 45, scope: !4479)
!4484 = !DILocation(line: 839, column: 16, scope: !4479)
!4485 = !DILocation(line: 839, column: 9, scope: !4479)
!4486 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI17ProjectedCylinderEE37select_on_container_copy_constructionERKS1_", scope: !148, file: !149, line: 562, type: !233, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !232, retainedNodes: !253)
!4487 = !DILocalVariable(name: "__rhs", arg: 1, scope: !4486, file: !149, line: 562, type: !230)
!4488 = !DILocation(line: 562, column: 67, scope: !4486)
!4489 = !DILocation(line: 563, column: 16, scope: !4486)
!4490 = !DILocation(line: 563, column: 9, scope: !4486)
!4491 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaI17ProjectedCylinderEC2ERKS0_", scope: !157, file: !158, line: 159, type: !209, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !208, retainedNodes: !253)
!4492 = !DILocalVariable(name: "this", arg: 1, scope: !4491, type: !4172, flags: DIFlagArtificial | DIFlagObjectPointer)
!4493 = !DILocation(line: 0, scope: !4491)
!4494 = !DILocalVariable(name: "__a", arg: 2, scope: !4491, file: !158, line: 159, type: !211)
!4495 = !DILocation(line: 159, column: 34, scope: !4491)
!4496 = !DILocation(line: 160, column: 31, scope: !4491)
!4497 = !DILocation(line: 160, column: 9, scope: !4491)
!4498 = !DILocation(line: 160, column: 38, scope: !4491)
!4499 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI17ProjectedCylinderEC2ERKS2_", scope: !163, file: !164, line: 82, type: !171, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !170, retainedNodes: !253)
!4500 = !DILocalVariable(name: "this", arg: 1, scope: !4499, type: !3492, flags: DIFlagArtificial | DIFlagObjectPointer)
!4501 = !DILocation(line: 0, scope: !4499)
!4502 = !DILocalVariable(arg: 2, scope: !4499, file: !164, line: 82, type: !173)
!4503 = !DILocation(line: 82, column: 41, scope: !4499)
!4504 = !DILocation(line: 82, column: 67, scope: !4499)
!4505 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE12_Vector_implC2ERKS1_", scope: !137, file: !35, line: 136, type: !285, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !284, retainedNodes: !253)
!4506 = !DILocalVariable(name: "this", arg: 1, scope: !4505, type: !4165, flags: DIFlagArtificial | DIFlagObjectPointer)
!4507 = !DILocation(line: 0, scope: !4505)
!4508 = !DILocalVariable(name: "__a", arg: 2, scope: !4505, file: !35, line: 136, type: !287)
!4509 = !DILocation(line: 136, column: 37, scope: !4505)
!4510 = !DILocation(line: 137, column: 19, scope: !4505)
!4511 = !DILocation(line: 137, column: 4, scope: !4505)
!4512 = !DILocation(line: 136, column: 2, scope: !4505)
!4513 = !DILocation(line: 138, column: 4, scope: !4505)
!4514 = distinct !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseI17ProjectedCylinderSaIS0_EE17_M_create_storageEm", scope: !134, file: !35, line: 359, type: !323, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !348, retainedNodes: !253)
!4515 = !DILocalVariable(name: "this", arg: 1, scope: !4514, type: !3215, flags: DIFlagArtificial | DIFlagObjectPointer)
!4516 = !DILocation(line: 0, scope: !4514)
!4517 = !DILocalVariable(name: "__n", arg: 2, scope: !4514, file: !35, line: 359, type: !36)
!4518 = !DILocation(line: 359, column: 32, scope: !4514)
!4519 = !DILocation(line: 361, column: 45, scope: !4514)
!4520 = !DILocation(line: 361, column: 33, scope: !4514)
!4521 = !DILocation(line: 361, column: 8, scope: !4514)
!4522 = !DILocation(line: 361, column: 16, scope: !4514)
!4523 = !DILocation(line: 361, column: 25, scope: !4514)
!4524 = !DILocation(line: 362, column: 34, scope: !4514)
!4525 = !DILocation(line: 362, column: 42, scope: !4514)
!4526 = !DILocation(line: 362, column: 8, scope: !4514)
!4527 = !DILocation(line: 362, column: 16, scope: !4514)
!4528 = !DILocation(line: 362, column: 26, scope: !4514)
!4529 = !DILocation(line: 363, column: 42, scope: !4514)
!4530 = !DILocation(line: 363, column: 50, scope: !4514)
!4531 = !DILocation(line: 363, column: 61, scope: !4514)
!4532 = !DILocation(line: 363, column: 59, scope: !4514)
!4533 = !DILocation(line: 363, column: 8, scope: !4514)
!4534 = !DILocation(line: 363, column: 16, scope: !4514)
!4535 = !DILocation(line: 363, column: 34, scope: !4514)
!4536 = !DILocation(line: 364, column: 7, scope: !4514)
!4537 = distinct !DISubprogram(name: "uninitialized_copy<__gnu_cxx::__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >, ProjectedCylinder *>", linkageName: "_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_", scope: !2, file: !3197, line: 126, type: !4538, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4540, retainedNodes: !253)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!94, !468, !468, !94}
!4540 = !{!4458, !3201}
!4541 = !DILocalVariable(name: "__first", arg: 1, scope: !4537, file: !3197, line: 126, type: !468)
!4542 = !DILocation(line: 126, column: 39, scope: !4537)
!4543 = !DILocalVariable(name: "__last", arg: 2, scope: !4537, file: !3197, line: 126, type: !468)
!4544 = !DILocation(line: 126, column: 63, scope: !4537)
!4545 = !DILocalVariable(name: "__result", arg: 3, scope: !4537, file: !3197, line: 127, type: !94)
!4546 = !DILocation(line: 127, column: 27, scope: !4537)
!4547 = !DILocalVariable(name: "__assignable", scope: !4537, file: !3197, line: 145, type: !358)
!4548 = !DILocation(line: 145, column: 18, scope: !4537)
!4549 = !DILocation(line: 151, column: 16, scope: !4537)
!4550 = !DILocation(line: 151, column: 25, scope: !4537)
!4551 = !DILocation(line: 151, column: 33, scope: !4537)
!4552 = !DILocation(line: 148, column: 14, scope: !4537)
!4553 = !DILocation(line: 148, column: 7, scope: !4537)
!4554 = distinct !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >, ProjectedCylinder *>", linkageName: "_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_", scope: !4339, file: !3197, line: 85, type: !4538, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4540, declaration: !4555, retainedNodes: !253)
!4555 = !DISubprogram(name: "__uninit_copy<__gnu_cxx::__normal_iterator<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >, ProjectedCylinder *>", linkageName: "_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_", scope: !4339, file: !3197, line: 85, type: !4538, scopeLine: 85, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4540)
!4556 = !DILocalVariable(name: "__first", arg: 1, scope: !4554, file: !3197, line: 85, type: !468)
!4557 = !DILocation(line: 85, column: 38, scope: !4554)
!4558 = !DILocalVariable(name: "__last", arg: 2, scope: !4554, file: !3197, line: 85, type: !468)
!4559 = !DILocation(line: 85, column: 62, scope: !4554)
!4560 = !DILocalVariable(name: "__result", arg: 3, scope: !4554, file: !3197, line: 86, type: !94)
!4561 = !DILocation(line: 86, column: 26, scope: !4554)
!4562 = !DILocalVariable(name: "__cur", scope: !4554, file: !3197, line: 88, type: !94)
!4563 = !DILocation(line: 88, column: 21, scope: !4554)
!4564 = !DILocation(line: 88, column: 29, scope: !4554)
!4565 = !DILocation(line: 91, column: 8, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4554, file: !3197, line: 90, column: 6)
!4567 = !DILocation(line: 91, column: 23, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !3197, line: 91, column: 8)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !3197, line: 91, column: 8)
!4570 = !DILocation(line: 91, column: 8, scope: !4569)
!4571 = !DILocation(line: 92, column: 37, scope: !4568)
!4572 = !DILocation(line: 92, column: 45, scope: !4568)
!4573 = !DILocation(line: 92, column: 3, scope: !4568)
!4574 = !DILocation(line: 91, column: 34, scope: !4568)
!4575 = !DILocation(line: 91, column: 51, scope: !4568)
!4576 = !DILocation(line: 91, column: 8, scope: !4568)
!4577 = distinct !{!4577, !4570, !4578, !2152}
!4578 = !DILocation(line: 92, column: 53, scope: !4569)
!4579 = !DILocation(line: 100, column: 2, scope: !4568)
!4580 = !DILocation(line: 94, column: 6, scope: !4566)
!4581 = !DILocation(line: 97, column: 22, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4554, file: !3197, line: 96, column: 6)
!4583 = !DILocation(line: 97, column: 32, scope: !4582)
!4584 = !DILocation(line: 97, column: 8, scope: !4582)
!4585 = !DILocation(line: 98, column: 8, scope: !4582)
!4586 = !DILocation(line: 93, column: 15, scope: !4566)
!4587 = !DILocation(line: 93, column: 8, scope: !4566)
!4588 = !DILocation(line: 100, column: 2, scope: !4582)
!4589 = !DILocation(line: 99, column: 6, scope: !4582)
!4590 = distinct !DISubprogram(name: "operator!=<const ProjectedCylinder *, std::vector<ProjectedCylinder, std::allocator<ProjectedCylinder> > >", linkageName: "_ZN9__gnu_cxxneIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_", scope: !145, file: !463, line: 1179, type: !4591, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !523, retainedNodes: !253)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!246, !4593, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !490, size: 64)
!4594 = !DILocalVariable(name: "__lhs", arg: 1, scope: !4590, file: !463, line: 1179, type: !4593)
!4595 = !DILocation(line: 1179, column: 64, scope: !4590)
!4596 = !DILocalVariable(name: "__rhs", arg: 2, scope: !4590, file: !463, line: 1180, type: !4593)
!4597 = !DILocation(line: 1180, column: 57, scope: !4590)
!4598 = !DILocation(line: 1182, column: 14, scope: !4590)
!4599 = !DILocation(line: 1182, column: 20, scope: !4590)
!4600 = !DILocation(line: 1182, column: 30, scope: !4590)
!4601 = !DILocation(line: 1182, column: 36, scope: !4590)
!4602 = !DILocation(line: 1182, column: 27, scope: !4590)
!4603 = !DILocation(line: 1182, column: 7, scope: !4590)
!4604 = distinct !DISubprogram(name: "_Construct<ProjectedCylinder, const ProjectedCylinder &>", linkageName: "_ZSt10_ConstructI17ProjectedCylinderJRKS0_EEvPT_DpOT0_", scope: !2, file: !3400, line: 109, type: !4605, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !4607, retainedNodes: !253)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !94, !190}
!4607 = !{!203, !4608}
!4608 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !4609)
!4609 = !{!4610}
!4610 = !DITemplateTypeParameter(type: !190)
!4611 = !DILocalVariable(name: "__p", arg: 1, scope: !4604, file: !3400, line: 109, type: !94)
!4612 = !DILocation(line: 109, column: 21, scope: !4604)
!4613 = !DILocalVariable(name: "__args", arg: 2, scope: !4604, file: !3400, line: 109, type: !190)
!4614 = !DILocation(line: 109, column: 37, scope: !4604)
!4615 = !DILocation(line: 119, column: 20, scope: !4604)
!4616 = !DILocation(line: 119, column: 49, scope: !4604)
!4617 = !DILocation(line: 119, column: 25, scope: !4604)
!4618 = !DILocation(line: 120, column: 5, scope: !4604)
!4619 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEdeEv", scope: !468, file: !463, line: 1042, type: !481, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !480, retainedNodes: !253)
!4620 = !DILocalVariable(name: "this", arg: 1, scope: !4619, type: !4621, flags: DIFlagArtificial | DIFlagObjectPointer)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!4622 = !DILocation(line: 0, scope: !4619)
!4623 = !DILocation(line: 1043, column: 17, scope: !4619)
!4624 = !DILocation(line: 1043, column: 9, scope: !4619)
!4625 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEppEv", scope: !468, file: !463, line: 1052, type: !497, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !496, retainedNodes: !253)
!4626 = !DILocalVariable(name: "this", arg: 1, scope: !4625, type: !4627, flags: DIFlagArtificial | DIFlagObjectPointer)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4628 = !DILocation(line: 0, scope: !4625)
!4629 = !DILocation(line: 1054, column: 4, scope: !4625)
!4630 = !DILocation(line: 1054, column: 2, scope: !4625)
!4631 = !DILocation(line: 1055, column: 2, scope: !4625)
!4632 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEE4baseEv", scope: !468, file: !463, line: 1105, type: !521, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !520, retainedNodes: !253)
!4633 = !DILocalVariable(name: "this", arg: 1, scope: !4632, type: !4621, flags: DIFlagArtificial | DIFlagObjectPointer)
!4634 = !DILocation(line: 0, scope: !4632)
!4635 = !DILocation(line: 1106, column: 16, scope: !4632)
!4636 = !DILocation(line: 1106, column: 9, scope: !4632)
!4637 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK17ProjectedCylinderSt6vectorIS1_SaIS1_EEEC2ERKS3_", scope: !468, file: !463, line: 1027, type: !476, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !475, retainedNodes: !253)
!4638 = !DILocalVariable(name: "this", arg: 1, scope: !4637, type: !4627, flags: DIFlagArtificial | DIFlagObjectPointer)
!4639 = !DILocation(line: 0, scope: !4637)
!4640 = !DILocalVariable(name: "__i", arg: 2, scope: !4637, file: !463, line: 1027, type: !478)
!4641 = !DILocation(line: 1027, column: 42, scope: !4637)
!4642 = !DILocation(line: 1028, column: 9, scope: !4637)
!4643 = !DILocation(line: 1028, column: 20, scope: !4637)
!4644 = !DILocation(line: 1028, column: 27, scope: !4637)
!4645 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI13ProjectedBodyEE10deallocateERS1_PS0_m", scope: !2761, file: !149, line: 495, type: !2774, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !2773, retainedNodes: !253)
!4646 = !DILocalVariable(name: "__a", arg: 1, scope: !4645, file: !149, line: 495, type: !2767)
!4647 = !DILocation(line: 495, column: 34, scope: !4645)
!4648 = !DILocalVariable(name: "__p", arg: 2, scope: !4645, file: !149, line: 495, type: !2766)
!4649 = !DILocation(line: 495, column: 47, scope: !4645)
!4650 = !DILocalVariable(name: "__n", arg: 3, scope: !4645, file: !149, line: 495, type: !218)
!4651 = !DILocation(line: 495, column: 62, scope: !4645)
!4652 = !DILocation(line: 496, column: 9, scope: !4645)
!4653 = !DILocation(line: 496, column: 24, scope: !4645)
!4654 = !DILocation(line: 496, column: 29, scope: !4645)
!4655 = !DILocation(line: 496, column: 13, scope: !4645)
!4656 = !DILocation(line: 496, column: 35, scope: !4645)
!4657 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE10deallocateEPS1_m", scope: !4063, file: !164, line: 132, type: !4658, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, declaration: !4660, retainedNodes: !253)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4269, !665, !194}
!4660 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI13ProjectedBodyE10deallocateEPS1_m", scope: !4063, file: !164, line: 132, type: !4658, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4661 = !DILocalVariable(name: "this", arg: 1, scope: !4657, type: !4272, flags: DIFlagArtificial | DIFlagObjectPointer)
!4662 = !DILocation(line: 0, scope: !4657)
!4663 = !DILocalVariable(name: "__p", arg: 2, scope: !4657, file: !164, line: 132, type: !665)
!4664 = !DILocation(line: 132, column: 23, scope: !4657)
!4665 = !DILocalVariable(name: "__t", arg: 3, scope: !4657, file: !164, line: 132, type: !194)
!4666 = !DILocation(line: 132, column: 38, scope: !4657)
!4667 = !DILocation(line: 145, column: 20, scope: !4657)
!4668 = !DILocation(line: 145, column: 2, scope: !4657)
!4669 = !DILocation(line: 150, column: 7, scope: !4657)
!4670 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_ImageProjection.cpp", scope: !1218, file: !1218, type: !4671, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !253)
!4671 = !DISubroutineType(types: !253)
!4672 = !DILocation(line: 0, scope: !4670)
