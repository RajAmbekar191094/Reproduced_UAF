; ModuleID = '../TrackingBenchmark/BodyGeometry.cpp'
source_filename = "../TrackingBenchmark/BodyGeometry.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.DMatrix = type { [3 x [4 x float]] }
%class.BodyGeometry = type { %"class.std::vector", %class.BodyParameters, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.5", %"class.std::vector.5" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl" }
%"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl" = type { %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.BodyParameters = type { [10 x [4 x float]], [18 x float] }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.KTCylinder = type { float, float, float, %class.DMatrix }
%class.BodyPose = type { %class.PoseParams, %"class.std::vector.5" }
%class.PoseParams = type { %"class.std::vector.5", %"class.std::vector.5", %"class.std::vector.5" }
%class.Vector3 = type { float, float, float }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.13 }
%union.anon.13 = type { i32 }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZN8BodyPoseclEi = comdat any

$_ZN7DMatrixIfEC2Efff7DMOrder = comdat any

$_ZN7DMatrixIfE14SetTranslationEfff = comdat any

$_ZNSt6vectorI10KTCylinderSaIS0_EEixEm = comdat any

$_ZN10KTCylinder3SetEfff = comdat any

$_Z5ScaleR7DMatrixIfEfff = comdat any

$_ZmlIfE7DMatrixIT_ERKS2_S4_ = comdat any

$_ZN7DMatrixIfEC2EPKf = comdat any

$_ZN7DMatrixIfED2Ev = comdat any

$_Z12PreTranslateR7DMatrixIfEfff = comdat any

$_Z7InverseIfE7DMatrixIT_ERKS2_ = comdat any

$_ZSt3maxIfERKT_S2_S2_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZN7Vector3IfEC2Efff = comdat any

$_ZN7Vector3IfEC2Ev = comdat any

$_ZN7Vector3IfED2Ev = comdat any

$_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_ = comdat any

$_ZNK7Vector3IfEmiERKS0_ = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm = comdat any

$_ZNSt6vectorIfSaIfEE6resizeEm = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EEixEm = comdat any

$_ZN7Vector3IfE3SetEfff = comdat any

$_ZNSt6vectorIfSaIfEEixEm = comdat any

$_ZN7DMatrixIfEclEii = comdat any

$_Z13EulerRotationIfEvR7DMatrixIT_Efff7DMOrder = comdat any

$_ZN7DMatrixIfEC2E6DMAxisf = comdat any

$_Z12AxisRotationIfEvR7DMatrixIT_E6DMAxisS1_ = comdat any

$_ZN7DMatrixIfE5ClearEv = comdat any

$_ZSt3cosf = comdat any

$_ZSt3sinf = comdat any

$_ZN7DMatrixIfEC2Ev = comdat any

$_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIP7Vector3IfEmS1_ET_S3_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorI7Vector3IfESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI7Vector3IfEEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIP7Vector3IfEmET_S3_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7Vector3IfEmEET_S5_T0_ = comdat any

$_ZSt10_ConstructI7Vector3IfEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIP7Vector3IfEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7Vector3IfEEEvT_S5_ = comdat any

$_ZSt8_DestroyI7Vector3IfEEvPT_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsISaI7Vector3IfEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE10deallocateEPS2_m = comdat any

$_ZNSt6vectorI7Vector3IfESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIP7Vector3IfEET_S3_ = comdat any

$_ZSt19__relocate_object_aI7Vector3IfES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI7Vector3IfEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaI7Vector3IfEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE9constructIS2_JS2_EEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE7destroyIS2_EEvPT_ = comdat any

$_ZSt8_DestroyIP7Vector3IfES1_EvT_S3_RSaIT0_E = comdat any

$_ZNKSt6vectorIfSaIfEE4sizeEv = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf = comdat any

$_ZNKSt6vectorIfSaIfEE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm = comdat any

$_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm = comdat any

$_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_ = comdat any

$_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPfmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIfJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPfmfET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPffEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt16allocator_traitsISaIfEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm = comdat any

$_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm = comdat any

$_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPfET_S1_ = comdat any

$_ZSt8_DestroyIPffEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPfEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL7YRot180 = internal constant [12 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], align 16, !dbg !7
@_ZL7XRot180 = internal constant [12 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], align 16, !dbg !307
@_ZL6XRot90 = internal constant [12 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16, !dbg !313
@_ZL7ZRot180 = internal constant [12 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16, !dbg !315
@_ZL6YRot90 = internal constant [12 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16, !dbg !317
@_ZL7XRot270 = internal constant [12 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16, !dbg !319
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to open Body Parameter file : \00", align 1, !dbg !300
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1, !dbg !321
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_BodyGeometry.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1577 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1578
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1580
  ret void, !dbg !1578
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN12BodyGeometry15ComputeGeometryER8BodyPoseR14BodyParameters(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(232) %2) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !1581 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %class.DMatrix, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %class.DMatrix, align 4
  %12 = alloca %class.DMatrix, align 4
  %13 = alloca %class.DMatrix, align 4
  %14 = alloca %class.DMatrix, align 4
  %15 = alloca %class.DMatrix, align 4
  %16 = alloca %class.DMatrix, align 4
  %17 = alloca %class.DMatrix, align 4
  %18 = alloca %class.DMatrix, align 4
  %19 = alloca %class.DMatrix, align 4
  %20 = alloca %class.DMatrix, align 4
  %21 = alloca %class.DMatrix, align 4
  %22 = alloca %class.DMatrix, align 4
  %23 = alloca %class.DMatrix, align 4
  %24 = alloca %class.DMatrix, align 4
  %25 = alloca %class.DMatrix, align 4
  %26 = alloca %class.DMatrix, align 4
  %27 = alloca %class.DMatrix, align 4
  %28 = alloca %class.DMatrix, align 4
  %29 = alloca %class.DMatrix, align 4
  %30 = alloca %class.DMatrix, align 4
  %31 = alloca %class.DMatrix, align 4
  %32 = alloca %class.DMatrix, align 4
  %33 = alloca %class.DMatrix, align 4
  %34 = alloca %class.DMatrix, align 4
  %35 = alloca %class.DMatrix, align 4
  %36 = alloca %class.DMatrix, align 4
  %37 = alloca %class.DMatrix, align 4
  %38 = alloca %class.DMatrix, align 4
  %39 = alloca %class.DMatrix, align 4
  %40 = alloca %class.DMatrix, align 4
  %41 = alloca %class.DMatrix, align 4
  %42 = alloca %class.DMatrix, align 4
  %43 = alloca %class.DMatrix, align 4
  %44 = alloca %class.DMatrix, align 4
  %45 = alloca %class.DMatrix, align 4
  %46 = alloca %class.DMatrix, align 4
  %47 = alloca %class.DMatrix, align 4
  %48 = alloca %class.DMatrix, align 4
  %49 = alloca %class.DMatrix, align 4
  %50 = alloca %class.DMatrix, align 4
  %51 = alloca %class.DMatrix, align 4
  %52 = alloca %class.DMatrix, align 4
  %53 = alloca %class.DMatrix, align 4
  %54 = alloca %class.DMatrix, align 4
  %55 = alloca %class.DMatrix, align 4
  %56 = alloca %class.DMatrix, align 4
  %57 = alloca %class.DMatrix, align 4
  %58 = alloca %class.DMatrix, align 4
  %59 = alloca %class.DMatrix, align 4
  %60 = alloca %class.DMatrix, align 4
  %61 = alloca %class.DMatrix, align 4
  %62 = alloca %class.DMatrix, align 4
  %63 = alloca %class.DMatrix, align 4
  %64 = alloca %class.DMatrix, align 4
  %65 = alloca %class.DMatrix, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1594
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1595, metadata !DIExpression()), !dbg !1596
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1597, metadata !DIExpression()), !dbg !1598
  %66 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1599, metadata !DIExpression()), !dbg !1601
  store i32 3, ptr %7, align 4, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1602, metadata !DIExpression()), !dbg !1603
  %67 = load ptr, ptr %5, align 8, !dbg !1604
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %67, i32 noundef 0), !dbg !1604
  %69 = load float, ptr %68, align 4, !dbg !1604
  %70 = load ptr, ptr %5, align 8, !dbg !1605
  %71 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %70, i32 noundef 1), !dbg !1605
  %72 = load float, ptr %71, align 4, !dbg !1605
  %73 = load ptr, ptr %5, align 8, !dbg !1606
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %73, i32 noundef 2), !dbg !1606
  %75 = load float, ptr %74, align 4, !dbg !1606
  call void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %8, float noundef %69, float noundef %72, float noundef %75, i32 noundef 3), !dbg !1603
  %76 = load ptr, ptr %5, align 8, !dbg !1607
  %77 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %76, i32 noundef 3)
          to label %78 unwind label %639, !dbg !1607

78:                                               ; preds = %3
  %79 = load float, ptr %77, align 4, !dbg !1607
  %80 = load ptr, ptr %5, align 8, !dbg !1608
  %81 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %80, i32 noundef 4)
          to label %82 unwind label %639, !dbg !1608

82:                                               ; preds = %78
  %83 = load float, ptr %81, align 4, !dbg !1608
  %84 = load ptr, ptr %5, align 8, !dbg !1609
  %85 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %84, i32 noundef 5)
          to label %86 unwind label %639, !dbg !1609

86:                                               ; preds = %82
  %87 = load float, ptr %85, align 4, !dbg !1609
  invoke void @_ZN7DMatrixIfE14SetTranslationEfff(ptr noundef nonnull align 4 dereferenceable(48) %8, float noundef %79, float noundef %83, float noundef %87)
          to label %88 unwind label %639, !dbg !1610

88:                                               ; preds = %86
  %89 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1611
  %90 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %89, i64 noundef 0) #3, !dbg !1611
  %91 = load ptr, ptr %6, align 8, !dbg !1612
  %92 = getelementptr inbounds %class.BodyParameters, ptr %91, i32 0, i32 0, !dbg !1613
  %93 = getelementptr inbounds [10 x [4 x float]], ptr %92, i64 0, i64 0, !dbg !1612
  %94 = getelementptr inbounds [4 x float], ptr %93, i64 0, i64 0, !dbg !1612
  %95 = load float, ptr %94, align 4, !dbg !1612
  %96 = load ptr, ptr %6, align 8, !dbg !1614
  %97 = getelementptr inbounds %class.BodyParameters, ptr %96, i32 0, i32 0, !dbg !1615
  %98 = getelementptr inbounds [10 x [4 x float]], ptr %97, i64 0, i64 0, !dbg !1614
  %99 = getelementptr inbounds [4 x float], ptr %98, i64 0, i64 1, !dbg !1614
  %100 = load float, ptr %99, align 4, !dbg !1614
  %101 = load ptr, ptr %6, align 8, !dbg !1616
  %102 = getelementptr inbounds %class.BodyParameters, ptr %101, i32 0, i32 1, !dbg !1617
  %103 = getelementptr inbounds [18 x float], ptr %102, i64 0, i64 0, !dbg !1616
  %104 = load float, ptr %103, align 4, !dbg !1616
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %90, float noundef %95, float noundef %100, float noundef %104)
          to label %105 unwind label %639, !dbg !1618

105:                                              ; preds = %88
  %106 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1619
  %107 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %106, i64 noundef 0) #3, !dbg !1619
  %108 = getelementptr inbounds %class.KTCylinder, ptr %107, i32 0, i32 3, !dbg !1620
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %108, ptr align 4 %8, i64 48, i1 false), !dbg !1621
  %109 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1622
  %110 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %109, i64 noundef 0) #3, !dbg !1622
  %111 = getelementptr inbounds %class.KTCylinder, ptr %110, i32 0, i32 3, !dbg !1623
  %112 = load ptr, ptr %6, align 8, !dbg !1624
  %113 = getelementptr inbounds %class.BodyParameters, ptr %112, i32 0, i32 0, !dbg !1625
  %114 = getelementptr inbounds [10 x [4 x float]], ptr %113, i64 0, i64 0, !dbg !1624
  %115 = getelementptr inbounds [4 x float], ptr %114, i64 0, i64 2, !dbg !1624
  %116 = load float, ptr %115, align 4, !dbg !1624
  %117 = load ptr, ptr %6, align 8, !dbg !1626
  %118 = getelementptr inbounds %class.BodyParameters, ptr %117, i32 0, i32 0, !dbg !1627
  %119 = getelementptr inbounds [10 x [4 x float]], ptr %118, i64 0, i64 0, !dbg !1626
  %120 = getelementptr inbounds [4 x float], ptr %119, i64 0, i64 3, !dbg !1626
  %121 = load float, ptr %120, align 4, !dbg !1626
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %111, float noundef %116, float noundef %121, float noundef 1.000000e+00)
          to label %122 unwind label %639, !dbg !1628

122:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1629, metadata !DIExpression()), !dbg !1630
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %12, ptr noundef @_ZL7YRot180)
          to label %123 unwind label %639, !dbg !1631

123:                                              ; preds = %122
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %11, ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %12)
          to label %124 unwind label %643, !dbg !1632

124:                                              ; preds = %123
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %12) #3, !dbg !1633
  %125 = load ptr, ptr %6, align 8, !dbg !1634
  %126 = getelementptr inbounds %class.BodyParameters, ptr %125, i32 0, i32 1, !dbg !1635
  %127 = getelementptr inbounds [18 x float], ptr %126, i64 0, i64 1, !dbg !1634
  %128 = load float, ptr %127, align 4, !dbg !1634
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %11, float noundef 0.000000e+00, float noundef %128, float noundef 0.000000e+00)
          to label %129 unwind label %647, !dbg !1636

129:                                              ; preds = %124
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1637, metadata !DIExpression()), !dbg !1638
  %130 = load ptr, ptr %5, align 8, !dbg !1639
  %131 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %130, i32 noundef 6)
          to label %132 unwind label %647, !dbg !1639

132:                                              ; preds = %129
  %133 = load float, ptr %131, align 4, !dbg !1639
  %134 = load ptr, ptr %5, align 8, !dbg !1640
  %135 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %134, i32 noundef 7)
          to label %136 unwind label %647, !dbg !1640

136:                                              ; preds = %132
  %137 = load float, ptr %135, align 4, !dbg !1640
  %138 = load ptr, ptr %5, align 8, !dbg !1641
  %139 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %138, i32 noundef 8)
          to label %140 unwind label %647, !dbg !1641

140:                                              ; preds = %136
  %141 = load float, ptr %139, align 4, !dbg !1641
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %13, float noundef %133, float noundef %137, float noundef %141, i32 noundef 3)
          to label %142 unwind label %647, !dbg !1638

142:                                              ; preds = %140
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1642, metadata !DIExpression()), !dbg !1643
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %15, ptr noundef nonnull align 4 dereferenceable(48) %13)
          to label %143 unwind label %651, !dbg !1644

143:                                              ; preds = %142
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %14, ptr noundef nonnull align 4 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(48) %15)
          to label %144 unwind label %655, !dbg !1645

144:                                              ; preds = %143
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %15) #3, !dbg !1646
  %145 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1647
  %146 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %145, i64 noundef 1) #3, !dbg !1647
  %147 = load ptr, ptr %6, align 8, !dbg !1648
  %148 = getelementptr inbounds %class.BodyParameters, ptr %147, i32 0, i32 0, !dbg !1649
  %149 = getelementptr inbounds [10 x [4 x float]], ptr %148, i64 0, i64 1, !dbg !1648
  %150 = getelementptr inbounds [4 x float], ptr %149, i64 0, i64 0, !dbg !1648
  %151 = load float, ptr %150, align 4, !dbg !1648
  %152 = load ptr, ptr %6, align 8, !dbg !1650
  %153 = getelementptr inbounds %class.BodyParameters, ptr %152, i32 0, i32 0, !dbg !1651
  %154 = getelementptr inbounds [10 x [4 x float]], ptr %153, i64 0, i64 1, !dbg !1650
  %155 = getelementptr inbounds [4 x float], ptr %154, i64 0, i64 1, !dbg !1650
  %156 = load float, ptr %155, align 4, !dbg !1650
  %157 = load ptr, ptr %6, align 8, !dbg !1652
  %158 = getelementptr inbounds %class.BodyParameters, ptr %157, i32 0, i32 1, !dbg !1653
  %159 = getelementptr inbounds [18 x float], ptr %158, i64 0, i64 2, !dbg !1652
  %160 = load float, ptr %159, align 4, !dbg !1652
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %146, float noundef %151, float noundef %156, float noundef %160)
          to label %161 unwind label %659, !dbg !1654

161:                                              ; preds = %144
  %162 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1655
  %163 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %162, i64 noundef 1) #3, !dbg !1655
  %164 = getelementptr inbounds %class.KTCylinder, ptr %163, i32 0, i32 3, !dbg !1656
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %164, ptr align 4 %14, i64 48, i1 false), !dbg !1657
  %165 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1658
  %166 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %165, i64 noundef 1) #3, !dbg !1658
  %167 = getelementptr inbounds %class.KTCylinder, ptr %166, i32 0, i32 3, !dbg !1659
  %168 = load ptr, ptr %6, align 8, !dbg !1660
  %169 = getelementptr inbounds %class.BodyParameters, ptr %168, i32 0, i32 0, !dbg !1661
  %170 = getelementptr inbounds [10 x [4 x float]], ptr %169, i64 0, i64 1, !dbg !1660
  %171 = getelementptr inbounds [4 x float], ptr %170, i64 0, i64 2, !dbg !1660
  %172 = load float, ptr %171, align 4, !dbg !1660
  %173 = load ptr, ptr %6, align 8, !dbg !1662
  %174 = getelementptr inbounds %class.BodyParameters, ptr %173, i32 0, i32 0, !dbg !1663
  %175 = getelementptr inbounds [10 x [4 x float]], ptr %174, i64 0, i64 1, !dbg !1662
  %176 = getelementptr inbounds [4 x float], ptr %175, i64 0, i64 3, !dbg !1662
  %177 = load float, ptr %176, align 4, !dbg !1662
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %167, float noundef %172, float noundef %177, float noundef 1.000000e+00)
          to label %178 unwind label %659, !dbg !1664

178:                                              ; preds = %161
  %179 = load ptr, ptr %6, align 8, !dbg !1665
  %180 = getelementptr inbounds %class.BodyParameters, ptr %179, i32 0, i32 1, !dbg !1666
  %181 = getelementptr inbounds [18 x float], ptr %180, i64 0, i64 2, !dbg !1665
  %182 = load float, ptr %181, align 4, !dbg !1665
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %182)
          to label %183 unwind label %659, !dbg !1667

183:                                              ; preds = %178
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1668, metadata !DIExpression()), !dbg !1669
  %184 = load ptr, ptr %5, align 8, !dbg !1670
  %185 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %184, i32 noundef 9)
          to label %186 unwind label %659, !dbg !1670

186:                                              ; preds = %183
  %187 = load float, ptr %185, align 4, !dbg !1670
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %16, float noundef 0.000000e+00, float noundef %187, float noundef 0.000000e+00, i32 noundef 3)
          to label %188 unwind label %659, !dbg !1669

188:                                              ; preds = %186
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1671, metadata !DIExpression()), !dbg !1672
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %18, ptr noundef nonnull align 4 dereferenceable(48) %16)
          to label %189 unwind label %663, !dbg !1673

189:                                              ; preds = %188
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %17, ptr noundef nonnull align 4 dereferenceable(48) %14, ptr noundef nonnull align 4 dereferenceable(48) %18)
          to label %190 unwind label %667, !dbg !1674

190:                                              ; preds = %189
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %18) #3, !dbg !1675
  %191 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1676
  %192 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %191, i64 noundef 2) #3, !dbg !1676
  %193 = load ptr, ptr %6, align 8, !dbg !1677
  %194 = getelementptr inbounds %class.BodyParameters, ptr %193, i32 0, i32 0, !dbg !1678
  %195 = getelementptr inbounds [10 x [4 x float]], ptr %194, i64 0, i64 2, !dbg !1677
  %196 = getelementptr inbounds [4 x float], ptr %195, i64 0, i64 0, !dbg !1677
  %197 = load float, ptr %196, align 4, !dbg !1677
  %198 = load ptr, ptr %6, align 8, !dbg !1679
  %199 = getelementptr inbounds %class.BodyParameters, ptr %198, i32 0, i32 0, !dbg !1680
  %200 = getelementptr inbounds [10 x [4 x float]], ptr %199, i64 0, i64 2, !dbg !1679
  %201 = getelementptr inbounds [4 x float], ptr %200, i64 0, i64 1, !dbg !1679
  %202 = load float, ptr %201, align 4, !dbg !1679
  %203 = load ptr, ptr %6, align 8, !dbg !1681
  %204 = getelementptr inbounds %class.BodyParameters, ptr %203, i32 0, i32 1, !dbg !1682
  %205 = getelementptr inbounds [18 x float], ptr %204, i64 0, i64 3, !dbg !1681
  %206 = load float, ptr %205, align 4, !dbg !1681
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %192, float noundef %197, float noundef %202, float noundef %206)
          to label %207 unwind label %671, !dbg !1683

207:                                              ; preds = %190
  %208 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1684
  %209 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %208, i64 noundef 2) #3, !dbg !1684
  %210 = getelementptr inbounds %class.KTCylinder, ptr %209, i32 0, i32 3, !dbg !1685
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %210, ptr align 4 %17, i64 48, i1 false), !dbg !1686
  %211 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1687
  %212 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %211, i64 noundef 2) #3, !dbg !1687
  %213 = getelementptr inbounds %class.KTCylinder, ptr %212, i32 0, i32 3, !dbg !1688
  %214 = load ptr, ptr %6, align 8, !dbg !1689
  %215 = getelementptr inbounds %class.BodyParameters, ptr %214, i32 0, i32 0, !dbg !1690
  %216 = getelementptr inbounds [10 x [4 x float]], ptr %215, i64 0, i64 2, !dbg !1689
  %217 = getelementptr inbounds [4 x float], ptr %216, i64 0, i64 2, !dbg !1689
  %218 = load float, ptr %217, align 4, !dbg !1689
  %219 = load ptr, ptr %6, align 8, !dbg !1691
  %220 = getelementptr inbounds %class.BodyParameters, ptr %219, i32 0, i32 0, !dbg !1692
  %221 = getelementptr inbounds [10 x [4 x float]], ptr %220, i64 0, i64 2, !dbg !1691
  %222 = getelementptr inbounds [4 x float], ptr %221, i64 0, i64 3, !dbg !1691
  %223 = load float, ptr %222, align 4, !dbg !1691
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %213, float noundef %218, float noundef %223, float noundef 1.000000e+00)
          to label %224 unwind label %671, !dbg !1693

224:                                              ; preds = %207
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1694, metadata !DIExpression()), !dbg !1695
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %20, ptr noundef @_ZL7YRot180)
          to label %225 unwind label %671, !dbg !1696

225:                                              ; preds = %224
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %19, ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %20)
          to label %226 unwind label %675, !dbg !1697

226:                                              ; preds = %225
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %20) #3, !dbg !1698
  %227 = load ptr, ptr %6, align 8, !dbg !1699
  %228 = getelementptr inbounds %class.BodyParameters, ptr %227, i32 0, i32 1, !dbg !1700
  %229 = getelementptr inbounds [18 x float], ptr %228, i64 0, i64 5, !dbg !1699
  %230 = load float, ptr %229, align 4, !dbg !1699
  %231 = fneg float %230, !dbg !1701
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %19, float noundef 0.000000e+00, float noundef %231, float noundef 0.000000e+00)
          to label %232 unwind label %679, !dbg !1702

232:                                              ; preds = %226
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1703, metadata !DIExpression()), !dbg !1704
  %233 = load ptr, ptr %5, align 8, !dbg !1705
  %234 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %233, i32 noundef 10)
          to label %235 unwind label %679, !dbg !1705

235:                                              ; preds = %232
  %236 = load float, ptr %234, align 4, !dbg !1705
  %237 = load ptr, ptr %5, align 8, !dbg !1706
  %238 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %237, i32 noundef 11)
          to label %239 unwind label %679, !dbg !1706

239:                                              ; preds = %235
  %240 = load float, ptr %238, align 4, !dbg !1706
  %241 = load ptr, ptr %5, align 8, !dbg !1707
  %242 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %241, i32 noundef 12)
          to label %243 unwind label %679, !dbg !1707

243:                                              ; preds = %239
  %244 = load float, ptr %242, align 4, !dbg !1707
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %21, float noundef %236, float noundef %240, float noundef %244, i32 noundef 3)
          to label %245 unwind label %679, !dbg !1704

245:                                              ; preds = %243
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1708, metadata !DIExpression()), !dbg !1709
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %23, ptr noundef nonnull align 4 dereferenceable(48) %21)
          to label %246 unwind label %683, !dbg !1710

246:                                              ; preds = %245
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %22, ptr noundef nonnull align 4 dereferenceable(48) %19, ptr noundef nonnull align 4 dereferenceable(48) %23)
          to label %247 unwind label %687, !dbg !1711

247:                                              ; preds = %246
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %23) #3, !dbg !1712
  %248 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1713
  %249 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %248, i64 noundef 3) #3, !dbg !1713
  %250 = load ptr, ptr %6, align 8, !dbg !1714
  %251 = getelementptr inbounds %class.BodyParameters, ptr %250, i32 0, i32 0, !dbg !1715
  %252 = getelementptr inbounds [10 x [4 x float]], ptr %251, i64 0, i64 3, !dbg !1714
  %253 = getelementptr inbounds [4 x float], ptr %252, i64 0, i64 0, !dbg !1714
  %254 = load float, ptr %253, align 4, !dbg !1714
  %255 = load ptr, ptr %6, align 8, !dbg !1716
  %256 = getelementptr inbounds %class.BodyParameters, ptr %255, i32 0, i32 0, !dbg !1717
  %257 = getelementptr inbounds [10 x [4 x float]], ptr %256, i64 0, i64 3, !dbg !1716
  %258 = getelementptr inbounds [4 x float], ptr %257, i64 0, i64 1, !dbg !1716
  %259 = load float, ptr %258, align 4, !dbg !1716
  %260 = load ptr, ptr %6, align 8, !dbg !1718
  %261 = getelementptr inbounds %class.BodyParameters, ptr %260, i32 0, i32 1, !dbg !1719
  %262 = getelementptr inbounds [18 x float], ptr %261, i64 0, i64 6, !dbg !1718
  %263 = load float, ptr %262, align 4, !dbg !1718
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %249, float noundef %254, float noundef %259, float noundef %263)
          to label %264 unwind label %691, !dbg !1720

264:                                              ; preds = %247
  %265 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1721
  %266 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %265, i64 noundef 3) #3, !dbg !1721
  %267 = getelementptr inbounds %class.KTCylinder, ptr %266, i32 0, i32 3, !dbg !1722
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %267, ptr align 4 %22, i64 48, i1 false), !dbg !1723
  %268 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1724
  %269 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %268, i64 noundef 3) #3, !dbg !1724
  %270 = getelementptr inbounds %class.KTCylinder, ptr %269, i32 0, i32 3, !dbg !1725
  %271 = load ptr, ptr %6, align 8, !dbg !1726
  %272 = getelementptr inbounds %class.BodyParameters, ptr %271, i32 0, i32 0, !dbg !1727
  %273 = getelementptr inbounds [10 x [4 x float]], ptr %272, i64 0, i64 3, !dbg !1726
  %274 = getelementptr inbounds [4 x float], ptr %273, i64 0, i64 2, !dbg !1726
  %275 = load float, ptr %274, align 4, !dbg !1726
  %276 = load ptr, ptr %6, align 8, !dbg !1728
  %277 = getelementptr inbounds %class.BodyParameters, ptr %276, i32 0, i32 0, !dbg !1729
  %278 = getelementptr inbounds [10 x [4 x float]], ptr %277, i64 0, i64 3, !dbg !1728
  %279 = getelementptr inbounds [4 x float], ptr %278, i64 0, i64 3, !dbg !1728
  %280 = load float, ptr %279, align 4, !dbg !1728
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %270, float noundef %275, float noundef %280, float noundef 1.000000e+00)
          to label %281 unwind label %691, !dbg !1730

281:                                              ; preds = %264
  %282 = load ptr, ptr %6, align 8, !dbg !1731
  %283 = getelementptr inbounds %class.BodyParameters, ptr %282, i32 0, i32 1, !dbg !1732
  %284 = getelementptr inbounds [18 x float], ptr %283, i64 0, i64 6, !dbg !1731
  %285 = load float, ptr %284, align 4, !dbg !1731
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %22, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %285)
          to label %286 unwind label %691, !dbg !1733

286:                                              ; preds = %281
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1734, metadata !DIExpression()), !dbg !1735
  %287 = load ptr, ptr %5, align 8, !dbg !1736
  %288 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %287, i32 noundef 13)
          to label %289 unwind label %691, !dbg !1736

289:                                              ; preds = %286
  %290 = load float, ptr %288, align 4, !dbg !1736
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %24, float noundef 0.000000e+00, float noundef %290, float noundef 0.000000e+00, i32 noundef 3)
          to label %291 unwind label %691, !dbg !1735

291:                                              ; preds = %289
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1737, metadata !DIExpression()), !dbg !1738
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %26, ptr noundef nonnull align 4 dereferenceable(48) %24)
          to label %292 unwind label %695, !dbg !1739

292:                                              ; preds = %291
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %25, ptr noundef nonnull align 4 dereferenceable(48) %22, ptr noundef nonnull align 4 dereferenceable(48) %26)
          to label %293 unwind label %699, !dbg !1740

293:                                              ; preds = %292
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %26) #3, !dbg !1741
  %294 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1742
  %295 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %294, i64 noundef 4) #3, !dbg !1742
  %296 = load ptr, ptr %6, align 8, !dbg !1743
  %297 = getelementptr inbounds %class.BodyParameters, ptr %296, i32 0, i32 0, !dbg !1744
  %298 = getelementptr inbounds [10 x [4 x float]], ptr %297, i64 0, i64 4, !dbg !1743
  %299 = getelementptr inbounds [4 x float], ptr %298, i64 0, i64 0, !dbg !1743
  %300 = load float, ptr %299, align 4, !dbg !1743
  %301 = load ptr, ptr %6, align 8, !dbg !1745
  %302 = getelementptr inbounds %class.BodyParameters, ptr %301, i32 0, i32 0, !dbg !1746
  %303 = getelementptr inbounds [10 x [4 x float]], ptr %302, i64 0, i64 4, !dbg !1745
  %304 = getelementptr inbounds [4 x float], ptr %303, i64 0, i64 1, !dbg !1745
  %305 = load float, ptr %304, align 4, !dbg !1745
  %306 = load ptr, ptr %6, align 8, !dbg !1747
  %307 = getelementptr inbounds %class.BodyParameters, ptr %306, i32 0, i32 1, !dbg !1748
  %308 = getelementptr inbounds [18 x float], ptr %307, i64 0, i64 7, !dbg !1747
  %309 = load float, ptr %308, align 4, !dbg !1747
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %295, float noundef %300, float noundef %305, float noundef %309)
          to label %310 unwind label %703, !dbg !1749

310:                                              ; preds = %293
  %311 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1750
  %312 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %311, i64 noundef 4) #3, !dbg !1750
  %313 = getelementptr inbounds %class.KTCylinder, ptr %312, i32 0, i32 3, !dbg !1751
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %313, ptr align 4 %25, i64 48, i1 false), !dbg !1752
  %314 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1753
  %315 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %314, i64 noundef 4) #3, !dbg !1753
  %316 = getelementptr inbounds %class.KTCylinder, ptr %315, i32 0, i32 3, !dbg !1754
  %317 = load ptr, ptr %6, align 8, !dbg !1755
  %318 = getelementptr inbounds %class.BodyParameters, ptr %317, i32 0, i32 0, !dbg !1756
  %319 = getelementptr inbounds [10 x [4 x float]], ptr %318, i64 0, i64 4, !dbg !1755
  %320 = getelementptr inbounds [4 x float], ptr %319, i64 0, i64 2, !dbg !1755
  %321 = load float, ptr %320, align 4, !dbg !1755
  %322 = load ptr, ptr %6, align 8, !dbg !1757
  %323 = getelementptr inbounds %class.BodyParameters, ptr %322, i32 0, i32 0, !dbg !1758
  %324 = getelementptr inbounds [10 x [4 x float]], ptr %323, i64 0, i64 4, !dbg !1757
  %325 = getelementptr inbounds [4 x float], ptr %324, i64 0, i64 3, !dbg !1757
  %326 = load float, ptr %325, align 4, !dbg !1757
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %316, float noundef %321, float noundef %326, float noundef 1.000000e+00)
          to label %327 unwind label %703, !dbg !1759

327:                                              ; preds = %310
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1760, metadata !DIExpression()), !dbg !1761
  %328 = load ptr, ptr %5, align 8, !dbg !1762
  %329 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %328, i32 noundef 26)
          to label %330 unwind label %703, !dbg !1762

330:                                              ; preds = %327
  %331 = load float, ptr %329, align 4, !dbg !1762
  %332 = load ptr, ptr %5, align 8, !dbg !1763
  %333 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %332, i32 noundef 27)
          to label %334 unwind label %703, !dbg !1763

334:                                              ; preds = %330
  %335 = load float, ptr %333, align 4, !dbg !1763
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %27, float noundef 0.000000e+00, float noundef %331, float noundef %335, i32 noundef 3)
          to label %336 unwind label %703, !dbg !1761

336:                                              ; preds = %334
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1764, metadata !DIExpression()), !dbg !1765
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %30, ptr noundef @_ZL7XRot180)
          to label %337 unwind label %707, !dbg !1766

337:                                              ; preds = %336
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %29, ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %30)
          to label %338 unwind label %711, !dbg !1767

338:                                              ; preds = %337
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %31, ptr noundef nonnull align 4 dereferenceable(48) %27)
          to label %339 unwind label %715, !dbg !1768

339:                                              ; preds = %338
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %28, ptr noundef nonnull align 4 dereferenceable(48) %29, ptr noundef nonnull align 4 dereferenceable(48) %31)
          to label %340 unwind label %719, !dbg !1769

340:                                              ; preds = %339
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %31) #3, !dbg !1770
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %29) #3, !dbg !1770
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %30) #3, !dbg !1770
  %341 = load ptr, ptr %6, align 8, !dbg !1771
  %342 = getelementptr inbounds %class.BodyParameters, ptr %341, i32 0, i32 1, !dbg !1772
  %343 = getelementptr inbounds [18 x float], ptr %342, i64 0, i64 0, !dbg !1771
  %344 = load float, ptr %343, align 4, !dbg !1771
  %345 = fneg float %344, !dbg !1773
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %28, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %345)
          to label %346 unwind label %725, !dbg !1774

346:                                              ; preds = %340
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1775, metadata !DIExpression()), !dbg !1776
  %347 = load ptr, ptr %5, align 8, !dbg !1777
  %348 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %347, i32 noundef 14)
          to label %349 unwind label %725, !dbg !1777

349:                                              ; preds = %346
  %350 = load float, ptr %348, align 4, !dbg !1777
  %351 = load ptr, ptr %5, align 8, !dbg !1778
  %352 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %351, i32 noundef 15)
          to label %353 unwind label %725, !dbg !1778

353:                                              ; preds = %349
  %354 = load float, ptr %352, align 4, !dbg !1778
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %32, float noundef %350, float noundef %354, float noundef 0.000000e+00, i32 noundef 3)
          to label %355 unwind label %725, !dbg !1776

355:                                              ; preds = %353
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1779, metadata !DIExpression()), !dbg !1780
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %35, ptr noundef @_ZL6XRot90)
          to label %356 unwind label %729, !dbg !1781

356:                                              ; preds = %355
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %34, ptr noundef nonnull align 4 dereferenceable(48) %28, ptr noundef nonnull align 4 dereferenceable(48) %35)
          to label %357 unwind label %733, !dbg !1782

357:                                              ; preds = %356
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %36, ptr noundef nonnull align 4 dereferenceable(48) %32)
          to label %358 unwind label %737, !dbg !1783

358:                                              ; preds = %357
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %33, ptr noundef nonnull align 4 dereferenceable(48) %34, ptr noundef nonnull align 4 dereferenceable(48) %36)
          to label %359 unwind label %741, !dbg !1784

359:                                              ; preds = %358
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %36) #3, !dbg !1785
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %34) #3, !dbg !1785
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %35) #3, !dbg !1785
  %360 = load ptr, ptr %6, align 8, !dbg !1786
  %361 = getelementptr inbounds %class.BodyParameters, ptr %360, i32 0, i32 1, !dbg !1787
  %362 = getelementptr inbounds [18 x float], ptr %361, i64 0, i64 9, !dbg !1786
  %363 = load float, ptr %362, align 4, !dbg !1786
  %364 = fneg float %363, !dbg !1788
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %33, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %364)
          to label %365 unwind label %747, !dbg !1789

365:                                              ; preds = %359
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1790, metadata !DIExpression()), !dbg !1791
  %366 = load ptr, ptr %5, align 8, !dbg !1792
  %367 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %366, i32 noundef 16)
          to label %368 unwind label %747, !dbg !1792

368:                                              ; preds = %365
  %369 = load float, ptr %367, align 4, !dbg !1792
  %370 = load ptr, ptr %5, align 8, !dbg !1793
  %371 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %370, i32 noundef 17)
          to label %372 unwind label %747, !dbg !1793

372:                                              ; preds = %368
  %373 = load float, ptr %371, align 4, !dbg !1793
  %374 = load ptr, ptr %5, align 8, !dbg !1794
  %375 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %374, i32 noundef 18)
          to label %376 unwind label %747, !dbg !1794

376:                                              ; preds = %372
  %377 = load float, ptr %375, align 4, !dbg !1794
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %37, float noundef %369, float noundef %373, float noundef %377, i32 noundef 3)
          to label %378 unwind label %747, !dbg !1791

378:                                              ; preds = %376
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1795, metadata !DIExpression()), !dbg !1796
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %40, ptr noundef @_ZL6XRot90)
          to label %379 unwind label %751, !dbg !1797

379:                                              ; preds = %378
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %41, ptr noundef @_ZL7ZRot180)
          to label %380 unwind label %755, !dbg !1798

380:                                              ; preds = %379
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %39, ptr noundef nonnull align 4 dereferenceable(48) %40, ptr noundef nonnull align 4 dereferenceable(48) %41)
          to label %381 unwind label %759, !dbg !1799

381:                                              ; preds = %380
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %42, ptr noundef @_ZL6YRot90)
          to label %382 unwind label %763, !dbg !1800

382:                                              ; preds = %381
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %38, ptr noundef nonnull align 4 dereferenceable(48) %39, ptr noundef nonnull align 4 dereferenceable(48) %42)
          to label %383 unwind label %767, !dbg !1801

383:                                              ; preds = %382
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %42) #3, !dbg !1797
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %39) #3, !dbg !1797
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %41) #3, !dbg !1797
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %40) #3, !dbg !1797
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1802, metadata !DIExpression()), !dbg !1803
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %44, ptr noundef nonnull align 4 dereferenceable(48) %33, ptr noundef nonnull align 4 dereferenceable(48) %38)
          to label %384 unwind label %774, !dbg !1804

384:                                              ; preds = %383
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %45, ptr noundef nonnull align 4 dereferenceable(48) %37)
          to label %385 unwind label %778, !dbg !1805

385:                                              ; preds = %384
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %43, ptr noundef nonnull align 4 dereferenceable(48) %44, ptr noundef nonnull align 4 dereferenceable(48) %45)
          to label %386 unwind label %782, !dbg !1806

386:                                              ; preds = %385
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %45) #3, !dbg !1807
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %44) #3, !dbg !1807
  %387 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1808
  %388 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %387, i64 noundef 5) #3, !dbg !1808
  %389 = load ptr, ptr %6, align 8, !dbg !1809
  %390 = getelementptr inbounds %class.BodyParameters, ptr %389, i32 0, i32 0, !dbg !1810
  %391 = getelementptr inbounds [10 x [4 x float]], ptr %390, i64 0, i64 5, !dbg !1809
  %392 = getelementptr inbounds [4 x float], ptr %391, i64 0, i64 0, !dbg !1809
  %393 = load float, ptr %392, align 4, !dbg !1809
  %394 = load ptr, ptr %6, align 8, !dbg !1811
  %395 = getelementptr inbounds %class.BodyParameters, ptr %394, i32 0, i32 0, !dbg !1812
  %396 = getelementptr inbounds [10 x [4 x float]], ptr %395, i64 0, i64 5, !dbg !1811
  %397 = getelementptr inbounds [4 x float], ptr %396, i64 0, i64 1, !dbg !1811
  %398 = load float, ptr %397, align 4, !dbg !1811
  %399 = load ptr, ptr %6, align 8, !dbg !1813
  %400 = getelementptr inbounds %class.BodyParameters, ptr %399, i32 0, i32 1, !dbg !1814
  %401 = getelementptr inbounds [18 x float], ptr %400, i64 0, i64 10, !dbg !1813
  %402 = load float, ptr %401, align 4, !dbg !1813
  %403 = fneg float %402, !dbg !1815
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %388, float noundef %393, float noundef %398, float noundef %403)
          to label %404 unwind label %787, !dbg !1816

404:                                              ; preds = %386
  %405 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1817
  %406 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %405, i64 noundef 5) #3, !dbg !1817
  %407 = getelementptr inbounds %class.KTCylinder, ptr %406, i32 0, i32 3, !dbg !1818
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %407, ptr align 4 %43, i64 48, i1 false), !dbg !1819
  %408 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1820
  %409 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %408, i64 noundef 5) #3, !dbg !1820
  %410 = getelementptr inbounds %class.KTCylinder, ptr %409, i32 0, i32 3, !dbg !1821
  %411 = load ptr, ptr %6, align 8, !dbg !1822
  %412 = getelementptr inbounds %class.BodyParameters, ptr %411, i32 0, i32 0, !dbg !1823
  %413 = getelementptr inbounds [10 x [4 x float]], ptr %412, i64 0, i64 5, !dbg !1822
  %414 = getelementptr inbounds [4 x float], ptr %413, i64 0, i64 2, !dbg !1822
  %415 = load float, ptr %414, align 4, !dbg !1822
  %416 = load ptr, ptr %6, align 8, !dbg !1824
  %417 = getelementptr inbounds %class.BodyParameters, ptr %416, i32 0, i32 0, !dbg !1825
  %418 = getelementptr inbounds [10 x [4 x float]], ptr %417, i64 0, i64 5, !dbg !1824
  %419 = getelementptr inbounds [4 x float], ptr %418, i64 0, i64 3, !dbg !1824
  %420 = load float, ptr %419, align 4, !dbg !1824
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %410, float noundef %415, float noundef %420, float noundef 1.000000e+00)
          to label %421 unwind label %787, !dbg !1826

421:                                              ; preds = %404
  %422 = load ptr, ptr %6, align 8, !dbg !1827
  %423 = getelementptr inbounds %class.BodyParameters, ptr %422, i32 0, i32 1, !dbg !1828
  %424 = getelementptr inbounds [18 x float], ptr %423, i64 0, i64 10, !dbg !1827
  %425 = load float, ptr %424, align 4, !dbg !1827
  %426 = fneg float %425, !dbg !1829
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %43, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %426)
          to label %427 unwind label %787, !dbg !1830

427:                                              ; preds = %421
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1831, metadata !DIExpression()), !dbg !1832
  %428 = load ptr, ptr %5, align 8, !dbg !1833
  %429 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %428, i32 noundef 19)
          to label %430 unwind label %787, !dbg !1833

430:                                              ; preds = %427
  %431 = load float, ptr %429, align 4, !dbg !1833
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %46, float noundef 0.000000e+00, float noundef %431, float noundef 0.000000e+00, i32 noundef 3)
          to label %432 unwind label %787, !dbg !1832

432:                                              ; preds = %430
  call void @llvm.dbg.declare(metadata ptr %47, metadata !1834, metadata !DIExpression()), !dbg !1835
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %48, ptr noundef nonnull align 4 dereferenceable(48) %46)
          to label %433 unwind label %791, !dbg !1836

433:                                              ; preds = %432
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %47, ptr noundef nonnull align 4 dereferenceable(48) %43, ptr noundef nonnull align 4 dereferenceable(48) %48)
          to label %434 unwind label %795, !dbg !1837

434:                                              ; preds = %433
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %48) #3, !dbg !1838
  %435 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1839
  %436 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %435, i64 noundef 6) #3, !dbg !1839
  %437 = load ptr, ptr %6, align 8, !dbg !1840
  %438 = getelementptr inbounds %class.BodyParameters, ptr %437, i32 0, i32 0, !dbg !1841
  %439 = getelementptr inbounds [10 x [4 x float]], ptr %438, i64 0, i64 6, !dbg !1840
  %440 = getelementptr inbounds [4 x float], ptr %439, i64 0, i64 0, !dbg !1840
  %441 = load float, ptr %440, align 4, !dbg !1840
  %442 = load ptr, ptr %6, align 8, !dbg !1842
  %443 = getelementptr inbounds %class.BodyParameters, ptr %442, i32 0, i32 0, !dbg !1843
  %444 = getelementptr inbounds [10 x [4 x float]], ptr %443, i64 0, i64 6, !dbg !1842
  %445 = getelementptr inbounds [4 x float], ptr %444, i64 0, i64 1, !dbg !1842
  %446 = load float, ptr %445, align 4, !dbg !1842
  %447 = load ptr, ptr %6, align 8, !dbg !1844
  %448 = getelementptr inbounds %class.BodyParameters, ptr %447, i32 0, i32 1, !dbg !1845
  %449 = getelementptr inbounds [18 x float], ptr %448, i64 0, i64 11, !dbg !1844
  %450 = load float, ptr %449, align 4, !dbg !1844
  %451 = fneg float %450, !dbg !1846
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %436, float noundef %441, float noundef %446, float noundef %451)
          to label %452 unwind label %799, !dbg !1847

452:                                              ; preds = %434
  %453 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1848
  %454 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %453, i64 noundef 6) #3, !dbg !1848
  %455 = getelementptr inbounds %class.KTCylinder, ptr %454, i32 0, i32 3, !dbg !1849
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %455, ptr align 4 %47, i64 48, i1 false), !dbg !1850
  %456 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1851
  %457 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %456, i64 noundef 6) #3, !dbg !1851
  %458 = getelementptr inbounds %class.KTCylinder, ptr %457, i32 0, i32 3, !dbg !1852
  %459 = load ptr, ptr %6, align 8, !dbg !1853
  %460 = getelementptr inbounds %class.BodyParameters, ptr %459, i32 0, i32 0, !dbg !1854
  %461 = getelementptr inbounds [10 x [4 x float]], ptr %460, i64 0, i64 6, !dbg !1853
  %462 = getelementptr inbounds [4 x float], ptr %461, i64 0, i64 2, !dbg !1853
  %463 = load float, ptr %462, align 4, !dbg !1853
  %464 = load ptr, ptr %6, align 8, !dbg !1855
  %465 = getelementptr inbounds %class.BodyParameters, ptr %464, i32 0, i32 0, !dbg !1856
  %466 = getelementptr inbounds [10 x [4 x float]], ptr %465, i64 0, i64 6, !dbg !1855
  %467 = getelementptr inbounds [4 x float], ptr %466, i64 0, i64 3, !dbg !1855
  %468 = load float, ptr %467, align 4, !dbg !1855
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %458, float noundef %463, float noundef %468, float noundef 1.000000e+00)
          to label %469 unwind label %799, !dbg !1857

469:                                              ; preds = %452
  call void @llvm.dbg.declare(metadata ptr %49, metadata !1858, metadata !DIExpression()), !dbg !1859
  %470 = load ptr, ptr %5, align 8, !dbg !1860
  %471 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %470, i32 noundef 20)
          to label %472 unwind label %799, !dbg !1860

472:                                              ; preds = %469
  %473 = load float, ptr %471, align 4, !dbg !1860
  %474 = load ptr, ptr %5, align 8, !dbg !1861
  %475 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %474, i32 noundef 21)
          to label %476 unwind label %799, !dbg !1861

476:                                              ; preds = %472
  %477 = load float, ptr %475, align 4, !dbg !1861
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %49, float noundef %473, float noundef %477, float noundef 0.000000e+00, i32 noundef 3)
          to label %478 unwind label %799, !dbg !1859

478:                                              ; preds = %476
  call void @llvm.dbg.declare(metadata ptr %50, metadata !1862, metadata !DIExpression()), !dbg !1863
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %52, ptr noundef @_ZL7XRot270)
          to label %479 unwind label %803, !dbg !1864

479:                                              ; preds = %478
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %51, ptr noundef nonnull align 4 dereferenceable(48) %28, ptr noundef nonnull align 4 dereferenceable(48) %52)
          to label %480 unwind label %807, !dbg !1865

480:                                              ; preds = %479
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %53, ptr noundef nonnull align 4 dereferenceable(48) %49)
          to label %481 unwind label %811, !dbg !1866

481:                                              ; preds = %480
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %50, ptr noundef nonnull align 4 dereferenceable(48) %51, ptr noundef nonnull align 4 dereferenceable(48) %53)
          to label %482 unwind label %815, !dbg !1867

482:                                              ; preds = %481
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %53) #3, !dbg !1868
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %51) #3, !dbg !1868
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %52) #3, !dbg !1868
  %483 = load ptr, ptr %6, align 8, !dbg !1869
  %484 = getelementptr inbounds %class.BodyParameters, ptr %483, i32 0, i32 1, !dbg !1870
  %485 = getelementptr inbounds [18 x float], ptr %484, i64 0, i64 13, !dbg !1869
  %486 = load float, ptr %485, align 4, !dbg !1869
  %487 = fneg float %486, !dbg !1871
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %50, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %487)
          to label %488 unwind label %821, !dbg !1872

488:                                              ; preds = %482
  call void @llvm.dbg.declare(metadata ptr %54, metadata !1873, metadata !DIExpression()), !dbg !1874
  %489 = load ptr, ptr %5, align 8, !dbg !1875
  %490 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %489, i32 noundef 22)
          to label %491 unwind label %821, !dbg !1875

491:                                              ; preds = %488
  %492 = load float, ptr %490, align 4, !dbg !1875
  %493 = load ptr, ptr %5, align 8, !dbg !1876
  %494 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %493, i32 noundef 23)
          to label %495 unwind label %821, !dbg !1876

495:                                              ; preds = %491
  %496 = load float, ptr %494, align 4, !dbg !1876
  %497 = load ptr, ptr %5, align 8, !dbg !1877
  %498 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %497, i32 noundef 24)
          to label %499 unwind label %821, !dbg !1877

499:                                              ; preds = %495
  %500 = load float, ptr %498, align 4, !dbg !1877
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %54, float noundef %492, float noundef %496, float noundef %500, i32 noundef 3)
          to label %501 unwind label %821, !dbg !1874

501:                                              ; preds = %499
  call void @llvm.dbg.declare(metadata ptr %55, metadata !1878, metadata !DIExpression()), !dbg !1879
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %56, ptr noundef nonnull align 4 dereferenceable(48) %50, ptr noundef nonnull align 4 dereferenceable(48) %38)
          to label %502 unwind label %825, !dbg !1880

502:                                              ; preds = %501
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %57, ptr noundef nonnull align 4 dereferenceable(48) %54)
          to label %503 unwind label %829, !dbg !1881

503:                                              ; preds = %502
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %55, ptr noundef nonnull align 4 dereferenceable(48) %56, ptr noundef nonnull align 4 dereferenceable(48) %57)
          to label %504 unwind label %833, !dbg !1882

504:                                              ; preds = %503
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %57) #3, !dbg !1883
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %56) #3, !dbg !1883
  %505 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1884
  %506 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %505, i64 noundef 7) #3, !dbg !1884
  %507 = load ptr, ptr %6, align 8, !dbg !1885
  %508 = getelementptr inbounds %class.BodyParameters, ptr %507, i32 0, i32 0, !dbg !1886
  %509 = getelementptr inbounds [10 x [4 x float]], ptr %508, i64 0, i64 7, !dbg !1885
  %510 = getelementptr inbounds [4 x float], ptr %509, i64 0, i64 0, !dbg !1885
  %511 = load float, ptr %510, align 4, !dbg !1885
  %512 = load ptr, ptr %6, align 8, !dbg !1887
  %513 = getelementptr inbounds %class.BodyParameters, ptr %512, i32 0, i32 0, !dbg !1888
  %514 = getelementptr inbounds [10 x [4 x float]], ptr %513, i64 0, i64 7, !dbg !1887
  %515 = getelementptr inbounds [4 x float], ptr %514, i64 0, i64 1, !dbg !1887
  %516 = load float, ptr %515, align 4, !dbg !1887
  %517 = load ptr, ptr %6, align 8, !dbg !1889
  %518 = getelementptr inbounds %class.BodyParameters, ptr %517, i32 0, i32 1, !dbg !1890
  %519 = getelementptr inbounds [18 x float], ptr %518, i64 0, i64 14, !dbg !1889
  %520 = load float, ptr %519, align 4, !dbg !1889
  %521 = fneg float %520, !dbg !1891
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %506, float noundef %511, float noundef %516, float noundef %521)
          to label %522 unwind label %838, !dbg !1892

522:                                              ; preds = %504
  %523 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1893
  %524 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %523, i64 noundef 7) #3, !dbg !1893
  %525 = getelementptr inbounds %class.KTCylinder, ptr %524, i32 0, i32 3, !dbg !1894
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %525, ptr align 4 %55, i64 48, i1 false), !dbg !1895
  %526 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1896
  %527 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %526, i64 noundef 7) #3, !dbg !1896
  %528 = getelementptr inbounds %class.KTCylinder, ptr %527, i32 0, i32 3, !dbg !1897
  %529 = load ptr, ptr %6, align 8, !dbg !1898
  %530 = getelementptr inbounds %class.BodyParameters, ptr %529, i32 0, i32 0, !dbg !1899
  %531 = getelementptr inbounds [10 x [4 x float]], ptr %530, i64 0, i64 7, !dbg !1898
  %532 = getelementptr inbounds [4 x float], ptr %531, i64 0, i64 2, !dbg !1898
  %533 = load float, ptr %532, align 4, !dbg !1898
  %534 = load ptr, ptr %6, align 8, !dbg !1900
  %535 = getelementptr inbounds %class.BodyParameters, ptr %534, i32 0, i32 0, !dbg !1901
  %536 = getelementptr inbounds [10 x [4 x float]], ptr %535, i64 0, i64 7, !dbg !1900
  %537 = getelementptr inbounds [4 x float], ptr %536, i64 0, i64 3, !dbg !1900
  %538 = load float, ptr %537, align 4, !dbg !1900
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %528, float noundef %533, float noundef %538, float noundef 1.000000e+00)
          to label %539 unwind label %838, !dbg !1902

539:                                              ; preds = %522
  %540 = load ptr, ptr %6, align 8, !dbg !1903
  %541 = getelementptr inbounds %class.BodyParameters, ptr %540, i32 0, i32 1, !dbg !1904
  %542 = getelementptr inbounds [18 x float], ptr %541, i64 0, i64 14, !dbg !1903
  %543 = load float, ptr %542, align 4, !dbg !1903
  %544 = fneg float %543, !dbg !1905
  invoke void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %55, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %544)
          to label %545 unwind label %838, !dbg !1906

545:                                              ; preds = %539
  call void @llvm.dbg.declare(metadata ptr %58, metadata !1907, metadata !DIExpression()), !dbg !1908
  %546 = load ptr, ptr %5, align 8, !dbg !1909
  %547 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %546, i32 noundef 25)
          to label %548 unwind label %838, !dbg !1909

548:                                              ; preds = %545
  %549 = load float, ptr %547, align 4, !dbg !1909
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %58, float noundef 0.000000e+00, float noundef %549, float noundef 0.000000e+00, i32 noundef 3)
          to label %550 unwind label %838, !dbg !1908

550:                                              ; preds = %548
  call void @llvm.dbg.declare(metadata ptr %59, metadata !1910, metadata !DIExpression()), !dbg !1911
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %60, ptr noundef nonnull align 4 dereferenceable(48) %58)
          to label %551 unwind label %842, !dbg !1912

551:                                              ; preds = %550
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %59, ptr noundef nonnull align 4 dereferenceable(48) %55, ptr noundef nonnull align 4 dereferenceable(48) %60)
          to label %552 unwind label %846, !dbg !1913

552:                                              ; preds = %551
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %60) #3, !dbg !1914
  %553 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1915
  %554 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %553, i64 noundef 8) #3, !dbg !1915
  %555 = load ptr, ptr %6, align 8, !dbg !1916
  %556 = getelementptr inbounds %class.BodyParameters, ptr %555, i32 0, i32 0, !dbg !1917
  %557 = getelementptr inbounds [10 x [4 x float]], ptr %556, i64 0, i64 8, !dbg !1916
  %558 = getelementptr inbounds [4 x float], ptr %557, i64 0, i64 0, !dbg !1916
  %559 = load float, ptr %558, align 4, !dbg !1916
  %560 = load ptr, ptr %6, align 8, !dbg !1918
  %561 = getelementptr inbounds %class.BodyParameters, ptr %560, i32 0, i32 0, !dbg !1919
  %562 = getelementptr inbounds [10 x [4 x float]], ptr %561, i64 0, i64 8, !dbg !1918
  %563 = getelementptr inbounds [4 x float], ptr %562, i64 0, i64 1, !dbg !1918
  %564 = load float, ptr %563, align 4, !dbg !1918
  %565 = load ptr, ptr %6, align 8, !dbg !1920
  %566 = getelementptr inbounds %class.BodyParameters, ptr %565, i32 0, i32 1, !dbg !1921
  %567 = getelementptr inbounds [18 x float], ptr %566, i64 0, i64 15, !dbg !1920
  %568 = load float, ptr %567, align 4, !dbg !1920
  %569 = fneg float %568, !dbg !1922
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %554, float noundef %559, float noundef %564, float noundef %569)
          to label %570 unwind label %850, !dbg !1923

570:                                              ; preds = %552
  %571 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1924
  %572 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %571, i64 noundef 8) #3, !dbg !1924
  %573 = getelementptr inbounds %class.KTCylinder, ptr %572, i32 0, i32 3, !dbg !1925
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %573, ptr align 4 %59, i64 48, i1 false), !dbg !1926
  %574 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1927
  %575 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %574, i64 noundef 8) #3, !dbg !1927
  %576 = getelementptr inbounds %class.KTCylinder, ptr %575, i32 0, i32 3, !dbg !1928
  %577 = load ptr, ptr %6, align 8, !dbg !1929
  %578 = getelementptr inbounds %class.BodyParameters, ptr %577, i32 0, i32 0, !dbg !1930
  %579 = getelementptr inbounds [10 x [4 x float]], ptr %578, i64 0, i64 8, !dbg !1929
  %580 = getelementptr inbounds [4 x float], ptr %579, i64 0, i64 2, !dbg !1929
  %581 = load float, ptr %580, align 4, !dbg !1929
  %582 = load ptr, ptr %6, align 8, !dbg !1931
  %583 = getelementptr inbounds %class.BodyParameters, ptr %582, i32 0, i32 0, !dbg !1932
  %584 = getelementptr inbounds [10 x [4 x float]], ptr %583, i64 0, i64 8, !dbg !1931
  %585 = getelementptr inbounds [4 x float], ptr %584, i64 0, i64 3, !dbg !1931
  %586 = load float, ptr %585, align 4, !dbg !1931
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %576, float noundef %581, float noundef %586, float noundef 1.000000e+00)
          to label %587 unwind label %850, !dbg !1933

587:                                              ; preds = %570
  call void @llvm.dbg.declare(metadata ptr %61, metadata !1934, metadata !DIExpression()), !dbg !1935
  %588 = load ptr, ptr %5, align 8, !dbg !1936
  %589 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %588, i32 noundef 28)
          to label %590 unwind label %850, !dbg !1936

590:                                              ; preds = %587
  %591 = load float, ptr %589, align 4, !dbg !1936
  %592 = load ptr, ptr %5, align 8, !dbg !1937
  %593 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %592, i32 noundef 29)
          to label %594 unwind label %850, !dbg !1937

594:                                              ; preds = %590
  %595 = load float, ptr %593, align 4, !dbg !1937
  %596 = load ptr, ptr %5, align 8, !dbg !1938
  %597 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %596, i32 noundef 30)
          to label %598 unwind label %850, !dbg !1938

598:                                              ; preds = %594
  %599 = load float, ptr %597, align 4, !dbg !1938
  invoke void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %61, float noundef %591, float noundef %595, float noundef %599, i32 noundef 3)
          to label %600 unwind label %850, !dbg !1935

600:                                              ; preds = %598
  call void @llvm.dbg.declare(metadata ptr %62, metadata !1939, metadata !DIExpression()), !dbg !1940
  invoke void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %64, ptr noundef @_ZL7XRot180)
          to label %601 unwind label %854, !dbg !1941

601:                                              ; preds = %600
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %63, ptr noundef nonnull align 4 dereferenceable(48) %28, ptr noundef nonnull align 4 dereferenceable(48) %64)
          to label %602 unwind label %858, !dbg !1942

602:                                              ; preds = %601
  invoke void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr sret(%class.DMatrix) align 4 %65, ptr noundef nonnull align 4 dereferenceable(48) %61)
          to label %603 unwind label %862, !dbg !1943

603:                                              ; preds = %602
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %62, ptr noundef nonnull align 4 dereferenceable(48) %63, ptr noundef nonnull align 4 dereferenceable(48) %65)
          to label %604 unwind label %866, !dbg !1944

604:                                              ; preds = %603
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %65) #3, !dbg !1945
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %63) #3, !dbg !1945
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %64) #3, !dbg !1945
  %605 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1946
  %606 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %605, i64 noundef 9) #3, !dbg !1946
  %607 = load ptr, ptr %6, align 8, !dbg !1947
  %608 = getelementptr inbounds %class.BodyParameters, ptr %607, i32 0, i32 0, !dbg !1948
  %609 = getelementptr inbounds [10 x [4 x float]], ptr %608, i64 0, i64 9, !dbg !1947
  %610 = getelementptr inbounds [4 x float], ptr %609, i64 0, i64 0, !dbg !1947
  %611 = load float, ptr %610, align 4, !dbg !1947
  %612 = load ptr, ptr %6, align 8, !dbg !1949
  %613 = getelementptr inbounds %class.BodyParameters, ptr %612, i32 0, i32 0, !dbg !1950
  %614 = getelementptr inbounds [10 x [4 x float]], ptr %613, i64 0, i64 9, !dbg !1949
  %615 = getelementptr inbounds [4 x float], ptr %614, i64 0, i64 1, !dbg !1949
  %616 = load float, ptr %615, align 4, !dbg !1949
  %617 = load ptr, ptr %6, align 8, !dbg !1951
  %618 = getelementptr inbounds %class.BodyParameters, ptr %617, i32 0, i32 1, !dbg !1952
  %619 = getelementptr inbounds [18 x float], ptr %618, i64 0, i64 17, !dbg !1951
  %620 = load float, ptr %619, align 4, !dbg !1951
  invoke void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %606, float noundef %611, float noundef %616, float noundef %620)
          to label %621 unwind label %872, !dbg !1953

621:                                              ; preds = %604
  %622 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1954
  %623 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %622, i64 noundef 9) #3, !dbg !1954
  %624 = getelementptr inbounds %class.KTCylinder, ptr %623, i32 0, i32 3, !dbg !1955
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %624, ptr align 4 %62, i64 48, i1 false), !dbg !1956
  %625 = getelementptr inbounds %class.BodyGeometry, ptr %66, i32 0, i32 0, !dbg !1957
  %626 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %625, i64 noundef 9) #3, !dbg !1957
  %627 = getelementptr inbounds %class.KTCylinder, ptr %626, i32 0, i32 3, !dbg !1958
  %628 = load ptr, ptr %6, align 8, !dbg !1959
  %629 = getelementptr inbounds %class.BodyParameters, ptr %628, i32 0, i32 0, !dbg !1960
  %630 = getelementptr inbounds [10 x [4 x float]], ptr %629, i64 0, i64 9, !dbg !1959
  %631 = getelementptr inbounds [4 x float], ptr %630, i64 0, i64 2, !dbg !1959
  %632 = load float, ptr %631, align 4, !dbg !1959
  %633 = load ptr, ptr %6, align 8, !dbg !1961
  %634 = getelementptr inbounds %class.BodyParameters, ptr %633, i32 0, i32 0, !dbg !1962
  %635 = getelementptr inbounds [10 x [4 x float]], ptr %634, i64 0, i64 9, !dbg !1961
  %636 = getelementptr inbounds [4 x float], ptr %635, i64 0, i64 3, !dbg !1961
  %637 = load float, ptr %636, align 4, !dbg !1961
  invoke void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %627, float noundef %632, float noundef %637, float noundef 1.000000e+00)
          to label %638 unwind label %872, !dbg !1963

638:                                              ; preds = %621
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %62) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %61) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %59) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %58) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %55) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %54) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %50) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %49) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %47) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %46) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %43) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %38) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %37) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %33) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %32) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %28) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %27) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %25) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %24) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %22) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %21) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %19) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %17) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %16) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %14) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %13) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %11) #3, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %8) #3, !dbg !1964
  ret void, !dbg !1964

639:                                              ; preds = %122, %105, %88, %86, %82, %78, %3
  %640 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %641 = extractvalue { ptr, i32 } %640, 0, !dbg !1964
  store ptr %641, ptr %9, align 8, !dbg !1964
  %642 = extractvalue { ptr, i32 } %640, 1, !dbg !1964
  store i32 %642, ptr %10, align 4, !dbg !1964
  br label %902, !dbg !1964

643:                                              ; preds = %123
  %644 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %645 = extractvalue { ptr, i32 } %644, 0, !dbg !1964
  store ptr %645, ptr %9, align 8, !dbg !1964
  %646 = extractvalue { ptr, i32 } %644, 1, !dbg !1964
  store i32 %646, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %12) #3, !dbg !1633
  br label %902, !dbg !1633

647:                                              ; preds = %140, %136, %132, %129, %124
  %648 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %649 = extractvalue { ptr, i32 } %648, 0, !dbg !1964
  store ptr %649, ptr %9, align 8, !dbg !1964
  %650 = extractvalue { ptr, i32 } %648, 1, !dbg !1964
  store i32 %650, ptr %10, align 4, !dbg !1964
  br label %901, !dbg !1964

651:                                              ; preds = %142
  %652 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %653 = extractvalue { ptr, i32 } %652, 0, !dbg !1964
  store ptr %653, ptr %9, align 8, !dbg !1964
  %654 = extractvalue { ptr, i32 } %652, 1, !dbg !1964
  store i32 %654, ptr %10, align 4, !dbg !1964
  br label %900, !dbg !1964

655:                                              ; preds = %143
  %656 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %657 = extractvalue { ptr, i32 } %656, 0, !dbg !1964
  store ptr %657, ptr %9, align 8, !dbg !1964
  %658 = extractvalue { ptr, i32 } %656, 1, !dbg !1964
  store i32 %658, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %15) #3, !dbg !1646
  br label %900, !dbg !1646

659:                                              ; preds = %186, %183, %178, %161, %144
  %660 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %661 = extractvalue { ptr, i32 } %660, 0, !dbg !1964
  store ptr %661, ptr %9, align 8, !dbg !1964
  %662 = extractvalue { ptr, i32 } %660, 1, !dbg !1964
  store i32 %662, ptr %10, align 4, !dbg !1964
  br label %899, !dbg !1964

663:                                              ; preds = %188
  %664 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %665 = extractvalue { ptr, i32 } %664, 0, !dbg !1964
  store ptr %665, ptr %9, align 8, !dbg !1964
  %666 = extractvalue { ptr, i32 } %664, 1, !dbg !1964
  store i32 %666, ptr %10, align 4, !dbg !1964
  br label %898, !dbg !1964

667:                                              ; preds = %189
  %668 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %669 = extractvalue { ptr, i32 } %668, 0, !dbg !1964
  store ptr %669, ptr %9, align 8, !dbg !1964
  %670 = extractvalue { ptr, i32 } %668, 1, !dbg !1964
  store i32 %670, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %18) #3, !dbg !1675
  br label %898, !dbg !1675

671:                                              ; preds = %224, %207, %190
  %672 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %673 = extractvalue { ptr, i32 } %672, 0, !dbg !1964
  store ptr %673, ptr %9, align 8, !dbg !1964
  %674 = extractvalue { ptr, i32 } %672, 1, !dbg !1964
  store i32 %674, ptr %10, align 4, !dbg !1964
  br label %897, !dbg !1964

675:                                              ; preds = %225
  %676 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %677 = extractvalue { ptr, i32 } %676, 0, !dbg !1964
  store ptr %677, ptr %9, align 8, !dbg !1964
  %678 = extractvalue { ptr, i32 } %676, 1, !dbg !1964
  store i32 %678, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %20) #3, !dbg !1698
  br label %897, !dbg !1698

679:                                              ; preds = %243, %239, %235, %232, %226
  %680 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %681 = extractvalue { ptr, i32 } %680, 0, !dbg !1964
  store ptr %681, ptr %9, align 8, !dbg !1964
  %682 = extractvalue { ptr, i32 } %680, 1, !dbg !1964
  store i32 %682, ptr %10, align 4, !dbg !1964
  br label %896, !dbg !1964

683:                                              ; preds = %245
  %684 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %685 = extractvalue { ptr, i32 } %684, 0, !dbg !1964
  store ptr %685, ptr %9, align 8, !dbg !1964
  %686 = extractvalue { ptr, i32 } %684, 1, !dbg !1964
  store i32 %686, ptr %10, align 4, !dbg !1964
  br label %895, !dbg !1964

687:                                              ; preds = %246
  %688 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %689 = extractvalue { ptr, i32 } %688, 0, !dbg !1964
  store ptr %689, ptr %9, align 8, !dbg !1964
  %690 = extractvalue { ptr, i32 } %688, 1, !dbg !1964
  store i32 %690, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %23) #3, !dbg !1712
  br label %895, !dbg !1712

691:                                              ; preds = %289, %286, %281, %264, %247
  %692 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %693 = extractvalue { ptr, i32 } %692, 0, !dbg !1964
  store ptr %693, ptr %9, align 8, !dbg !1964
  %694 = extractvalue { ptr, i32 } %692, 1, !dbg !1964
  store i32 %694, ptr %10, align 4, !dbg !1964
  br label %894, !dbg !1964

695:                                              ; preds = %291
  %696 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %697 = extractvalue { ptr, i32 } %696, 0, !dbg !1964
  store ptr %697, ptr %9, align 8, !dbg !1964
  %698 = extractvalue { ptr, i32 } %696, 1, !dbg !1964
  store i32 %698, ptr %10, align 4, !dbg !1964
  br label %893, !dbg !1964

699:                                              ; preds = %292
  %700 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %701 = extractvalue { ptr, i32 } %700, 0, !dbg !1964
  store ptr %701, ptr %9, align 8, !dbg !1964
  %702 = extractvalue { ptr, i32 } %700, 1, !dbg !1964
  store i32 %702, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %26) #3, !dbg !1741
  br label %893, !dbg !1741

703:                                              ; preds = %334, %330, %327, %310, %293
  %704 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %705 = extractvalue { ptr, i32 } %704, 0, !dbg !1964
  store ptr %705, ptr %9, align 8, !dbg !1964
  %706 = extractvalue { ptr, i32 } %704, 1, !dbg !1964
  store i32 %706, ptr %10, align 4, !dbg !1964
  br label %892, !dbg !1964

707:                                              ; preds = %336
  %708 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %709 = extractvalue { ptr, i32 } %708, 0, !dbg !1964
  store ptr %709, ptr %9, align 8, !dbg !1964
  %710 = extractvalue { ptr, i32 } %708, 1, !dbg !1964
  store i32 %710, ptr %10, align 4, !dbg !1964
  br label %891, !dbg !1964

711:                                              ; preds = %337
  %712 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %713 = extractvalue { ptr, i32 } %712, 0, !dbg !1964
  store ptr %713, ptr %9, align 8, !dbg !1964
  %714 = extractvalue { ptr, i32 } %712, 1, !dbg !1964
  store i32 %714, ptr %10, align 4, !dbg !1964
  br label %724, !dbg !1964

715:                                              ; preds = %338
  %716 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %717 = extractvalue { ptr, i32 } %716, 0, !dbg !1964
  store ptr %717, ptr %9, align 8, !dbg !1964
  %718 = extractvalue { ptr, i32 } %716, 1, !dbg !1964
  store i32 %718, ptr %10, align 4, !dbg !1964
  br label %723, !dbg !1964

719:                                              ; preds = %339
  %720 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %721 = extractvalue { ptr, i32 } %720, 0, !dbg !1964
  store ptr %721, ptr %9, align 8, !dbg !1964
  %722 = extractvalue { ptr, i32 } %720, 1, !dbg !1964
  store i32 %722, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %31) #3, !dbg !1770
  br label %723, !dbg !1770

723:                                              ; preds = %719, %715
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %29) #3, !dbg !1770
  br label %724, !dbg !1770

724:                                              ; preds = %723, %711
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %30) #3, !dbg !1770
  br label %891, !dbg !1770

725:                                              ; preds = %353, %349, %346, %340
  %726 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %727 = extractvalue { ptr, i32 } %726, 0, !dbg !1964
  store ptr %727, ptr %9, align 8, !dbg !1964
  %728 = extractvalue { ptr, i32 } %726, 1, !dbg !1964
  store i32 %728, ptr %10, align 4, !dbg !1964
  br label %890, !dbg !1964

729:                                              ; preds = %355
  %730 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %731 = extractvalue { ptr, i32 } %730, 0, !dbg !1964
  store ptr %731, ptr %9, align 8, !dbg !1964
  %732 = extractvalue { ptr, i32 } %730, 1, !dbg !1964
  store i32 %732, ptr %10, align 4, !dbg !1964
  br label %889, !dbg !1964

733:                                              ; preds = %356
  %734 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %735 = extractvalue { ptr, i32 } %734, 0, !dbg !1964
  store ptr %735, ptr %9, align 8, !dbg !1964
  %736 = extractvalue { ptr, i32 } %734, 1, !dbg !1964
  store i32 %736, ptr %10, align 4, !dbg !1964
  br label %746, !dbg !1964

737:                                              ; preds = %357
  %738 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %739 = extractvalue { ptr, i32 } %738, 0, !dbg !1964
  store ptr %739, ptr %9, align 8, !dbg !1964
  %740 = extractvalue { ptr, i32 } %738, 1, !dbg !1964
  store i32 %740, ptr %10, align 4, !dbg !1964
  br label %745, !dbg !1964

741:                                              ; preds = %358
  %742 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %743 = extractvalue { ptr, i32 } %742, 0, !dbg !1964
  store ptr %743, ptr %9, align 8, !dbg !1964
  %744 = extractvalue { ptr, i32 } %742, 1, !dbg !1964
  store i32 %744, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %36) #3, !dbg !1785
  br label %745, !dbg !1785

745:                                              ; preds = %741, %737
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %34) #3, !dbg !1785
  br label %746, !dbg !1785

746:                                              ; preds = %745, %733
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %35) #3, !dbg !1785
  br label %889, !dbg !1785

747:                                              ; preds = %376, %372, %368, %365, %359
  %748 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %749 = extractvalue { ptr, i32 } %748, 0, !dbg !1964
  store ptr %749, ptr %9, align 8, !dbg !1964
  %750 = extractvalue { ptr, i32 } %748, 1, !dbg !1964
  store i32 %750, ptr %10, align 4, !dbg !1964
  br label %888, !dbg !1964

751:                                              ; preds = %378
  %752 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %753 = extractvalue { ptr, i32 } %752, 0, !dbg !1964
  store ptr %753, ptr %9, align 8, !dbg !1964
  %754 = extractvalue { ptr, i32 } %752, 1, !dbg !1964
  store i32 %754, ptr %10, align 4, !dbg !1964
  br label %887, !dbg !1964

755:                                              ; preds = %379
  %756 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %757 = extractvalue { ptr, i32 } %756, 0, !dbg !1964
  store ptr %757, ptr %9, align 8, !dbg !1964
  %758 = extractvalue { ptr, i32 } %756, 1, !dbg !1964
  store i32 %758, ptr %10, align 4, !dbg !1964
  br label %773, !dbg !1964

759:                                              ; preds = %380
  %760 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %761 = extractvalue { ptr, i32 } %760, 0, !dbg !1964
  store ptr %761, ptr %9, align 8, !dbg !1964
  %762 = extractvalue { ptr, i32 } %760, 1, !dbg !1964
  store i32 %762, ptr %10, align 4, !dbg !1964
  br label %772, !dbg !1964

763:                                              ; preds = %381
  %764 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %765 = extractvalue { ptr, i32 } %764, 0, !dbg !1964
  store ptr %765, ptr %9, align 8, !dbg !1964
  %766 = extractvalue { ptr, i32 } %764, 1, !dbg !1964
  store i32 %766, ptr %10, align 4, !dbg !1964
  br label %771, !dbg !1964

767:                                              ; preds = %382
  %768 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %769 = extractvalue { ptr, i32 } %768, 0, !dbg !1964
  store ptr %769, ptr %9, align 8, !dbg !1964
  %770 = extractvalue { ptr, i32 } %768, 1, !dbg !1964
  store i32 %770, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %42) #3, !dbg !1797
  br label %771, !dbg !1797

771:                                              ; preds = %767, %763
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %39) #3, !dbg !1797
  br label %772, !dbg !1797

772:                                              ; preds = %771, %759
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %41) #3, !dbg !1797
  br label %773, !dbg !1797

773:                                              ; preds = %772, %755
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %40) #3, !dbg !1797
  br label %887, !dbg !1797

774:                                              ; preds = %383
  %775 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %776 = extractvalue { ptr, i32 } %775, 0, !dbg !1964
  store ptr %776, ptr %9, align 8, !dbg !1964
  %777 = extractvalue { ptr, i32 } %775, 1, !dbg !1964
  store i32 %777, ptr %10, align 4, !dbg !1964
  br label %886, !dbg !1964

778:                                              ; preds = %384
  %779 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %780 = extractvalue { ptr, i32 } %779, 0, !dbg !1964
  store ptr %780, ptr %9, align 8, !dbg !1964
  %781 = extractvalue { ptr, i32 } %779, 1, !dbg !1964
  store i32 %781, ptr %10, align 4, !dbg !1964
  br label %786, !dbg !1964

782:                                              ; preds = %385
  %783 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %784 = extractvalue { ptr, i32 } %783, 0, !dbg !1964
  store ptr %784, ptr %9, align 8, !dbg !1964
  %785 = extractvalue { ptr, i32 } %783, 1, !dbg !1964
  store i32 %785, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %45) #3, !dbg !1807
  br label %786, !dbg !1807

786:                                              ; preds = %782, %778
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %44) #3, !dbg !1807
  br label %886, !dbg !1807

787:                                              ; preds = %430, %427, %421, %404, %386
  %788 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %789 = extractvalue { ptr, i32 } %788, 0, !dbg !1964
  store ptr %789, ptr %9, align 8, !dbg !1964
  %790 = extractvalue { ptr, i32 } %788, 1, !dbg !1964
  store i32 %790, ptr %10, align 4, !dbg !1964
  br label %885, !dbg !1964

791:                                              ; preds = %432
  %792 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %793 = extractvalue { ptr, i32 } %792, 0, !dbg !1964
  store ptr %793, ptr %9, align 8, !dbg !1964
  %794 = extractvalue { ptr, i32 } %792, 1, !dbg !1964
  store i32 %794, ptr %10, align 4, !dbg !1964
  br label %884, !dbg !1964

795:                                              ; preds = %433
  %796 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %797 = extractvalue { ptr, i32 } %796, 0, !dbg !1964
  store ptr %797, ptr %9, align 8, !dbg !1964
  %798 = extractvalue { ptr, i32 } %796, 1, !dbg !1964
  store i32 %798, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %48) #3, !dbg !1838
  br label %884, !dbg !1838

799:                                              ; preds = %476, %472, %469, %452, %434
  %800 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %801 = extractvalue { ptr, i32 } %800, 0, !dbg !1964
  store ptr %801, ptr %9, align 8, !dbg !1964
  %802 = extractvalue { ptr, i32 } %800, 1, !dbg !1964
  store i32 %802, ptr %10, align 4, !dbg !1964
  br label %883, !dbg !1964

803:                                              ; preds = %478
  %804 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %805 = extractvalue { ptr, i32 } %804, 0, !dbg !1964
  store ptr %805, ptr %9, align 8, !dbg !1964
  %806 = extractvalue { ptr, i32 } %804, 1, !dbg !1964
  store i32 %806, ptr %10, align 4, !dbg !1964
  br label %882, !dbg !1964

807:                                              ; preds = %479
  %808 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %809 = extractvalue { ptr, i32 } %808, 0, !dbg !1964
  store ptr %809, ptr %9, align 8, !dbg !1964
  %810 = extractvalue { ptr, i32 } %808, 1, !dbg !1964
  store i32 %810, ptr %10, align 4, !dbg !1964
  br label %820, !dbg !1964

811:                                              ; preds = %480
  %812 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %813 = extractvalue { ptr, i32 } %812, 0, !dbg !1964
  store ptr %813, ptr %9, align 8, !dbg !1964
  %814 = extractvalue { ptr, i32 } %812, 1, !dbg !1964
  store i32 %814, ptr %10, align 4, !dbg !1964
  br label %819, !dbg !1964

815:                                              ; preds = %481
  %816 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %817 = extractvalue { ptr, i32 } %816, 0, !dbg !1964
  store ptr %817, ptr %9, align 8, !dbg !1964
  %818 = extractvalue { ptr, i32 } %816, 1, !dbg !1964
  store i32 %818, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %53) #3, !dbg !1868
  br label %819, !dbg !1868

819:                                              ; preds = %815, %811
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %51) #3, !dbg !1868
  br label %820, !dbg !1868

820:                                              ; preds = %819, %807
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %52) #3, !dbg !1868
  br label %882, !dbg !1868

821:                                              ; preds = %499, %495, %491, %488, %482
  %822 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %823 = extractvalue { ptr, i32 } %822, 0, !dbg !1964
  store ptr %823, ptr %9, align 8, !dbg !1964
  %824 = extractvalue { ptr, i32 } %822, 1, !dbg !1964
  store i32 %824, ptr %10, align 4, !dbg !1964
  br label %881, !dbg !1964

825:                                              ; preds = %501
  %826 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %827 = extractvalue { ptr, i32 } %826, 0, !dbg !1964
  store ptr %827, ptr %9, align 8, !dbg !1964
  %828 = extractvalue { ptr, i32 } %826, 1, !dbg !1964
  store i32 %828, ptr %10, align 4, !dbg !1964
  br label %880, !dbg !1964

829:                                              ; preds = %502
  %830 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %831 = extractvalue { ptr, i32 } %830, 0, !dbg !1964
  store ptr %831, ptr %9, align 8, !dbg !1964
  %832 = extractvalue { ptr, i32 } %830, 1, !dbg !1964
  store i32 %832, ptr %10, align 4, !dbg !1964
  br label %837, !dbg !1964

833:                                              ; preds = %503
  %834 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %835 = extractvalue { ptr, i32 } %834, 0, !dbg !1964
  store ptr %835, ptr %9, align 8, !dbg !1964
  %836 = extractvalue { ptr, i32 } %834, 1, !dbg !1964
  store i32 %836, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %57) #3, !dbg !1883
  br label %837, !dbg !1883

837:                                              ; preds = %833, %829
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %56) #3, !dbg !1883
  br label %880, !dbg !1883

838:                                              ; preds = %548, %545, %539, %522, %504
  %839 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %840 = extractvalue { ptr, i32 } %839, 0, !dbg !1964
  store ptr %840, ptr %9, align 8, !dbg !1964
  %841 = extractvalue { ptr, i32 } %839, 1, !dbg !1964
  store i32 %841, ptr %10, align 4, !dbg !1964
  br label %879, !dbg !1964

842:                                              ; preds = %550
  %843 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %844 = extractvalue { ptr, i32 } %843, 0, !dbg !1964
  store ptr %844, ptr %9, align 8, !dbg !1964
  %845 = extractvalue { ptr, i32 } %843, 1, !dbg !1964
  store i32 %845, ptr %10, align 4, !dbg !1964
  br label %878, !dbg !1964

846:                                              ; preds = %551
  %847 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %848 = extractvalue { ptr, i32 } %847, 0, !dbg !1964
  store ptr %848, ptr %9, align 8, !dbg !1964
  %849 = extractvalue { ptr, i32 } %847, 1, !dbg !1964
  store i32 %849, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %60) #3, !dbg !1914
  br label %878, !dbg !1914

850:                                              ; preds = %598, %594, %590, %587, %570, %552
  %851 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %852 = extractvalue { ptr, i32 } %851, 0, !dbg !1964
  store ptr %852, ptr %9, align 8, !dbg !1964
  %853 = extractvalue { ptr, i32 } %851, 1, !dbg !1964
  store i32 %853, ptr %10, align 4, !dbg !1964
  br label %877, !dbg !1964

854:                                              ; preds = %600
  %855 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %856 = extractvalue { ptr, i32 } %855, 0, !dbg !1964
  store ptr %856, ptr %9, align 8, !dbg !1964
  %857 = extractvalue { ptr, i32 } %855, 1, !dbg !1964
  store i32 %857, ptr %10, align 4, !dbg !1964
  br label %876, !dbg !1964

858:                                              ; preds = %601
  %859 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %860 = extractvalue { ptr, i32 } %859, 0, !dbg !1964
  store ptr %860, ptr %9, align 8, !dbg !1964
  %861 = extractvalue { ptr, i32 } %859, 1, !dbg !1964
  store i32 %861, ptr %10, align 4, !dbg !1964
  br label %871, !dbg !1964

862:                                              ; preds = %602
  %863 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %864 = extractvalue { ptr, i32 } %863, 0, !dbg !1964
  store ptr %864, ptr %9, align 8, !dbg !1964
  %865 = extractvalue { ptr, i32 } %863, 1, !dbg !1964
  store i32 %865, ptr %10, align 4, !dbg !1964
  br label %870, !dbg !1964

866:                                              ; preds = %603
  %867 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %868 = extractvalue { ptr, i32 } %867, 0, !dbg !1964
  store ptr %868, ptr %9, align 8, !dbg !1964
  %869 = extractvalue { ptr, i32 } %867, 1, !dbg !1964
  store i32 %869, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %65) #3, !dbg !1945
  br label %870, !dbg !1945

870:                                              ; preds = %866, %862
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %63) #3, !dbg !1945
  br label %871, !dbg !1945

871:                                              ; preds = %870, %858
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %64) #3, !dbg !1945
  br label %876, !dbg !1945

872:                                              ; preds = %621, %604
  %873 = landingpad { ptr, i32 }
          cleanup, !dbg !1964
  %874 = extractvalue { ptr, i32 } %873, 0, !dbg !1964
  store ptr %874, ptr %9, align 8, !dbg !1964
  %875 = extractvalue { ptr, i32 } %873, 1, !dbg !1964
  store i32 %875, ptr %10, align 4, !dbg !1964
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %62) #3, !dbg !1964
  br label %876, !dbg !1964

876:                                              ; preds = %872, %871, %854
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %61) #3, !dbg !1964
  br label %877, !dbg !1964

877:                                              ; preds = %876, %850
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %59) #3, !dbg !1964
  br label %878, !dbg !1964

878:                                              ; preds = %877, %846, %842
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %58) #3, !dbg !1964
  br label %879, !dbg !1964

879:                                              ; preds = %878, %838
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %55) #3, !dbg !1964
  br label %880, !dbg !1964

880:                                              ; preds = %879, %837, %825
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %54) #3, !dbg !1964
  br label %881, !dbg !1964

881:                                              ; preds = %880, %821
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %50) #3, !dbg !1964
  br label %882, !dbg !1964

882:                                              ; preds = %881, %820, %803
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %49) #3, !dbg !1964
  br label %883, !dbg !1964

883:                                              ; preds = %882, %799
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %47) #3, !dbg !1964
  br label %884, !dbg !1964

884:                                              ; preds = %883, %795, %791
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %46) #3, !dbg !1964
  br label %885, !dbg !1964

885:                                              ; preds = %884, %787
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %43) #3, !dbg !1964
  br label %886, !dbg !1964

886:                                              ; preds = %885, %786, %774
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %38) #3, !dbg !1964
  br label %887, !dbg !1964

887:                                              ; preds = %886, %773, %751
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %37) #3, !dbg !1964
  br label %888, !dbg !1964

888:                                              ; preds = %887, %747
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %33) #3, !dbg !1964
  br label %889, !dbg !1964

889:                                              ; preds = %888, %746, %729
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %32) #3, !dbg !1964
  br label %890, !dbg !1964

890:                                              ; preds = %889, %725
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %28) #3, !dbg !1964
  br label %891, !dbg !1964

891:                                              ; preds = %890, %724, %707
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %27) #3, !dbg !1964
  br label %892, !dbg !1964

892:                                              ; preds = %891, %703
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %25) #3, !dbg !1964
  br label %893, !dbg !1964

893:                                              ; preds = %892, %699, %695
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %24) #3, !dbg !1964
  br label %894, !dbg !1964

894:                                              ; preds = %893, %691
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %22) #3, !dbg !1964
  br label %895, !dbg !1964

895:                                              ; preds = %894, %687, %683
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %21) #3, !dbg !1964
  br label %896, !dbg !1964

896:                                              ; preds = %895, %679
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %19) #3, !dbg !1964
  br label %897, !dbg !1964

897:                                              ; preds = %896, %675, %671
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %17) #3, !dbg !1964
  br label %898, !dbg !1964

898:                                              ; preds = %897, %667, %663
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %16) #3, !dbg !1964
  br label %899, !dbg !1964

899:                                              ; preds = %898, %659
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %14) #3, !dbg !1964
  br label %900, !dbg !1964

900:                                              ; preds = %899, %655, %651
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %13) #3, !dbg !1964
  br label %901, !dbg !1964

901:                                              ; preds = %900, %647
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %11) #3, !dbg !1964
  br label %902, !dbg !1964

902:                                              ; preds = %901, %643, %639
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %8) #3, !dbg !1964
  br label %903, !dbg !1964

903:                                              ; preds = %902
  %904 = load ptr, ptr %9, align 8, !dbg !1964
  %905 = load i32, ptr %10, align 4, !dbg !1964
  %906 = insertvalue { ptr, i32 } poison, ptr %904, 0, !dbg !1964
  %907 = insertvalue { ptr, i32 } %906, i32 %905, 1, !dbg !1964
  resume { ptr, i32 } %907, !dbg !1964
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN8BodyPoseclEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) #6 comdat align 2 !dbg !1965 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1970, metadata !DIExpression()), !dbg !1972
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1973, metadata !DIExpression()), !dbg !1974
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.BodyPose, ptr %5, i32 0, i32 1, !dbg !1975
  %7 = load i32, ptr %4, align 4, !dbg !1976
  %8 = sext i32 %7 to i64, !dbg !1976
  %9 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8) #3, !dbg !1975
  ret ptr %9, !dbg !1977
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #7 comdat align 2 !dbg !1978 {
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1979, metadata !DIExpression()), !dbg !1980
  store float %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1981, metadata !DIExpression()), !dbg !1982
  store float %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1983, metadata !DIExpression()), !dbg !1984
  store float %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1985, metadata !DIExpression()), !dbg !1986
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1987, metadata !DIExpression()), !dbg !1988
  %11 = load ptr, ptr %6, align 8
  %12 = load float, ptr %7, align 4, !dbg !1989
  %13 = load float, ptr %8, align 4, !dbg !1991
  %14 = load float, ptr %9, align 4, !dbg !1992
  %15 = load i32, ptr %10, align 4, !dbg !1993
  call void @_Z13EulerRotationIfEvR7DMatrixIT_Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %11, float noundef %12, float noundef %13, float noundef %14, i32 noundef %15), !dbg !1994
  ret void, !dbg !1995
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfE14SetTranslationEfff(ptr noundef nonnull align 4 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3) #6 comdat align 2 !dbg !1996 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1997, metadata !DIExpression()), !dbg !1998
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1999, metadata !DIExpression()), !dbg !2000
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2001, metadata !DIExpression()), !dbg !2002
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2003, metadata !DIExpression()), !dbg !2004
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !2005
  %11 = getelementptr inbounds %class.DMatrix, ptr %9, i32 0, i32 0, !dbg !2006
  %12 = getelementptr inbounds [3 x [4 x float]], ptr %11, i64 0, i64 0, !dbg !2006
  %13 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3, !dbg !2006
  store float %10, ptr %13, align 4, !dbg !2007
  %14 = load float, ptr %7, align 4, !dbg !2008
  %15 = getelementptr inbounds %class.DMatrix, ptr %9, i32 0, i32 0, !dbg !2009
  %16 = getelementptr inbounds [3 x [4 x float]], ptr %15, i64 0, i64 1, !dbg !2009
  %17 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3, !dbg !2009
  store float %14, ptr %17, align 4, !dbg !2010
  %18 = load float, ptr %8, align 4, !dbg !2011
  %19 = getelementptr inbounds %class.DMatrix, ptr %9, i32 0, i32 0, !dbg !2012
  %20 = getelementptr inbounds [3 x [4 x float]], ptr %19, i64 0, i64 2, !dbg !2012
  %21 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3, !dbg !2012
  store float %18, ptr %21, align 4, !dbg !2013
  ret void, !dbg !2014
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #6 comdat align 2 !dbg !2015 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2073, metadata !DIExpression()), !dbg !2075
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2076, metadata !DIExpression()), !dbg !2077
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !2078
  %7 = getelementptr inbounds %"struct.std::_Vector_base<KTCylinder, std::allocator<KTCylinder>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !2079
  %8 = load ptr, ptr %7, align 8, !dbg !2079
  %9 = load i64, ptr %4, align 8, !dbg !2080
  %10 = getelementptr inbounds %class.KTCylinder, ptr %8, i64 %9, !dbg !2081
  ret ptr %10, !dbg !2082
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10KTCylinder3SetEfff(ptr noundef nonnull align 4 dereferenceable(60) %0, float noundef %1, float noundef %2, float noundef %3) #6 comdat align 2 !dbg !2083 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2088, metadata !DIExpression()), !dbg !2089
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2090, metadata !DIExpression()), !dbg !2091
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2092, metadata !DIExpression()), !dbg !2093
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2094, metadata !DIExpression()), !dbg !2095
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %7, align 4, !dbg !2096
  %11 = getelementptr inbounds %class.KTCylinder, ptr %9, i32 0, i32 1, !dbg !2097
  store float %10, ptr %11, align 4, !dbg !2098
  %12 = load float, ptr %6, align 4, !dbg !2099
  %13 = getelementptr inbounds %class.KTCylinder, ptr %9, i32 0, i32 0, !dbg !2100
  store float %12, ptr %13, align 4, !dbg !2101
  %14 = load float, ptr %8, align 4, !dbg !2102
  %15 = getelementptr inbounds %class.KTCylinder, ptr %9, i32 0, i32 2, !dbg !2103
  store float %14, ptr %15, align 4, !dbg !2104
  ret void, !dbg !2105
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z5ScaleR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3) #4 comdat !dbg !2106 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2110, metadata !DIExpression()), !dbg !2111
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2112, metadata !DIExpression()), !dbg !2113
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2114, metadata !DIExpression()), !dbg !2115
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2116, metadata !DIExpression()), !dbg !2117
  %9 = load float, ptr %6, align 4, !dbg !2118
  %10 = load ptr, ptr %5, align 8, !dbg !2119
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 0, i32 noundef 0), !dbg !2119
  %12 = load float, ptr %11, align 4, !dbg !2120
  %13 = fmul float %12, %9, !dbg !2120
  store float %13, ptr %11, align 4, !dbg !2120
  %14 = load float, ptr %6, align 4, !dbg !2121
  %15 = load ptr, ptr %5, align 8, !dbg !2122
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %15, i32 noundef 1, i32 noundef 0), !dbg !2122
  %17 = load float, ptr %16, align 4, !dbg !2123
  %18 = fmul float %17, %14, !dbg !2123
  store float %18, ptr %16, align 4, !dbg !2123
  %19 = load float, ptr %6, align 4, !dbg !2124
  %20 = load ptr, ptr %5, align 8, !dbg !2125
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %20, i32 noundef 2, i32 noundef 0), !dbg !2125
  %22 = load float, ptr %21, align 4, !dbg !2126
  %23 = fmul float %22, %19, !dbg !2126
  store float %23, ptr %21, align 4, !dbg !2126
  %24 = load float, ptr %7, align 4, !dbg !2127
  %25 = load ptr, ptr %5, align 8, !dbg !2128
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %25, i32 noundef 0, i32 noundef 1), !dbg !2128
  %27 = load float, ptr %26, align 4, !dbg !2129
  %28 = fmul float %27, %24, !dbg !2129
  store float %28, ptr %26, align 4, !dbg !2129
  %29 = load float, ptr %7, align 4, !dbg !2130
  %30 = load ptr, ptr %5, align 8, !dbg !2131
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %30, i32 noundef 1, i32 noundef 1), !dbg !2131
  %32 = load float, ptr %31, align 4, !dbg !2132
  %33 = fmul float %32, %29, !dbg !2132
  store float %33, ptr %31, align 4, !dbg !2132
  %34 = load float, ptr %7, align 4, !dbg !2133
  %35 = load ptr, ptr %5, align 8, !dbg !2134
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %35, i32 noundef 2, i32 noundef 1), !dbg !2134
  %37 = load float, ptr %36, align 4, !dbg !2135
  %38 = fmul float %37, %34, !dbg !2135
  store float %38, ptr %36, align 4, !dbg !2135
  %39 = load float, ptr %8, align 4, !dbg !2136
  %40 = load ptr, ptr %5, align 8, !dbg !2137
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %40, i32 noundef 0, i32 noundef 2), !dbg !2137
  %42 = load float, ptr %41, align 4, !dbg !2138
  %43 = fmul float %42, %39, !dbg !2138
  store float %43, ptr %41, align 4, !dbg !2138
  %44 = load float, ptr %8, align 4, !dbg !2139
  %45 = load ptr, ptr %5, align 8, !dbg !2140
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %45, i32 noundef 1, i32 noundef 2), !dbg !2140
  %47 = load float, ptr %46, align 4, !dbg !2141
  %48 = fmul float %47, %44, !dbg !2141
  store float %48, ptr %46, align 4, !dbg !2141
  %49 = load float, ptr %8, align 4, !dbg !2142
  %50 = load ptr, ptr %5, align 8, !dbg !2143
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %50, i32 noundef 2, i32 noundef 2), !dbg !2143
  %52 = load float, ptr %51, align 4, !dbg !2144
  %53 = fmul float %52, %49, !dbg !2144
  store float %53, ptr %51, align 4, !dbg !2144
  ret void, !dbg !2145
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr noalias sret(%class.DMatrix) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2) #4 comdat !dbg !2146 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2151, metadata !DIExpression()), !dbg !2152
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i1 false, ptr %7, align 1, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2156, metadata !DIExpression(DW_OP_deref)), !dbg !2157
  call void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0), !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2158, metadata !DIExpression()), !dbg !2159
  %12 = load ptr, ptr %5, align 8, !dbg !2160
  store ptr %12, ptr %8, align 8, !dbg !2159
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2161, metadata !DIExpression()), !dbg !2162
  %13 = load ptr, ptr %6, align 8, !dbg !2163
  store ptr %13, ptr %9, align 8, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2164, metadata !DIExpression()), !dbg !2166
  store i32 0, ptr %10, align 4, !dbg !2166
  br label %14, !dbg !2167

14:                                               ; preds = %56, %3
  %15 = load i32, ptr %10, align 4, !dbg !2168
  %16 = icmp slt i32 %15, 3, !dbg !2170
  br i1 %16, label %17, label %59, !dbg !2171

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2172, metadata !DIExpression()), !dbg !2174
  store i32 0, ptr %11, align 4, !dbg !2174
  br label %18, !dbg !2175

18:                                               ; preds = %52, %17
  %19 = load i32, ptr %11, align 4, !dbg !2176
  %20 = icmp slt i32 %19, 4, !dbg !2178
  br i1 %20, label %21, label %55, !dbg !2179

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !dbg !2180
  %23 = load i32, ptr %10, align 4, !dbg !2181
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %22, i32 noundef %23, i32 noundef 0), !dbg !2180
  %25 = load float, ptr %24, align 4, !dbg !2180
  %26 = load ptr, ptr %9, align 8, !dbg !2182
  %27 = load i32, ptr %11, align 4, !dbg !2183
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %26, i32 noundef 0, i32 noundef %27), !dbg !2182
  %29 = load float, ptr %28, align 4, !dbg !2182
  %30 = load ptr, ptr %8, align 8, !dbg !2184
  %31 = load i32, ptr %10, align 4, !dbg !2185
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %30, i32 noundef %31, i32 noundef 1), !dbg !2184
  %33 = load float, ptr %32, align 4, !dbg !2184
  %34 = load ptr, ptr %9, align 8, !dbg !2186
  %35 = load i32, ptr %11, align 4, !dbg !2187
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %34, i32 noundef 1, i32 noundef %35), !dbg !2186
  %37 = load float, ptr %36, align 4, !dbg !2186
  %38 = fmul float %33, %37, !dbg !2188
  %39 = call float @llvm.fmuladd.f32(float %25, float %29, float %38), !dbg !2189
  %40 = load ptr, ptr %8, align 8, !dbg !2190
  %41 = load i32, ptr %10, align 4, !dbg !2191
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %40, i32 noundef %41, i32 noundef 2), !dbg !2190
  %43 = load float, ptr %42, align 4, !dbg !2190
  %44 = load ptr, ptr %9, align 8, !dbg !2192
  %45 = load i32, ptr %11, align 4, !dbg !2193
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %44, i32 noundef 2, i32 noundef %45), !dbg !2192
  %47 = load float, ptr %46, align 4, !dbg !2192
  %48 = call float @llvm.fmuladd.f32(float %43, float %47, float %39), !dbg !2194
  %49 = load i32, ptr %10, align 4, !dbg !2195
  %50 = load i32, ptr %11, align 4, !dbg !2196
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %49, i32 noundef %50), !dbg !2197
  store float %48, ptr %51, align 4, !dbg !2198
  br label %52, !dbg !2197

52:                                               ; preds = %21
  %53 = load i32, ptr %11, align 4, !dbg !2199
  %54 = add nsw i32 %53, 1, !dbg !2199
  store i32 %54, ptr %11, align 4, !dbg !2199
  br label %18, !dbg !2200, !llvm.loop !2201

55:                                               ; preds = %18
  br label %56, !dbg !2202

56:                                               ; preds = %55
  %57 = load i32, ptr %10, align 4, !dbg !2204
  %58 = add nsw i32 %57, 1, !dbg !2204
  store i32 %58, ptr %10, align 4, !dbg !2204
  br label %14, !dbg !2205, !llvm.loop !2206

59:                                               ; preds = %14
  %60 = load ptr, ptr %8, align 8, !dbg !2208
  %61 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %60, i32 noundef 0, i32 noundef 3), !dbg !2208
  %62 = load float, ptr %61, align 4, !dbg !2208
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 3), !dbg !2209
  %64 = load float, ptr %63, align 4, !dbg !2210
  %65 = fadd float %64, %62, !dbg !2210
  store float %65, ptr %63, align 4, !dbg !2210
  %66 = load ptr, ptr %8, align 8, !dbg !2211
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %66, i32 noundef 1, i32 noundef 3), !dbg !2211
  %68 = load float, ptr %67, align 4, !dbg !2211
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 3), !dbg !2212
  %70 = load float, ptr %69, align 4, !dbg !2213
  %71 = fadd float %70, %68, !dbg !2213
  store float %71, ptr %69, align 4, !dbg !2213
  %72 = load ptr, ptr %8, align 8, !dbg !2214
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %72, i32 noundef 2, i32 noundef 3), !dbg !2214
  %74 = load float, ptr %73, align 4, !dbg !2214
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 3), !dbg !2215
  %76 = load float, ptr %75, align 4, !dbg !2216
  %77 = fadd float %76, %74, !dbg !2216
  store float %77, ptr %75, align 4, !dbg !2216
  store i1 true, ptr %7, align 1, !dbg !2217
  %78 = load i1, ptr %7, align 1, !dbg !2218
  br i1 %78, label %80, label %79, !dbg !2218

79:                                               ; preds = %59
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !2218
  br label %80, !dbg !2218

80:                                               ; preds = %79, %59
  ret void, !dbg !2218
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2EPKf(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !dbg !2219 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2220, metadata !DIExpression()), !dbg !2221
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2222, metadata !DIExpression()), !dbg !2223
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.DMatrix, ptr %5, i32 0, i32 0, !dbg !2224
  %7 = getelementptr inbounds [3 x [4 x float]], ptr %6, i64 0, i64 0, !dbg !2226
  %8 = load ptr, ptr %4, align 8, !dbg !2227
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 48, i1 false), !dbg !2226
  ret void, !dbg !2228
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !dbg !2229 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2230, metadata !DIExpression()), !dbg !2231
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2232
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z12PreTranslateR7DMatrixIfEfff(ptr noundef nonnull align 4 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3) #6 comdat !dbg !2233 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2234, metadata !DIExpression()), !dbg !2235
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2236, metadata !DIExpression()), !dbg !2237
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2238, metadata !DIExpression()), !dbg !2239
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2240, metadata !DIExpression()), !dbg !2241
  %9 = load ptr, ptr %5, align 8, !dbg !2242
  %10 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %9, i32 noundef 0, i32 noundef 0), !dbg !2242
  %11 = load float, ptr %10, align 4, !dbg !2242
  %12 = load float, ptr %6, align 4, !dbg !2243
  %13 = load ptr, ptr %5, align 8, !dbg !2244
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %13, i32 noundef 0, i32 noundef 1), !dbg !2244
  %15 = load float, ptr %14, align 4, !dbg !2244
  %16 = load float, ptr %7, align 4, !dbg !2245
  %17 = fmul float %15, %16, !dbg !2246
  %18 = call float @llvm.fmuladd.f32(float %11, float %12, float %17), !dbg !2247
  %19 = load ptr, ptr %5, align 8, !dbg !2248
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %19, i32 noundef 0, i32 noundef 2), !dbg !2248
  %21 = load float, ptr %20, align 4, !dbg !2248
  %22 = load float, ptr %8, align 4, !dbg !2249
  %23 = call float @llvm.fmuladd.f32(float %21, float %22, float %18), !dbg !2250
  %24 = load ptr, ptr %5, align 8, !dbg !2251
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %24, i32 noundef 0, i32 noundef 3), !dbg !2251
  %26 = load float, ptr %25, align 4, !dbg !2251
  %27 = fadd float %23, %26, !dbg !2252
  %28 = load ptr, ptr %5, align 8, !dbg !2253
  %29 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %28, i32 noundef 0, i32 noundef 3), !dbg !2253
  store float %27, ptr %29, align 4, !dbg !2254
  %30 = load ptr, ptr %5, align 8, !dbg !2255
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %30, i32 noundef 1, i32 noundef 0), !dbg !2255
  %32 = load float, ptr %31, align 4, !dbg !2255
  %33 = load float, ptr %6, align 4, !dbg !2256
  %34 = load ptr, ptr %5, align 8, !dbg !2257
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %34, i32 noundef 1, i32 noundef 1), !dbg !2257
  %36 = load float, ptr %35, align 4, !dbg !2257
  %37 = load float, ptr %7, align 4, !dbg !2258
  %38 = fmul float %36, %37, !dbg !2259
  %39 = call float @llvm.fmuladd.f32(float %32, float %33, float %38), !dbg !2260
  %40 = load ptr, ptr %5, align 8, !dbg !2261
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %40, i32 noundef 1, i32 noundef 2), !dbg !2261
  %42 = load float, ptr %41, align 4, !dbg !2261
  %43 = load float, ptr %8, align 4, !dbg !2262
  %44 = call float @llvm.fmuladd.f32(float %42, float %43, float %39), !dbg !2263
  %45 = load ptr, ptr %5, align 8, !dbg !2264
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %45, i32 noundef 1, i32 noundef 3), !dbg !2264
  %47 = load float, ptr %46, align 4, !dbg !2264
  %48 = fadd float %44, %47, !dbg !2265
  %49 = load ptr, ptr %5, align 8, !dbg !2266
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %49, i32 noundef 1, i32 noundef 3), !dbg !2266
  store float %48, ptr %50, align 4, !dbg !2267
  %51 = load ptr, ptr %5, align 8, !dbg !2268
  %52 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %51, i32 noundef 2, i32 noundef 0), !dbg !2268
  %53 = load float, ptr %52, align 4, !dbg !2268
  %54 = load float, ptr %6, align 4, !dbg !2269
  %55 = load ptr, ptr %5, align 8, !dbg !2270
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %55, i32 noundef 2, i32 noundef 1), !dbg !2270
  %57 = load float, ptr %56, align 4, !dbg !2270
  %58 = load float, ptr %7, align 4, !dbg !2271
  %59 = fmul float %57, %58, !dbg !2272
  %60 = call float @llvm.fmuladd.f32(float %53, float %54, float %59), !dbg !2273
  %61 = load ptr, ptr %5, align 8, !dbg !2274
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %61, i32 noundef 2, i32 noundef 2), !dbg !2274
  %63 = load float, ptr %62, align 4, !dbg !2274
  %64 = load float, ptr %8, align 4, !dbg !2275
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float %60), !dbg !2276
  %66 = load ptr, ptr %5, align 8, !dbg !2277
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %66, i32 noundef 2, i32 noundef 3), !dbg !2277
  %68 = load float, ptr %67, align 4, !dbg !2277
  %69 = fadd float %65, %68, !dbg !2278
  %70 = load ptr, ptr %5, align 8, !dbg !2279
  %71 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %70, i32 noundef 2, i32 noundef 3), !dbg !2279
  store float %69, ptr %71, align 4, !dbg !2280
  ret void, !dbg !2281
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z7InverseIfE7DMatrixIT_ERKS2_(ptr noalias sret(%class.DMatrix) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1) #4 comdat personality ptr @__gxx_personality_v0 !dbg !2282 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %class.Vector3, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %class.Vector3, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i1 false, ptr %5, align 1, !dbg !2287
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2288, metadata !DIExpression(DW_OP_deref)), !dbg !2289
  call void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0), !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2290, metadata !DIExpression()), !dbg !2291
  %15 = load ptr, ptr %4, align 8, !dbg !2292
  store ptr %15, ptr %6, align 8, !dbg !2291
  call void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0), !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2294, metadata !DIExpression()), !dbg !2295
  %16 = load ptr, ptr %6, align 8, !dbg !2296
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %16, i32 noundef 1, i32 noundef 1), !dbg !2296
  %18 = load float, ptr %17, align 4, !dbg !2296
  %19 = load ptr, ptr %6, align 8, !dbg !2297
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %19, i32 noundef 2, i32 noundef 2), !dbg !2297
  %21 = load float, ptr %20, align 4, !dbg !2297
  %22 = load ptr, ptr %6, align 8, !dbg !2298
  %23 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %22, i32 noundef 1, i32 noundef 2), !dbg !2298
  %24 = load float, ptr %23, align 4, !dbg !2298
  %25 = load ptr, ptr %6, align 8, !dbg !2299
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %25, i32 noundef 2, i32 noundef 1), !dbg !2299
  %27 = load float, ptr %26, align 4, !dbg !2299
  %28 = fmul float %24, %27, !dbg !2300
  %29 = fneg float %28, !dbg !2301
  %30 = call float @llvm.fmuladd.f32(float %18, float %21, float %29), !dbg !2301
  store float %30, ptr %7, align 4, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2302, metadata !DIExpression()), !dbg !2303
  %31 = load ptr, ptr %6, align 8, !dbg !2304
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %31, i32 noundef 1, i32 noundef 0), !dbg !2304
  %33 = load float, ptr %32, align 4, !dbg !2304
  %34 = load ptr, ptr %6, align 8, !dbg !2305
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %34, i32 noundef 2, i32 noundef 2), !dbg !2305
  %36 = load float, ptr %35, align 4, !dbg !2305
  %37 = load ptr, ptr %6, align 8, !dbg !2306
  %38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %37, i32 noundef 1, i32 noundef 2), !dbg !2306
  %39 = load float, ptr %38, align 4, !dbg !2306
  %40 = load ptr, ptr %6, align 8, !dbg !2307
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %40, i32 noundef 2, i32 noundef 0), !dbg !2307
  %42 = load float, ptr %41, align 4, !dbg !2307
  %43 = fmul float %39, %42, !dbg !2308
  %44 = fneg float %43, !dbg !2309
  %45 = call float @llvm.fmuladd.f32(float %33, float %36, float %44), !dbg !2309
  store float %45, ptr %8, align 4, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2310, metadata !DIExpression()), !dbg !2311
  %46 = load ptr, ptr %6, align 8, !dbg !2312
  %47 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %46, i32 noundef 1, i32 noundef 0), !dbg !2312
  %48 = load float, ptr %47, align 4, !dbg !2312
  %49 = load ptr, ptr %6, align 8, !dbg !2313
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %49, i32 noundef 2, i32 noundef 1), !dbg !2313
  %51 = load float, ptr %50, align 4, !dbg !2313
  %52 = load ptr, ptr %6, align 8, !dbg !2314
  %53 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %52, i32 noundef 1, i32 noundef 1), !dbg !2314
  %54 = load float, ptr %53, align 4, !dbg !2314
  %55 = load ptr, ptr %6, align 8, !dbg !2315
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %55, i32 noundef 2, i32 noundef 0), !dbg !2315
  %57 = load float, ptr %56, align 4, !dbg !2315
  %58 = fmul float %54, %57, !dbg !2316
  %59 = fneg float %58, !dbg !2317
  %60 = call float @llvm.fmuladd.f32(float %48, float %51, float %59), !dbg !2317
  store float %60, ptr %9, align 4, !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2318, metadata !DIExpression()), !dbg !2319
  %61 = load ptr, ptr %6, align 8, !dbg !2320
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %61, i32 noundef 0, i32 noundef 0), !dbg !2320
  %63 = load float, ptr %62, align 4, !dbg !2320
  %64 = load float, ptr %7, align 4, !dbg !2321
  %65 = load ptr, ptr %6, align 8, !dbg !2322
  %66 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %65, i32 noundef 0, i32 noundef 1), !dbg !2322
  %67 = load float, ptr %66, align 4, !dbg !2322
  %68 = load float, ptr %8, align 4, !dbg !2323
  %69 = fmul float %67, %68, !dbg !2324
  %70 = fneg float %69, !dbg !2325
  %71 = call float @llvm.fmuladd.f32(float %63, float %64, float %70), !dbg !2325
  %72 = load ptr, ptr %6, align 8, !dbg !2326
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %72, i32 noundef 0, i32 noundef 2), !dbg !2326
  %74 = load float, ptr %73, align 4, !dbg !2326
  %75 = load float, ptr %9, align 4, !dbg !2327
  %76 = call float @llvm.fmuladd.f32(float %74, float %75, float %71), !dbg !2328
  %77 = fdiv float 1.000000e+00, %76, !dbg !2329
  store float %77, ptr %10, align 4, !dbg !2319
  %78 = load float, ptr %10, align 4, !dbg !2330
  %79 = load float, ptr %7, align 4, !dbg !2331
  %80 = fmul float %78, %79, !dbg !2332
  %81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 0), !dbg !2333
  store float %80, ptr %81, align 4, !dbg !2334
  %82 = load float, ptr %10, align 4, !dbg !2335
  %83 = load ptr, ptr %6, align 8, !dbg !2336
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %83, i32 noundef 0, i32 noundef 2), !dbg !2336
  %85 = load float, ptr %84, align 4, !dbg !2336
  %86 = load ptr, ptr %6, align 8, !dbg !2337
  %87 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %86, i32 noundef 2, i32 noundef 1), !dbg !2337
  %88 = load float, ptr %87, align 4, !dbg !2337
  %89 = load ptr, ptr %6, align 8, !dbg !2338
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %89, i32 noundef 0, i32 noundef 1), !dbg !2338
  %91 = load float, ptr %90, align 4, !dbg !2338
  %92 = load ptr, ptr %6, align 8, !dbg !2339
  %93 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %92, i32 noundef 2, i32 noundef 2), !dbg !2339
  %94 = load float, ptr %93, align 4, !dbg !2339
  %95 = fmul float %91, %94, !dbg !2340
  %96 = fneg float %95, !dbg !2341
  %97 = call float @llvm.fmuladd.f32(float %85, float %88, float %96), !dbg !2341
  %98 = fmul float %82, %97, !dbg !2342
  %99 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 1), !dbg !2343
  store float %98, ptr %99, align 4, !dbg !2344
  %100 = load float, ptr %10, align 4, !dbg !2345
  %101 = load ptr, ptr %6, align 8, !dbg !2346
  %102 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %101, i32 noundef 0, i32 noundef 1), !dbg !2346
  %103 = load float, ptr %102, align 4, !dbg !2346
  %104 = load ptr, ptr %6, align 8, !dbg !2347
  %105 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %104, i32 noundef 1, i32 noundef 2), !dbg !2347
  %106 = load float, ptr %105, align 4, !dbg !2347
  %107 = load ptr, ptr %6, align 8, !dbg !2348
  %108 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %107, i32 noundef 0, i32 noundef 2), !dbg !2348
  %109 = load float, ptr %108, align 4, !dbg !2348
  %110 = load ptr, ptr %6, align 8, !dbg !2349
  %111 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %110, i32 noundef 1, i32 noundef 1), !dbg !2349
  %112 = load float, ptr %111, align 4, !dbg !2349
  %113 = fmul float %109, %112, !dbg !2350
  %114 = fneg float %113, !dbg !2351
  %115 = call float @llvm.fmuladd.f32(float %103, float %106, float %114), !dbg !2351
  %116 = fmul float %100, %115, !dbg !2352
  %117 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 2), !dbg !2353
  store float %116, ptr %117, align 4, !dbg !2354
  %118 = load float, ptr %10, align 4, !dbg !2355
  %119 = load float, ptr %8, align 4, !dbg !2356
  %120 = fneg float %119, !dbg !2357
  %121 = fmul float %118, %120, !dbg !2358
  %122 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 0), !dbg !2359
  store float %121, ptr %122, align 4, !dbg !2360
  %123 = load float, ptr %10, align 4, !dbg !2361
  %124 = load ptr, ptr %6, align 8, !dbg !2362
  %125 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %124, i32 noundef 0, i32 noundef 0), !dbg !2362
  %126 = load float, ptr %125, align 4, !dbg !2362
  %127 = load ptr, ptr %6, align 8, !dbg !2363
  %128 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %127, i32 noundef 2, i32 noundef 2), !dbg !2363
  %129 = load float, ptr %128, align 4, !dbg !2363
  %130 = load ptr, ptr %6, align 8, !dbg !2364
  %131 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %130, i32 noundef 0, i32 noundef 2), !dbg !2364
  %132 = load float, ptr %131, align 4, !dbg !2364
  %133 = load ptr, ptr %6, align 8, !dbg !2365
  %134 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %133, i32 noundef 2, i32 noundef 0), !dbg !2365
  %135 = load float, ptr %134, align 4, !dbg !2365
  %136 = fmul float %132, %135, !dbg !2366
  %137 = fneg float %136, !dbg !2367
  %138 = call float @llvm.fmuladd.f32(float %126, float %129, float %137), !dbg !2367
  %139 = fmul float %123, %138, !dbg !2368
  %140 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 1), !dbg !2369
  store float %139, ptr %140, align 4, !dbg !2370
  %141 = load float, ptr %10, align 4, !dbg !2371
  %142 = load ptr, ptr %6, align 8, !dbg !2372
  %143 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %142, i32 noundef 0, i32 noundef 2), !dbg !2372
  %144 = load float, ptr %143, align 4, !dbg !2372
  %145 = load ptr, ptr %6, align 8, !dbg !2373
  %146 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %145, i32 noundef 1, i32 noundef 0), !dbg !2373
  %147 = load float, ptr %146, align 4, !dbg !2373
  %148 = load ptr, ptr %6, align 8, !dbg !2374
  %149 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %148, i32 noundef 0, i32 noundef 0), !dbg !2374
  %150 = load float, ptr %149, align 4, !dbg !2374
  %151 = load ptr, ptr %6, align 8, !dbg !2375
  %152 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %151, i32 noundef 1, i32 noundef 2), !dbg !2375
  %153 = load float, ptr %152, align 4, !dbg !2375
  %154 = fmul float %150, %153, !dbg !2376
  %155 = fneg float %154, !dbg !2377
  %156 = call float @llvm.fmuladd.f32(float %144, float %147, float %155), !dbg !2377
  %157 = fmul float %141, %156, !dbg !2378
  %158 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 2), !dbg !2379
  store float %157, ptr %158, align 4, !dbg !2380
  %159 = load float, ptr %10, align 4, !dbg !2381
  %160 = load float, ptr %9, align 4, !dbg !2382
  %161 = fmul float %159, %160, !dbg !2383
  %162 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 0), !dbg !2384
  store float %161, ptr %162, align 4, !dbg !2385
  %163 = load float, ptr %10, align 4, !dbg !2386
  %164 = load ptr, ptr %6, align 8, !dbg !2387
  %165 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %164, i32 noundef 0, i32 noundef 1), !dbg !2387
  %166 = load float, ptr %165, align 4, !dbg !2387
  %167 = load ptr, ptr %6, align 8, !dbg !2388
  %168 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %167, i32 noundef 2, i32 noundef 0), !dbg !2388
  %169 = load float, ptr %168, align 4, !dbg !2388
  %170 = load ptr, ptr %6, align 8, !dbg !2389
  %171 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %170, i32 noundef 0, i32 noundef 0), !dbg !2389
  %172 = load float, ptr %171, align 4, !dbg !2389
  %173 = load ptr, ptr %6, align 8, !dbg !2390
  %174 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %173, i32 noundef 2, i32 noundef 1), !dbg !2390
  %175 = load float, ptr %174, align 4, !dbg !2390
  %176 = fmul float %172, %175, !dbg !2391
  %177 = fneg float %176, !dbg !2392
  %178 = call float @llvm.fmuladd.f32(float %166, float %169, float %177), !dbg !2392
  %179 = fmul float %163, %178, !dbg !2393
  %180 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 1), !dbg !2394
  store float %179, ptr %180, align 4, !dbg !2395
  %181 = load float, ptr %10, align 4, !dbg !2396
  %182 = load ptr, ptr %6, align 8, !dbg !2397
  %183 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %182, i32 noundef 0, i32 noundef 0), !dbg !2397
  %184 = load float, ptr %183, align 4, !dbg !2397
  %185 = load ptr, ptr %6, align 8, !dbg !2398
  %186 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %185, i32 noundef 1, i32 noundef 1), !dbg !2398
  %187 = load float, ptr %186, align 4, !dbg !2398
  %188 = load ptr, ptr %6, align 8, !dbg !2399
  %189 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %188, i32 noundef 0, i32 noundef 1), !dbg !2399
  %190 = load float, ptr %189, align 4, !dbg !2399
  %191 = load ptr, ptr %6, align 8, !dbg !2400
  %192 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %191, i32 noundef 1, i32 noundef 0), !dbg !2400
  %193 = load float, ptr %192, align 4, !dbg !2400
  %194 = fmul float %190, %193, !dbg !2401
  %195 = fneg float %194, !dbg !2402
  %196 = call float @llvm.fmuladd.f32(float %184, float %187, float %195), !dbg !2402
  %197 = fmul float %181, %196, !dbg !2403
  %198 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 2), !dbg !2404
  store float %197, ptr %198, align 4, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2406, metadata !DIExpression()), !dbg !2407
  %199 = load ptr, ptr %6, align 8, !dbg !2408
  %200 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %199, i32 noundef 0, i32 noundef 3), !dbg !2408
  %201 = load float, ptr %200, align 4, !dbg !2408
  %202 = fneg float %201, !dbg !2409
  %203 = load ptr, ptr %6, align 8, !dbg !2410
  %204 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %203, i32 noundef 1, i32 noundef 3), !dbg !2410
  %205 = load float, ptr %204, align 4, !dbg !2410
  %206 = fneg float %205, !dbg !2411
  %207 = load ptr, ptr %6, align 8, !dbg !2412
  %208 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %207, i32 noundef 2, i32 noundef 3), !dbg !2412
  %209 = load float, ptr %208, align 4, !dbg !2412
  %210 = fneg float %209, !dbg !2413
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %11, float noundef %202, float noundef %206, float noundef %210)
          to label %211 unwind label %223, !dbg !2407

211:                                              ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2414, metadata !DIExpression()), !dbg !2415
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %14, ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %212 unwind label %227, !dbg !2416

212:                                              ; preds = %211
  %213 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 0, !dbg !2417
  %214 = load float, ptr %213, align 4, !dbg !2417
  %215 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 0, i32 noundef 3), !dbg !2418
  store float %214, ptr %215, align 4, !dbg !2419
  %216 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 1, !dbg !2420
  %217 = load float, ptr %216, align 4, !dbg !2420
  %218 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 1, i32 noundef 3), !dbg !2421
  store float %217, ptr %218, align 4, !dbg !2422
  %219 = getelementptr inbounds %class.Vector3, ptr %14, i32 0, i32 2, !dbg !2423
  %220 = load float, ptr %219, align 4, !dbg !2423
  %221 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef 2, i32 noundef 3), !dbg !2424
  store float %220, ptr %221, align 4, !dbg !2425
  store i1 true, ptr %5, align 1, !dbg !2426
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %14) #3, !dbg !2427
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %11) #3, !dbg !2427
  %222 = load i1, ptr %5, align 1, !dbg !2427
  br i1 %222, label %232, label %231, !dbg !2427

223:                                              ; preds = %2
  %224 = landingpad { ptr, i32 }
          cleanup, !dbg !2427
  %225 = extractvalue { ptr, i32 } %224, 0, !dbg !2427
  store ptr %225, ptr %12, align 8, !dbg !2427
  %226 = extractvalue { ptr, i32 } %224, 1, !dbg !2427
  store i32 %226, ptr %13, align 4, !dbg !2427
  br label %233, !dbg !2427

227:                                              ; preds = %211
  %228 = landingpad { ptr, i32 }
          cleanup, !dbg !2427
  %229 = extractvalue { ptr, i32 } %228, 0, !dbg !2427
  store ptr %229, ptr %12, align 8, !dbg !2427
  %230 = extractvalue { ptr, i32 } %228, 1, !dbg !2427
  store i32 %230, ptr %13, align 4, !dbg !2427
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %11) #3, !dbg !2427
  br label %233, !dbg !2427

231:                                              ; preds = %212
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !2427
  br label %232, !dbg !2427

232:                                              ; preds = %231, %212
  ret void, !dbg !2427

233:                                              ; preds = %227, %223
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) #3, !dbg !2427
  br label %234, !dbg !2427

234:                                              ; preds = %233
  %235 = load ptr, ptr %12, align 8, !dbg !2427
  %236 = load i32, ptr %13, align 4, !dbg !2427
  %237 = insertvalue { ptr, i32 } poison, ptr %235, 0, !dbg !2427
  %238 = insertvalue { ptr, i32 } %237, i32 %236, 1, !dbg !2427
  resume { ptr, i32 } %238, !dbg !2427
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN14BodyParameters18InitBodyParametersENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(232) %0, ptr noundef %1) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !2428 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_ifstream", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2443
  %12 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2444, metadata !DIExpression()), !dbg !2448
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #3, !dbg !2449
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef %13, i32 noundef 8), !dbg !2448
  %14 = invoke noundef zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(ptr noundef nonnull align 8 dereferenceable(256) %5)
          to label %15 unwind label %23, !dbg !2450

15:                                               ; preds = %2
  br i1 %14, label %27, label %16, !dbg !2452

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
          to label %18 unwind label %23, !dbg !2453

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %20 unwind label %23, !dbg !2455

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %22 unwind label %23, !dbg !2456

22:                                               ; preds = %20
  store i1 false, ptr %3, align 1, !dbg !2457
  store i32 1, ptr %8, align 4
  br label %67, !dbg !2457

23:                                               ; preds = %56, %35, %20, %18, %16, %2
  %24 = landingpad { ptr, i32 }
          cleanup, !dbg !2458
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !2458
  store ptr %25, ptr %6, align 8, !dbg !2458
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !2458
  store i32 %26, ptr %7, align 4, !dbg !2458
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #3, !dbg !2459
  br label %69, !dbg !2459

27:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2460, metadata !DIExpression()), !dbg !2462
  store i32 0, ptr %9, align 4, !dbg !2462
  br label %28, !dbg !2463

28:                                               ; preds = %49, %27
  %29 = load i32, ptr %9, align 4, !dbg !2464
  %30 = icmp slt i32 %29, 10, !dbg !2466
  br i1 %30, label %31, label %52, !dbg !2467

31:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2468, metadata !DIExpression()), !dbg !2470
  store i32 0, ptr %10, align 4, !dbg !2470
  br label %32, !dbg !2471

32:                                               ; preds = %45, %31
  %33 = load i32, ptr %10, align 4, !dbg !2472
  %34 = icmp slt i32 %33, 4, !dbg !2474
  br i1 %34, label %35, label %48, !dbg !2475

35:                                               ; preds = %32
  %36 = getelementptr inbounds %class.BodyParameters, ptr %12, i32 0, i32 0, !dbg !2476
  %37 = load i32, ptr %9, align 4, !dbg !2477
  %38 = sext i32 %37 to i64, !dbg !2476
  %39 = getelementptr inbounds [10 x [4 x float]], ptr %36, i64 0, i64 %38, !dbg !2476
  %40 = load i32, ptr %10, align 4, !dbg !2478
  %41 = sext i32 %40 to i64, !dbg !2476
  %42 = getelementptr inbounds [4 x float], ptr %39, i64 0, i64 %41, !dbg !2476
  %43 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %42)
          to label %44 unwind label %23, !dbg !2479

44:                                               ; preds = %35
  br label %45, !dbg !2480

45:                                               ; preds = %44
  %46 = load i32, ptr %10, align 4, !dbg !2481
  %47 = add nsw i32 %46, 1, !dbg !2481
  store i32 %47, ptr %10, align 4, !dbg !2481
  br label %32, !dbg !2482, !llvm.loop !2483

48:                                               ; preds = %32
  br label %49, !dbg !2484

49:                                               ; preds = %48
  %50 = load i32, ptr %9, align 4, !dbg !2485
  %51 = add nsw i32 %50, 1, !dbg !2485
  store i32 %51, ptr %9, align 4, !dbg !2485
  br label %28, !dbg !2486, !llvm.loop !2487

52:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2489, metadata !DIExpression()), !dbg !2491
  store i32 0, ptr %11, align 4, !dbg !2491
  br label %53, !dbg !2492

53:                                               ; preds = %63, %52
  %54 = load i32, ptr %11, align 4, !dbg !2493
  %55 = icmp slt i32 %54, 18, !dbg !2495
  br i1 %55, label %56, label %66, !dbg !2496

56:                                               ; preds = %53
  %57 = getelementptr inbounds %class.BodyParameters, ptr %12, i32 0, i32 1, !dbg !2497
  %58 = load i32, ptr %11, align 4, !dbg !2498
  %59 = sext i32 %58 to i64, !dbg !2497
  %60 = getelementptr inbounds [18 x float], ptr %57, i64 0, i64 %59, !dbg !2497
  %61 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %60)
          to label %62 unwind label %23, !dbg !2499

62:                                               ; preds = %56
  br label %63, !dbg !2500

63:                                               ; preds = %62
  %64 = load i32, ptr %11, align 4, !dbg !2501
  %65 = add nsw i32 %64, 1, !dbg !2501
  store i32 %65, ptr %11, align 4, !dbg !2501
  br label %53, !dbg !2502, !llvm.loop !2503

66:                                               ; preds = %53
  store i1 true, ptr %3, align 1, !dbg !2505
  store i32 1, ptr %8, align 4
  br label %67, !dbg !2505

67:                                               ; preds = %66, %22
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #3, !dbg !2459
  %68 = load i1, ptr %3, align 1, !dbg !2459
  ret i1 %68, !dbg !2459

69:                                               ; preds = %23
  %70 = load ptr, ptr %6, align 8, !dbg !2459
  %71 = load i32, ptr %7, align 4, !dbg !2459
  %72 = insertvalue { ptr, i32 } poison, ptr %70, 0, !dbg !2459
  %73 = insertvalue { ptr, i32 } %72, i32 %71, 1, !dbg !2459
  resume { ptr, i32 } %73, !dbg !2459
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(ptr noundef nonnull align 8 dereferenceable(256)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(60) %2) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !2506 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %class.Vector3, align 4
  %15 = alloca %class.Vector3, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca [2 x %class.Vector3], align 16
  %19 = alloca %class.Vector3, align 4
  %20 = alloca %class.Vector3, align 4
  %21 = alloca %class.Vector3, align 4
  %22 = alloca %class.Vector3, align 4
  %23 = alloca [2 x %class.Vector3], align 16
  %24 = alloca %class.Vector3, align 4
  %25 = alloca %class.Vector3, align 4
  %26 = alloca float, align 4
  %27 = alloca %class.Vector3, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca double, align 8
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  %34 = alloca %class.Vector3, align 4
  %35 = alloca i32, align 4
  %36 = alloca %class.Vector3, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2511, metadata !DIExpression()), !dbg !2512
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2513, metadata !DIExpression()), !dbg !2514
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2515, metadata !DIExpression()), !dbg !2516
  %42 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2517, metadata !DIExpression()), !dbg !2518
  %43 = load ptr, ptr %6, align 8, !dbg !2519
  %44 = getelementptr inbounds %class.KTCylinder, ptr %43, i32 0, i32 2, !dbg !2520
  %45 = load float, ptr %44, align 4, !dbg !2520
  %46 = load ptr, ptr %6, align 8, !dbg !2521
  %47 = getelementptr inbounds %class.KTCylinder, ptr %46, i32 0, i32 0, !dbg !2522
  %48 = load ptr, ptr %6, align 8, !dbg !2523
  %49 = getelementptr inbounds %class.KTCylinder, ptr %48, i32 0, i32 1, !dbg !2524
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %47, ptr noundef nonnull align 4 dereferenceable(4) %49), !dbg !2525
  %51 = load float, ptr %50, align 4, !dbg !2525
  %52 = fdiv float %45, %51, !dbg !2526
  %53 = fdiv float %52, 2.000000e+00, !dbg !2527
  store float %53, ptr %8, align 4, !dbg !2518
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2528, metadata !DIExpression()), !dbg !2529
  %54 = load float, ptr %8, align 4, !dbg !2530
  %55 = fpext float %54 to double, !dbg !2530
  %56 = fcmp olt double %55, 0.000000e+00, !dbg !2531
  br i1 %56, label %57, label %60, !dbg !2530

57:                                               ; preds = %3
  %58 = load float, ptr %8, align 4, !dbg !2532
  %59 = fneg float %58, !dbg !2533
  br label %62, !dbg !2530

60:                                               ; preds = %3
  %61 = load float, ptr %8, align 4, !dbg !2534
  br label %62, !dbg !2530

62:                                               ; preds = %60, %57
  %63 = phi float [ %59, %57 ], [ %61, %60 ], !dbg !2530
  %64 = fadd float %63, 5.000000e-01, !dbg !2535
  %65 = fptosi float %64 to i32, !dbg !2536
  store i32 %65, ptr %9, align 4, !dbg !2529
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2537, metadata !DIExpression()), !dbg !2538
  %66 = load ptr, ptr %7, align 8, !dbg !2539
  %67 = getelementptr inbounds %class.KTCylinder, ptr %66, i32 0, i32 2, !dbg !2540
  %68 = load float, ptr %67, align 4, !dbg !2540
  %69 = load ptr, ptr %7, align 8, !dbg !2541
  %70 = getelementptr inbounds %class.KTCylinder, ptr %69, i32 0, i32 0, !dbg !2542
  %71 = load ptr, ptr %7, align 8, !dbg !2543
  %72 = getelementptr inbounds %class.KTCylinder, ptr %71, i32 0, i32 1, !dbg !2544
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %70, ptr noundef nonnull align 4 dereferenceable(4) %72), !dbg !2545
  %74 = load float, ptr %73, align 4, !dbg !2545
  %75 = fdiv float %68, %74, !dbg !2546
  %76 = fdiv float %75, 2.000000e+00, !dbg !2547
  store float %76, ptr %10, align 4, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2548, metadata !DIExpression()), !dbg !2549
  %77 = load float, ptr %10, align 4, !dbg !2550
  %78 = fpext float %77 to double, !dbg !2550
  %79 = fcmp olt double %78, 0.000000e+00, !dbg !2551
  br i1 %79, label %80, label %83, !dbg !2550

80:                                               ; preds = %62
  %81 = load float, ptr %10, align 4, !dbg !2552
  %82 = fneg float %81, !dbg !2553
  br label %85, !dbg !2550

83:                                               ; preds = %62
  %84 = load float, ptr %10, align 4, !dbg !2554
  br label %85, !dbg !2550

85:                                               ; preds = %83, %80
  %86 = phi float [ %82, %80 ], [ %84, %83 ], !dbg !2550
  %87 = fadd float %86, 5.000000e-01, !dbg !2555
  %88 = fptosi float %87 to i32, !dbg !2556
  store i32 %88, ptr %11, align 4, !dbg !2549
  store i32 20, ptr %12, align 4, !dbg !2557
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12), !dbg !2558
  %90 = load i32, ptr %89, align 4, !dbg !2558
  store i32 %90, ptr %11, align 4, !dbg !2559
  store i32 20, ptr %13, align 4, !dbg !2560
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %13), !dbg !2561
  %92 = load i32, ptr %91, align 4, !dbg !2561
  store i32 %92, ptr %9, align 4, !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00), !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2565, metadata !DIExpression()), !dbg !2566
  %93 = load ptr, ptr %6, align 8, !dbg !2567
  %94 = getelementptr inbounds %class.KTCylinder, ptr %93, i32 0, i32 2, !dbg !2568
  %95 = load float, ptr %94, align 4, !dbg !2568
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %95)
          to label %96 unwind label %218, !dbg !2566

96:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2569, metadata !DIExpression()), !dbg !2573
  %97 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i32 0, i32 0, !dbg !2573
  %98 = getelementptr inbounds %class.Vector3, ptr %97, i64 2, !dbg !2573
  br label %99, !dbg !2573

99:                                               ; preds = %101, %96
  %100 = phi ptr [ %97, %96 ], [ %102, %101 ], !dbg !2573
  invoke void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %100)
          to label %101 unwind label %222, !dbg !2573

101:                                              ; preds = %99
  %102 = getelementptr inbounds %class.Vector3, ptr %100, i64 1, !dbg !2573
  %103 = icmp eq ptr %102, %98, !dbg !2573
  br i1 %103, label %104, label %99, !dbg !2573

104:                                              ; preds = %101
  %105 = load ptr, ptr %6, align 8, !dbg !2574
  %106 = getelementptr inbounds %class.KTCylinder, ptr %105, i32 0, i32 3, !dbg !2575
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %19, ptr noundef nonnull align 4 dereferenceable(48) %106, ptr noundef nonnull align 4 dereferenceable(12) %14)
          to label %107 unwind label %232, !dbg !2576

107:                                              ; preds = %104
  %108 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 0, !dbg !2577
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %108, ptr align 4 %19, i64 12, i1 false), !dbg !2578
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %19) #3, !dbg !2577
  %109 = load ptr, ptr %6, align 8, !dbg !2579
  %110 = getelementptr inbounds %class.KTCylinder, ptr %109, i32 0, i32 3, !dbg !2580
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %20, ptr noundef nonnull align 4 dereferenceable(48) %110, ptr noundef nonnull align 4 dereferenceable(12) %15)
          to label %111 unwind label %232, !dbg !2581

111:                                              ; preds = %107
  %112 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 1, !dbg !2582
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %112, ptr align 4 %20, i64 12, i1 false), !dbg !2583
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %20) #3, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2584, metadata !DIExpression()), !dbg !2585
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %21, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00)
          to label %113 unwind label %232, !dbg !2585

113:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2586, metadata !DIExpression()), !dbg !2587
  %114 = load ptr, ptr %7, align 8, !dbg !2588
  %115 = getelementptr inbounds %class.KTCylinder, ptr %114, i32 0, i32 2, !dbg !2589
  %116 = load float, ptr %115, align 4, !dbg !2589
  invoke void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %22, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %116)
          to label %117 unwind label %236, !dbg !2587

117:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2590, metadata !DIExpression()), !dbg !2591
  %118 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i32 0, i32 0, !dbg !2591
  %119 = getelementptr inbounds %class.Vector3, ptr %118, i64 2, !dbg !2591
  br label %120, !dbg !2591

120:                                              ; preds = %122, %117
  %121 = phi ptr [ %118, %117 ], [ %123, %122 ], !dbg !2591
  invoke void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %121)
          to label %122 unwind label %240, !dbg !2591

122:                                              ; preds = %120
  %123 = getelementptr inbounds %class.Vector3, ptr %121, i64 1, !dbg !2591
  %124 = icmp eq ptr %123, %119, !dbg !2591
  br i1 %124, label %125, label %120, !dbg !2591

125:                                              ; preds = %122
  %126 = load ptr, ptr %7, align 8, !dbg !2592
  %127 = getelementptr inbounds %class.KTCylinder, ptr %126, i32 0, i32 3, !dbg !2593
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %24, ptr noundef nonnull align 4 dereferenceable(48) %127, ptr noundef nonnull align 4 dereferenceable(12) %21)
          to label %128 unwind label %250, !dbg !2594

128:                                              ; preds = %125
  %129 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 0, !dbg !2595
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %129, ptr align 4 %24, i64 12, i1 false), !dbg !2596
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %24) #3, !dbg !2595
  %130 = load ptr, ptr %7, align 8, !dbg !2597
  %131 = getelementptr inbounds %class.KTCylinder, ptr %130, i32 0, i32 3, !dbg !2598
  invoke void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr sret(%class.Vector3) align 4 %25, ptr noundef nonnull align 4 dereferenceable(48) %131, ptr noundef nonnull align 4 dereferenceable(12) %22)
          to label %132 unwind label %250, !dbg !2599

132:                                              ; preds = %128
  %133 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 1, !dbg !2600
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %133, ptr align 4 %25, i64 12, i1 false), !dbg !2601
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %25) #3, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2602, metadata !DIExpression()), !dbg !2603
  %134 = load i32, ptr %9, align 4, !dbg !2604
  %135 = sitofp i32 %134 to float, !dbg !2604
  %136 = fdiv float 1.000000e+00, %135, !dbg !2605
  store float %136, ptr %26, align 4, !dbg !2603
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2606, metadata !DIExpression()), !dbg !2607
  %137 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 1, !dbg !2608
  %138 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 0, !dbg !2609
  invoke void @_ZNK7Vector3IfEmiERKS0_(ptr sret(%class.Vector3) align 4 %27, ptr noundef nonnull align 4 dereferenceable(12) %137, ptr noundef nonnull align 4 dereferenceable(12) %138)
          to label %139 unwind label %250, !dbg !2610

139:                                              ; preds = %132
  %140 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 2, !dbg !2611
  %141 = load i32, ptr %9, align 4, !dbg !2612
  %142 = add nsw i32 %141, 1, !dbg !2613
  %143 = sext i32 %142 to i64, !dbg !2612
  invoke void @_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %140, i64 noundef %143)
          to label %144 unwind label %254, !dbg !2614

144:                                              ; preds = %139
  %145 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 4, !dbg !2615
  %146 = load i32, ptr %9, align 4, !dbg !2616
  %147 = add nsw i32 %146, 1, !dbg !2617
  %148 = sext i32 %147 to i64, !dbg !2616
  invoke void @_ZNSt6vectorIfSaIfEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %145, i64 noundef %148)
          to label %149 unwind label %254, !dbg !2618

149:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2621, metadata !DIExpression()), !dbg !2622
  %150 = load ptr, ptr %6, align 8, !dbg !2623
  %151 = getelementptr inbounds %class.KTCylinder, ptr %150, i32 0, i32 1, !dbg !2624
  %152 = load float, ptr %151, align 4, !dbg !2624
  %153 = load ptr, ptr %6, align 8, !dbg !2625
  %154 = getelementptr inbounds %class.KTCylinder, ptr %153, i32 0, i32 0, !dbg !2626
  %155 = load float, ptr %154, align 4, !dbg !2626
  %156 = fsub float %152, %155, !dbg !2627
  store float %156, ptr %29, align 4, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2628, metadata !DIExpression()), !dbg !2629
  %157 = load float, ptr %29, align 4, !dbg !2630
  %158 = load ptr, ptr %6, align 8, !dbg !2631
  %159 = getelementptr inbounds %class.KTCylinder, ptr %158, i32 0, i32 2, !dbg !2632
  %160 = load float, ptr %159, align 4, !dbg !2632
  %161 = fdiv float %157, %160, !dbg !2633
  %162 = fpext float %161 to double, !dbg !2630
  store double %162, ptr %30, align 8, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2634, metadata !DIExpression()), !dbg !2635
  %163 = load double, ptr %30, align 8, !dbg !2636
  %164 = load double, ptr %30, align 8, !dbg !2637
  %165 = call double @llvm.fmuladd.f64(double %163, double %164, double 1.000000e+00), !dbg !2638
  %166 = call double @sqrt(double noundef %165) #3, !dbg !2639
  %167 = fptrunc double %166 to float, !dbg !2639
  store float %167, ptr %31, align 4, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2640, metadata !DIExpression()), !dbg !2642
  store i32 0, ptr %32, align 4, !dbg !2642
  br label %168, !dbg !2643

168:                                              ; preds = %215, %149
  %169 = load i32, ptr %32, align 4, !dbg !2644
  %170 = load i32, ptr %9, align 4, !dbg !2646
  %171 = icmp sle i32 %169, %170, !dbg !2647
  br i1 %171, label %172, label %258, !dbg !2648

172:                                              ; preds = %168
  %173 = load i32, ptr %32, align 4, !dbg !2649
  %174 = sitofp i32 %173 to float, !dbg !2649
  %175 = load float, ptr %26, align 4, !dbg !2651
  %176 = fmul float %174, %175, !dbg !2652
  store float %176, ptr %28, align 4, !dbg !2653
  %177 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 2, !dbg !2654
  %178 = load i32, ptr %32, align 4, !dbg !2655
  %179 = sext i32 %178 to i64, !dbg !2655
  %180 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %177, i64 noundef %179) #3, !dbg !2654
  %181 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 0, !dbg !2656
  %182 = getelementptr inbounds %class.Vector3, ptr %181, i32 0, i32 0, !dbg !2657
  %183 = load float, ptr %182, align 16, !dbg !2657
  %184 = load float, ptr %28, align 4, !dbg !2658
  %185 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 0, !dbg !2659
  %186 = load float, ptr %185, align 4, !dbg !2659
  %187 = call float @llvm.fmuladd.f32(float %184, float %186, float %183), !dbg !2660
  %188 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 0, !dbg !2661
  %189 = getelementptr inbounds %class.Vector3, ptr %188, i32 0, i32 1, !dbg !2662
  %190 = load float, ptr %189, align 4, !dbg !2662
  %191 = load float, ptr %28, align 4, !dbg !2663
  %192 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 1, !dbg !2664
  %193 = load float, ptr %192, align 4, !dbg !2664
  %194 = call float @llvm.fmuladd.f32(float %191, float %193, float %190), !dbg !2665
  %195 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i64 0, i64 0, !dbg !2666
  %196 = getelementptr inbounds %class.Vector3, ptr %195, i32 0, i32 2, !dbg !2667
  %197 = load float, ptr %196, align 8, !dbg !2667
  %198 = load float, ptr %28, align 4, !dbg !2668
  %199 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 2, !dbg !2669
  %200 = load float, ptr %199, align 4, !dbg !2669
  %201 = call float @llvm.fmuladd.f32(float %198, float %200, float %197), !dbg !2670
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %180, float noundef %187, float noundef %194, float noundef %201)
          to label %202 unwind label %254, !dbg !2671

202:                                              ; preds = %172
  %203 = load ptr, ptr %6, align 8, !dbg !2672
  %204 = getelementptr inbounds %class.KTCylinder, ptr %203, i32 0, i32 0, !dbg !2673
  %205 = load float, ptr %204, align 4, !dbg !2673
  %206 = load float, ptr %28, align 4, !dbg !2674
  %207 = load float, ptr %29, align 4, !dbg !2675
  %208 = call float @llvm.fmuladd.f32(float %206, float %207, float %205), !dbg !2676
  %209 = load float, ptr %31, align 4, !dbg !2677
  %210 = fdiv float %208, %209, !dbg !2678
  %211 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 4, !dbg !2679
  %212 = load i32, ptr %32, align 4, !dbg !2680
  %213 = sext i32 %212 to i64, !dbg !2680
  %214 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %211, i64 noundef %213) #3, !dbg !2679
  store float %210, ptr %214, align 4, !dbg !2681
  br label %215, !dbg !2682

215:                                              ; preds = %202
  %216 = load i32, ptr %32, align 4, !dbg !2683
  %217 = add nsw i32 %216, 1, !dbg !2683
  store i32 %217, ptr %32, align 4, !dbg !2683
  br label %168, !dbg !2684, !llvm.loop !2685

218:                                              ; preds = %85
  %219 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %220 = extractvalue { ptr, i32 } %219, 0, !dbg !2687
  store ptr %220, ptr %16, align 8, !dbg !2687
  %221 = extractvalue { ptr, i32 } %219, 1, !dbg !2687
  store i32 %221, ptr %17, align 4, !dbg !2687
  br label %476, !dbg !2687

222:                                              ; preds = %99
  %223 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %224 = extractvalue { ptr, i32 } %223, 0, !dbg !2687
  store ptr %224, ptr %16, align 8, !dbg !2687
  %225 = extractvalue { ptr, i32 } %223, 1, !dbg !2687
  store i32 %225, ptr %17, align 4, !dbg !2687
  %226 = icmp eq ptr %97, %100, !dbg !2573
  br i1 %226, label %231, label %227, !dbg !2573

227:                                              ; preds = %227, %222
  %228 = phi ptr [ %100, %222 ], [ %229, %227 ], !dbg !2573
  %229 = getelementptr inbounds %class.Vector3, ptr %228, i64 -1, !dbg !2573
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %229) #3, !dbg !2573
  %230 = icmp eq ptr %229, %97, !dbg !2573
  br i1 %230, label %231, label %227, !dbg !2573

231:                                              ; preds = %227, %222
  br label %475, !dbg !2573

232:                                              ; preds = %111, %107, %104
  %233 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %234 = extractvalue { ptr, i32 } %233, 0, !dbg !2687
  store ptr %234, ptr %16, align 8, !dbg !2687
  %235 = extractvalue { ptr, i32 } %233, 1, !dbg !2687
  store i32 %235, ptr %17, align 4, !dbg !2687
  br label %467, !dbg !2687

236:                                              ; preds = %113
  %237 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %238 = extractvalue { ptr, i32 } %237, 0, !dbg !2687
  store ptr %238, ptr %16, align 8, !dbg !2687
  %239 = extractvalue { ptr, i32 } %237, 1, !dbg !2687
  store i32 %239, ptr %17, align 4, !dbg !2687
  br label %460, !dbg !2687

240:                                              ; preds = %120
  %241 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %242 = extractvalue { ptr, i32 } %241, 0, !dbg !2687
  store ptr %242, ptr %16, align 8, !dbg !2687
  %243 = extractvalue { ptr, i32 } %241, 1, !dbg !2687
  store i32 %243, ptr %17, align 4, !dbg !2687
  %244 = icmp eq ptr %118, %121, !dbg !2591
  br i1 %244, label %249, label %245, !dbg !2591

245:                                              ; preds = %245, %240
  %246 = phi ptr [ %121, %240 ], [ %247, %245 ], !dbg !2591
  %247 = getelementptr inbounds %class.Vector3, ptr %246, i64 -1, !dbg !2591
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %247) #3, !dbg !2591
  %248 = icmp eq ptr %247, %118, !dbg !2591
  br i1 %248, label %249, label %245, !dbg !2591

249:                                              ; preds = %245, %240
  br label %459, !dbg !2591

250:                                              ; preds = %132, %128, %125
  %251 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %252 = extractvalue { ptr, i32 } %251, 0, !dbg !2687
  store ptr %252, ptr %16, align 8, !dbg !2687
  %253 = extractvalue { ptr, i32 } %251, 1, !dbg !2687
  store i32 %253, ptr %17, align 4, !dbg !2687
  br label %451, !dbg !2687

254:                                              ; preds = %343, %297, %269, %264, %258, %172, %144, %139
  %255 = landingpad { ptr, i32 }
          cleanup, !dbg !2687
  %256 = extractvalue { ptr, i32 } %255, 0, !dbg !2687
  store ptr %256, ptr %16, align 8, !dbg !2687
  %257 = extractvalue { ptr, i32 } %255, 1, !dbg !2687
  store i32 %257, ptr %17, align 4, !dbg !2687
  br label %443, !dbg !2687

258:                                              ; preds = %168
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2688, metadata !DIExpression()), !dbg !2689
  %259 = load i32, ptr %11, align 4, !dbg !2690
  %260 = sitofp i32 %259 to float, !dbg !2690
  %261 = fdiv float 1.000000e+00, %260, !dbg !2691
  store float %261, ptr %33, align 4, !dbg !2689
  %262 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 1, !dbg !2692
  %263 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 0, !dbg !2693
  invoke void @_ZNK7Vector3IfEmiERKS0_(ptr sret(%class.Vector3) align 4 %34, ptr noundef nonnull align 4 dereferenceable(12) %262, ptr noundef nonnull align 4 dereferenceable(12) %263)
          to label %264 unwind label %254, !dbg !2694

264:                                              ; preds = %258
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %27, ptr align 4 %34, i64 12, i1 false), !dbg !2695
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %34) #3, !dbg !2696
  %265 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 3, !dbg !2697
  %266 = load i32, ptr %11, align 4, !dbg !2698
  %267 = add nsw i32 %266, 1, !dbg !2699
  %268 = sext i32 %267 to i64, !dbg !2698
  invoke void @_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %265, i64 noundef %268)
          to label %269 unwind label %254, !dbg !2700

269:                                              ; preds = %264
  %270 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 5, !dbg !2701
  %271 = load i32, ptr %11, align 4, !dbg !2702
  %272 = add nsw i32 %271, 1, !dbg !2703
  %273 = sext i32 %272 to i64, !dbg !2702
  invoke void @_ZNSt6vectorIfSaIfEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %270, i64 noundef %273)
          to label %274 unwind label %254, !dbg !2704

274:                                              ; preds = %269
  %275 = load ptr, ptr %7, align 8, !dbg !2705
  %276 = getelementptr inbounds %class.KTCylinder, ptr %275, i32 0, i32 1, !dbg !2706
  %277 = load float, ptr %276, align 4, !dbg !2706
  %278 = load ptr, ptr %7, align 8, !dbg !2707
  %279 = getelementptr inbounds %class.KTCylinder, ptr %278, i32 0, i32 0, !dbg !2708
  %280 = load float, ptr %279, align 4, !dbg !2708
  %281 = fsub float %277, %280, !dbg !2709
  store float %281, ptr %29, align 4, !dbg !2710
  %282 = load float, ptr %29, align 4, !dbg !2711
  %283 = load ptr, ptr %7, align 8, !dbg !2712
  %284 = getelementptr inbounds %class.KTCylinder, ptr %283, i32 0, i32 2, !dbg !2713
  %285 = load float, ptr %284, align 4, !dbg !2713
  %286 = fdiv float %282, %285, !dbg !2714
  %287 = fpext float %286 to double, !dbg !2711
  store double %287, ptr %30, align 8, !dbg !2715
  %288 = load double, ptr %30, align 8, !dbg !2716
  %289 = load double, ptr %30, align 8, !dbg !2717
  %290 = call double @llvm.fmuladd.f64(double %288, double %289, double 1.000000e+00), !dbg !2718
  %291 = call double @sqrt(double noundef %290) #3, !dbg !2719
  %292 = fptrunc double %291 to float, !dbg !2719
  store float %292, ptr %31, align 4, !dbg !2720
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2721, metadata !DIExpression()), !dbg !2723
  store i32 0, ptr %35, align 4, !dbg !2723
  br label %293, !dbg !2724

293:                                              ; preds = %340, %274
  %294 = load i32, ptr %35, align 4, !dbg !2725
  %295 = load i32, ptr %11, align 4, !dbg !2727
  %296 = icmp sle i32 %294, %295, !dbg !2728
  br i1 %296, label %297, label %343, !dbg !2729

297:                                              ; preds = %293
  %298 = load i32, ptr %35, align 4, !dbg !2730
  %299 = sitofp i32 %298 to float, !dbg !2730
  %300 = load float, ptr %33, align 4, !dbg !2732
  %301 = fmul float %299, %300, !dbg !2733
  store float %301, ptr %28, align 4, !dbg !2734
  %302 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 3, !dbg !2735
  %303 = load i32, ptr %35, align 4, !dbg !2736
  %304 = sext i32 %303 to i64, !dbg !2736
  %305 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %302, i64 noundef %304) #3, !dbg !2735
  %306 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 0, !dbg !2737
  %307 = getelementptr inbounds %class.Vector3, ptr %306, i32 0, i32 0, !dbg !2738
  %308 = load float, ptr %307, align 16, !dbg !2738
  %309 = load float, ptr %28, align 4, !dbg !2739
  %310 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 0, !dbg !2740
  %311 = load float, ptr %310, align 4, !dbg !2740
  %312 = call float @llvm.fmuladd.f32(float %309, float %311, float %308), !dbg !2741
  %313 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 0, !dbg !2742
  %314 = getelementptr inbounds %class.Vector3, ptr %313, i32 0, i32 1, !dbg !2743
  %315 = load float, ptr %314, align 4, !dbg !2743
  %316 = load float, ptr %28, align 4, !dbg !2744
  %317 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 1, !dbg !2745
  %318 = load float, ptr %317, align 4, !dbg !2745
  %319 = call float @llvm.fmuladd.f32(float %316, float %318, float %315), !dbg !2746
  %320 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i64 0, i64 0, !dbg !2747
  %321 = getelementptr inbounds %class.Vector3, ptr %320, i32 0, i32 2, !dbg !2748
  %322 = load float, ptr %321, align 8, !dbg !2748
  %323 = load float, ptr %28, align 4, !dbg !2749
  %324 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 2, !dbg !2750
  %325 = load float, ptr %324, align 4, !dbg !2750
  %326 = call float @llvm.fmuladd.f32(float %323, float %325, float %322), !dbg !2751
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %305, float noundef %312, float noundef %319, float noundef %326)
          to label %327 unwind label %254, !dbg !2752

327:                                              ; preds = %297
  %328 = load ptr, ptr %7, align 8, !dbg !2753
  %329 = getelementptr inbounds %class.KTCylinder, ptr %328, i32 0, i32 0, !dbg !2754
  %330 = load float, ptr %329, align 4, !dbg !2754
  %331 = load float, ptr %28, align 4, !dbg !2755
  %332 = load float, ptr %29, align 4, !dbg !2756
  %333 = call float @llvm.fmuladd.f32(float %331, float %332, float %330), !dbg !2757
  %334 = load float, ptr %31, align 4, !dbg !2758
  %335 = fdiv float %333, %334, !dbg !2759
  %336 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 5, !dbg !2760
  %337 = load i32, ptr %35, align 4, !dbg !2761
  %338 = sext i32 %337 to i64, !dbg !2761
  %339 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %336, i64 noundef %338) #3, !dbg !2760
  store float %335, ptr %339, align 4, !dbg !2762
  br label %340, !dbg !2763

340:                                              ; preds = %327
  %341 = load i32, ptr %35, align 4, !dbg !2764
  %342 = add nsw i32 %341, 1, !dbg !2764
  store i32 %342, ptr %35, align 4, !dbg !2764
  br label %293, !dbg !2765, !llvm.loop !2766

343:                                              ; preds = %293
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2768, metadata !DIExpression()), !dbg !2769
  invoke void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %36)
          to label %344 unwind label %254, !dbg !2769

344:                                              ; preds = %343
  call void @llvm.dbg.declare(metadata ptr %37, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata ptr %39, metadata !2774, metadata !DIExpression()), !dbg !2776
  store i32 0, ptr %39, align 4, !dbg !2776
  br label %345, !dbg !2777

345:                                              ; preds = %436, %344
  %346 = load i32, ptr %39, align 4, !dbg !2778
  %347 = load i32, ptr %9, align 4, !dbg !2780
  %348 = icmp sle i32 %346, %347, !dbg !2781
  br i1 %348, label %349, label %439, !dbg !2782

349:                                              ; preds = %345
  call void @llvm.dbg.declare(metadata ptr %40, metadata !2783, metadata !DIExpression()), !dbg !2786
  store i32 0, ptr %40, align 4, !dbg !2786
  br label %350, !dbg !2787

350:                                              ; preds = %432, %349
  %351 = load i32, ptr %40, align 4, !dbg !2788
  %352 = load i32, ptr %11, align 4, !dbg !2790
  %353 = icmp sle i32 %351, %352, !dbg !2791
  br i1 %353, label %354, label %435, !dbg !2792

354:                                              ; preds = %350
  %355 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 2, !dbg !2793
  %356 = load i32, ptr %39, align 4, !dbg !2795
  %357 = sext i32 %356 to i64, !dbg !2795
  %358 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %355, i64 noundef %357) #3, !dbg !2793
  %359 = getelementptr inbounds %class.Vector3, ptr %358, i32 0, i32 0, !dbg !2796
  %360 = load float, ptr %359, align 4, !dbg !2796
  %361 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 3, !dbg !2797
  %362 = load i32, ptr %40, align 4, !dbg !2798
  %363 = sext i32 %362 to i64, !dbg !2798
  %364 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %361, i64 noundef %363) #3, !dbg !2797
  %365 = getelementptr inbounds %class.Vector3, ptr %364, i32 0, i32 0, !dbg !2799
  %366 = load float, ptr %365, align 4, !dbg !2799
  %367 = fsub float %360, %366, !dbg !2800
  %368 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 2, !dbg !2801
  %369 = load i32, ptr %39, align 4, !dbg !2802
  %370 = sext i32 %369 to i64, !dbg !2802
  %371 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %368, i64 noundef %370) #3, !dbg !2801
  %372 = getelementptr inbounds %class.Vector3, ptr %371, i32 0, i32 1, !dbg !2803
  %373 = load float, ptr %372, align 4, !dbg !2803
  %374 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 3, !dbg !2804
  %375 = load i32, ptr %40, align 4, !dbg !2805
  %376 = sext i32 %375 to i64, !dbg !2805
  %377 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %374, i64 noundef %376) #3, !dbg !2804
  %378 = getelementptr inbounds %class.Vector3, ptr %377, i32 0, i32 1, !dbg !2806
  %379 = load float, ptr %378, align 4, !dbg !2806
  %380 = fsub float %373, %379, !dbg !2807
  %381 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 2, !dbg !2808
  %382 = load i32, ptr %39, align 4, !dbg !2809
  %383 = sext i32 %382 to i64, !dbg !2809
  %384 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %381, i64 noundef %383) #3, !dbg !2808
  %385 = getelementptr inbounds %class.Vector3, ptr %384, i32 0, i32 2, !dbg !2810
  %386 = load float, ptr %385, align 4, !dbg !2810
  %387 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 3, !dbg !2811
  %388 = load i32, ptr %40, align 4, !dbg !2812
  %389 = sext i32 %388 to i64, !dbg !2812
  %390 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %387, i64 noundef %389) #3, !dbg !2811
  %391 = getelementptr inbounds %class.Vector3, ptr %390, i32 0, i32 2, !dbg !2813
  %392 = load float, ptr %391, align 4, !dbg !2813
  %393 = fsub float %386, %392, !dbg !2814
  invoke void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %36, float noundef %367, float noundef %380, float noundef %393)
          to label %394 unwind label %427, !dbg !2815

394:                                              ; preds = %354
  %395 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 0, !dbg !2816
  %396 = load float, ptr %395, align 4, !dbg !2816
  %397 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 0, !dbg !2817
  %398 = load float, ptr %397, align 4, !dbg !2817
  %399 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 1, !dbg !2818
  %400 = load float, ptr %399, align 4, !dbg !2818
  %401 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 1, !dbg !2819
  %402 = load float, ptr %401, align 4, !dbg !2819
  %403 = fmul float %400, %402, !dbg !2820
  %404 = call float @llvm.fmuladd.f32(float %396, float %398, float %403), !dbg !2821
  %405 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 2, !dbg !2822
  %406 = load float, ptr %405, align 4, !dbg !2822
  %407 = getelementptr inbounds %class.Vector3, ptr %36, i32 0, i32 2, !dbg !2823
  %408 = load float, ptr %407, align 4, !dbg !2823
  %409 = call float @llvm.fmuladd.f32(float %406, float %408, float %404), !dbg !2824
  store float %409, ptr %38, align 4, !dbg !2825
  %410 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 4, !dbg !2826
  %411 = load i32, ptr %39, align 4, !dbg !2827
  %412 = sext i32 %411 to i64, !dbg !2827
  %413 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %410, i64 noundef %412) #3, !dbg !2826
  %414 = load float, ptr %413, align 4, !dbg !2826
  %415 = getelementptr inbounds %class.BodyGeometry, ptr %42, i32 0, i32 5, !dbg !2828
  %416 = load i32, ptr %40, align 4, !dbg !2829
  %417 = sext i32 %416 to i64, !dbg !2829
  %418 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %415, i64 noundef %417) #3, !dbg !2828
  %419 = load float, ptr %418, align 4, !dbg !2828
  %420 = fadd float %414, %419, !dbg !2830
  store float %420, ptr %37, align 4, !dbg !2831
  %421 = load float, ptr %37, align 4, !dbg !2832
  %422 = load float, ptr %37, align 4, !dbg !2834
  %423 = fmul float %421, %422, !dbg !2835
  %424 = load float, ptr %38, align 4, !dbg !2836
  %425 = fcmp ogt float %423, %424, !dbg !2837
  br i1 %425, label %426, label %431, !dbg !2838

426:                                              ; preds = %394
  store i1 true, ptr %4, align 1, !dbg !2839
  store i32 1, ptr %41, align 4
  br label %440, !dbg !2839

427:                                              ; preds = %354
  %428 = landingpad { ptr, i32 }
          cleanup, !dbg !2840
  %429 = extractvalue { ptr, i32 } %428, 0, !dbg !2840
  store ptr %429, ptr %16, align 8, !dbg !2840
  %430 = extractvalue { ptr, i32 } %428, 1, !dbg !2840
  store i32 %430, ptr %17, align 4, !dbg !2840
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %36) #3, !dbg !2687
  br label %443, !dbg !2687

431:                                              ; preds = %394
  br label %432, !dbg !2841

432:                                              ; preds = %431
  %433 = load i32, ptr %40, align 4, !dbg !2842
  %434 = add nsw i32 %433, 1, !dbg !2842
  store i32 %434, ptr %40, align 4, !dbg !2842
  br label %350, !dbg !2843, !llvm.loop !2844

435:                                              ; preds = %350
  br label %436, !dbg !2846

436:                                              ; preds = %435
  %437 = load i32, ptr %39, align 4, !dbg !2847
  %438 = add nsw i32 %437, 1, !dbg !2847
  store i32 %438, ptr %39, align 4, !dbg !2847
  br label %345, !dbg !2848, !llvm.loop !2849

439:                                              ; preds = %345
  store i1 false, ptr %4, align 1, !dbg !2851
  store i32 1, ptr %41, align 4
  br label %440, !dbg !2851

440:                                              ; preds = %439, %426
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %36) #3, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %27) #3, !dbg !2687
  %441 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i32 0, i32 0, !dbg !2687
  %442 = getelementptr inbounds %class.Vector3, ptr %441, i64 2, !dbg !2687
  br label %444, !dbg !2687

443:                                              ; preds = %427, %254
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %27) #3, !dbg !2687
  br label %451, !dbg !2687

444:                                              ; preds = %444, %440
  %445 = phi ptr [ %442, %440 ], [ %446, %444 ], !dbg !2687
  %446 = getelementptr inbounds %class.Vector3, ptr %445, i64 -1, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %446) #3, !dbg !2687
  %447 = icmp eq ptr %446, %441, !dbg !2687
  br i1 %447, label %448, label %444, !dbg !2687

448:                                              ; preds = %444
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %22) #3, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %21) #3, !dbg !2687
  %449 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i32 0, i32 0, !dbg !2687
  %450 = getelementptr inbounds %class.Vector3, ptr %449, i64 2, !dbg !2687
  br label %461, !dbg !2687

451:                                              ; preds = %443, %250
  %452 = getelementptr inbounds [2 x %class.Vector3], ptr %23, i32 0, i32 0, !dbg !2687
  %453 = getelementptr inbounds %class.Vector3, ptr %452, i64 2, !dbg !2687
  br label %454, !dbg !2687

454:                                              ; preds = %454, %451
  %455 = phi ptr [ %453, %451 ], [ %456, %454 ], !dbg !2687
  %456 = getelementptr inbounds %class.Vector3, ptr %455, i64 -1, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %456) #3, !dbg !2687
  %457 = icmp eq ptr %456, %452, !dbg !2687
  br i1 %457, label %458, label %454, !dbg !2687

458:                                              ; preds = %454
  br label %459, !dbg !2687

459:                                              ; preds = %458, %249
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %22) #3, !dbg !2687
  br label %460, !dbg !2687

460:                                              ; preds = %459, %236
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %21) #3, !dbg !2687
  br label %467, !dbg !2687

461:                                              ; preds = %461, %448
  %462 = phi ptr [ %450, %448 ], [ %463, %461 ], !dbg !2687
  %463 = getelementptr inbounds %class.Vector3, ptr %462, i64 -1, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %463) #3, !dbg !2687
  %464 = icmp eq ptr %463, %449, !dbg !2687
  br i1 %464, label %465, label %461, !dbg !2687

465:                                              ; preds = %461
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %15) #3, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %14) #3, !dbg !2687
  %466 = load i1, ptr %4, align 1, !dbg !2687
  ret i1 %466, !dbg !2687

467:                                              ; preds = %460, %232
  %468 = getelementptr inbounds [2 x %class.Vector3], ptr %18, i32 0, i32 0, !dbg !2687
  %469 = getelementptr inbounds %class.Vector3, ptr %468, i64 2, !dbg !2687
  br label %470, !dbg !2687

470:                                              ; preds = %470, %467
  %471 = phi ptr [ %469, %467 ], [ %472, %470 ], !dbg !2687
  %472 = getelementptr inbounds %class.Vector3, ptr %471, i64 -1, !dbg !2687
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %472) #3, !dbg !2687
  %473 = icmp eq ptr %472, %468, !dbg !2687
  br i1 %473, label %474, label %470, !dbg !2687

474:                                              ; preds = %470
  br label %475, !dbg !2687

475:                                              ; preds = %474, %231
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %15) #3, !dbg !2687
  br label %476, !dbg !2687

476:                                              ; preds = %475, %218
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %14) #3, !dbg !2687
  br label %477, !dbg !2687

477:                                              ; preds = %476
  %478 = load ptr, ptr %16, align 8, !dbg !2687
  %479 = load i32, ptr %17, align 4, !dbg !2687
  %480 = insertvalue { ptr, i32 } poison, ptr %478, 0, !dbg !2687
  %481 = insertvalue { ptr, i32 } %480, i32 %479, 1, !dbg !2687
  resume { ptr, i32 } %481, !dbg !2687
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #6 comdat !dbg !2852 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2857, metadata !DIExpression()), !dbg !2858
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2859, metadata !DIExpression()), !dbg !2860
  %6 = load ptr, ptr %4, align 8, !dbg !2861
  %7 = load float, ptr %6, align 4, !dbg !2861
  %8 = load ptr, ptr %5, align 8, !dbg !2863
  %9 = load float, ptr %8, align 4, !dbg !2863
  %10 = fcmp olt float %7, %9, !dbg !2864
  br i1 %10, label %11, label %13, !dbg !2865

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2866
  store ptr %12, ptr %3, align 8, !dbg !2867
  br label %15, !dbg !2867

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2868
  store ptr %14, ptr %3, align 8, !dbg !2869
  br label %15, !dbg !2869

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2870
  ret ptr %16, !dbg !2870
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #6 comdat !dbg !2871 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2877, metadata !DIExpression()), !dbg !2878
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2879, metadata !DIExpression()), !dbg !2880
  %6 = load ptr, ptr %5, align 8, !dbg !2881
  %7 = load i32, ptr %6, align 4, !dbg !2881
  %8 = load ptr, ptr %4, align 8, !dbg !2883
  %9 = load i32, ptr %8, align 4, !dbg !2883
  %10 = icmp slt i32 %7, %9, !dbg !2884
  br i1 %10, label %11, label %13, !dbg !2885

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2886
  store ptr %12, ptr %3, align 8, !dbg !2887
  br label %15, !dbg !2887

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2888
  store ptr %14, ptr %3, align 8, !dbg !2889
  br label %15, !dbg !2889

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2890
  ret ptr %16, !dbg !2890
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #9 comdat align 2 !dbg !2891 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2892, metadata !DIExpression()), !dbg !2893
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2894, metadata !DIExpression()), !dbg !2895
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2896, metadata !DIExpression()), !dbg !2897
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2898, metadata !DIExpression()), !dbg !2899
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !2900
  %11 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 0, !dbg !2902
  store float %10, ptr %11, align 4, !dbg !2903
  %12 = load float, ptr %7, align 4, !dbg !2904
  %13 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 1, !dbg !2905
  store float %12, ptr %13, align 4, !dbg !2906
  %14 = load float, ptr %8, align 4, !dbg !2907
  %15 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 2, !dbg !2908
  store float %14, ptr %15, align 4, !dbg !2909
  ret void, !dbg !2910
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #9 comdat align 2 !dbg !2911 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2912, metadata !DIExpression()), !dbg !2913
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2914
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #9 comdat align 2 !dbg !2915 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2916, metadata !DIExpression()), !dbg !2917
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2918
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_(ptr noalias sret(%class.Vector3) align 4 %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #4 comdat !dbg !2919 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2925, metadata !DIExpression()), !dbg !2926
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2927, metadata !DIExpression()), !dbg !2928
  store i1 false, ptr %7, align 1, !dbg !2929
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2930, metadata !DIExpression(DW_OP_deref)), !dbg !2931
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0), !dbg !2931
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2932, metadata !DIExpression()), !dbg !2933
  %9 = load ptr, ptr %5, align 8, !dbg !2934
  store ptr %9, ptr %8, align 8, !dbg !2933
  %10 = load ptr, ptr %8, align 8, !dbg !2935
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %10, i32 noundef 0, i32 noundef 0), !dbg !2935
  %12 = load float, ptr %11, align 4, !dbg !2935
  %13 = load ptr, ptr %6, align 8, !dbg !2936
  %14 = getelementptr inbounds %class.Vector3, ptr %13, i32 0, i32 0, !dbg !2937
  %15 = load float, ptr %14, align 4, !dbg !2937
  %16 = load ptr, ptr %8, align 8, !dbg !2938
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %16, i32 noundef 0, i32 noundef 1), !dbg !2938
  %18 = load float, ptr %17, align 4, !dbg !2938
  %19 = load ptr, ptr %6, align 8, !dbg !2939
  %20 = getelementptr inbounds %class.Vector3, ptr %19, i32 0, i32 1, !dbg !2940
  %21 = load float, ptr %20, align 4, !dbg !2940
  %22 = fmul float %18, %21, !dbg !2941
  %23 = call float @llvm.fmuladd.f32(float %12, float %15, float %22), !dbg !2942
  %24 = load ptr, ptr %8, align 8, !dbg !2943
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %24, i32 noundef 0, i32 noundef 2), !dbg !2943
  %26 = load float, ptr %25, align 4, !dbg !2943
  %27 = load ptr, ptr %6, align 8, !dbg !2944
  %28 = getelementptr inbounds %class.Vector3, ptr %27, i32 0, i32 2, !dbg !2945
  %29 = load float, ptr %28, align 4, !dbg !2945
  %30 = call float @llvm.fmuladd.f32(float %26, float %29, float %23), !dbg !2946
  %31 = load ptr, ptr %8, align 8, !dbg !2947
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %31, i32 noundef 0, i32 noundef 3), !dbg !2947
  %33 = load float, ptr %32, align 4, !dbg !2947
  %34 = fadd float %30, %33, !dbg !2948
  %35 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 0, !dbg !2949
  store float %34, ptr %35, align 4, !dbg !2950
  %36 = load ptr, ptr %8, align 8, !dbg !2951
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %36, i32 noundef 1, i32 noundef 0), !dbg !2951
  %38 = load float, ptr %37, align 4, !dbg !2951
  %39 = load ptr, ptr %6, align 8, !dbg !2952
  %40 = getelementptr inbounds %class.Vector3, ptr %39, i32 0, i32 0, !dbg !2953
  %41 = load float, ptr %40, align 4, !dbg !2953
  %42 = load ptr, ptr %8, align 8, !dbg !2954
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %42, i32 noundef 1, i32 noundef 1), !dbg !2954
  %44 = load float, ptr %43, align 4, !dbg !2954
  %45 = load ptr, ptr %6, align 8, !dbg !2955
  %46 = getelementptr inbounds %class.Vector3, ptr %45, i32 0, i32 1, !dbg !2956
  %47 = load float, ptr %46, align 4, !dbg !2956
  %48 = fmul float %44, %47, !dbg !2957
  %49 = call float @llvm.fmuladd.f32(float %38, float %41, float %48), !dbg !2958
  %50 = load ptr, ptr %8, align 8, !dbg !2959
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %50, i32 noundef 1, i32 noundef 2), !dbg !2959
  %52 = load float, ptr %51, align 4, !dbg !2959
  %53 = load ptr, ptr %6, align 8, !dbg !2960
  %54 = getelementptr inbounds %class.Vector3, ptr %53, i32 0, i32 2, !dbg !2961
  %55 = load float, ptr %54, align 4, !dbg !2961
  %56 = call float @llvm.fmuladd.f32(float %52, float %55, float %49), !dbg !2962
  %57 = load ptr, ptr %8, align 8, !dbg !2963
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %57, i32 noundef 1, i32 noundef 3), !dbg !2963
  %59 = load float, ptr %58, align 4, !dbg !2963
  %60 = fadd float %56, %59, !dbg !2964
  %61 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 1, !dbg !2965
  store float %60, ptr %61, align 4, !dbg !2966
  %62 = load ptr, ptr %8, align 8, !dbg !2967
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %62, i32 noundef 2, i32 noundef 0), !dbg !2967
  %64 = load float, ptr %63, align 4, !dbg !2967
  %65 = load ptr, ptr %6, align 8, !dbg !2968
  %66 = getelementptr inbounds %class.Vector3, ptr %65, i32 0, i32 0, !dbg !2969
  %67 = load float, ptr %66, align 4, !dbg !2969
  %68 = load ptr, ptr %8, align 8, !dbg !2970
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %68, i32 noundef 2, i32 noundef 1), !dbg !2970
  %70 = load float, ptr %69, align 4, !dbg !2970
  %71 = load ptr, ptr %6, align 8, !dbg !2971
  %72 = getelementptr inbounds %class.Vector3, ptr %71, i32 0, i32 1, !dbg !2972
  %73 = load float, ptr %72, align 4, !dbg !2972
  %74 = fmul float %70, %73, !dbg !2973
  %75 = call float @llvm.fmuladd.f32(float %64, float %67, float %74), !dbg !2974
  %76 = load ptr, ptr %8, align 8, !dbg !2975
  %77 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %76, i32 noundef 2, i32 noundef 2), !dbg !2975
  %78 = load float, ptr %77, align 4, !dbg !2975
  %79 = load ptr, ptr %6, align 8, !dbg !2976
  %80 = getelementptr inbounds %class.Vector3, ptr %79, i32 0, i32 2, !dbg !2977
  %81 = load float, ptr %80, align 4, !dbg !2977
  %82 = call float @llvm.fmuladd.f32(float %78, float %81, float %75), !dbg !2978
  %83 = load ptr, ptr %8, align 8, !dbg !2979
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %83, i32 noundef 2, i32 noundef 3), !dbg !2979
  %85 = load float, ptr %84, align 4, !dbg !2979
  %86 = fadd float %82, %85, !dbg !2980
  %87 = getelementptr inbounds %class.Vector3, ptr %0, i32 0, i32 2, !dbg !2981
  store float %86, ptr %87, align 4, !dbg !2982
  store i1 true, ptr %7, align 1, !dbg !2983
  %88 = load i1, ptr %7, align 1, !dbg !2984
  br i1 %88, label %90, label %89, !dbg !2984

89:                                               ; preds = %3
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) #3, !dbg !2984
  br label %90, !dbg !2984

90:                                               ; preds = %89, %3
  ret void, !dbg !2984
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7Vector3IfEmiERKS0_(ptr noalias sret(%class.Vector3) align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #4 comdat align 2 !dbg !2985 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2986, metadata !DIExpression()), !dbg !2988
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2989, metadata !DIExpression()), !dbg !2990
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 0, !dbg !2991
  %9 = load float, ptr %8, align 4, !dbg !2991
  %10 = load ptr, ptr %6, align 8, !dbg !2992
  %11 = getelementptr inbounds %class.Vector3, ptr %10, i32 0, i32 0, !dbg !2993
  %12 = load float, ptr %11, align 4, !dbg !2993
  %13 = fsub float %9, %12, !dbg !2994
  %14 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 1, !dbg !2995
  %15 = load float, ptr %14, align 4, !dbg !2995
  %16 = load ptr, ptr %6, align 8, !dbg !2996
  %17 = getelementptr inbounds %class.Vector3, ptr %16, i32 0, i32 1, !dbg !2997
  %18 = load float, ptr %17, align 4, !dbg !2997
  %19 = fsub float %15, %18, !dbg !2998
  %20 = getelementptr inbounds %class.Vector3, ptr %7, i32 0, i32 2, !dbg !2999
  %21 = load float, ptr %20, align 4, !dbg !2999
  %22 = load ptr, ptr %6, align 8, !dbg !3000
  %23 = getelementptr inbounds %class.Vector3, ptr %22, i32 0, i32 2, !dbg !3001
  %24 = load float, ptr %23, align 4, !dbg !3001
  %25 = fsub float %21, %24, !dbg !3002
  call void @_ZN7Vector3IfEC2Efff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %13, float noundef %19, float noundef %25), !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !3005 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3010, metadata !DIExpression()), !dbg !3012
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3013, metadata !DIExpression()), !dbg !3014
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3015
  %7 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3017
  %8 = icmp ugt i64 %6, %7, !dbg !3018
  br i1 %8, label %9, label %13, !dbg !3019

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8, !dbg !3020
  %11 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3021
  %12 = sub i64 %10, %11, !dbg !3022
  call void @_ZNSt6vectorI7Vector3IfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %12), !dbg !3023
  br label %24, !dbg !3023

13:                                               ; preds = %2
  %14 = load i64, ptr %4, align 8, !dbg !3024
  %15 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3026
  %16 = icmp ult i64 %14, %15, !dbg !3027
  br i1 %16, label %17, label %23, !dbg !3028

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %5, i32 0, i32 0, !dbg !3029
  %19 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %18, i32 0, i32 0, !dbg !3030
  %20 = load ptr, ptr %19, align 8, !dbg !3030
  %21 = load i64, ptr %4, align 8, !dbg !3031
  %22 = getelementptr inbounds %class.Vector3, ptr %20, i64 %21, !dbg !3032
  call void @_ZNSt6vectorI7Vector3IfESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %22) #3, !dbg !3033
  br label %23, !dbg !3033

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void, !dbg !3034
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !3035 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3040, metadata !DIExpression()), !dbg !3042
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3043, metadata !DIExpression()), !dbg !3044
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3045
  %7 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3047
  %8 = icmp ugt i64 %6, %7, !dbg !3048
  br i1 %8, label %9, label %13, !dbg !3049

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8, !dbg !3050
  %11 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3051
  %12 = sub i64 %10, %11, !dbg !3052
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %12), !dbg !3053
  br label %24, !dbg !3053

13:                                               ; preds = %2
  %14 = load i64, ptr %4, align 8, !dbg !3054
  %15 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !3056
  %16 = icmp ult i64 %14, %15, !dbg !3057
  br i1 %16, label %17, label %23, !dbg !3058

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %5, i32 0, i32 0, !dbg !3059
  %19 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %18, i32 0, i32 0, !dbg !3060
  %20 = load ptr, ptr %19, align 8, !dbg !3060
  %21 = load i64, ptr %4, align 8, !dbg !3061
  %22 = getelementptr inbounds float, ptr %20, i64 %21, !dbg !3062
  call void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %22) #3, !dbg !3063
  br label %23, !dbg !3063

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void, !dbg !3064
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZNSt6vectorI7Vector3IfESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #6 comdat align 2 !dbg !3065 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3076, metadata !DIExpression()), !dbg !3077
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %5, i32 0, i32 0, !dbg !3078
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !3079
  %8 = load ptr, ptr %7, align 8, !dbg !3079
  %9 = load i64, ptr %4, align 8, !dbg !3080
  %10 = getelementptr inbounds %class.Vector3, ptr %8, i64 %9, !dbg !3081
  ret ptr %10, !dbg !3082
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfE3SetEfff(ptr noundef nonnull align 4 dereferenceable(12) %0, float noundef %1, float noundef %2, float noundef %3) #6 comdat align 2 !dbg !3083 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3084, metadata !DIExpression()), !dbg !3085
  store float %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3086, metadata !DIExpression()), !dbg !3087
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3088, metadata !DIExpression()), !dbg !3089
  store float %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3090, metadata !DIExpression()), !dbg !3091
  %9 = load ptr, ptr %5, align 8
  %10 = load float, ptr %6, align 4, !dbg !3092
  %11 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 0, !dbg !3093
  store float %10, ptr %11, align 4, !dbg !3094
  %12 = load float, ptr %7, align 4, !dbg !3095
  %13 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 1, !dbg !3096
  store float %12, ptr %13, align 4, !dbg !3097
  %14 = load float, ptr %8, align 4, !dbg !3098
  %15 = getelementptr inbounds %class.Vector3, ptr %9, i32 0, i32 2, !dbg !3099
  store float %14, ptr %15, align 4, !dbg !3100
  ret void, !dbg !3101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #6 comdat align 2 !dbg !3102 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3111, metadata !DIExpression()), !dbg !3112
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3113, metadata !DIExpression()), !dbg !3114
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %5, i32 0, i32 0, !dbg !3115
  %7 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !3116
  %8 = load ptr, ptr %7, align 8, !dbg !3116
  %9 = load i64, ptr %4, align 8, !dbg !3117
  %10 = getelementptr inbounds float, ptr %8, i64 %9, !dbg !3118
  ret ptr %10, !dbg !3119
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN12BodyGeometry5ValidEv(ptr noundef nonnull align 8 dereferenceable(352) %0) #4 align 2 !dbg !3120 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3124, metadata !DIExpression()), !dbg !3125
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3126
  %6 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 6) #3, !dbg !3126
  %7 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3128
  %8 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0) #3, !dbg !3128
  %9 = call noundef zeroext i1 @_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_(ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 4 dereferenceable(60) %6, ptr noundef nonnull align 4 dereferenceable(60) %8), !dbg !3129
  br i1 %9, label %10, label %11, !dbg !3130

10:                                               ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !3131
  br label %26, !dbg !3131

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3132
  %13 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 8) #3, !dbg !3132
  %14 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3134
  %15 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 0) #3, !dbg !3134
  %16 = call noundef zeroext i1 @_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_(ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 4 dereferenceable(60) %13, ptr noundef nonnull align 4 dereferenceable(60) %15), !dbg !3135
  br i1 %16, label %17, label %18, !dbg !3136

17:                                               ; preds = %11
  store i1 false, ptr %2, align 1, !dbg !3137
  br label %26, !dbg !3137

18:                                               ; preds = %11
  %19 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3138
  %20 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef 2) #3, !dbg !3138
  %21 = getelementptr inbounds %class.BodyGeometry, ptr %4, i32 0, i32 0, !dbg !3140
  %22 = call noundef nonnull align 4 dereferenceable(60) ptr @_ZNSt6vectorI10KTCylinderSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 4) #3, !dbg !3140
  %23 = call noundef zeroext i1 @_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_(ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 4 dereferenceable(60) %20, ptr noundef nonnull align 4 dereferenceable(60) %22), !dbg !3141
  br i1 %23, label %24, label %25, !dbg !3142

24:                                               ; preds = %18
  store i1 false, ptr %2, align 1, !dbg !3143
  br label %26, !dbg !3143

25:                                               ; preds = %18
  store i1 true, ptr %2, align 1, !dbg !3144
  br label %26, !dbg !3144

26:                                               ; preds = %25, %24, %17, %10
  %27 = load i1, ptr %2, align 1, !dbg !3145
  ret i1 %27, !dbg !3145
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) #6 comdat align 2 !dbg !3146 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3148
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3149, metadata !DIExpression()), !dbg !3150
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3151, metadata !DIExpression()), !dbg !3152
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %class.DMatrix, ptr %7, i32 0, i32 0, !dbg !3153
  %9 = load i32, ptr %5, align 4, !dbg !3154
  %10 = sext i32 %9 to i64, !dbg !3153
  %11 = getelementptr inbounds [3 x [4 x float]], ptr %8, i64 0, i64 %10, !dbg !3153
  %12 = load i32, ptr %6, align 4, !dbg !3155
  %13 = sext i32 %12 to i64, !dbg !3153
  %14 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 %13, !dbg !3153
  ret ptr %14, !dbg !3156
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z13EulerRotationIfEvR7DMatrixIT_Efff7DMOrder(ptr noundef nonnull align 4 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) #4 comdat personality ptr @__gxx_personality_v0 !dbg !3157 {
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.DMatrix, align 4
  %12 = alloca %class.DMatrix, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %class.DMatrix, align 4
  %16 = alloca %class.DMatrix, align 4
  %17 = alloca %class.DMatrix, align 4
  %18 = alloca %class.DMatrix, align 4
  %19 = alloca %class.DMatrix, align 4
  %20 = alloca %class.DMatrix, align 4
  %21 = alloca %class.DMatrix, align 4
  %22 = alloca %class.DMatrix, align 4
  %23 = alloca %class.DMatrix, align 4
  %24 = alloca %class.DMatrix, align 4
  %25 = alloca %class.DMatrix, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3160, metadata !DIExpression()), !dbg !3161
  store float %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3162, metadata !DIExpression()), !dbg !3163
  store float %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3164, metadata !DIExpression()), !dbg !3165
  store float %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3166, metadata !DIExpression()), !dbg !3167
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3170, metadata !DIExpression()), !dbg !3171
  %26 = load float, ptr %7, align 4, !dbg !3172
  call void @_ZN7DMatrixIfEC2E6DMAxisf(ptr noundef nonnull align 4 dereferenceable(48) %11, i32 noundef 0, float noundef %26), !dbg !3171
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3173, metadata !DIExpression()), !dbg !3174
  %27 = load float, ptr %8, align 4, !dbg !3175
  invoke void @_ZN7DMatrixIfEC2E6DMAxisf(ptr noundef nonnull align 4 dereferenceable(48) %12, i32 noundef 1, float noundef %27)
          to label %28 unwind label %32, !dbg !3174

28:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3176, metadata !DIExpression()), !dbg !3177
  %29 = load float, ptr %9, align 4, !dbg !3178
  invoke void @_ZN7DMatrixIfEC2E6DMAxisf(ptr noundef nonnull align 4 dereferenceable(48) %15, i32 noundef 2, float noundef %29)
          to label %30 unwind label %36, !dbg !3177

30:                                               ; preds = %28
  %31 = load i32, ptr %10, align 4, !dbg !3179
  switch i32 %31, label %76 [
    i32 0, label %40
    i32 1, label %52
    i32 2, label %60
    i32 3, label %68
  ], !dbg !3180

32:                                               ; preds = %5
  %33 = landingpad { ptr, i32 }
          cleanup, !dbg !3181
  %34 = extractvalue { ptr, i32 } %33, 0, !dbg !3181
  store ptr %34, ptr %13, align 8, !dbg !3181
  %35 = extractvalue { ptr, i32 } %33, 1, !dbg !3181
  store i32 %35, ptr %14, align 4, !dbg !3181
  br label %87, !dbg !3181

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          cleanup, !dbg !3181
  %38 = extractvalue { ptr, i32 } %37, 0, !dbg !3181
  store ptr %38, ptr %13, align 8, !dbg !3181
  %39 = extractvalue { ptr, i32 } %37, 1, !dbg !3181
  store i32 %39, ptr %14, align 4, !dbg !3181
  br label %86, !dbg !3181

40:                                               ; preds = %30
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %17, ptr noundef nonnull align 4 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(48) %12)
          to label %41 unwind label %44, !dbg !3182

41:                                               ; preds = %40
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %16, ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %15)
          to label %42 unwind label %48, !dbg !3184

42:                                               ; preds = %41
  %43 = load ptr, ptr %6, align 8, !dbg !3185
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %16, i64 48, i1 false), !dbg !3186
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %16) #3, !dbg !3185
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %17) #3, !dbg !3185
  br label %84, !dbg !3187

44:                                               ; preds = %76, %68, %60, %52, %40
  %45 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %46 = extractvalue { ptr, i32 } %45, 0, !dbg !3188
  store ptr %46, ptr %13, align 8, !dbg !3188
  %47 = extractvalue { ptr, i32 } %45, 1, !dbg !3188
  store i32 %47, ptr %14, align 4, !dbg !3188
  br label %85, !dbg !3188

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %50 = extractvalue { ptr, i32 } %49, 0, !dbg !3188
  store ptr %50, ptr %13, align 8, !dbg !3188
  %51 = extractvalue { ptr, i32 } %49, 1, !dbg !3188
  store i32 %51, ptr %14, align 4, !dbg !3188
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %17) #3, !dbg !3185
  br label %85, !dbg !3185

52:                                               ; preds = %30
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %19, ptr noundef nonnull align 4 dereferenceable(48) %15, ptr noundef nonnull align 4 dereferenceable(48) %12)
          to label %53 unwind label %44, !dbg !3189

53:                                               ; preds = %52
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %18, ptr noundef nonnull align 4 dereferenceable(48) %19, ptr noundef nonnull align 4 dereferenceable(48) %11)
          to label %54 unwind label %56, !dbg !3190

54:                                               ; preds = %53
  %55 = load ptr, ptr %6, align 8, !dbg !3191
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 4 %18, i64 48, i1 false), !dbg !3192
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %18) #3, !dbg !3191
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %19) #3, !dbg !3191
  br label %84, !dbg !3193

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %58 = extractvalue { ptr, i32 } %57, 0, !dbg !3188
  store ptr %58, ptr %13, align 8, !dbg !3188
  %59 = extractvalue { ptr, i32 } %57, 1, !dbg !3188
  store i32 %59, ptr %14, align 4, !dbg !3188
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %19) #3, !dbg !3191
  br label %85, !dbg !3191

60:                                               ; preds = %30
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %21, ptr noundef nonnull align 4 dereferenceable(48) %12, ptr noundef nonnull align 4 dereferenceable(48) %11)
          to label %61 unwind label %44, !dbg !3194

61:                                               ; preds = %60
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %20, ptr noundef nonnull align 4 dereferenceable(48) %21, ptr noundef nonnull align 4 dereferenceable(48) %15)
          to label %62 unwind label %64, !dbg !3195

62:                                               ; preds = %61
  %63 = load ptr, ptr %6, align 8, !dbg !3196
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %63, ptr align 4 %20, i64 48, i1 false), !dbg !3197
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %20) #3, !dbg !3196
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %21) #3, !dbg !3196
  br label %84, !dbg !3198

64:                                               ; preds = %61
  %65 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %66 = extractvalue { ptr, i32 } %65, 0, !dbg !3188
  store ptr %66, ptr %13, align 8, !dbg !3188
  %67 = extractvalue { ptr, i32 } %65, 1, !dbg !3188
  store i32 %67, ptr %14, align 4, !dbg !3188
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %21) #3, !dbg !3196
  br label %85, !dbg !3196

68:                                               ; preds = %30
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %23, ptr noundef nonnull align 4 dereferenceable(48) %15, ptr noundef nonnull align 4 dereferenceable(48) %11)
          to label %69 unwind label %44, !dbg !3199

69:                                               ; preds = %68
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %22, ptr noundef nonnull align 4 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(48) %12)
          to label %70 unwind label %72, !dbg !3200

70:                                               ; preds = %69
  %71 = load ptr, ptr %6, align 8, !dbg !3201
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %71, ptr align 4 %22, i64 48, i1 false), !dbg !3202
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %22) #3, !dbg !3201
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %23) #3, !dbg !3201
  br label %84, !dbg !3203

72:                                               ; preds = %69
  %73 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %74 = extractvalue { ptr, i32 } %73, 0, !dbg !3188
  store ptr %74, ptr %13, align 8, !dbg !3188
  %75 = extractvalue { ptr, i32 } %73, 1, !dbg !3188
  store i32 %75, ptr %14, align 4, !dbg !3188
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %23) #3, !dbg !3201
  br label %85, !dbg !3201

76:                                               ; preds = %30
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %25, ptr noundef nonnull align 4 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(48) %12)
          to label %77 unwind label %44, !dbg !3204

77:                                               ; preds = %76
  invoke void @_ZmlIfE7DMatrixIT_ERKS2_S4_(ptr sret(%class.DMatrix) align 4 %24, ptr noundef nonnull align 4 dereferenceable(48) %25, ptr noundef nonnull align 4 dereferenceable(48) %15)
          to label %78 unwind label %80, !dbg !3205

78:                                               ; preds = %77
  %79 = load ptr, ptr %6, align 8, !dbg !3206
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %79, ptr align 4 %24, i64 48, i1 false), !dbg !3207
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %24) #3, !dbg !3206
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %25) #3, !dbg !3206
  br label %84, !dbg !3208

80:                                               ; preds = %77
  %81 = landingpad { ptr, i32 }
          cleanup, !dbg !3188
  %82 = extractvalue { ptr, i32 } %81, 0, !dbg !3188
  store ptr %82, ptr %13, align 8, !dbg !3188
  %83 = extractvalue { ptr, i32 } %81, 1, !dbg !3188
  store i32 %83, ptr %14, align 4, !dbg !3188
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %25) #3, !dbg !3206
  br label %85, !dbg !3206

84:                                               ; preds = %78, %70, %62, %54, %42
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %15) #3, !dbg !3181
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %12) #3, !dbg !3181
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %11) #3, !dbg !3181
  ret void, !dbg !3181

85:                                               ; preds = %80, %72, %64, %56, %48, %44
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %15) #3, !dbg !3181
  br label %86, !dbg !3181

86:                                               ; preds = %85, %36
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %12) #3, !dbg !3181
  br label %87, !dbg !3181

87:                                               ; preds = %86, %32
  call void @_ZN7DMatrixIfED2Ev(ptr noundef nonnull align 4 dereferenceable(48) %11) #3, !dbg !3181
  br label %88, !dbg !3181

88:                                               ; preds = %87
  %89 = load ptr, ptr %13, align 8, !dbg !3181
  %90 = load i32, ptr %14, align 4, !dbg !3181
  %91 = insertvalue { ptr, i32 } poison, ptr %89, 0, !dbg !3181
  %92 = insertvalue { ptr, i32 } %91, i32 %90, 1, !dbg !3181
  resume { ptr, i32 } %92, !dbg !3181
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2E6DMAxisf(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, float noundef %2) unnamed_addr #7 comdat align 2 !dbg !3209 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3210, metadata !DIExpression()), !dbg !3211
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3212, metadata !DIExpression()), !dbg !3213
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3214, metadata !DIExpression()), !dbg !3215
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4, !dbg !3216
  %9 = load float, ptr %6, align 4, !dbg !3218
  call void @_Z12AxisRotationIfEvR7DMatrixIT_E6DMAxisS1_(ptr noundef nonnull align 4 dereferenceable(48) %7, i32 noundef %8, float noundef %9), !dbg !3219
  ret void, !dbg !3220
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z12AxisRotationIfEvR7DMatrixIT_E6DMAxisS1_(ptr noundef nonnull align 4 dereferenceable(48) %0, i32 noundef %1, float noundef %2) #4 comdat !dbg !3221 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3226, metadata !DIExpression()), !dbg !3227
  store float %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3228, metadata !DIExpression()), !dbg !3229
  %9 = load ptr, ptr %4, align 8, !dbg !3230
  call void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %9), !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3232, metadata !DIExpression()), !dbg !3233
  %10 = load float, ptr %6, align 4, !dbg !3234
  %11 = call noundef float @_ZSt3cosf(float noundef %10), !dbg !3235
  store float %11, ptr %7, align 4, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3236, metadata !DIExpression()), !dbg !3237
  %12 = load float, ptr %6, align 4, !dbg !3238
  %13 = call noundef float @_ZSt3sinf(float noundef %12), !dbg !3239
  store float %13, ptr %8, align 4, !dbg !3237
  %14 = load i32, ptr %5, align 4, !dbg !3240
  switch i32 %14, label %63 [
    i32 0, label %15
    i32 1, label %31
    i32 2, label %47
  ], !dbg !3241

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8, !dbg !3242
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %16, i32 noundef 0, i32 noundef 0), !dbg !3242
  store float 1.000000e+00, ptr %17, align 4, !dbg !3244
  %18 = load float, ptr %7, align 4, !dbg !3245
  %19 = load ptr, ptr %4, align 8, !dbg !3246
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %19, i32 noundef 1, i32 noundef 1), !dbg !3246
  store float %18, ptr %20, align 4, !dbg !3247
  %21 = load float, ptr %8, align 4, !dbg !3248
  %22 = fneg float %21, !dbg !3249
  %23 = load ptr, ptr %4, align 8, !dbg !3250
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %23, i32 noundef 1, i32 noundef 2), !dbg !3250
  store float %22, ptr %24, align 4, !dbg !3251
  %25 = load float, ptr %8, align 4, !dbg !3252
  %26 = load ptr, ptr %4, align 8, !dbg !3253
  %27 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %26, i32 noundef 2, i32 noundef 1), !dbg !3253
  store float %25, ptr %27, align 4, !dbg !3254
  %28 = load float, ptr %7, align 4, !dbg !3255
  %29 = load ptr, ptr %4, align 8, !dbg !3256
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %29, i32 noundef 2, i32 noundef 2), !dbg !3256
  store float %28, ptr %30, align 4, !dbg !3257
  br label %63, !dbg !3258

31:                                               ; preds = %3
  %32 = load float, ptr %7, align 4, !dbg !3259
  %33 = load ptr, ptr %4, align 8, !dbg !3260
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %33, i32 noundef 0, i32 noundef 0), !dbg !3260
  store float %32, ptr %34, align 4, !dbg !3261
  %35 = load float, ptr %8, align 4, !dbg !3262
  %36 = load ptr, ptr %4, align 8, !dbg !3263
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %36, i32 noundef 0, i32 noundef 2), !dbg !3263
  store float %35, ptr %37, align 4, !dbg !3264
  %38 = load ptr, ptr %4, align 8, !dbg !3265
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %38, i32 noundef 1, i32 noundef 1), !dbg !3265
  store float 1.000000e+00, ptr %39, align 4, !dbg !3266
  %40 = load float, ptr %8, align 4, !dbg !3267
  %41 = fneg float %40, !dbg !3268
  %42 = load ptr, ptr %4, align 8, !dbg !3269
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %42, i32 noundef 2, i32 noundef 0), !dbg !3269
  store float %41, ptr %43, align 4, !dbg !3270
  %44 = load float, ptr %7, align 4, !dbg !3271
  %45 = load ptr, ptr %4, align 8, !dbg !3272
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %45, i32 noundef 2, i32 noundef 2), !dbg !3272
  store float %44, ptr %46, align 4, !dbg !3273
  br label %63, !dbg !3274

47:                                               ; preds = %3
  %48 = load float, ptr %7, align 4, !dbg !3275
  %49 = load ptr, ptr %4, align 8, !dbg !3276
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %49, i32 noundef 0, i32 noundef 0), !dbg !3276
  store float %48, ptr %50, align 4, !dbg !3277
  %51 = load float, ptr %8, align 4, !dbg !3278
  %52 = fneg float %51, !dbg !3279
  %53 = load ptr, ptr %4, align 8, !dbg !3280
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %53, i32 noundef 0, i32 noundef 1), !dbg !3280
  store float %52, ptr %54, align 4, !dbg !3281
  %55 = load float, ptr %8, align 4, !dbg !3282
  %56 = load ptr, ptr %4, align 8, !dbg !3283
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %56, i32 noundef 1, i32 noundef 0), !dbg !3283
  store float %55, ptr %57, align 4, !dbg !3284
  %58 = load float, ptr %7, align 4, !dbg !3285
  %59 = load ptr, ptr %4, align 8, !dbg !3286
  %60 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %59, i32 noundef 1, i32 noundef 1), !dbg !3286
  store float %58, ptr %60, align 4, !dbg !3287
  %61 = load ptr, ptr %4, align 8, !dbg !3288
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN7DMatrixIfEclEii(ptr noundef nonnull align 4 dereferenceable(48) %61, i32 noundef 2, i32 noundef 2), !dbg !3288
  store float 1.000000e+00, ptr %62, align 4, !dbg !3289
  br label %63, !dbg !3290

63:                                               ; preds = %3, %47, %31, %15
  ret void, !dbg !3291
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfE5ClearEv(ptr noundef nonnull align 4 dereferenceable(48) %0) #6 comdat align 2 !dbg !3292 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.DMatrix, ptr %3, i32 0, i32 0, !dbg !3295
  %5 = getelementptr inbounds [3 x [4 x float]], ptr %4, i64 0, i64 0, !dbg !3296
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 48, i1 false), !dbg !3296
  ret void, !dbg !3297
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3cosf(float noundef %0) #6 comdat !dbg !3298 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3299, metadata !DIExpression()), !dbg !3300
  %3 = load float, ptr %2, align 4, !dbg !3301
  %4 = call float @cosf(float noundef %3) #3, !dbg !3302
  ret float %4, !dbg !3303
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3sinf(float noundef %0) #6 comdat !dbg !3304 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3306
  %3 = load float, ptr %2, align 4, !dbg !3307
  %4 = call float @sinf(float noundef %3) #3, !dbg !3308
  ret float %4, !dbg !3309
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare float @cosf(float noundef) #2

; Function Attrs: nounwind
declare float @sinf(float noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DMatrixIfEC2Ev(ptr noundef nonnull align 4 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !dbg !3310 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3311, metadata !DIExpression()), !dbg !3312
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3313
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !3314 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3320, metadata !DIExpression()), !dbg !3322
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !3323
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !3324
  %6 = load ptr, ptr %5, align 8, !dbg !3324
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !3325
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3326
  %9 = load ptr, ptr %8, align 8, !dbg !3326
  %10 = ptrtoint ptr %6 to i64, !dbg !3327
  %11 = ptrtoint ptr %9 to i64, !dbg !3327
  %12 = sub i64 %10, %11, !dbg !3327
  %13 = sdiv exact i64 %12, 12, !dbg !3327
  ret i64 %13, !dbg !3328
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7Vector3IfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3329 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3331, metadata !DIExpression()), !dbg !3332
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3333, metadata !DIExpression()), !dbg !3334
  %11 = load ptr, ptr %3, align 8
  %12 = load i64, ptr %4, align 8, !dbg !3335
  %13 = icmp ne i64 %12, 0, !dbg !3337
  br i1 %13, label %14, label %115, !dbg !3338

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3339, metadata !DIExpression()), !dbg !3342
  %15 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3343
  store i64 %15, ptr %5, align 8, !dbg !3342
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3344, metadata !DIExpression()), !dbg !3345
  %16 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3346
  %17 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %16, i32 0, i32 2, !dbg !3347
  %18 = load ptr, ptr %17, align 8, !dbg !3347
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3348
  %20 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !3349
  %21 = load ptr, ptr %20, align 8, !dbg !3349
  %22 = ptrtoint ptr %18 to i64, !dbg !3350
  %23 = ptrtoint ptr %21 to i64, !dbg !3350
  %24 = sub i64 %22, %23, !dbg !3350
  %25 = sdiv exact i64 %24, 12, !dbg !3350
  store i64 %25, ptr %6, align 8, !dbg !3345
  %26 = load i64, ptr %5, align 8, !dbg !3351
  %27 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3353
  %28 = icmp ugt i64 %26, %27, !dbg !3354
  br i1 %28, label %35, label %29, !dbg !3355

29:                                               ; preds = %14
  %30 = load i64, ptr %6, align 8, !dbg !3356
  %31 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3357
  %32 = load i64, ptr %5, align 8, !dbg !3358
  %33 = sub i64 %31, %32, !dbg !3359
  %34 = icmp ugt i64 %30, %33, !dbg !3360
  br i1 %34, label %35, label %36, !dbg !3361

35:                                               ; preds = %29, %14
  unreachable, !dbg !3362

36:                                               ; preds = %29
  %37 = load i64, ptr %6, align 8, !dbg !3363
  %38 = load i64, ptr %4, align 8, !dbg !3365
  %39 = icmp uge i64 %37, %38, !dbg !3366
  br i1 %39, label %40, label %49, !dbg !3367

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3368
  %42 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %41, i32 0, i32 1, !dbg !3370
  %43 = load ptr, ptr %42, align 8, !dbg !3370
  %44 = load i64, ptr %4, align 8, !dbg !3371
  %45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3372
  %46 = call noundef ptr @_ZSt27__uninitialized_default_n_aIP7Vector3IfEmS1_ET_S3_T0_RSaIT1_E(ptr noundef %43, i64 noundef %44, ptr noundef nonnull align 1 dereferenceable(1) %45), !dbg !3373
  %47 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3374
  %48 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %47, i32 0, i32 1, !dbg !3375
  store ptr %46, ptr %48, align 8, !dbg !3376
  br label %114, !dbg !3377

49:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3378, metadata !DIExpression()), !dbg !3380
  %50 = load i64, ptr %4, align 8, !dbg !3381
  %51 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %50, ptr noundef @.str.1), !dbg !3382
  store i64 %51, ptr %7, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3383, metadata !DIExpression()), !dbg !3384
  %52 = load i64, ptr %7, align 8, !dbg !3385
  %53 = call noundef ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %52), !dbg !3386
  store ptr %53, ptr %8, align 8, !dbg !3384
  %54 = load ptr, ptr %8, align 8, !dbg !3387
  %55 = load i64, ptr %5, align 8, !dbg !3391
  %56 = getelementptr inbounds %class.Vector3, ptr %54, i64 %55, !dbg !3392
  %57 = load i64, ptr %4, align 8, !dbg !3393
  %58 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3394
  %59 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP7Vector3IfEmS1_ET_S3_T0_RSaIT1_E(ptr noundef %56, i64 noundef %57, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %60 unwind label %61, !dbg !3395

60:                                               ; preds = %49
  br label %76, !dbg !3396

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3397
  %63 = extractvalue { ptr, i32 } %62, 0, !dbg !3397
  store ptr %63, ptr %9, align 8, !dbg !3397
  %64 = extractvalue { ptr, i32 } %62, 1, !dbg !3397
  store i32 %64, ptr %10, align 4, !dbg !3397
  br label %65, !dbg !3397

65:                                               ; preds = %61
  %66 = load ptr, ptr %9, align 8, !dbg !3396
  %67 = call ptr @__cxa_begin_catch(ptr %66) #3, !dbg !3396
  %68 = load ptr, ptr %8, align 8, !dbg !3398
  %69 = load i64, ptr %7, align 8, !dbg !3400
  invoke void @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %68, i64 noundef %69)
          to label %70 unwind label %71, !dbg !3401

70:                                               ; preds = %65
  invoke void @__cxa_rethrow() #16
          to label %124 unwind label %71, !dbg !3402

71:                                               ; preds = %70, %65
  %72 = landingpad { ptr, i32 }
          cleanup, !dbg !3403
  %73 = extractvalue { ptr, i32 } %72, 0, !dbg !3403
  store ptr %73, ptr %9, align 8, !dbg !3403
  %74 = extractvalue { ptr, i32 } %72, 1, !dbg !3403
  store i32 %74, ptr %10, align 4, !dbg !3403
  invoke void @__cxa_end_catch()
          to label %75 unwind label %121, !dbg !3404

75:                                               ; preds = %71
  br label %116, !dbg !3404

76:                                               ; preds = %60
  %77 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3405
  %78 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %77, i32 0, i32 0, !dbg !3406
  %79 = load ptr, ptr %78, align 8, !dbg !3406
  %80 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3407
  %81 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %80, i32 0, i32 1, !dbg !3408
  %82 = load ptr, ptr %81, align 8, !dbg !3408
  %83 = load ptr, ptr %8, align 8, !dbg !3409
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !3410
  %85 = call noundef ptr @_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef nonnull align 1 dereferenceable(1) %84) #3, !dbg !3411
  %86 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3412
  %87 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %86, i32 0, i32 0, !dbg !3413
  %88 = load ptr, ptr %87, align 8, !dbg !3413
  %89 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3414
  %90 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %89, i32 0, i32 2, !dbg !3415
  %91 = load ptr, ptr %90, align 8, !dbg !3415
  %92 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3416
  %93 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %92, i32 0, i32 0, !dbg !3417
  %94 = load ptr, ptr %93, align 8, !dbg !3417
  %95 = ptrtoint ptr %91 to i64, !dbg !3418
  %96 = ptrtoint ptr %94 to i64, !dbg !3418
  %97 = sub i64 %95, %96, !dbg !3418
  %98 = sdiv exact i64 %97, 12, !dbg !3418
  call void @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %88, i64 noundef %98), !dbg !3419
  %99 = load ptr, ptr %8, align 8, !dbg !3420
  %100 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3421
  %101 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %100, i32 0, i32 0, !dbg !3422
  store ptr %99, ptr %101, align 8, !dbg !3423
  %102 = load ptr, ptr %8, align 8, !dbg !3424
  %103 = load i64, ptr %5, align 8, !dbg !3425
  %104 = getelementptr inbounds %class.Vector3, ptr %102, i64 %103, !dbg !3426
  %105 = load i64, ptr %4, align 8, !dbg !3427
  %106 = getelementptr inbounds %class.Vector3, ptr %104, i64 %105, !dbg !3428
  %107 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3429
  %108 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %107, i32 0, i32 1, !dbg !3430
  store ptr %106, ptr %108, align 8, !dbg !3431
  %109 = load ptr, ptr %8, align 8, !dbg !3432
  %110 = load i64, ptr %7, align 8, !dbg !3433
  %111 = getelementptr inbounds %class.Vector3, ptr %109, i64 %110, !dbg !3434
  %112 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %11, i32 0, i32 0, !dbg !3435
  %113 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %112, i32 0, i32 2, !dbg !3436
  store ptr %111, ptr %113, align 8, !dbg !3437
  br label %114

114:                                              ; preds = %76, %40
  br label %115, !dbg !3438

115:                                              ; preds = %114, %2
  ret void, !dbg !3439

116:                                              ; preds = %75
  %117 = load ptr, ptr %9, align 8, !dbg !3404
  %118 = load i32, ptr %10, align 4, !dbg !3404
  %119 = insertvalue { ptr, i32 } poison, ptr %117, 0, !dbg !3404
  %120 = insertvalue { ptr, i32 } %119, i32 %118, 1, !dbg !3404
  resume { ptr, i32 } %120, !dbg !3404

121:                                              ; preds = %71
  %122 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3404
  %123 = extractvalue { ptr, i32 } %122, 0, !dbg !3404
  call void @__clang_call_terminate(ptr %123) #17, !dbg !3404
  unreachable, !dbg !3404

124:                                              ; preds = %70
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7Vector3IfESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3440 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3444, metadata !DIExpression()), !dbg !3445
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3446, metadata !DIExpression()), !dbg !3447
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3448, metadata !DIExpression()), !dbg !3450
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %6, i32 0, i32 0, !dbg !3451
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !3452
  %9 = load ptr, ptr %8, align 8, !dbg !3452
  %10 = load ptr, ptr %4, align 8, !dbg !3453
  %11 = ptrtoint ptr %9 to i64, !dbg !3454
  %12 = ptrtoint ptr %10 to i64, !dbg !3454
  %13 = sub i64 %11, %12, !dbg !3454
  %14 = sdiv exact i64 %13, 12, !dbg !3454
  store i64 %14, ptr %5, align 8, !dbg !3450
  %15 = load i64, ptr %5, align 8, !dbg !3450
  %16 = icmp ne i64 %15, 0, !dbg !3450
  br i1 %16, label %17, label %27, !dbg !3455

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !3456
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %6, i32 0, i32 0, !dbg !3458
  %20 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !3459
  %21 = load ptr, ptr %20, align 8, !dbg !3459
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !3460
  invoke void @_ZSt8_DestroyIP7Vector3IfES1_EvT_S3_RSaIT0_E(ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %28, !dbg !3461

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !3462
  %25 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %6, i32 0, i32 0, !dbg !3463
  %26 = getelementptr inbounds %"struct.std::_Vector_base<Vector3<float>, std::allocator<Vector3<float>>>::_Vector_impl_data", ptr %25, i32 0, i32 1, !dbg !3464
  store ptr %24, ptr %26, align 8, !dbg !3465
  br label %27, !dbg !3466

27:                                               ; preds = %23, %2
  ret void, !dbg !3467

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3461
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !3461
  call void @__clang_call_terminate(ptr %30) #17, !dbg !3461
  unreachable, !dbg !3461
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !3468 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3470, metadata !DIExpression()), !dbg !3471
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3472
  %5 = call noundef i64 @_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !3473
  ret i64 %5, !dbg !3474
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP7Vector3IfEmS1_ET_S3_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !3475 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3484, metadata !DIExpression()), !dbg !3485
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3486, metadata !DIExpression()), !dbg !3487
  %7 = load ptr, ptr %4, align 8, !dbg !3488
  %8 = load i64, ptr %5, align 8, !dbg !3489
  %9 = call noundef ptr @_ZSt25__uninitialized_default_nIP7Vector3IfEmET_S3_T0_(ptr noundef %7, i64 noundef %8), !dbg !3490
  ret ptr %9, !dbg !3491
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !3492 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3498, metadata !DIExpression()), !dbg !3500
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !3501
  ret ptr %4, !dbg !3502
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !3503 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3508, metadata !DIExpression()), !dbg !3509
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3510, metadata !DIExpression()), !dbg !3511
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3512, metadata !DIExpression()), !dbg !3513
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3514
  %11 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3516
  %12 = sub i64 %10, %11, !dbg !3517
  %13 = load i64, ptr %5, align 8, !dbg !3518
  %14 = icmp ult i64 %12, %13, !dbg !3519
  br i1 %14, label %15, label %17, !dbg !3520

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !3521
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #16, !dbg !3522
  unreachable, !dbg !3522

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3523, metadata !DIExpression()), !dbg !3524
  %18 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3525
  %19 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3526
  store i64 %19, ptr %8, align 8, !dbg !3526
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !3527
  %21 = load i64, ptr %20, align 8, !dbg !3527
  %22 = add i64 %18, %21, !dbg !3528
  store i64 %22, ptr %7, align 8, !dbg !3524
  %23 = load i64, ptr %7, align 8, !dbg !3529
  %24 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3530
  %25 = icmp ult i64 %23, %24, !dbg !3531
  br i1 %25, label %30, label %26, !dbg !3532

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !3533
  %28 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3534
  %29 = icmp ugt i64 %27, %28, !dbg !3535
  br i1 %29, label %30, label %32, !dbg !3536

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3537
  br label %34, !dbg !3536

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !3538
  br label %34, !dbg !3536

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !3536
  ret i64 %35, !dbg !3539
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !3540 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3544, metadata !DIExpression()), !dbg !3545
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3546, metadata !DIExpression()), !dbg !3547
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3548
  %7 = icmp ne i64 %6, 0, !dbg !3549
  br i1 %7, label %8, label %12, !dbg !3548

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %5, i32 0, i32 0, !dbg !3550
  %10 = load i64, ptr %4, align 8, !dbg !3551
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !3552
  br label %13, !dbg !3548

12:                                               ; preds = %2
  br label %13, !dbg !3548

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !3548
  ret ptr %14, !dbg !3553
}

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !3554 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3558, metadata !DIExpression()), !dbg !3559
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3560, metadata !DIExpression()), !dbg !3561
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3562, metadata !DIExpression()), !dbg !3563
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3564
  %9 = icmp ne ptr %8, null, !dbg !3564
  br i1 %9, label %10, label %14, !dbg !3566

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %7, i32 0, i32 0, !dbg !3567
  %12 = load ptr, ptr %5, align 8, !dbg !3568
  %13 = load i64, ptr %6, align 8, !dbg !3569
  call void @_ZNSt16allocator_traitsISaI7Vector3IfEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3570
  br label %14, !dbg !3570

14:                                               ; preds = %10, %3
  ret void, !dbg !3571
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #11 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat align 2 !dbg !150 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3572, metadata !DIExpression()), !dbg !3573
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3574, metadata !DIExpression()), !dbg !3575
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3576, metadata !DIExpression()), !dbg !3577
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3578, metadata !DIExpression()), !dbg !3579
  %10 = load ptr, ptr %5, align 8, !dbg !3580
  %11 = load ptr, ptr %6, align 8, !dbg !3581
  %12 = load ptr, ptr %7, align 8, !dbg !3582
  %13 = load ptr, ptr %8, align 8, !dbg !3583
  %14 = call noundef ptr @_ZNSt6vectorI7Vector3IfESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3584
  ret ptr %14, !dbg !3585
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3586 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3594, metadata !DIExpression()), !dbg !3596
  store i64 768614336404564650, ptr %3, align 8, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3597, metadata !DIExpression()), !dbg !3598
  %5 = load ptr, ptr %2, align 8, !dbg !3599
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI7Vector3IfEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !3600
  store i64 %6, ptr %4, align 8, !dbg !3598
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !3601

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !3601
  ret i64 %9, !dbg !3602

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3601
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !3601
  call void @__clang_call_terminate(ptr %12) #17, !dbg !3601
  unreachable, !dbg !3601
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !3603 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3611, metadata !DIExpression()), !dbg !3613
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %3, i32 0, i32 0, !dbg !3614
  ret ptr %4, !dbg !3615
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7Vector3IfEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !3616 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3617, metadata !DIExpression()), !dbg !3618
  %3 = load ptr, ptr %2, align 8, !dbg !3619
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3620
  ret i64 %4, !dbg !3621
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6 comdat !dbg !3622 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3629, metadata !DIExpression()), !dbg !3630
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3631, metadata !DIExpression()), !dbg !3632
  %6 = load ptr, ptr %5, align 8, !dbg !3633
  %7 = load i64, ptr %6, align 8, !dbg !3633
  %8 = load ptr, ptr %4, align 8, !dbg !3635
  %9 = load i64, ptr %8, align 8, !dbg !3635
  %10 = icmp ult i64 %7, %9, !dbg !3636
  br i1 %10, label %11, label %13, !dbg !3637

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3638
  store ptr %12, ptr %3, align 8, !dbg !3639
  br label %15, !dbg !3639

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3640
  store ptr %14, ptr %3, align 8, !dbg !3641
  br label %15, !dbg !3641

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3642
  ret ptr %16, !dbg !3642
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !3643 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3652, metadata !DIExpression()), !dbg !3654
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3655
  ret i64 %4, !dbg !3656
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !3657 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3659, metadata !DIExpression()), !dbg !3660
  %3 = load ptr, ptr %2, align 8
  ret i64 768614336404564650, !dbg !3661
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP7Vector3IfEmET_S3_T0_(ptr noundef %0, i64 noundef %1) #4 comdat !dbg !3662 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3666, metadata !DIExpression()), !dbg !3667
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3670, metadata !DIExpression()), !dbg !3671
  store i8 1, ptr %5, align 1, !dbg !3671
  %6 = load ptr, ptr %3, align 8, !dbg !3672
  %7 = load i64, ptr %4, align 8, !dbg !3673
  %8 = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7Vector3IfEmEET_S5_T0_(ptr noundef %6, i64 noundef %7), !dbg !3674
  ret ptr %8, !dbg !3675
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7Vector3IfEmEET_S5_T0_(ptr noundef %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3676 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3681, metadata !DIExpression()), !dbg !3682
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3683, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3685, metadata !DIExpression()), !dbg !3686
  %8 = load ptr, ptr %3, align 8, !dbg !3687
  store ptr %8, ptr %5, align 8, !dbg !3686
  br label %9, !dbg !3688

9:                                                ; preds = %15, %2
  %10 = load i64, ptr %4, align 8, !dbg !3690
  %11 = icmp ugt i64 %10, 0, !dbg !3693
  br i1 %11, label %12, label %30, !dbg !3694

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !3695
  invoke void @_ZSt10_ConstructI7Vector3IfEJEEvPT_DpOT0_(ptr noundef %13)
          to label %14 unwind label %20, !dbg !3696

14:                                               ; preds = %12
  br label %15, !dbg !3696

15:                                               ; preds = %14
  %16 = load i64, ptr %4, align 8, !dbg !3697
  %17 = add i64 %16, -1, !dbg !3697
  store i64 %17, ptr %4, align 8, !dbg !3697
  %18 = load ptr, ptr %5, align 8, !dbg !3698
  %19 = getelementptr inbounds %class.Vector3, ptr %18, i32 1, !dbg !3698
  store ptr %19, ptr %5, align 8, !dbg !3698
  br label %9, !dbg !3699, !llvm.loop !3700

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3702
  %22 = extractvalue { ptr, i32 } %21, 0, !dbg !3702
  store ptr %22, ptr %6, align 8, !dbg !3702
  %23 = extractvalue { ptr, i32 } %21, 1, !dbg !3702
  store i32 %23, ptr %7, align 4, !dbg !3702
  br label %24, !dbg !3702

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8, !dbg !3703
  %26 = call ptr @__cxa_begin_catch(ptr %25) #3, !dbg !3703
  %27 = load ptr, ptr %3, align 8, !dbg !3704
  %28 = load ptr, ptr %5, align 8, !dbg !3706
  invoke void @_ZSt8_DestroyIP7Vector3IfEEvT_S3_(ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %32, !dbg !3707

29:                                               ; preds = %24
  invoke void @__cxa_rethrow() #16
          to label %46 unwind label %32, !dbg !3708

30:                                               ; preds = %9
  %31 = load ptr, ptr %5, align 8, !dbg !3709
  ret ptr %31, !dbg !3710

32:                                               ; preds = %29, %24
  %33 = landingpad { ptr, i32 }
          cleanup, !dbg !3711
  %34 = extractvalue { ptr, i32 } %33, 0, !dbg !3711
  store ptr %34, ptr %6, align 8, !dbg !3711
  %35 = extractvalue { ptr, i32 } %33, 1, !dbg !3711
  store i32 %35, ptr %7, align 4, !dbg !3711
  invoke void @__cxa_end_catch()
          to label %36 unwind label %43, !dbg !3712

36:                                               ; preds = %32
  br label %38, !dbg !3712

37:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !3712
  unreachable, !dbg !3712

38:                                               ; preds = %36
  %39 = load ptr, ptr %6, align 8, !dbg !3712
  %40 = load i32, ptr %7, align 4, !dbg !3712
  %41 = insertvalue { ptr, i32 } poison, ptr %39, 0, !dbg !3712
  %42 = insertvalue { ptr, i32 } %41, i32 %40, 1, !dbg !3712
  resume { ptr, i32 } %42, !dbg !3712

43:                                               ; preds = %32
  %44 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3712
  %45 = extractvalue { ptr, i32 } %44, 0, !dbg !3712
  call void @__clang_call_terminate(ptr %45) #17, !dbg !3712
  unreachable, !dbg !3712

46:                                               ; preds = %29
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI7Vector3IfEJEEvPT_DpOT0_(ptr noundef %0) #4 comdat !dbg !3713 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3719, metadata !DIExpression()), !dbg !3720
  %3 = load ptr, ptr %2, align 8, !dbg !3721
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %3), !dbg !3722
  ret void, !dbg !3723
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7Vector3IfEEvT_S3_(ptr noundef %0, ptr noundef %1) #4 comdat !dbg !3724 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3728, metadata !DIExpression()), !dbg !3729
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3730, metadata !DIExpression()), !dbg !3731
  %5 = load ptr, ptr %3, align 8, !dbg !3732
  %6 = load ptr, ptr %4, align 8, !dbg !3733
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7Vector3IfEEEvT_S5_(ptr noundef %5, ptr noundef %6), !dbg !3734
  ret void, !dbg !3735
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7Vector3IfEEEvT_S5_(ptr noundef %0, ptr noundef %1) #4 comdat align 2 !dbg !3736 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3741, metadata !DIExpression()), !dbg !3742
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3743, metadata !DIExpression()), !dbg !3744
  br label %5, !dbg !3745

5:                                                ; preds = %11, %2
  %6 = load ptr, ptr %3, align 8, !dbg !3746
  %7 = load ptr, ptr %4, align 8, !dbg !3749
  %8 = icmp ne ptr %6, %7, !dbg !3750
  br i1 %8, label %9, label %14, !dbg !3751

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !3752
  call void @_ZSt8_DestroyI7Vector3IfEEvPT_(ptr noundef %10), !dbg !3753
  br label %11, !dbg !3753

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !dbg !3754
  %13 = getelementptr inbounds %class.Vector3, ptr %12, i32 1, !dbg !3754
  store ptr %13, ptr %3, align 8, !dbg !3754
  br label %5, !dbg !3755, !llvm.loop !3756

14:                                               ; preds = %5
  ret void, !dbg !3758
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7Vector3IfEEvPT_(ptr noundef %0) #6 comdat !dbg !3759 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3760, metadata !DIExpression()), !dbg !3761
  %3 = load ptr, ptr %2, align 8, !dbg !3762
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %3) #3, !dbg !3763
  ret void, !dbg !3764
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6 comdat !dbg !3765 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3766, metadata !DIExpression()), !dbg !3767
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3768, metadata !DIExpression()), !dbg !3769
  %6 = load ptr, ptr %4, align 8, !dbg !3770
  %7 = load i64, ptr %6, align 8, !dbg !3770
  %8 = load ptr, ptr %5, align 8, !dbg !3772
  %9 = load i64, ptr %8, align 8, !dbg !3772
  %10 = icmp ult i64 %7, %9, !dbg !3773
  br i1 %10, label %11, label %13, !dbg !3774

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3775
  store ptr %12, ptr %3, align 8, !dbg !3776
  br label %15, !dbg !3776

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3777
  store ptr %14, ptr %3, align 8, !dbg !3778
  br label %15, !dbg !3778

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3779
  ret ptr %16, !dbg !3779
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 !dbg !3780 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3781, metadata !DIExpression()), !dbg !3782
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3783, metadata !DIExpression()), !dbg !3784
  %5 = load ptr, ptr %3, align 8, !dbg !3785
  %6 = load i64, ptr %4, align 8, !dbg !3786
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !3787
  ret ptr %7, !dbg !3788
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !3789 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3794, metadata !DIExpression()), !dbg !3796
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3797, metadata !DIExpression()), !dbg !3798
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3799, metadata !DIExpression()), !dbg !3800
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !3801
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !3803
  %10 = icmp ugt i64 %8, %9, !dbg !3804
  br i1 %10, label %11, label %16, !dbg !3805

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !3806
  %13 = icmp ugt i64 %12, 1537228672809129301, !dbg !3809
  br i1 %13, label %14, label %15, !dbg !3810

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #16, !dbg !3811
  unreachable, !dbg !3811

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #16, !dbg !3812
  unreachable, !dbg !3812

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !3813
  %18 = mul i64 %17, 12, !dbg !3814
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #18, !dbg !3815
  ret ptr %19, !dbg !3816
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #14

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7Vector3IfEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !3817 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3818, metadata !DIExpression()), !dbg !3819
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3822, metadata !DIExpression()), !dbg !3823
  %7 = load ptr, ptr %4, align 8, !dbg !3824
  %8 = load ptr, ptr %5, align 8, !dbg !3825
  %9 = load i64, ptr %6, align 8, !dbg !3826
  call void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3827
  ret void, !dbg !3828
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #6 comdat align 2 !dbg !3829 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3833, metadata !DIExpression()), !dbg !3834
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3835, metadata !DIExpression()), !dbg !3836
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3837, metadata !DIExpression()), !dbg !3838
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3839
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI7Vector3IfESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat align 2 !dbg !3842 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3847, metadata !DIExpression()), !dbg !3848
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3851, metadata !DIExpression()), !dbg !3852
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3855, metadata !DIExpression()), !dbg !3856
  %10 = load ptr, ptr %6, align 8, !dbg !3857
  %11 = load ptr, ptr %7, align 8, !dbg !3858
  %12 = load ptr, ptr %8, align 8, !dbg !3859
  %13 = load ptr, ptr %9, align 8, !dbg !3860
  %14 = call noundef ptr @_ZSt12__relocate_aIP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3861
  ret ptr %14, !dbg !3862
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat !dbg !3863 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3869, metadata !DIExpression()), !dbg !3870
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3871, metadata !DIExpression()), !dbg !3872
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3873, metadata !DIExpression()), !dbg !3874
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3875, metadata !DIExpression()), !dbg !3876
  %9 = load ptr, ptr %5, align 8, !dbg !3877
  %10 = call noundef ptr @_ZSt12__niter_baseIP7Vector3IfEET_S3_(ptr noundef %9) #3, !dbg !3878
  %11 = load ptr, ptr %6, align 8, !dbg !3879
  %12 = call noundef ptr @_ZSt12__niter_baseIP7Vector3IfEET_S3_(ptr noundef %11) #3, !dbg !3880
  %13 = load ptr, ptr %7, align 8, !dbg !3881
  %14 = call noundef ptr @_ZSt12__niter_baseIP7Vector3IfEET_S3_(ptr noundef %13) #3, !dbg !3882
  %15 = load ptr, ptr %8, align 8, !dbg !3883
  %16 = call noundef ptr @_ZSt14__relocate_a_1IP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #3, !dbg !3884
  ret ptr %16, !dbg !3885
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat !dbg !3886 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3887, metadata !DIExpression()), !dbg !3888
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3889, metadata !DIExpression()), !dbg !3890
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3891, metadata !DIExpression()), !dbg !3892
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3893, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3895, metadata !DIExpression()), !dbg !3896
  %10 = load ptr, ptr %7, align 8, !dbg !3897
  store ptr %10, ptr %9, align 8, !dbg !3896
  br label %11, !dbg !3898

11:                                               ; preds = %19, %4
  %12 = load ptr, ptr %5, align 8, !dbg !3899
  %13 = load ptr, ptr %6, align 8, !dbg !3902
  %14 = icmp ne ptr %12, %13, !dbg !3903
  br i1 %14, label %15, label %24, !dbg !3904

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !dbg !3905
  %17 = load ptr, ptr %5, align 8, !dbg !3906
  %18 = load ptr, ptr %8, align 8, !dbg !3907
  call void @_ZSt19__relocate_object_aI7Vector3IfES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %16, ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %18) #3, !dbg !3908
  br label %19, !dbg !3908

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !dbg !3909
  %21 = getelementptr inbounds %class.Vector3, ptr %20, i32 1, !dbg !3909
  store ptr %21, ptr %5, align 8, !dbg !3909
  %22 = load ptr, ptr %9, align 8, !dbg !3910
  %23 = getelementptr inbounds %class.Vector3, ptr %22, i32 1, !dbg !3910
  store ptr %23, ptr %9, align 8, !dbg !3910
  br label %11, !dbg !3911, !llvm.loop !3912

24:                                               ; preds = %11
  %25 = load ptr, ptr %9, align 8, !dbg !3914
  ret ptr %25, !dbg !3915
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP7Vector3IfEET_S3_(ptr noundef %0) #6 comdat !dbg !3916 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3921, metadata !DIExpression()), !dbg !3922
  %3 = load ptr, ptr %2, align 8, !dbg !3923
  ret ptr %3, !dbg !3924
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI7Vector3IfES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #6 comdat !dbg !3925 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3931, metadata !DIExpression()), !dbg !3932
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3933, metadata !DIExpression()), !dbg !3934
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3935, metadata !DIExpression()), !dbg !3936
  %7 = load ptr, ptr %6, align 8, !dbg !3937
  %8 = load ptr, ptr %4, align 8, !dbg !3938
  %9 = load ptr, ptr %5, align 8, !dbg !3939
  call void @_ZNSt16allocator_traitsISaI7Vector3IfEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(12) %9) #3, !dbg !3940
  %10 = load ptr, ptr %6, align 8, !dbg !3941
  %11 = load ptr, ptr %5, align 8, !dbg !3942
  call void @_ZNSt16allocator_traitsISaI7Vector3IfEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %11) #3, !dbg !3943
  ret void, !dbg !3944
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7Vector3IfEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #6 comdat align 2 !dbg !3945 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3953, metadata !DIExpression()), !dbg !3954
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3955, metadata !DIExpression()), !dbg !3956
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3957, metadata !DIExpression()), !dbg !3958
  %7 = load ptr, ptr %4, align 8, !dbg !3959
  %8 = load ptr, ptr %5, align 8, !dbg !3960
  %9 = load ptr, ptr %6, align 8, !dbg !3961
  call void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE9constructIS2_JS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(12) %9) #3, !dbg !3962
  ret void, !dbg !3963
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7Vector3IfEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #6 comdat align 2 !dbg !3964 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3969, metadata !DIExpression()), !dbg !3970
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3972
  %5 = load ptr, ptr %3, align 8, !dbg !3973
  %6 = load ptr, ptr %4, align 8, !dbg !3974
  call void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) #3, !dbg !3975
  ret void, !dbg !3976
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE9constructIS2_JS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #6 comdat align 2 !dbg !3977 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3981, metadata !DIExpression()), !dbg !3982
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3983, metadata !DIExpression()), !dbg !3984
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3985, metadata !DIExpression()), !dbg !3986
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3987
  %9 = load ptr, ptr %6, align 8, !dbg !3988
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false), !dbg !3989
  ret void, !dbg !3990
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #6 comdat align 2 !dbg !3991 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3995, metadata !DIExpression()), !dbg !3996
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3997, metadata !DIExpression()), !dbg !3998
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3999
  call void @_ZN7Vector3IfED2Ev(ptr noundef nonnull align 4 dereferenceable(12) %6) #3, !dbg !4000
  ret void, !dbg !4001
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7Vector3IfES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !4002 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4006, metadata !DIExpression()), !dbg !4007
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4008, metadata !DIExpression()), !dbg !4009
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4010, metadata !DIExpression()), !dbg !4011
  %7 = load ptr, ptr %4, align 8, !dbg !4012
  %8 = load ptr, ptr %5, align 8, !dbg !4013
  call void @_ZSt8_DestroyIP7Vector3IfEEvT_S3_(ptr noundef %7, ptr noundef %8), !dbg !4014
  ret void, !dbg !4015
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !4016 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4022, metadata !DIExpression()), !dbg !4024
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %3, i32 0, i32 0, !dbg !4025
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !4026
  %6 = load ptr, ptr %5, align 8, !dbg !4026
  %7 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %3, i32 0, i32 0, !dbg !4027
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !4028
  %9 = load ptr, ptr %8, align 8, !dbg !4028
  %10 = ptrtoint ptr %6 to i64, !dbg !4029
  %11 = ptrtoint ptr %9 to i64, !dbg !4029
  %12 = sub i64 %10, %11, !dbg !4029
  %13 = sdiv exact i64 %12, 4, !dbg !4029
  ret i64 %13, !dbg !4030
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4031 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4035, metadata !DIExpression()), !dbg !4036
  %11 = load ptr, ptr %3, align 8
  %12 = load i64, ptr %4, align 8, !dbg !4037
  %13 = icmp ne i64 %12, 0, !dbg !4039
  br i1 %13, label %14, label %115, !dbg !4040

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4041, metadata !DIExpression()), !dbg !4043
  %15 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4044
  store i64 %15, ptr %5, align 8, !dbg !4043
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4045, metadata !DIExpression()), !dbg !4046
  %16 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4047
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %16, i32 0, i32 2, !dbg !4048
  %18 = load ptr, ptr %17, align 8, !dbg !4048
  %19 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4049
  %20 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !4050
  %21 = load ptr, ptr %20, align 8, !dbg !4050
  %22 = ptrtoint ptr %18 to i64, !dbg !4051
  %23 = ptrtoint ptr %21 to i64, !dbg !4051
  %24 = sub i64 %22, %23, !dbg !4051
  %25 = sdiv exact i64 %24, 4, !dbg !4051
  store i64 %25, ptr %6, align 8, !dbg !4046
  %26 = load i64, ptr %5, align 8, !dbg !4052
  %27 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4054
  %28 = icmp ugt i64 %26, %27, !dbg !4055
  br i1 %28, label %35, label %29, !dbg !4056

29:                                               ; preds = %14
  %30 = load i64, ptr %6, align 8, !dbg !4057
  %31 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4058
  %32 = load i64, ptr %5, align 8, !dbg !4059
  %33 = sub i64 %31, %32, !dbg !4060
  %34 = icmp ugt i64 %30, %33, !dbg !4061
  br i1 %34, label %35, label %36, !dbg !4062

35:                                               ; preds = %29, %14
  unreachable, !dbg !4063

36:                                               ; preds = %29
  %37 = load i64, ptr %6, align 8, !dbg !4064
  %38 = load i64, ptr %4, align 8, !dbg !4066
  %39 = icmp uge i64 %37, %38, !dbg !4067
  br i1 %39, label %40, label %49, !dbg !4068

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4069
  %42 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %41, i32 0, i32 1, !dbg !4071
  %43 = load ptr, ptr %42, align 8, !dbg !4071
  %44 = load i64, ptr %4, align 8, !dbg !4072
  %45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4073
  %46 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %43, i64 noundef %44, ptr noundef nonnull align 1 dereferenceable(1) %45), !dbg !4074
  %47 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4075
  %48 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %47, i32 0, i32 1, !dbg !4076
  store ptr %46, ptr %48, align 8, !dbg !4077
  br label %114, !dbg !4078

49:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4079, metadata !DIExpression()), !dbg !4081
  %50 = load i64, ptr %4, align 8, !dbg !4082
  %51 = call noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %50, ptr noundef @.str.1), !dbg !4083
  store i64 %51, ptr %7, align 8, !dbg !4081
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4084, metadata !DIExpression()), !dbg !4085
  %52 = load i64, ptr %7, align 8, !dbg !4086
  %53 = call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %52), !dbg !4087
  store ptr %53, ptr %8, align 8, !dbg !4085
  %54 = load ptr, ptr %8, align 8, !dbg !4088
  %55 = load i64, ptr %5, align 8, !dbg !4092
  %56 = getelementptr inbounds float, ptr %54, i64 %55, !dbg !4093
  %57 = load i64, ptr %4, align 8, !dbg !4094
  %58 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4095
  %59 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %56, i64 noundef %57, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %60 unwind label %61, !dbg !4096

60:                                               ; preds = %49
  br label %76, !dbg !4097

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4098
  %63 = extractvalue { ptr, i32 } %62, 0, !dbg !4098
  store ptr %63, ptr %9, align 8, !dbg !4098
  %64 = extractvalue { ptr, i32 } %62, 1, !dbg !4098
  store i32 %64, ptr %10, align 4, !dbg !4098
  br label %65, !dbg !4098

65:                                               ; preds = %61
  %66 = load ptr, ptr %9, align 8, !dbg !4097
  %67 = call ptr @__cxa_begin_catch(ptr %66) #3, !dbg !4097
  %68 = load ptr, ptr %8, align 8, !dbg !4099
  %69 = load i64, ptr %7, align 8, !dbg !4101
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %68, i64 noundef %69)
          to label %70 unwind label %71, !dbg !4102

70:                                               ; preds = %65
  invoke void @__cxa_rethrow() #16
          to label %124 unwind label %71, !dbg !4103

71:                                               ; preds = %70, %65
  %72 = landingpad { ptr, i32 }
          cleanup, !dbg !4104
  %73 = extractvalue { ptr, i32 } %72, 0, !dbg !4104
  store ptr %73, ptr %9, align 8, !dbg !4104
  %74 = extractvalue { ptr, i32 } %72, 1, !dbg !4104
  store i32 %74, ptr %10, align 4, !dbg !4104
  invoke void @__cxa_end_catch()
          to label %75 unwind label %121, !dbg !4105

75:                                               ; preds = %71
  br label %116, !dbg !4105

76:                                               ; preds = %60
  %77 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4106
  %78 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %77, i32 0, i32 0, !dbg !4107
  %79 = load ptr, ptr %78, align 8, !dbg !4107
  %80 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4108
  %81 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %80, i32 0, i32 1, !dbg !4109
  %82 = load ptr, ptr %81, align 8, !dbg !4109
  %83 = load ptr, ptr %8, align 8, !dbg !4110
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #3, !dbg !4111
  %85 = call noundef ptr @_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_(ptr noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef nonnull align 1 dereferenceable(1) %84) #3, !dbg !4112
  %86 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4113
  %87 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %86, i32 0, i32 0, !dbg !4114
  %88 = load ptr, ptr %87, align 8, !dbg !4114
  %89 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4115
  %90 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %89, i32 0, i32 2, !dbg !4116
  %91 = load ptr, ptr %90, align 8, !dbg !4116
  %92 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4117
  %93 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %92, i32 0, i32 0, !dbg !4118
  %94 = load ptr, ptr %93, align 8, !dbg !4118
  %95 = ptrtoint ptr %91 to i64, !dbg !4119
  %96 = ptrtoint ptr %94 to i64, !dbg !4119
  %97 = sub i64 %95, %96, !dbg !4119
  %98 = sdiv exact i64 %97, 4, !dbg !4119
  call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %88, i64 noundef %98), !dbg !4120
  %99 = load ptr, ptr %8, align 8, !dbg !4121
  %100 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4122
  %101 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %100, i32 0, i32 0, !dbg !4123
  store ptr %99, ptr %101, align 8, !dbg !4124
  %102 = load ptr, ptr %8, align 8, !dbg !4125
  %103 = load i64, ptr %5, align 8, !dbg !4126
  %104 = getelementptr inbounds float, ptr %102, i64 %103, !dbg !4127
  %105 = load i64, ptr %4, align 8, !dbg !4128
  %106 = getelementptr inbounds float, ptr %104, i64 %105, !dbg !4129
  %107 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4130
  %108 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %107, i32 0, i32 1, !dbg !4131
  store ptr %106, ptr %108, align 8, !dbg !4132
  %109 = load ptr, ptr %8, align 8, !dbg !4133
  %110 = load i64, ptr %7, align 8, !dbg !4134
  %111 = getelementptr inbounds float, ptr %109, i64 %110, !dbg !4135
  %112 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %11, i32 0, i32 0, !dbg !4136
  %113 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %112, i32 0, i32 2, !dbg !4137
  store ptr %111, ptr %113, align 8, !dbg !4138
  br label %114

114:                                              ; preds = %76, %40
  br label %115, !dbg !4139

115:                                              ; preds = %114, %2
  ret void, !dbg !4140

116:                                              ; preds = %75
  %117 = load ptr, ptr %9, align 8, !dbg !4105
  %118 = load i32, ptr %10, align 4, !dbg !4105
  %119 = insertvalue { ptr, i32 } poison, ptr %117, 0, !dbg !4105
  %120 = insertvalue { ptr, i32 } %119, i32 %118, 1, !dbg !4105
  resume { ptr, i32 } %120, !dbg !4105

121:                                              ; preds = %71
  %122 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4105
  %123 = extractvalue { ptr, i32 } %122, 0, !dbg !4105
  call void @__clang_call_terminate(ptr %123) #17, !dbg !4105
  unreachable, !dbg !4105

124:                                              ; preds = %70
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4141 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4145, metadata !DIExpression()), !dbg !4146
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4147, metadata !DIExpression()), !dbg !4148
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4149, metadata !DIExpression()), !dbg !4151
  %7 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %6, i32 0, i32 0, !dbg !4152
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !4153
  %9 = load ptr, ptr %8, align 8, !dbg !4153
  %10 = load ptr, ptr %4, align 8, !dbg !4154
  %11 = ptrtoint ptr %9 to i64, !dbg !4155
  %12 = ptrtoint ptr %10 to i64, !dbg !4155
  %13 = sub i64 %11, %12, !dbg !4155
  %14 = sdiv exact i64 %13, 4, !dbg !4155
  store i64 %14, ptr %5, align 8, !dbg !4151
  %15 = load i64, ptr %5, align 8, !dbg !4151
  %16 = icmp ne i64 %15, 0, !dbg !4151
  br i1 %16, label %17, label %27, !dbg !4156

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !4157
  %19 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %6, i32 0, i32 0, !dbg !4159
  %20 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !4160
  %21 = load ptr, ptr %20, align 8, !dbg !4160
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !4161
  invoke void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %28, !dbg !4162

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !4163
  %25 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %6, i32 0, i32 0, !dbg !4164
  %26 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %25, i32 0, i32 1, !dbg !4165
  store ptr %24, ptr %26, align 8, !dbg !4166
  br label %27, !dbg !4167

27:                                               ; preds = %23, %2
  ret void, !dbg !4168

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4162
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !4162
  call void @__clang_call_terminate(ptr %30) #17, !dbg !4162
  unreachable, !dbg !4162
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !4169 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4171, metadata !DIExpression()), !dbg !4172
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !4173
  %5 = call noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !4174
  ret i64 %5, !dbg !4175
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !4176 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4181, metadata !DIExpression()), !dbg !4182
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4183, metadata !DIExpression()), !dbg !4184
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4185, metadata !DIExpression()), !dbg !4186
  %7 = load ptr, ptr %4, align 8, !dbg !4187
  %8 = load i64, ptr %5, align 8, !dbg !4188
  %9 = call noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %7, i64 noundef %8), !dbg !4189
  ret ptr %9, !dbg !4190
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !4191 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4197, metadata !DIExpression()), !dbg !4199
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %3, i32 0, i32 0, !dbg !4200
  ret ptr %4, !dbg !4201
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !4202 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4207, metadata !DIExpression()), !dbg !4208
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4209, metadata !DIExpression()), !dbg !4210
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4211, metadata !DIExpression()), !dbg !4212
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4213
  %11 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4215
  %12 = sub i64 %10, %11, !dbg !4216
  %13 = load i64, ptr %5, align 8, !dbg !4217
  %14 = icmp ult i64 %12, %13, !dbg !4218
  br i1 %14, label %15, label %17, !dbg !4219

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !4220
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #16, !dbg !4221
  unreachable, !dbg !4221

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4222, metadata !DIExpression()), !dbg !4223
  %18 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4224
  %19 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4225
  store i64 %19, ptr %8, align 8, !dbg !4225
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !4226
  %21 = load i64, ptr %20, align 8, !dbg !4226
  %22 = add i64 %18, %21, !dbg !4227
  store i64 %22, ptr %7, align 8, !dbg !4223
  %23 = load i64, ptr %7, align 8, !dbg !4228
  %24 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4229
  %25 = icmp ult i64 %23, %24, !dbg !4230
  br i1 %25, label %30, label %26, !dbg !4231

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !4232
  %28 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4233
  %29 = icmp ugt i64 %27, %28, !dbg !4234
  br i1 %29, label %30, label %32, !dbg !4235

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !4236
  br label %34, !dbg !4235

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !4237
  br label %34, !dbg !4235

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !4235
  ret i64 %35, !dbg !4238
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #4 comdat align 2 !dbg !4239 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4245, metadata !DIExpression()), !dbg !4246
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !4247
  %7 = icmp ne i64 %6, 0, !dbg !4248
  br i1 %7, label %8, label %12, !dbg !4247

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %5, i32 0, i32 0, !dbg !4249
  %10 = load i64, ptr %4, align 8, !dbg !4250
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !4251
  br label %13, !dbg !4247

12:                                               ; preds = %2
  br label %13, !dbg !4247

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !4247
  ret ptr %14, !dbg !4252
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !4253 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4257, metadata !DIExpression()), !dbg !4258
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4259, metadata !DIExpression()), !dbg !4260
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4261, metadata !DIExpression()), !dbg !4262
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !4263
  %9 = icmp ne ptr %8, null, !dbg !4263
  br i1 %9, label %10, label %14, !dbg !4265

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %7, i32 0, i32 0, !dbg !4266
  %12 = load ptr, ptr %5, align 8, !dbg !4267
  %13 = load i64, ptr %6, align 8, !dbg !4268
  call void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !4269
  br label %14, !dbg !4269

14:                                               ; preds = %10, %3
  ret void, !dbg !4270
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat align 2 !dbg !237 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4271, metadata !DIExpression()), !dbg !4272
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4273, metadata !DIExpression()), !dbg !4274
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4275, metadata !DIExpression()), !dbg !4276
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4277, metadata !DIExpression()), !dbg !4278
  %10 = load ptr, ptr %5, align 8, !dbg !4279
  %11 = load ptr, ptr %6, align 8, !dbg !4280
  %12 = load ptr, ptr %7, align 8, !dbg !4281
  %13 = load ptr, ptr %8, align 8, !dbg !4282
  %14 = call noundef ptr @_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !4283
  ret ptr %14, !dbg !4284
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !4285 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i64 2305843009213693951, ptr %3, align 8, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4295, metadata !DIExpression()), !dbg !4296
  %5 = load ptr, ptr %2, align 8, !dbg !4297
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !4298
  store i64 %6, ptr %4, align 8, !dbg !4296
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !4299
  %8 = load i64, ptr %7, align 8, !dbg !4299
  ret i64 %8, !dbg !4300
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 !dbg !4301 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4309, metadata !DIExpression()), !dbg !4311
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %3, i32 0, i32 0, !dbg !4312
  ret ptr %4, !dbg !4313
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !4314 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4315, metadata !DIExpression()), !dbg !4316
  %3 = load ptr, ptr %2, align 8, !dbg !4317
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4318
  ret i64 %4, !dbg !4319
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !4320 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4327, metadata !DIExpression()), !dbg !4329
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4330
  ret i64 %4, !dbg !4331
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 !dbg !4332 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4334, metadata !DIExpression()), !dbg !4335
  %3 = load ptr, ptr %2, align 8
  ret i64 2305843009213693951, !dbg !4336
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %0, i64 noundef %1) #4 comdat !dbg !4337 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4341, metadata !DIExpression()), !dbg !4342
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4343, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4345, metadata !DIExpression()), !dbg !4346
  store i8 1, ptr %5, align 1, !dbg !4346
  %6 = load ptr, ptr %3, align 8, !dbg !4347
  %7 = load i64, ptr %4, align 8, !dbg !4348
  %8 = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %6, i64 noundef %7), !dbg !4349
  ret ptr %8, !dbg !4350
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #4 comdat align 2 !dbg !4351 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4356, metadata !DIExpression()), !dbg !4357
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4358, metadata !DIExpression()), !dbg !4359
  %6 = load i64, ptr %4, align 8, !dbg !4360
  %7 = icmp ugt i64 %6, 0, !dbg !4362
  br i1 %7, label %8, label %18, !dbg !4363

8:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4364, metadata !DIExpression()), !dbg !4372
  %9 = load ptr, ptr %3, align 8, !dbg !4373
  store ptr %9, ptr %5, align 8, !dbg !4372
  %10 = load ptr, ptr %5, align 8, !dbg !4374
  call void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %10), !dbg !4375
  %11 = load ptr, ptr %3, align 8, !dbg !4376
  %12 = getelementptr inbounds float, ptr %11, i32 1, !dbg !4376
  store ptr %12, ptr %3, align 8, !dbg !4376
  %13 = load ptr, ptr %3, align 8, !dbg !4377
  %14 = load i64, ptr %4, align 8, !dbg !4378
  %15 = sub i64 %14, 1, !dbg !4379
  %16 = load ptr, ptr %5, align 8, !dbg !4380
  %17 = call noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %13, i64 noundef %15, ptr noundef nonnull align 4 dereferenceable(4) %16), !dbg !4381
  store ptr %17, ptr %3, align 8, !dbg !4382
  br label %18, !dbg !4383

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr %3, align 8, !dbg !4384
  ret ptr %19, !dbg !4385
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %0) #6 comdat !dbg !4386 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4390, metadata !DIExpression()), !dbg !4391
  %3 = load ptr, ptr %2, align 8, !dbg !4392
  store float 0.000000e+00, ptr %3, align 4, !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat !dbg !4395 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::random_access_iterator_tag", align 1
  %8 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4400, metadata !DIExpression()), !dbg !4401
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4402, metadata !DIExpression()), !dbg !4403
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4404, metadata !DIExpression()), !dbg !4405
  %9 = load ptr, ptr %4, align 8, !dbg !4406
  %10 = load i64, ptr %5, align 8, !dbg !4407
  %11 = call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %10), !dbg !4408
  %12 = load ptr, ptr %6, align 8, !dbg !4409
  call void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !4410
  %13 = call noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %9, i64 noundef %11, ptr noundef nonnull align 4 dereferenceable(4) %12), !dbg !4411
  ret ptr %13, !dbg !4412
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat !dbg !4413 {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4428, metadata !DIExpression()), !dbg !4429
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4430, metadata !DIExpression()), !dbg !4431
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4434, metadata !DIExpression()), !dbg !4435
  %9 = load i64, ptr %7, align 8, !dbg !4436
  %10 = icmp ule i64 %9, 0, !dbg !4438
  br i1 %10, label %11, label %13, !dbg !4439

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !4440
  store ptr %12, ptr %4, align 8, !dbg !4441
  br label %22, !dbg !4441

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !dbg !4442
  %15 = load ptr, ptr %6, align 8, !dbg !4443
  %16 = load i64, ptr %7, align 8, !dbg !4444
  %17 = getelementptr inbounds float, ptr %15, i64 %16, !dbg !4445
  %18 = load ptr, ptr %8, align 8, !dbg !4446
  call void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %14, ptr noundef %17, ptr noundef nonnull align 4 dereferenceable(4) %18), !dbg !4447
  %19 = load ptr, ptr %6, align 8, !dbg !4448
  %20 = load i64, ptr %7, align 8, !dbg !4449
  %21 = getelementptr inbounds float, ptr %19, i64 %20, !dbg !4450
  store ptr %21, ptr %4, align 8, !dbg !4451
  br label %22, !dbg !4451

22:                                               ; preds = %13, %11
  %23 = load ptr, ptr %4, align 8, !dbg !4452
  ret ptr %23, !dbg !4452
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) #6 comdat !dbg !4453 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4456, metadata !DIExpression()), !dbg !4457
  %3 = load i64, ptr %2, align 8, !dbg !4458
  ret i64 %3, !dbg !4459
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #6 comdat !dbg !4460 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4469
  ret void, !dbg !4470
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat !dbg !4471 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4476, metadata !DIExpression()), !dbg !4477
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4478, metadata !DIExpression()), !dbg !4479
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4480, metadata !DIExpression()), !dbg !4481
  %7 = load ptr, ptr %4, align 8, !dbg !4482
  %8 = load ptr, ptr %5, align 8, !dbg !4483
  %9 = load ptr, ptr %6, align 8, !dbg !4484
  call void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9), !dbg !4485
  ret void, !dbg !4486
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #6 comdat !dbg !4487 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4497, metadata !DIExpression()), !dbg !4498
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4499, metadata !DIExpression()), !dbg !4500
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4503, metadata !DIExpression()), !dbg !4504
  %8 = load ptr, ptr %6, align 8, !dbg !4505
  %9 = load float, ptr %8, align 4, !dbg !4505
  store float %9, ptr %7, align 4, !dbg !4504
  br label %10, !dbg !4506

10:                                               ; preds = %17, %3
  %11 = load ptr, ptr %4, align 8, !dbg !4507
  %12 = load ptr, ptr %5, align 8, !dbg !4510
  %13 = icmp ne ptr %11, %12, !dbg !4511
  br i1 %13, label %14, label %20, !dbg !4512

14:                                               ; preds = %10
  %15 = load float, ptr %7, align 4, !dbg !4513
  %16 = load ptr, ptr %4, align 8, !dbg !4514
  store float %15, ptr %16, align 4, !dbg !4515
  br label %17, !dbg !4516

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !dbg !4517
  %19 = getelementptr inbounds float, ptr %18, i32 1, !dbg !4517
  store ptr %19, ptr %4, align 8, !dbg !4517
  br label %10, !dbg !4518, !llvm.loop !4519

20:                                               ; preds = %10
  ret void, !dbg !4521
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 !dbg !4522 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4523, metadata !DIExpression()), !dbg !4524
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4525, metadata !DIExpression()), !dbg !4526
  %5 = load ptr, ptr %3, align 8, !dbg !4527
  %6 = load i64, ptr %4, align 8, !dbg !4528
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !4529
  ret ptr %7, !dbg !4530
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 !dbg !4531 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4536, metadata !DIExpression()), !dbg !4538
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4539, metadata !DIExpression()), !dbg !4540
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4541, metadata !DIExpression()), !dbg !4542
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !4543
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !4545
  %10 = icmp ugt i64 %8, %9, !dbg !4546
  br i1 %10, label %11, label %16, !dbg !4547

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !4548
  %13 = icmp ugt i64 %12, 4611686018427387903, !dbg !4551
  br i1 %13, label %14, label %15, !dbg !4552

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #16, !dbg !4553
  unreachable, !dbg !4553

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #16, !dbg !4554
  unreachable, !dbg !4554

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !4555
  %18 = mul i64 %17, 4, !dbg !4556
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #18, !dbg !4557
  ret ptr %19, !dbg !4558
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 !dbg !4559 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4560, metadata !DIExpression()), !dbg !4561
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4562, metadata !DIExpression()), !dbg !4563
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4564, metadata !DIExpression()), !dbg !4565
  %7 = load ptr, ptr %4, align 8, !dbg !4566
  %8 = load ptr, ptr %5, align 8, !dbg !4567
  %9 = load i64, ptr %6, align 8, !dbg !4568
  call void @_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !4569
  ret void, !dbg !4570
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #6 comdat align 2 !dbg !4571 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4575, metadata !DIExpression()), !dbg !4576
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4579, metadata !DIExpression()), !dbg !4580
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !4581
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !4582
  ret void, !dbg !4583
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat align 2 !dbg !4584 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4588, metadata !DIExpression()), !dbg !4589
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4590, metadata !DIExpression()), !dbg !4591
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4592, metadata !DIExpression()), !dbg !4593
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4594, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4596, metadata !DIExpression()), !dbg !4597
  %10 = load ptr, ptr %6, align 8, !dbg !4598
  %11 = load ptr, ptr %7, align 8, !dbg !4599
  %12 = load ptr, ptr %8, align 8, !dbg !4600
  %13 = load ptr, ptr %9, align 8, !dbg !4601
  %14 = call noundef ptr @_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !4602
  ret ptr %14, !dbg !4603
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat !dbg !4604 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4610, metadata !DIExpression()), !dbg !4611
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4612, metadata !DIExpression()), !dbg !4613
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4614, metadata !DIExpression()), !dbg !4615
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4616, metadata !DIExpression()), !dbg !4617
  %9 = load ptr, ptr %5, align 8, !dbg !4618
  %10 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %9) #3, !dbg !4619
  %11 = load ptr, ptr %6, align 8, !dbg !4620
  %12 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %11) #3, !dbg !4621
  %13 = load ptr, ptr %7, align 8, !dbg !4622
  %14 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %13) #3, !dbg !4623
  %15 = load ptr, ptr %8, align 8, !dbg !4624
  %16 = call noundef ptr @_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #3, !dbg !4625
  ret ptr %16, !dbg !4626
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat !dbg !4627 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4637, metadata !DIExpression()), !dbg !4638
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4639, metadata !DIExpression()), !dbg !4640
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4641, metadata !DIExpression()), !dbg !4642
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4645, metadata !DIExpression()), !dbg !4647
  %10 = load ptr, ptr %6, align 8, !dbg !4648
  %11 = load ptr, ptr %5, align 8, !dbg !4649
  %12 = ptrtoint ptr %10 to i64, !dbg !4650
  %13 = ptrtoint ptr %11 to i64, !dbg !4650
  %14 = sub i64 %12, %13, !dbg !4650
  %15 = sdiv exact i64 %14, 4, !dbg !4650
  store i64 %15, ptr %9, align 8, !dbg !4647
  %16 = load i64, ptr %9, align 8, !dbg !4651
  %17 = icmp sgt i64 %16, 0, !dbg !4653
  br i1 %17, label %18, label %23, !dbg !4654

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !4655
  %20 = load ptr, ptr %5, align 8, !dbg !4656
  %21 = load i64, ptr %9, align 8, !dbg !4657
  %22 = mul i64 %21, 4, !dbg !4658
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false), !dbg !4659
  br label %23, !dbg !4659

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8, !dbg !4660
  %25 = load i64, ptr %9, align 8, !dbg !4661
  %26 = getelementptr inbounds float, ptr %24, i64 %25, !dbg !4662
  ret ptr %26, !dbg !4663
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) #6 comdat !dbg !4664 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4667, metadata !DIExpression()), !dbg !4668
  %3 = load ptr, ptr %2, align 8, !dbg !4669
  ret ptr %3, !dbg !4670
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #4 comdat !dbg !4671 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4674, metadata !DIExpression()), !dbg !4675
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4676, metadata !DIExpression()), !dbg !4677
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4678, metadata !DIExpression()), !dbg !4679
  %7 = load ptr, ptr %4, align 8, !dbg !4680
  %8 = load ptr, ptr %5, align 8, !dbg !4681
  call void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %7, ptr noundef %8), !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %0, ptr noundef %1) #4 comdat !dbg !4684 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4688, metadata !DIExpression()), !dbg !4689
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4690, metadata !DIExpression()), !dbg !4691
  %5 = load ptr, ptr %3, align 8, !dbg !4692
  %6 = load ptr, ptr %4, align 8, !dbg !4693
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %5, ptr noundef %6), !dbg !4694
  ret void, !dbg !4695
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 !dbg !4696 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4700, metadata !DIExpression()), !dbg !4701
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4702, metadata !DIExpression()), !dbg !4703
  ret void, !dbg !4704
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_BodyGeometry.cpp() #0 section ".text.startup" !dbg !4705 {
  call void @__cxx_global_var_init(), !dbg !4707
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { allocsize(0) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575}
!llvm.ident = !{!1576}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "YRot180", linkageName: "_ZL7YRot180", scope: !9, file: !309, line: 40, type: !310, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !25, globals: !299, imports: !327, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "../TrackingBenchmark/BodyGeometry.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "4dcc840187b2ed7b7b85dce62ec65538")
!11 = !{!12, !20}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 30, baseType: !14, size: 32, elements: !15, identifier: "_ZTS7DMOrder")
!13 = !DIFile(filename: "../TrackingBenchmark/DMatrix.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "683bf5578c88d572073a2ceae8029be4")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "XYZ", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "ZYX", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "YXZ", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "ZXY", value: 3, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 29, baseType: !14, size: 32, elements: !21, identifier: "_ZTS6DMAxis")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "X", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "Y", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "Z", value: 2, isUnsigned: true)
!25 = !{!26, !64, !30, !79, !80, !82, !85, !86, !88, !149, !105, !236, !89}
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "DMatrix<float>", file: !13, line: 34, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !27, templateParams: !77, identifier: "_ZTS7DMatrixIfE")
!27 = !{!28, !34, !38, !41, !44, !49, !53, !57, !58, !59, !60, !65, !66, !69}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !13, line: 36, baseType: !29, size: 384, flags: DIFlagProtected)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 384, elements: !31)
!30 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!31 = !{!32, !33}
!32 = !DISubrange(count: 3)
!33 = !DISubrange(count: 4)
!34 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 39, type: !35, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!38 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 42, type: !39, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !37, !30, !30, !30}
!41 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 45, type: !42, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !37, !30, !30, !30, !30, !30, !30}
!44 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 48, type: !45, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !37, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!49 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 51, type: !50, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !37, !52, !30}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMAxis", file: !13, line: 29, baseType: !20)
!53 = !DISubprogram(name: "DMatrix", scope: !26, file: !13, line: 54, type: !54, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !37, !30, !30, !30, !56}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMOrder", file: !13, line: 30, baseType: !12)
!57 = !DISubprogram(name: "~DMatrix", scope: !26, file: !13, line: 57, type: !35, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !26, file: !13, line: 60, type: !35, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!59 = !DISubprogram(name: "SetIdentity", linkageName: "_ZN7DMatrixIfE11SetIdentityEv", scope: !26, file: !13, line: 63, type: !35, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !26, file: !13, line: 66, type: !61, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !37, !64, !64}
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DISubprogram(name: "Set", linkageName: "_ZN7DMatrixIfE3SetEPKf", scope: !26, file: !13, line: 69, type: !45, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!66 = !DISubprogram(name: "SetTranslation", linkageName: "_ZN7DMatrixIfE14SetTranslationEfff", scope: !26, file: !13, line: 72, type: !67, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !37, !48, !48, !48}
!69 = !DISubprogram(name: "Print", linkageName: "_ZN7DMatrixIfE5PrintERSo", scope: !26, file: !13, line: 75, type: !70, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !37, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !74, line: 141, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!75 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !76, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
!77 = !{!78}
!78 = !DITemplateTypeParameter(name: "T", type: !30)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !81, line: 424, baseType: !82, flags: DIFlagPublic)
!81 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !83, line: 280, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Vector3<float>", file: !90, line: 36, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !91, templateParams: !77, identifier: "_ZTS7Vector3IfE")
!90 = !DIFile(filename: "../TrackingBenchmark/SmallVectors.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "633755f321eda28e3f3fa646094388cc")
!91 = !{!92, !93, !94, !95, !99, !102, !106, !107, !108, !114, !115, !118, !119, !122, !123, !126, !127, !130, !133, !134, !137, !138, !141, !145}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !89, file: !90, line: 38, baseType: !30, size: 32, flags: DIFlagPublic)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !89, file: !90, line: 38, baseType: !30, size: 32, offset: 32, flags: DIFlagPublic)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !89, file: !90, line: 38, baseType: !30, size: 32, offset: 64, flags: DIFlagPublic)
!95 = !DISubprogram(name: "Vector3", scope: !89, file: !90, line: 40, type: !96, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!99 = !DISubprogram(name: "Vector3", scope: !89, file: !90, line: 41, type: !100, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !98, !30, !30, !30}
!102 = !DISubprogram(name: "Vector3", scope: !89, file: !90, line: 42, type: !103, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !98, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!106 = !DISubprogram(name: "~Vector3", scope: !89, file: !90, line: 44, type: !96, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!107 = !DISubprogram(name: "Set", linkageName: "_ZN7Vector3IfE3SetEfff", scope: !89, file: !90, line: 47, type: !100, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!108 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !89, file: !90, line: 51, type: !109, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!89, !111, !113}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !112, size: 64)
!114 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector3IfEplERKS0_", scope: !89, file: !90, line: 55, type: !109, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!115 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector3IfEpLERKS0_", scope: !89, file: !90, line: 59, type: !116, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !98, !113}
!118 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector3IfEmIERKS0_", scope: !89, file: !90, line: 63, type: !116, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlEf", scope: !89, file: !90, line: 67, type: !120, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!89, !111, !48}
!122 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector3IfEdvEf", scope: !89, file: !90, line: 71, type: !120, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector3IfEmLEf", scope: !89, file: !90, line: 75, type: !124, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !98, !48}
!126 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector3IfEdVEf", scope: !89, file: !90, line: 79, type: !124, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!127 = !DISubprogram(name: "Dot", linkageName: "_ZNK7Vector3IfE3DotERKS0_", scope: !89, file: !90, line: 83, type: !128, scopeLine: 83, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!30, !111, !113}
!130 = !DISubprogram(name: "Norm", linkageName: "_ZNK7Vector3IfE4NormEv", scope: !89, file: !90, line: 87, type: !131, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!89, !111}
!133 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERKS0_", scope: !89, file: !90, line: 92, type: !109, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "Mag", linkageName: "_ZNK7Vector3IfE3MagEv", scope: !89, file: !90, line: 98, type: !135, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!30, !111}
!137 = !DISubprogram(name: "MagSq", linkageName: "_ZNK7Vector3IfE5MagSqEv", scope: !89, file: !90, line: 102, type: !135, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!138 = !DISubprogram(name: "Print", linkageName: "_ZNK7Vector3IfE5PrintEv", scope: !89, file: !90, line: 106, type: !139, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !111}
!141 = !DISubprogram(name: "operator[]", linkageName: "_ZN7Vector3IfEixEi", scope: !89, file: !90, line: 110, type: !142, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!63, !98, !144}
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!145 = !DISubprogram(name: "operator==", linkageName: "_ZN7Vector3IfEeqERKS0_", scope: !89, file: !90, line: 116, type: !146, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !98, !113}
!148 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !150, file: !81, line: 468, baseType: !221)
!150 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_", scope: !151, file: !81, line: 465, type: !152, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !220, retainedNodes: !216)
!151 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<Vector3<float>, std::allocator<Vector3<float> > >", scope: !2, file: !81, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI7Vector3IfESaIS1_EE")
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !154, !154, !154, !211}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !151, file: !81, line: 415, baseType: !155, flags: DIFlagPublic)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !156, file: !81, line: 89, baseType: !157)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<Vector3<float>, std::allocator<Vector3<float> > >", scope: !2, file: !81, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseI7Vector3IfESaIS1_EE")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !159, file: !158, line: 57, baseType: !169)
!158 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<Vector3<float> >, Vector3<float> >", scope: !160, file: !158, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !161, templateParams: !209, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_EE")
!160 = !DINamespace(name: "__gnu_cxx", scope: null)
!161 = !{!162, !193, !198, !202, !205, !206, !207, !208}
!162 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !159, baseType: !163, extraData: i32 0)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<Vector3<float> > >", scope: !2, file: !164, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !165, templateParams: !191, identifier: "_ZTSSt16allocator_traitsISaI7Vector3IfEEE")
!164 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!165 = !{!166, !175, !179, !182, !188}
!166 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_m", scope: !163, file: !164, line: 463, type: !167, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !170, !174}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !163, file: !164, line: 420, baseType: !88)
!170 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !163, file: !164, line: 414, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<Vector3<float> >", scope: !2, file: !173, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI7Vector3IfEE")
!173 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !164, line: 435, baseType: !82)
!175 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_mPKv", scope: !163, file: !164, line: 477, type: !176, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!169, !170, !174, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !164, line: 429, baseType: !86)
!179 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE10deallocateERS2_PS1_m", scope: !163, file: !164, line: 495, type: !180, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !170, !169, !174}
!182 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE8max_sizeERKS2_", scope: !163, file: !164, line: 547, type: !183, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !163, file: !164, line: 435, baseType: !82)
!186 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!188 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE37select_on_container_copy_constructionERKS2_", scope: !163, file: !164, line: 562, type: !189, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!171, !186}
!191 = !{!192}
!192 = !DITemplateTypeParameter(name: "_Alloc", type: !172)
!193 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E17_S_select_on_copyERKS3_", scope: !159, file: !158, line: 97, type: !194, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!172, !196}
!196 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!198 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E10_S_on_swapERS3_S5_", scope: !159, file: !158, line: 100, type: !199, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !201}
!201 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !172, size: 64)
!202 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E27_S_propagate_on_copy_assignEv", scope: !159, file: !158, line: 103, type: !203, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!148}
!205 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E27_S_propagate_on_move_assignEv", scope: !159, file: !158, line: 106, type: !203, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!206 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E20_S_propagate_on_swapEv", scope: !159, file: !158, line: 109, type: !203, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!207 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E15_S_always_equalEv", scope: !159, file: !158, line: 112, type: !203, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!208 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E15_S_nothrow_moveEv", scope: !159, file: !158, line: 115, type: !203, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!209 = !{!192, !210}
!210 = !DITemplateTypeParameter(type: !89)
!211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !151, file: !81, line: 410, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !156, file: !81, line: 87, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !215, file: !158, line: 120, baseType: !219)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<Vector3<float> >", scope: !159, file: !158, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !217, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI7Vector3IfEES2_E6rebindIS2_EE")
!216 = !{}
!217 = !{!218}
!218 = !DITemplateTypeParameter(name: "_Tp", type: !89)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<Vector3<float> >", scope: !163, file: !164, line: 450, baseType: !172)
!220 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_", scope: !151, file: !81, line: 465, type: !152, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !2, file: !222, line: 91, baseType: !223)
!222 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !2, file: !222, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !224, templateParams: !233, identifier: "_ZTSSt17integral_constantIbLb1EE")
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !222, line: 67, baseType: !226, flags: DIFlagStaticMember, extraData: i1 true)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!227 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !223, file: !222, line: 70, type: !228, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !223, file: !222, line: 68, baseType: !148)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!233 = !{!234, !235}
!234 = !DITemplateTypeParameter(name: "_Tp", type: !148)
!235 = !DITemplateValueParameter(name: "__v", type: !148, value: i8 1)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !237, file: !81, line: 468, baseType: !221)
!237 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_", scope: !238, file: !81, line: 465, type: !239, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !298, retainedNodes: !216)
!238 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<float, std::allocator<float> >", scope: !2, file: !81, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorIfSaIfEE")
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !241, !241, !241, !290}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !238, file: !81, line: 415, baseType: !242, flags: DIFlagPublic)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !243, file: !81, line: 89, baseType: !244)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<float, std::allocator<float> >", scope: !2, file: !81, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseIfSaIfEE")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !245, file: !158, line: 57, baseType: !253)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<float>, float>", scope: !160, file: !158, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !246, templateParams: !288, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfEE")
!246 = !{!247, !274, !279, !283, !284, !285, !286, !287}
!247 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !245, baseType: !248, extraData: i32 0)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<float> >", scope: !2, file: !164, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !249, templateParams: !272, identifier: "_ZTSSt16allocator_traitsISaIfEE")
!249 = !{!250, !257, !260, !263, !269}
!250 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_m", scope: !248, file: !164, line: 463, type: !251, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !254, !174}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !248, file: !164, line: 420, baseType: !105)
!254 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !248, file: !164, line: 414, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<float>", scope: !2, file: !173, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIfE")
!257 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_mPKv", scope: !248, file: !164, line: 477, type: !258, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!253, !254, !174, !178}
!260 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm", scope: !248, file: !164, line: 495, type: !261, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !254, !253, !174}
!263 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_", scope: !248, file: !164, line: 547, type: !264, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !248, file: !164, line: 435, baseType: !82)
!267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!269 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_", scope: !248, file: !164, line: 562, type: !270, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!255, !267}
!272 = !{!273}
!273 = !DITemplateTypeParameter(name: "_Alloc", type: !256)
!274 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_", scope: !245, file: !158, line: 97, type: !275, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!256, !277}
!277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!279 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE10_S_on_swapERS1_S3_", scope: !245, file: !158, line: 100, type: !280, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282, !282}
!282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !256, size: 64)
!283 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE27_S_propagate_on_copy_assignEv", scope: !245, file: !158, line: 103, type: !203, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!284 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE27_S_propagate_on_move_assignEv", scope: !245, file: !158, line: 106, type: !203, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!285 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE20_S_propagate_on_swapEv", scope: !245, file: !158, line: 109, type: !203, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!286 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE15_S_always_equalEv", scope: !245, file: !158, line: 112, type: !203, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!287 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE15_S_nothrow_moveEv", scope: !245, file: !158, line: 115, type: !203, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!288 = !{!273, !289}
!289 = !DITemplateTypeParameter(type: !30)
!290 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !238, file: !81, line: 410, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !243, file: !81, line: 87, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !294, file: !158, line: 120, baseType: !297)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<float>", scope: !245, file: !158, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !295, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfE6rebindIfEE")
!295 = !{!296}
!296 = !DITemplateTypeParameter(name: "_Tp", type: !30)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<float>", scope: !248, file: !164, line: 450, baseType: !256)
!298 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_", scope: !238, file: !81, line: 465, type: !239, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!299 = !{!0, !300, !7, !307, !313, !315, !317, !319, !321}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !10, line: 146, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 304, elements: !305)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!305 = !{!306}
!306 = !DISubrange(count: 38)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "XRot180", linkageName: "_ZL7XRot180", scope: !9, file: !309, line: 37, type: !310, isLocal: true, isDefinition: true)
!309 = !DIFile(filename: "../TrackingBenchmark/BodyGeometry.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "ddbc3a72ce843900c4aedf25f05d8264")
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 12)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "XRot90", linkageName: "_ZL6XRot90", scope: !9, file: !309, line: 36, type: !310, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "ZRot180", linkageName: "_ZL7ZRot180", scope: !9, file: !309, line: 41, type: !310, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "YRot90", linkageName: "_ZL6YRot90", scope: !9, file: !309, line: 39, type: !310, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "XRot270", linkageName: "_ZL7XRot270", scope: !9, file: !309, line: 38, type: !310, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !323, line: 634, type: !324, isLocal: true, isDefinition: true)
!323 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 208, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 26)
!327 = !{!328, !344, !347, !352, !360, !368, !372, !379, !383, !387, !389, !391, !395, !405, !409, !415, !421, !423, !427, !431, !435, !439, !451, !453, !457, !461, !465, !467, !473, !477, !481, !483, !485, !489, !497, !501, !505, !509, !511, !517, !519, !526, !530, !534, !539, !543, !547, !551, !553, !555, !559, !563, !567, !569, !573, !577, !579, !581, !585, !590, !595, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !614, !618, !622, !629, !633, !636, !639, !642, !644, !646, !648, !651, !654, !657, !660, !663, !665, !670, !674, !677, !680, !682, !684, !686, !688, !691, !694, !697, !700, !703, !705, !709, !713, !718, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !754, !758, !764, !768, !773, !775, !779, !783, !787, !795, !799, !803, !807, !811, !815, !819, !823, !827, !831, !835, !839, !843, !845, !849, !853, !857, !863, !867, !871, !873, !877, !881, !887, !889, !893, !897, !901, !905, !909, !913, !917, !918, !919, !920, !922, !923, !924, !925, !926, !927, !928, !932, !938, !943, !947, !949, !951, !953, !955, !962, !966, !970, !974, !978, !982, !987, !991, !993, !997, !1003, !1007, !1012, !1014, !1016, !1020, !1024, !1028, !1030, !1032, !1034, !1036, !1040, !1042, !1044, !1048, !1052, !1056, !1060, !1064, !1066, !1068, !1072, !1076, !1080, !1084, !1086, !1088, !1092, !1096, !1097, !1098, !1099, !1100, !1101, !1107, !1110, !1111, !1113, !1115, !1117, !1119, !1123, !1125, !1127, !1129, !1131, !1133, !1135, !1137, !1139, !1143, !1147, !1149, !1153, !1157, !1163, !1167, !1171, !1175, !1179, !1183, !1185, !1187, !1189, !1193, !1197, !1201, !1205, !1209, !1211, !1213, !1215, !1219, !1223, !1227, !1229, !1231, !1237, !1239, !1241, !1245, !1247, !1249, !1251, !1253, !1255, !1257, !1259, !1264, !1268, !1270, !1272, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1292, !1294, !1296, !1300, !1304, !1306, !1308, !1310, !1312, !1314, !1316, !1318, !1320, !1322, !1324, !1328, !1332, !1334, !1336, !1338, !1340, !1342, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1360, !1362, !1366, !1370, !1374, !1376, !1378, !1380, !1382, !1384, !1386, !1388, !1390, !1392, !1396, !1400, !1404, !1406, !1408, !1410, !1414, !1418, !1422, !1424, !1426, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1444, !1446, !1450, !1454, !1458, !1460, !1462, !1464, !1466, !1470, !1474, !1476, !1478, !1480, !1482, !1484, !1486, !1490, !1494, !1496, !1498, !1500, !1502, !1506, !1510, !1514, !1516, !1518, !1520, !1522, !1524, !1526, !1530, !1534, !1538, !1540, !1544, !1548, !1550, !1552, !1554, !1556, !1558, !1560, !1563, !1568}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !343, line: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !334, identifier: "_ZTS11__mbstate_t")
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !333, file: !332, line: 15, baseType: !64, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !333, file: !332, line: 20, baseType: !337, size: 32, offset: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !332, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !338, identifier: "_ZTSN11__mbstate_tUt_E")
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !337, file: !332, line: 18, baseType: !14, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !337, file: !332, line: 19, baseType: !341, size: 32)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 32, elements: !342)
!342 = !{!33}
!343 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !343, line: 141)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !346, line: 20, baseType: !14)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !343, line: 143)
!348 = !DISubprogram(name: "btowc", scope: !349, file: !349, line: 285, type: !350, flags: DIFlagPrototyped, spFlags: 0)
!349 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!350 = !DISubroutineType(types: !351)
!351 = !{!345, !64}
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !353, file: !343, line: 144)
!353 = !DISubprogram(name: "fgetwc", scope: !349, file: !349, line: 744, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!345, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !358, line: 5, baseType: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !358, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !361, file: !343, line: 145)
!361 = !DISubprogram(name: "fgetws", scope: !349, file: !349, line: 773, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !366, !64, !367}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !356)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !369, file: !343, line: 146)
!369 = !DISubprogram(name: "fputwc", scope: !349, file: !349, line: 758, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!345, !365, !356}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !373, file: !343, line: 147)
!373 = !DISubprogram(name: "fputws", scope: !349, file: !349, line: 780, type: !374, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DISubroutineType(types: !375)
!375 = !{!64, !376, !367}
!376 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !380, file: !343, line: 148)
!380 = !DISubprogram(name: "fwide", scope: !349, file: !349, line: 588, type: !381, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!64, !356, !64}
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !343, line: 149)
!384 = !DISubprogram(name: "fwprintf", scope: !349, file: !349, line: 595, type: !385, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!64, !367, !376, null}
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !343, line: 150)
!388 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !349, file: !349, line: 657, type: !385, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !343, line: 151)
!390 = !DISubprogram(name: "getwc", scope: !349, file: !349, line: 745, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !392, file: !343, line: 152)
!392 = !DISubprogram(name: "getwchar", scope: !349, file: !349, line: 751, type: !393, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{!345}
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !343, line: 153)
!396 = !DISubprogram(name: "mbrlen", scope: !349, file: !349, line: 308, type: !397, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !401, !399, !403}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !400, line: 46, baseType: !84)
!400 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !406, file: !343, line: 154)
!406 = !DISubprogram(name: "mbrtowc", scope: !349, file: !349, line: 297, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!399, !366, !401, !399, !403}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !343, line: 155)
!410 = !DISubprogram(name: "mbsinit", scope: !349, file: !349, line: 293, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!64, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !416, file: !343, line: 156)
!416 = !DISubprogram(name: "mbsrtowcs", scope: !349, file: !349, line: 338, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!399, !366, !419, !399, !403}
!419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !343, line: 157)
!422 = !DISubprogram(name: "putwc", scope: !349, file: !349, line: 759, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !343, line: 158)
!424 = !DISubprogram(name: "putwchar", scope: !349, file: !349, line: 765, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!345, !365}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !343, line: 160)
!428 = !DISubprogram(name: "swprintf", scope: !349, file: !349, line: 605, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!64, !366, !399, !376, null}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !343, line: 162)
!432 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !349, file: !349, line: 664, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!64, !376, !376, null}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !343, line: 163)
!436 = !DISubprogram(name: "ungetwc", scope: !349, file: !349, line: 788, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!345, !345, !356}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !343, line: 164)
!440 = !DISubprogram(name: "vfwprintf", scope: !349, file: !349, line: 613, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!64, !367, !376, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !445, identifier: "_ZTS13__va_list_tag")
!445 = !{!446, !448, !449, !450}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !444, file: !447, baseType: !14, size: 32)
!447 = !DIFile(filename: "../TrackingBenchmark/BodyGeometry.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !444, file: !447, baseType: !14, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !444, file: !447, baseType: !85, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !444, file: !447, baseType: !85, size: 64, offset: 128)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !452, file: !343, line: 166)
!452 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !349, file: !349, line: 711, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !343, line: 169)
!454 = !DISubprogram(name: "vswprintf", scope: !349, file: !349, line: 626, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!64, !366, !399, !376, !443}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !343, line: 172)
!458 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !349, file: !349, line: 718, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!64, !376, !376, !443}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !343, line: 174)
!462 = !DISubprogram(name: "vwprintf", scope: !349, file: !349, line: 621, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!64, !376, !443}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !343, line: 176)
!466 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !349, file: !349, line: 715, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !343, line: 178)
!468 = !DISubprogram(name: "wcrtomb", scope: !349, file: !349, line: 302, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!399, !471, !365, !403}
!471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !343, line: 179)
!474 = !DISubprogram(name: "wcscat", scope: !349, file: !349, line: 97, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!364, !366, !376}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !343, line: 180)
!478 = !DISubprogram(name: "wcscmp", scope: !349, file: !349, line: 106, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!64, !377, !377}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !343, line: 181)
!482 = !DISubprogram(name: "wcscoll", scope: !349, file: !349, line: 131, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !343, line: 182)
!484 = !DISubprogram(name: "wcscpy", scope: !349, file: !349, line: 87, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !343, line: 183)
!486 = !DISubprogram(name: "wcscspn", scope: !349, file: !349, line: 188, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!399, !377, !377}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !490, file: !343, line: 184)
!490 = !DISubprogram(name: "wcsftime", scope: !349, file: !349, line: 852, type: !491, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!399, !366, !399, !376, !493}
!493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !349, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !498, file: !343, line: 185)
!498 = !DISubprogram(name: "wcslen", scope: !349, file: !349, line: 223, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!399, !377}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !343, line: 186)
!502 = !DISubprogram(name: "wcsncat", scope: !349, file: !349, line: 101, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!364, !366, !376, !399}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !343, line: 187)
!506 = !DISubprogram(name: "wcsncmp", scope: !349, file: !349, line: 109, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!64, !377, !377, !399}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !510, file: !343, line: 188)
!510 = !DISubprogram(name: "wcsncpy", scope: !349, file: !349, line: 92, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !343, line: 189)
!512 = !DISubprogram(name: "wcsrtombs", scope: !349, file: !349, line: 344, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!399, !471, !515, !399, !403}
!515 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !343, line: 190)
!518 = !DISubprogram(name: "wcsspn", scope: !349, file: !349, line: 192, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !343, line: 191)
!520 = !DISubprogram(name: "wcstod", scope: !349, file: !349, line: 378, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !376, !524}
!523 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!524 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !343, line: 193)
!527 = !DISubprogram(name: "wcstof", scope: !349, file: !349, line: 383, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!30, !376, !524}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !531, file: !343, line: 195)
!531 = !DISubprogram(name: "wcstok", scope: !349, file: !349, line: 218, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!364, !366, !376, !524}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !535, file: !343, line: 196)
!535 = !DISubprogram(name: "wcstol", scope: !349, file: !349, line: 429, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !376, !524, !64}
!538 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !343, line: 197)
!540 = !DISubprogram(name: "wcstoul", scope: !349, file: !349, line: 434, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!84, !376, !524, !64}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !544, file: !343, line: 198)
!544 = !DISubprogram(name: "wcsxfrm", scope: !349, file: !349, line: 135, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!399, !366, !376, !399}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !548, file: !343, line: 199)
!548 = !DISubprogram(name: "wctob", scope: !349, file: !349, line: 289, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!64, !345}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !552, file: !343, line: 200)
!552 = !DISubprogram(name: "wmemcmp", scope: !349, file: !349, line: 259, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !554, file: !343, line: 201)
!554 = !DISubprogram(name: "wmemcpy", scope: !349, file: !349, line: 263, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !343, line: 202)
!556 = !DISubprogram(name: "wmemmove", scope: !349, file: !349, line: 268, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!364, !364, !377, !399}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !560, file: !343, line: 203)
!560 = !DISubprogram(name: "wmemset", scope: !349, file: !349, line: 272, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!364, !364, !365, !399}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !343, line: 204)
!564 = !DISubprogram(name: "wprintf", scope: !349, file: !349, line: 602, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!64, !376, null}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !343, line: 205)
!568 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !349, file: !349, line: 661, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !343, line: 206)
!570 = !DISubprogram(name: "wcschr", scope: !349, file: !349, line: 165, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!364, !377, !365}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !343, line: 207)
!574 = !DISubprogram(name: "wcspbrk", scope: !349, file: !349, line: 202, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!364, !377, !377}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !343, line: 208)
!578 = !DISubprogram(name: "wcsrchr", scope: !349, file: !349, line: 175, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !343, line: 209)
!580 = !DISubprogram(name: "wcsstr", scope: !349, file: !349, line: 213, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !343, line: 210)
!582 = !DISubprogram(name: "wmemchr", scope: !349, file: !349, line: 254, type: !583, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{!364, !377, !365, !399}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !586, file: !343, line: 251)
!586 = !DISubprogram(name: "wcstold", scope: !349, file: !349, line: 385, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!589, !376, !524}
!589 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !591, file: !343, line: 260)
!591 = !DISubprogram(name: "wcstoll", scope: !349, file: !349, line: 442, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !376, !524, !64}
!594 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !596, file: !343, line: 261)
!596 = !DISubprogram(name: "wcstoull", scope: !349, file: !349, line: 449, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !376, !524, !64}
!599 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !343, line: 267)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !343, line: 268)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !343, line: 269)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !343, line: 283)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !452, file: !343, line: 286)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !343, line: 289)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !343, line: 292)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !343, line: 296)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !343, line: 297)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !343, line: 298)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !612, line: 68)
!611 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !613, file: !612, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!612 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!613 = !DINamespace(name: "__exception_ptr", scope: !2)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !613, entity: !615, file: !612, line: 84)
!615 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !612, line: 80, type: !616, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !611}
!618 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !619, entity: !620, file: !621, line: 58)
!619 = !DINamespace(name: "__gnu_debug", scope: null)
!620 = !DINamespace(name: "__debug", scope: !2)
!621 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !628, line: 47)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !624, line: 24, baseType: !625)
!624 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !626, line: 37, baseType: !627)
!626 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!627 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!628 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !630, file: !628, line: 48)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !624, line: 25, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !626, line: 39, baseType: !632)
!632 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !634, file: !628, line: 49)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !624, line: 26, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !626, line: 41, baseType: !64)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !628, line: 50)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !624, line: 27, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !626, line: 44, baseType: !538)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !628, line: 52)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !641, line: 58, baseType: !627)
!641 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !643, file: !628, line: 53)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !641, line: 60, baseType: !538)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !628, line: 54)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !641, line: 61, baseType: !538)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !628, line: 55)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !641, line: 62, baseType: !538)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !628, line: 57)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !641, line: 43, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !626, line: 52, baseType: !625)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !628, line: 58)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !641, line: 44, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !626, line: 54, baseType: !631)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !628, line: 59)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !641, line: 45, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !626, line: 56, baseType: !635)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !628, line: 60)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !641, line: 46, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !626, line: 58, baseType: !638)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !628, line: 62)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !641, line: 101, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !626, line: 72, baseType: !538)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !628, line: 63)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !641, line: 87, baseType: !538)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !666, file: !628, line: 65)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !667, line: 24, baseType: !668)
!667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !626, line: 38, baseType: !669)
!669 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !671, file: !628, line: 66)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !667, line: 25, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !626, line: 40, baseType: !673)
!673 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !675, file: !628, line: 67)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !667, line: 26, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !626, line: 42, baseType: !14)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !628, line: 68)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !667, line: 27, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !626, line: 45, baseType: !84)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !681, file: !628, line: 70)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !641, line: 71, baseType: !669)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !628, line: 71)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !641, line: 73, baseType: !84)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !628, line: 72)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !641, line: 74, baseType: !84)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !687, file: !628, line: 73)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !641, line: 75, baseType: !84)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !628, line: 75)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !641, line: 49, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !626, line: 53, baseType: !668)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !628, line: 76)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !641, line: 50, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !626, line: 55, baseType: !672)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !628, line: 77)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !641, line: 51, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !626, line: 57, baseType: !676)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !628, line: 78)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !641, line: 52, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !626, line: 59, baseType: !679)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !628, line: 80)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !641, line: 102, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !626, line: 73, baseType: !84)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !628, line: 81)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !641, line: 90, baseType: !84)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !708, line: 53)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !707, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!707 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!708 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !708, line: 54)
!710 = !DISubprogram(name: "setlocale", scope: !707, file: !707, line: 122, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!472, !64, !402}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !708, line: 55)
!714 = !DISubprogram(name: "localeconv", scope: !707, file: !707, line: 125, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !723, line: 64)
!719 = !DISubprogram(name: "isalnum", scope: !720, file: !720, line: 108, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!721 = !DISubroutineType(types: !722)
!722 = !{!64, !64}
!723 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !723, line: 65)
!725 = !DISubprogram(name: "isalpha", scope: !720, file: !720, line: 109, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !723, line: 66)
!727 = !DISubprogram(name: "iscntrl", scope: !720, file: !720, line: 110, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !723, line: 67)
!729 = !DISubprogram(name: "isdigit", scope: !720, file: !720, line: 111, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !723, line: 68)
!731 = !DISubprogram(name: "isgraph", scope: !720, file: !720, line: 113, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !723, line: 69)
!733 = !DISubprogram(name: "islower", scope: !720, file: !720, line: 112, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !735, file: !723, line: 70)
!735 = !DISubprogram(name: "isprint", scope: !720, file: !720, line: 114, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !723, line: 71)
!737 = !DISubprogram(name: "ispunct", scope: !720, file: !720, line: 115, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !723, line: 72)
!739 = !DISubprogram(name: "isspace", scope: !720, file: !720, line: 116, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !723, line: 73)
!741 = !DISubprogram(name: "isupper", scope: !720, file: !720, line: 117, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !723, line: 74)
!743 = !DISubprogram(name: "isxdigit", scope: !720, file: !720, line: 118, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !723, line: 75)
!745 = !DISubprogram(name: "tolower", scope: !720, file: !720, line: 122, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !747, file: !723, line: 76)
!747 = !DISubprogram(name: "toupper", scope: !720, file: !720, line: 125, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !723, line: 87)
!749 = !DISubprogram(name: "isblank", scope: !720, file: !720, line: 130, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !753, line: 52)
!751 = !DISubprogram(name: "abs", scope: !752, file: !752, line: 848, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!753 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !757, line: 127)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !752, line: 63, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!757 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !757, line: 128)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !752, line: 71, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !761, identifier: "_ZTS6ldiv_t")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !760, file: !752, line: 69, baseType: !538, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !760, file: !752, line: 70, baseType: !538, size: 64, offset: 64)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !757, line: 130)
!765 = !DISubprogram(name: "abort", scope: !752, file: !752, line: 598, type: !766, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{null}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !757, line: 134)
!769 = !DISubprogram(name: "atexit", scope: !752, file: !752, line: 602, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DISubroutineType(types: !771)
!771 = !{!64, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !757, line: 137)
!774 = !DISubprogram(name: "at_quick_exit", scope: !752, file: !752, line: 607, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !757, line: 140)
!776 = !DISubprogram(name: "atof", scope: !752, file: !752, line: 102, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!523, !402}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !757, line: 141)
!780 = !DISubprogram(name: "atoi", scope: !752, file: !752, line: 105, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!64, !402}
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !784, file: !757, line: 142)
!784 = !DISubprogram(name: "atol", scope: !752, file: !752, line: 108, type: !785, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!538, !402}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !757, line: 143)
!788 = !DISubprogram(name: "bsearch", scope: !752, file: !752, line: 828, type: !789, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DISubroutineType(types: !790)
!790 = !{!85, !86, !86, !399, !399, !791}
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !752, line: 816, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!64, !86, !86}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !757, line: 144)
!796 = !DISubprogram(name: "calloc", scope: !752, file: !752, line: 543, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!85, !399, !399}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !757, line: 145)
!800 = !DISubprogram(name: "div", scope: !752, file: !752, line: 860, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!755, !64, !64}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !757, line: 146)
!804 = !DISubprogram(name: "exit", scope: !752, file: !752, line: 624, type: !805, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !64}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !757, line: 147)
!808 = !DISubprogram(name: "free", scope: !752, file: !752, line: 555, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !85}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !757, line: 148)
!812 = !DISubprogram(name: "getenv", scope: !752, file: !752, line: 641, type: !813, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!472, !402}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !757, line: 149)
!816 = !DISubprogram(name: "labs", scope: !752, file: !752, line: 849, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!538, !538}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !757, line: 150)
!820 = !DISubprogram(name: "ldiv", scope: !752, file: !752, line: 862, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!759, !538, !538}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !757, line: 151)
!824 = !DISubprogram(name: "malloc", scope: !752, file: !752, line: 540, type: !825, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DISubroutineType(types: !826)
!826 = !{!85, !399}
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !757, line: 153)
!828 = !DISubprogram(name: "mblen", scope: !752, file: !752, line: 930, type: !829, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!64, !402, !399}
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !757, line: 154)
!832 = !DISubprogram(name: "mbstowcs", scope: !752, file: !752, line: 941, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!399, !366, !401, !399}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !757, line: 155)
!836 = !DISubprogram(name: "mbtowc", scope: !752, file: !752, line: 933, type: !837, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{!64, !366, !401, !399}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !757, line: 157)
!840 = !DISubprogram(name: "qsort", scope: !752, file: !752, line: 838, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !85, !399, !399, !791}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !757, line: 160)
!844 = !DISubprogram(name: "quick_exit", scope: !752, file: !752, line: 630, type: !805, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !757, line: 163)
!846 = !DISubprogram(name: "rand", scope: !752, file: !752, line: 454, type: !847, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!64}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !757, line: 164)
!850 = !DISubprogram(name: "realloc", scope: !752, file: !752, line: 551, type: !851, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{!85, !85, !399}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !757, line: 165)
!854 = !DISubprogram(name: "srand", scope: !752, file: !752, line: 456, type: !855, flags: DIFlagPrototyped, spFlags: 0)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !14}
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !757, line: 166)
!858 = !DISubprogram(name: "strtod", scope: !752, file: !752, line: 118, type: !859, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{!523, !401, !861}
!861 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !757, line: 167)
!864 = !DISubprogram(name: "strtol", scope: !752, file: !752, line: 177, type: !865, flags: DIFlagPrototyped, spFlags: 0)
!865 = !DISubroutineType(types: !866)
!866 = !{!538, !401, !861, !64}
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !757, line: 168)
!868 = !DISubprogram(name: "strtoul", scope: !752, file: !752, line: 181, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubroutineType(types: !870)
!870 = !{!84, !401, !861, !64}
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !757, line: 169)
!872 = !DISubprogram(name: "system", scope: !752, file: !752, line: 791, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !757, line: 171)
!874 = !DISubprogram(name: "wcstombs", scope: !752, file: !752, line: 945, type: !875, flags: DIFlagPrototyped, spFlags: 0)
!875 = !DISubroutineType(types: !876)
!876 = !{!399, !471, !376, !399}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !757, line: 172)
!878 = !DISubprogram(name: "wctomb", scope: !752, file: !752, line: 937, type: !879, flags: DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!64, !472, !365}
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !882, file: !757, line: 200)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !752, line: 81, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !884, identifier: "_ZTS7lldiv_t")
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !883, file: !752, line: 79, baseType: !594, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !883, file: !752, line: 80, baseType: !594, size: 64, offset: 64)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !888, file: !757, line: 206)
!888 = !DISubprogram(name: "_Exit", scope: !752, file: !752, line: 636, type: !805, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !890, file: !757, line: 210)
!890 = !DISubprogram(name: "llabs", scope: !752, file: !752, line: 852, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!594, !594}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !894, file: !757, line: 216)
!894 = !DISubprogram(name: "lldiv", scope: !752, file: !752, line: 866, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!882, !594, !594}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !898, file: !757, line: 227)
!898 = !DISubprogram(name: "atoll", scope: !752, file: !752, line: 113, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!594, !402}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !902, file: !757, line: 228)
!902 = !DISubprogram(name: "strtoll", scope: !752, file: !752, line: 201, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!594, !401, !861, !64}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !906, file: !757, line: 229)
!906 = !DISubprogram(name: "strtoull", scope: !752, file: !752, line: 206, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!599, !401, !861, !64}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !910, file: !757, line: 231)
!910 = !DISubprogram(name: "strtof", scope: !752, file: !752, line: 124, type: !911, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{!30, !401, !861}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !914, file: !757, line: 232)
!914 = !DISubprogram(name: "strtold", scope: !752, file: !752, line: 127, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{!589, !401, !861}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !882, file: !757, line: 240)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !757, line: 242)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !757, line: 244)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !757, line: 245)
!921 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !160, file: !757, line: 213, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !757, line: 246)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !757, line: 248)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !757, line: 249)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !757, line: 250)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !757, line: 251)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !914, file: !757, line: 252)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !931, line: 98)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !930, line: 7, baseType: !359)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!931 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !933, file: !931, line: 99)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !934, line: 84, baseType: !935)
!934 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !936, line: 14, baseType: !937)
!936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !936, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !931, line: 101)
!939 = !DISubprogram(name: "clearerr", scope: !934, file: !934, line: 786, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !931, line: 102)
!944 = !DISubprogram(name: "fclose", scope: !934, file: !934, line: 178, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DISubroutineType(types: !946)
!946 = !{!64, !942}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !948, file: !931, line: 103)
!948 = !DISubprogram(name: "feof", scope: !934, file: !934, line: 788, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !950, file: !931, line: 104)
!950 = !DISubprogram(name: "ferror", scope: !934, file: !934, line: 790, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !952, file: !931, line: 105)
!952 = !DISubprogram(name: "fflush", scope: !934, file: !934, line: 230, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !954, file: !931, line: 106)
!954 = !DISubprogram(name: "fgetc", scope: !934, file: !934, line: 513, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !931, line: 107)
!956 = !DISubprogram(name: "fgetpos", scope: !934, file: !934, line: 760, type: !957, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DISubroutineType(types: !958)
!958 = !{!64, !959, !960}
!959 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !942)
!960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !931, line: 108)
!963 = !DISubprogram(name: "fgets", scope: !934, file: !934, line: 592, type: !964, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DISubroutineType(types: !965)
!965 = !{!472, !471, !64, !959}
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !931, line: 109)
!967 = !DISubprogram(name: "fopen", scope: !934, file: !934, line: 258, type: !968, flags: DIFlagPrototyped, spFlags: 0)
!968 = !DISubroutineType(types: !969)
!969 = !{!942, !401, !401}
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !931, line: 110)
!971 = !DISubprogram(name: "fprintf", scope: !934, file: !934, line: 350, type: !972, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DISubroutineType(types: !973)
!973 = !{!64, !959, !401, null}
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !931, line: 111)
!975 = !DISubprogram(name: "fputc", scope: !934, file: !934, line: 549, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DISubroutineType(types: !977)
!977 = !{!64, !64, !942}
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !979, file: !931, line: 112)
!979 = !DISubprogram(name: "fputs", scope: !934, file: !934, line: 655, type: !980, flags: DIFlagPrototyped, spFlags: 0)
!980 = !DISubroutineType(types: !981)
!981 = !{!64, !401, !959}
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !983, file: !931, line: 113)
!983 = !DISubprogram(name: "fread", scope: !934, file: !934, line: 675, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!984 = !DISubroutineType(types: !985)
!985 = !{!399, !986, !399, !399, !959}
!986 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !931, line: 114)
!988 = !DISubprogram(name: "freopen", scope: !934, file: !934, line: 265, type: !989, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DISubroutineType(types: !990)
!990 = !{!942, !401, !401, !959}
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !992, file: !931, line: 115)
!992 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !934, file: !934, line: 434, type: !972, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !931, line: 116)
!994 = !DISubprogram(name: "fseek", scope: !934, file: !934, line: 713, type: !995, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!64, !942, !538, !64}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !998, file: !931, line: 117)
!998 = !DISubprogram(name: "fsetpos", scope: !934, file: !934, line: 765, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!64, !942, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !931, line: 118)
!1004 = !DISubprogram(name: "ftell", scope: !934, file: !934, line: 718, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!538, !942}
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1008, file: !931, line: 119)
!1008 = !DISubprogram(name: "fwrite", scope: !934, file: !934, line: 681, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!399, !1011, !399, !399, !959}
!1011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1013, file: !931, line: 120)
!1013 = !DISubprogram(name: "getc", scope: !934, file: !934, line: 514, type: !945, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !931, line: 121)
!1015 = !DISubprogram(name: "getchar", scope: !934, file: !934, line: 520, type: !847, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1017, file: !931, line: 124)
!1017 = !DISubprogram(name: "gets", scope: !934, file: !934, line: 605, type: !1018, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!472, !472}
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !931, line: 126)
!1021 = !DISubprogram(name: "perror", scope: !934, file: !934, line: 804, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !402}
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !931, line: 127)
!1025 = !DISubprogram(name: "printf", scope: !934, file: !934, line: 356, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!64, !401, null}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !931, line: 128)
!1029 = !DISubprogram(name: "putc", scope: !934, file: !934, line: 550, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !931, line: 129)
!1031 = !DISubprogram(name: "putchar", scope: !934, file: !934, line: 556, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !931, line: 130)
!1033 = !DISubprogram(name: "puts", scope: !934, file: !934, line: 661, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !931, line: 131)
!1035 = !DISubprogram(name: "remove", scope: !934, file: !934, line: 152, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !931, line: 132)
!1037 = !DISubprogram(name: "rename", scope: !934, file: !934, line: 154, type: !1038, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!64, !402, !402}
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !931, line: 133)
!1041 = !DISubprogram(name: "rewind", scope: !934, file: !934, line: 723, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !931, line: 134)
!1043 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !934, file: !934, line: 437, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !931, line: 135)
!1045 = !DISubprogram(name: "setbuf", scope: !934, file: !934, line: 328, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !959, !471}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !931, line: 136)
!1049 = !DISubprogram(name: "setvbuf", scope: !934, file: !934, line: 332, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!64, !959, !471, !64, !399}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !931, line: 137)
!1053 = !DISubprogram(name: "sprintf", scope: !934, file: !934, line: 358, type: !1054, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!64, !471, !401, null}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !931, line: 138)
!1057 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !934, file: !934, line: 439, type: !1058, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!64, !401, !401, null}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !931, line: 139)
!1061 = !DISubprogram(name: "tmpfile", scope: !934, file: !934, line: 188, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!942}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !931, line: 141)
!1065 = !DISubprogram(name: "tmpnam", scope: !934, file: !934, line: 205, type: !1018, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !931, line: 143)
!1067 = !DISubprogram(name: "ungetc", scope: !934, file: !934, line: 668, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !931, line: 144)
!1069 = !DISubprogram(name: "vfprintf", scope: !934, file: !934, line: 365, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!64, !959, !401, !443}
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !931, line: 145)
!1073 = !DISubprogram(name: "vprintf", scope: !934, file: !934, line: 371, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!64, !401, !443}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1077, file: !931, line: 146)
!1077 = !DISubprogram(name: "vsprintf", scope: !934, file: !934, line: 373, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!64, !471, !401, !443}
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !1081, file: !931, line: 175)
!1081 = !DISubprogram(name: "snprintf", scope: !934, file: !934, line: 378, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!64, !471, !399, !401, null}
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !1085, file: !931, line: 176)
!1085 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !934, file: !934, line: 479, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !1087, file: !931, line: 177)
!1087 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !934, file: !934, line: 484, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !1089, file: !931, line: 178)
!1089 = !DISubprogram(name: "vsnprintf", scope: !934, file: !934, line: 382, type: !1090, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!64, !471, !399, !401, !443}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !160, entity: !1093, file: !931, line: 179)
!1093 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !934, file: !934, line: 487, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!64, !401, !401, !443}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1081, file: !931, line: 185)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1085, file: !931, line: 186)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !931, line: 187)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !931, line: 188)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !931, line: 189)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1102, file: !1106, line: 82)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1103, line: 48, baseType: !1104)
!1103 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!1106 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1108, file: !1106, line: 83)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1109, line: 38, baseType: !84)
!1109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !1106, line: 84)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1112, file: !1106, line: 86)
!1112 = !DISubprogram(name: "iswalnum", scope: !1109, file: !1109, line: 95, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1114, file: !1106, line: 87)
!1114 = !DISubprogram(name: "iswalpha", scope: !1109, file: !1109, line: 101, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1116, file: !1106, line: 89)
!1116 = !DISubprogram(name: "iswblank", scope: !1109, file: !1109, line: 146, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1118, file: !1106, line: 91)
!1118 = !DISubprogram(name: "iswcntrl", scope: !1109, file: !1109, line: 104, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !1106, line: 92)
!1120 = !DISubprogram(name: "iswctype", scope: !1109, file: !1109, line: 159, type: !1121, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!64, !345, !1108}
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1124, file: !1106, line: 93)
!1124 = !DISubprogram(name: "iswdigit", scope: !1109, file: !1109, line: 108, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1126, file: !1106, line: 94)
!1126 = !DISubprogram(name: "iswgraph", scope: !1109, file: !1109, line: 112, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !1106, line: 95)
!1128 = !DISubprogram(name: "iswlower", scope: !1109, file: !1109, line: 117, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1130, file: !1106, line: 96)
!1130 = !DISubprogram(name: "iswprint", scope: !1109, file: !1109, line: 120, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1132, file: !1106, line: 97)
!1132 = !DISubprogram(name: "iswpunct", scope: !1109, file: !1109, line: 125, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1134, file: !1106, line: 98)
!1134 = !DISubprogram(name: "iswspace", scope: !1109, file: !1109, line: 130, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1136, file: !1106, line: 99)
!1136 = !DISubprogram(name: "iswupper", scope: !1109, file: !1109, line: 135, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1138, file: !1106, line: 100)
!1138 = !DISubprogram(name: "iswxdigit", scope: !1109, file: !1109, line: 140, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !1106, line: 101)
!1140 = !DISubprogram(name: "towctrans", scope: !1103, file: !1103, line: 55, type: !1141, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!345, !345, !1102}
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1144, file: !1106, line: 102)
!1144 = !DISubprogram(name: "towlower", scope: !1109, file: !1109, line: 166, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!345, !345}
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1148, file: !1106, line: 103)
!1148 = !DISubprogram(name: "towupper", scope: !1109, file: !1109, line: 169, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1150, file: !1106, line: 104)
!1150 = !DISubprogram(name: "wctrans", scope: !1103, file: !1103, line: 52, type: !1151, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1102, !402}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1154, file: !1106, line: 105)
!1154 = !DISubprogram(name: "wctype", scope: !1109, file: !1109, line: 155, type: !1155, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1108, !402}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1158, file: !1162, line: 77)
!1158 = !DISubprogram(name: "memchr", scope: !1159, file: !1159, line: 89, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1159 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!86, !86, !64, !399}
!1162 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1164, file: !1162, line: 78)
!1164 = !DISubprogram(name: "memcmp", scope: !1159, file: !1159, line: 64, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!64, !86, !86, !399}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1168, file: !1162, line: 79)
!1168 = !DISubprogram(name: "memcpy", scope: !1159, file: !1159, line: 43, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!85, !986, !1011, !399}
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1172, file: !1162, line: 80)
!1172 = !DISubprogram(name: "memmove", scope: !1159, file: !1159, line: 47, type: !1173, flags: DIFlagPrototyped, spFlags: 0)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!85, !85, !86, !399}
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1176, file: !1162, line: 81)
!1176 = !DISubprogram(name: "memset", scope: !1159, file: !1159, line: 61, type: !1177, flags: DIFlagPrototyped, spFlags: 0)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!85, !85, !64, !399}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1180, file: !1162, line: 82)
!1180 = !DISubprogram(name: "strcat", scope: !1159, file: !1159, line: 149, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!472, !471, !401}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1184, file: !1162, line: 83)
!1184 = !DISubprogram(name: "strcmp", scope: !1159, file: !1159, line: 156, type: !1038, flags: DIFlagPrototyped, spFlags: 0)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !1162, line: 84)
!1186 = !DISubprogram(name: "strcoll", scope: !1159, file: !1159, line: 163, type: !1038, flags: DIFlagPrototyped, spFlags: 0)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1188, file: !1162, line: 85)
!1188 = !DISubprogram(name: "strcpy", scope: !1159, file: !1159, line: 141, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !1162, line: 86)
!1190 = !DISubprogram(name: "strcspn", scope: !1159, file: !1159, line: 293, type: !1191, flags: DIFlagPrototyped, spFlags: 0)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!399, !402, !402}
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !1162, line: 87)
!1194 = !DISubprogram(name: "strerror", scope: !1159, file: !1159, line: 419, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!472, !64}
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1198, file: !1162, line: 88)
!1198 = !DISubprogram(name: "strlen", scope: !1159, file: !1159, line: 407, type: !1199, flags: DIFlagPrototyped, spFlags: 0)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!399, !402}
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1202, file: !1162, line: 89)
!1202 = !DISubprogram(name: "strncat", scope: !1159, file: !1159, line: 152, type: !1203, flags: DIFlagPrototyped, spFlags: 0)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!472, !471, !401, !399}
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1206, file: !1162, line: 90)
!1206 = !DISubprogram(name: "strncmp", scope: !1159, file: !1159, line: 159, type: !1207, flags: DIFlagPrototyped, spFlags: 0)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!64, !402, !402, !399}
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1210, file: !1162, line: 91)
!1210 = !DISubprogram(name: "strncpy", scope: !1159, file: !1159, line: 144, type: !1203, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1212, file: !1162, line: 92)
!1212 = !DISubprogram(name: "strspn", scope: !1159, file: !1159, line: 297, type: !1191, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1214, file: !1162, line: 93)
!1214 = !DISubprogram(name: "strtok", scope: !1159, file: !1159, line: 356, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1216, file: !1162, line: 94)
!1216 = !DISubprogram(name: "strxfrm", scope: !1159, file: !1159, line: 166, type: !1217, flags: DIFlagPrototyped, spFlags: 0)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!399, !471, !401, !399}
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1220, file: !1162, line: 95)
!1220 = !DISubprogram(name: "strchr", scope: !1159, file: !1159, line: 228, type: !1221, flags: DIFlagPrototyped, spFlags: 0)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!402, !402, !64}
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1224, file: !1162, line: 96)
!1224 = !DISubprogram(name: "strpbrk", scope: !1159, file: !1159, line: 305, type: !1225, flags: DIFlagPrototyped, spFlags: 0)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!402, !402, !402}
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1228, file: !1162, line: 97)
!1228 = !DISubprogram(name: "strrchr", scope: !1159, file: !1159, line: 255, type: !1221, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1230, file: !1162, line: 98)
!1230 = !DISubprogram(name: "strstr", scope: !1159, file: !1159, line: 332, type: !1225, flags: DIFlagPrototyped, spFlags: 0)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1232, file: !1236, line: 83)
!1232 = !DISubprogram(name: "acos", scope: !1233, file: !1233, line: 53, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!523, !523}
!1236 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1238, file: !1236, line: 102)
!1238 = !DISubprogram(name: "asin", scope: !1233, file: !1233, line: 55, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1240, file: !1236, line: 121)
!1240 = !DISubprogram(name: "atan", scope: !1233, file: !1233, line: 57, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1242, file: !1236, line: 140)
!1242 = !DISubprogram(name: "atan2", scope: !1233, file: !1233, line: 59, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!523, !523, !523}
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1246, file: !1236, line: 161)
!1246 = !DISubprogram(name: "ceil", scope: !1233, file: !1233, line: 159, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1248, file: !1236, line: 180)
!1248 = !DISubprogram(name: "cos", scope: !1233, file: !1233, line: 62, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1250, file: !1236, line: 199)
!1250 = !DISubprogram(name: "cosh", scope: !1233, file: !1233, line: 71, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1252, file: !1236, line: 218)
!1252 = !DISubprogram(name: "exp", scope: !1233, file: !1233, line: 95, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1254, file: !1236, line: 237)
!1254 = !DISubprogram(name: "fabs", scope: !1233, file: !1233, line: 162, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1256, file: !1236, line: 256)
!1256 = !DISubprogram(name: "floor", scope: !1233, file: !1233, line: 165, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1258, file: !1236, line: 275)
!1258 = !DISubprogram(name: "fmod", scope: !1233, file: !1233, line: 168, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1260, file: !1236, line: 296)
!1260 = !DISubprogram(name: "frexp", scope: !1233, file: !1233, line: 98, type: !1261, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!523, !523, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1265, file: !1236, line: 315)
!1265 = !DISubprogram(name: "ldexp", scope: !1233, file: !1233, line: 101, type: !1266, flags: DIFlagPrototyped, spFlags: 0)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!523, !523, !64}
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1269, file: !1236, line: 334)
!1269 = !DISubprogram(name: "log", scope: !1233, file: !1233, line: 104, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1271, file: !1236, line: 353)
!1271 = !DISubprogram(name: "log10", scope: !1233, file: !1233, line: 107, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !1236, line: 372)
!1273 = !DISubprogram(name: "modf", scope: !1233, file: !1233, line: 110, type: !1274, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!523, !523, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1278, file: !1236, line: 384)
!1278 = !DISubprogram(name: "pow", scope: !1233, file: !1233, line: 140, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1280, file: !1236, line: 421)
!1280 = !DISubprogram(name: "sin", scope: !1233, file: !1233, line: 64, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1282, file: !1236, line: 440)
!1282 = !DISubprogram(name: "sinh", scope: !1233, file: !1233, line: 73, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1284, file: !1236, line: 459)
!1284 = !DISubprogram(name: "sqrt", scope: !1233, file: !1233, line: 143, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1286, file: !1236, line: 478)
!1286 = !DISubprogram(name: "tan", scope: !1233, file: !1233, line: 66, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1288, file: !1236, line: 497)
!1288 = !DISubprogram(name: "tanh", scope: !1233, file: !1233, line: 75, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1290, file: !1236, line: 1065)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1291, line: 164, baseType: !523)
!1291 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1293, file: !1236, line: 1066)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1291, line: 163, baseType: !30)
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1295, file: !1236, line: 1069)
!1295 = !DISubprogram(name: "acosh", scope: !1233, file: !1233, line: 85, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !1236, line: 1070)
!1297 = !DISubprogram(name: "acoshf", scope: !1233, file: !1233, line: 85, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!30, !30}
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1236, line: 1071)
!1301 = !DISubprogram(name: "acoshl", scope: !1233, file: !1233, line: 85, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!589, !589}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1305, file: !1236, line: 1073)
!1305 = !DISubprogram(name: "asinh", scope: !1233, file: !1233, line: 87, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1307, file: !1236, line: 1074)
!1307 = !DISubprogram(name: "asinhf", scope: !1233, file: !1233, line: 87, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1236, line: 1075)
!1309 = !DISubprogram(name: "asinhl", scope: !1233, file: !1233, line: 87, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1236, line: 1077)
!1311 = !DISubprogram(name: "atanh", scope: !1233, file: !1233, line: 89, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1313, file: !1236, line: 1078)
!1313 = !DISubprogram(name: "atanhf", scope: !1233, file: !1233, line: 89, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1236, line: 1079)
!1315 = !DISubprogram(name: "atanhl", scope: !1233, file: !1233, line: 89, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1317, file: !1236, line: 1081)
!1317 = !DISubprogram(name: "cbrt", scope: !1233, file: !1233, line: 152, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1236, line: 1082)
!1319 = !DISubprogram(name: "cbrtf", scope: !1233, file: !1233, line: 152, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1321, file: !1236, line: 1083)
!1321 = !DISubprogram(name: "cbrtl", scope: !1233, file: !1233, line: 152, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1236, line: 1085)
!1323 = !DISubprogram(name: "copysign", scope: !1233, file: !1233, line: 198, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1236, line: 1086)
!1325 = !DISubprogram(name: "copysignf", scope: !1233, file: !1233, line: 198, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!30, !30, !30}
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1236, line: 1087)
!1329 = !DISubprogram(name: "copysignl", scope: !1233, file: !1233, line: 198, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!589, !589, !589}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1236, line: 1089)
!1333 = !DISubprogram(name: "erf", scope: !1233, file: !1233, line: 231, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1335, file: !1236, line: 1090)
!1335 = !DISubprogram(name: "erff", scope: !1233, file: !1233, line: 231, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1236, line: 1091)
!1337 = !DISubprogram(name: "erfl", scope: !1233, file: !1233, line: 231, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1236, line: 1093)
!1339 = !DISubprogram(name: "erfc", scope: !1233, file: !1233, line: 232, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1341, file: !1236, line: 1094)
!1341 = !DISubprogram(name: "erfcf", scope: !1233, file: !1233, line: 232, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1343, file: !1236, line: 1095)
!1343 = !DISubprogram(name: "erfcl", scope: !1233, file: !1233, line: 232, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1236, line: 1097)
!1345 = !DISubprogram(name: "exp2", scope: !1233, file: !1233, line: 130, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1236, line: 1098)
!1347 = !DISubprogram(name: "exp2f", scope: !1233, file: !1233, line: 130, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1236, line: 1099)
!1349 = !DISubprogram(name: "exp2l", scope: !1233, file: !1233, line: 130, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1236, line: 1101)
!1351 = !DISubprogram(name: "expm1", scope: !1233, file: !1233, line: 119, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1353, file: !1236, line: 1102)
!1353 = !DISubprogram(name: "expm1f", scope: !1233, file: !1233, line: 119, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1355, file: !1236, line: 1103)
!1355 = !DISubprogram(name: "expm1l", scope: !1233, file: !1233, line: 119, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1357, file: !1236, line: 1105)
!1357 = !DISubprogram(name: "fdim", scope: !1233, file: !1233, line: 329, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1236, line: 1106)
!1359 = !DISubprogram(name: "fdimf", scope: !1233, file: !1233, line: 329, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1361, file: !1236, line: 1107)
!1361 = !DISubprogram(name: "fdiml", scope: !1233, file: !1233, line: 329, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1363, file: !1236, line: 1109)
!1363 = !DISubprogram(name: "fma", scope: !1233, file: !1233, line: 340, type: !1364, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!523, !523, !523, !523}
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1236, line: 1110)
!1367 = !DISubprogram(name: "fmaf", scope: !1233, file: !1233, line: 340, type: !1368, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!30, !30, !30, !30}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1371, file: !1236, line: 1111)
!1371 = !DISubprogram(name: "fmal", scope: !1233, file: !1233, line: 340, type: !1372, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!589, !589, !589, !589}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1236, line: 1113)
!1375 = !DISubprogram(name: "fmax", scope: !1233, file: !1233, line: 333, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1377, file: !1236, line: 1114)
!1377 = !DISubprogram(name: "fmaxf", scope: !1233, file: !1233, line: 333, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1236, line: 1115)
!1379 = !DISubprogram(name: "fmaxl", scope: !1233, file: !1233, line: 333, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1381, file: !1236, line: 1117)
!1381 = !DISubprogram(name: "fmin", scope: !1233, file: !1233, line: 336, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1383, file: !1236, line: 1118)
!1383 = !DISubprogram(name: "fminf", scope: !1233, file: !1233, line: 336, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1385, file: !1236, line: 1119)
!1385 = !DISubprogram(name: "fminl", scope: !1233, file: !1233, line: 336, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1387, file: !1236, line: 1121)
!1387 = !DISubprogram(name: "hypot", scope: !1233, file: !1233, line: 147, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1389, file: !1236, line: 1122)
!1389 = !DISubprogram(name: "hypotf", scope: !1233, file: !1233, line: 147, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1391, file: !1236, line: 1123)
!1391 = !DISubprogram(name: "hypotl", scope: !1233, file: !1233, line: 147, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1393, file: !1236, line: 1125)
!1393 = !DISubprogram(name: "ilogb", scope: !1233, file: !1233, line: 283, type: !1394, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!64, !523}
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1397, file: !1236, line: 1126)
!1397 = !DISubprogram(name: "ilogbf", scope: !1233, file: !1233, line: 283, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!64, !30}
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1401, file: !1236, line: 1127)
!1401 = !DISubprogram(name: "ilogbl", scope: !1233, file: !1233, line: 283, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!64, !589}
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1405, file: !1236, line: 1129)
!1405 = !DISubprogram(name: "lgamma", scope: !1233, file: !1233, line: 233, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1407, file: !1236, line: 1130)
!1407 = !DISubprogram(name: "lgammaf", scope: !1233, file: !1233, line: 233, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1409, file: !1236, line: 1131)
!1409 = !DISubprogram(name: "lgammal", scope: !1233, file: !1233, line: 233, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1411, file: !1236, line: 1134)
!1411 = !DISubprogram(name: "llrint", scope: !1233, file: !1233, line: 319, type: !1412, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!594, !523}
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1415, file: !1236, line: 1135)
!1415 = !DISubprogram(name: "llrintf", scope: !1233, file: !1233, line: 319, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!594, !30}
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1419, file: !1236, line: 1136)
!1419 = !DISubprogram(name: "llrintl", scope: !1233, file: !1233, line: 319, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!594, !589}
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1423, file: !1236, line: 1138)
!1423 = !DISubprogram(name: "llround", scope: !1233, file: !1233, line: 325, type: !1412, flags: DIFlagPrototyped, spFlags: 0)
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1425, file: !1236, line: 1139)
!1425 = !DISubprogram(name: "llroundf", scope: !1233, file: !1233, line: 325, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1427, file: !1236, line: 1140)
!1427 = !DISubprogram(name: "llroundl", scope: !1233, file: !1233, line: 325, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1429, file: !1236, line: 1143)
!1429 = !DISubprogram(name: "log1p", scope: !1233, file: !1233, line: 122, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1431, file: !1236, line: 1144)
!1431 = !DISubprogram(name: "log1pf", scope: !1233, file: !1233, line: 122, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1236, line: 1145)
!1433 = !DISubprogram(name: "log1pl", scope: !1233, file: !1233, line: 122, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1435, file: !1236, line: 1147)
!1435 = !DISubprogram(name: "log2", scope: !1233, file: !1233, line: 133, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1437, file: !1236, line: 1148)
!1437 = !DISubprogram(name: "log2f", scope: !1233, file: !1233, line: 133, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1439, file: !1236, line: 1149)
!1439 = !DISubprogram(name: "log2l", scope: !1233, file: !1233, line: 133, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1441, file: !1236, line: 1151)
!1441 = !DISubprogram(name: "logb", scope: !1233, file: !1233, line: 125, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1443, file: !1236, line: 1152)
!1443 = !DISubprogram(name: "logbf", scope: !1233, file: !1233, line: 125, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1445, file: !1236, line: 1153)
!1445 = !DISubprogram(name: "logbl", scope: !1233, file: !1233, line: 125, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1236, line: 1155)
!1447 = !DISubprogram(name: "lrint", scope: !1233, file: !1233, line: 317, type: !1448, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!538, !523}
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1451, file: !1236, line: 1156)
!1451 = !DISubprogram(name: "lrintf", scope: !1233, file: !1233, line: 317, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!538, !30}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1455, file: !1236, line: 1157)
!1455 = !DISubprogram(name: "lrintl", scope: !1233, file: !1233, line: 317, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!538, !589}
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1459, file: !1236, line: 1159)
!1459 = !DISubprogram(name: "lround", scope: !1233, file: !1233, line: 323, type: !1448, flags: DIFlagPrototyped, spFlags: 0)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1461, file: !1236, line: 1160)
!1461 = !DISubprogram(name: "lroundf", scope: !1233, file: !1233, line: 323, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1463, file: !1236, line: 1161)
!1463 = !DISubprogram(name: "lroundl", scope: !1233, file: !1233, line: 323, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1465, file: !1236, line: 1163)
!1465 = !DISubprogram(name: "nan", scope: !1233, file: !1233, line: 203, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1467, file: !1236, line: 1164)
!1467 = !DISubprogram(name: "nanf", scope: !1233, file: !1233, line: 203, type: !1468, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!30, !402}
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1471, file: !1236, line: 1165)
!1471 = !DISubprogram(name: "nanl", scope: !1233, file: !1233, line: 203, type: !1472, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!589, !402}
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1236, line: 1167)
!1475 = !DISubprogram(name: "nearbyint", scope: !1233, file: !1233, line: 297, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1477, file: !1236, line: 1168)
!1477 = !DISubprogram(name: "nearbyintf", scope: !1233, file: !1233, line: 297, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1236, line: 1169)
!1479 = !DISubprogram(name: "nearbyintl", scope: !1233, file: !1233, line: 297, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1481, file: !1236, line: 1171)
!1481 = !DISubprogram(name: "nextafter", scope: !1233, file: !1233, line: 262, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1483, file: !1236, line: 1172)
!1483 = !DISubprogram(name: "nextafterf", scope: !1233, file: !1233, line: 262, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1485, file: !1236, line: 1173)
!1485 = !DISubprogram(name: "nextafterl", scope: !1233, file: !1233, line: 262, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1487, file: !1236, line: 1175)
!1487 = !DISubprogram(name: "nexttoward", scope: !1233, file: !1233, line: 264, type: !1488, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!523, !523, !589}
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1491, file: !1236, line: 1176)
!1491 = !DISubprogram(name: "nexttowardf", scope: !1233, file: !1233, line: 264, type: !1492, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!30, !30, !589}
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1495, file: !1236, line: 1177)
!1495 = !DISubprogram(name: "nexttowardl", scope: !1233, file: !1233, line: 264, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1497, file: !1236, line: 1179)
!1497 = !DISubprogram(name: "remainder", scope: !1233, file: !1233, line: 275, type: !1243, flags: DIFlagPrototyped, spFlags: 0)
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1499, file: !1236, line: 1180)
!1499 = !DISubprogram(name: "remainderf", scope: !1233, file: !1233, line: 275, type: !1326, flags: DIFlagPrototyped, spFlags: 0)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1501, file: !1236, line: 1181)
!1501 = !DISubprogram(name: "remainderl", scope: !1233, file: !1233, line: 275, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1503, file: !1236, line: 1183)
!1503 = !DISubprogram(name: "remquo", scope: !1233, file: !1233, line: 310, type: !1504, flags: DIFlagPrototyped, spFlags: 0)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!523, !523, !523, !1263}
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1507, file: !1236, line: 1184)
!1507 = !DISubprogram(name: "remquof", scope: !1233, file: !1233, line: 310, type: !1508, flags: DIFlagPrototyped, spFlags: 0)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!30, !30, !30, !1263}
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1511, file: !1236, line: 1185)
!1511 = !DISubprogram(name: "remquol", scope: !1233, file: !1233, line: 310, type: !1512, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!589, !589, !589, !1263}
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1515, file: !1236, line: 1187)
!1515 = !DISubprogram(name: "rint", scope: !1233, file: !1233, line: 259, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1517, file: !1236, line: 1188)
!1517 = !DISubprogram(name: "rintf", scope: !1233, file: !1233, line: 259, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1519, file: !1236, line: 1189)
!1519 = !DISubprogram(name: "rintl", scope: !1233, file: !1233, line: 259, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1521, file: !1236, line: 1191)
!1521 = !DISubprogram(name: "round", scope: !1233, file: !1233, line: 301, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1523, file: !1236, line: 1192)
!1523 = !DISubprogram(name: "roundf", scope: !1233, file: !1233, line: 301, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1525, file: !1236, line: 1193)
!1525 = !DISubprogram(name: "roundl", scope: !1233, file: !1233, line: 301, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1236, line: 1195)
!1527 = !DISubprogram(name: "scalbln", scope: !1233, file: !1233, line: 293, type: !1528, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!523, !523, !538}
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1531, file: !1236, line: 1196)
!1531 = !DISubprogram(name: "scalblnf", scope: !1233, file: !1233, line: 293, type: !1532, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!30, !30, !538}
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1535, file: !1236, line: 1197)
!1535 = !DISubprogram(name: "scalblnl", scope: !1233, file: !1233, line: 293, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!589, !589, !538}
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1539, file: !1236, line: 1199)
!1539 = !DISubprogram(name: "scalbn", scope: !1233, file: !1233, line: 279, type: !1266, flags: DIFlagPrototyped, spFlags: 0)
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1541, file: !1236, line: 1200)
!1541 = !DISubprogram(name: "scalbnf", scope: !1233, file: !1233, line: 279, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!30, !30, !64}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1545, file: !1236, line: 1201)
!1545 = !DISubprogram(name: "scalbnl", scope: !1233, file: !1233, line: 279, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!589, !589, !64}
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1549, file: !1236, line: 1203)
!1549 = !DISubprogram(name: "tgamma", scope: !1233, file: !1233, line: 238, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1236, line: 1204)
!1551 = !DISubprogram(name: "tgammaf", scope: !1233, file: !1233, line: 238, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1553, file: !1236, line: 1205)
!1553 = !DISubprogram(name: "tgammal", scope: !1233, file: !1233, line: 238, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1555, file: !1236, line: 1207)
!1555 = !DISubprogram(name: "trunc", scope: !1233, file: !1233, line: 305, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1557, file: !1236, line: 1208)
!1557 = !DISubprogram(name: "truncf", scope: !1233, file: !1233, line: 305, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1236, line: 1209)
!1559 = !DISubprogram(name: "truncl", scope: !1233, file: !1233, line: 305, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1561, file: !1562, line: 38)
!1561 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !753, line: 79, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1562 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1564, file: !1562, line: 54)
!1564 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !1236, line: 380, type: !1565, flags: DIFlagPrototyped, spFlags: 0)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!589, !589, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !10, line: 28)
!1569 = !{i32 7, !"Dwarf Version", i32 5}
!1570 = !{i32 2, !"Debug Info Version", i32 3}
!1571 = !{i32 1, !"wchar_size", i32 4}
!1572 = !{i32 8, !"PIC Level", i32 2}
!1573 = !{i32 7, !"PIE Level", i32 2}
!1574 = !{i32 7, !"uwtable", i32 2}
!1575 = !{i32 7, !"frame-pointer", i32 2}
!1576 = !{!"clang version 16.0.0"}
!1577 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !447, file: !447, type: !766, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !216)
!1578 = !DILocation(line: 74, column: 25, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1577, file: !3, discriminator: 0)
!1580 = !DILocation(line: 0, scope: !1577)
!1581 = distinct !DISubprogram(name: "ComputeGeometry", linkageName: "_ZN12BodyGeometry15ComputeGeometryER8BodyPoseR14BodyParameters", scope: !1582, file: !10, line: 46, type: !1583, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1591, retainedNodes: !216)
!1582 = !DICompositeType(tag: DW_TAG_class_type, name: "BodyGeometry", file: !309, line: 73, size: 2816, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12BodyGeometry")
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1585, !1586, !1589}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1586 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_class_type, name: "BodyPose", file: !1588, line: 50, size: 768, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8BodyPose")
!1588 = !DIFile(filename: "../TrackingBenchmark/BodyPose.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "e13df61e2e7b453f911267c3c565ab23")
!1589 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_class_type, name: "BodyParameters", file: !309, line: 44, size: 1856, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS14BodyParameters")
!1591 = !DISubprogram(name: "ComputeGeometry", linkageName: "_ZN12BodyGeometry15ComputeGeometryER8BodyPoseR14BodyParameters", scope: !1582, file: !309, line: 98, type: !1583, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1592 = !DILocalVariable(name: "this", arg: 1, scope: !1581, type: !1593, flags: DIFlagArtificial | DIFlagObjectPointer)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1594 = !DILocation(line: 0, scope: !1581)
!1595 = !DILocalVariable(name: "angles", arg: 2, scope: !1581, file: !10, line: 46, type: !1586)
!1596 = !DILocation(line: 46, column: 46, scope: !1581)
!1597 = !DILocalVariable(name: "params", arg: 3, scope: !1581, file: !10, line: 46, type: !1589)
!1598 = !DILocation(line: 46, column: 70, scope: !1581)
!1599 = !DILocalVariable(name: "ANGLE_DECOMPOSITION_ORDER", scope: !1581, file: !10, line: 48, type: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1601 = !DILocation(line: 48, column: 16, scope: !1581)
!1602 = !DILocalVariable(name: "globalTpelvis", scope: !1581, file: !10, line: 51, type: !26)
!1603 = !DILocation(line: 51, column: 11, scope: !1581)
!1604 = !DILocation(line: 51, column: 25, scope: !1581)
!1605 = !DILocation(line: 51, column: 36, scope: !1581)
!1606 = !DILocation(line: 51, column: 47, scope: !1581)
!1607 = !DILocation(line: 52, column: 31, scope: !1581)
!1608 = !DILocation(line: 52, column: 42, scope: !1581)
!1609 = !DILocation(line: 52, column: 53, scope: !1581)
!1610 = !DILocation(line: 52, column: 16, scope: !1581)
!1611 = !DILocation(line: 53, column: 2, scope: !1581)
!1612 = !DILocation(line: 53, column: 20, scope: !1581)
!1613 = !DILocation(line: 53, column: 27, scope: !1581)
!1614 = !DILocation(line: 53, column: 40, scope: !1581)
!1615 = !DILocation(line: 53, column: 47, scope: !1581)
!1616 = !DILocation(line: 53, column: 60, scope: !1581)
!1617 = !DILocation(line: 53, column: 67, scope: !1581)
!1618 = !DILocation(line: 53, column: 16, scope: !1581)
!1619 = !DILocation(line: 54, column: 2, scope: !1581)
!1620 = !DILocation(line: 54, column: 16, scope: !1581)
!1621 = !DILocation(line: 54, column: 21, scope: !1581)
!1622 = !DILocation(line: 55, column: 8, scope: !1581)
!1623 = !DILocation(line: 55, column: 22, scope: !1581)
!1624 = !DILocation(line: 55, column: 28, scope: !1581)
!1625 = !DILocation(line: 55, column: 35, scope: !1581)
!1626 = !DILocation(line: 55, column: 48, scope: !1581)
!1627 = !DILocation(line: 55, column: 55, scope: !1581)
!1628 = !DILocation(line: 55, column: 2, scope: !1581)
!1629 = !DILocalVariable(name: "globalTlpelvis", scope: !1581, file: !10, line: 58, type: !26)
!1630 = !DILocation(line: 58, column: 11, scope: !1581)
!1631 = !DILocation(line: 58, column: 45, scope: !1581)
!1632 = !DILocation(line: 58, column: 43, scope: !1581)
!1633 = !DILocation(line: 58, column: 28, scope: !1581)
!1634 = !DILocation(line: 59, column: 34, scope: !1581)
!1635 = !DILocation(line: 59, column: 41, scope: !1581)
!1636 = !DILocation(line: 59, column: 2, scope: !1581)
!1637 = !DILocalVariable(name: "lthighTlpelvis", scope: !1581, file: !10, line: 60, type: !26)
!1638 = !DILocation(line: 60, column: 11, scope: !1581)
!1639 = !DILocation(line: 60, column: 26, scope: !1581)
!1640 = !DILocation(line: 60, column: 37, scope: !1581)
!1641 = !DILocation(line: 60, column: 48, scope: !1581)
!1642 = !DILocalVariable(name: "globalTlthigh", scope: !1581, file: !10, line: 61, type: !26)
!1643 = !DILocation(line: 61, column: 11, scope: !1581)
!1644 = !DILocation(line: 61, column: 44, scope: !1581)
!1645 = !DILocation(line: 61, column: 42, scope: !1581)
!1646 = !DILocation(line: 61, column: 27, scope: !1581)
!1647 = !DILocation(line: 62, column: 2, scope: !1581)
!1648 = !DILocation(line: 62, column: 20, scope: !1581)
!1649 = !DILocation(line: 62, column: 27, scope: !1581)
!1650 = !DILocation(line: 62, column: 40, scope: !1581)
!1651 = !DILocation(line: 62, column: 47, scope: !1581)
!1652 = !DILocation(line: 62, column: 60, scope: !1581)
!1653 = !DILocation(line: 62, column: 67, scope: !1581)
!1654 = !DILocation(line: 62, column: 16, scope: !1581)
!1655 = !DILocation(line: 63, column: 2, scope: !1581)
!1656 = !DILocation(line: 63, column: 16, scope: !1581)
!1657 = !DILocation(line: 63, column: 21, scope: !1581)
!1658 = !DILocation(line: 64, column: 8, scope: !1581)
!1659 = !DILocation(line: 64, column: 22, scope: !1581)
!1660 = !DILocation(line: 64, column: 28, scope: !1581)
!1661 = !DILocation(line: 64, column: 35, scope: !1581)
!1662 = !DILocation(line: 64, column: 48, scope: !1581)
!1663 = !DILocation(line: 64, column: 55, scope: !1581)
!1664 = !DILocation(line: 64, column: 2, scope: !1581)
!1665 = !DILocation(line: 67, column: 36, scope: !1581)
!1666 = !DILocation(line: 67, column: 43, scope: !1581)
!1667 = !DILocation(line: 67, column: 2, scope: !1581)
!1668 = !DILocalVariable(name: "ltibiaTlthigh", scope: !1581, file: !10, line: 68, type: !26)
!1669 = !DILocation(line: 68, column: 11, scope: !1581)
!1670 = !DILocation(line: 68, column: 28, scope: !1581)
!1671 = !DILocalVariable(name: "globalTltibia", scope: !1581, file: !10, line: 69, type: !26)
!1672 = !DILocation(line: 69, column: 11, scope: !1581)
!1673 = !DILocation(line: 69, column: 43, scope: !1581)
!1674 = !DILocation(line: 69, column: 41, scope: !1581)
!1675 = !DILocation(line: 69, column: 27, scope: !1581)
!1676 = !DILocation(line: 70, column: 2, scope: !1581)
!1677 = !DILocation(line: 70, column: 20, scope: !1581)
!1678 = !DILocation(line: 70, column: 27, scope: !1581)
!1679 = !DILocation(line: 70, column: 40, scope: !1581)
!1680 = !DILocation(line: 70, column: 47, scope: !1581)
!1681 = !DILocation(line: 70, column: 60, scope: !1581)
!1682 = !DILocation(line: 70, column: 67, scope: !1581)
!1683 = !DILocation(line: 70, column: 16, scope: !1581)
!1684 = !DILocation(line: 71, column: 2, scope: !1581)
!1685 = !DILocation(line: 71, column: 16, scope: !1581)
!1686 = !DILocation(line: 71, column: 21, scope: !1581)
!1687 = !DILocation(line: 72, column: 8, scope: !1581)
!1688 = !DILocation(line: 72, column: 22, scope: !1581)
!1689 = !DILocation(line: 72, column: 28, scope: !1581)
!1690 = !DILocation(line: 72, column: 35, scope: !1581)
!1691 = !DILocation(line: 72, column: 48, scope: !1581)
!1692 = !DILocation(line: 72, column: 55, scope: !1581)
!1693 = !DILocation(line: 72, column: 2, scope: !1581)
!1694 = !DILocalVariable(name: "globalTrpelvis", scope: !1581, file: !10, line: 75, type: !26)
!1695 = !DILocation(line: 75, column: 11, scope: !1581)
!1696 = !DILocation(line: 75, column: 45, scope: !1581)
!1697 = !DILocation(line: 75, column: 43, scope: !1581)
!1698 = !DILocation(line: 75, column: 28, scope: !1581)
!1699 = !DILocation(line: 76, column: 35, scope: !1581)
!1700 = !DILocation(line: 76, column: 42, scope: !1581)
!1701 = !DILocation(line: 76, column: 34, scope: !1581)
!1702 = !DILocation(line: 76, column: 2, scope: !1581)
!1703 = !DILocalVariable(name: "rthighTrpelvis", scope: !1581, file: !10, line: 77, type: !26)
!1704 = !DILocation(line: 77, column: 11, scope: !1581)
!1705 = !DILocation(line: 77, column: 26, scope: !1581)
!1706 = !DILocation(line: 77, column: 37, scope: !1581)
!1707 = !DILocation(line: 77, column: 48, scope: !1581)
!1708 = !DILocalVariable(name: "globalTrthigh", scope: !1581, file: !10, line: 78, type: !26)
!1709 = !DILocation(line: 78, column: 11, scope: !1581)
!1710 = !DILocation(line: 78, column: 44, scope: !1581)
!1711 = !DILocation(line: 78, column: 42, scope: !1581)
!1712 = !DILocation(line: 78, column: 27, scope: !1581)
!1713 = !DILocation(line: 79, column: 2, scope: !1581)
!1714 = !DILocation(line: 79, column: 20, scope: !1581)
!1715 = !DILocation(line: 79, column: 27, scope: !1581)
!1716 = !DILocation(line: 79, column: 40, scope: !1581)
!1717 = !DILocation(line: 79, column: 47, scope: !1581)
!1718 = !DILocation(line: 79, column: 60, scope: !1581)
!1719 = !DILocation(line: 79, column: 67, scope: !1581)
!1720 = !DILocation(line: 79, column: 16, scope: !1581)
!1721 = !DILocation(line: 80, column: 2, scope: !1581)
!1722 = !DILocation(line: 80, column: 16, scope: !1581)
!1723 = !DILocation(line: 80, column: 21, scope: !1581)
!1724 = !DILocation(line: 81, column: 8, scope: !1581)
!1725 = !DILocation(line: 81, column: 22, scope: !1581)
!1726 = !DILocation(line: 81, column: 28, scope: !1581)
!1727 = !DILocation(line: 81, column: 35, scope: !1581)
!1728 = !DILocation(line: 81, column: 48, scope: !1581)
!1729 = !DILocation(line: 81, column: 55, scope: !1581)
!1730 = !DILocation(line: 81, column: 2, scope: !1581)
!1731 = !DILocation(line: 84, column: 36, scope: !1581)
!1732 = !DILocation(line: 84, column: 43, scope: !1581)
!1733 = !DILocation(line: 84, column: 2, scope: !1581)
!1734 = !DILocalVariable(name: "rtibiaTrthigh", scope: !1581, file: !10, line: 85, type: !26)
!1735 = !DILocation(line: 85, column: 11, scope: !1581)
!1736 = !DILocation(line: 85, column: 28, scope: !1581)
!1737 = !DILocalVariable(name: "globalTrtibia", scope: !1581, file: !10, line: 86, type: !26)
!1738 = !DILocation(line: 86, column: 11, scope: !1581)
!1739 = !DILocation(line: 86, column: 43, scope: !1581)
!1740 = !DILocation(line: 86, column: 41, scope: !1581)
!1741 = !DILocation(line: 86, column: 27, scope: !1581)
!1742 = !DILocation(line: 87, column: 2, scope: !1581)
!1743 = !DILocation(line: 87, column: 20, scope: !1581)
!1744 = !DILocation(line: 87, column: 27, scope: !1581)
!1745 = !DILocation(line: 87, column: 40, scope: !1581)
!1746 = !DILocation(line: 87, column: 47, scope: !1581)
!1747 = !DILocation(line: 87, column: 60, scope: !1581)
!1748 = !DILocation(line: 87, column: 67, scope: !1581)
!1749 = !DILocation(line: 87, column: 16, scope: !1581)
!1750 = !DILocation(line: 88, column: 2, scope: !1581)
!1751 = !DILocation(line: 88, column: 16, scope: !1581)
!1752 = !DILocation(line: 88, column: 21, scope: !1581)
!1753 = !DILocation(line: 89, column: 8, scope: !1581)
!1754 = !DILocation(line: 89, column: 22, scope: !1581)
!1755 = !DILocation(line: 89, column: 28, scope: !1581)
!1756 = !DILocation(line: 89, column: 35, scope: !1581)
!1757 = !DILocation(line: 89, column: 48, scope: !1581)
!1758 = !DILocation(line: 89, column: 55, scope: !1581)
!1759 = !DILocation(line: 89, column: 2, scope: !1581)
!1760 = !DILocalVariable(name: "thoraxTpelvis", scope: !1581, file: !10, line: 91, type: !26)
!1761 = !DILocation(line: 91, column: 11, scope: !1581)
!1762 = !DILocation(line: 91, column: 28, scope: !1581)
!1763 = !DILocation(line: 91, column: 40, scope: !1581)
!1764 = !DILocalVariable(name: "globalTthorax", scope: !1581, file: !10, line: 92, type: !26)
!1765 = !DILocation(line: 92, column: 11, scope: !1581)
!1766 = !DILocation(line: 92, column: 44, scope: !1581)
!1767 = !DILocation(line: 92, column: 42, scope: !1581)
!1768 = !DILocation(line: 92, column: 66, scope: !1581)
!1769 = !DILocation(line: 92, column: 63, scope: !1581)
!1770 = !DILocation(line: 92, column: 27, scope: !1581)
!1771 = !DILocation(line: 93, column: 37, scope: !1581)
!1772 = !DILocation(line: 93, column: 44, scope: !1581)
!1773 = !DILocation(line: 93, column: 36, scope: !1581)
!1774 = !DILocation(line: 93, column: 2, scope: !1581)
!1775 = !DILocalVariable(name: "lclavicleTlthorax", scope: !1581, file: !10, line: 96, type: !26)
!1776 = !DILocation(line: 96, column: 11, scope: !1581)
!1777 = !DILocation(line: 96, column: 29, scope: !1581)
!1778 = !DILocation(line: 96, column: 41, scope: !1581)
!1779 = !DILocalVariable(name: "globalTlclavicle", scope: !1581, file: !10, line: 97, type: !26)
!1780 = !DILocation(line: 97, column: 11, scope: !1581)
!1781 = !DILocation(line: 97, column: 47, scope: !1581)
!1782 = !DILocation(line: 97, column: 45, scope: !1581)
!1783 = !DILocation(line: 97, column: 67, scope: !1581)
!1784 = !DILocation(line: 97, column: 65, scope: !1581)
!1785 = !DILocation(line: 97, column: 30, scope: !1581)
!1786 = !DILocation(line: 98, column: 40, scope: !1581)
!1787 = !DILocation(line: 98, column: 47, scope: !1581)
!1788 = !DILocation(line: 98, column: 39, scope: !1581)
!1789 = !DILocation(line: 98, column: 2, scope: !1581)
!1790 = !DILocalVariable(name: "lshoulderTlclavicle", scope: !1581, file: !10, line: 99, type: !26)
!1791 = !DILocation(line: 99, column: 11, scope: !1581)
!1792 = !DILocation(line: 99, column: 31, scope: !1581)
!1793 = !DILocation(line: 99, column: 43, scope: !1581)
!1794 = !DILocation(line: 99, column: 55, scope: !1581)
!1795 = !DILocalVariable(name: "r", scope: !1581, file: !10, line: 100, type: !26)
!1796 = !DILocation(line: 100, column: 11, scope: !1581)
!1797 = !DILocation(line: 100, column: 15, scope: !1581)
!1798 = !DILocation(line: 100, column: 34, scope: !1581)
!1799 = !DILocation(line: 100, column: 32, scope: !1581)
!1800 = !DILocation(line: 100, column: 54, scope: !1581)
!1801 = !DILocation(line: 100, column: 52, scope: !1581)
!1802 = !DILocalVariable(name: "globalTlshoulder", scope: !1581, file: !10, line: 101, type: !26)
!1803 = !DILocation(line: 101, column: 11, scope: !1581)
!1804 = !DILocation(line: 101, column: 47, scope: !1581)
!1805 = !DILocation(line: 101, column: 53, scope: !1581)
!1806 = !DILocation(line: 101, column: 51, scope: !1581)
!1807 = !DILocation(line: 101, column: 30, scope: !1581)
!1808 = !DILocation(line: 102, column: 2, scope: !1581)
!1809 = !DILocation(line: 102, column: 20, scope: !1581)
!1810 = !DILocation(line: 102, column: 27, scope: !1581)
!1811 = !DILocation(line: 102, column: 40, scope: !1581)
!1812 = !DILocation(line: 102, column: 47, scope: !1581)
!1813 = !DILocation(line: 102, column: 61, scope: !1581)
!1814 = !DILocation(line: 102, column: 68, scope: !1581)
!1815 = !DILocation(line: 102, column: 60, scope: !1581)
!1816 = !DILocation(line: 102, column: 16, scope: !1581)
!1817 = !DILocation(line: 103, column: 2, scope: !1581)
!1818 = !DILocation(line: 103, column: 16, scope: !1581)
!1819 = !DILocation(line: 103, column: 21, scope: !1581)
!1820 = !DILocation(line: 104, column: 8, scope: !1581)
!1821 = !DILocation(line: 104, column: 22, scope: !1581)
!1822 = !DILocation(line: 104, column: 28, scope: !1581)
!1823 = !DILocation(line: 104, column: 35, scope: !1581)
!1824 = !DILocation(line: 104, column: 48, scope: !1581)
!1825 = !DILocation(line: 104, column: 55, scope: !1581)
!1826 = !DILocation(line: 104, column: 2, scope: !1581)
!1827 = !DILocation(line: 107, column: 40, scope: !1581)
!1828 = !DILocation(line: 107, column: 47, scope: !1581)
!1829 = !DILocation(line: 107, column: 39, scope: !1581)
!1830 = !DILocation(line: 107, column: 2, scope: !1581)
!1831 = !DILocalVariable(name: "lelbowTlshoulder", scope: !1581, file: !10, line: 108, type: !26)
!1832 = !DILocation(line: 108, column: 11, scope: !1581)
!1833 = !DILocation(line: 108, column: 33, scope: !1581)
!1834 = !DILocalVariable(name: "globalTlelbow", scope: !1581, file: !10, line: 109, type: !26)
!1835 = !DILocation(line: 109, column: 11, scope: !1581)
!1836 = !DILocation(line: 109, column: 46, scope: !1581)
!1837 = !DILocation(line: 109, column: 44, scope: !1581)
!1838 = !DILocation(line: 109, column: 27, scope: !1581)
!1839 = !DILocation(line: 110, column: 2, scope: !1581)
!1840 = !DILocation(line: 110, column: 20, scope: !1581)
!1841 = !DILocation(line: 110, column: 27, scope: !1581)
!1842 = !DILocation(line: 110, column: 40, scope: !1581)
!1843 = !DILocation(line: 110, column: 47, scope: !1581)
!1844 = !DILocation(line: 110, column: 61, scope: !1581)
!1845 = !DILocation(line: 110, column: 68, scope: !1581)
!1846 = !DILocation(line: 110, column: 60, scope: !1581)
!1847 = !DILocation(line: 110, column: 16, scope: !1581)
!1848 = !DILocation(line: 111, column: 2, scope: !1581)
!1849 = !DILocation(line: 111, column: 16, scope: !1581)
!1850 = !DILocation(line: 111, column: 21, scope: !1581)
!1851 = !DILocation(line: 112, column: 8, scope: !1581)
!1852 = !DILocation(line: 112, column: 22, scope: !1581)
!1853 = !DILocation(line: 112, column: 28, scope: !1581)
!1854 = !DILocation(line: 112, column: 35, scope: !1581)
!1855 = !DILocation(line: 112, column: 48, scope: !1581)
!1856 = !DILocation(line: 112, column: 55, scope: !1581)
!1857 = !DILocation(line: 112, column: 2, scope: !1581)
!1858 = !DILocalVariable(name: "rclavicleTrthorax", scope: !1581, file: !10, line: 115, type: !26)
!1859 = !DILocation(line: 115, column: 11, scope: !1581)
!1860 = !DILocation(line: 115, column: 29, scope: !1581)
!1861 = !DILocation(line: 115, column: 41, scope: !1581)
!1862 = !DILocalVariable(name: "globalTrclavicle", scope: !1581, file: !10, line: 116, type: !26)
!1863 = !DILocation(line: 116, column: 11, scope: !1581)
!1864 = !DILocation(line: 116, column: 46, scope: !1581)
!1865 = !DILocation(line: 116, column: 44, scope: !1581)
!1866 = !DILocation(line: 116, column: 66, scope: !1581)
!1867 = !DILocation(line: 116, column: 64, scope: !1581)
!1868 = !DILocation(line: 116, column: 30, scope: !1581)
!1869 = !DILocation(line: 117, column: 40, scope: !1581)
!1870 = !DILocation(line: 117, column: 47, scope: !1581)
!1871 = !DILocation(line: 117, column: 39, scope: !1581)
!1872 = !DILocation(line: 117, column: 2, scope: !1581)
!1873 = !DILocalVariable(name: "rshoulderTrclavicle", scope: !1581, file: !10, line: 118, type: !26)
!1874 = !DILocation(line: 118, column: 11, scope: !1581)
!1875 = !DILocation(line: 118, column: 31, scope: !1581)
!1876 = !DILocation(line: 118, column: 42, scope: !1581)
!1877 = !DILocation(line: 118, column: 53, scope: !1581)
!1878 = !DILocalVariable(name: "globalTrshoulder", scope: !1581, file: !10, line: 119, type: !26)
!1879 = !DILocation(line: 119, column: 11, scope: !1581)
!1880 = !DILocation(line: 119, column: 48, scope: !1581)
!1881 = !DILocation(line: 119, column: 55, scope: !1581)
!1882 = !DILocation(line: 119, column: 53, scope: !1581)
!1883 = !DILocation(line: 119, column: 30, scope: !1581)
!1884 = !DILocation(line: 120, column: 2, scope: !1581)
!1885 = !DILocation(line: 120, column: 20, scope: !1581)
!1886 = !DILocation(line: 120, column: 27, scope: !1581)
!1887 = !DILocation(line: 120, column: 40, scope: !1581)
!1888 = !DILocation(line: 120, column: 47, scope: !1581)
!1889 = !DILocation(line: 120, column: 61, scope: !1581)
!1890 = !DILocation(line: 120, column: 68, scope: !1581)
!1891 = !DILocation(line: 120, column: 60, scope: !1581)
!1892 = !DILocation(line: 120, column: 16, scope: !1581)
!1893 = !DILocation(line: 121, column: 2, scope: !1581)
!1894 = !DILocation(line: 121, column: 16, scope: !1581)
!1895 = !DILocation(line: 121, column: 21, scope: !1581)
!1896 = !DILocation(line: 122, column: 8, scope: !1581)
!1897 = !DILocation(line: 122, column: 22, scope: !1581)
!1898 = !DILocation(line: 122, column: 28, scope: !1581)
!1899 = !DILocation(line: 122, column: 35, scope: !1581)
!1900 = !DILocation(line: 122, column: 48, scope: !1581)
!1901 = !DILocation(line: 122, column: 55, scope: !1581)
!1902 = !DILocation(line: 122, column: 2, scope: !1581)
!1903 = !DILocation(line: 125, column: 40, scope: !1581)
!1904 = !DILocation(line: 125, column: 47, scope: !1581)
!1905 = !DILocation(line: 125, column: 39, scope: !1581)
!1906 = !DILocation(line: 125, column: 2, scope: !1581)
!1907 = !DILocalVariable(name: "relbowTrshoulder", scope: !1581, file: !10, line: 126, type: !26)
!1908 = !DILocation(line: 126, column: 11, scope: !1581)
!1909 = !DILocation(line: 126, column: 33, scope: !1581)
!1910 = !DILocalVariable(name: "globalTrelbow", scope: !1581, file: !10, line: 127, type: !26)
!1911 = !DILocation(line: 127, column: 11, scope: !1581)
!1912 = !DILocation(line: 127, column: 46, scope: !1581)
!1913 = !DILocation(line: 127, column: 44, scope: !1581)
!1914 = !DILocation(line: 127, column: 27, scope: !1581)
!1915 = !DILocation(line: 128, column: 2, scope: !1581)
!1916 = !DILocation(line: 128, column: 20, scope: !1581)
!1917 = !DILocation(line: 128, column: 27, scope: !1581)
!1918 = !DILocation(line: 128, column: 40, scope: !1581)
!1919 = !DILocation(line: 128, column: 47, scope: !1581)
!1920 = !DILocation(line: 128, column: 61, scope: !1581)
!1921 = !DILocation(line: 128, column: 68, scope: !1581)
!1922 = !DILocation(line: 128, column: 60, scope: !1581)
!1923 = !DILocation(line: 128, column: 16, scope: !1581)
!1924 = !DILocation(line: 129, column: 2, scope: !1581)
!1925 = !DILocation(line: 129, column: 16, scope: !1581)
!1926 = !DILocation(line: 129, column: 21, scope: !1581)
!1927 = !DILocation(line: 130, column: 8, scope: !1581)
!1928 = !DILocation(line: 130, column: 22, scope: !1581)
!1929 = !DILocation(line: 130, column: 28, scope: !1581)
!1930 = !DILocation(line: 130, column: 35, scope: !1581)
!1931 = !DILocation(line: 130, column: 48, scope: !1581)
!1932 = !DILocation(line: 130, column: 55, scope: !1581)
!1933 = !DILocation(line: 130, column: 2, scope: !1581)
!1934 = !DILocalVariable(name: "headTthorax", scope: !1581, file: !10, line: 133, type: !26)
!1935 = !DILocation(line: 133, column: 11, scope: !1581)
!1936 = !DILocation(line: 133, column: 23, scope: !1581)
!1937 = !DILocation(line: 133, column: 35, scope: !1581)
!1938 = !DILocation(line: 133, column: 47, scope: !1581)
!1939 = !DILocalVariable(name: "globalThead", scope: !1581, file: !10, line: 134, type: !26)
!1940 = !DILocation(line: 134, column: 11, scope: !1581)
!1941 = !DILocation(line: 134, column: 42, scope: !1581)
!1942 = !DILocation(line: 134, column: 40, scope: !1581)
!1943 = !DILocation(line: 134, column: 63, scope: !1581)
!1944 = !DILocation(line: 134, column: 61, scope: !1581)
!1945 = !DILocation(line: 134, column: 25, scope: !1581)
!1946 = !DILocation(line: 135, column: 2, scope: !1581)
!1947 = !DILocation(line: 135, column: 20, scope: !1581)
!1948 = !DILocation(line: 135, column: 27, scope: !1581)
!1949 = !DILocation(line: 135, column: 40, scope: !1581)
!1950 = !DILocation(line: 135, column: 47, scope: !1581)
!1951 = !DILocation(line: 135, column: 60, scope: !1581)
!1952 = !DILocation(line: 135, column: 67, scope: !1581)
!1953 = !DILocation(line: 135, column: 16, scope: !1581)
!1954 = !DILocation(line: 136, column: 2, scope: !1581)
!1955 = !DILocation(line: 136, column: 16, scope: !1581)
!1956 = !DILocation(line: 136, column: 21, scope: !1581)
!1957 = !DILocation(line: 137, column: 8, scope: !1581)
!1958 = !DILocation(line: 137, column: 22, scope: !1581)
!1959 = !DILocation(line: 137, column: 28, scope: !1581)
!1960 = !DILocation(line: 137, column: 35, scope: !1581)
!1961 = !DILocation(line: 137, column: 48, scope: !1581)
!1962 = !DILocation(line: 137, column: 55, scope: !1581)
!1963 = !DILocation(line: 137, column: 2, scope: !1581)
!1964 = !DILocation(line: 139, column: 1, scope: !1581)
!1965 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN8BodyPoseclEi", scope: !1587, file: !1588, line: 60, type: !1966, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1969, retainedNodes: !216)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!63, !1968, !64}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1969 = !DISubprogram(name: "operator()", linkageName: "_ZN8BodyPoseclEi", scope: !1587, file: !1588, line: 60, type: !1966, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1970 = !DILocalVariable(name: "this", arg: 1, scope: !1965, type: !1971, flags: DIFlagArtificial | DIFlagObjectPointer)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1972 = !DILocation(line: 0, scope: !1965)
!1973 = !DILocalVariable(name: "i", arg: 2, scope: !1965, file: !1588, line: 60, type: !64)
!1974 = !DILocation(line: 60, column: 24, scope: !1965)
!1975 = !DILocation(line: 60, column: 34, scope: !1965)
!1976 = !DILocation(line: 60, column: 42, scope: !1965)
!1977 = !DILocation(line: 60, column: 27, scope: !1965)
!1978 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2Efff7DMOrder", scope: !26, file: !13, line: 134, type: !54, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !53, retainedNodes: !216)
!1979 = !DILocalVariable(name: "this", arg: 1, scope: !1978, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!1980 = !DILocation(line: 0, scope: !1978)
!1981 = !DILocalVariable(name: "theta", arg: 2, scope: !1978, file: !13, line: 54, type: !30)
!1982 = !DILocation(line: 54, column: 16, scope: !1978)
!1983 = !DILocalVariable(name: "phi", arg: 3, scope: !1978, file: !13, line: 54, type: !30)
!1984 = !DILocation(line: 54, column: 29, scope: !1978)
!1985 = !DILocalVariable(name: "tau", arg: 4, scope: !1978, file: !13, line: 54, type: !30)
!1986 = !DILocation(line: 54, column: 40, scope: !1978)
!1987 = !DILocalVariable(name: "order", arg: 5, scope: !1978, file: !13, line: 54, type: !56)
!1988 = !DILocation(line: 54, column: 53, scope: !1978)
!1989 = !DILocation(line: 135, column: 24, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1978, file: !13, line: 135, column: 1)
!1991 = !DILocation(line: 135, column: 31, scope: !1990)
!1992 = !DILocation(line: 135, column: 36, scope: !1990)
!1993 = !DILocation(line: 135, column: 41, scope: !1990)
!1994 = !DILocation(line: 135, column: 3, scope: !1990)
!1995 = !DILocation(line: 136, column: 1, scope: !1978)
!1996 = distinct !DISubprogram(name: "SetTranslation", linkageName: "_ZN7DMatrixIfE14SetTranslationEfff", scope: !26, file: !13, line: 72, type: !67, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !66, retainedNodes: !216)
!1997 = !DILocalVariable(name: "this", arg: 1, scope: !1996, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!1998 = !DILocation(line: 0, scope: !1996)
!1999 = !DILocalVariable(name: "t1", arg: 2, scope: !1996, file: !13, line: 72, type: !48)
!2000 = !DILocation(line: 72, column: 30, scope: !1996)
!2001 = !DILocalVariable(name: "t2", arg: 3, scope: !1996, file: !13, line: 72, type: !48)
!2002 = !DILocation(line: 72, column: 42, scope: !1996)
!2003 = !DILocalVariable(name: "t3", arg: 4, scope: !1996, file: !13, line: 72, type: !48)
!2004 = !DILocation(line: 72, column: 54, scope: !1996)
!2005 = !DILocation(line: 72, column: 73, scope: !1996)
!2006 = !DILocation(line: 72, column: 60, scope: !1996)
!2007 = !DILocation(line: 72, column: 71, scope: !1996)
!2008 = !DILocation(line: 72, column: 90, scope: !1996)
!2009 = !DILocation(line: 72, column: 77, scope: !1996)
!2010 = !DILocation(line: 72, column: 88, scope: !1996)
!2011 = !DILocation(line: 72, column: 107, scope: !1996)
!2012 = !DILocation(line: 72, column: 94, scope: !1996)
!2013 = !DILocation(line: 72, column: 105, scope: !1996)
!2014 = !DILocation(line: 72, column: 111, scope: !1996)
!2015 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI10KTCylinderSaIS0_EEixEm", scope: !2016, file: !81, line: 1043, type: !2017, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2072, retainedNodes: !216)
!2016 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<KTCylinder, std::allocator<KTCylinder> >", scope: !2, file: !81, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI10KTCylinderSaIS0_EE")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !2071, !80}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2016, file: !81, line: 417, baseType: !2020, flags: DIFlagPublic)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !2021, file: !158, line: 62, baseType: !2068)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<KTCylinder>, KTCylinder>", scope: !160, file: !158, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !2022, templateParams: !2066, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_EE")
!2022 = !{!2023, !2052, !2057, !2061, !2062, !2063, !2064, !2065}
!2023 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2021, baseType: !2024, extraData: i32 0)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<KTCylinder> >", scope: !2, file: !164, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !2025, templateParams: !2050, identifier: "_ZTSSt16allocator_traitsISaI10KTCylinderEE")
!2025 = !{!2026, !2035, !2038, !2041, !2047}
!2026 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8allocateERS1_m", scope: !2024, file: !164, line: 463, type: !2027, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !2032, !174}
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !2024, file: !164, line: 420, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_class_type, name: "KTCylinder", file: !309, line: 57, size: 480, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS10KTCylinder")
!2032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !2024, file: !164, line: 414, baseType: !2034)
!2034 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<KTCylinder>", scope: !2, file: !173, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI10KTCylinderE")
!2035 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8allocateERS1_mPKv", scope: !2024, file: !164, line: 477, type: !2036, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2029, !2032, !174, !178}
!2038 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE10deallocateERS1_PS0_m", scope: !2024, file: !164, line: 495, type: !2039, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !2032, !2029, !174}
!2041 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE8max_sizeERKS1_", scope: !2024, file: !164, line: 547, type: !2042, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !2024, file: !164, line: 435, baseType: !82)
!2045 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2047 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI10KTCylinderEE37select_on_container_copy_constructionERKS1_", scope: !2024, file: !164, line: 562, type: !2048, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2033, !2045}
!2050 = !{!2051}
!2051 = !DITemplateTypeParameter(name: "_Alloc", type: !2034)
!2052 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E17_S_select_on_copyERKS2_", scope: !2021, file: !158, line: 97, type: !2053, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!2034, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2057 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E10_S_on_swapERS2_S4_", scope: !2021, file: !158, line: 100, type: !2058, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2060, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2034, size: 64)
!2061 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E27_S_propagate_on_copy_assignEv", scope: !2021, file: !158, line: 103, type: !203, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2062 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E27_S_propagate_on_move_assignEv", scope: !2021, file: !158, line: 106, type: !203, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2063 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E20_S_propagate_on_swapEv", scope: !2021, file: !158, line: 109, type: !203, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2064 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E15_S_always_equalEv", scope: !2021, file: !158, line: 112, type: !203, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2065 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI10KTCylinderES1_E15_S_nothrow_moveEv", scope: !2021, file: !158, line: 115, type: !203, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!2066 = !{!2051, !2067}
!2067 = !DITemplateTypeParameter(type: !2031)
!2068 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2021, file: !158, line: 56, baseType: !2070)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !2024, file: !164, line: 417, baseType: !2031)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2072 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI10KTCylinderSaIS0_EEixEm", scope: !2016, file: !81, line: 1043, type: !2017, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2073 = !DILocalVariable(name: "this", arg: 1, scope: !2015, type: !2074, flags: DIFlagArtificial | DIFlagObjectPointer)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2075 = !DILocation(line: 0, scope: !2015)
!2076 = !DILocalVariable(name: "__n", arg: 2, scope: !2015, file: !81, line: 1043, type: !80)
!2077 = !DILocation(line: 1043, column: 28, scope: !2015)
!2078 = !DILocation(line: 1046, column: 17, scope: !2015)
!2079 = !DILocation(line: 1046, column: 25, scope: !2015)
!2080 = !DILocation(line: 1046, column: 36, scope: !2015)
!2081 = !DILocation(line: 1046, column: 34, scope: !2015)
!2082 = !DILocation(line: 1046, column: 2, scope: !2015)
!2083 = distinct !DISubprogram(name: "Set", linkageName: "_ZN10KTCylinder3SetEfff", scope: !2031, file: !309, line: 69, type: !2084, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2087, retainedNodes: !216)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !2086, !30, !30, !30}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2087 = !DISubprogram(name: "Set", linkageName: "_ZN10KTCylinder3SetEfff", scope: !2031, file: !309, line: 69, type: !2084, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2088 = !DILocalVariable(name: "this", arg: 1, scope: !2083, type: !2030, flags: DIFlagArtificial | DIFlagObjectPointer)
!2089 = !DILocation(line: 0, scope: !2083)
!2090 = !DILocalVariable(name: "b", arg: 2, scope: !2083, file: !309, line: 69, type: !30)
!2091 = !DILocation(line: 69, column: 17, scope: !2083)
!2092 = !DILocalVariable(name: "t", arg: 3, scope: !2083, file: !309, line: 69, type: !30)
!2093 = !DILocation(line: 69, column: 26, scope: !2083)
!2094 = !DILocalVariable(name: "l", arg: 4, scope: !2083, file: !309, line: 69, type: !30)
!2095 = !DILocation(line: 69, column: 35, scope: !2083)
!2096 = !DILocation(line: 69, column: 45, scope: !2083)
!2097 = !DILocation(line: 69, column: 39, scope: !2083)
!2098 = !DILocation(line: 69, column: 43, scope: !2083)
!2099 = !DILocation(line: 69, column: 57, scope: !2083)
!2100 = !DILocation(line: 69, column: 48, scope: !2083)
!2101 = !DILocation(line: 69, column: 55, scope: !2083)
!2102 = !DILocation(line: 69, column: 69, scope: !2083)
!2103 = !DILocation(line: 69, column: 60, scope: !2083)
!2104 = !DILocation(line: 69, column: 67, scope: !2083)
!2105 = !DILocation(line: 69, column: 72, scope: !2083)
!2106 = distinct !DISubprogram(name: "Scale", linkageName: "_Z5ScaleR7DMatrixIfEfff", scope: !10, file: !10, line: 31, type: !2107, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !216)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2109, !30, !30, !30}
!2109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!2110 = !DILocalVariable(name: "m", arg: 1, scope: !2106, file: !10, line: 31, type: !2109)
!2111 = !DILocation(line: 31, column: 29, scope: !2106)
!2112 = !DILocalVariable(name: "s1", arg: 2, scope: !2106, file: !10, line: 31, type: !30)
!2113 = !DILocation(line: 31, column: 38, scope: !2106)
!2114 = !DILocalVariable(name: "s2", arg: 3, scope: !2106, file: !10, line: 31, type: !30)
!2115 = !DILocation(line: 31, column: 48, scope: !2106)
!2116 = !DILocalVariable(name: "s3", arg: 4, scope: !2106, file: !10, line: 31, type: !30)
!2117 = !DILocation(line: 31, column: 58, scope: !2106)
!2118 = !DILocation(line: 32, column: 13, scope: !2106)
!2119 = !DILocation(line: 32, column: 3, scope: !2106)
!2120 = !DILocation(line: 32, column: 10, scope: !2106)
!2121 = !DILocation(line: 32, column: 28, scope: !2106)
!2122 = !DILocation(line: 32, column: 18, scope: !2106)
!2123 = !DILocation(line: 32, column: 25, scope: !2106)
!2124 = !DILocation(line: 32, column: 42, scope: !2106)
!2125 = !DILocation(line: 32, column: 32, scope: !2106)
!2126 = !DILocation(line: 32, column: 39, scope: !2106)
!2127 = !DILocation(line: 33, column: 12, scope: !2106)
!2128 = !DILocation(line: 33, column: 2, scope: !2106)
!2129 = !DILocation(line: 33, column: 9, scope: !2106)
!2130 = !DILocation(line: 33, column: 27, scope: !2106)
!2131 = !DILocation(line: 33, column: 17, scope: !2106)
!2132 = !DILocation(line: 33, column: 24, scope: !2106)
!2133 = !DILocation(line: 33, column: 41, scope: !2106)
!2134 = !DILocation(line: 33, column: 31, scope: !2106)
!2135 = !DILocation(line: 33, column: 38, scope: !2106)
!2136 = !DILocation(line: 34, column: 12, scope: !2106)
!2137 = !DILocation(line: 34, column: 2, scope: !2106)
!2138 = !DILocation(line: 34, column: 9, scope: !2106)
!2139 = !DILocation(line: 34, column: 27, scope: !2106)
!2140 = !DILocation(line: 34, column: 17, scope: !2106)
!2141 = !DILocation(line: 34, column: 24, scope: !2106)
!2142 = !DILocation(line: 34, column: 41, scope: !2106)
!2143 = !DILocation(line: 34, column: 31, scope: !2106)
!2144 = !DILocation(line: 34, column: 38, scope: !2106)
!2145 = !DILocation(line: 35, column: 1, scope: !2106)
!2146 = distinct !DISubprogram(name: "operator*<float>", linkageName: "_ZmlIfE7DMatrixIT_ERKS2_S4_", scope: !13, file: !13, line: 208, type: !2147, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !77, retainedNodes: !216)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!26, !2149, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!2151 = !DILocalVariable(name: "dm1", arg: 1, scope: !2146, file: !13, line: 208, type: !2149)
!2152 = !DILocation(line: 208, column: 47, scope: !2146)
!2153 = !DILocalVariable(name: "dm2", arg: 2, scope: !2146, file: !13, line: 208, type: !2149)
!2154 = !DILocation(line: 208, column: 70, scope: !2146)
!2155 = !DILocation(line: 210, column: 2, scope: !2146)
!2156 = !DILocalVariable(name: "m3", scope: !2146, file: !13, line: 210, type: !26)
!2157 = !DILocation(line: 210, column: 13, scope: !2146)
!2158 = !DILocalVariable(name: "m1", scope: !2146, file: !13, line: 210, type: !2109)
!2159 = !DILocation(line: 210, column: 18, scope: !2146)
!2160 = !DILocation(line: 210, column: 40, scope: !2146)
!2161 = !DILocalVariable(name: "m2", scope: !2146, file: !13, line: 210, type: !2109)
!2162 = !DILocation(line: 210, column: 47, scope: !2146)
!2163 = !DILocation(line: 210, column: 69, scope: !2146)
!2164 = !DILocalVariable(name: "r", scope: !2165, file: !13, line: 211, type: !64)
!2165 = distinct !DILexicalBlock(scope: !2146, file: !13, line: 211, column: 2)
!2166 = !DILocation(line: 211, column: 10, scope: !2165)
!2167 = !DILocation(line: 211, column: 6, scope: !2165)
!2168 = !DILocation(line: 211, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !13, line: 211, column: 2)
!2170 = !DILocation(line: 211, column: 19, scope: !2169)
!2171 = !DILocation(line: 211, column: 2, scope: !2165)
!2172 = !DILocalVariable(name: "c", scope: !2173, file: !13, line: 212, type: !64)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !13, line: 212, column: 3)
!2174 = !DILocation(line: 212, column: 11, scope: !2173)
!2175 = !DILocation(line: 212, column: 7, scope: !2173)
!2176 = !DILocation(line: 212, column: 18, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !13, line: 212, column: 3)
!2178 = !DILocation(line: 212, column: 20, scope: !2177)
!2179 = !DILocation(line: 212, column: 3, scope: !2173)
!2180 = !DILocation(line: 213, column: 14, scope: !2177)
!2181 = !DILocation(line: 213, column: 17, scope: !2177)
!2182 = !DILocation(line: 213, column: 24, scope: !2177)
!2183 = !DILocation(line: 213, column: 29, scope: !2177)
!2184 = !DILocation(line: 213, column: 34, scope: !2177)
!2185 = !DILocation(line: 213, column: 37, scope: !2177)
!2186 = !DILocation(line: 213, column: 44, scope: !2177)
!2187 = !DILocation(line: 213, column: 49, scope: !2177)
!2188 = !DILocation(line: 213, column: 42, scope: !2177)
!2189 = !DILocation(line: 213, column: 32, scope: !2177)
!2190 = !DILocation(line: 213, column: 54, scope: !2177)
!2191 = !DILocation(line: 213, column: 57, scope: !2177)
!2192 = !DILocation(line: 213, column: 64, scope: !2177)
!2193 = !DILocation(line: 213, column: 69, scope: !2177)
!2194 = !DILocation(line: 213, column: 52, scope: !2177)
!2195 = !DILocation(line: 213, column: 7, scope: !2177)
!2196 = !DILocation(line: 213, column: 9, scope: !2177)
!2197 = !DILocation(line: 213, column: 4, scope: !2177)
!2198 = !DILocation(line: 213, column: 12, scope: !2177)
!2199 = !DILocation(line: 212, column: 26, scope: !2177)
!2200 = !DILocation(line: 212, column: 3, scope: !2177)
!2201 = distinct !{!2201, !2179, !2202, !2203}
!2202 = !DILocation(line: 213, column: 70, scope: !2173)
!2203 = !{!"llvm.loop.mustprogress"}
!2204 = !DILocation(line: 211, column: 25, scope: !2169)
!2205 = !DILocation(line: 211, column: 2, scope: !2169)
!2206 = distinct !{!2206, !2171, !2207, !2203}
!2207 = !DILocation(line: 213, column: 70, scope: !2165)
!2208 = !DILocation(line: 214, column: 13, scope: !2146)
!2209 = !DILocation(line: 214, column: 2, scope: !2146)
!2210 = !DILocation(line: 214, column: 10, scope: !2146)
!2211 = !DILocation(line: 214, column: 33, scope: !2146)
!2212 = !DILocation(line: 214, column: 22, scope: !2146)
!2213 = !DILocation(line: 214, column: 30, scope: !2146)
!2214 = !DILocation(line: 214, column: 53, scope: !2146)
!2215 = !DILocation(line: 214, column: 42, scope: !2146)
!2216 = !DILocation(line: 214, column: 50, scope: !2146)
!2217 = !DILocation(line: 215, column: 2, scope: !2146)
!2218 = !DILocation(line: 216, column: 1, scope: !2146)
!2219 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2EPKf", scope: !26, file: !13, line: 48, type: !45, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !44, retainedNodes: !216)
!2220 = !DILocalVariable(name: "this", arg: 1, scope: !2219, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!2221 = !DILocation(line: 0, scope: !2219)
!2222 = !DILocalVariable(name: "p", arg: 2, scope: !2219, file: !13, line: 48, type: !47)
!2223 = !DILocation(line: 48, column: 19, scope: !2219)
!2224 = !DILocation(line: 48, column: 31, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !13, line: 48, column: 22)
!2226 = !DILocation(line: 48, column: 24, scope: !2225)
!2227 = !DILocation(line: 48, column: 37, scope: !2225)
!2228 = !DILocation(line: 48, column: 57, scope: !2219)
!2229 = distinct !DISubprogram(name: "~DMatrix", linkageName: "_ZN7DMatrixIfED2Ev", scope: !26, file: !13, line: 57, type: !35, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !57, retainedNodes: !216)
!2230 = !DILocalVariable(name: "this", arg: 1, scope: !2229, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!2231 = !DILocation(line: 0, scope: !2229)
!2232 = !DILocation(line: 57, column: 14, scope: !2229)
!2233 = distinct !DISubprogram(name: "PreTranslate", linkageName: "_Z12PreTranslateR7DMatrixIfEfff", scope: !10, file: !10, line: 38, type: !2107, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !216)
!2234 = !DILocalVariable(name: "m", arg: 1, scope: !2233, file: !10, line: 38, type: !2109)
!2235 = !DILocation(line: 38, column: 36, scope: !2233)
!2236 = !DILocalVariable(name: "t1", arg: 2, scope: !2233, file: !10, line: 38, type: !30)
!2237 = !DILocation(line: 38, column: 45, scope: !2233)
!2238 = !DILocalVariable(name: "t2", arg: 3, scope: !2233, file: !10, line: 38, type: !30)
!2239 = !DILocation(line: 38, column: 55, scope: !2233)
!2240 = !DILocalVariable(name: "t3", arg: 4, scope: !2233, file: !10, line: 38, type: !30)
!2241 = !DILocation(line: 38, column: 65, scope: !2233)
!2242 = !DILocation(line: 40, column: 11, scope: !2233)
!2243 = !DILocation(line: 40, column: 20, scope: !2233)
!2244 = !DILocation(line: 40, column: 25, scope: !2233)
!2245 = !DILocation(line: 40, column: 34, scope: !2233)
!2246 = !DILocation(line: 40, column: 32, scope: !2233)
!2247 = !DILocation(line: 40, column: 23, scope: !2233)
!2248 = !DILocation(line: 40, column: 39, scope: !2233)
!2249 = !DILocation(line: 40, column: 48, scope: !2233)
!2250 = !DILocation(line: 40, column: 37, scope: !2233)
!2251 = !DILocation(line: 40, column: 53, scope: !2233)
!2252 = !DILocation(line: 40, column: 51, scope: !2233)
!2253 = !DILocation(line: 40, column: 2, scope: !2233)
!2254 = !DILocation(line: 40, column: 9, scope: !2233)
!2255 = !DILocation(line: 41, column: 11, scope: !2233)
!2256 = !DILocation(line: 41, column: 20, scope: !2233)
!2257 = !DILocation(line: 41, column: 25, scope: !2233)
!2258 = !DILocation(line: 41, column: 34, scope: !2233)
!2259 = !DILocation(line: 41, column: 32, scope: !2233)
!2260 = !DILocation(line: 41, column: 23, scope: !2233)
!2261 = !DILocation(line: 41, column: 39, scope: !2233)
!2262 = !DILocation(line: 41, column: 48, scope: !2233)
!2263 = !DILocation(line: 41, column: 37, scope: !2233)
!2264 = !DILocation(line: 41, column: 53, scope: !2233)
!2265 = !DILocation(line: 41, column: 51, scope: !2233)
!2266 = !DILocation(line: 41, column: 2, scope: !2233)
!2267 = !DILocation(line: 41, column: 9, scope: !2233)
!2268 = !DILocation(line: 42, column: 11, scope: !2233)
!2269 = !DILocation(line: 42, column: 20, scope: !2233)
!2270 = !DILocation(line: 42, column: 25, scope: !2233)
!2271 = !DILocation(line: 42, column: 34, scope: !2233)
!2272 = !DILocation(line: 42, column: 32, scope: !2233)
!2273 = !DILocation(line: 42, column: 23, scope: !2233)
!2274 = !DILocation(line: 42, column: 39, scope: !2233)
!2275 = !DILocation(line: 42, column: 48, scope: !2233)
!2276 = !DILocation(line: 42, column: 37, scope: !2233)
!2277 = !DILocation(line: 42, column: 53, scope: !2233)
!2278 = !DILocation(line: 42, column: 51, scope: !2233)
!2279 = !DILocation(line: 42, column: 2, scope: !2233)
!2280 = !DILocation(line: 42, column: 9, scope: !2233)
!2281 = !DILocation(line: 43, column: 1, scope: !2233)
!2282 = distinct !DISubprogram(name: "Inverse<float>", linkageName: "_Z7InverseIfE7DMatrixIT_ERKS2_", scope: !13, file: !13, line: 233, type: !2283, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !77, retainedNodes: !216)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!26, !2149}
!2285 = !DILocalVariable(name: "dm", arg: 1, scope: !2282, file: !13, line: 233, type: !2149)
!2286 = !DILocation(line: 233, column: 38, scope: !2282)
!2287 = !DILocation(line: 235, column: 2, scope: !2282)
!2288 = !DILocalVariable(name: "r", scope: !2282, file: !13, line: 235, type: !26)
!2289 = !DILocation(line: 235, column: 13, scope: !2282)
!2290 = !DILocalVariable(name: "m", scope: !2282, file: !13, line: 235, type: !2109)
!2291 = !DILocation(line: 235, column: 17, scope: !2282)
!2292 = !DILocation(line: 235, column: 38, scope: !2282)
!2293 = !DILocation(line: 236, column: 4, scope: !2282)
!2294 = !DILocalVariable(name: "k1", scope: !2282, file: !13, line: 237, type: !30)
!2295 = !DILocation(line: 237, column: 4, scope: !2282)
!2296 = !DILocation(line: 237, column: 9, scope: !2282)
!2297 = !DILocation(line: 237, column: 18, scope: !2282)
!2298 = !DILocation(line: 237, column: 27, scope: !2282)
!2299 = !DILocation(line: 237, column: 36, scope: !2282)
!2300 = !DILocation(line: 237, column: 34, scope: !2282)
!2301 = !DILocation(line: 237, column: 25, scope: !2282)
!2302 = !DILocalVariable(name: "k2", scope: !2282, file: !13, line: 238, type: !30)
!2303 = !DILocation(line: 238, column: 4, scope: !2282)
!2304 = !DILocation(line: 238, column: 9, scope: !2282)
!2305 = !DILocation(line: 238, column: 18, scope: !2282)
!2306 = !DILocation(line: 238, column: 27, scope: !2282)
!2307 = !DILocation(line: 238, column: 36, scope: !2282)
!2308 = !DILocation(line: 238, column: 34, scope: !2282)
!2309 = !DILocation(line: 238, column: 25, scope: !2282)
!2310 = !DILocalVariable(name: "k3", scope: !2282, file: !13, line: 239, type: !30)
!2311 = !DILocation(line: 239, column: 4, scope: !2282)
!2312 = !DILocation(line: 239, column: 9, scope: !2282)
!2313 = !DILocation(line: 239, column: 18, scope: !2282)
!2314 = !DILocation(line: 239, column: 27, scope: !2282)
!2315 = !DILocation(line: 239, column: 36, scope: !2282)
!2316 = !DILocation(line: 239, column: 34, scope: !2282)
!2317 = !DILocation(line: 239, column: 25, scope: !2282)
!2318 = !DILocalVariable(name: "c", scope: !2282, file: !13, line: 240, type: !30)
!2319 = !DILocation(line: 240, column: 4, scope: !2282)
!2320 = !DILocation(line: 240, column: 18, scope: !2282)
!2321 = !DILocation(line: 240, column: 27, scope: !2282)
!2322 = !DILocation(line: 240, column: 32, scope: !2282)
!2323 = !DILocation(line: 240, column: 41, scope: !2282)
!2324 = !DILocation(line: 240, column: 39, scope: !2282)
!2325 = !DILocation(line: 240, column: 30, scope: !2282)
!2326 = !DILocation(line: 240, column: 46, scope: !2282)
!2327 = !DILocation(line: 240, column: 55, scope: !2282)
!2328 = !DILocation(line: 240, column: 44, scope: !2282)
!2329 = !DILocation(line: 240, column: 15, scope: !2282)
!2330 = !DILocation(line: 241, column: 11, scope: !2282)
!2331 = !DILocation(line: 241, column: 15, scope: !2282)
!2332 = !DILocation(line: 241, column: 13, scope: !2282)
!2333 = !DILocation(line: 241, column: 2, scope: !2282)
!2334 = !DILocation(line: 241, column: 9, scope: !2282)
!2335 = !DILocation(line: 242, column: 11, scope: !2282)
!2336 = !DILocation(line: 242, column: 16, scope: !2282)
!2337 = !DILocation(line: 242, column: 25, scope: !2282)
!2338 = !DILocation(line: 242, column: 34, scope: !2282)
!2339 = !DILocation(line: 242, column: 43, scope: !2282)
!2340 = !DILocation(line: 242, column: 41, scope: !2282)
!2341 = !DILocation(line: 242, column: 32, scope: !2282)
!2342 = !DILocation(line: 242, column: 13, scope: !2282)
!2343 = !DILocation(line: 242, column: 2, scope: !2282)
!2344 = !DILocation(line: 242, column: 9, scope: !2282)
!2345 = !DILocation(line: 243, column: 11, scope: !2282)
!2346 = !DILocation(line: 243, column: 16, scope: !2282)
!2347 = !DILocation(line: 243, column: 25, scope: !2282)
!2348 = !DILocation(line: 243, column: 34, scope: !2282)
!2349 = !DILocation(line: 243, column: 43, scope: !2282)
!2350 = !DILocation(line: 243, column: 41, scope: !2282)
!2351 = !DILocation(line: 243, column: 32, scope: !2282)
!2352 = !DILocation(line: 243, column: 13, scope: !2282)
!2353 = !DILocation(line: 243, column: 2, scope: !2282)
!2354 = !DILocation(line: 243, column: 9, scope: !2282)
!2355 = !DILocation(line: 244, column: 11, scope: !2282)
!2356 = !DILocation(line: 244, column: 16, scope: !2282)
!2357 = !DILocation(line: 244, column: 15, scope: !2282)
!2358 = !DILocation(line: 244, column: 13, scope: !2282)
!2359 = !DILocation(line: 244, column: 2, scope: !2282)
!2360 = !DILocation(line: 244, column: 9, scope: !2282)
!2361 = !DILocation(line: 245, column: 11, scope: !2282)
!2362 = !DILocation(line: 245, column: 16, scope: !2282)
!2363 = !DILocation(line: 245, column: 25, scope: !2282)
!2364 = !DILocation(line: 245, column: 34, scope: !2282)
!2365 = !DILocation(line: 245, column: 43, scope: !2282)
!2366 = !DILocation(line: 245, column: 41, scope: !2282)
!2367 = !DILocation(line: 245, column: 32, scope: !2282)
!2368 = !DILocation(line: 245, column: 13, scope: !2282)
!2369 = !DILocation(line: 245, column: 2, scope: !2282)
!2370 = !DILocation(line: 245, column: 9, scope: !2282)
!2371 = !DILocation(line: 246, column: 11, scope: !2282)
!2372 = !DILocation(line: 246, column: 16, scope: !2282)
!2373 = !DILocation(line: 246, column: 25, scope: !2282)
!2374 = !DILocation(line: 246, column: 34, scope: !2282)
!2375 = !DILocation(line: 246, column: 43, scope: !2282)
!2376 = !DILocation(line: 246, column: 41, scope: !2282)
!2377 = !DILocation(line: 246, column: 32, scope: !2282)
!2378 = !DILocation(line: 246, column: 13, scope: !2282)
!2379 = !DILocation(line: 246, column: 2, scope: !2282)
!2380 = !DILocation(line: 246, column: 9, scope: !2282)
!2381 = !DILocation(line: 247, column: 11, scope: !2282)
!2382 = !DILocation(line: 247, column: 15, scope: !2282)
!2383 = !DILocation(line: 247, column: 13, scope: !2282)
!2384 = !DILocation(line: 247, column: 2, scope: !2282)
!2385 = !DILocation(line: 247, column: 9, scope: !2282)
!2386 = !DILocation(line: 248, column: 11, scope: !2282)
!2387 = !DILocation(line: 248, column: 16, scope: !2282)
!2388 = !DILocation(line: 248, column: 25, scope: !2282)
!2389 = !DILocation(line: 248, column: 34, scope: !2282)
!2390 = !DILocation(line: 248, column: 43, scope: !2282)
!2391 = !DILocation(line: 248, column: 41, scope: !2282)
!2392 = !DILocation(line: 248, column: 32, scope: !2282)
!2393 = !DILocation(line: 248, column: 13, scope: !2282)
!2394 = !DILocation(line: 248, column: 2, scope: !2282)
!2395 = !DILocation(line: 248, column: 9, scope: !2282)
!2396 = !DILocation(line: 249, column: 11, scope: !2282)
!2397 = !DILocation(line: 249, column: 16, scope: !2282)
!2398 = !DILocation(line: 249, column: 25, scope: !2282)
!2399 = !DILocation(line: 249, column: 34, scope: !2282)
!2400 = !DILocation(line: 249, column: 43, scope: !2282)
!2401 = !DILocation(line: 249, column: 41, scope: !2282)
!2402 = !DILocation(line: 249, column: 32, scope: !2282)
!2403 = !DILocation(line: 249, column: 13, scope: !2282)
!2404 = !DILocation(line: 249, column: 2, scope: !2282)
!2405 = !DILocation(line: 249, column: 9, scope: !2282)
!2406 = !DILocalVariable(name: "v", scope: !2282, file: !13, line: 250, type: !89)
!2407 = !DILocation(line: 250, column: 13, scope: !2282)
!2408 = !DILocation(line: 250, column: 16, scope: !2282)
!2409 = !DILocation(line: 250, column: 15, scope: !2282)
!2410 = !DILocation(line: 250, column: 25, scope: !2282)
!2411 = !DILocation(line: 250, column: 24, scope: !2282)
!2412 = !DILocation(line: 250, column: 34, scope: !2282)
!2413 = !DILocation(line: 250, column: 33, scope: !2282)
!2414 = !DILocalVariable(name: "t", scope: !2282, file: !13, line: 251, type: !89)
!2415 = !DILocation(line: 251, column: 13, scope: !2282)
!2416 = !DILocation(line: 251, column: 19, scope: !2282)
!2417 = !DILocation(line: 252, column: 13, scope: !2282)
!2418 = !DILocation(line: 252, column: 2, scope: !2282)
!2419 = !DILocation(line: 252, column: 9, scope: !2282)
!2420 = !DILocation(line: 252, column: 28, scope: !2282)
!2421 = !DILocation(line: 252, column: 17, scope: !2282)
!2422 = !DILocation(line: 252, column: 24, scope: !2282)
!2423 = !DILocation(line: 252, column: 42, scope: !2282)
!2424 = !DILocation(line: 252, column: 31, scope: !2282)
!2425 = !DILocation(line: 252, column: 38, scope: !2282)
!2426 = !DILocation(line: 253, column: 2, scope: !2282)
!2427 = !DILocation(line: 254, column: 1, scope: !2282)
!2428 = distinct !DISubprogram(name: "InitBodyParameters", linkageName: "_ZN14BodyParameters18InitBodyParametersENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !1590, file: !10, line: 142, type: !2429, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2438, retainedNodes: !216)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!148, !2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !2434, line: 79, baseType: !2435)
!2434 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stringfwd.h", directory: "")
!2435 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !2437, file: !2436, line: 1627, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!2436 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.tcc", directory: "")
!2437 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!2438 = !DISubprogram(name: "InitBodyParameters", linkageName: "_ZN14BodyParameters18InitBodyParametersENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !1590, file: !309, line: 53, type: !2429, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2439 = !DILocalVariable(name: "this", arg: 1, scope: !2428, type: !2440, flags: DIFlagArtificial | DIFlagObjectPointer)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!2441 = !DILocation(line: 0, scope: !2428)
!2442 = !DILocalVariable(name: "fname", arg: 2, scope: !2428, file: !10, line: 142, type: !2432)
!2443 = !DILocation(line: 142, column: 54, scope: !2428)
!2444 = !DILocalVariable(name: "f", scope: !2428, file: !10, line: 144, type: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifstream", scope: !2, file: !74, line: 162, baseType: !2446)
!2446 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ifstream<char, std::char_traits<char> >", scope: !2, file: !2447, line: 1087, size: 4160, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!2447 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/fstream.tcc", directory: "")
!2448 = !DILocation(line: 144, column: 11, scope: !2428)
!2449 = !DILocation(line: 144, column: 19, scope: !2428)
!2450 = !DILocation(line: 145, column: 8, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2428, file: !10, line: 145, column: 5)
!2452 = !DILocation(line: 145, column: 5, scope: !2428)
!2453 = !DILocation(line: 146, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !10, line: 146, column: 2)
!2455 = !DILocation(line: 146, column: 52, scope: !2454)
!2456 = !DILocation(line: 146, column: 61, scope: !2454)
!2457 = !DILocation(line: 147, column: 3, scope: !2454)
!2458 = !DILocation(line: 155, column: 1, scope: !2451)
!2459 = !DILocation(line: 155, column: 1, scope: !2428)
!2460 = !DILocalVariable(name: "i", scope: !2461, file: !10, line: 149, type: !64)
!2461 = distinct !DILexicalBlock(scope: !2428, file: !10, line: 149, column: 2)
!2462 = !DILocation(line: 149, column: 10, scope: !2461)
!2463 = !DILocation(line: 149, column: 6, scope: !2461)
!2464 = !DILocation(line: 149, column: 17, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !10, line: 149, column: 2)
!2466 = !DILocation(line: 149, column: 19, scope: !2465)
!2467 = !DILocation(line: 149, column: 2, scope: !2461)
!2468 = !DILocalVariable(name: "j", scope: !2469, file: !10, line: 150, type: !64)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !10, line: 150, column: 3)
!2470 = !DILocation(line: 150, column: 11, scope: !2469)
!2471 = !DILocation(line: 150, column: 7, scope: !2469)
!2472 = !DILocation(line: 150, column: 18, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !10, line: 150, column: 3)
!2474 = !DILocation(line: 150, column: 20, scope: !2473)
!2475 = !DILocation(line: 150, column: 3, scope: !2469)
!2476 = !DILocation(line: 151, column: 9, scope: !2473)
!2477 = !DILocation(line: 151, column: 15, scope: !2473)
!2478 = !DILocation(line: 151, column: 18, scope: !2473)
!2479 = !DILocation(line: 151, column: 6, scope: !2473)
!2480 = !DILocation(line: 151, column: 4, scope: !2473)
!2481 = !DILocation(line: 150, column: 26, scope: !2473)
!2482 = !DILocation(line: 150, column: 3, scope: !2473)
!2483 = distinct !{!2483, !2475, !2484, !2203}
!2484 = !DILocation(line: 151, column: 19, scope: !2469)
!2485 = !DILocation(line: 149, column: 31, scope: !2465)
!2486 = !DILocation(line: 149, column: 2, scope: !2465)
!2487 = distinct !{!2487, !2467, !2488, !2203}
!2488 = !DILocation(line: 151, column: 19, scope: !2461)
!2489 = !DILocalVariable(name: "i", scope: !2490, file: !10, line: 152, type: !64)
!2490 = distinct !DILexicalBlock(scope: !2428, file: !10, line: 152, column: 2)
!2491 = !DILocation(line: 152, column: 10, scope: !2490)
!2492 = !DILocation(line: 152, column: 6, scope: !2490)
!2493 = !DILocation(line: 152, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !10, line: 152, column: 2)
!2495 = !DILocation(line: 152, column: 19, scope: !2494)
!2496 = !DILocation(line: 152, column: 2, scope: !2490)
!2497 = !DILocation(line: 153, column: 8, scope: !2494)
!2498 = !DILocation(line: 153, column: 16, scope: !2494)
!2499 = !DILocation(line: 153, column: 5, scope: !2494)
!2500 = !DILocation(line: 153, column: 3, scope: !2494)
!2501 = !DILocation(line: 152, column: 33, scope: !2494)
!2502 = !DILocation(line: 152, column: 2, scope: !2494)
!2503 = distinct !{!2503, !2496, !2504, !2203}
!2504 = !DILocation(line: 153, column: 17, scope: !2490)
!2505 = !DILocation(line: 154, column: 2, scope: !2428)
!2506 = distinct !DISubprogram(name: "IntersectingCylinders", linkageName: "_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_", scope: !1582, file: !10, line: 158, type: !2507, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2510, retainedNodes: !216)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!148, !1585, !2509, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2031, size: 64)
!2510 = !DISubprogram(name: "IntersectingCylinders", linkageName: "_ZN12BodyGeometry21IntersectingCylindersER10KTCylinderS1_", scope: !1582, file: !309, line: 81, type: !2507, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!2511 = !DILocalVariable(name: "this", arg: 1, scope: !2506, type: !1593, flags: DIFlagArtificial | DIFlagObjectPointer)
!2512 = !DILocation(line: 0, scope: !2506)
!2513 = !DILocalVariable(name: "cylA", arg: 2, scope: !2506, file: !10, line: 158, type: !2509)
!2514 = !DILocation(line: 158, column: 54, scope: !2506)
!2515 = !DILocalVariable(name: "cylB", arg: 3, scope: !2506, file: !10, line: 158, type: !2509)
!2516 = !DILocation(line: 158, column: 72, scope: !2506)
!2517 = !DILocalVariable(name: "numPA2", scope: !2506, file: !10, line: 160, type: !30)
!2518 = !DILocation(line: 160, column: 8, scope: !2506)
!2519 = !DILocation(line: 160, column: 19, scope: !2506)
!2520 = !DILocation(line: 160, column: 24, scope: !2506)
!2521 = !DILocation(line: 160, column: 42, scope: !2506)
!2522 = !DILocation(line: 160, column: 47, scope: !2506)
!2523 = !DILocation(line: 160, column: 54, scope: !2506)
!2524 = !DILocation(line: 160, column: 59, scope: !2506)
!2525 = !DILocation(line: 160, column: 33, scope: !2506)
!2526 = !DILocation(line: 160, column: 31, scope: !2506)
!2527 = !DILocation(line: 160, column: 64, scope: !2506)
!2528 = !DILocalVariable(name: "numPA", scope: !2506, file: !10, line: 161, type: !64)
!2529 = !DILocation(line: 161, column: 6, scope: !2506)
!2530 = !DILocation(line: 161, column: 22, scope: !2506)
!2531 = !DILocation(line: 161, column: 28, scope: !2506)
!2532 = !DILocation(line: 161, column: 36, scope: !2506)
!2533 = !DILocation(line: 161, column: 35, scope: !2506)
!2534 = !DILocation(line: 161, column: 45, scope: !2506)
!2535 = !DILocation(line: 161, column: 53, scope: !2506)
!2536 = !DILocation(line: 161, column: 20, scope: !2506)
!2537 = !DILocalVariable(name: "numPB2", scope: !2506, file: !10, line: 163, type: !30)
!2538 = !DILocation(line: 163, column: 8, scope: !2506)
!2539 = !DILocation(line: 163, column: 18, scope: !2506)
!2540 = !DILocation(line: 163, column: 23, scope: !2506)
!2541 = !DILocation(line: 163, column: 41, scope: !2506)
!2542 = !DILocation(line: 163, column: 46, scope: !2506)
!2543 = !DILocation(line: 163, column: 53, scope: !2506)
!2544 = !DILocation(line: 163, column: 58, scope: !2506)
!2545 = !DILocation(line: 163, column: 32, scope: !2506)
!2546 = !DILocation(line: 163, column: 30, scope: !2506)
!2547 = !DILocation(line: 163, column: 63, scope: !2506)
!2548 = !DILocalVariable(name: "numPB", scope: !2506, file: !10, line: 164, type: !64)
!2549 = !DILocation(line: 164, column: 6, scope: !2506)
!2550 = !DILocation(line: 164, column: 22, scope: !2506)
!2551 = !DILocation(line: 164, column: 28, scope: !2506)
!2552 = !DILocation(line: 164, column: 36, scope: !2506)
!2553 = !DILocation(line: 164, column: 35, scope: !2506)
!2554 = !DILocation(line: 164, column: 45, scope: !2506)
!2555 = !DILocation(line: 164, column: 53, scope: !2506)
!2556 = !DILocation(line: 164, column: 20, scope: !2506)
!2557 = !DILocation(line: 166, column: 26, scope: !2506)
!2558 = !DILocation(line: 166, column: 10, scope: !2506)
!2559 = !DILocation(line: 166, column: 8, scope: !2506)
!2560 = !DILocation(line: 167, column: 26, scope: !2506)
!2561 = !DILocation(line: 167, column: 10, scope: !2506)
!2562 = !DILocation(line: 167, column: 8, scope: !2506)
!2563 = !DILocalVariable(name: "obA", scope: !2506, file: !10, line: 169, type: !89)
!2564 = !DILocation(line: 169, column: 11, scope: !2506)
!2565 = !DILocalVariable(name: "otA", scope: !2506, file: !10, line: 170, type: !89)
!2566 = !DILocation(line: 170, column: 11, scope: !2506)
!2567 = !DILocation(line: 170, column: 27, scope: !2506)
!2568 = !DILocation(line: 170, column: 32, scope: !2506)
!2569 = !DILocalVariable(name: "oA", scope: !2506, file: !10, line: 171, type: !2570)
!2570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !2571)
!2571 = !{!2572}
!2572 = !DISubrange(count: 2)
!2573 = !DILocation(line: 171, column: 11, scope: !2506)
!2574 = !DILocation(line: 172, column: 10, scope: !2506)
!2575 = !DILocation(line: 172, column: 15, scope: !2506)
!2576 = !DILocation(line: 172, column: 20, scope: !2506)
!2577 = !DILocation(line: 172, column: 2, scope: !2506)
!2578 = !DILocation(line: 172, column: 8, scope: !2506)
!2579 = !DILocation(line: 173, column: 10, scope: !2506)
!2580 = !DILocation(line: 173, column: 15, scope: !2506)
!2581 = !DILocation(line: 173, column: 20, scope: !2506)
!2582 = !DILocation(line: 173, column: 2, scope: !2506)
!2583 = !DILocation(line: 173, column: 8, scope: !2506)
!2584 = !DILocalVariable(name: "obB", scope: !2506, file: !10, line: 175, type: !89)
!2585 = !DILocation(line: 175, column: 11, scope: !2506)
!2586 = !DILocalVariable(name: "otB", scope: !2506, file: !10, line: 176, type: !89)
!2587 = !DILocation(line: 176, column: 11, scope: !2506)
!2588 = !DILocation(line: 176, column: 27, scope: !2506)
!2589 = !DILocation(line: 176, column: 32, scope: !2506)
!2590 = !DILocalVariable(name: "oB", scope: !2506, file: !10, line: 177, type: !2570)
!2591 = !DILocation(line: 177, column: 11, scope: !2506)
!2592 = !DILocation(line: 178, column: 10, scope: !2506)
!2593 = !DILocation(line: 178, column: 15, scope: !2506)
!2594 = !DILocation(line: 178, column: 20, scope: !2506)
!2595 = !DILocation(line: 178, column: 2, scope: !2506)
!2596 = !DILocation(line: 178, column: 8, scope: !2506)
!2597 = !DILocation(line: 179, column: 10, scope: !2506)
!2598 = !DILocation(line: 179, column: 15, scope: !2506)
!2599 = !DILocation(line: 179, column: 20, scope: !2506)
!2600 = !DILocation(line: 179, column: 2, scope: !2506)
!2601 = !DILocation(line: 179, column: 8, scope: !2506)
!2602 = !DILocalVariable(name: "deltaPA", scope: !2506, file: !10, line: 182, type: !30)
!2603 = !DILocation(line: 182, column: 8, scope: !2506)
!2604 = !DILocation(line: 182, column: 34, scope: !2506)
!2605 = !DILocation(line: 182, column: 24, scope: !2506)
!2606 = !DILocalVariable(name: "d12", scope: !2506, file: !10, line: 183, type: !89)
!2607 = !DILocation(line: 183, column: 11, scope: !2506)
!2608 = !DILocation(line: 183, column: 17, scope: !2506)
!2609 = !DILocation(line: 183, column: 25, scope: !2506)
!2610 = !DILocation(line: 183, column: 23, scope: !2506)
!2611 = !DILocation(line: 184, column: 2, scope: !2506)
!2612 = !DILocation(line: 184, column: 19, scope: !2506)
!2613 = !DILocation(line: 184, column: 24, scope: !2506)
!2614 = !DILocation(line: 184, column: 12, scope: !2506)
!2615 = !DILocation(line: 185, column: 2, scope: !2506)
!2616 = !DILocation(line: 185, column: 17, scope: !2506)
!2617 = !DILocation(line: 185, column: 22, scope: !2506)
!2618 = !DILocation(line: 185, column: 10, scope: !2506)
!2619 = !DILocalVariable(name: "alpha", scope: !2506, file: !10, line: 186, type: !30)
!2620 = !DILocation(line: 186, column: 8, scope: !2506)
!2621 = !DILocalVariable(name: "delta_r", scope: !2506, file: !10, line: 187, type: !30)
!2622 = !DILocation(line: 187, column: 8, scope: !2506)
!2623 = !DILocation(line: 187, column: 18, scope: !2506)
!2624 = !DILocation(line: 187, column: 23, scope: !2506)
!2625 = !DILocation(line: 187, column: 29, scope: !2506)
!2626 = !DILocation(line: 187, column: 34, scope: !2506)
!2627 = !DILocation(line: 187, column: 27, scope: !2506)
!2628 = !DILocalVariable(name: "val", scope: !2506, file: !10, line: 188, type: !523)
!2629 = !DILocation(line: 188, column: 9, scope: !2506)
!2630 = !DILocation(line: 188, column: 15, scope: !2506)
!2631 = !DILocation(line: 188, column: 23, scope: !2506)
!2632 = !DILocation(line: 188, column: 28, scope: !2506)
!2633 = !DILocation(line: 188, column: 22, scope: !2506)
!2634 = !DILocalVariable(name: "scaling", scope: !2506, file: !10, line: 189, type: !30)
!2635 = !DILocation(line: 189, column: 8, scope: !2506)
!2636 = !DILocation(line: 189, column: 38, scope: !2506)
!2637 = !DILocation(line: 189, column: 42, scope: !2506)
!2638 = !DILocation(line: 189, column: 35, scope: !2506)
!2639 = !DILocation(line: 189, column: 25, scope: !2506)
!2640 = !DILocalVariable(name: "i", scope: !2641, file: !10, line: 190, type: !64)
!2641 = distinct !DILexicalBlock(scope: !2506, file: !10, line: 190, column: 2)
!2642 = !DILocation(line: 190, column: 10, scope: !2641)
!2643 = !DILocation(line: 190, column: 6, scope: !2641)
!2644 = !DILocation(line: 190, column: 14, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !10, line: 190, column: 2)
!2646 = !DILocation(line: 190, column: 17, scope: !2645)
!2647 = !DILocation(line: 190, column: 15, scope: !2645)
!2648 = !DILocation(line: 190, column: 2, scope: !2641)
!2649 = !DILocation(line: 191, column: 21, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !10, line: 191, column: 2)
!2651 = !DILocation(line: 191, column: 24, scope: !2650)
!2652 = !DILocation(line: 191, column: 23, scope: !2650)
!2653 = !DILocation(line: 191, column: 10, scope: !2650)
!2654 = !DILocation(line: 192, column: 3, scope: !2650)
!2655 = !DILocation(line: 192, column: 13, scope: !2650)
!2656 = !DILocation(line: 192, column: 20, scope: !2650)
!2657 = !DILocation(line: 192, column: 26, scope: !2650)
!2658 = !DILocation(line: 192, column: 31, scope: !2650)
!2659 = !DILocation(line: 192, column: 43, scope: !2650)
!2660 = !DILocation(line: 192, column: 28, scope: !2650)
!2661 = !DILocation(line: 192, column: 48, scope: !2650)
!2662 = !DILocation(line: 192, column: 54, scope: !2650)
!2663 = !DILocation(line: 192, column: 59, scope: !2650)
!2664 = !DILocation(line: 192, column: 71, scope: !2650)
!2665 = !DILocation(line: 192, column: 56, scope: !2650)
!2666 = !DILocation(line: 192, column: 76, scope: !2650)
!2667 = !DILocation(line: 192, column: 82, scope: !2650)
!2668 = !DILocation(line: 192, column: 87, scope: !2650)
!2669 = !DILocation(line: 192, column: 99, scope: !2650)
!2670 = !DILocation(line: 192, column: 84, scope: !2650)
!2671 = !DILocation(line: 192, column: 16, scope: !2650)
!2672 = !DILocation(line: 193, column: 17, scope: !2650)
!2673 = !DILocation(line: 193, column: 22, scope: !2650)
!2674 = !DILocation(line: 193, column: 31, scope: !2650)
!2675 = !DILocation(line: 193, column: 39, scope: !2650)
!2676 = !DILocation(line: 193, column: 29, scope: !2650)
!2677 = !DILocation(line: 193, column: 48, scope: !2650)
!2678 = !DILocation(line: 193, column: 47, scope: !2650)
!2679 = !DILocation(line: 193, column: 3, scope: !2650)
!2680 = !DILocation(line: 193, column: 11, scope: !2650)
!2681 = !DILocation(line: 193, column: 14, scope: !2650)
!2682 = !DILocation(line: 194, column: 2, scope: !2650)
!2683 = !DILocation(line: 190, column: 24, scope: !2645)
!2684 = !DILocation(line: 190, column: 2, scope: !2645)
!2685 = distinct !{!2685, !2648, !2686, !2203}
!2686 = !DILocation(line: 194, column: 2, scope: !2641)
!2687 = !DILocation(line: 226, column: 1, scope: !2506)
!2688 = !DILocalVariable(name: "deltaPB", scope: !2506, file: !10, line: 197, type: !30)
!2689 = !DILocation(line: 197, column: 8, scope: !2506)
!2690 = !DILocation(line: 197, column: 34, scope: !2506)
!2691 = !DILocation(line: 197, column: 24, scope: !2506)
!2692 = !DILocation(line: 198, column: 8, scope: !2506)
!2693 = !DILocation(line: 198, column: 16, scope: !2506)
!2694 = !DILocation(line: 198, column: 14, scope: !2506)
!2695 = !DILocation(line: 198, column: 6, scope: !2506)
!2696 = !DILocation(line: 198, column: 2, scope: !2506)
!2697 = !DILocation(line: 199, column: 2, scope: !2506)
!2698 = !DILocation(line: 199, column: 19, scope: !2506)
!2699 = !DILocation(line: 199, column: 24, scope: !2506)
!2700 = !DILocation(line: 199, column: 12, scope: !2506)
!2701 = !DILocation(line: 200, column: 2, scope: !2506)
!2702 = !DILocation(line: 200, column: 17, scope: !2506)
!2703 = !DILocation(line: 200, column: 22, scope: !2506)
!2704 = !DILocation(line: 200, column: 10, scope: !2506)
!2705 = !DILocation(line: 201, column: 12, scope: !2506)
!2706 = !DILocation(line: 201, column: 17, scope: !2506)
!2707 = !DILocation(line: 201, column: 23, scope: !2506)
!2708 = !DILocation(line: 201, column: 28, scope: !2506)
!2709 = !DILocation(line: 201, column: 21, scope: !2506)
!2710 = !DILocation(line: 201, column: 10, scope: !2506)
!2711 = !DILocation(line: 202, column: 8, scope: !2506)
!2712 = !DILocation(line: 202, column: 16, scope: !2506)
!2713 = !DILocation(line: 202, column: 21, scope: !2506)
!2714 = !DILocation(line: 202, column: 15, scope: !2506)
!2715 = !DILocation(line: 202, column: 6, scope: !2506)
!2716 = !DILocation(line: 203, column: 33, scope: !2506)
!2717 = !DILocation(line: 203, column: 37, scope: !2506)
!2718 = !DILocation(line: 203, column: 30, scope: !2506)
!2719 = !DILocation(line: 203, column: 19, scope: !2506)
!2720 = !DILocation(line: 203, column: 10, scope: !2506)
!2721 = !DILocalVariable(name: "i", scope: !2722, file: !10, line: 204, type: !64)
!2722 = distinct !DILexicalBlock(scope: !2506, file: !10, line: 204, column: 2)
!2723 = !DILocation(line: 204, column: 10, scope: !2722)
!2724 = !DILocation(line: 204, column: 6, scope: !2722)
!2725 = !DILocation(line: 204, column: 14, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !10, line: 204, column: 2)
!2727 = !DILocation(line: 204, column: 17, scope: !2726)
!2728 = !DILocation(line: 204, column: 15, scope: !2726)
!2729 = !DILocation(line: 204, column: 2, scope: !2722)
!2730 = !DILocation(line: 205, column: 21, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2726, file: !10, line: 205, column: 2)
!2732 = !DILocation(line: 205, column: 24, scope: !2731)
!2733 = !DILocation(line: 205, column: 23, scope: !2731)
!2734 = !DILocation(line: 205, column: 10, scope: !2731)
!2735 = !DILocation(line: 206, column: 3, scope: !2731)
!2736 = !DILocation(line: 206, column: 13, scope: !2731)
!2737 = !DILocation(line: 206, column: 20, scope: !2731)
!2738 = !DILocation(line: 206, column: 26, scope: !2731)
!2739 = !DILocation(line: 206, column: 31, scope: !2731)
!2740 = !DILocation(line: 206, column: 43, scope: !2731)
!2741 = !DILocation(line: 206, column: 28, scope: !2731)
!2742 = !DILocation(line: 206, column: 48, scope: !2731)
!2743 = !DILocation(line: 206, column: 54, scope: !2731)
!2744 = !DILocation(line: 206, column: 59, scope: !2731)
!2745 = !DILocation(line: 206, column: 71, scope: !2731)
!2746 = !DILocation(line: 206, column: 56, scope: !2731)
!2747 = !DILocation(line: 206, column: 76, scope: !2731)
!2748 = !DILocation(line: 206, column: 82, scope: !2731)
!2749 = !DILocation(line: 206, column: 87, scope: !2731)
!2750 = !DILocation(line: 206, column: 99, scope: !2731)
!2751 = !DILocation(line: 206, column: 84, scope: !2731)
!2752 = !DILocation(line: 206, column: 16, scope: !2731)
!2753 = !DILocation(line: 207, column: 17, scope: !2731)
!2754 = !DILocation(line: 207, column: 22, scope: !2731)
!2755 = !DILocation(line: 207, column: 31, scope: !2731)
!2756 = !DILocation(line: 207, column: 39, scope: !2731)
!2757 = !DILocation(line: 207, column: 29, scope: !2731)
!2758 = !DILocation(line: 207, column: 48, scope: !2731)
!2759 = !DILocation(line: 207, column: 47, scope: !2731)
!2760 = !DILocation(line: 207, column: 3, scope: !2731)
!2761 = !DILocation(line: 207, column: 11, scope: !2731)
!2762 = !DILocation(line: 207, column: 14, scope: !2731)
!2763 = !DILocation(line: 208, column: 2, scope: !2731)
!2764 = !DILocation(line: 204, column: 24, scope: !2726)
!2765 = !DILocation(line: 204, column: 2, scope: !2726)
!2766 = distinct !{!2766, !2729, !2767, !2203}
!2767 = !DILocation(line: 208, column: 2, scope: !2722)
!2768 = !DILocalVariable(name: "difC", scope: !2506, file: !10, line: 211, type: !89)
!2769 = !DILocation(line: 211, column: 11, scope: !2506)
!2770 = !DILocalVariable(name: "rAB", scope: !2506, file: !10, line: 212, type: !30)
!2771 = !DILocation(line: 212, column: 8, scope: !2506)
!2772 = !DILocalVariable(name: "nrmsq", scope: !2506, file: !10, line: 213, type: !30)
!2773 = !DILocation(line: 213, column: 8, scope: !2506)
!2774 = !DILocalVariable(name: "i", scope: !2775, file: !10, line: 214, type: !64)
!2775 = distinct !DILexicalBlock(scope: !2506, file: !10, line: 214, column: 2)
!2776 = !DILocation(line: 214, column: 10, scope: !2775)
!2777 = !DILocation(line: 214, column: 6, scope: !2775)
!2778 = !DILocation(line: 214, column: 14, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !10, line: 214, column: 2)
!2780 = !DILocation(line: 214, column: 17, scope: !2779)
!2781 = !DILocation(line: 214, column: 15, scope: !2779)
!2782 = !DILocation(line: 214, column: 2, scope: !2775)
!2783 = !DILocalVariable(name: "j", scope: !2784, file: !10, line: 216, type: !64)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !10, line: 216, column: 3)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !10, line: 215, column: 2)
!2786 = !DILocation(line: 216, column: 11, scope: !2784)
!2787 = !DILocation(line: 216, column: 7, scope: !2784)
!2788 = !DILocation(line: 216, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !10, line: 216, column: 3)
!2790 = !DILocation(line: 216, column: 18, scope: !2789)
!2791 = !DILocation(line: 216, column: 16, scope: !2789)
!2792 = !DILocation(line: 216, column: 3, scope: !2784)
!2793 = !DILocation(line: 218, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !10, line: 217, column: 3)
!2795 = !DILocation(line: 218, column: 23, scope: !2794)
!2796 = !DILocation(line: 218, column: 26, scope: !2794)
!2797 = !DILocation(line: 218, column: 30, scope: !2794)
!2798 = !DILocation(line: 218, column: 40, scope: !2794)
!2799 = !DILocation(line: 218, column: 43, scope: !2794)
!2800 = !DILocation(line: 218, column: 28, scope: !2794)
!2801 = !DILocation(line: 218, column: 47, scope: !2794)
!2802 = !DILocation(line: 218, column: 57, scope: !2794)
!2803 = !DILocation(line: 218, column: 60, scope: !2794)
!2804 = !DILocation(line: 218, column: 64, scope: !2794)
!2805 = !DILocation(line: 218, column: 74, scope: !2794)
!2806 = !DILocation(line: 218, column: 77, scope: !2794)
!2807 = !DILocation(line: 218, column: 62, scope: !2794)
!2808 = !DILocation(line: 218, column: 81, scope: !2794)
!2809 = !DILocation(line: 218, column: 91, scope: !2794)
!2810 = !DILocation(line: 218, column: 94, scope: !2794)
!2811 = !DILocation(line: 218, column: 98, scope: !2794)
!2812 = !DILocation(line: 218, column: 108, scope: !2794)
!2813 = !DILocation(line: 218, column: 111, scope: !2794)
!2814 = !DILocation(line: 218, column: 96, scope: !2794)
!2815 = !DILocation(line: 218, column: 9, scope: !2794)
!2816 = !DILocation(line: 219, column: 18, scope: !2794)
!2817 = !DILocation(line: 219, column: 27, scope: !2794)
!2818 = !DILocation(line: 219, column: 38, scope: !2794)
!2819 = !DILocation(line: 219, column: 47, scope: !2794)
!2820 = !DILocation(line: 219, column: 40, scope: !2794)
!2821 = !DILocation(line: 219, column: 30, scope: !2794)
!2822 = !DILocation(line: 219, column: 58, scope: !2794)
!2823 = !DILocation(line: 219, column: 67, scope: !2794)
!2824 = !DILocation(line: 219, column: 50, scope: !2794)
!2825 = !DILocation(line: 219, column: 10, scope: !2794)
!2826 = !DILocation(line: 220, column: 10, scope: !2794)
!2827 = !DILocation(line: 220, column: 18, scope: !2794)
!2828 = !DILocation(line: 220, column: 23, scope: !2794)
!2829 = !DILocation(line: 220, column: 31, scope: !2794)
!2830 = !DILocation(line: 220, column: 21, scope: !2794)
!2831 = !DILocation(line: 220, column: 8, scope: !2794)
!2832 = !DILocation(line: 221, column: 8, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2794, file: !10, line: 221, column: 8)
!2834 = !DILocation(line: 221, column: 12, scope: !2833)
!2835 = !DILocation(line: 221, column: 11, scope: !2833)
!2836 = !DILocation(line: 221, column: 17, scope: !2833)
!2837 = !DILocation(line: 221, column: 15, scope: !2833)
!2838 = !DILocation(line: 221, column: 8, scope: !2794)
!2839 = !DILocation(line: 222, column: 5, scope: !2833)
!2840 = !DILocation(line: 226, column: 1, scope: !2794)
!2841 = !DILocation(line: 223, column: 3, scope: !2794)
!2842 = !DILocation(line: 216, column: 25, scope: !2789)
!2843 = !DILocation(line: 216, column: 3, scope: !2789)
!2844 = distinct !{!2844, !2792, !2845, !2203}
!2845 = !DILocation(line: 223, column: 3, scope: !2784)
!2846 = !DILocation(line: 224, column: 2, scope: !2785)
!2847 = !DILocation(line: 214, column: 24, scope: !2779)
!2848 = !DILocation(line: 214, column: 2, scope: !2779)
!2849 = distinct !{!2849, !2782, !2850, !2203}
!2850 = !DILocation(line: 224, column: 2, scope: !2775)
!2851 = !DILocation(line: 225, column: 2, scope: !2506)
!2852 = distinct !DISubprogram(name: "max<float>", linkageName: "_ZSt3maxIfERKT_S2_S2_", scope: !2, file: !2853, line: 254, type: !2854, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !295, retainedNodes: !216)
!2853 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!2856, !2856, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !48, size: 64)
!2857 = !DILocalVariable(name: "__a", arg: 1, scope: !2852, file: !2853, line: 254, type: !2856)
!2858 = !DILocation(line: 254, column: 20, scope: !2852)
!2859 = !DILocalVariable(name: "__b", arg: 2, scope: !2852, file: !2853, line: 254, type: !2856)
!2860 = !DILocation(line: 254, column: 36, scope: !2852)
!2861 = !DILocation(line: 259, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !2853, line: 259, column: 11)
!2863 = !DILocation(line: 259, column: 17, scope: !2862)
!2864 = !DILocation(line: 259, column: 15, scope: !2862)
!2865 = !DILocation(line: 259, column: 11, scope: !2852)
!2866 = !DILocation(line: 260, column: 9, scope: !2862)
!2867 = !DILocation(line: 260, column: 2, scope: !2862)
!2868 = !DILocation(line: 261, column: 14, scope: !2852)
!2869 = !DILocation(line: 261, column: 7, scope: !2852)
!2870 = !DILocation(line: 262, column: 5, scope: !2852)
!2871 = distinct !DISubprogram(name: "min<int>", linkageName: "_ZSt3minIiERKT_S2_S2_", scope: !2, file: !2853, line: 230, type: !2872, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2875, retainedNodes: !216)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!2874, !2874, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !144, size: 64)
!2875 = !{!2876}
!2876 = !DITemplateTypeParameter(name: "_Tp", type: !64)
!2877 = !DILocalVariable(name: "__a", arg: 1, scope: !2871, file: !2853, line: 230, type: !2874)
!2878 = !DILocation(line: 230, column: 20, scope: !2871)
!2879 = !DILocalVariable(name: "__b", arg: 2, scope: !2871, file: !2853, line: 230, type: !2874)
!2880 = !DILocation(line: 230, column: 36, scope: !2871)
!2881 = !DILocation(line: 235, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !2853, line: 235, column: 11)
!2883 = !DILocation(line: 235, column: 17, scope: !2882)
!2884 = !DILocation(line: 235, column: 15, scope: !2882)
!2885 = !DILocation(line: 235, column: 11, scope: !2871)
!2886 = !DILocation(line: 236, column: 9, scope: !2882)
!2887 = !DILocation(line: 236, column: 2, scope: !2882)
!2888 = !DILocation(line: 237, column: 14, scope: !2871)
!2889 = !DILocation(line: 237, column: 7, scope: !2871)
!2890 = !DILocation(line: 238, column: 5, scope: !2871)
!2891 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Efff", scope: !89, file: !90, line: 41, type: !100, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !99, retainedNodes: !216)
!2892 = !DILocalVariable(name: "this", arg: 1, scope: !2891, type: !88, flags: DIFlagArtificial | DIFlagObjectPointer)
!2893 = !DILocation(line: 0, scope: !2891)
!2894 = !DILocalVariable(name: "xv", arg: 2, scope: !2891, file: !90, line: 41, type: !30)
!2895 = !DILocation(line: 41, column: 19, scope: !2891)
!2896 = !DILocalVariable(name: "yv", arg: 3, scope: !2891, file: !90, line: 41, type: !30)
!2897 = !DILocation(line: 41, column: 25, scope: !2891)
!2898 = !DILocalVariable(name: "zv", arg: 4, scope: !2891, file: !90, line: 41, type: !30)
!2899 = !DILocation(line: 41, column: 31, scope: !2891)
!2900 = !DILocation(line: 41, column: 42, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2891, file: !90, line: 41, column: 36)
!2902 = !DILocation(line: 41, column: 38, scope: !2901)
!2903 = !DILocation(line: 41, column: 40, scope: !2901)
!2904 = !DILocation(line: 41, column: 51, scope: !2901)
!2905 = !DILocation(line: 41, column: 47, scope: !2901)
!2906 = !DILocation(line: 41, column: 49, scope: !2901)
!2907 = !DILocation(line: 41, column: 59, scope: !2901)
!2908 = !DILocation(line: 41, column: 55, scope: !2901)
!2909 = !DILocation(line: 41, column: 57, scope: !2901)
!2910 = !DILocation(line: 41, column: 63, scope: !2891)
!2911 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Ev", scope: !89, file: !90, line: 40, type: !96, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !95, retainedNodes: !216)
!2912 = !DILocalVariable(name: "this", arg: 1, scope: !2911, type: !88, flags: DIFlagArtificial | DIFlagObjectPointer)
!2913 = !DILocation(line: 0, scope: !2911)
!2914 = !DILocation(line: 40, column: 13, scope: !2911)
!2915 = distinct !DISubprogram(name: "~Vector3", linkageName: "_ZN7Vector3IfED2Ev", scope: !89, file: !90, line: 44, type: !96, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !106, retainedNodes: !216)
!2916 = !DILocalVariable(name: "this", arg: 1, scope: !2915, type: !88, flags: DIFlagArtificial | DIFlagObjectPointer)
!2917 = !DILocation(line: 0, scope: !2915)
!2918 = !DILocation(line: 44, column: 14, scope: !2915)
!2919 = distinct !DISubprogram(name: "operator*<float, float>", linkageName: "_ZmlIffE7Vector3IT_ERK7DMatrixIT0_ERKS2_", scope: !13, file: !13, line: 142, type: !2920, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2922, retainedNodes: !216)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!89, !2149, !113}
!2922 = !{!2923, !2924}
!2923 = !DITemplateTypeParameter(name: "T1", type: !30)
!2924 = !DITemplateTypeParameter(name: "T2", type: !30)
!2925 = !DILocalVariable(name: "dm", arg: 1, scope: !2919, file: !13, line: 142, type: !2149)
!2926 = !DILocation(line: 142, column: 49, scope: !2919)
!2927 = !DILocalVariable(name: "v", arg: 2, scope: !2919, file: !13, line: 142, type: !113)
!2928 = !DILocation(line: 142, column: 72, scope: !2919)
!2929 = !DILocation(line: 144, column: 2, scope: !2919)
!2930 = !DILocalVariable(name: "r", scope: !2919, file: !13, line: 144, type: !89)
!2931 = !DILocation(line: 144, column: 14, scope: !2919)
!2932 = !DILocalVariable(name: "m", scope: !2919, file: !13, line: 145, type: !2109)
!2933 = !DILocation(line: 145, column: 15, scope: !2919)
!2934 = !DILocation(line: 145, column: 37, scope: !2919)
!2935 = !DILocation(line: 146, column: 8, scope: !2919)
!2936 = !DILocation(line: 146, column: 17, scope: !2919)
!2937 = !DILocation(line: 146, column: 19, scope: !2919)
!2938 = !DILocation(line: 146, column: 23, scope: !2919)
!2939 = !DILocation(line: 146, column: 32, scope: !2919)
!2940 = !DILocation(line: 146, column: 34, scope: !2919)
!2941 = !DILocation(line: 146, column: 30, scope: !2919)
!2942 = !DILocation(line: 146, column: 21, scope: !2919)
!2943 = !DILocation(line: 146, column: 38, scope: !2919)
!2944 = !DILocation(line: 146, column: 47, scope: !2919)
!2945 = !DILocation(line: 146, column: 49, scope: !2919)
!2946 = !DILocation(line: 146, column: 36, scope: !2919)
!2947 = !DILocation(line: 146, column: 53, scope: !2919)
!2948 = !DILocation(line: 146, column: 51, scope: !2919)
!2949 = !DILocation(line: 146, column: 4, scope: !2919)
!2950 = !DILocation(line: 146, column: 6, scope: !2919)
!2951 = !DILocation(line: 147, column: 8, scope: !2919)
!2952 = !DILocation(line: 147, column: 17, scope: !2919)
!2953 = !DILocation(line: 147, column: 19, scope: !2919)
!2954 = !DILocation(line: 147, column: 23, scope: !2919)
!2955 = !DILocation(line: 147, column: 32, scope: !2919)
!2956 = !DILocation(line: 147, column: 34, scope: !2919)
!2957 = !DILocation(line: 147, column: 30, scope: !2919)
!2958 = !DILocation(line: 147, column: 21, scope: !2919)
!2959 = !DILocation(line: 147, column: 38, scope: !2919)
!2960 = !DILocation(line: 147, column: 47, scope: !2919)
!2961 = !DILocation(line: 147, column: 49, scope: !2919)
!2962 = !DILocation(line: 147, column: 36, scope: !2919)
!2963 = !DILocation(line: 147, column: 53, scope: !2919)
!2964 = !DILocation(line: 147, column: 51, scope: !2919)
!2965 = !DILocation(line: 147, column: 4, scope: !2919)
!2966 = !DILocation(line: 147, column: 6, scope: !2919)
!2967 = !DILocation(line: 148, column: 8, scope: !2919)
!2968 = !DILocation(line: 148, column: 17, scope: !2919)
!2969 = !DILocation(line: 148, column: 19, scope: !2919)
!2970 = !DILocation(line: 148, column: 23, scope: !2919)
!2971 = !DILocation(line: 148, column: 32, scope: !2919)
!2972 = !DILocation(line: 148, column: 34, scope: !2919)
!2973 = !DILocation(line: 148, column: 30, scope: !2919)
!2974 = !DILocation(line: 148, column: 21, scope: !2919)
!2975 = !DILocation(line: 148, column: 38, scope: !2919)
!2976 = !DILocation(line: 148, column: 47, scope: !2919)
!2977 = !DILocation(line: 148, column: 49, scope: !2919)
!2978 = !DILocation(line: 148, column: 36, scope: !2919)
!2979 = !DILocation(line: 148, column: 53, scope: !2919)
!2980 = !DILocation(line: 148, column: 51, scope: !2919)
!2981 = !DILocation(line: 148, column: 4, scope: !2919)
!2982 = !DILocation(line: 148, column: 6, scope: !2919)
!2983 = !DILocation(line: 149, column: 2, scope: !2919)
!2984 = !DILocation(line: 150, column: 1, scope: !2919)
!2985 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !89, file: !90, line: 51, type: !109, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !108, retainedNodes: !216)
!2986 = !DILocalVariable(name: "this", arg: 1, scope: !2985, type: !2987, flags: DIFlagArtificial | DIFlagObjectPointer)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2988 = !DILocation(line: 0, scope: !2985)
!2989 = !DILocalVariable(name: "v", arg: 2, scope: !2985, file: !90, line: 51, type: !113)
!2990 = !DILocation(line: 51, column: 42, scope: !2985)
!2991 = !DILocation(line: 52, column: 19, scope: !2985)
!2992 = !DILocation(line: 52, column: 23, scope: !2985)
!2993 = !DILocation(line: 52, column: 25, scope: !2985)
!2994 = !DILocation(line: 52, column: 21, scope: !2985)
!2995 = !DILocation(line: 52, column: 28, scope: !2985)
!2996 = !DILocation(line: 52, column: 32, scope: !2985)
!2997 = !DILocation(line: 52, column: 34, scope: !2985)
!2998 = !DILocation(line: 52, column: 30, scope: !2985)
!2999 = !DILocation(line: 52, column: 37, scope: !2985)
!3000 = !DILocation(line: 52, column: 41, scope: !2985)
!3001 = !DILocation(line: 52, column: 43, scope: !2985)
!3002 = !DILocation(line: 52, column: 39, scope: !2985)
!3003 = !DILocation(line: 52, column: 11, scope: !2985)
!3004 = !DILocation(line: 52, column: 4, scope: !2985)
!3005 = distinct !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm", scope: !151, file: !81, line: 937, type: !3006, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3009, retainedNodes: !216)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !3008, !80}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3009 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE6resizeEm", scope: !151, file: !81, line: 937, type: !3006, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3010 = !DILocalVariable(name: "this", arg: 1, scope: !3005, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3012 = !DILocation(line: 0, scope: !3005)
!3013 = !DILocalVariable(name: "__new_size", arg: 2, scope: !3005, file: !81, line: 937, type: !80)
!3014 = !DILocation(line: 937, column: 24, scope: !3005)
!3015 = !DILocation(line: 939, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3005, file: !81, line: 939, column: 6)
!3017 = !DILocation(line: 939, column: 19, scope: !3016)
!3018 = !DILocation(line: 939, column: 17, scope: !3016)
!3019 = !DILocation(line: 939, column: 6, scope: !3005)
!3020 = !DILocation(line: 940, column: 22, scope: !3016)
!3021 = !DILocation(line: 940, column: 35, scope: !3016)
!3022 = !DILocation(line: 940, column: 33, scope: !3016)
!3023 = !DILocation(line: 940, column: 4, scope: !3016)
!3024 = !DILocation(line: 941, column: 11, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !81, line: 941, column: 11)
!3026 = !DILocation(line: 941, column: 24, scope: !3025)
!3027 = !DILocation(line: 941, column: 22, scope: !3025)
!3028 = !DILocation(line: 941, column: 11, scope: !3016)
!3029 = !DILocation(line: 942, column: 26, scope: !3025)
!3030 = !DILocation(line: 942, column: 34, scope: !3025)
!3031 = !DILocation(line: 942, column: 45, scope: !3025)
!3032 = !DILocation(line: 942, column: 43, scope: !3025)
!3033 = !DILocation(line: 942, column: 4, scope: !3025)
!3034 = !DILocation(line: 943, column: 7, scope: !3005)
!3035 = distinct !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIfSaIfEE6resizeEm", scope: !238, file: !81, line: 937, type: !3036, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3039, retainedNodes: !216)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !3038, !80}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3039 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIfSaIfEE6resizeEm", scope: !238, file: !81, line: 937, type: !3036, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3040 = !DILocalVariable(name: "this", arg: 1, scope: !3035, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!3042 = !DILocation(line: 0, scope: !3035)
!3043 = !DILocalVariable(name: "__new_size", arg: 2, scope: !3035, file: !81, line: 937, type: !80)
!3044 = !DILocation(line: 937, column: 24, scope: !3035)
!3045 = !DILocation(line: 939, column: 6, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3035, file: !81, line: 939, column: 6)
!3047 = !DILocation(line: 939, column: 19, scope: !3046)
!3048 = !DILocation(line: 939, column: 17, scope: !3046)
!3049 = !DILocation(line: 939, column: 6, scope: !3035)
!3050 = !DILocation(line: 940, column: 22, scope: !3046)
!3051 = !DILocation(line: 940, column: 35, scope: !3046)
!3052 = !DILocation(line: 940, column: 33, scope: !3046)
!3053 = !DILocation(line: 940, column: 4, scope: !3046)
!3054 = !DILocation(line: 941, column: 11, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3046, file: !81, line: 941, column: 11)
!3056 = !DILocation(line: 941, column: 24, scope: !3055)
!3057 = !DILocation(line: 941, column: 22, scope: !3055)
!3058 = !DILocation(line: 941, column: 11, scope: !3046)
!3059 = !DILocation(line: 942, column: 26, scope: !3055)
!3060 = !DILocation(line: 942, column: 34, scope: !3055)
!3061 = !DILocation(line: 942, column: 45, scope: !3055)
!3062 = !DILocation(line: 942, column: 43, scope: !3055)
!3063 = !DILocation(line: 942, column: 4, scope: !3055)
!3064 = !DILocation(line: 943, column: 7, scope: !3035)
!3065 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EEixEm", scope: !151, file: !81, line: 1043, type: !3066, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3073, retainedNodes: !216)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!3068, !3008, !80}
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !151, file: !81, line: 417, baseType: !3069, flags: DIFlagPublic)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !159, file: !158, line: 62, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !159, file: !158, line: 56, baseType: !3072)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !163, file: !164, line: 417, baseType: !89)
!3073 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EEixEm", scope: !151, file: !81, line: 1043, type: !3066, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3074 = !DILocalVariable(name: "this", arg: 1, scope: !3065, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3075 = !DILocation(line: 0, scope: !3065)
!3076 = !DILocalVariable(name: "__n", arg: 2, scope: !3065, file: !81, line: 1043, type: !80)
!3077 = !DILocation(line: 1043, column: 28, scope: !3065)
!3078 = !DILocation(line: 1046, column: 17, scope: !3065)
!3079 = !DILocation(line: 1046, column: 25, scope: !3065)
!3080 = !DILocation(line: 1046, column: 36, scope: !3065)
!3081 = !DILocation(line: 1046, column: 34, scope: !3065)
!3082 = !DILocation(line: 1046, column: 2, scope: !3065)
!3083 = distinct !DISubprogram(name: "Set", linkageName: "_ZN7Vector3IfE3SetEfff", scope: !89, file: !90, line: 47, type: !100, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !107, retainedNodes: !216)
!3084 = !DILocalVariable(name: "this", arg: 1, scope: !3083, type: !88, flags: DIFlagArtificial | DIFlagObjectPointer)
!3085 = !DILocation(line: 0, scope: !3083)
!3086 = !DILocalVariable(name: "xv", arg: 2, scope: !3083, file: !90, line: 47, type: !30)
!3087 = !DILocation(line: 47, column: 20, scope: !3083)
!3088 = !DILocalVariable(name: "yv", arg: 3, scope: !3083, file: !90, line: 47, type: !30)
!3089 = !DILocation(line: 47, column: 26, scope: !3083)
!3090 = !DILocalVariable(name: "zv", arg: 4, scope: !3083, file: !90, line: 47, type: !30)
!3091 = !DILocation(line: 47, column: 32, scope: !3083)
!3092 = !DILocation(line: 47, column: 43, scope: !3083)
!3093 = !DILocation(line: 47, column: 39, scope: !3083)
!3094 = !DILocation(line: 47, column: 41, scope: !3083)
!3095 = !DILocation(line: 47, column: 52, scope: !3083)
!3096 = !DILocation(line: 47, column: 48, scope: !3083)
!3097 = !DILocation(line: 47, column: 50, scope: !3083)
!3098 = !DILocation(line: 47, column: 60, scope: !3083)
!3099 = !DILocation(line: 47, column: 56, scope: !3083)
!3100 = !DILocation(line: 47, column: 58, scope: !3083)
!3101 = !DILocation(line: 47, column: 64, scope: !3083)
!3102 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIfSaIfEEixEm", scope: !238, file: !81, line: 1043, type: !3103, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3110, retainedNodes: !216)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!3105, !3038, !80}
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !238, file: !81, line: 417, baseType: !3106, flags: DIFlagPublic)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !245, file: !158, line: 62, baseType: !3107)
!3107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !245, file: !158, line: 56, baseType: !3109)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !248, file: !164, line: 417, baseType: !30)
!3110 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIfSaIfEEixEm", scope: !238, file: !81, line: 1043, type: !3103, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3111 = !DILocalVariable(name: "this", arg: 1, scope: !3102, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!3112 = !DILocation(line: 0, scope: !3102)
!3113 = !DILocalVariable(name: "__n", arg: 2, scope: !3102, file: !81, line: 1043, type: !80)
!3114 = !DILocation(line: 1043, column: 28, scope: !3102)
!3115 = !DILocation(line: 1046, column: 17, scope: !3102)
!3116 = !DILocation(line: 1046, column: 25, scope: !3102)
!3117 = !DILocation(line: 1046, column: 36, scope: !3102)
!3118 = !DILocation(line: 1046, column: 34, scope: !3102)
!3119 = !DILocation(line: 1046, column: 2, scope: !3102)
!3120 = distinct !DISubprogram(name: "Valid", linkageName: "_ZN12BodyGeometry5ValidEv", scope: !1582, file: !10, line: 229, type: !3121, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3123, retainedNodes: !216)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!148, !1585}
!3123 = !DISubprogram(name: "Valid", linkageName: "_ZN12BodyGeometry5ValidEv", scope: !1582, file: !309, line: 104, type: !3121, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3124 = !DILocalVariable(name: "this", arg: 1, scope: !3120, type: !1593, flags: DIFlagArtificial | DIFlagObjectPointer)
!3125 = !DILocation(line: 0, scope: !3120)
!3126 = !DILocation(line: 231, column: 27, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3120, file: !10, line: 231, column: 5)
!3128 = !DILocation(line: 231, column: 41, scope: !3127)
!3129 = !DILocation(line: 231, column: 5, scope: !3127)
!3130 = !DILocation(line: 231, column: 5, scope: !3120)
!3131 = !DILocation(line: 231, column: 57, scope: !3127)
!3132 = !DILocation(line: 232, column: 27, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3120, file: !10, line: 232, column: 5)
!3134 = !DILocation(line: 232, column: 41, scope: !3133)
!3135 = !DILocation(line: 232, column: 5, scope: !3133)
!3136 = !DILocation(line: 232, column: 5, scope: !3120)
!3137 = !DILocation(line: 232, column: 57, scope: !3133)
!3138 = !DILocation(line: 233, column: 27, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3120, file: !10, line: 233, column: 5)
!3140 = !DILocation(line: 233, column: 41, scope: !3139)
!3141 = !DILocation(line: 233, column: 5, scope: !3139)
!3142 = !DILocation(line: 233, column: 5, scope: !3120)
!3143 = !DILocation(line: 233, column: 57, scope: !3139)
!3144 = !DILocation(line: 234, column: 2, scope: !3120)
!3145 = !DILocation(line: 235, column: 1, scope: !3120)
!3146 = distinct !DISubprogram(name: "operator()", linkageName: "_ZN7DMatrixIfEclEii", scope: !26, file: !13, line: 66, type: !61, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !60, retainedNodes: !216)
!3147 = !DILocalVariable(name: "this", arg: 1, scope: !3146, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!3148 = !DILocation(line: 0, scope: !3146)
!3149 = !DILocalVariable(name: "r", arg: 2, scope: !3146, file: !13, line: 66, type: !64)
!3150 = !DILocation(line: 66, column: 27, scope: !3146)
!3151 = !DILocalVariable(name: "c", arg: 3, scope: !3146, file: !13, line: 66, type: !64)
!3152 = !DILocation(line: 66, column: 34, scope: !3146)
!3153 = !DILocation(line: 66, column: 45, scope: !3146)
!3154 = !DILocation(line: 66, column: 50, scope: !3146)
!3155 = !DILocation(line: 66, column: 53, scope: !3146)
!3156 = !DILocation(line: 66, column: 38, scope: !3146)
!3157 = distinct !DISubprogram(name: "EulerRotation<float>", linkageName: "_Z13EulerRotationIfEvR7DMatrixIT_Efff7DMOrder", scope: !13, file: !13, line: 275, type: !3158, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !77, retainedNodes: !216)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !2109, !30, !30, !30, !56}
!3160 = !DILocalVariable(name: "m", arg: 1, scope: !3157, file: !13, line: 275, type: !2109)
!3161 = !DILocation(line: 275, column: 32, scope: !3157)
!3162 = !DILocalVariable(name: "theta", arg: 2, scope: !3157, file: !13, line: 275, type: !30)
!3163 = !DILocation(line: 275, column: 41, scope: !3157)
!3164 = !DILocalVariable(name: "phi", arg: 3, scope: !3157, file: !13, line: 275, type: !30)
!3165 = !DILocation(line: 275, column: 54, scope: !3157)
!3166 = !DILocalVariable(name: "tau", arg: 4, scope: !3157, file: !13, line: 275, type: !30)
!3167 = !DILocation(line: 275, column: 65, scope: !3157)
!3168 = !DILocalVariable(name: "order", arg: 5, scope: !3157, file: !13, line: 275, type: !56)
!3169 = !DILocation(line: 275, column: 78, scope: !3157)
!3170 = !DILocalVariable(name: "Rx", scope: !3157, file: !13, line: 276, type: !26)
!3171 = !DILocation(line: 276, column: 14, scope: !3157)
!3172 = !DILocation(line: 276, column: 20, scope: !3157)
!3173 = !DILocalVariable(name: "Ry", scope: !3157, file: !13, line: 276, type: !26)
!3174 = !DILocation(line: 276, column: 28, scope: !3157)
!3175 = !DILocation(line: 276, column: 34, scope: !3157)
!3176 = !DILocalVariable(name: "Rz", scope: !3157, file: !13, line: 276, type: !26)
!3177 = !DILocation(line: 276, column: 40, scope: !3157)
!3178 = !DILocation(line: 276, column: 46, scope: !3157)
!3179 = !DILocation(line: 277, column: 10, scope: !3157)
!3180 = !DILocation(line: 277, column: 2, scope: !3157)
!3181 = !DILocation(line: 289, column: 1, scope: !3157)
!3182 = !DILocation(line: 279, column: 12, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3157, file: !13, line: 278, column: 2)
!3184 = !DILocation(line: 279, column: 18, scope: !3183)
!3185 = !DILocation(line: 279, column: 4, scope: !3183)
!3186 = !DILocation(line: 279, column: 6, scope: !3183)
!3187 = !DILocation(line: 279, column: 24, scope: !3183)
!3188 = !DILocation(line: 289, column: 1, scope: !3183)
!3189 = !DILocation(line: 281, column: 12, scope: !3183)
!3190 = !DILocation(line: 281, column: 18, scope: !3183)
!3191 = !DILocation(line: 281, column: 4, scope: !3183)
!3192 = !DILocation(line: 281, column: 6, scope: !3183)
!3193 = !DILocation(line: 281, column: 24, scope: !3183)
!3194 = !DILocation(line: 283, column: 12, scope: !3183)
!3195 = !DILocation(line: 283, column: 18, scope: !3183)
!3196 = !DILocation(line: 283, column: 4, scope: !3183)
!3197 = !DILocation(line: 283, column: 6, scope: !3183)
!3198 = !DILocation(line: 283, column: 24, scope: !3183)
!3199 = !DILocation(line: 285, column: 12, scope: !3183)
!3200 = !DILocation(line: 285, column: 18, scope: !3183)
!3201 = !DILocation(line: 285, column: 4, scope: !3183)
!3202 = !DILocation(line: 285, column: 6, scope: !3183)
!3203 = !DILocation(line: 285, column: 24, scope: !3183)
!3204 = !DILocation(line: 287, column: 12, scope: !3183)
!3205 = !DILocation(line: 287, column: 18, scope: !3183)
!3206 = !DILocation(line: 287, column: 4, scope: !3183)
!3207 = !DILocation(line: 287, column: 6, scope: !3183)
!3208 = !DILocation(line: 287, column: 24, scope: !3183)
!3209 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2E6DMAxisf", scope: !26, file: !13, line: 128, type: !50, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !49, retainedNodes: !216)
!3210 = !DILocalVariable(name: "this", arg: 1, scope: !3209, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!3211 = !DILocation(line: 0, scope: !3209)
!3212 = !DILocalVariable(name: "axis", arg: 2, scope: !3209, file: !13, line: 51, type: !52)
!3213 = !DILocation(line: 51, column: 17, scope: !3209)
!3214 = !DILocalVariable(name: "angle", arg: 3, scope: !3209, file: !13, line: 51, type: !30)
!3215 = !DILocation(line: 51, column: 25, scope: !3209)
!3216 = !DILocation(line: 129, column: 23, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !13, line: 129, column: 1)
!3218 = !DILocation(line: 129, column: 29, scope: !3217)
!3219 = !DILocation(line: 129, column: 3, scope: !3217)
!3220 = !DILocation(line: 130, column: 1, scope: !3209)
!3221 = distinct !DISubprogram(name: "AxisRotation<float>", linkageName: "_Z12AxisRotationIfEvR7DMatrixIT_E6DMAxisS1_", scope: !13, file: !13, line: 260, type: !3222, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !77, retainedNodes: !216)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !2109, !52, !30}
!3224 = !DILocalVariable(name: "m", arg: 1, scope: !3221, file: !13, line: 100, type: !2109)
!3225 = !DILocation(line: 100, column: 31, scope: !3221)
!3226 = !DILocalVariable(name: "axis", arg: 2, scope: !3221, file: !13, line: 100, type: !52)
!3227 = !DILocation(line: 100, column: 41, scope: !3221)
!3228 = !DILocalVariable(name: "angle", arg: 3, scope: !3221, file: !13, line: 100, type: !30)
!3229 = !DILocation(line: 100, column: 49, scope: !3221)
!3230 = !DILocation(line: 261, column: 3, scope: !3221)
!3231 = !DILocation(line: 261, column: 5, scope: !3221)
!3232 = !DILocalVariable(name: "c", scope: !3221, file: !13, line: 262, type: !30)
!3233 = !DILocation(line: 262, column: 8, scope: !3221)
!3234 = !DILocation(line: 262, column: 16, scope: !3221)
!3235 = !DILocation(line: 262, column: 12, scope: !3221)
!3236 = !DILocalVariable(name: "s", scope: !3221, file: !13, line: 262, type: !30)
!3237 = !DILocation(line: 262, column: 24, scope: !3221)
!3238 = !DILocation(line: 262, column: 32, scope: !3221)
!3239 = !DILocation(line: 262, column: 28, scope: !3221)
!3240 = !DILocation(line: 263, column: 9, scope: !3221)
!3241 = !DILocation(line: 263, column: 2, scope: !3221)
!3242 = !DILocation(line: 264, column: 13, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3221, file: !13, line: 264, column: 2)
!3244 = !DILocation(line: 264, column: 20, scope: !3243)
!3245 = !DILocation(line: 264, column: 34, scope: !3243)
!3246 = !DILocation(line: 264, column: 25, scope: !3243)
!3247 = !DILocation(line: 264, column: 32, scope: !3243)
!3248 = !DILocation(line: 264, column: 47, scope: !3243)
!3249 = !DILocation(line: 264, column: 46, scope: !3243)
!3250 = !DILocation(line: 264, column: 37, scope: !3243)
!3251 = !DILocation(line: 264, column: 44, scope: !3243)
!3252 = !DILocation(line: 264, column: 59, scope: !3243)
!3253 = !DILocation(line: 264, column: 50, scope: !3243)
!3254 = !DILocation(line: 264, column: 57, scope: !3243)
!3255 = !DILocation(line: 264, column: 71, scope: !3243)
!3256 = !DILocation(line: 264, column: 62, scope: !3243)
!3257 = !DILocation(line: 264, column: 69, scope: !3243)
!3258 = !DILocation(line: 265, column: 6, scope: !3243)
!3259 = !DILocation(line: 266, column: 21, scope: !3243)
!3260 = !DILocation(line: 266, column: 12, scope: !3243)
!3261 = !DILocation(line: 266, column: 19, scope: !3243)
!3262 = !DILocation(line: 266, column: 33, scope: !3243)
!3263 = !DILocation(line: 266, column: 24, scope: !3243)
!3264 = !DILocation(line: 266, column: 31, scope: !3243)
!3265 = !DILocation(line: 266, column: 36, scope: !3243)
!3266 = !DILocation(line: 266, column: 43, scope: !3243)
!3267 = !DILocation(line: 266, column: 58, scope: !3243)
!3268 = !DILocation(line: 266, column: 57, scope: !3243)
!3269 = !DILocation(line: 266, column: 48, scope: !3243)
!3270 = !DILocation(line: 266, column: 55, scope: !3243)
!3271 = !DILocation(line: 266, column: 70, scope: !3243)
!3272 = !DILocation(line: 266, column: 61, scope: !3243)
!3273 = !DILocation(line: 266, column: 68, scope: !3243)
!3274 = !DILocation(line: 267, column: 6, scope: !3243)
!3275 = !DILocation(line: 268, column: 21, scope: !3243)
!3276 = !DILocation(line: 268, column: 12, scope: !3243)
!3277 = !DILocation(line: 268, column: 19, scope: !3243)
!3278 = !DILocation(line: 268, column: 34, scope: !3243)
!3279 = !DILocation(line: 268, column: 33, scope: !3243)
!3280 = !DILocation(line: 268, column: 24, scope: !3243)
!3281 = !DILocation(line: 268, column: 31, scope: !3243)
!3282 = !DILocation(line: 268, column: 46, scope: !3243)
!3283 = !DILocation(line: 268, column: 37, scope: !3243)
!3284 = !DILocation(line: 268, column: 44, scope: !3243)
!3285 = !DILocation(line: 268, column: 58, scope: !3243)
!3286 = !DILocation(line: 268, column: 49, scope: !3243)
!3287 = !DILocation(line: 268, column: 56, scope: !3243)
!3288 = !DILocation(line: 268, column: 61, scope: !3243)
!3289 = !DILocation(line: 268, column: 68, scope: !3243)
!3290 = !DILocation(line: 269, column: 6, scope: !3243)
!3291 = !DILocation(line: 271, column: 1, scope: !3221)
!3292 = distinct !DISubprogram(name: "Clear", linkageName: "_ZN7DMatrixIfE5ClearEv", scope: !26, file: !13, line: 60, type: !35, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !58, retainedNodes: !216)
!3293 = !DILocalVariable(name: "this", arg: 1, scope: !3292, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!3294 = !DILocation(line: 0, scope: !3292)
!3295 = !DILocation(line: 60, column: 23, scope: !3292)
!3296 = !DILocation(line: 60, column: 16, scope: !3292)
!3297 = !DILocation(line: 60, column: 49, scope: !3292)
!3298 = distinct !DISubprogram(name: "cos", linkageName: "_ZSt3cosf", scope: !2, file: !1236, line: 184, type: !1298, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !216)
!3299 = !DILocalVariable(name: "__x", arg: 1, scope: !3298, file: !1236, line: 184, type: !30)
!3300 = !DILocation(line: 184, column: 13, scope: !3298)
!3301 = !DILocation(line: 185, column: 27, scope: !3298)
!3302 = !DILocation(line: 185, column: 12, scope: !3298)
!3303 = !DILocation(line: 185, column: 5, scope: !3298)
!3304 = distinct !DISubprogram(name: "sin", linkageName: "_ZSt3sinf", scope: !2, file: !1236, line: 425, type: !1298, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !216)
!3305 = !DILocalVariable(name: "__x", arg: 1, scope: !3304, file: !1236, line: 425, type: !30)
!3306 = !DILocation(line: 425, column: 13, scope: !3304)
!3307 = !DILocation(line: 426, column: 27, scope: !3304)
!3308 = !DILocation(line: 426, column: 12, scope: !3304)
!3309 = !DILocation(line: 426, column: 5, scope: !3304)
!3310 = distinct !DISubprogram(name: "DMatrix", linkageName: "_ZN7DMatrixIfEC2Ev", scope: !26, file: !13, line: 39, type: !35, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !34, retainedNodes: !216)
!3311 = !DILocalVariable(name: "this", arg: 1, scope: !3310, type: !79, flags: DIFlagArtificial | DIFlagObjectPointer)
!3312 = !DILocation(line: 0, scope: !3310)
!3313 = !DILocation(line: 39, column: 13, scope: !3310)
!3314 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv", scope: !151, file: !81, line: 918, type: !3315, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3319, retainedNodes: !216)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!80, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!3319 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE4sizeEv", scope: !151, file: !81, line: 918, type: !3315, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3320 = !DILocalVariable(name: "this", arg: 1, scope: !3314, type: !3321, flags: DIFlagArtificial | DIFlagObjectPointer)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3322 = !DILocation(line: 0, scope: !3314)
!3323 = !DILocation(line: 919, column: 32, scope: !3314)
!3324 = !DILocation(line: 919, column: 40, scope: !3314)
!3325 = !DILocation(line: 919, column: 58, scope: !3314)
!3326 = !DILocation(line: 919, column: 66, scope: !3314)
!3327 = !DILocation(line: 919, column: 50, scope: !3314)
!3328 = !DILocation(line: 919, column: 9, scope: !3314)
!3329 = distinct !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE17_M_default_appendEm", scope: !151, file: !323, line: 612, type: !3006, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3330, retainedNodes: !216)
!3330 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE17_M_default_appendEm", scope: !151, file: !81, line: 1689, type: !3006, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3331 = !DILocalVariable(name: "this", arg: 1, scope: !3329, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3332 = !DILocation(line: 0, scope: !3329)
!3333 = !DILocalVariable(name: "__n", arg: 2, scope: !3329, file: !81, line: 1689, type: !80)
!3334 = !DILocation(line: 1689, column: 35, scope: !3329)
!3335 = !DILocation(line: 614, column: 11, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3329, file: !323, line: 614, column: 11)
!3337 = !DILocation(line: 614, column: 15, scope: !3336)
!3338 = !DILocation(line: 614, column: 11, scope: !3329)
!3339 = !DILocalVariable(name: "__size", scope: !3340, file: !323, line: 616, type: !3341)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !323, line: 615, column: 2)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!3342 = !DILocation(line: 616, column: 20, scope: !3340)
!3343 = !DILocation(line: 616, column: 29, scope: !3340)
!3344 = !DILocalVariable(name: "__navail", scope: !3340, file: !323, line: 617, type: !80)
!3345 = !DILocation(line: 617, column: 14, scope: !3340)
!3346 = !DILocation(line: 617, column: 41, scope: !3340)
!3347 = !DILocation(line: 617, column: 49, scope: !3340)
!3348 = !DILocation(line: 618, column: 15, scope: !3340)
!3349 = !DILocation(line: 618, column: 23, scope: !3340)
!3350 = !DILocation(line: 618, column: 7, scope: !3340)
!3351 = !DILocation(line: 620, column: 8, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3340, file: !323, line: 620, column: 8)
!3353 = !DILocation(line: 620, column: 17, scope: !3352)
!3354 = !DILocation(line: 620, column: 15, scope: !3352)
!3355 = !DILocation(line: 620, column: 28, scope: !3352)
!3356 = !DILocation(line: 620, column: 31, scope: !3352)
!3357 = !DILocation(line: 620, column: 42, scope: !3352)
!3358 = !DILocation(line: 620, column: 55, scope: !3352)
!3359 = !DILocation(line: 620, column: 53, scope: !3352)
!3360 = !DILocation(line: 620, column: 40, scope: !3352)
!3361 = !DILocation(line: 620, column: 8, scope: !3340)
!3362 = !DILocation(line: 621, column: 6, scope: !3352)
!3363 = !DILocation(line: 623, column: 8, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3340, file: !323, line: 623, column: 8)
!3365 = !DILocation(line: 623, column: 20, scope: !3364)
!3366 = !DILocation(line: 623, column: 17, scope: !3364)
!3367 = !DILocation(line: 623, column: 8, scope: !3340)
!3368 = !DILocation(line: 627, column: 42, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !323, line: 624, column: 6)
!3370 = !DILocation(line: 627, column: 50, scope: !3369)
!3371 = !DILocation(line: 628, column: 8, scope: !3369)
!3372 = !DILocation(line: 628, column: 13, scope: !3369)
!3373 = !DILocation(line: 627, column: 3, scope: !3369)
!3374 = !DILocation(line: 626, column: 14, scope: !3369)
!3375 = !DILocation(line: 626, column: 22, scope: !3369)
!3376 = !DILocation(line: 626, column: 32, scope: !3369)
!3377 = !DILocation(line: 630, column: 6, scope: !3369)
!3378 = !DILocalVariable(name: "__len", scope: !3379, file: !323, line: 633, type: !3341)
!3379 = distinct !DILexicalBlock(scope: !3364, file: !323, line: 632, column: 6)
!3380 = !DILocation(line: 633, column: 24, scope: !3379)
!3381 = !DILocation(line: 634, column: 16, scope: !3379)
!3382 = !DILocation(line: 634, column: 3, scope: !3379)
!3383 = !DILocalVariable(name: "__new_start", scope: !3379, file: !323, line: 635, type: !154)
!3384 = !DILocation(line: 635, column: 16, scope: !3379)
!3385 = !DILocation(line: 635, column: 46, scope: !3379)
!3386 = !DILocation(line: 635, column: 34, scope: !3379)
!3387 = !DILocation(line: 640, column: 42, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !323, line: 639, column: 7)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !323, line: 637, column: 3)
!3390 = distinct !DILexicalBlock(scope: !3379, file: !323, line: 636, column: 33)
!3391 = !DILocation(line: 640, column: 56, scope: !3388)
!3392 = !DILocation(line: 640, column: 54, scope: !3388)
!3393 = !DILocation(line: 641, column: 10, scope: !3388)
!3394 = !DILocation(line: 641, column: 15, scope: !3388)
!3395 = !DILocation(line: 640, column: 9, scope: !3388)
!3396 = !DILocation(line: 642, column: 7, scope: !3388)
!3397 = !DILocation(line: 683, column: 5, scope: !3388)
!3398 = !DILocation(line: 645, column: 23, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3389, file: !323, line: 644, column: 7)
!3400 = !DILocation(line: 645, column: 36, scope: !3399)
!3401 = !DILocation(line: 645, column: 9, scope: !3399)
!3402 = !DILocation(line: 646, column: 9, scope: !3399)
!3403 = !DILocation(line: 683, column: 5, scope: !3399)
!3404 = !DILocation(line: 647, column: 7, scope: !3399)
!3405 = !DILocation(line: 648, column: 23, scope: !3389)
!3406 = !DILocation(line: 648, column: 31, scope: !3389)
!3407 = !DILocation(line: 648, column: 47, scope: !3389)
!3408 = !DILocation(line: 648, column: 55, scope: !3389)
!3409 = !DILocation(line: 649, column: 10, scope: !3389)
!3410 = !DILocation(line: 649, column: 23, scope: !3389)
!3411 = !DILocation(line: 648, column: 5, scope: !3389)
!3412 = !DILocation(line: 675, column: 28, scope: !3379)
!3413 = !DILocation(line: 675, column: 36, scope: !3379)
!3414 = !DILocation(line: 676, column: 14, scope: !3379)
!3415 = !DILocation(line: 676, column: 22, scope: !3379)
!3416 = !DILocation(line: 677, column: 16, scope: !3379)
!3417 = !DILocation(line: 677, column: 24, scope: !3379)
!3418 = !DILocation(line: 677, column: 8, scope: !3379)
!3419 = !DILocation(line: 675, column: 8, scope: !3379)
!3420 = !DILocation(line: 678, column: 33, scope: !3379)
!3421 = !DILocation(line: 678, column: 14, scope: !3379)
!3422 = !DILocation(line: 678, column: 22, scope: !3379)
!3423 = !DILocation(line: 678, column: 31, scope: !3379)
!3424 = !DILocation(line: 679, column: 34, scope: !3379)
!3425 = !DILocation(line: 679, column: 48, scope: !3379)
!3426 = !DILocation(line: 679, column: 46, scope: !3379)
!3427 = !DILocation(line: 679, column: 57, scope: !3379)
!3428 = !DILocation(line: 679, column: 55, scope: !3379)
!3429 = !DILocation(line: 679, column: 14, scope: !3379)
!3430 = !DILocation(line: 679, column: 22, scope: !3379)
!3431 = !DILocation(line: 679, column: 32, scope: !3379)
!3432 = !DILocation(line: 680, column: 42, scope: !3379)
!3433 = !DILocation(line: 680, column: 56, scope: !3379)
!3434 = !DILocation(line: 680, column: 54, scope: !3379)
!3435 = !DILocation(line: 680, column: 14, scope: !3379)
!3436 = !DILocation(line: 680, column: 22, scope: !3379)
!3437 = !DILocation(line: 680, column: 40, scope: !3379)
!3438 = !DILocation(line: 682, column: 2, scope: !3340)
!3439 = !DILocation(line: 683, column: 5, scope: !3329)
!3440 = distinct !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE15_M_erase_at_endEPS1_", scope: !151, file: !81, line: 1792, type: !3441, scopeLine: 1793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3443, retainedNodes: !216)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3008, !154}
!3443 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE15_M_erase_at_endEPS1_", scope: !151, file: !81, line: 1792, type: !3441, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3444 = !DILocalVariable(name: "this", arg: 1, scope: !3440, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3445 = !DILocation(line: 0, scope: !3440)
!3446 = !DILocalVariable(name: "__pos", arg: 2, scope: !3440, file: !81, line: 1792, type: !154)
!3447 = !DILocation(line: 1792, column: 31, scope: !3440)
!3448 = !DILocalVariable(name: "__n", scope: !3449, file: !81, line: 1794, type: !80)
!3449 = distinct !DILexicalBlock(scope: !3440, file: !81, line: 1794, column: 16)
!3450 = !DILocation(line: 1794, column: 16, scope: !3449)
!3451 = !DILocation(line: 1794, column: 28, scope: !3449)
!3452 = !DILocation(line: 1794, column: 36, scope: !3449)
!3453 = !DILocation(line: 1794, column: 48, scope: !3449)
!3454 = !DILocation(line: 1794, column: 46, scope: !3449)
!3455 = !DILocation(line: 1794, column: 16, scope: !3440)
!3456 = !DILocation(line: 1796, column: 20, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3449, file: !81, line: 1795, column: 4)
!3458 = !DILocation(line: 1796, column: 33, scope: !3457)
!3459 = !DILocation(line: 1796, column: 41, scope: !3457)
!3460 = !DILocation(line: 1797, column: 6, scope: !3457)
!3461 = !DILocation(line: 1796, column: 6, scope: !3457)
!3462 = !DILocation(line: 1798, column: 32, scope: !3457)
!3463 = !DILocation(line: 1798, column: 12, scope: !3457)
!3464 = !DILocation(line: 1798, column: 20, scope: !3457)
!3465 = !DILocation(line: 1798, column: 30, scope: !3457)
!3466 = !DILocation(line: 1800, column: 4, scope: !3457)
!3467 = !DILocation(line: 1801, column: 7, scope: !3440)
!3468 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv", scope: !151, file: !81, line: 923, type: !3315, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3469, retainedNodes: !216)
!3469 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE8max_sizeEv", scope: !151, file: !81, line: 923, type: !3315, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3470 = !DILocalVariable(name: "this", arg: 1, scope: !3468, type: !3321, flags: DIFlagArtificial | DIFlagObjectPointer)
!3471 = !DILocation(line: 0, scope: !3468)
!3472 = !DILocation(line: 924, column: 28, scope: !3468)
!3473 = !DILocation(line: 924, column: 16, scope: !3468)
!3474 = !DILocation(line: 924, column: 9, scope: !3468)
!3475 = distinct !DISubprogram(name: "__uninitialized_default_n_a<Vector3<float> *, unsigned long, Vector3<float> >", linkageName: "_ZSt27__uninitialized_default_n_aIP7Vector3IfEmS1_ET_S3_T0_RSaIT1_E", scope: !2, file: !3476, line: 702, type: !3477, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3479, retainedNodes: !216)
!3476 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!88, !88, !84, !201}
!3479 = !{!3480, !3481, !218}
!3480 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !88)
!3481 = !DITemplateTypeParameter(name: "_Size", type: !84)
!3482 = !DILocalVariable(name: "__first", arg: 1, scope: !3475, file: !3476, line: 702, type: !88)
!3483 = !DILocation(line: 702, column: 50, scope: !3475)
!3484 = !DILocalVariable(name: "__n", arg: 2, scope: !3475, file: !3476, line: 702, type: !84)
!3485 = !DILocation(line: 702, column: 65, scope: !3475)
!3486 = !DILocalVariable(arg: 3, scope: !3475, file: !3476, line: 703, type: !201)
!3487 = !DILocation(line: 703, column: 20, scope: !3475)
!3488 = !DILocation(line: 704, column: 45, scope: !3475)
!3489 = !DILocation(line: 704, column: 54, scope: !3475)
!3490 = !DILocation(line: 704, column: 14, scope: !3475)
!3491 = !DILocation(line: 704, column: 7, scope: !3475)
!3492 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv", scope: !156, file: !81, line: 276, type: !3493, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3497, retainedNodes: !216)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!3495, !3496}
!3495 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !213, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3497 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv", scope: !156, file: !81, line: 276, type: !3493, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!3498 = !DILocalVariable(name: "this", arg: 1, scope: !3492, type: !3499, flags: DIFlagArtificial | DIFlagObjectPointer)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!3500 = !DILocation(line: 0, scope: !3492)
!3501 = !DILocation(line: 277, column: 22, scope: !3492)
!3502 = !DILocation(line: 277, column: 9, scope: !3492)
!3503 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE12_M_check_lenEmPKc", scope: !151, file: !81, line: 1756, type: !3504, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3507, retainedNodes: !216)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!3506, !3317, !80, !402}
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !151, file: !81, line: 424, baseType: !82, flags: DIFlagPublic)
!3507 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI7Vector3IfESaIS1_EE12_M_check_lenEmPKc", scope: !151, file: !81, line: 1756, type: !3504, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!3508 = !DILocalVariable(name: "this", arg: 1, scope: !3503, type: !3321, flags: DIFlagArtificial | DIFlagObjectPointer)
!3509 = !DILocation(line: 0, scope: !3503)
!3510 = !DILocalVariable(name: "__n", arg: 2, scope: !3503, file: !81, line: 1756, type: !80)
!3511 = !DILocation(line: 1756, column: 30, scope: !3503)
!3512 = !DILocalVariable(name: "__s", arg: 3, scope: !3503, file: !81, line: 1756, type: !402)
!3513 = !DILocation(line: 1756, column: 47, scope: !3503)
!3514 = !DILocation(line: 1758, column: 6, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3503, file: !81, line: 1758, column: 6)
!3516 = !DILocation(line: 1758, column: 19, scope: !3515)
!3517 = !DILocation(line: 1758, column: 17, scope: !3515)
!3518 = !DILocation(line: 1758, column: 28, scope: !3515)
!3519 = !DILocation(line: 1758, column: 26, scope: !3515)
!3520 = !DILocation(line: 1758, column: 6, scope: !3503)
!3521 = !DILocation(line: 1759, column: 25, scope: !3515)
!3522 = !DILocation(line: 1759, column: 4, scope: !3515)
!3523 = !DILocalVariable(name: "__len", scope: !3503, file: !81, line: 1761, type: !3341)
!3524 = !DILocation(line: 1761, column: 18, scope: !3503)
!3525 = !DILocation(line: 1761, column: 26, scope: !3503)
!3526 = !DILocation(line: 1761, column: 46, scope: !3503)
!3527 = !DILocation(line: 1761, column: 35, scope: !3503)
!3528 = !DILocation(line: 1761, column: 33, scope: !3503)
!3529 = !DILocation(line: 1762, column: 10, scope: !3503)
!3530 = !DILocation(line: 1762, column: 18, scope: !3503)
!3531 = !DILocation(line: 1762, column: 16, scope: !3503)
!3532 = !DILocation(line: 1762, column: 25, scope: !3503)
!3533 = !DILocation(line: 1762, column: 28, scope: !3503)
!3534 = !DILocation(line: 1762, column: 36, scope: !3503)
!3535 = !DILocation(line: 1762, column: 34, scope: !3503)
!3536 = !DILocation(line: 1762, column: 9, scope: !3503)
!3537 = !DILocation(line: 1762, column: 50, scope: !3503)
!3538 = !DILocation(line: 1762, column: 63, scope: !3503)
!3539 = !DILocation(line: 1762, column: 2, scope: !3503)
!3540 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE11_M_allocateEm", scope: !156, file: !81, line: 343, type: !3541, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3543, retainedNodes: !216)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!155, !3496, !82}
!3543 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE11_M_allocateEm", scope: !156, file: !81, line: 343, type: !3541, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!3544 = !DILocalVariable(name: "this", arg: 1, scope: !3540, type: !3499, flags: DIFlagArtificial | DIFlagObjectPointer)
!3545 = !DILocation(line: 0, scope: !3540)
!3546 = !DILocalVariable(name: "__n", arg: 2, scope: !3540, file: !81, line: 343, type: !82)
!3547 = !DILocation(line: 343, column: 26, scope: !3540)
!3548 = !DILocation(line: 346, column: 9, scope: !3540)
!3549 = !DILocation(line: 346, column: 13, scope: !3540)
!3550 = !DILocation(line: 346, column: 34, scope: !3540)
!3551 = !DILocation(line: 346, column: 43, scope: !3540)
!3552 = !DILocation(line: 346, column: 20, scope: !3540)
!3553 = !DILocation(line: 346, column: 2, scope: !3540)
!3554 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m", scope: !156, file: !81, line: 350, type: !3555, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3557, retainedNodes: !216)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !3496, !155, !82}
!3557 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI7Vector3IfESaIS1_EE13_M_deallocateEPS1_m", scope: !156, file: !81, line: 350, type: !3555, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3558 = !DILocalVariable(name: "this", arg: 1, scope: !3554, type: !3499, flags: DIFlagArtificial | DIFlagObjectPointer)
!3559 = !DILocation(line: 0, scope: !3554)
!3560 = !DILocalVariable(name: "__p", arg: 2, scope: !3554, file: !81, line: 350, type: !155)
!3561 = !DILocation(line: 350, column: 29, scope: !3554)
!3562 = !DILocalVariable(name: "__n", arg: 3, scope: !3554, file: !81, line: 350, type: !82)
!3563 = !DILocation(line: 350, column: 41, scope: !3554)
!3564 = !DILocation(line: 353, column: 6, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3554, file: !81, line: 353, column: 6)
!3566 = !DILocation(line: 353, column: 6, scope: !3554)
!3567 = !DILocation(line: 354, column: 20, scope: !3565)
!3568 = !DILocation(line: 354, column: 29, scope: !3565)
!3569 = !DILocation(line: 354, column: 34, scope: !3565)
!3570 = !DILocation(line: 354, column: 4, scope: !3565)
!3571 = !DILocation(line: 355, column: 7, scope: !3554)
!3572 = !DILocalVariable(name: "__first", arg: 1, scope: !150, file: !81, line: 465, type: !154)
!3573 = !DILocation(line: 465, column: 27, scope: !150)
!3574 = !DILocalVariable(name: "__last", arg: 2, scope: !150, file: !81, line: 465, type: !154)
!3575 = !DILocation(line: 465, column: 44, scope: !150)
!3576 = !DILocalVariable(name: "__result", arg: 3, scope: !150, file: !81, line: 465, type: !154)
!3577 = !DILocation(line: 465, column: 60, scope: !150)
!3578 = !DILocalVariable(name: "__alloc", arg: 4, scope: !150, file: !81, line: 466, type: !211)
!3579 = !DILocation(line: 466, column: 21, scope: !150)
!3580 = !DILocation(line: 469, column: 24, scope: !150)
!3581 = !DILocation(line: 469, column: 33, scope: !150)
!3582 = !DILocation(line: 469, column: 41, scope: !150)
!3583 = !DILocation(line: 469, column: 51, scope: !150)
!3584 = !DILocation(line: 469, column: 9, scope: !150)
!3585 = !DILocation(line: 469, column: 2, scope: !150)
!3586 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_max_sizeERKS2_", scope: !151, file: !81, line: 1776, type: !3587, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3591, retainedNodes: !216)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!3506, !3589}
!3589 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!3591 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE11_S_max_sizeERKS2_", scope: !151, file: !81, line: 1776, type: !3587, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3592 = !DILocalVariable(name: "__a", arg: 1, scope: !3586, file: !81, line: 1776, type: !3589)
!3593 = !DILocation(line: 1776, column: 41, scope: !3586)
!3594 = !DILocalVariable(name: "__diffmax", scope: !3586, file: !81, line: 1781, type: !3595)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3596 = !DILocation(line: 1781, column: 15, scope: !3586)
!3597 = !DILocalVariable(name: "__allocmax", scope: !3586, file: !81, line: 1783, type: !3595)
!3598 = !DILocation(line: 1783, column: 15, scope: !3586)
!3599 = !DILocation(line: 1783, column: 52, scope: !3586)
!3600 = !DILocation(line: 1783, column: 28, scope: !3586)
!3601 = !DILocation(line: 1784, column: 9, scope: !3586)
!3602 = !DILocation(line: 1784, column: 2, scope: !3586)
!3603 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv", scope: !156, file: !81, line: 280, type: !3604, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3610, retainedNodes: !216)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!3606, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3610 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI7Vector3IfESaIS1_EE19_M_get_Tp_allocatorEv", scope: !156, file: !81, line: 280, type: !3604, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!3611 = !DILocalVariable(name: "this", arg: 1, scope: !3603, type: !3612, flags: DIFlagArtificial | DIFlagObjectPointer)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3613 = !DILocation(line: 0, scope: !3603)
!3614 = !DILocation(line: 281, column: 22, scope: !3603)
!3615 = !DILocation(line: 281, column: 9, scope: !3603)
!3616 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE8max_sizeERKS2_", scope: !163, file: !164, line: 547, type: !183, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !182, retainedNodes: !216)
!3617 = !DILocalVariable(name: "__a", arg: 1, scope: !3616, file: !164, line: 547, type: !186)
!3618 = !DILocation(line: 547, column: 38, scope: !3616)
!3619 = !DILocation(line: 550, column: 9, scope: !3616)
!3620 = !DILocation(line: 550, column: 13, scope: !3616)
!3621 = !DILocation(line: 550, column: 2, scope: !3616)
!3622 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !2, file: !2853, line: 230, type: !3623, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3627, retainedNodes: !216)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!3625, !3625, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3627 = !{!3628}
!3628 = !DITemplateTypeParameter(name: "_Tp", type: !84)
!3629 = !DILocalVariable(name: "__a", arg: 1, scope: !3622, file: !2853, line: 230, type: !3625)
!3630 = !DILocation(line: 230, column: 20, scope: !3622)
!3631 = !DILocalVariable(name: "__b", arg: 2, scope: !3622, file: !2853, line: 230, type: !3625)
!3632 = !DILocation(line: 230, column: 36, scope: !3622)
!3633 = !DILocation(line: 235, column: 11, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3622, file: !2853, line: 235, column: 11)
!3635 = !DILocation(line: 235, column: 17, scope: !3634)
!3636 = !DILocation(line: 235, column: 15, scope: !3634)
!3637 = !DILocation(line: 235, column: 11, scope: !3622)
!3638 = !DILocation(line: 236, column: 9, scope: !3634)
!3639 = !DILocation(line: 236, column: 2, scope: !3634)
!3640 = !DILocation(line: 237, column: 14, scope: !3622)
!3641 = !DILocation(line: 237, column: 7, scope: !3622)
!3642 = !DILocation(line: 238, column: 5, scope: !3622)
!3643 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE8max_sizeEv", scope: !3645, file: !3644, line: 154, type: !3646, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3651, retainedNodes: !216)
!3644 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!3645 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<Vector3<float> >", scope: !160, file: !3644, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorI7Vector3IfEEE")
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !3644, line: 59, baseType: !82, flags: DIFlagPublic)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3651 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE8max_sizeEv", scope: !3645, file: !3644, line: 154, type: !3646, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3652 = !DILocalVariable(name: "this", arg: 1, scope: !3643, type: !3653, flags: DIFlagArtificial | DIFlagObjectPointer)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3654 = !DILocation(line: 0, scope: !3643)
!3655 = !DILocation(line: 155, column: 16, scope: !3643)
!3656 = !DILocation(line: 155, column: 9, scope: !3643)
!3657 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv", scope: !3645, file: !3644, line: 197, type: !3646, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3658, retainedNodes: !216)
!3658 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI7Vector3IfEE11_M_max_sizeEv", scope: !3645, file: !3644, line: 197, type: !3646, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!3659 = !DILocalVariable(name: "this", arg: 1, scope: !3657, type: !3653, flags: DIFlagArtificial | DIFlagObjectPointer)
!3660 = !DILocation(line: 0, scope: !3657)
!3661 = !DILocation(line: 200, column: 2, scope: !3657)
!3662 = distinct !DISubprogram(name: "__uninitialized_default_n<Vector3<float> *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIP7Vector3IfEmET_S3_T0_", scope: !2, file: !3476, line: 630, type: !3663, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3665, retainedNodes: !216)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!88, !88, !84}
!3665 = !{!3480, !3481}
!3666 = !DILocalVariable(name: "__first", arg: 1, scope: !3662, file: !3476, line: 630, type: !88)
!3667 = !DILocation(line: 630, column: 48, scope: !3662)
!3668 = !DILocalVariable(name: "__n", arg: 2, scope: !3662, file: !3476, line: 630, type: !84)
!3669 = !DILocation(line: 630, column: 63, scope: !3662)
!3670 = !DILocalVariable(name: "__can_fill", scope: !3662, file: !3476, line: 635, type: !226)
!3671 = !DILocation(line: 635, column: 22, scope: !3662)
!3672 = !DILocation(line: 640, column: 21, scope: !3662)
!3673 = !DILocation(line: 640, column: 30, scope: !3662)
!3674 = !DILocation(line: 638, column: 14, scope: !3662)
!3675 = !DILocation(line: 638, column: 7, scope: !3662)
!3676 = distinct !DISubprogram(name: "__uninit_default_n<Vector3<float> *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7Vector3IfEmEET_S5_T0_", scope: !3677, file: !3476, line: 573, type: !3663, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3665, declaration: !3680, retainedNodes: !216)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<false>", scope: !2, file: !3476, line: 569, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !3678, identifier: "_ZTSSt27__uninitialized_default_n_1ILb0EE")
!3678 = !{!3679}
!3679 = !DITemplateValueParameter(name: "_TrivialValueType", type: !148, value: i8 0)
!3680 = !DISubprogram(name: "__uninit_default_n<Vector3<float> *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7Vector3IfEmEET_S5_T0_", scope: !3677, file: !3476, line: 573, type: !3663, scopeLine: 573, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3665)
!3681 = !DILocalVariable(name: "__first", arg: 1, scope: !3676, file: !3476, line: 573, type: !88)
!3682 = !DILocation(line: 573, column: 45, scope: !3676)
!3683 = !DILocalVariable(name: "__n", arg: 2, scope: !3676, file: !3476, line: 573, type: !84)
!3684 = !DILocation(line: 573, column: 60, scope: !3676)
!3685 = !DILocalVariable(name: "__cur", scope: !3676, file: !3476, line: 575, type: !88)
!3686 = !DILocation(line: 575, column: 21, scope: !3676)
!3687 = !DILocation(line: 575, column: 29, scope: !3676)
!3688 = !DILocation(line: 578, column: 8, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3676, file: !3476, line: 577, column: 6)
!3690 = !DILocation(line: 578, column: 15, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3476, line: 578, column: 8)
!3692 = distinct !DILexicalBlock(scope: !3689, file: !3476, line: 578, column: 8)
!3693 = !DILocation(line: 578, column: 19, scope: !3691)
!3694 = !DILocation(line: 578, column: 8, scope: !3692)
!3695 = !DILocation(line: 579, column: 37, scope: !3691)
!3696 = !DILocation(line: 579, column: 3, scope: !3691)
!3697 = !DILocation(line: 578, column: 24, scope: !3691)
!3698 = !DILocation(line: 578, column: 38, scope: !3691)
!3699 = !DILocation(line: 578, column: 8, scope: !3691)
!3700 = distinct !{!3700, !3694, !3701, !2203}
!3701 = !DILocation(line: 579, column: 43, scope: !3692)
!3702 = !DILocation(line: 587, column: 2, scope: !3691)
!3703 = !DILocation(line: 581, column: 6, scope: !3689)
!3704 = !DILocation(line: 584, column: 22, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3676, file: !3476, line: 583, column: 6)
!3706 = !DILocation(line: 584, column: 31, scope: !3705)
!3707 = !DILocation(line: 584, column: 8, scope: !3705)
!3708 = !DILocation(line: 585, column: 8, scope: !3705)
!3709 = !DILocation(line: 580, column: 15, scope: !3689)
!3710 = !DILocation(line: 580, column: 8, scope: !3689)
!3711 = !DILocation(line: 587, column: 2, scope: !3705)
!3712 = !DILocation(line: 586, column: 6, scope: !3705)
!3713 = distinct !DISubprogram(name: "_Construct<Vector3<float> >", linkageName: "_ZSt10_ConstructI7Vector3IfEJEEvPT_DpOT0_", scope: !2, file: !3714, line: 109, type: !3715, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3717, retainedNodes: !216)
!3714 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !88}
!3717 = !{!218, !3718}
!3718 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !216)
!3719 = !DILocalVariable(name: "__p", arg: 1, scope: !3713, file: !3714, line: 109, type: !88)
!3720 = !DILocation(line: 109, column: 21, scope: !3713)
!3721 = !DILocation(line: 119, column: 20, scope: !3713)
!3722 = !DILocation(line: 119, column: 25, scope: !3713)
!3723 = !DILocation(line: 120, column: 5, scope: !3713)
!3724 = distinct !DISubprogram(name: "_Destroy<Vector3<float> *>", linkageName: "_ZSt8_DestroyIP7Vector3IfEEvT_S3_", scope: !2, file: !3714, line: 182, type: !3725, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3727, retainedNodes: !216)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !88, !88}
!3727 = !{!3480}
!3728 = !DILocalVariable(name: "__first", arg: 1, scope: !3724, file: !3714, line: 182, type: !88)
!3729 = !DILocation(line: 182, column: 31, scope: !3724)
!3730 = !DILocalVariable(name: "__last", arg: 2, scope: !3724, file: !3714, line: 182, type: !88)
!3731 = !DILocation(line: 182, column: 57, scope: !3724)
!3732 = !DILocation(line: 196, column: 12, scope: !3724)
!3733 = !DILocation(line: 196, column: 21, scope: !3724)
!3734 = !DILocation(line: 195, column: 7, scope: !3724)
!3735 = !DILocation(line: 197, column: 5, scope: !3724)
!3736 = distinct !DISubprogram(name: "__destroy<Vector3<float> *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP7Vector3IfEEEvT_S5_", scope: !3737, file: !3714, line: 160, type: !3725, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3727, declaration: !3740, retainedNodes: !216)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<false>", scope: !2, file: !3714, line: 156, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !3738, identifier: "_ZTSSt12_Destroy_auxILb0EE")
!3738 = !{!3739}
!3739 = !DITemplateValueParameter(type: !148, value: i8 0)
!3740 = !DISubprogram(name: "__destroy<Vector3<float> *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIP7Vector3IfEEEvT_S5_", scope: !3737, file: !3714, line: 160, type: !3725, scopeLine: 160, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3727)
!3741 = !DILocalVariable(name: "__first", arg: 1, scope: !3736, file: !3714, line: 160, type: !88)
!3742 = !DILocation(line: 160, column: 29, scope: !3736)
!3743 = !DILocalVariable(name: "__last", arg: 2, scope: !3736, file: !3714, line: 160, type: !88)
!3744 = !DILocation(line: 160, column: 55, scope: !3736)
!3745 = !DILocation(line: 162, column: 4, scope: !3736)
!3746 = !DILocation(line: 162, column: 11, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !3714, line: 162, column: 4)
!3748 = distinct !DILexicalBlock(scope: !3736, file: !3714, line: 162, column: 4)
!3749 = !DILocation(line: 162, column: 22, scope: !3747)
!3750 = !DILocation(line: 162, column: 19, scope: !3747)
!3751 = !DILocation(line: 162, column: 4, scope: !3748)
!3752 = !DILocation(line: 163, column: 38, scope: !3747)
!3753 = !DILocation(line: 163, column: 6, scope: !3747)
!3754 = !DILocation(line: 162, column: 30, scope: !3747)
!3755 = !DILocation(line: 162, column: 4, scope: !3747)
!3756 = distinct !{!3756, !3751, !3757, !2203}
!3757 = !DILocation(line: 163, column: 46, scope: !3748)
!3758 = !DILocation(line: 164, column: 2, scope: !3736)
!3759 = distinct !DISubprogram(name: "_Destroy<Vector3<float> >", linkageName: "_ZSt8_DestroyI7Vector3IfEEvPT_", scope: !2, file: !3714, line: 146, type: !3715, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !217, retainedNodes: !216)
!3760 = !DILocalVariable(name: "__pointer", arg: 1, scope: !3759, file: !3714, line: 146, type: !88)
!3761 = !DILocation(line: 146, column: 19, scope: !3759)
!3762 = !DILocation(line: 151, column: 7, scope: !3759)
!3763 = !DILocation(line: 151, column: 19, scope: !3759)
!3764 = !DILocation(line: 153, column: 5, scope: !3759)
!3765 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !2, file: !2853, line: 254, type: !3623, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3627, retainedNodes: !216)
!3766 = !DILocalVariable(name: "__a", arg: 1, scope: !3765, file: !2853, line: 254, type: !3625)
!3767 = !DILocation(line: 254, column: 20, scope: !3765)
!3768 = !DILocalVariable(name: "__b", arg: 2, scope: !3765, file: !2853, line: 254, type: !3625)
!3769 = !DILocation(line: 254, column: 36, scope: !3765)
!3770 = !DILocation(line: 259, column: 11, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3765, file: !2853, line: 259, column: 11)
!3772 = !DILocation(line: 259, column: 17, scope: !3771)
!3773 = !DILocation(line: 259, column: 15, scope: !3771)
!3774 = !DILocation(line: 259, column: 11, scope: !3765)
!3775 = !DILocation(line: 260, column: 9, scope: !3771)
!3776 = !DILocation(line: 260, column: 2, scope: !3771)
!3777 = !DILocation(line: 261, column: 14, scope: !3765)
!3778 = !DILocation(line: 261, column: 7, scope: !3765)
!3779 = !DILocation(line: 262, column: 5, scope: !3765)
!3780 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE8allocateERS2_m", scope: !163, file: !164, line: 463, type: !167, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !166, retainedNodes: !216)
!3781 = !DILocalVariable(name: "__a", arg: 1, scope: !3780, file: !164, line: 463, type: !170)
!3782 = !DILocation(line: 463, column: 32, scope: !3780)
!3783 = !DILocalVariable(name: "__n", arg: 2, scope: !3780, file: !164, line: 463, type: !174)
!3784 = !DILocation(line: 463, column: 47, scope: !3780)
!3785 = !DILocation(line: 464, column: 16, scope: !3780)
!3786 = !DILocation(line: 464, column: 29, scope: !3780)
!3787 = !DILocation(line: 464, column: 20, scope: !3780)
!3788 = !DILocation(line: 464, column: 9, scope: !3780)
!3789 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE8allocateEmPKv", scope: !3645, file: !3644, line: 103, type: !3790, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3793, retainedNodes: !216)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!88, !3792, !3648, !86}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3793 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE8allocateEmPKv", scope: !3645, file: !3644, line: 103, type: !3790, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3794 = !DILocalVariable(name: "this", arg: 1, scope: !3789, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3796 = !DILocation(line: 0, scope: !3789)
!3797 = !DILocalVariable(name: "__n", arg: 2, scope: !3789, file: !3644, line: 103, type: !3648)
!3798 = !DILocation(line: 103, column: 26, scope: !3789)
!3799 = !DILocalVariable(arg: 3, scope: !3789, file: !3644, line: 103, type: !86)
!3800 = !DILocation(line: 103, column: 43, scope: !3789)
!3801 = !DILocation(line: 111, column: 23, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3789, file: !3644, line: 111, column: 6)
!3803 = !DILocation(line: 111, column: 35, scope: !3802)
!3804 = !DILocation(line: 111, column: 27, scope: !3802)
!3805 = !DILocation(line: 111, column: 6, scope: !3789)
!3806 = !DILocation(line: 115, column: 10, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !3644, line: 115, column: 10)
!3808 = distinct !DILexicalBlock(scope: !3802, file: !3644, line: 112, column: 4)
!3809 = !DILocation(line: 115, column: 14, scope: !3807)
!3810 = !DILocation(line: 115, column: 10, scope: !3808)
!3811 = !DILocation(line: 116, column: 8, scope: !3807)
!3812 = !DILocation(line: 117, column: 6, scope: !3808)
!3813 = !DILocation(line: 127, column: 42, scope: !3789)
!3814 = !DILocation(line: 127, column: 46, scope: !3789)
!3815 = !DILocation(line: 127, column: 27, scope: !3789)
!3816 = !DILocation(line: 127, column: 2, scope: !3789)
!3817 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE10deallocateERS2_PS1_m", scope: !163, file: !164, line: 495, type: !180, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !179, retainedNodes: !216)
!3818 = !DILocalVariable(name: "__a", arg: 1, scope: !3817, file: !164, line: 495, type: !170)
!3819 = !DILocation(line: 495, column: 34, scope: !3817)
!3820 = !DILocalVariable(name: "__p", arg: 2, scope: !3817, file: !164, line: 495, type: !169)
!3821 = !DILocation(line: 495, column: 47, scope: !3817)
!3822 = !DILocalVariable(name: "__n", arg: 3, scope: !3817, file: !164, line: 495, type: !174)
!3823 = !DILocation(line: 495, column: 62, scope: !3817)
!3824 = !DILocation(line: 496, column: 9, scope: !3817)
!3825 = !DILocation(line: 496, column: 24, scope: !3817)
!3826 = !DILocation(line: 496, column: 29, scope: !3817)
!3827 = !DILocation(line: 496, column: 13, scope: !3817)
!3828 = !DILocation(line: 496, column: 35, scope: !3817)
!3829 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE10deallocateEPS2_m", scope: !3645, file: !3644, line: 132, type: !3830, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3832, retainedNodes: !216)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3792, !88, !3648}
!3832 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE10deallocateEPS2_m", scope: !3645, file: !3644, line: 132, type: !3830, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3833 = !DILocalVariable(name: "this", arg: 1, scope: !3829, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocalVariable(name: "__p", arg: 2, scope: !3829, file: !3644, line: 132, type: !88)
!3836 = !DILocation(line: 132, column: 23, scope: !3829)
!3837 = !DILocalVariable(name: "__t", arg: 3, scope: !3829, file: !3644, line: 132, type: !3648)
!3838 = !DILocation(line: 132, column: 38, scope: !3829)
!3839 = !DILocation(line: 145, column: 20, scope: !3829)
!3840 = !DILocation(line: 145, column: 2, scope: !3829)
!3841 = !DILocation(line: 150, column: 7, scope: !3829)
!3842 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE", scope: !151, file: !81, line: 453, type: !3843, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3846, retainedNodes: !216)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!154, !154, !154, !154, !211, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !2, file: !222, line: 83, baseType: !223)
!3846 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI7Vector3IfESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE", scope: !151, file: !81, line: 453, type: !3843, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3847 = !DILocalVariable(name: "__first", arg: 1, scope: !3842, file: !81, line: 453, type: !154)
!3848 = !DILocation(line: 453, column: 30, scope: !3842)
!3849 = !DILocalVariable(name: "__last", arg: 2, scope: !3842, file: !81, line: 453, type: !154)
!3850 = !DILocation(line: 453, column: 47, scope: !3842)
!3851 = !DILocalVariable(name: "__result", arg: 3, scope: !3842, file: !81, line: 453, type: !154)
!3852 = !DILocation(line: 453, column: 63, scope: !3842)
!3853 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3842, file: !81, line: 454, type: !211)
!3854 = !DILocation(line: 454, column: 24, scope: !3842)
!3855 = !DILocalVariable(arg: 5, scope: !3842, file: !81, line: 454, type: !3845)
!3856 = !DILocation(line: 454, column: 42, scope: !3842)
!3857 = !DILocation(line: 456, column: 27, scope: !3842)
!3858 = !DILocation(line: 456, column: 36, scope: !3842)
!3859 = !DILocation(line: 456, column: 44, scope: !3842)
!3860 = !DILocation(line: 456, column: 54, scope: !3842)
!3861 = !DILocation(line: 456, column: 9, scope: !3842)
!3862 = !DILocation(line: 456, column: 2, scope: !3842)
!3863 = distinct !DISubprogram(name: "__relocate_a<Vector3<float> *, Vector3<float> *, std::allocator<Vector3<float> > >", linkageName: "_ZSt12__relocate_aIP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_", scope: !2, file: !3476, line: 1040, type: !3864, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3866, retainedNodes: !216)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!88, !88, !88, !88, !201}
!3866 = !{!3867, !3480, !3868}
!3867 = !DITemplateTypeParameter(name: "_InputIterator", type: !88)
!3868 = !DITemplateTypeParameter(name: "_Allocator", type: !172)
!3869 = !DILocalVariable(name: "__first", arg: 1, scope: !3863, file: !3476, line: 1040, type: !88)
!3870 = !DILocation(line: 1040, column: 33, scope: !3863)
!3871 = !DILocalVariable(name: "__last", arg: 2, scope: !3863, file: !3476, line: 1040, type: !88)
!3872 = !DILocation(line: 1040, column: 57, scope: !3863)
!3873 = !DILocalVariable(name: "__result", arg: 3, scope: !3863, file: !3476, line: 1041, type: !88)
!3874 = !DILocation(line: 1041, column: 21, scope: !3863)
!3875 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3863, file: !3476, line: 1041, type: !201)
!3876 = !DILocation(line: 1041, column: 43, scope: !3863)
!3877 = !DILocation(line: 1046, column: 47, scope: !3863)
!3878 = !DILocation(line: 1046, column: 29, scope: !3863)
!3879 = !DILocation(line: 1047, column: 26, scope: !3863)
!3880 = !DILocation(line: 1047, column: 8, scope: !3863)
!3881 = !DILocation(line: 1048, column: 26, scope: !3863)
!3882 = !DILocation(line: 1048, column: 8, scope: !3863)
!3883 = !DILocation(line: 1048, column: 37, scope: !3863)
!3884 = !DILocation(line: 1046, column: 14, scope: !3863)
!3885 = !DILocation(line: 1046, column: 7, scope: !3863)
!3886 = distinct !DISubprogram(name: "__relocate_a_1<Vector3<float> *, Vector3<float> *, std::allocator<Vector3<float> > >", linkageName: "_ZSt14__relocate_a_1IP7Vector3IfES2_SaIS1_EET0_T_S5_S4_RT1_", scope: !2, file: !3476, line: 1018, type: !3864, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3866, retainedNodes: !216)
!3887 = !DILocalVariable(name: "__first", arg: 1, scope: !3886, file: !3476, line: 1018, type: !88)
!3888 = !DILocation(line: 1018, column: 35, scope: !3886)
!3889 = !DILocalVariable(name: "__last", arg: 2, scope: !3886, file: !3476, line: 1018, type: !88)
!3890 = !DILocation(line: 1018, column: 59, scope: !3886)
!3891 = !DILocalVariable(name: "__result", arg: 3, scope: !3886, file: !3476, line: 1019, type: !88)
!3892 = !DILocation(line: 1019, column: 23, scope: !3886)
!3893 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3886, file: !3476, line: 1019, type: !201)
!3894 = !DILocation(line: 1019, column: 45, scope: !3886)
!3895 = !DILocalVariable(name: "__cur", scope: !3886, file: !3476, line: 1030, type: !88)
!3896 = !DILocation(line: 1030, column: 24, scope: !3886)
!3897 = !DILocation(line: 1030, column: 32, scope: !3886)
!3898 = !DILocation(line: 1031, column: 7, scope: !3886)
!3899 = !DILocation(line: 1031, column: 14, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3476, line: 1031, column: 7)
!3901 = distinct !DILexicalBlock(scope: !3886, file: !3476, line: 1031, column: 7)
!3902 = !DILocation(line: 1031, column: 25, scope: !3900)
!3903 = !DILocation(line: 1031, column: 22, scope: !3900)
!3904 = !DILocation(line: 1031, column: 7, scope: !3901)
!3905 = !DILocation(line: 1032, column: 45, scope: !3900)
!3906 = !DILocation(line: 1033, column: 24, scope: !3900)
!3907 = !DILocation(line: 1033, column: 34, scope: !3900)
!3908 = !DILocation(line: 1032, column: 2, scope: !3900)
!3909 = !DILocation(line: 1031, column: 33, scope: !3900)
!3910 = !DILocation(line: 1031, column: 50, scope: !3900)
!3911 = !DILocation(line: 1031, column: 7, scope: !3900)
!3912 = distinct !{!3912, !3904, !3913, !2203}
!3913 = !DILocation(line: 1033, column: 41, scope: !3901)
!3914 = !DILocation(line: 1034, column: 14, scope: !3886)
!3915 = !DILocation(line: 1034, column: 7, scope: !3886)
!3916 = distinct !DISubprogram(name: "__niter_base<Vector3<float> *>", linkageName: "_ZSt12__niter_baseIP7Vector3IfEET_S3_", scope: !2, file: !2853, line: 313, type: !3917, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3919, retainedNodes: !216)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!88, !88}
!3919 = !{!3920}
!3920 = !DITemplateTypeParameter(name: "_Iterator", type: !88)
!3921 = !DILocalVariable(name: "__it", arg: 1, scope: !3916, file: !2853, line: 313, type: !88)
!3922 = !DILocation(line: 313, column: 28, scope: !3916)
!3923 = !DILocation(line: 315, column: 14, scope: !3916)
!3924 = !DILocation(line: 315, column: 7, scope: !3916)
!3925 = distinct !DISubprogram(name: "__relocate_object_a<Vector3<float>, Vector3<float>, std::allocator<Vector3<float> > >", linkageName: "_ZSt19__relocate_object_aI7Vector3IfES1_SaIS1_EEvPT_PT0_RT1_", scope: !2, file: !3476, line: 986, type: !3926, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3929, retainedNodes: !216)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !3928, !3928, !201}
!3928 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3929 = !{!218, !3930, !3868}
!3930 = !DITemplateTypeParameter(name: "_Up", type: !89)
!3931 = !DILocalVariable(name: "__dest", arg: 1, scope: !3925, file: !3476, line: 986, type: !3928)
!3932 = !DILocation(line: 986, column: 41, scope: !3925)
!3933 = !DILocalVariable(name: "__orig", arg: 2, scope: !3925, file: !3476, line: 986, type: !3928)
!3934 = !DILocation(line: 986, column: 65, scope: !3925)
!3935 = !DILocalVariable(name: "__alloc", arg: 3, scope: !3925, file: !3476, line: 987, type: !201)
!3936 = !DILocation(line: 987, column: 16, scope: !3925)
!3937 = !DILocation(line: 994, column: 27, scope: !3925)
!3938 = !DILocation(line: 994, column: 36, scope: !3925)
!3939 = !DILocation(line: 994, column: 55, scope: !3925)
!3940 = !DILocation(line: 994, column: 7, scope: !3925)
!3941 = !DILocation(line: 995, column: 25, scope: !3925)
!3942 = !DILocation(line: 995, column: 52, scope: !3925)
!3943 = !DILocation(line: 995, column: 7, scope: !3925)
!3944 = !DILocation(line: 996, column: 5, scope: !3925)
!3945 = distinct !DISubprogram(name: "construct<Vector3<float>, Vector3<float> >", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_", scope: !163, file: !164, line: 511, type: !3946, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3950, declaration: !3949, retainedNodes: !216)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !170, !88, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !89, size: 64)
!3949 = !DISubprogram(name: "construct<Vector3<float>, Vector3<float> >", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_", scope: !163, file: !164, line: 511, type: !3946, scopeLine: 511, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3950)
!3950 = !{!3930, !3951}
!3951 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !3952)
!3952 = !{!210}
!3953 = !DILocalVariable(name: "__a", arg: 1, scope: !3945, file: !164, line: 511, type: !170)
!3954 = !DILocation(line: 511, column: 28, scope: !3945)
!3955 = !DILocalVariable(name: "__p", arg: 2, scope: !3945, file: !164, line: 511, type: !88)
!3956 = !DILocation(line: 511, column: 66, scope: !3945)
!3957 = !DILocalVariable(name: "__args", arg: 3, scope: !3945, file: !164, line: 512, type: !3948)
!3958 = !DILocation(line: 512, column: 16, scope: !3945)
!3959 = !DILocation(line: 516, column: 4, scope: !3945)
!3960 = !DILocation(line: 516, column: 18, scope: !3945)
!3961 = !DILocation(line: 516, column: 43, scope: !3945)
!3962 = !DILocation(line: 516, column: 8, scope: !3945)
!3963 = !DILocation(line: 520, column: 2, scope: !3945)
!3964 = distinct !DISubprogram(name: "destroy<Vector3<float> >", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE7destroyIS1_EEvRS2_PT_", scope: !163, file: !164, line: 531, type: !3965, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3968, declaration: !3967, retainedNodes: !216)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !170, !88}
!3967 = !DISubprogram(name: "destroy<Vector3<float> >", linkageName: "_ZNSt16allocator_traitsISaI7Vector3IfEEE7destroyIS1_EEvRS2_PT_", scope: !163, file: !164, line: 531, type: !3965, scopeLine: 531, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3968)
!3968 = !{!3930}
!3969 = !DILocalVariable(name: "__a", arg: 1, scope: !3964, file: !164, line: 531, type: !170)
!3970 = !DILocation(line: 531, column: 26, scope: !3964)
!3971 = !DILocalVariable(name: "__p", arg: 2, scope: !3964, file: !164, line: 531, type: !88)
!3972 = !DILocation(line: 531, column: 64, scope: !3964)
!3973 = !DILocation(line: 535, column: 4, scope: !3964)
!3974 = !DILocation(line: 535, column: 16, scope: !3964)
!3975 = !DILocation(line: 535, column: 8, scope: !3964)
!3976 = !DILocation(line: 539, column: 2, scope: !3964)
!3977 = distinct !DISubprogram(name: "construct<Vector3<float>, Vector3<float> >", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE9constructIS2_JS2_EEEvPT_DpOT0_", scope: !3645, file: !3644, line: 160, type: !3978, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3950, declaration: !3980, retainedNodes: !216)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !3792, !88, !3948}
!3980 = !DISubprogram(name: "construct<Vector3<float>, Vector3<float> >", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE9constructIS2_JS2_EEEvPT_DpOT0_", scope: !3645, file: !3644, line: 160, type: !3978, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3950)
!3981 = !DILocalVariable(name: "this", arg: 1, scope: !3977, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3982 = !DILocation(line: 0, scope: !3977)
!3983 = !DILocalVariable(name: "__p", arg: 2, scope: !3977, file: !3644, line: 160, type: !88)
!3984 = !DILocation(line: 160, column: 17, scope: !3977)
!3985 = !DILocalVariable(name: "__args", arg: 3, scope: !3977, file: !3644, line: 160, type: !3948)
!3986 = !DILocation(line: 160, column: 33, scope: !3977)
!3987 = !DILocation(line: 162, column: 18, scope: !3977)
!3988 = !DILocation(line: 162, column: 47, scope: !3977)
!3989 = !DILocation(line: 162, column: 23, scope: !3977)
!3990 = !DILocation(line: 162, column: 60, scope: !3977)
!3991 = distinct !DISubprogram(name: "destroy<Vector3<float> >", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE7destroyIS2_EEvPT_", scope: !3645, file: !3644, line: 166, type: !3992, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3968, declaration: !3994, retainedNodes: !216)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !3792, !88}
!3994 = !DISubprogram(name: "destroy<Vector3<float> >", linkageName: "_ZN9__gnu_cxx13new_allocatorI7Vector3IfEE7destroyIS2_EEvPT_", scope: !3645, file: !3644, line: 166, type: !3992, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3968)
!3995 = !DILocalVariable(name: "this", arg: 1, scope: !3991, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3996 = !DILocation(line: 0, scope: !3991)
!3997 = !DILocalVariable(name: "__p", arg: 2, scope: !3991, file: !3644, line: 166, type: !88)
!3998 = !DILocation(line: 166, column: 15, scope: !3991)
!3999 = !DILocation(line: 168, column: 4, scope: !3991)
!4000 = !DILocation(line: 168, column: 10, scope: !3991)
!4001 = !DILocation(line: 168, column: 17, scope: !3991)
!4002 = distinct !DISubprogram(name: "_Destroy<Vector3<float> *, Vector3<float> >", linkageName: "_ZSt8_DestroyIP7Vector3IfES1_EvT_S3_RSaIT0_E", scope: !2, file: !164, line: 845, type: !4003, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4005, retainedNodes: !216)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !88, !88, !201}
!4005 = !{!3480, !218}
!4006 = !DILocalVariable(name: "__first", arg: 1, scope: !4002, file: !164, line: 845, type: !88)
!4007 = !DILocation(line: 845, column: 31, scope: !4002)
!4008 = !DILocalVariable(name: "__last", arg: 2, scope: !4002, file: !164, line: 845, type: !88)
!4009 = !DILocation(line: 845, column: 57, scope: !4002)
!4010 = !DILocalVariable(arg: 3, scope: !4002, file: !164, line: 846, type: !201)
!4011 = !DILocation(line: 846, column: 22, scope: !4002)
!4012 = !DILocation(line: 848, column: 16, scope: !4002)
!4013 = !DILocation(line: 848, column: 25, scope: !4002)
!4014 = !DILocation(line: 848, column: 7, scope: !4002)
!4015 = !DILocation(line: 849, column: 5, scope: !4002)
!4016 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIfSaIfEE4sizeEv", scope: !238, file: !81, line: 918, type: !4017, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4021, retainedNodes: !216)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!80, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!4021 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIfSaIfEE4sizeEv", scope: !238, file: !81, line: 918, type: !4017, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4022 = !DILocalVariable(name: "this", arg: 1, scope: !4016, type: !4023, flags: DIFlagArtificial | DIFlagObjectPointer)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4024 = !DILocation(line: 0, scope: !4016)
!4025 = !DILocation(line: 919, column: 32, scope: !4016)
!4026 = !DILocation(line: 919, column: 40, scope: !4016)
!4027 = !DILocation(line: 919, column: 58, scope: !4016)
!4028 = !DILocation(line: 919, column: 66, scope: !4016)
!4029 = !DILocation(line: 919, column: 50, scope: !4016)
!4030 = !DILocation(line: 919, column: 9, scope: !4016)
!4031 = distinct !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIfSaIfEE17_M_default_appendEm", scope: !238, file: !323, line: 612, type: !3036, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4032, retainedNodes: !216)
!4032 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIfSaIfEE17_M_default_appendEm", scope: !238, file: !81, line: 1689, type: !3036, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!4033 = !DILocalVariable(name: "this", arg: 1, scope: !4031, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!4034 = !DILocation(line: 0, scope: !4031)
!4035 = !DILocalVariable(name: "__n", arg: 2, scope: !4031, file: !81, line: 1689, type: !80)
!4036 = !DILocation(line: 1689, column: 35, scope: !4031)
!4037 = !DILocation(line: 614, column: 11, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4031, file: !323, line: 614, column: 11)
!4039 = !DILocation(line: 614, column: 15, scope: !4038)
!4040 = !DILocation(line: 614, column: 11, scope: !4031)
!4041 = !DILocalVariable(name: "__size", scope: !4042, file: !323, line: 616, type: !3341)
!4042 = distinct !DILexicalBlock(scope: !4038, file: !323, line: 615, column: 2)
!4043 = !DILocation(line: 616, column: 20, scope: !4042)
!4044 = !DILocation(line: 616, column: 29, scope: !4042)
!4045 = !DILocalVariable(name: "__navail", scope: !4042, file: !323, line: 617, type: !80)
!4046 = !DILocation(line: 617, column: 14, scope: !4042)
!4047 = !DILocation(line: 617, column: 41, scope: !4042)
!4048 = !DILocation(line: 617, column: 49, scope: !4042)
!4049 = !DILocation(line: 618, column: 15, scope: !4042)
!4050 = !DILocation(line: 618, column: 23, scope: !4042)
!4051 = !DILocation(line: 618, column: 7, scope: !4042)
!4052 = !DILocation(line: 620, column: 8, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4042, file: !323, line: 620, column: 8)
!4054 = !DILocation(line: 620, column: 17, scope: !4053)
!4055 = !DILocation(line: 620, column: 15, scope: !4053)
!4056 = !DILocation(line: 620, column: 28, scope: !4053)
!4057 = !DILocation(line: 620, column: 31, scope: !4053)
!4058 = !DILocation(line: 620, column: 42, scope: !4053)
!4059 = !DILocation(line: 620, column: 55, scope: !4053)
!4060 = !DILocation(line: 620, column: 53, scope: !4053)
!4061 = !DILocation(line: 620, column: 40, scope: !4053)
!4062 = !DILocation(line: 620, column: 8, scope: !4042)
!4063 = !DILocation(line: 621, column: 6, scope: !4053)
!4064 = !DILocation(line: 623, column: 8, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4042, file: !323, line: 623, column: 8)
!4066 = !DILocation(line: 623, column: 20, scope: !4065)
!4067 = !DILocation(line: 623, column: 17, scope: !4065)
!4068 = !DILocation(line: 623, column: 8, scope: !4042)
!4069 = !DILocation(line: 627, column: 42, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4065, file: !323, line: 624, column: 6)
!4071 = !DILocation(line: 627, column: 50, scope: !4070)
!4072 = !DILocation(line: 628, column: 8, scope: !4070)
!4073 = !DILocation(line: 628, column: 13, scope: !4070)
!4074 = !DILocation(line: 627, column: 3, scope: !4070)
!4075 = !DILocation(line: 626, column: 14, scope: !4070)
!4076 = !DILocation(line: 626, column: 22, scope: !4070)
!4077 = !DILocation(line: 626, column: 32, scope: !4070)
!4078 = !DILocation(line: 630, column: 6, scope: !4070)
!4079 = !DILocalVariable(name: "__len", scope: !4080, file: !323, line: 633, type: !3341)
!4080 = distinct !DILexicalBlock(scope: !4065, file: !323, line: 632, column: 6)
!4081 = !DILocation(line: 633, column: 24, scope: !4080)
!4082 = !DILocation(line: 634, column: 16, scope: !4080)
!4083 = !DILocation(line: 634, column: 3, scope: !4080)
!4084 = !DILocalVariable(name: "__new_start", scope: !4080, file: !323, line: 635, type: !241)
!4085 = !DILocation(line: 635, column: 16, scope: !4080)
!4086 = !DILocation(line: 635, column: 46, scope: !4080)
!4087 = !DILocation(line: 635, column: 34, scope: !4080)
!4088 = !DILocation(line: 640, column: 42, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !323, line: 639, column: 7)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !323, line: 637, column: 3)
!4091 = distinct !DILexicalBlock(scope: !4080, file: !323, line: 636, column: 33)
!4092 = !DILocation(line: 640, column: 56, scope: !4089)
!4093 = !DILocation(line: 640, column: 54, scope: !4089)
!4094 = !DILocation(line: 641, column: 10, scope: !4089)
!4095 = !DILocation(line: 641, column: 15, scope: !4089)
!4096 = !DILocation(line: 640, column: 9, scope: !4089)
!4097 = !DILocation(line: 642, column: 7, scope: !4089)
!4098 = !DILocation(line: 683, column: 5, scope: !4089)
!4099 = !DILocation(line: 645, column: 23, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4090, file: !323, line: 644, column: 7)
!4101 = !DILocation(line: 645, column: 36, scope: !4100)
!4102 = !DILocation(line: 645, column: 9, scope: !4100)
!4103 = !DILocation(line: 646, column: 9, scope: !4100)
!4104 = !DILocation(line: 683, column: 5, scope: !4100)
!4105 = !DILocation(line: 647, column: 7, scope: !4100)
!4106 = !DILocation(line: 648, column: 23, scope: !4090)
!4107 = !DILocation(line: 648, column: 31, scope: !4090)
!4108 = !DILocation(line: 648, column: 47, scope: !4090)
!4109 = !DILocation(line: 648, column: 55, scope: !4090)
!4110 = !DILocation(line: 649, column: 10, scope: !4090)
!4111 = !DILocation(line: 649, column: 23, scope: !4090)
!4112 = !DILocation(line: 648, column: 5, scope: !4090)
!4113 = !DILocation(line: 675, column: 28, scope: !4080)
!4114 = !DILocation(line: 675, column: 36, scope: !4080)
!4115 = !DILocation(line: 676, column: 14, scope: !4080)
!4116 = !DILocation(line: 676, column: 22, scope: !4080)
!4117 = !DILocation(line: 677, column: 16, scope: !4080)
!4118 = !DILocation(line: 677, column: 24, scope: !4080)
!4119 = !DILocation(line: 677, column: 8, scope: !4080)
!4120 = !DILocation(line: 675, column: 8, scope: !4080)
!4121 = !DILocation(line: 678, column: 33, scope: !4080)
!4122 = !DILocation(line: 678, column: 14, scope: !4080)
!4123 = !DILocation(line: 678, column: 22, scope: !4080)
!4124 = !DILocation(line: 678, column: 31, scope: !4080)
!4125 = !DILocation(line: 679, column: 34, scope: !4080)
!4126 = !DILocation(line: 679, column: 48, scope: !4080)
!4127 = !DILocation(line: 679, column: 46, scope: !4080)
!4128 = !DILocation(line: 679, column: 57, scope: !4080)
!4129 = !DILocation(line: 679, column: 55, scope: !4080)
!4130 = !DILocation(line: 679, column: 14, scope: !4080)
!4131 = !DILocation(line: 679, column: 22, scope: !4080)
!4132 = !DILocation(line: 679, column: 32, scope: !4080)
!4133 = !DILocation(line: 680, column: 42, scope: !4080)
!4134 = !DILocation(line: 680, column: 56, scope: !4080)
!4135 = !DILocation(line: 680, column: 54, scope: !4080)
!4136 = !DILocation(line: 680, column: 14, scope: !4080)
!4137 = !DILocation(line: 680, column: 22, scope: !4080)
!4138 = !DILocation(line: 680, column: 40, scope: !4080)
!4139 = !DILocation(line: 682, column: 2, scope: !4042)
!4140 = !DILocation(line: 683, column: 5, scope: !4031)
!4141 = distinct !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf", scope: !238, file: !81, line: 1792, type: !4142, scopeLine: 1793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4144, retainedNodes: !216)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !3038, !241}
!4144 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf", scope: !238, file: !81, line: 1792, type: !4142, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!4145 = !DILocalVariable(name: "this", arg: 1, scope: !4141, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!4146 = !DILocation(line: 0, scope: !4141)
!4147 = !DILocalVariable(name: "__pos", arg: 2, scope: !4141, file: !81, line: 1792, type: !241)
!4148 = !DILocation(line: 1792, column: 31, scope: !4141)
!4149 = !DILocalVariable(name: "__n", scope: !4150, file: !81, line: 1794, type: !80)
!4150 = distinct !DILexicalBlock(scope: !4141, file: !81, line: 1794, column: 16)
!4151 = !DILocation(line: 1794, column: 16, scope: !4150)
!4152 = !DILocation(line: 1794, column: 28, scope: !4150)
!4153 = !DILocation(line: 1794, column: 36, scope: !4150)
!4154 = !DILocation(line: 1794, column: 48, scope: !4150)
!4155 = !DILocation(line: 1794, column: 46, scope: !4150)
!4156 = !DILocation(line: 1794, column: 16, scope: !4141)
!4157 = !DILocation(line: 1796, column: 20, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4150, file: !81, line: 1795, column: 4)
!4159 = !DILocation(line: 1796, column: 33, scope: !4158)
!4160 = !DILocation(line: 1796, column: 41, scope: !4158)
!4161 = !DILocation(line: 1797, column: 6, scope: !4158)
!4162 = !DILocation(line: 1796, column: 6, scope: !4158)
!4163 = !DILocation(line: 1798, column: 32, scope: !4158)
!4164 = !DILocation(line: 1798, column: 12, scope: !4158)
!4165 = !DILocation(line: 1798, column: 20, scope: !4158)
!4166 = !DILocation(line: 1798, column: 30, scope: !4158)
!4167 = !DILocation(line: 1800, column: 4, scope: !4158)
!4168 = !DILocation(line: 1801, column: 7, scope: !4141)
!4169 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIfSaIfEE8max_sizeEv", scope: !238, file: !81, line: 923, type: !4017, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4170, retainedNodes: !216)
!4170 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIfSaIfEE8max_sizeEv", scope: !238, file: !81, line: 923, type: !4017, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4171 = !DILocalVariable(name: "this", arg: 1, scope: !4169, type: !4023, flags: DIFlagArtificial | DIFlagObjectPointer)
!4172 = !DILocation(line: 0, scope: !4169)
!4173 = !DILocation(line: 924, column: 28, scope: !4169)
!4174 = !DILocation(line: 924, column: 16, scope: !4169)
!4175 = !DILocation(line: 924, column: 9, scope: !4169)
!4176 = distinct !DISubprogram(name: "__uninitialized_default_n_a<float *, unsigned long, float>", linkageName: "_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E", scope: !2, file: !3476, line: 702, type: !4177, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4179, retainedNodes: !216)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!105, !105, !84, !282}
!4179 = !{!4180, !3481, !296}
!4180 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !105)
!4181 = !DILocalVariable(name: "__first", arg: 1, scope: !4176, file: !3476, line: 702, type: !105)
!4182 = !DILocation(line: 702, column: 50, scope: !4176)
!4183 = !DILocalVariable(name: "__n", arg: 2, scope: !4176, file: !3476, line: 702, type: !84)
!4184 = !DILocation(line: 702, column: 65, scope: !4176)
!4185 = !DILocalVariable(arg: 3, scope: !4176, file: !3476, line: 703, type: !282)
!4186 = !DILocation(line: 703, column: 20, scope: !4176)
!4187 = !DILocation(line: 704, column: 45, scope: !4176)
!4188 = !DILocation(line: 704, column: 54, scope: !4176)
!4189 = !DILocation(line: 704, column: 14, scope: !4176)
!4190 = !DILocation(line: 704, column: 7, scope: !4176)
!4191 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !243, file: !81, line: 276, type: !4192, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4196, retainedNodes: !216)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !292, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4196 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !243, file: !81, line: 276, type: !4192, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!4197 = !DILocalVariable(name: "this", arg: 1, scope: !4191, type: !4198, flags: DIFlagArtificial | DIFlagObjectPointer)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!4199 = !DILocation(line: 0, scope: !4191)
!4200 = !DILocation(line: 277, column: 22, scope: !4191)
!4201 = !DILocation(line: 277, column: 9, scope: !4191)
!4202 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc", scope: !238, file: !81, line: 1756, type: !4203, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4206, retainedNodes: !216)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!4205, !4019, !80, !402}
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !238, file: !81, line: 424, baseType: !82, flags: DIFlagPublic)
!4206 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc", scope: !238, file: !81, line: 1756, type: !4203, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!4207 = !DILocalVariable(name: "this", arg: 1, scope: !4202, type: !4023, flags: DIFlagArtificial | DIFlagObjectPointer)
!4208 = !DILocation(line: 0, scope: !4202)
!4209 = !DILocalVariable(name: "__n", arg: 2, scope: !4202, file: !81, line: 1756, type: !80)
!4210 = !DILocation(line: 1756, column: 30, scope: !4202)
!4211 = !DILocalVariable(name: "__s", arg: 3, scope: !4202, file: !81, line: 1756, type: !402)
!4212 = !DILocation(line: 1756, column: 47, scope: !4202)
!4213 = !DILocation(line: 1758, column: 6, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4202, file: !81, line: 1758, column: 6)
!4215 = !DILocation(line: 1758, column: 19, scope: !4214)
!4216 = !DILocation(line: 1758, column: 17, scope: !4214)
!4217 = !DILocation(line: 1758, column: 28, scope: !4214)
!4218 = !DILocation(line: 1758, column: 26, scope: !4214)
!4219 = !DILocation(line: 1758, column: 6, scope: !4202)
!4220 = !DILocation(line: 1759, column: 25, scope: !4214)
!4221 = !DILocation(line: 1759, column: 4, scope: !4214)
!4222 = !DILocalVariable(name: "__len", scope: !4202, file: !81, line: 1761, type: !3341)
!4223 = !DILocation(line: 1761, column: 18, scope: !4202)
!4224 = !DILocation(line: 1761, column: 26, scope: !4202)
!4225 = !DILocation(line: 1761, column: 46, scope: !4202)
!4226 = !DILocation(line: 1761, column: 35, scope: !4202)
!4227 = !DILocation(line: 1761, column: 33, scope: !4202)
!4228 = !DILocation(line: 1762, column: 10, scope: !4202)
!4229 = !DILocation(line: 1762, column: 18, scope: !4202)
!4230 = !DILocation(line: 1762, column: 16, scope: !4202)
!4231 = !DILocation(line: 1762, column: 25, scope: !4202)
!4232 = !DILocation(line: 1762, column: 28, scope: !4202)
!4233 = !DILocation(line: 1762, column: 36, scope: !4202)
!4234 = !DILocation(line: 1762, column: 34, scope: !4202)
!4235 = !DILocation(line: 1762, column: 9, scope: !4202)
!4236 = !DILocation(line: 1762, column: 50, scope: !4202)
!4237 = !DILocation(line: 1762, column: 63, scope: !4202)
!4238 = !DILocation(line: 1762, column: 2, scope: !4202)
!4239 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm", scope: !243, file: !81, line: 343, type: !4240, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4242, retainedNodes: !216)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!242, !4195, !82}
!4242 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm", scope: !243, file: !81, line: 343, type: !4240, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!4243 = !DILocalVariable(name: "this", arg: 1, scope: !4239, type: !4198, flags: DIFlagArtificial | DIFlagObjectPointer)
!4244 = !DILocation(line: 0, scope: !4239)
!4245 = !DILocalVariable(name: "__n", arg: 2, scope: !4239, file: !81, line: 343, type: !82)
!4246 = !DILocation(line: 343, column: 26, scope: !4239)
!4247 = !DILocation(line: 346, column: 9, scope: !4239)
!4248 = !DILocation(line: 346, column: 13, scope: !4239)
!4249 = !DILocation(line: 346, column: 34, scope: !4239)
!4250 = !DILocation(line: 346, column: 43, scope: !4239)
!4251 = !DILocation(line: 346, column: 20, scope: !4239)
!4252 = !DILocation(line: 346, column: 2, scope: !4239)
!4253 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm", scope: !243, file: !81, line: 350, type: !4254, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4256, retainedNodes: !216)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4195, !242, !82}
!4256 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm", scope: !243, file: !81, line: 350, type: !4254, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!4257 = !DILocalVariable(name: "this", arg: 1, scope: !4253, type: !4198, flags: DIFlagArtificial | DIFlagObjectPointer)
!4258 = !DILocation(line: 0, scope: !4253)
!4259 = !DILocalVariable(name: "__p", arg: 2, scope: !4253, file: !81, line: 350, type: !242)
!4260 = !DILocation(line: 350, column: 29, scope: !4253)
!4261 = !DILocalVariable(name: "__n", arg: 3, scope: !4253, file: !81, line: 350, type: !82)
!4262 = !DILocation(line: 350, column: 41, scope: !4253)
!4263 = !DILocation(line: 353, column: 6, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4253, file: !81, line: 353, column: 6)
!4265 = !DILocation(line: 353, column: 6, scope: !4253)
!4266 = !DILocation(line: 354, column: 20, scope: !4264)
!4267 = !DILocation(line: 354, column: 29, scope: !4264)
!4268 = !DILocation(line: 354, column: 34, scope: !4264)
!4269 = !DILocation(line: 354, column: 4, scope: !4264)
!4270 = !DILocation(line: 355, column: 7, scope: !4253)
!4271 = !DILocalVariable(name: "__first", arg: 1, scope: !237, file: !81, line: 465, type: !241)
!4272 = !DILocation(line: 465, column: 27, scope: !237)
!4273 = !DILocalVariable(name: "__last", arg: 2, scope: !237, file: !81, line: 465, type: !241)
!4274 = !DILocation(line: 465, column: 44, scope: !237)
!4275 = !DILocalVariable(name: "__result", arg: 3, scope: !237, file: !81, line: 465, type: !241)
!4276 = !DILocation(line: 465, column: 60, scope: !237)
!4277 = !DILocalVariable(name: "__alloc", arg: 4, scope: !237, file: !81, line: 466, type: !290)
!4278 = !DILocation(line: 466, column: 21, scope: !237)
!4279 = !DILocation(line: 469, column: 24, scope: !237)
!4280 = !DILocation(line: 469, column: 33, scope: !237)
!4281 = !DILocation(line: 469, column: 41, scope: !237)
!4282 = !DILocation(line: 469, column: 51, scope: !237)
!4283 = !DILocation(line: 469, column: 9, scope: !237)
!4284 = !DILocation(line: 469, column: 2, scope: !237)
!4285 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_", scope: !238, file: !81, line: 1776, type: !4286, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4290, retainedNodes: !216)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!4205, !4288}
!4288 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!4290 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_", scope: !238, file: !81, line: 1776, type: !4286, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4291 = !DILocalVariable(name: "__a", arg: 1, scope: !4285, file: !81, line: 1776, type: !4288)
!4292 = !DILocation(line: 1776, column: 41, scope: !4285)
!4293 = !DILocalVariable(name: "__diffmax", scope: !4285, file: !81, line: 1781, type: !3595)
!4294 = !DILocation(line: 1781, column: 15, scope: !4285)
!4295 = !DILocalVariable(name: "__allocmax", scope: !4285, file: !81, line: 1783, type: !3595)
!4296 = !DILocation(line: 1783, column: 15, scope: !4285)
!4297 = !DILocation(line: 1783, column: 52, scope: !4285)
!4298 = !DILocation(line: 1783, column: 28, scope: !4285)
!4299 = !DILocation(line: 1784, column: 9, scope: !4285)
!4300 = !DILocation(line: 1784, column: 2, scope: !4285)
!4301 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !243, file: !81, line: 280, type: !4302, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4308, retainedNodes: !216)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4304, !4306}
!4304 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!4308 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !243, file: !81, line: 280, type: !4302, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!4309 = !DILocalVariable(name: "this", arg: 1, scope: !4301, type: !4310, flags: DIFlagArtificial | DIFlagObjectPointer)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4311 = !DILocation(line: 0, scope: !4301)
!4312 = !DILocation(line: 281, column: 22, scope: !4301)
!4313 = !DILocation(line: 281, column: 9, scope: !4301)
!4314 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_", scope: !248, file: !164, line: 547, type: !264, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !263, retainedNodes: !216)
!4315 = !DILocalVariable(name: "__a", arg: 1, scope: !4314, file: !164, line: 547, type: !267)
!4316 = !DILocation(line: 547, column: 38, scope: !4314)
!4317 = !DILocation(line: 550, column: 9, scope: !4314)
!4318 = !DILocation(line: 550, column: 13, scope: !4314)
!4319 = !DILocation(line: 550, column: 2, scope: !4314)
!4320 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv", scope: !4321, file: !3644, line: 154, type: !4322, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4326, retainedNodes: !216)
!4321 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<float>", scope: !160, file: !3644, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorIfEE")
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!3648, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4326 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv", scope: !4321, file: !3644, line: 154, type: !4322, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4327 = !DILocalVariable(name: "this", arg: 1, scope: !4320, type: !4328, flags: DIFlagArtificial | DIFlagObjectPointer)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4329 = !DILocation(line: 0, scope: !4320)
!4330 = !DILocation(line: 155, column: 16, scope: !4320)
!4331 = !DILocation(line: 155, column: 9, scope: !4320)
!4332 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv", scope: !4321, file: !3644, line: 197, type: !4322, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4333, retainedNodes: !216)
!4333 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv", scope: !4321, file: !3644, line: 197, type: !4322, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!4334 = !DILocalVariable(name: "this", arg: 1, scope: !4332, type: !4328, flags: DIFlagArtificial | DIFlagObjectPointer)
!4335 = !DILocation(line: 0, scope: !4332)
!4336 = !DILocation(line: 200, column: 2, scope: !4332)
!4337 = distinct !DISubprogram(name: "__uninitialized_default_n<float *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIPfmET_S1_T0_", scope: !2, file: !3476, line: 630, type: !4338, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4340, retainedNodes: !216)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!105, !105, !84}
!4340 = !{!4180, !3481}
!4341 = !DILocalVariable(name: "__first", arg: 1, scope: !4337, file: !3476, line: 630, type: !105)
!4342 = !DILocation(line: 630, column: 48, scope: !4337)
!4343 = !DILocalVariable(name: "__n", arg: 2, scope: !4337, file: !3476, line: 630, type: !84)
!4344 = !DILocation(line: 630, column: 63, scope: !4337)
!4345 = !DILocalVariable(name: "__can_fill", scope: !4337, file: !3476, line: 635, type: !226)
!4346 = !DILocation(line: 635, column: 22, scope: !4337)
!4347 = !DILocation(line: 640, column: 21, scope: !4337)
!4348 = !DILocation(line: 640, column: 30, scope: !4337)
!4349 = !DILocation(line: 638, column: 14, scope: !4337)
!4350 = !DILocation(line: 638, column: 7, scope: !4337)
!4351 = distinct !DISubprogram(name: "__uninit_default_n<float *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_", scope: !4352, file: !3476, line: 595, type: !4338, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4340, declaration: !4355, retainedNodes: !216)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<true>", scope: !2, file: !3476, line: 591, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !4353, identifier: "_ZTSSt27__uninitialized_default_n_1ILb1EE")
!4353 = !{!4354}
!4354 = !DITemplateValueParameter(name: "_TrivialValueType", type: !148, value: i8 1)
!4355 = !DISubprogram(name: "__uninit_default_n<float *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_", scope: !4352, file: !3476, line: 595, type: !4338, scopeLine: 595, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4340)
!4356 = !DILocalVariable(name: "__first", arg: 1, scope: !4351, file: !3476, line: 595, type: !105)
!4357 = !DILocation(line: 595, column: 45, scope: !4351)
!4358 = !DILocalVariable(name: "__n", arg: 2, scope: !4351, file: !3476, line: 595, type: !84)
!4359 = !DILocation(line: 595, column: 60, scope: !4351)
!4360 = !DILocation(line: 597, column: 8, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4351, file: !3476, line: 597, column: 8)
!4362 = !DILocation(line: 597, column: 12, scope: !4361)
!4363 = !DILocation(line: 597, column: 8, scope: !4351)
!4364 = !DILocalVariable(name: "__val", scope: !4365, file: !3476, line: 599, type: !4366)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !3476, line: 598, column: 6)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !4369, file: !4368, line: 213, baseType: !30)
!4368 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<float *>", scope: !2, file: !4368, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !4370, identifier: "_ZTSSt15iterator_traitsIPfE")
!4370 = !{!4371}
!4371 = !DITemplateTypeParameter(name: "_Iterator", type: !105)
!4372 = !DILocation(line: 599, column: 64, scope: !4365)
!4373 = !DILocation(line: 600, column: 23, scope: !4365)
!4374 = !DILocation(line: 601, column: 24, scope: !4365)
!4375 = !DILocation(line: 601, column: 8, scope: !4365)
!4376 = !DILocation(line: 602, column: 8, scope: !4365)
!4377 = !DILocation(line: 603, column: 30, scope: !4365)
!4378 = !DILocation(line: 603, column: 39, scope: !4365)
!4379 = !DILocation(line: 603, column: 43, scope: !4365)
!4380 = !DILocation(line: 603, column: 49, scope: !4365)
!4381 = !DILocation(line: 603, column: 18, scope: !4365)
!4382 = !DILocation(line: 603, column: 16, scope: !4365)
!4383 = !DILocation(line: 604, column: 6, scope: !4365)
!4384 = !DILocation(line: 605, column: 11, scope: !4351)
!4385 = !DILocation(line: 605, column: 4, scope: !4351)
!4386 = distinct !DISubprogram(name: "_Construct<float>", linkageName: "_ZSt10_ConstructIfJEEvPT_DpOT0_", scope: !2, file: !3714, line: 109, type: !4387, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4389, retainedNodes: !216)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !105}
!4389 = !{!296, !3718}
!4390 = !DILocalVariable(name: "__p", arg: 1, scope: !4386, file: !3714, line: 109, type: !105)
!4391 = !DILocation(line: 109, column: 21, scope: !4386)
!4392 = !DILocation(line: 119, column: 20, scope: !4386)
!4393 = !DILocation(line: 119, column: 7, scope: !4386)
!4394 = !DILocation(line: 120, column: 5, scope: !4386)
!4395 = distinct !DISubprogram(name: "fill_n<float *, unsigned long, float>", linkageName: "_ZSt6fill_nIPfmfET_S1_T0_RKT1_", scope: !2, file: !2853, line: 1144, type: !4396, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4398, retainedNodes: !216)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!105, !105, !84, !2856}
!4398 = !{!4399, !3481, !296}
!4399 = !DITemplateTypeParameter(name: "_OI", type: !105)
!4400 = !DILocalVariable(name: "__first", arg: 1, scope: !4395, file: !2853, line: 1144, type: !105)
!4401 = !DILocation(line: 1144, column: 16, scope: !4395)
!4402 = !DILocalVariable(name: "__n", arg: 2, scope: !4395, file: !2853, line: 1144, type: !84)
!4403 = !DILocation(line: 1144, column: 31, scope: !4395)
!4404 = !DILocalVariable(name: "__value", arg: 3, scope: !4395, file: !2853, line: 1144, type: !2856)
!4405 = !DILocation(line: 1144, column: 47, scope: !4395)
!4406 = !DILocation(line: 1149, column: 30, scope: !4395)
!4407 = !DILocation(line: 1149, column: 62, scope: !4395)
!4408 = !DILocation(line: 1149, column: 39, scope: !4395)
!4409 = !DILocation(line: 1149, column: 68, scope: !4395)
!4410 = !DILocation(line: 1150, column: 11, scope: !4395)
!4411 = !DILocation(line: 1149, column: 14, scope: !4395)
!4412 = !DILocation(line: 1149, column: 7, scope: !4395)
!4413 = distinct !DISubprogram(name: "__fill_n_a<float *, unsigned long, float>", linkageName: "_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag", scope: !2, file: !2853, line: 1109, type: !4414, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4426, retainedNodes: !216)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!105, !105, !84, !2856, !4416}
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !4368, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !4417, identifier: "_ZTSSt26random_access_iterator_tag")
!4417 = !{!4418}
!4418 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4416, baseType: !4419, extraData: i32 0)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !4368, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4420, identifier: "_ZTSSt26bidirectional_iterator_tag")
!4420 = !{!4421}
!4421 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4419, baseType: !4422, extraData: i32 0)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !4368, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !4423, identifier: "_ZTSSt20forward_iterator_tag")
!4423 = !{!4424}
!4424 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4422, baseType: !4425, extraData: i32 0)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !4368, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !216, identifier: "_ZTSSt18input_iterator_tag")
!4426 = !{!4427, !3481, !296}
!4427 = !DITemplateTypeParameter(name: "_OutputIterator", type: !105)
!4428 = !DILocalVariable(name: "__first", arg: 1, scope: !4413, file: !2853, line: 1109, type: !105)
!4429 = !DILocation(line: 1109, column: 32, scope: !4413)
!4430 = !DILocalVariable(name: "__n", arg: 2, scope: !4413, file: !2853, line: 1109, type: !84)
!4431 = !DILocation(line: 1109, column: 47, scope: !4413)
!4432 = !DILocalVariable(name: "__value", arg: 3, scope: !4413, file: !2853, line: 1109, type: !2856)
!4433 = !DILocation(line: 1109, column: 63, scope: !4413)
!4434 = !DILocalVariable(arg: 4, scope: !4413, file: !2853, line: 1110, type: !4416)
!4435 = !DILocation(line: 1110, column: 40, scope: !4413)
!4436 = !DILocation(line: 1115, column: 11, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4413, file: !2853, line: 1115, column: 11)
!4438 = !DILocation(line: 1115, column: 15, scope: !4437)
!4439 = !DILocation(line: 1115, column: 11, scope: !4413)
!4440 = !DILocation(line: 1116, column: 9, scope: !4437)
!4441 = !DILocation(line: 1116, column: 2, scope: !4437)
!4442 = !DILocation(line: 1120, column: 21, scope: !4413)
!4443 = !DILocation(line: 1120, column: 30, scope: !4413)
!4444 = !DILocation(line: 1120, column: 40, scope: !4413)
!4445 = !DILocation(line: 1120, column: 38, scope: !4413)
!4446 = !DILocation(line: 1120, column: 45, scope: !4413)
!4447 = !DILocation(line: 1120, column: 7, scope: !4413)
!4448 = !DILocation(line: 1121, column: 14, scope: !4413)
!4449 = !DILocation(line: 1121, column: 24, scope: !4413)
!4450 = !DILocation(line: 1121, column: 22, scope: !4413)
!4451 = !DILocation(line: 1121, column: 7, scope: !4413)
!4452 = !DILocation(line: 1122, column: 5, scope: !4413)
!4453 = distinct !DISubprogram(name: "__size_to_integer", linkageName: "_ZSt17__size_to_integerm", scope: !2, file: !2853, line: 1010, type: !4454, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !216)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!84, !84}
!4456 = !DILocalVariable(name: "__n", arg: 1, scope: !4453, file: !2853, line: 1010, type: !84)
!4457 = !DILocation(line: 1010, column: 35, scope: !4453)
!4458 = !DILocation(line: 1010, column: 49, scope: !4453)
!4459 = !DILocation(line: 1010, column: 42, scope: !4453)
!4460 = distinct !DISubprogram(name: "__iterator_category<float *>", linkageName: "_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !2, file: !4368, line: 238, type: !4461, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4466, retainedNodes: !216)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !4369, file: !4368, line: 212, baseType: !4416)
!4464 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!4466 = !{!4467}
!4467 = !DITemplateTypeParameter(name: "_Iter", type: !105)
!4468 = !DILocalVariable(arg: 1, scope: !4460, file: !4368, line: 238, type: !4464)
!4469 = !DILocation(line: 238, column: 37, scope: !4460)
!4470 = !DILocation(line: 239, column: 7, scope: !4460)
!4471 = distinct !DISubprogram(name: "__fill_a<float *, float>", linkageName: "_ZSt8__fill_aIPffEvT_S1_RKT0_", scope: !2, file: !2853, line: 968, type: !4472, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4474, retainedNodes: !216)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !105, !105, !2856}
!4474 = !{!4475, !296}
!4475 = !DITemplateTypeParameter(name: "_FIte", type: !105)
!4476 = !DILocalVariable(name: "__first", arg: 1, scope: !4471, file: !2853, line: 968, type: !105)
!4477 = !DILocation(line: 968, column: 20, scope: !4471)
!4478 = !DILocalVariable(name: "__last", arg: 2, scope: !4471, file: !2853, line: 968, type: !105)
!4479 = !DILocation(line: 968, column: 35, scope: !4471)
!4480 = !DILocalVariable(name: "__value", arg: 3, scope: !4471, file: !2853, line: 968, type: !2856)
!4481 = !DILocation(line: 968, column: 54, scope: !4471)
!4482 = !DILocation(line: 969, column: 22, scope: !4471)
!4483 = !DILocation(line: 969, column: 31, scope: !4471)
!4484 = !DILocation(line: 969, column: 39, scope: !4471)
!4485 = !DILocation(line: 969, column: 7, scope: !4471)
!4486 = !DILocation(line: 969, column: 49, scope: !4471)
!4487 = distinct !DISubprogram(name: "__fill_a1<float *, float>", linkageName: "_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_", scope: !2, file: !2853, line: 919, type: !4488, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4496, retainedNodes: !216)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!4490, !105, !105, !2856}
!4490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !4492, file: !4491, line: 50, baseType: null)
!4491 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, void>", scope: !160, file: !4491, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !4493, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EvEE")
!4493 = !{!4494, !4495}
!4494 = !DITemplateValueParameter(type: !148, value: i8 1)
!4495 = !DITemplateTypeParameter(type: null)
!4496 = !{!4180, !296}
!4497 = !DILocalVariable(name: "__first", arg: 1, scope: !4487, file: !2853, line: 919, type: !105)
!4498 = !DILocation(line: 919, column: 32, scope: !4487)
!4499 = !DILocalVariable(name: "__last", arg: 2, scope: !4487, file: !2853, line: 919, type: !105)
!4500 = !DILocation(line: 919, column: 58, scope: !4487)
!4501 = !DILocalVariable(name: "__value", arg: 3, scope: !4487, file: !2853, line: 920, type: !2856)
!4502 = !DILocation(line: 920, column: 19, scope: !4487)
!4503 = !DILocalVariable(name: "__tmp", scope: !4487, file: !2853, line: 922, type: !48)
!4504 = !DILocation(line: 922, column: 17, scope: !4487)
!4505 = !DILocation(line: 922, column: 25, scope: !4487)
!4506 = !DILocation(line: 923, column: 7, scope: !4487)
!4507 = !DILocation(line: 923, column: 14, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !2853, line: 923, column: 7)
!4509 = distinct !DILexicalBlock(scope: !4487, file: !2853, line: 923, column: 7)
!4510 = !DILocation(line: 923, column: 25, scope: !4508)
!4511 = !DILocation(line: 923, column: 22, scope: !4508)
!4512 = !DILocation(line: 923, column: 7, scope: !4509)
!4513 = !DILocation(line: 924, column: 13, scope: !4508)
!4514 = !DILocation(line: 924, column: 3, scope: !4508)
!4515 = !DILocation(line: 924, column: 11, scope: !4508)
!4516 = !DILocation(line: 924, column: 2, scope: !4508)
!4517 = !DILocation(line: 923, column: 33, scope: !4508)
!4518 = !DILocation(line: 923, column: 7, scope: !4508)
!4519 = distinct !{!4519, !4512, !4520, !2203}
!4520 = !DILocation(line: 924, column: 13, scope: !4509)
!4521 = !DILocation(line: 925, column: 5, scope: !4487)
!4522 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_m", scope: !248, file: !164, line: 463, type: !251, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !250, retainedNodes: !216)
!4523 = !DILocalVariable(name: "__a", arg: 1, scope: !4522, file: !164, line: 463, type: !254)
!4524 = !DILocation(line: 463, column: 32, scope: !4522)
!4525 = !DILocalVariable(name: "__n", arg: 2, scope: !4522, file: !164, line: 463, type: !174)
!4526 = !DILocation(line: 463, column: 47, scope: !4522)
!4527 = !DILocation(line: 464, column: 16, scope: !4522)
!4528 = !DILocation(line: 464, column: 29, scope: !4522)
!4529 = !DILocation(line: 464, column: 20, scope: !4522)
!4530 = !DILocation(line: 464, column: 9, scope: !4522)
!4531 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv", scope: !4321, file: !3644, line: 103, type: !4532, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4535, retainedNodes: !216)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!105, !4534, !3648, !86}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4535 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv", scope: !4321, file: !3644, line: 103, type: !4532, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4536 = !DILocalVariable(name: "this", arg: 1, scope: !4531, type: !4537, flags: DIFlagArtificial | DIFlagObjectPointer)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4538 = !DILocation(line: 0, scope: !4531)
!4539 = !DILocalVariable(name: "__n", arg: 2, scope: !4531, file: !3644, line: 103, type: !3648)
!4540 = !DILocation(line: 103, column: 26, scope: !4531)
!4541 = !DILocalVariable(arg: 3, scope: !4531, file: !3644, line: 103, type: !86)
!4542 = !DILocation(line: 103, column: 43, scope: !4531)
!4543 = !DILocation(line: 111, column: 23, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4531, file: !3644, line: 111, column: 6)
!4545 = !DILocation(line: 111, column: 35, scope: !4544)
!4546 = !DILocation(line: 111, column: 27, scope: !4544)
!4547 = !DILocation(line: 111, column: 6, scope: !4531)
!4548 = !DILocation(line: 115, column: 10, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !3644, line: 115, column: 10)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !3644, line: 112, column: 4)
!4551 = !DILocation(line: 115, column: 14, scope: !4549)
!4552 = !DILocation(line: 115, column: 10, scope: !4550)
!4553 = !DILocation(line: 116, column: 8, scope: !4549)
!4554 = !DILocation(line: 117, column: 6, scope: !4550)
!4555 = !DILocation(line: 127, column: 42, scope: !4531)
!4556 = !DILocation(line: 127, column: 46, scope: !4531)
!4557 = !DILocation(line: 127, column: 27, scope: !4531)
!4558 = !DILocation(line: 127, column: 2, scope: !4531)
!4559 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm", scope: !248, file: !164, line: 495, type: !261, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !260, retainedNodes: !216)
!4560 = !DILocalVariable(name: "__a", arg: 1, scope: !4559, file: !164, line: 495, type: !254)
!4561 = !DILocation(line: 495, column: 34, scope: !4559)
!4562 = !DILocalVariable(name: "__p", arg: 2, scope: !4559, file: !164, line: 495, type: !253)
!4563 = !DILocation(line: 495, column: 47, scope: !4559)
!4564 = !DILocalVariable(name: "__n", arg: 3, scope: !4559, file: !164, line: 495, type: !174)
!4565 = !DILocation(line: 495, column: 62, scope: !4559)
!4566 = !DILocation(line: 496, column: 9, scope: !4559)
!4567 = !DILocation(line: 496, column: 24, scope: !4559)
!4568 = !DILocation(line: 496, column: 29, scope: !4559)
!4569 = !DILocation(line: 496, column: 13, scope: !4559)
!4570 = !DILocation(line: 496, column: 35, scope: !4559)
!4571 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm", scope: !4321, file: !3644, line: 132, type: !4572, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4574, retainedNodes: !216)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4534, !105, !3648}
!4574 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm", scope: !4321, file: !3644, line: 132, type: !4572, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4575 = !DILocalVariable(name: "this", arg: 1, scope: !4571, type: !4537, flags: DIFlagArtificial | DIFlagObjectPointer)
!4576 = !DILocation(line: 0, scope: !4571)
!4577 = !DILocalVariable(name: "__p", arg: 2, scope: !4571, file: !3644, line: 132, type: !105)
!4578 = !DILocation(line: 132, column: 23, scope: !4571)
!4579 = !DILocalVariable(name: "__t", arg: 3, scope: !4571, file: !3644, line: 132, type: !3648)
!4580 = !DILocation(line: 132, column: 38, scope: !4571)
!4581 = !DILocation(line: 145, column: 20, scope: !4571)
!4582 = !DILocation(line: 145, column: 2, scope: !4571)
!4583 = !DILocation(line: 150, column: 7, scope: !4571)
!4584 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE", scope: !238, file: !81, line: 453, type: !4585, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4587, retainedNodes: !216)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!241, !241, !241, !241, !290, !3845}
!4587 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE", scope: !238, file: !81, line: 453, type: !4585, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4588 = !DILocalVariable(name: "__first", arg: 1, scope: !4584, file: !81, line: 453, type: !241)
!4589 = !DILocation(line: 453, column: 30, scope: !4584)
!4590 = !DILocalVariable(name: "__last", arg: 2, scope: !4584, file: !81, line: 453, type: !241)
!4591 = !DILocation(line: 453, column: 47, scope: !4584)
!4592 = !DILocalVariable(name: "__result", arg: 3, scope: !4584, file: !81, line: 453, type: !241)
!4593 = !DILocation(line: 453, column: 63, scope: !4584)
!4594 = !DILocalVariable(name: "__alloc", arg: 4, scope: !4584, file: !81, line: 454, type: !290)
!4595 = !DILocation(line: 454, column: 24, scope: !4584)
!4596 = !DILocalVariable(arg: 5, scope: !4584, file: !81, line: 454, type: !3845)
!4597 = !DILocation(line: 454, column: 42, scope: !4584)
!4598 = !DILocation(line: 456, column: 27, scope: !4584)
!4599 = !DILocation(line: 456, column: 36, scope: !4584)
!4600 = !DILocation(line: 456, column: 44, scope: !4584)
!4601 = !DILocation(line: 456, column: 54, scope: !4584)
!4602 = !DILocation(line: 456, column: 9, scope: !4584)
!4603 = !DILocation(line: 456, column: 2, scope: !4584)
!4604 = distinct !DISubprogram(name: "__relocate_a<float *, float *, std::allocator<float> >", linkageName: "_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_", scope: !2, file: !3476, line: 1040, type: !4605, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4607, retainedNodes: !216)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!105, !105, !105, !105, !282}
!4607 = !{!4608, !4180, !4609}
!4608 = !DITemplateTypeParameter(name: "_InputIterator", type: !105)
!4609 = !DITemplateTypeParameter(name: "_Allocator", type: !256)
!4610 = !DILocalVariable(name: "__first", arg: 1, scope: !4604, file: !3476, line: 1040, type: !105)
!4611 = !DILocation(line: 1040, column: 33, scope: !4604)
!4612 = !DILocalVariable(name: "__last", arg: 2, scope: !4604, file: !3476, line: 1040, type: !105)
!4613 = !DILocation(line: 1040, column: 57, scope: !4604)
!4614 = !DILocalVariable(name: "__result", arg: 3, scope: !4604, file: !3476, line: 1041, type: !105)
!4615 = !DILocation(line: 1041, column: 21, scope: !4604)
!4616 = !DILocalVariable(name: "__alloc", arg: 4, scope: !4604, file: !3476, line: 1041, type: !282)
!4617 = !DILocation(line: 1041, column: 43, scope: !4604)
!4618 = !DILocation(line: 1046, column: 47, scope: !4604)
!4619 = !DILocation(line: 1046, column: 29, scope: !4604)
!4620 = !DILocation(line: 1047, column: 26, scope: !4604)
!4621 = !DILocation(line: 1047, column: 8, scope: !4604)
!4622 = !DILocation(line: 1048, column: 26, scope: !4604)
!4623 = !DILocation(line: 1048, column: 8, scope: !4604)
!4624 = !DILocation(line: 1048, column: 37, scope: !4604)
!4625 = !DILocation(line: 1046, column: 14, scope: !4604)
!4626 = !DILocation(line: 1046, column: 7, scope: !4604)
!4627 = distinct !DISubprogram(name: "__relocate_a_1<float, float>", linkageName: "_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E", scope: !2, file: !3476, line: 1006, type: !4628, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4635, retainedNodes: !216)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4630, !105, !105, !105, !282}
!4630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<float>::value, float *>", scope: !2, file: !222, line: 2205, baseType: !4631)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !4632, file: !222, line: 2199, baseType: !105)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, float *>", scope: !2, file: !222, line: 2198, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !4633, identifier: "_ZTSSt9enable_ifILb1EPfE")
!4633 = !{!4494, !4634}
!4634 = !DITemplateTypeParameter(name: "_Tp", type: !105)
!4635 = !{!296, !4636}
!4636 = !DITemplateTypeParameter(name: "_Up", type: !30)
!4637 = !DILocalVariable(name: "__first", arg: 1, scope: !4627, file: !3476, line: 1006, type: !105)
!4638 = !DILocation(line: 1006, column: 25, scope: !4627)
!4639 = !DILocalVariable(name: "__last", arg: 2, scope: !4627, file: !3476, line: 1006, type: !105)
!4640 = !DILocation(line: 1006, column: 39, scope: !4627)
!4641 = !DILocalVariable(name: "__result", arg: 3, scope: !4627, file: !3476, line: 1007, type: !105)
!4642 = !DILocation(line: 1007, column: 11, scope: !4627)
!4643 = !DILocalVariable(arg: 4, scope: !4627, file: !3476, line: 1007, type: !282)
!4644 = !DILocation(line: 1007, column: 36, scope: !4627)
!4645 = !DILocalVariable(name: "__count", scope: !4627, file: !3476, line: 1009, type: !4646)
!4646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !83, line: 281, baseType: !538)
!4647 = !DILocation(line: 1009, column: 17, scope: !4627)
!4648 = !DILocation(line: 1009, column: 27, scope: !4627)
!4649 = !DILocation(line: 1009, column: 36, scope: !4627)
!4650 = !DILocation(line: 1009, column: 34, scope: !4627)
!4651 = !DILocation(line: 1010, column: 11, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4627, file: !3476, line: 1010, column: 11)
!4653 = !DILocation(line: 1010, column: 19, scope: !4652)
!4654 = !DILocation(line: 1010, column: 11, scope: !4627)
!4655 = !DILocation(line: 1011, column: 20, scope: !4652)
!4656 = !DILocation(line: 1011, column: 30, scope: !4652)
!4657 = !DILocation(line: 1011, column: 39, scope: !4652)
!4658 = !DILocation(line: 1011, column: 47, scope: !4652)
!4659 = !DILocation(line: 1011, column: 2, scope: !4652)
!4660 = !DILocation(line: 1012, column: 14, scope: !4627)
!4661 = !DILocation(line: 1012, column: 25, scope: !4627)
!4662 = !DILocation(line: 1012, column: 23, scope: !4627)
!4663 = !DILocation(line: 1012, column: 7, scope: !4627)
!4664 = distinct !DISubprogram(name: "__niter_base<float *>", linkageName: "_ZSt12__niter_baseIPfET_S1_", scope: !2, file: !2853, line: 313, type: !4665, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4370, retainedNodes: !216)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!105, !105}
!4667 = !DILocalVariable(name: "__it", arg: 1, scope: !4664, file: !2853, line: 313, type: !105)
!4668 = !DILocation(line: 313, column: 28, scope: !4664)
!4669 = !DILocation(line: 315, column: 14, scope: !4664)
!4670 = !DILocation(line: 315, column: 7, scope: !4664)
!4671 = distinct !DISubprogram(name: "_Destroy<float *, float>", linkageName: "_ZSt8_DestroyIPffEvT_S1_RSaIT0_E", scope: !2, file: !164, line: 845, type: !4672, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4496, retainedNodes: !216)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !105, !105, !282}
!4674 = !DILocalVariable(name: "__first", arg: 1, scope: !4671, file: !164, line: 845, type: !105)
!4675 = !DILocation(line: 845, column: 31, scope: !4671)
!4676 = !DILocalVariable(name: "__last", arg: 2, scope: !4671, file: !164, line: 845, type: !105)
!4677 = !DILocation(line: 845, column: 57, scope: !4671)
!4678 = !DILocalVariable(arg: 3, scope: !4671, file: !164, line: 846, type: !282)
!4679 = !DILocation(line: 846, column: 22, scope: !4671)
!4680 = !DILocation(line: 848, column: 16, scope: !4671)
!4681 = !DILocation(line: 848, column: 25, scope: !4671)
!4682 = !DILocation(line: 848, column: 7, scope: !4671)
!4683 = !DILocation(line: 849, column: 5, scope: !4671)
!4684 = distinct !DISubprogram(name: "_Destroy<float *>", linkageName: "_ZSt8_DestroyIPfEvT_S1_", scope: !2, file: !3714, line: 182, type: !4685, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4687, retainedNodes: !216)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !105, !105}
!4687 = !{!4180}
!4688 = !DILocalVariable(name: "__first", arg: 1, scope: !4684, file: !3714, line: 182, type: !105)
!4689 = !DILocation(line: 182, column: 31, scope: !4684)
!4690 = !DILocalVariable(name: "__last", arg: 2, scope: !4684, file: !3714, line: 182, type: !105)
!4691 = !DILocation(line: 182, column: 57, scope: !4684)
!4692 = !DILocation(line: 196, column: 12, scope: !4684)
!4693 = !DILocation(line: 196, column: 21, scope: !4684)
!4694 = !DILocation(line: 195, column: 7, scope: !4684)
!4695 = !DILocation(line: 197, column: 5, scope: !4684)
!4696 = distinct !DISubprogram(name: "__destroy<float *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_", scope: !4697, file: !3714, line: 172, type: !4685, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4687, declaration: !4699, retainedNodes: !216)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !2, file: !3714, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !216, templateParams: !4698, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!4698 = !{!4494}
!4699 = !DISubprogram(name: "__destroy<float *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_", scope: !4697, file: !3714, line: 172, type: !4685, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !4687)
!4700 = !DILocalVariable(arg: 1, scope: !4696, file: !3714, line: 172, type: !105)
!4701 = !DILocation(line: 172, column: 35, scope: !4696)
!4702 = !DILocalVariable(arg: 2, scope: !4696, file: !3714, line: 172, type: !105)
!4703 = !DILocation(line: 172, column: 53, scope: !4696)
!4704 = !DILocation(line: 172, column: 57, scope: !4696)
!4705 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_BodyGeometry.cpp", scope: !447, file: !447, type: !4706, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !216)
!4706 = !DISubroutineType(types: !216)
!4707 = !DILocation(line: 0, scope: !4705)
