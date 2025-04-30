; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/API/ISG.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/API/ISG.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"struct.ISG::World" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.std::integral_constant" = type { i8 }

$_ZN3ISG5World15getDefaultWorldEv = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backEOS2_ = comdat any

$_ZN5sse_fC2Ev = comdat any

$_ZN3ISG5WorldC2Ev = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEC2Ev = comdat any

$_ZN3ISG5World11makeDefaultEv = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIPN3ISG8RootNodeEEC2Ev = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEEC2Ev = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_ = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE9constructIS3_JS3_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8allocateEmPKv = comdat any

$_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPPN3ISG8RootNodeES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN3ISG8RootNodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE10deallocateEPS3_m = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZTVN3ISG5WorldE = comdat any

$_ZTSN3ISG5WorldE = comdat any

$_ZTIN3ISG5WorldE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@_ZN3ISG17current_timestampE = dso_local global i32 0, align 4, !dbg !579
@_ZN3ISG5World9m_defaultE = dso_local global ptr null, align 8, !dbg !582
@_ZTVN3ISG5WorldE = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN3ISG5WorldE, ptr @_ZN3ISG5World11makeDefaultEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN3ISG5WorldE = linkonce_odr dso_local constant [13 x i8] c"N3ISG5WorldE\00", comdat, align 1
@_ZTIN3ISG5WorldE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3ISG5WorldE }, comdat, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !dbg !601
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ISG.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1938 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1939
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1941
  ret void, !dbg !1939
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !1942 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1943, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1950, metadata !DIExpression()), !dbg !1951
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1952, metadata !DIExpression()), !dbg !1954
  store i32 0, ptr %3, align 4, !dbg !1954
  br label %4, !dbg !1955

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !1956
  %6 = icmp slt i32 %5, 4, !dbg !1958
  br i1 %6, label %7, label %14, !dbg !1959

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !1960
  %9 = load i32, ptr %3, align 4, !dbg !1961
  %10 = sext i32 %9 to i64, !dbg !1962
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !1962
  store float %8, ptr %11, align 4, !dbg !1963
  %12 = load i32, ptr %3, align 4, !dbg !1964
  %13 = add nsw i32 %12, 1, !dbg !1964
  store i32 %13, ptr %3, align 4, !dbg !1964
  br label %4, !dbg !1965, !llvm.loop !1966

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !1969
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !1970
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !1970
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !1970
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !1970
  ret void, !dbg !1971
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z6rtShowPN3ISG4NodeE(ptr noundef %0) #5 !dbg !1972 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1978, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1980, metadata !DIExpression()), !dbg !1981
  %5 = call noundef ptr @_ZN3ISG5World15getDefaultWorldEv(), !dbg !1982
  store ptr %5, ptr %3, align 8, !dbg !1981
  %6 = load ptr, ptr %3, align 8, !dbg !1983
  %7 = getelementptr inbounds %"struct.ISG::World", ptr %6, i32 0, i32 1, !dbg !1984
  %8 = load ptr, ptr %2, align 8, !dbg !1985
  store ptr %8, ptr %4, align 8, !dbg !1986
  call void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1987
  ret void, !dbg !1988
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ISG5World15getDefaultWorldEv() #5 comdat align 2 !dbg !1989 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @_ZN3ISG5World9m_defaultE, align 8, !dbg !1990
  %3 = icmp eq ptr %2, null, !dbg !1992
  br i1 %3, label %4, label %10, !dbg !1993

4:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1994, metadata !DIExpression()), !dbg !1996
  %5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #14, !dbg !1997, !heapallocsite !585
  call void @_ZN3ISG5WorldC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !1998
  store ptr %5, ptr %1, align 8, !dbg !1996
  %6 = load ptr, ptr %1, align 8, !dbg !1999
  %7 = load ptr, ptr %6, align 8, !dbg !2000
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !2000
  %9 = load ptr, ptr %8, align 8, !dbg !2000
  call void %9(ptr noundef nonnull align 8 dereferenceable(32) %6), !dbg !2000
  br label %10, !dbg !2001

10:                                               ; preds = %4, %0
  %11 = load ptr, ptr @_ZN3ISG5World9m_defaultE, align 8, !dbg !2002
  ret ptr %11, !dbg !2003
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat align 2 !dbg !2004 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2005, metadata !DIExpression()), !dbg !2007
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2008, metadata !DIExpression()), !dbg !2009
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !2010
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !2011
  ret void, !dbg !2012
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 !dbg !2013 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2014, metadata !DIExpression()), !dbg !2016
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2017
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG5WorldC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 !dbg !2018 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2020, metadata !DIExpression()), !dbg !2021
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTVN3ISG5WorldE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !2022
  %4 = getelementptr inbounds %"struct.ISG::World", ptr %3, i32 0, i32 1, !dbg !2022
  call void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2022
  ret void, !dbg !2022
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !dbg !2023 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2024, metadata !DIExpression()), !dbg !2025
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2026
  ret void, !dbg !2027
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG5World11makeDefaultEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 !dbg !2028 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2029, metadata !DIExpression()), !dbg !2030
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr @_ZN3ISG5World9m_defaultE, align 8, !dbg !2031
  ret void, !dbg !2032
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !dbg !2033 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2034, metadata !DIExpression()), !dbg !2036
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2037
  call void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2037
  ret void, !dbg !2038
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !dbg !2039 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2040, metadata !DIExpression()), !dbg !2042
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIPN3ISG8RootNodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2043
  call void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2044
  ret void, !dbg !2045
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIPN3ISG8RootNodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !dbg !2046 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2047, metadata !DIExpression()), !dbg !2049
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2050
  ret void, !dbg !2051
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !dbg !2052 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2053, metadata !DIExpression()), !dbg !2055
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !2056
  store ptr null, ptr %4, align 8, !dbg !2056
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !2057
  store ptr null, ptr %5, align 8, !dbg !2057
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !2058
  store ptr null, ptr %6, align 8, !dbg !2058
  ret void, !dbg !2059
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !dbg !2060 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2061, metadata !DIExpression()), !dbg !2063
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2064
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat align 2 !dbg !2065 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2073, metadata !DIExpression()), !dbg !2074
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2075, metadata !DIExpression()), !dbg !2076
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2077
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !2079
  %9 = load ptr, ptr %8, align 8, !dbg !2079
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2080
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %10, i32 0, i32 2, !dbg !2081
  %12 = load ptr, ptr %11, align 8, !dbg !2081
  %13 = icmp ne ptr %9, %12, !dbg !2082
  br i1 %13, label %14, label %24, !dbg !2083

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2084
  %16 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2086
  %17 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %16, i32 0, i32 1, !dbg !2087
  %18 = load ptr, ptr %17, align 8, !dbg !2087
  %19 = load ptr, ptr %4, align 8, !dbg !2088
  call void @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %19) #3, !dbg !2089
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2090
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !2091
  %22 = load ptr, ptr %21, align 8, !dbg !2092
  %23 = getelementptr inbounds ptr, ptr %22, i32 1, !dbg !2092
  store ptr %23, ptr %21, align 8, !dbg !2092
  br label %30, !dbg !2093

24:                                               ; preds = %2
  %25 = call ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !2094
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2094
  store ptr %25, ptr %26, align 8, !dbg !2094
  %27 = load ptr, ptr %4, align 8, !dbg !2095
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2096
  %29 = load ptr, ptr %28, align 8, !dbg !2096
  call void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %29, ptr noundef nonnull align 8 dereferenceable(8) %27), !dbg !2096
  br label %30

30:                                               ; preds = %24, %14
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !2097
  ret ptr %31, !dbg !2098
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9 comdat align 2 !dbg !2099 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2105, metadata !DIExpression()), !dbg !2106
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2107, metadata !DIExpression()), !dbg !2108
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2109, metadata !DIExpression()), !dbg !2110
  %7 = load ptr, ptr %4, align 8, !dbg !2111
  %8 = load ptr, ptr %5, align 8, !dbg !2112
  %9 = load ptr, ptr %6, align 8, !dbg !2113
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #3, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 !dbg !2116 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0
  store ptr %1, ptr %14, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2120, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2122, metadata !DIExpression()), !dbg !2123
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2124, metadata !DIExpression()), !dbg !2125
  %15 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2126, metadata !DIExpression()), !dbg !2128
  %16 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, ptr noundef @.str), !dbg !2129
  store i64 %16, ptr %7, align 8, !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2130, metadata !DIExpression()), !dbg !2131
  %17 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2132
  %18 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %17, i32 0, i32 0, !dbg !2133
  %19 = load ptr, ptr %18, align 8, !dbg !2133
  store ptr %19, ptr %8, align 8, !dbg !2131
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2134, metadata !DIExpression()), !dbg !2135
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2136
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !2137
  %22 = load ptr, ptr %21, align 8, !dbg !2137
  store ptr %22, ptr %9, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2138, metadata !DIExpression()), !dbg !2139
  %23 = call ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !2140
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !2140
  store ptr %23, ptr %24, align 8, !dbg !2140
  %25 = call noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #3, !dbg !2141
  store i64 %25, ptr %10, align 8, !dbg !2139
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2142, metadata !DIExpression()), !dbg !2143
  %26 = load i64, ptr %7, align 8, !dbg !2144
  %27 = call noundef ptr @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %26), !dbg !2145
  store ptr %27, ptr %12, align 8, !dbg !2143
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2146, metadata !DIExpression()), !dbg !2147
  %28 = load ptr, ptr %12, align 8, !dbg !2148
  store ptr %28, ptr %13, align 8, !dbg !2147
  %29 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2149
  %30 = load ptr, ptr %12, align 8, !dbg !2151
  %31 = load i64, ptr %10, align 8, !dbg !2152
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31, !dbg !2153
  %33 = load ptr, ptr %6, align 8, !dbg !2154
  call void @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %33) #3, !dbg !2155
  store ptr null, ptr %13, align 8, !dbg !2156
  %34 = load ptr, ptr %8, align 8, !dbg !2157
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !2160
  %36 = load ptr, ptr %35, align 8, !dbg !2160
  %37 = load ptr, ptr %12, align 8, !dbg !2161
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !2162
  %39 = call noundef ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %34, ptr noundef %36, ptr noundef %37, ptr noundef nonnull align 1 dereferenceable(1) %38) #3, !dbg !2163
  store ptr %39, ptr %13, align 8, !dbg !2164
  %40 = load ptr, ptr %13, align 8, !dbg !2165
  %41 = getelementptr inbounds ptr, ptr %40, i32 1, !dbg !2165
  store ptr %41, ptr %13, align 8, !dbg !2165
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !2166
  %43 = load ptr, ptr %42, align 8, !dbg !2166
  %44 = load ptr, ptr %9, align 8, !dbg !2167
  %45 = load ptr, ptr %13, align 8, !dbg !2168
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !2169
  %47 = call noundef ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #3, !dbg !2170
  store ptr %47, ptr %13, align 8, !dbg !2171
  %48 = load ptr, ptr %8, align 8, !dbg !2172
  %49 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2173
  %50 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %49, i32 0, i32 2, !dbg !2174
  %51 = load ptr, ptr %50, align 8, !dbg !2174
  %52 = load ptr, ptr %8, align 8, !dbg !2175
  %53 = ptrtoint ptr %51 to i64, !dbg !2176
  %54 = ptrtoint ptr %52 to i64, !dbg !2176
  %55 = sub i64 %53, %54, !dbg !2176
  %56 = sdiv exact i64 %55, 8, !dbg !2176
  call void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %48, i64 noundef %56), !dbg !2177
  %57 = load ptr, ptr %12, align 8, !dbg !2178
  %58 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2179
  %59 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %58, i32 0, i32 0, !dbg !2180
  store ptr %57, ptr %59, align 8, !dbg !2181
  %60 = load ptr, ptr %13, align 8, !dbg !2182
  %61 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2183
  %62 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %61, i32 0, i32 1, !dbg !2184
  store ptr %60, ptr %62, align 8, !dbg !2185
  %63 = load ptr, ptr %12, align 8, !dbg !2186
  %64 = load i64, ptr %7, align 8, !dbg !2187
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64, !dbg !2188
  %66 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !2189
  %67 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %66, i32 0, i32 2, !dbg !2190
  store ptr %65, ptr %67, align 8, !dbg !2191
  ret void, !dbg !2192
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2193 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2194, metadata !DIExpression()), !dbg !2195
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2196
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !2197
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2198
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2199
  %8 = load ptr, ptr %7, align 8, !dbg !2199
  ret ptr %8, !dbg !2199
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2200 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2201, metadata !DIExpression()), !dbg !2202
  %5 = load ptr, ptr %2, align 8
  %6 = call ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2203
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2203
  store ptr %6, ptr %7, align 8, !dbg !2203
  %8 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #3, !dbg !2204
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2204
  store ptr %8, ptr %9, align 8, !dbg !2204
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #3, !dbg !2205
  ret ptr %10, !dbg !2206
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9 comdat align 2 !dbg !2207 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2211, metadata !DIExpression()), !dbg !2212
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2213, metadata !DIExpression()), !dbg !2214
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2215, metadata !DIExpression()), !dbg !2216
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2217
  %9 = load ptr, ptr %6, align 8, !dbg !2218
  %10 = load ptr, ptr %9, align 8, !dbg !2219
  store ptr %10, ptr %8, align 8, !dbg !2220
  ret void, !dbg !2221
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #5 comdat align 2 !dbg !2222 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2223, metadata !DIExpression()), !dbg !2225
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2226, metadata !DIExpression()), !dbg !2227
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2228, metadata !DIExpression()), !dbg !2229
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2230
  %11 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2232
  %12 = sub i64 %10, %11, !dbg !2233
  %13 = load i64, ptr %5, align 8, !dbg !2234
  %14 = icmp ult i64 %12, %13, !dbg !2235
  br i1 %14, label %15, label %17, !dbg !2236

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !2237
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #15, !dbg !2238
  unreachable, !dbg !2238

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2239, metadata !DIExpression()), !dbg !2240
  %18 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2241
  %19 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2242
  store i64 %19, ptr %8, align 8, !dbg !2242
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !2243
  %21 = load i64, ptr %20, align 8, !dbg !2243
  %22 = add i64 %18, %21, !dbg !2244
  store i64 %22, ptr %7, align 8, !dbg !2240
  %23 = load i64, ptr %7, align 8, !dbg !2245
  %24 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2246
  %25 = icmp ult i64 %23, %24, !dbg !2247
  br i1 %25, label %30, label %26, !dbg !2248

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !2249
  %28 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2250
  %29 = icmp ugt i64 %27, %28, !dbg !2251
  br i1 %29, label %30, label %32, !dbg !2252

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !2253
  br label %34, !dbg !2252

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !2254
  br label %34, !dbg !2252

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !2252
  ret i64 %35, !dbg !2255
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat !dbg !2256 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2260, metadata !DIExpression()), !dbg !2261
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2262, metadata !DIExpression()), !dbg !2263
  %5 = load ptr, ptr %3, align 8, !dbg !2264
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2265
  %7 = load ptr, ptr %6, align 8, !dbg !2265
  %8 = load ptr, ptr %4, align 8, !dbg !2266
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2267
  %10 = load ptr, ptr %9, align 8, !dbg !2267
  %11 = ptrtoint ptr %7 to i64, !dbg !2268
  %12 = ptrtoint ptr %10 to i64, !dbg !2268
  %13 = sub i64 %11, %12, !dbg !2268
  %14 = sdiv exact i64 %13, 8, !dbg !2268
  ret i64 %14, !dbg !2269
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2270 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2271, metadata !DIExpression()), !dbg !2272
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2273
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !2274
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2275
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2276
  %8 = load ptr, ptr %7, align 8, !dbg !2276
  ret ptr %8, !dbg !2276
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #5 comdat align 2 !dbg !2277 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2280, metadata !DIExpression()), !dbg !2281
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !2282
  %7 = icmp ne i64 %6, 0, !dbg !2283
  br i1 %7, label %8, label %12, !dbg !2282

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !2284
  %10 = load i64, ptr %4, align 8, !dbg !2285
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !2286
  br label %13, !dbg !2282

12:                                               ; preds = %2
  br label %13, !dbg !2282

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !2282
  ret ptr %14, !dbg !2287
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #9 comdat align 2 !dbg !564 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2288, metadata !DIExpression()), !dbg !2289
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2290, metadata !DIExpression()), !dbg !2291
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2292, metadata !DIExpression()), !dbg !2293
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2294, metadata !DIExpression()), !dbg !2295
  %10 = load ptr, ptr %5, align 8, !dbg !2296
  %11 = load ptr, ptr %6, align 8, !dbg !2297
  %12 = load ptr, ptr %7, align 8, !dbg !2298
  %13 = load ptr, ptr %8, align 8, !dbg !2299
  %14 = call noundef ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !2300
  ret ptr %14, !dbg !2301
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 comdat align 2 !dbg !2302 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2303, metadata !DIExpression()), !dbg !2305
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2306
  ret ptr %4, !dbg !2307
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2308 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2309, metadata !DIExpression()), !dbg !2310
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2311
  ret ptr %4, !dbg !2312
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !2313 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2314, metadata !DIExpression()), !dbg !2315
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2318, metadata !DIExpression()), !dbg !2319
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2320
  %9 = icmp ne ptr %8, null, !dbg !2320
  br i1 %9, label %10, label %14, !dbg !2322

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !2323
  %12 = load ptr, ptr %5, align 8, !dbg !2324
  %13 = load i64, ptr %6, align 8, !dbg !2325
  call void @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !2326
  br label %14, !dbg !2326

14:                                               ; preds = %10, %3
  ret void, !dbg !2327
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2328 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2329, metadata !DIExpression()), !dbg !2330
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2331
  %5 = call noundef i64 @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !2332
  ret i64 %5, !dbg !2333
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2334 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2337
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !2338
  %6 = load ptr, ptr %5, align 8, !dbg !2338
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2339
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !2340
  %9 = load ptr, ptr %8, align 8, !dbg !2340
  %10 = ptrtoint ptr %6 to i64, !dbg !2341
  %11 = ptrtoint ptr %9 to i64, !dbg !2341
  %12 = sub i64 %10, %11, !dbg !2341
  %13 = sdiv exact i64 %12, 8, !dbg !2341
  ret i64 %13, !dbg !2342
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat !dbg !2343 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2351, metadata !DIExpression()), !dbg !2353
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2354, metadata !DIExpression()), !dbg !2355
  %6 = load ptr, ptr %4, align 8, !dbg !2356
  %7 = load i64, ptr %6, align 8, !dbg !2356
  %8 = load ptr, ptr %5, align 8, !dbg !2358
  %9 = load i64, ptr %8, align 8, !dbg !2358
  %10 = icmp ult i64 %7, %9, !dbg !2359
  br i1 %10, label %11, label %13, !dbg !2360

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2361
  store ptr %12, ptr %3, align 8, !dbg !2362
  br label %15, !dbg !2362

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2363
  store ptr %14, ptr %3, align 8, !dbg !2364
  br label %15, !dbg !2364

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2365
  ret ptr %16, !dbg !2365
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2366 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2369, metadata !DIExpression()), !dbg !2371
  store i64 1152921504606846975, ptr %3, align 8, !dbg !2371
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2372, metadata !DIExpression()), !dbg !2373
  %5 = load ptr, ptr %2, align 8, !dbg !2374
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !2375
  store i64 %6, ptr %4, align 8, !dbg !2373
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !2376

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !2376
  ret i64 %9, !dbg !2377

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2376
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !2376
  call void @__clang_call_terminate(ptr %12) #16, !dbg !2376
  unreachable, !dbg !2376
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !2378 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2379, metadata !DIExpression()), !dbg !2381
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2382
  ret ptr %4, !dbg !2383
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 !dbg !2384 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2385, metadata !DIExpression()), !dbg !2386
  %3 = load ptr, ptr %2, align 8, !dbg !2387
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2388
  ret i64 %4, !dbg !2389
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat !dbg !2390 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2391, metadata !DIExpression()), !dbg !2392
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2393, metadata !DIExpression()), !dbg !2394
  %6 = load ptr, ptr %5, align 8, !dbg !2395
  %7 = load i64, ptr %6, align 8, !dbg !2395
  %8 = load ptr, ptr %4, align 8, !dbg !2397
  %9 = load i64, ptr %8, align 8, !dbg !2397
  %10 = icmp ult i64 %7, %9, !dbg !2398
  br i1 %10, label %11, label %13, !dbg !2399

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2400
  store ptr %12, ptr %3, align 8, !dbg !2401
  br label %15, !dbg !2401

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2402
  store ptr %14, ptr %3, align 8, !dbg !2403
  br label %15, !dbg !2403

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2404
  ret ptr %16, !dbg !2404
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #11 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 !dbg !2405 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2406, metadata !DIExpression()), !dbg !2408
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2409
  ret i64 %4, !dbg !2410
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 !dbg !2411 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2412, metadata !DIExpression()), !dbg !2413
  %3 = load ptr, ptr %2, align 8
  ret i64 1152921504606846975, !dbg !2414
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 !dbg !2415 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2416, metadata !DIExpression()), !dbg !2418
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2419, metadata !DIExpression()), !dbg !2420
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2421
  %7 = load ptr, ptr %4, align 8, !dbg !2422
  %8 = load ptr, ptr %7, align 8, !dbg !2422
  store ptr %8, ptr %6, align 8, !dbg !2421
  ret void, !dbg !2423
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #5 comdat align 2 !dbg !2424 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2427, metadata !DIExpression()), !dbg !2428
  %5 = load ptr, ptr %3, align 8, !dbg !2429
  %6 = load i64, ptr %4, align 8, !dbg !2430
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !2431
  ret ptr %7, !dbg !2432
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #5 comdat align 2 !dbg !2433 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2436, metadata !DIExpression()), !dbg !2437
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2438, metadata !DIExpression()), !dbg !2439
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !2440
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !2442
  %10 = icmp ugt i64 %8, %9, !dbg !2443
  br i1 %10, label %11, label %16, !dbg !2444

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !2445
  %13 = icmp ugt i64 %12, 2305843009213693951, !dbg !2448
  br i1 %13, label %14, label %15, !dbg !2449

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #15, !dbg !2450
  unreachable, !dbg !2450

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #15, !dbg !2451
  unreachable, !dbg !2451

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !2452
  %18 = mul i64 %17, 8, !dbg !2453
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #17, !dbg !2454
  ret ptr %19, !dbg !2455
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #9 comdat align 2 !dbg !2456 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2457, metadata !DIExpression()), !dbg !2458
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2459, metadata !DIExpression()), !dbg !2460
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2461, metadata !DIExpression()), !dbg !2462
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2463, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2465, metadata !DIExpression()), !dbg !2466
  %10 = load ptr, ptr %6, align 8, !dbg !2467
  %11 = load ptr, ptr %7, align 8, !dbg !2468
  %12 = load ptr, ptr %8, align 8, !dbg !2469
  %13 = load ptr, ptr %9, align 8, !dbg !2470
  %14 = call noundef ptr @_ZSt12__relocate_aIPPN3ISG8RootNodeES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !2471
  ret ptr %14, !dbg !2472
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPPN3ISG8RootNodeES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #9 comdat !dbg !2473 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2481, metadata !DIExpression()), !dbg !2482
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2483, metadata !DIExpression()), !dbg !2484
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2485, metadata !DIExpression()), !dbg !2486
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2487, metadata !DIExpression()), !dbg !2488
  %9 = load ptr, ptr %5, align 8, !dbg !2489
  %10 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_(ptr noundef %9) #3, !dbg !2490
  %11 = load ptr, ptr %6, align 8, !dbg !2491
  %12 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_(ptr noundef %11) #3, !dbg !2492
  %13 = load ptr, ptr %7, align 8, !dbg !2493
  %14 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_(ptr noundef %13) #3, !dbg !2494
  %15 = load ptr, ptr %8, align 8, !dbg !2495
  %16 = call noundef ptr @_ZSt14__relocate_a_1IPN3ISG8RootNodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #3, !dbg !2496
  ret ptr %16, !dbg !2497
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN3ISG8RootNodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #9 comdat !dbg !2498 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2508, metadata !DIExpression()), !dbg !2509
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2512, metadata !DIExpression()), !dbg !2513
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2516, metadata !DIExpression()), !dbg !2517
  %10 = load ptr, ptr %6, align 8, !dbg !2518
  %11 = load ptr, ptr %5, align 8, !dbg !2519
  %12 = ptrtoint ptr %10 to i64, !dbg !2520
  %13 = ptrtoint ptr %11 to i64, !dbg !2520
  %14 = sub i64 %12, %13, !dbg !2520
  %15 = sdiv exact i64 %14, 8, !dbg !2520
  store i64 %15, ptr %9, align 8, !dbg !2517
  %16 = load i64, ptr %9, align 8, !dbg !2521
  %17 = icmp sgt i64 %16, 0, !dbg !2523
  br i1 %17, label %18, label %23, !dbg !2524

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !2525
  %20 = load ptr, ptr %5, align 8, !dbg !2526
  %21 = load i64, ptr %9, align 8, !dbg !2527
  %22 = mul i64 %21, 8, !dbg !2528
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 %22, i1 false), !dbg !2529
  br label %23, !dbg !2529

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8, !dbg !2530
  %25 = load i64, ptr %9, align 8, !dbg !2531
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !2532
  ret ptr %26, !dbg !2533
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_(ptr noundef %0) #9 comdat !dbg !2534 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2538
  %3 = load ptr, ptr %2, align 8, !dbg !2539
  ret ptr %3, !dbg !2540
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !2541 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2542, metadata !DIExpression()), !dbg !2543
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2544, metadata !DIExpression()), !dbg !2545
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2546, metadata !DIExpression()), !dbg !2547
  %7 = load ptr, ptr %4, align 8, !dbg !2548
  %8 = load ptr, ptr %5, align 8, !dbg !2549
  %9 = load i64, ptr %6, align 8, !dbg !2550
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !2551
  ret void, !dbg !2552
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #9 comdat align 2 !dbg !2553 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2554, metadata !DIExpression()), !dbg !2555
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2556, metadata !DIExpression()), !dbg !2557
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2558, metadata !DIExpression()), !dbg !2559
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2560
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !2561
  ret void, !dbg !2562
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #9 comdat align 2 !dbg !2563 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2566, metadata !DIExpression()), !dbg !2567
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !2568
  %9 = load ptr, ptr %8, align 8, !dbg !2568
  %10 = load i64, ptr %5, align 8, !dbg !2569
  %11 = sub i64 0, %10, !dbg !2570
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11, !dbg !2570
  store ptr %12, ptr %6, align 8, !dbg !2568
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2571
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2572
  %14 = load ptr, ptr %13, align 8, !dbg !2572
  ret ptr %14, !dbg !2572
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 comdat align 2 !dbg !2573 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2574, metadata !DIExpression()), !dbg !2575
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2576
  %5 = load ptr, ptr %4, align 8, !dbg !2576
  ret ptr %5, !dbg !2577
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_ISG.cxx() #0 section ".text.startup" !dbg !2578 {
  call void @__cxx_global_var_init(), !dbg !2580
  call void @__cxx_global_var_init.1(), !dbg !2580
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { allocsize(0) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936}
!llvm.ident = !{!1937}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !1927, line: 38, type: !1928, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !578, imports: !607, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/API/ISG.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/RTTL", checksumkind: CSK_MD5, checksum: "462b5deb6849bc40858a73db82cc7b09")
!11 = !{!12, !16, !17, !19, !22, !88, !47, !563, !505, !566, !23, !26, !29, !50, !56, !151}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "RootNode", scope: !15, file: !14, line: 207, size: 512, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3ISG8RootNodeE")
!14 = !DIFile(filename: "RTTL/API/ISG.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bd8d965ee637ae20cb7fa2e028035776")
!15 = !DINamespace(name: "ISG", scope: null)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !18, line: 424, baseType: !19, flags: DIFlagPublic)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !20, line: 280, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !23, file: !18, line: 419, baseType: !505, flags: DIFlagPublic)
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<ISG::RootNode *, std::allocator<ISG::RootNode *> >", scope: !2, file: !18, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !24, templateParams: !503, identifier: "_ZTSSt6vectorIPN3ISG8RootNodeESaIS2_EE")
!24 = !{!25, !245, !264, !280, !281, !287, !290, !293, !297, !303, !306, !312, !317, !321, !324, !327, !330, !333, !338, !339, !343, !346, !349, !352, !355, !358, !365, !366, !367, !372, !377, !378, !379, !380, !381, !382, !383, !386, !387, !390, !391, !392, !393, !396, !397, !405, !412, !415, !416, !417, !420, !423, !424, !425, !428, !431, !434, !438, !439, !442, !445, !448, !451, !454, !457, !460, !461, !462, !463, !464, !467, !468, !471, !472, !473, !480, !483, !488, !491, !494, !497, !500}
!25 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !23, baseType: !26, flags: DIFlagProtected, extraData: i32 0)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<ISG::RootNode *, std::allocator<ISG::RootNode *> >", scope: !2, file: !18, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !27, templateParams: !244, identifier: "_ZTSSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE")
!27 = !{!28, !195, !200, !205, !209, !212, !217, !220, !223, !227, !230, !233, !236, !237, !240, !243}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !26, file: !18, line: 340, baseType: !29, size: 192)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !26, file: !18, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !30, identifier: "_ZTSNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE12_Vector_implE")
!30 = !{!31, !150, !175, !179, !184, !188, !192}
!31 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !32, extraData: i32 0)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !26, file: !18, line: 87, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !35, file: !34, line: 120, baseType: !149)
!34 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<ISG::RootNode *>", scope: !36, file: !34, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !148, templateParams: !97, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E6rebindIS3_EE")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ISG::RootNode *>, ISG::RootNode *>", scope: !37, file: !34, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !38, templateParams: !146, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_EE")
!37 = !DINamespace(name: "__gnu_cxx", scope: null)
!38 = !{!39, !132, !135, !138, !142, !143, !144, !145}
!39 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !36, baseType: !40, extraData: i32 0)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ISG::RootNode *> >", scope: !2, file: !41, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !42, templateParams: !130, identifier: "_ZTSSt16allocator_traitsISaIPN3ISG8RootNodeEEE")
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!42 = !{!43, !114, !118, !121, !127}
!43 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_m", scope: !40, file: !41, line: 463, type: !44, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !48, !113}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !40, file: !41, line: 420, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !40, file: !41, line: 414, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ISG::RootNode *>", scope: !2, file: !51, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !52, templateParams: !97, identifier: "_ZTSSaIPN3ISG8RootNodeEE")
!51 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!52 = !{!53, !99, !103, !108, !112}
!53 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !50, baseType: !54, flags: DIFlagPublic, extraData: i32 0)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<ISG::RootNode *>", scope: !2, file: !55, line: 48, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!56 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<ISG::RootNode *>", scope: !37, file: !57, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !58, templateParams: !97, identifier: "_ZTSN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEEE")
!57 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!58 = !{!59, !63, !68, !69, !76, !84, !90, !93, !96}
!59 = !DISubprogram(name: "new_allocator", scope: !56, file: !57, line: 79, type: !60, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DISubprogram(name: "new_allocator", scope: !56, file: !57, line: 82, type: !64, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !62, !66}
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!68 = !DISubprogram(name: "~new_allocator", scope: !56, file: !57, line: 89, type: !60, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!69 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE7addressERS3_", scope: !56, file: !57, line: 92, type: !70, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !73, !74}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !56, file: !57, line: 62, baseType: !47, flags: DIFlagPublic)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !56, file: !57, line: 64, baseType: !75, flags: DIFlagPublic)
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!76 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE7addressERKS3_", scope: !56, file: !57, line: 96, type: !77, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !73, !82}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !56, file: !57, line: 63, baseType: !80, flags: DIFlagPublic)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !56, file: !57, line: 65, baseType: !83, flags: DIFlagPublic)
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !81, size: 64)
!84 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8allocateEmPKv", scope: !56, file: !57, line: 103, type: !85, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!47, !62, !87, !88}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !57, line: 59, baseType: !19, flags: DIFlagPublic)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!90 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE10deallocateEPS3_m", scope: !56, file: !57, line: 132, type: !91, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !62, !47, !87}
!93 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8max_sizeEv", scope: !56, file: !57, line: 154, type: !94, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!87, !73}
!96 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv", scope: !56, file: !57, line: 197, type: !94, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!97 = !{!98}
!98 = !DITemplateTypeParameter(name: "_Tp", type: !12)
!99 = !DISubprogram(name: "allocator", scope: !50, file: !51, line: 156, type: !100, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!103 = !DISubprogram(name: "allocator", scope: !50, file: !51, line: 159, type: !104, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !102, !106}
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!108 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIPN3ISG8RootNodeEEaSERKS2_", scope: !50, file: !51, line: 164, type: !109, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !102, !106}
!111 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 64)
!112 = !DISubprogram(name: "~allocator", scope: !50, file: !51, line: 174, type: !100, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !41, line: 435, baseType: !19)
!114 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_mPKv", scope: !40, file: !41, line: 477, type: !115, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!46, !48, !113, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !41, line: 429, baseType: !88)
!118 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE10deallocateERS3_PS2_m", scope: !40, file: !41, line: 495, type: !119, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !48, !46, !113}
!121 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8max_sizeERKS3_", scope: !40, file: !41, line: 547, type: !122, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !40, file: !41, line: 435, baseType: !19)
!125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!127 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE37select_on_container_copy_constructionERKS3_", scope: !40, file: !41, line: 562, type: !128, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!49, !125}
!130 = !{!131}
!131 = !DITemplateTypeParameter(name: "_Alloc", type: !50)
!132 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E17_S_select_on_copyERKS4_", scope: !36, file: !34, line: 97, type: !133, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{!50, !106}
!135 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E10_S_on_swapERS4_S6_", scope: !36, file: !34, line: 100, type: !136, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !111, !111}
!138 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E27_S_propagate_on_copy_assignEv", scope: !36, file: !34, line: 103, type: !139, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!141}
!141 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E27_S_propagate_on_move_assignEv", scope: !36, file: !34, line: 106, type: !139, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!143 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E20_S_propagate_on_swapEv", scope: !36, file: !34, line: 109, type: !139, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!144 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E15_S_always_equalEv", scope: !36, file: !34, line: 112, type: !139, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!145 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG8RootNodeEES3_E15_S_nothrow_moveEv", scope: !36, file: !34, line: 115, type: !139, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!146 = !{!131, !147}
!147 = !DITemplateTypeParameter(type: !12)
!148 = !{}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<ISG::RootNode *>", scope: !40, file: !41, line: 450, baseType: !50)
!150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !151, extraData: i32 0)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !26, file: !18, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !152, identifier: "_ZTSNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_dataE")
!152 = !{!153, !156, !157, !158, !162, !166, !171}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !151, file: !18, line: 93, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !26, file: !18, line: 89, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !36, file: !34, line: 57, baseType: !46)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !151, file: !18, line: 94, baseType: !154, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !151, file: !18, line: 95, baseType: !154, size: 64, offset: 128)
!158 = !DISubprogram(name: "_Vector_impl_data", scope: !151, file: !18, line: 97, type: !159, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!162 = !DISubprogram(name: "_Vector_impl_data", scope: !151, file: !18, line: 102, type: !163, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !161, !165}
!165 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !151, size: 64)
!166 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_data12_M_copy_dataERKS5_", scope: !151, file: !18, line: 109, type: !167, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !161, !169}
!169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!171 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_data12_M_swap_dataERS5_", scope: !151, file: !18, line: 117, type: !172, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !161, !174}
!174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !151, size: 64)
!175 = !DISubprogram(name: "_Vector_impl", scope: !29, file: !18, line: 131, type: !176, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DISubprogram(name: "_Vector_impl", scope: !29, file: !18, line: 136, type: !180, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !178, !182}
!182 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!184 = !DISubprogram(name: "_Vector_impl", scope: !29, file: !18, line: 143, type: !185, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !178, !187}
!187 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !29, size: 64)
!188 = !DISubprogram(name: "_Vector_impl", scope: !29, file: !18, line: 147, type: !189, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !178, !191}
!191 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !32, size: 64)
!192 = !DISubprogram(name: "_Vector_impl", scope: !29, file: !18, line: 151, type: !193, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !178, !191, !187}
!195 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !26, file: !18, line: 276, type: !196, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!200 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !26, file: !18, line: 280, type: !201, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!182, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!205 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13get_allocatorEv", scope: !26, file: !18, line: 284, type: !206, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !203}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !26, file: !18, line: 273, baseType: !50)
!209 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 288, type: !210, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !199}
!212 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 293, type: !213, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !199, !215}
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!217 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 298, type: !218, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !199, !19}
!220 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 303, type: !221, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !199, !19, !215}
!223 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 308, type: !224, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !199, !226}
!226 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !26, size: 64)
!227 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 312, type: !228, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !199, !191}
!230 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 315, type: !231, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !199, !226, !215}
!233 = !DISubprogram(name: "_Vector_base", scope: !26, file: !18, line: 328, type: !234, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !199, !215, !226}
!236 = !DISubprogram(name: "~_Vector_base", scope: !26, file: !18, line: 333, type: !210, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE11_M_allocateEm", scope: !26, file: !18, line: 343, type: !238, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!154, !199, !19}
!240 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13_M_deallocateEPS2_m", scope: !26, file: !18, line: 350, type: !241, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !199, !154, !19}
!243 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_M_create_storageEm", scope: !26, file: !18, line: 359, type: !218, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!244 = !{!98, !131}
!245 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !23, file: !18, line: 431, type: !246, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!141, !248}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !2, file: !249, line: 83, baseType: !250)
!249 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !2, file: !249, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !251, templateParams: !261, identifier: "_ZTSSt17integral_constantIbLb1EE")
!251 = !{!252, !254, !260}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !249, line: 67, baseType: !253, flags: DIFlagStaticMember, extraData: i1 true)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!254 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !250, file: !249, line: 70, type: !255, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !250, file: !249, line: 68, baseType: !141)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!260 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !250, file: !249, line: 75, type: !255, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!261 = !{!262, !263}
!262 = !DITemplateTypeParameter(name: "_Tp", type: !141)
!263 = !DITemplateValueParameter(name: "__v", type: !141, value: i1 true)
!264 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !23, file: !18, line: 440, type: !265, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!141, !267}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !2, file: !249, line: 86, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !2, file: !249, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !269, templateParams: !278, identifier: "_ZTSSt17integral_constantIbLb0EE")
!269 = !{!270, !271, !277}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !249, line: 67, baseType: !253, flags: DIFlagStaticMember, extraData: i1 false)
!271 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !268, file: !249, line: 70, type: !272, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !268, file: !249, line: 68, baseType: !141)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!277 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !268, file: !249, line: 75, type: !272, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!278 = !{!262, !279}
!279 = !DITemplateValueParameter(name: "__v", type: !141, value: i1 false)
!280 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE15_S_use_relocateEv", scope: !23, file: !18, line: 444, type: !139, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!281 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE", scope: !23, file: !18, line: 453, type: !282, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !284, !284, !284, !285, !248}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !23, file: !18, line: 415, baseType: !154, flags: DIFlagPublic)
!285 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !23, file: !18, line: 410, baseType: !32)
!287 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb0EE", scope: !23, file: !18, line: 460, type: !288, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!284, !284, !284, !284, !285, !267}
!290 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_", scope: !23, file: !18, line: 465, type: !291, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!284, !284, !284, !284, !285}
!293 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 487, type: !294, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!297 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 497, type: !298, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !296, !300}
!300 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !23, file: !18, line: 426, baseType: !50, flags: DIFlagPublic)
!303 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 510, type: !304, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !296, !17, !300}
!306 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 522, type: !307, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !296, !17, !309, !300}
!309 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !23, file: !18, line: 414, baseType: !12, flags: DIFlagPublic)
!312 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 553, type: !313, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !296, !315}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!317 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 572, type: !318, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !296, !320}
!320 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !23, size: 64)
!321 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 575, type: !322, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !296, !315, !300}
!324 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 585, type: !325, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !296, !320, !300, !248}
!327 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 589, type: !328, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !296, !320, !300, !267}
!330 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 607, type: !331, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !296, !320, !300}
!333 = !DISubprogram(name: "vector", scope: !23, file: !18, line: 625, type: !334, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !296, !336, !300}
!336 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<ISG::RootNode *>", scope: !2, file: !337, line: 47, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIPN3ISG8RootNodeEE")
!337 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!338 = !DISubprogram(name: "~vector", scope: !23, file: !18, line: 678, type: !294, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!339 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEaSERKS4_", scope: !23, file: !18, line: 695, type: !340, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !296, !315}
!342 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!343 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEaSEOS4_", scope: !23, file: !18, line: 709, type: !344, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!342, !296, !320}
!346 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEaSESt16initializer_listIS2_E", scope: !23, file: !18, line: 730, type: !347, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!342, !296, !336}
!349 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6assignEmRKS2_", scope: !23, file: !18, line: 749, type: !350, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !296, !17, !309}
!352 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6assignESt16initializer_listIS2_E", scope: !23, file: !18, line: 794, type: !353, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !296, !336}
!355 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv", scope: !23, file: !18, line: 811, type: !356, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!22, !296}
!358 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv", scope: !23, file: !18, line: 820, type: !359, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !364}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !23, file: !18, line: 421, baseType: !362, flags: DIFlagPublic)
!362 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<ISG::RootNode *const *, std::vector<ISG::RootNode *, std::allocator<ISG::RootNode *> > >", scope: !37, file: !363, line: 1004, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEE")
!363 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!365 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv", scope: !23, file: !18, line: 829, type: !356, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!366 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv", scope: !23, file: !18, line: 838, type: !359, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6rbeginEv", scope: !23, file: !18, line: 847, type: !368, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !296}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !23, file: !18, line: 423, baseType: !371, flags: DIFlagPublic)
!371 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<ISG::RootNode **, std::vector<ISG::RootNode *, std::allocator<ISG::RootNode *> > > >", scope: !2, file: !363, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS4_SaIS4_EEEEE")
!372 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE6rbeginEv", scope: !23, file: !18, line: 856, type: !373, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{!375, !364}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !23, file: !18, line: 422, baseType: !376, flags: DIFlagPublic)
!376 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<ISG::RootNode *const *, std::vector<ISG::RootNode *, std::allocator<ISG::RootNode *> > > >", scope: !2, file: !363, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN3ISG8RootNodeESt6vectorIS4_SaIS4_EEEEE")
!377 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4rendEv", scope: !23, file: !18, line: 865, type: !368, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!378 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4rendEv", scope: !23, file: !18, line: 874, type: !373, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!379 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE6cbeginEv", scope: !23, file: !18, line: 884, type: !359, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!380 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4cendEv", scope: !23, file: !18, line: 893, type: !359, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE7crbeginEv", scope: !23, file: !18, line: 902, type: !373, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE5crendEv", scope: !23, file: !18, line: 911, type: !373, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!383 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv", scope: !23, file: !18, line: 918, type: !384, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!17, !364}
!386 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv", scope: !23, file: !18, line: 923, type: !384, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6resizeEm", scope: !23, file: !18, line: 937, type: !388, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !296, !17}
!390 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6resizeEmRKS2_", scope: !23, file: !18, line: 957, type: !350, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE13shrink_to_fitEv", scope: !23, file: !18, line: 989, type: !294, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!392 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8capacityEv", scope: !23, file: !18, line: 998, type: !384, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!393 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE5emptyEv", scope: !23, file: !18, line: 1007, type: !394, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!141, !364}
!396 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE7reserveEm", scope: !23, file: !18, line: 1028, type: !388, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEixEm", scope: !23, file: !18, line: 1043, type: !398, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubroutineType(types: !399)
!399 = !{!400, !296, !17}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !23, file: !18, line: 417, baseType: !401, flags: DIFlagPublic)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !36, file: !34, line: 62, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !36, file: !34, line: 56, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !40, file: !41, line: 417, baseType: !12)
!405 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EEixEm", scope: !23, file: !18, line: 1061, type: !406, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !364, !17}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !23, file: !18, line: 418, baseType: !409, flags: DIFlagPublic)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !36, file: !34, line: 63, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!412 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_range_checkEm", scope: !23, file: !18, line: 1070, type: !413, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !364, !17}
!415 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE2atEm", scope: !23, file: !18, line: 1092, type: !398, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!416 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE2atEm", scope: !23, file: !18, line: 1110, type: !406, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!417 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5frontEv", scope: !23, file: !18, line: 1121, type: !418, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!400, !296}
!420 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE5frontEv", scope: !23, file: !18, line: 1132, type: !421, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!408, !364}
!423 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv", scope: !23, file: !18, line: 1143, type: !418, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!424 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv", scope: !23, file: !18, line: 1154, type: !421, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!425 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4dataEv", scope: !23, file: !18, line: 1168, type: !426, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!47, !296}
!428 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4dataEv", scope: !23, file: !18, line: 1172, type: !429, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!80, !364}
!431 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backERKS2_", scope: !23, file: !18, line: 1187, type: !432, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !296, !309}
!434 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backEOS2_", scope: !23, file: !18, line: 1203, type: !435, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !296, !437}
!437 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !311, size: 64)
!438 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE8pop_backEv", scope: !23, file: !18, line: 1225, type: !294, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!439 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_", scope: !23, file: !18, line: 1263, type: !440, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!22, !296, !361, !309}
!442 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !23, file: !18, line: 1293, type: !443, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!22, !296, !361, !437}
!445 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EESt16initializer_listIS2_E", scope: !23, file: !18, line: 1310, type: !446, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!22, !296, !361, !336}
!448 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEmRS7_", scope: !23, file: !18, line: 1335, type: !449, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!22, !296, !361, !17, !309}
!451 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE", scope: !23, file: !18, line: 1430, type: !452, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!22, !296, !361}
!454 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_", scope: !23, file: !18, line: 1457, type: !455, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!22, !296, !361, !361}
!457 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4swapERS4_", scope: !23, file: !18, line: 1480, type: !458, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !296, !342}
!460 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5clearEv", scope: !23, file: !18, line: 1498, type: !294, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE18_M_fill_initializeEmRKS2_", scope: !23, file: !18, line: 1593, type: !350, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!462 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE21_M_default_initializeEm", scope: !23, file: !18, line: 1603, type: !388, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!463 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_fill_assignEmRKS2_", scope: !23, file: !18, line: 1645, type: !350, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!464 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_", scope: !23, file: !18, line: 1684, type: !465, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !296, !22, !17, !309}
!467 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_default_appendEm", scope: !23, file: !18, line: 1689, type: !388, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!468 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE16_M_shrink_to_fitEv", scope: !23, file: !18, line: 1692, type: !469, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!141, !296}
!471 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !23, file: !18, line: 1741, type: !443, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!472 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !23, file: !18, line: 1750, type: !443, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!473 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE12_M_check_lenEmPKc", scope: !23, file: !18, line: 1756, type: !474, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !364, !17, !477}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !23, file: !18, line: 424, baseType: !19, flags: DIFlagPublic)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!480 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_S_check_init_lenEmRKS3_", scope: !23, file: !18, line: 1767, type: !481, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!476, !17, !300}
!483 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_max_sizeERKS3_", scope: !23, file: !18, line: 1776, type: !484, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!476, !486}
!486 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!488 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE15_M_erase_at_endEPS2_", scope: !23, file: !18, line: 1792, type: !489, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !296, !284}
!491 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE", scope: !23, file: !18, line: 1804, type: !492, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!22, !296, !22}
!494 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_", scope: !23, file: !18, line: 1807, type: !495, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!22, !296, !22, !22}
!497 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE", scope: !23, file: !18, line: 1815, type: !498, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !296, !320, !248}
!500 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb0EE", scope: !23, file: !18, line: 1826, type: !501, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !296, !320, !267}
!503 = !{!98, !504}
!504 = !DITemplateTypeParameter(name: "_Alloc", type: !50, defaulted: true)
!505 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<ISG::RootNode **, std::vector<ISG::RootNode *, std::allocator<ISG::RootNode *> > >", scope: !37, file: !363, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !506, templateParams: !561, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEE")
!506 = !{!507, !508, !512, !517, !528, !533, !537, !541, !542, !543, !550, !553, !556, !557, !558}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !505, file: !363, line: 1007, baseType: !47, size: 64, flags: DIFlagProtected)
!508 = !DISubprogram(name: "__normal_iterator", scope: !505, file: !363, line: 1023, type: !509, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = !DISubprogram(name: "__normal_iterator", scope: !505, file: !363, line: 1027, type: !513, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !511, !515}
!515 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!517 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEdeEv", scope: !505, file: !363, line: 1042, type: !518, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !526}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !505, file: !363, line: 1016, baseType: !521, flags: DIFlagPublic)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !523, file: !522, line: 216, baseType: !75)
!522 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<ISG::RootNode **>", scope: !2, file: !522, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !148, templateParams: !524, identifier: "_ZTSSt15iterator_traitsIPPN3ISG8RootNodeEE")
!524 = !{!525}
!525 = !DITemplateTypeParameter(name: "_Iterator", type: !47)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!528 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEptEv", scope: !505, file: !363, line: 1047, type: !529, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !526}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !505, file: !363, line: 1017, baseType: !532, flags: DIFlagPublic)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !523, file: !522, line: 215, baseType: !47)
!533 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEppEv", scope: !505, file: !363, line: 1052, type: !534, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !511}
!536 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !505, size: 64)
!537 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEppEi", scope: !505, file: !363, line: 1060, type: !538, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!505, !511, !540}
!540 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!541 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmmEv", scope: !505, file: !363, line: 1066, type: !534, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmmEi", scope: !505, file: !363, line: 1074, type: !538, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!543 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEixEl", scope: !505, file: !363, line: 1080, type: !544, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!520, !526, !546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !505, file: !363, line: 1015, baseType: !547, flags: DIFlagPublic)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !523, file: !522, line: 214, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !20, line: 281, baseType: !549)
!549 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!550 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEpLEl", scope: !505, file: !363, line: 1085, type: !551, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!536, !511, !546}
!553 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEplEl", scope: !505, file: !363, line: 1090, type: !554, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!505, !526, !546}
!556 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmIEl", scope: !505, file: !363, line: 1095, type: !551, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!557 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmiEl", scope: !505, file: !363, line: 1100, type: !554, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !505, file: !363, line: 1105, type: !559, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!515, !526}
!561 = !{!525, !562}
!562 = !DITemplateTypeParameter(name: "_Container", type: !23)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !564, file: !18, line: 468, baseType: !565)
!564 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_", scope: !23, file: !18, line: 465, type: !291, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !290, retainedNodes: !148)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !2, file: !249, line: 91, baseType: !250)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !567, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !568, identifier: "_ZTS5sse_f")
!567 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!568 = !{!569, !574}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !566, file: !567, line: 23, baseType: !570, size: 128)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 128, elements: !572)
!571 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!572 = !{!573}
!573 = !DISubrange(count: 4)
!574 = !DISubprogram(name: "sse_f", scope: !566, file: !567, line: 21, type: !575, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!578 = !{!0, !7, !579, !582, !601}
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "current_timestamp", linkageName: "_ZN3ISG17current_timestampE", scope: !15, file: !581, line: 5, type: !540, isLocal: false, isDefinition: true)
!581 = !DIFile(filename: "RTTL/API/ISG.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "462b5deb6849bc40858a73db82cc7b09")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "m_default", linkageName: "_ZN3ISG5World9m_defaultE", scope: !15, file: !581, line: 8, type: !584, isLocal: false, isDefinition: true, declaration: !593)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "World", scope: !15, file: !14, line: 263, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !586, vtableHolder: !585, identifier: "_ZTSN3ISG5WorldE")
!586 = !{!587, !592, !593, !594, !597}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$World", scope: !14, file: !14, baseType: !588, size: 64, flags: DIFlagArtificial)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!540}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rootNode", scope: !585, file: !14, line: 265, baseType: !23, size: 192, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "m_default", scope: !585, file: !14, line: 272, baseType: !584, flags: DIFlagPrivate | DIFlagStaticMember)
!594 = !DISubprogram(name: "getDefaultWorld", linkageName: "_ZN3ISG5World15getDefaultWorldEv", scope: !585, file: !14, line: 267, type: !595, scopeLine: 267, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{!584}
!597 = !DISubprogram(name: "makeDefault", linkageName: "_ZN3ISG5World11makeDefaultEv", scope: !585, file: !14, line: 269, type: !598, scopeLine: 269, containingType: !585, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !603, line: 436, type: !604, isLocal: true, isDefinition: true)
!603 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 208, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 26)
!607 = !{!608, !614, !618, !624, !628, !634, !639, !641, !646, !650, !654, !662, !664, !668, !672, !676, !681, !685, !689, !693, !697, !705, !709, !713, !715, !717, !721, !726, !732, !736, !740, !742, !750, !754, !761, !763, !767, !771, !775, !779, !784, !788, !793, !794, !795, !796, !798, !799, !800, !801, !802, !803, !804, !806, !807, !808, !809, !810, !811, !812, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !847, !849, !851, !855, !857, !859, !861, !863, !865, !867, !869, !874, !878, !880, !882, !887, !889, !891, !893, !895, !897, !899, !902, !904, !906, !910, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !938, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !976, !980, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1006, !1010, !1014, !1016, !1018, !1020, !1024, !1028, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1060, !1064, !1068, !1070, !1072, !1074, !1076, !1080, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1100, !1104, !1106, !1108, !1110, !1112, !1116, !1120, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1140, !1144, !1148, !1150, !1154, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1174, !1176, !1181, !1196, !1199, !1204, !1213, !1218, !1222, !1226, !1230, !1234, !1236, !1238, !1242, !1248, !1252, !1258, !1264, !1266, !1270, !1274, !1278, !1282, !1294, !1296, !1300, !1304, !1308, !1310, !1314, !1318, !1322, !1324, !1326, !1330, !1338, !1342, !1346, !1350, !1352, !1358, !1360, !1366, !1370, !1374, !1378, !1382, !1386, !1390, !1392, !1394, !1398, !1402, !1406, !1408, !1412, !1416, !1418, !1420, !1424, !1428, !1432, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1450, !1454, !1461, !1465, !1468, !1471, !1474, !1476, !1478, !1480, !1483, !1486, !1489, !1492, !1495, !1497, !1502, !1506, !1509, !1512, !1514, !1516, !1518, !1520, !1523, !1526, !1529, !1532, !1535, !1537, !1541, !1545, !1550, !1554, !1556, !1558, !1560, !1562, !1564, !1566, !1568, !1570, !1572, !1574, !1576, !1578, !1580, !1584, !1590, !1595, !1599, !1601, !1603, !1605, !1607, !1614, !1618, !1622, !1626, !1630, !1634, !1639, !1643, !1645, !1649, !1655, !1659, !1664, !1666, !1668, !1672, !1676, !1678, !1680, !1682, !1684, !1688, !1690, !1692, !1696, !1700, !1704, !1708, !1712, !1716, !1718, !1722, !1726, !1730, !1734, !1736, !1738, !1742, !1746, !1747, !1748, !1749, !1750, !1751, !1757, !1760, !1761, !1763, !1765, !1767, !1769, !1773, !1775, !1777, !1779, !1781, !1783, !1785, !1787, !1789, !1793, !1797, !1799, !1803, !1807, !1809, !1811, !1817, !1821, !1825, !1829, !1833, !1837, !1839, !1841, !1843, !1847, !1851, !1855, !1859, !1863, !1865, !1867, !1869, !1873, !1877, !1881, !1883, !1885, !1924, !1926}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !613, line: 52)
!609 = !DISubprogram(name: "abs", scope: !610, file: !610, line: 848, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!611 = !DISubroutineType(types: !612)
!612 = !{!540, !540}
!613 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !617, line: 127)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !610, line: 63, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!617 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !617, line: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !610, line: 71, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !621, identifier: "_ZTS6ldiv_t")
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !620, file: !610, line: 69, baseType: !549, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !620, file: !610, line: 70, baseType: !549, size: 64, offset: 64)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !625, file: !617, line: 130)
!625 = !DISubprogram(name: "abort", scope: !610, file: !610, line: 598, type: !626, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{null}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !617, line: 132)
!629 = !DISubprogram(name: "aligned_alloc", scope: !610, file: !610, line: 592, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!16, !632, !632}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !633, line: 46, baseType: !21)
!633 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !617, line: 134)
!635 = !DISubprogram(name: "atexit", scope: !610, file: !610, line: 602, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{!540, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !617, line: 137)
!640 = !DISubprogram(name: "at_quick_exit", scope: !610, file: !610, line: 607, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !617, line: 140)
!642 = !DISubprogram(name: "atof", scope: !610, file: !610, line: 102, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !477}
!645 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !617, line: 141)
!647 = !DISubprogram(name: "atoi", scope: !610, file: !610, line: 105, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!540, !477}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !617, line: 142)
!651 = !DISubprogram(name: "atol", scope: !610, file: !610, line: 108, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!549, !477}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !617, line: 143)
!655 = !DISubprogram(name: "bsearch", scope: !610, file: !610, line: 828, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!16, !88, !88, !632, !632, !658}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !610, line: 816, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!540, !88, !88}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !617, line: 144)
!663 = !DISubprogram(name: "calloc", scope: !610, file: !610, line: 543, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !617, line: 145)
!665 = !DISubprogram(name: "div", scope: !610, file: !610, line: 860, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!615, !540, !540}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !617, line: 146)
!669 = !DISubprogram(name: "exit", scope: !610, file: !610, line: 624, type: !670, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !540}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !617, line: 147)
!673 = !DISubprogram(name: "free", scope: !610, file: !610, line: 555, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !16}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !617, line: 148)
!677 = !DISubprogram(name: "getenv", scope: !610, file: !610, line: 641, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!680, !477}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !617, line: 149)
!682 = !DISubprogram(name: "labs", scope: !610, file: !610, line: 849, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!549, !549}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !617, line: 150)
!686 = !DISubprogram(name: "ldiv", scope: !610, file: !610, line: 862, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!619, !549, !549}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !617, line: 151)
!690 = !DISubprogram(name: "malloc", scope: !610, file: !610, line: 540, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!16, !632}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !617, line: 153)
!694 = !DISubprogram(name: "mblen", scope: !610, file: !610, line: 930, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!540, !477, !632}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !617, line: 154)
!698 = !DISubprogram(name: "mbstowcs", scope: !610, file: !610, line: 941, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!632, !701, !704, !632}
!701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !477)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !617, line: 155)
!706 = !DISubprogram(name: "mbtowc", scope: !610, file: !610, line: 933, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{!540, !701, !704, !632}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !617, line: 157)
!710 = !DISubprogram(name: "qsort", scope: !610, file: !610, line: 838, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !16, !632, !632, !658}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !617, line: 160)
!714 = !DISubprogram(name: "quick_exit", scope: !610, file: !610, line: 630, type: !670, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !617, line: 163)
!716 = !DISubprogram(name: "rand", scope: !610, file: !610, line: 454, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !718, file: !617, line: 164)
!718 = !DISubprogram(name: "realloc", scope: !610, file: !610, line: 551, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!16, !16, !632}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !617, line: 165)
!722 = !DISubprogram(name: "srand", scope: !610, file: !610, line: 456, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725}
!725 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !617, line: 166)
!727 = !DISubprogram(name: "strtod", scope: !610, file: !610, line: 118, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!645, !704, !730}
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !617, line: 167)
!733 = !DISubprogram(name: "strtol", scope: !610, file: !610, line: 177, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!549, !704, !730, !540}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !617, line: 168)
!737 = !DISubprogram(name: "strtoul", scope: !610, file: !610, line: 181, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!21, !704, !730, !540}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !617, line: 169)
!741 = !DISubprogram(name: "system", scope: !610, file: !610, line: 791, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !617, line: 171)
!743 = !DISubprogram(name: "wcstombs", scope: !610, file: !610, line: 945, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!632, !746, !747, !632}
!746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !680)
!747 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !617, line: 172)
!751 = !DISubprogram(name: "wctomb", scope: !610, file: !610, line: 937, type: !752, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DISubroutineType(types: !753)
!753 = !{!540, !680, !703}
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !755, file: !617, line: 200)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !610, line: 81, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !757, identifier: "_ZTS7lldiv_t")
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !756, file: !610, line: 79, baseType: !759, size: 64)
!759 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !756, file: !610, line: 80, baseType: !759, size: 64, offset: 64)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !762, file: !617, line: 206)
!762 = !DISubprogram(name: "_Exit", scope: !610, file: !610, line: 636, type: !670, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !764, file: !617, line: 210)
!764 = !DISubprogram(name: "llabs", scope: !610, file: !610, line: 852, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!759, !759}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !768, file: !617, line: 216)
!768 = !DISubprogram(name: "lldiv", scope: !610, file: !610, line: 866, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!755, !759, !759}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !772, file: !617, line: 227)
!772 = !DISubprogram(name: "atoll", scope: !610, file: !610, line: 113, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!759, !477}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !776, file: !617, line: 228)
!776 = !DISubprogram(name: "strtoll", scope: !610, file: !610, line: 201, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!759, !704, !730, !540}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !780, file: !617, line: 229)
!780 = !DISubprogram(name: "strtoull", scope: !610, file: !610, line: 206, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !704, !730, !540}
!783 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !785, file: !617, line: 231)
!785 = !DISubprogram(name: "strtof", scope: !610, file: !610, line: 124, type: !786, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DISubroutineType(types: !787)
!787 = !{!571, !704, !730}
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !789, file: !617, line: 232)
!789 = !DISubprogram(name: "strtold", scope: !610, file: !610, line: 127, type: !790, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!792, !704, !730}
!792 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !617, line: 240)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !617, line: 242)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !764, file: !617, line: 244)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !617, line: 245)
!797 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !37, file: !617, line: 213, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !768, file: !617, line: 246)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !617, line: 248)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !617, line: 249)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !617, line: 250)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !617, line: 251)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !617, line: 252)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !625, file: !805, line: 38)
!805 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !635, file: !805, line: 39)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !669, file: !805, line: 40)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !640, file: !805, line: 43)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !714, file: !805, line: 46)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !615, file: !805, line: 51)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !619, file: !805, line: 52)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !813, file: !805, line: 54)
!813 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !2, file: !613, line: 103, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !816}
!816 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !642, file: !805, line: 55)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !647, file: !805, line: 56)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !651, file: !805, line: 57)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !655, file: !805, line: 58)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !663, file: !805, line: 59)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !797, file: !805, line: 60)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !673, file: !805, line: 61)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !677, file: !805, line: 62)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !682, file: !805, line: 63)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !686, file: !805, line: 64)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !690, file: !805, line: 65)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !694, file: !805, line: 67)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !698, file: !805, line: 68)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !706, file: !805, line: 69)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !710, file: !805, line: 71)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !716, file: !805, line: 72)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !718, file: !805, line: 73)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !722, file: !805, line: 74)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !727, file: !805, line: 75)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !733, file: !805, line: 76)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !737, file: !805, line: 77)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !741, file: !805, line: 78)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !743, file: !805, line: 80)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !751, file: !805, line: 81)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !846, line: 83)
!842 = !DISubprogram(name: "acos", scope: !843, file: !843, line: 53, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!844 = !DISubroutineType(types: !845)
!845 = !{!645, !645}
!846 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !848, file: !846, line: 102)
!848 = !DISubprogram(name: "asin", scope: !843, file: !843, line: 55, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !846, line: 121)
!850 = !DISubprogram(name: "atan", scope: !843, file: !843, line: 57, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !852, file: !846, line: 140)
!852 = !DISubprogram(name: "atan2", scope: !843, file: !843, line: 59, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!645, !645, !645}
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !846, line: 161)
!856 = !DISubprogram(name: "ceil", scope: !843, file: !843, line: 159, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !846, line: 180)
!858 = !DISubprogram(name: "cos", scope: !843, file: !843, line: 62, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !846, line: 199)
!860 = !DISubprogram(name: "cosh", scope: !843, file: !843, line: 71, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !846, line: 218)
!862 = !DISubprogram(name: "exp", scope: !843, file: !843, line: 95, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !846, line: 237)
!864 = !DISubprogram(name: "fabs", scope: !843, file: !843, line: 162, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !846, line: 256)
!866 = !DISubprogram(name: "floor", scope: !843, file: !843, line: 165, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !846, line: 275)
!868 = !DISubprogram(name: "fmod", scope: !843, file: !843, line: 168, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !846, line: 296)
!870 = !DISubprogram(name: "frexp", scope: !843, file: !843, line: 98, type: !871, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!645, !645, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !846, line: 315)
!875 = !DISubprogram(name: "ldexp", scope: !843, file: !843, line: 101, type: !876, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{!645, !645, !540}
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !846, line: 334)
!879 = !DISubprogram(name: "log", scope: !843, file: !843, line: 104, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !846, line: 353)
!881 = !DISubprogram(name: "log10", scope: !843, file: !843, line: 107, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !846, line: 372)
!883 = !DISubprogram(name: "modf", scope: !843, file: !843, line: 110, type: !884, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DISubroutineType(types: !885)
!885 = !{!645, !645, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !846, line: 384)
!888 = !DISubprogram(name: "pow", scope: !843, file: !843, line: 140, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !846, line: 421)
!890 = !DISubprogram(name: "sin", scope: !843, file: !843, line: 64, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !846, line: 440)
!892 = !DISubprogram(name: "sinh", scope: !843, file: !843, line: 73, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !846, line: 459)
!894 = !DISubprogram(name: "sqrt", scope: !843, file: !843, line: 143, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !846, line: 478)
!896 = !DISubprogram(name: "tan", scope: !843, file: !843, line: 66, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !846, line: 497)
!898 = !DISubprogram(name: "tanh", scope: !843, file: !843, line: 75, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !846, line: 1065)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !901, line: 164, baseType: !645)
!901 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !846, line: 1066)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !901, line: 163, baseType: !571)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !846, line: 1069)
!905 = !DISubprogram(name: "acosh", scope: !843, file: !843, line: 85, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !907, file: !846, line: 1070)
!907 = !DISubprogram(name: "acoshf", scope: !843, file: !843, line: 85, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!908 = !DISubroutineType(types: !909)
!909 = !{!571, !571}
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !846, line: 1071)
!911 = !DISubprogram(name: "acoshl", scope: !843, file: !843, line: 85, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!792, !792}
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !915, file: !846, line: 1073)
!915 = !DISubprogram(name: "asinh", scope: !843, file: !843, line: 87, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !846, line: 1074)
!917 = !DISubprogram(name: "asinhf", scope: !843, file: !843, line: 87, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !846, line: 1075)
!919 = !DISubprogram(name: "asinhl", scope: !843, file: !843, line: 87, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !846, line: 1077)
!921 = !DISubprogram(name: "atanh", scope: !843, file: !843, line: 89, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !846, line: 1078)
!923 = !DISubprogram(name: "atanhf", scope: !843, file: !843, line: 89, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !925, file: !846, line: 1079)
!925 = !DISubprogram(name: "atanhl", scope: !843, file: !843, line: 89, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !846, line: 1081)
!927 = !DISubprogram(name: "cbrt", scope: !843, file: !843, line: 152, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !846, line: 1082)
!929 = !DISubprogram(name: "cbrtf", scope: !843, file: !843, line: 152, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !931, file: !846, line: 1083)
!931 = !DISubprogram(name: "cbrtl", scope: !843, file: !843, line: 152, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !933, file: !846, line: 1085)
!933 = !DISubprogram(name: "copysign", scope: !843, file: !843, line: 198, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !846, line: 1086)
!935 = !DISubprogram(name: "copysignf", scope: !843, file: !843, line: 198, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!571, !571, !571}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !846, line: 1087)
!939 = !DISubprogram(name: "copysignl", scope: !843, file: !843, line: 198, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!792, !792, !792}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !846, line: 1089)
!943 = !DISubprogram(name: "erf", scope: !843, file: !843, line: 231, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !846, line: 1090)
!945 = !DISubprogram(name: "erff", scope: !843, file: !843, line: 231, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !947, file: !846, line: 1091)
!947 = !DISubprogram(name: "erfl", scope: !843, file: !843, line: 231, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !949, file: !846, line: 1093)
!949 = !DISubprogram(name: "erfc", scope: !843, file: !843, line: 232, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !951, file: !846, line: 1094)
!951 = !DISubprogram(name: "erfcf", scope: !843, file: !843, line: 232, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !846, line: 1095)
!953 = !DISubprogram(name: "erfcl", scope: !843, file: !843, line: 232, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !846, line: 1097)
!955 = !DISubprogram(name: "exp2", scope: !843, file: !843, line: 130, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !846, line: 1098)
!957 = !DISubprogram(name: "exp2f", scope: !843, file: !843, line: 130, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !846, line: 1099)
!959 = !DISubprogram(name: "exp2l", scope: !843, file: !843, line: 130, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !846, line: 1101)
!961 = !DISubprogram(name: "expm1", scope: !843, file: !843, line: 119, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !846, line: 1102)
!963 = !DISubprogram(name: "expm1f", scope: !843, file: !843, line: 119, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !846, line: 1103)
!965 = !DISubprogram(name: "expm1l", scope: !843, file: !843, line: 119, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !846, line: 1105)
!967 = !DISubprogram(name: "fdim", scope: !843, file: !843, line: 329, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !846, line: 1106)
!969 = !DISubprogram(name: "fdimf", scope: !843, file: !843, line: 329, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !846, line: 1107)
!971 = !DISubprogram(name: "fdiml", scope: !843, file: !843, line: 329, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !846, line: 1109)
!973 = !DISubprogram(name: "fma", scope: !843, file: !843, line: 340, type: !974, flags: DIFlagPrototyped, spFlags: 0)
!974 = !DISubroutineType(types: !975)
!975 = !{!645, !645, !645, !645}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !846, line: 1110)
!977 = !DISubprogram(name: "fmaf", scope: !843, file: !843, line: 340, type: !978, flags: DIFlagPrototyped, spFlags: 0)
!978 = !DISubroutineType(types: !979)
!979 = !{!571, !571, !571, !571}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !846, line: 1111)
!981 = !DISubprogram(name: "fmal", scope: !843, file: !843, line: 340, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{!792, !792, !792, !792}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !846, line: 1113)
!985 = !DISubprogram(name: "fmax", scope: !843, file: !843, line: 333, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !987, file: !846, line: 1114)
!987 = !DISubprogram(name: "fmaxf", scope: !843, file: !843, line: 333, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !846, line: 1115)
!989 = !DISubprogram(name: "fmaxl", scope: !843, file: !843, line: 333, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !991, file: !846, line: 1117)
!991 = !DISubprogram(name: "fmin", scope: !843, file: !843, line: 336, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !846, line: 1118)
!993 = !DISubprogram(name: "fminf", scope: !843, file: !843, line: 336, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !995, file: !846, line: 1119)
!995 = !DISubprogram(name: "fminl", scope: !843, file: !843, line: 336, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !846, line: 1121)
!997 = !DISubprogram(name: "hypot", scope: !843, file: !843, line: 147, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !846, line: 1122)
!999 = !DISubprogram(name: "hypotf", scope: !843, file: !843, line: 147, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !846, line: 1123)
!1001 = !DISubprogram(name: "hypotl", scope: !843, file: !843, line: 147, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !846, line: 1125)
!1003 = !DISubprogram(name: "ilogb", scope: !843, file: !843, line: 283, type: !1004, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!540, !645}
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1007, file: !846, line: 1126)
!1007 = !DISubprogram(name: "ilogbf", scope: !843, file: !843, line: 283, type: !1008, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!540, !571}
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1011, file: !846, line: 1127)
!1011 = !DISubprogram(name: "ilogbl", scope: !843, file: !843, line: 283, type: !1012, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!540, !792}
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !846, line: 1129)
!1015 = !DISubprogram(name: "lgamma", scope: !843, file: !843, line: 233, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1017, file: !846, line: 1130)
!1017 = !DISubprogram(name: "lgammaf", scope: !843, file: !843, line: 233, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !846, line: 1131)
!1019 = !DISubprogram(name: "lgammal", scope: !843, file: !843, line: 233, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !846, line: 1134)
!1021 = !DISubprogram(name: "llrint", scope: !843, file: !843, line: 319, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!759, !645}
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !846, line: 1135)
!1025 = !DISubprogram(name: "llrintf", scope: !843, file: !843, line: 319, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!759, !571}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !846, line: 1136)
!1029 = !DISubprogram(name: "llrintl", scope: !843, file: !843, line: 319, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!759, !792}
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !846, line: 1138)
!1033 = !DISubprogram(name: "llround", scope: !843, file: !843, line: 325, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !846, line: 1139)
!1035 = !DISubprogram(name: "llroundf", scope: !843, file: !843, line: 325, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !846, line: 1140)
!1037 = !DISubprogram(name: "llroundl", scope: !843, file: !843, line: 325, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !846, line: 1143)
!1039 = !DISubprogram(name: "log1p", scope: !843, file: !843, line: 122, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !846, line: 1144)
!1041 = !DISubprogram(name: "log1pf", scope: !843, file: !843, line: 122, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !846, line: 1145)
!1043 = !DISubprogram(name: "log1pl", scope: !843, file: !843, line: 122, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !846, line: 1147)
!1045 = !DISubprogram(name: "log2", scope: !843, file: !843, line: 133, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1047, file: !846, line: 1148)
!1047 = !DISubprogram(name: "log2f", scope: !843, file: !843, line: 133, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !846, line: 1149)
!1049 = !DISubprogram(name: "log2l", scope: !843, file: !843, line: 133, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !846, line: 1151)
!1051 = !DISubprogram(name: "logb", scope: !843, file: !843, line: 125, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !846, line: 1152)
!1053 = !DISubprogram(name: "logbf", scope: !843, file: !843, line: 125, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !846, line: 1153)
!1055 = !DISubprogram(name: "logbl", scope: !843, file: !843, line: 125, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !846, line: 1155)
!1057 = !DISubprogram(name: "lrint", scope: !843, file: !843, line: 317, type: !1058, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!549, !645}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !846, line: 1156)
!1061 = !DISubprogram(name: "lrintf", scope: !843, file: !843, line: 317, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!549, !571}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !846, line: 1157)
!1065 = !DISubprogram(name: "lrintl", scope: !843, file: !843, line: 317, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!549, !792}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !846, line: 1159)
!1069 = !DISubprogram(name: "lround", scope: !843, file: !843, line: 323, type: !1058, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !846, line: 1160)
!1071 = !DISubprogram(name: "lroundf", scope: !843, file: !843, line: 323, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !846, line: 1161)
!1073 = !DISubprogram(name: "lroundl", scope: !843, file: !843, line: 323, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !846, line: 1163)
!1075 = !DISubprogram(name: "nan", scope: !843, file: !843, line: 203, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1077, file: !846, line: 1164)
!1077 = !DISubprogram(name: "nanf", scope: !843, file: !843, line: 203, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!571, !477}
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1081, file: !846, line: 1165)
!1081 = !DISubprogram(name: "nanl", scope: !843, file: !843, line: 203, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!792, !477}
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1085, file: !846, line: 1167)
!1085 = !DISubprogram(name: "nearbyint", scope: !843, file: !843, line: 297, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !846, line: 1168)
!1087 = !DISubprogram(name: "nearbyintf", scope: !843, file: !843, line: 297, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !846, line: 1169)
!1089 = !DISubprogram(name: "nearbyintl", scope: !843, file: !843, line: 297, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1091, file: !846, line: 1171)
!1091 = !DISubprogram(name: "nextafter", scope: !843, file: !843, line: 262, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !846, line: 1172)
!1093 = !DISubprogram(name: "nextafterf", scope: !843, file: !843, line: 262, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1095, file: !846, line: 1173)
!1095 = !DISubprogram(name: "nextafterl", scope: !843, file: !843, line: 262, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1097, file: !846, line: 1175)
!1097 = !DISubprogram(name: "nexttoward", scope: !843, file: !843, line: 264, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!645, !645, !792}
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1101, file: !846, line: 1176)
!1101 = !DISubprogram(name: "nexttowardf", scope: !843, file: !843, line: 264, type: !1102, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!571, !571, !792}
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !846, line: 1177)
!1105 = !DISubprogram(name: "nexttowardl", scope: !843, file: !843, line: 264, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1107, file: !846, line: 1179)
!1107 = !DISubprogram(name: "remainder", scope: !843, file: !843, line: 275, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !846, line: 1180)
!1109 = !DISubprogram(name: "remainderf", scope: !843, file: !843, line: 275, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1111, file: !846, line: 1181)
!1111 = !DISubprogram(name: "remainderl", scope: !843, file: !843, line: 275, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1113, file: !846, line: 1183)
!1113 = !DISubprogram(name: "remquo", scope: !843, file: !843, line: 310, type: !1114, flags: DIFlagPrototyped, spFlags: 0)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!645, !645, !645, !873}
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !846, line: 1184)
!1117 = !DISubprogram(name: "remquof", scope: !843, file: !843, line: 310, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!571, !571, !571, !873}
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1121, file: !846, line: 1185)
!1121 = !DISubprogram(name: "remquol", scope: !843, file: !843, line: 310, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!792, !792, !792, !873}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1125, file: !846, line: 1187)
!1125 = !DISubprogram(name: "rint", scope: !843, file: !843, line: 259, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1127, file: !846, line: 1188)
!1127 = !DISubprogram(name: "rintf", scope: !843, file: !843, line: 259, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1129, file: !846, line: 1189)
!1129 = !DISubprogram(name: "rintl", scope: !843, file: !843, line: 259, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1131, file: !846, line: 1191)
!1131 = !DISubprogram(name: "round", scope: !843, file: !843, line: 301, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1133, file: !846, line: 1192)
!1133 = !DISubprogram(name: "roundf", scope: !843, file: !843, line: 301, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1135, file: !846, line: 1193)
!1135 = !DISubprogram(name: "roundl", scope: !843, file: !843, line: 301, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1137, file: !846, line: 1195)
!1137 = !DISubprogram(name: "scalbln", scope: !843, file: !843, line: 293, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!645, !645, !549}
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1141, file: !846, line: 1196)
!1141 = !DISubprogram(name: "scalblnf", scope: !843, file: !843, line: 293, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!571, !571, !549}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1145, file: !846, line: 1197)
!1145 = !DISubprogram(name: "scalblnl", scope: !843, file: !843, line: 293, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!792, !792, !549}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1149, file: !846, line: 1199)
!1149 = !DISubprogram(name: "scalbn", scope: !843, file: !843, line: 279, type: !876, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1151, file: !846, line: 1200)
!1151 = !DISubprogram(name: "scalbnf", scope: !843, file: !843, line: 279, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!571, !571, !540}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1155, file: !846, line: 1201)
!1155 = !DISubprogram(name: "scalbnl", scope: !843, file: !843, line: 279, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!792, !792, !540}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !846, line: 1203)
!1159 = !DISubprogram(name: "tgamma", scope: !843, file: !843, line: 238, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1161, file: !846, line: 1204)
!1161 = !DISubprogram(name: "tgammaf", scope: !843, file: !843, line: 238, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1163, file: !846, line: 1205)
!1163 = !DISubprogram(name: "tgammal", scope: !843, file: !843, line: 238, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1165, file: !846, line: 1207)
!1165 = !DISubprogram(name: "trunc", scope: !843, file: !843, line: 305, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1167, file: !846, line: 1208)
!1167 = !DISubprogram(name: "truncf", scope: !843, file: !843, line: 305, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1169, file: !846, line: 1209)
!1169 = !DISubprogram(name: "truncl", scope: !843, file: !843, line: 305, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1171, entity: !1172, file: !1173, line: 58)
!1171 = !DINamespace(name: "__gnu_debug", scope: null)
!1172 = !DINamespace(name: "__debug", scope: !2)
!1173 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !813, file: !1175, line: 38)
!1175 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1177, file: !1175, line: 54)
!1177 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !846, line: 380, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!792, !792, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1182, file: !1195, line: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1183, line: 6, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1185, line: 21, baseType: !1186)
!1185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1187, identifier: "_ZTS11__mbstate_t")
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1186, file: !1185, line: 15, baseType: !540, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1186, file: !1185, line: 20, baseType: !1190, size: 32, offset: 32)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1185, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1191, identifier: "_ZTSN11__mbstate_tUt_E")
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1190, file: !1185, line: 18, baseType: !725, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1190, file: !1185, line: 19, baseType: !1194, size: 32)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 32, elements: !572)
!1195 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1197, file: !1195, line: 141)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1198, line: 20, baseType: !725)
!1198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1200, file: !1195, line: 143)
!1200 = !DISubprogram(name: "btowc", scope: !1201, file: !1201, line: 285, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1197, !540}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1205, file: !1195, line: 144)
!1205 = !DISubprogram(name: "fgetwc", scope: !1201, file: !1201, line: 744, type: !1206, flags: DIFlagPrototyped, spFlags: 0)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1197, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1210, line: 5, baseType: !1211)
!1210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1212, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1214, file: !1195, line: 145)
!1214 = !DISubprogram(name: "fgetws", scope: !1201, file: !1201, line: 773, type: !1215, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!702, !701, !540, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1208)
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1219, file: !1195, line: 146)
!1219 = !DISubprogram(name: "fputwc", scope: !1201, file: !1201, line: 758, type: !1220, flags: DIFlagPrototyped, spFlags: 0)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1197, !703, !1208}
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1223, file: !1195, line: 147)
!1223 = !DISubprogram(name: "fputws", scope: !1201, file: !1201, line: 780, type: !1224, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!540, !747, !1217}
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1227, file: !1195, line: 148)
!1227 = !DISubprogram(name: "fwide", scope: !1201, file: !1201, line: 588, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!540, !1208, !540}
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1231, file: !1195, line: 149)
!1231 = !DISubprogram(name: "fwprintf", scope: !1201, file: !1201, line: 595, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!540, !1217, !747, null}
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1235, file: !1195, line: 150)
!1235 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1201, file: !1201, line: 657, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1237, file: !1195, line: 151)
!1237 = !DISubprogram(name: "getwc", scope: !1201, file: !1201, line: 745, type: !1206, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1239, file: !1195, line: 152)
!1239 = !DISubprogram(name: "getwchar", scope: !1201, file: !1201, line: 751, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1197}
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1243, file: !1195, line: 153)
!1243 = !DISubprogram(name: "mbrlen", scope: !1201, file: !1201, line: 308, type: !1244, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!632, !704, !632, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1249, file: !1195, line: 154)
!1249 = !DISubprogram(name: "mbrtowc", scope: !1201, file: !1201, line: 297, type: !1250, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!632, !701, !704, !632, !1246}
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1253, file: !1195, line: 155)
!1253 = !DISubprogram(name: "mbsinit", scope: !1201, file: !1201, line: 293, type: !1254, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!540, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1259, file: !1195, line: 156)
!1259 = !DISubprogram(name: "mbsrtowcs", scope: !1201, file: !1201, line: 338, type: !1260, flags: DIFlagPrototyped, spFlags: 0)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!632, !701, !1262, !632, !1246}
!1262 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1265, file: !1195, line: 157)
!1265 = !DISubprogram(name: "putwc", scope: !1201, file: !1201, line: 759, type: !1220, flags: DIFlagPrototyped, spFlags: 0)
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !1195, line: 158)
!1267 = !DISubprogram(name: "putwchar", scope: !1201, file: !1201, line: 765, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1197, !703}
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1271, file: !1195, line: 160)
!1271 = !DISubprogram(name: "swprintf", scope: !1201, file: !1201, line: 605, type: !1272, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!540, !701, !632, !747, null}
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1275, file: !1195, line: 162)
!1275 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1201, file: !1201, line: 664, type: !1276, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!540, !747, !747, null}
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1195, line: 163)
!1279 = !DISubprogram(name: "ungetwc", scope: !1201, file: !1201, line: 788, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1197, !1197, !1208}
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1283, file: !1195, line: 164)
!1283 = !DISubprogram(name: "vfwprintf", scope: !1201, file: !1201, line: 613, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!540, !1217, !747, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1288, identifier: "_ZTS13__va_list_tag")
!1288 = !{!1289, !1291, !1292, !1293}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1287, file: !1290, baseType: !725, size: 32)
!1290 = !DIFile(filename: "RTTL/API/ISG.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1287, file: !1290, baseType: !725, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1287, file: !1290, baseType: !16, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1287, file: !1290, baseType: !16, size: 64, offset: 128)
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1295, file: !1195, line: 166)
!1295 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1201, file: !1201, line: 711, type: !1284, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1297, file: !1195, line: 169)
!1297 = !DISubprogram(name: "vswprintf", scope: !1201, file: !1201, line: 626, type: !1298, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!540, !701, !632, !747, !1286}
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1195, line: 172)
!1301 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1201, file: !1201, line: 718, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!540, !747, !747, !1286}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1305, file: !1195, line: 174)
!1305 = !DISubprogram(name: "vwprintf", scope: !1201, file: !1201, line: 621, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!540, !747, !1286}
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1195, line: 176)
!1309 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1201, file: !1201, line: 715, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1195, line: 178)
!1311 = !DISubprogram(name: "wcrtomb", scope: !1201, file: !1201, line: 302, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!632, !746, !703, !1246}
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1195, line: 179)
!1315 = !DISubprogram(name: "wcscat", scope: !1201, file: !1201, line: 97, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!702, !701, !747}
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1195, line: 180)
!1319 = !DISubprogram(name: "wcscmp", scope: !1201, file: !1201, line: 106, type: !1320, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!540, !748, !748}
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1195, line: 181)
!1323 = !DISubprogram(name: "wcscoll", scope: !1201, file: !1201, line: 131, type: !1320, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1195, line: 182)
!1325 = !DISubprogram(name: "wcscpy", scope: !1201, file: !1201, line: 87, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1327, file: !1195, line: 183)
!1327 = !DISubprogram(name: "wcscspn", scope: !1201, file: !1201, line: 188, type: !1328, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!632, !748, !748}
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1331, file: !1195, line: 184)
!1331 = !DISubprogram(name: "wcsftime", scope: !1201, file: !1201, line: 852, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!632, !701, !632, !747, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1201, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1195, line: 185)
!1339 = !DISubprogram(name: "wcslen", scope: !1201, file: !1201, line: 223, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!632, !748}
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1343, file: !1195, line: 186)
!1343 = !DISubprogram(name: "wcsncat", scope: !1201, file: !1201, line: 101, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!702, !701, !747, !632}
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1195, line: 187)
!1347 = !DISubprogram(name: "wcsncmp", scope: !1201, file: !1201, line: 109, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!540, !748, !748, !632}
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1195, line: 188)
!1351 = !DISubprogram(name: "wcsncpy", scope: !1201, file: !1201, line: 92, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1353, file: !1195, line: 189)
!1353 = !DISubprogram(name: "wcsrtombs", scope: !1201, file: !1201, line: 344, type: !1354, flags: DIFlagPrototyped, spFlags: 0)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!632, !746, !1356, !632, !1246}
!1356 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1195, line: 190)
!1359 = !DISubprogram(name: "wcsspn", scope: !1201, file: !1201, line: 192, type: !1328, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1361, file: !1195, line: 191)
!1361 = !DISubprogram(name: "wcstod", scope: !1201, file: !1201, line: 378, type: !1362, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!645, !747, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1195, line: 193)
!1367 = !DISubprogram(name: "wcstof", scope: !1201, file: !1201, line: 383, type: !1368, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!571, !747, !1364}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1371, file: !1195, line: 195)
!1371 = !DISubprogram(name: "wcstok", scope: !1201, file: !1201, line: 218, type: !1372, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!702, !701, !747, !1364}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1195, line: 196)
!1375 = !DISubprogram(name: "wcstol", scope: !1201, file: !1201, line: 429, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!549, !747, !1364, !540}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1195, line: 197)
!1379 = !DISubprogram(name: "wcstoul", scope: !1201, file: !1201, line: 434, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!21, !747, !1364, !540}
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1383, file: !1195, line: 198)
!1383 = !DISubprogram(name: "wcsxfrm", scope: !1201, file: !1201, line: 135, type: !1384, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!632, !701, !747, !632}
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1387, file: !1195, line: 199)
!1387 = !DISubprogram(name: "wctob", scope: !1201, file: !1201, line: 289, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!540, !1197}
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1391, file: !1195, line: 200)
!1391 = !DISubprogram(name: "wmemcmp", scope: !1201, file: !1201, line: 259, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1393, file: !1195, line: 201)
!1393 = !DISubprogram(name: "wmemcpy", scope: !1201, file: !1201, line: 263, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1395, file: !1195, line: 202)
!1395 = !DISubprogram(name: "wmemmove", scope: !1201, file: !1201, line: 268, type: !1396, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!702, !702, !748, !632}
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1399, file: !1195, line: 203)
!1399 = !DISubprogram(name: "wmemset", scope: !1201, file: !1201, line: 272, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!702, !702, !703, !632}
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1403, file: !1195, line: 204)
!1403 = !DISubprogram(name: "wprintf", scope: !1201, file: !1201, line: 602, type: !1404, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!540, !747, null}
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1407, file: !1195, line: 205)
!1407 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1201, file: !1201, line: 661, type: !1404, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1409, file: !1195, line: 206)
!1409 = !DISubprogram(name: "wcschr", scope: !1201, file: !1201, line: 165, type: !1410, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!702, !748, !703}
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1413, file: !1195, line: 207)
!1413 = !DISubprogram(name: "wcspbrk", scope: !1201, file: !1201, line: 202, type: !1414, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!702, !748, !748}
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1417, file: !1195, line: 208)
!1417 = !DISubprogram(name: "wcsrchr", scope: !1201, file: !1201, line: 175, type: !1410, flags: DIFlagPrototyped, spFlags: 0)
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1419, file: !1195, line: 209)
!1419 = !DISubprogram(name: "wcsstr", scope: !1201, file: !1201, line: 213, type: !1414, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1421, file: !1195, line: 210)
!1421 = !DISubprogram(name: "wmemchr", scope: !1201, file: !1201, line: 254, type: !1422, flags: DIFlagPrototyped, spFlags: 0)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!702, !748, !703, !632}
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1425, file: !1195, line: 251)
!1425 = !DISubprogram(name: "wcstold", scope: !1201, file: !1201, line: 385, type: !1426, flags: DIFlagPrototyped, spFlags: 0)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!792, !747, !1364}
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1429, file: !1195, line: 260)
!1429 = !DISubprogram(name: "wcstoll", scope: !1201, file: !1201, line: 442, type: !1430, flags: DIFlagPrototyped, spFlags: 0)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!759, !747, !1364, !540}
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1433, file: !1195, line: 261)
!1433 = !DISubprogram(name: "wcstoull", scope: !1201, file: !1201, line: 449, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!783, !747, !1364, !540}
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1425, file: !1195, line: 267)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1429, file: !1195, line: 268)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1195, line: 269)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1195, line: 283)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1295, file: !1195, line: 286)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1195, line: 289)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1195, line: 292)
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1425, file: !1195, line: 296)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1429, file: !1195, line: 297)
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1195, line: 298)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1448, line: 68)
!1447 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1449, file: !1448, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1448 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1449 = !DINamespace(name: "__exception_ptr", scope: !2)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1449, entity: !1451, file: !1448, line: 84)
!1451 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1448, line: 80, type: !1452, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1447}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1455, file: !1460, line: 47)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1456, line: 24, baseType: !1457)
!1456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1458, line: 37, baseType: !1459)
!1458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1459 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1460 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1462, file: !1460, line: 48)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1456, line: 25, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1458, line: 39, baseType: !1464)
!1464 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1466, file: !1460, line: 49)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1456, line: 26, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1458, line: 41, baseType: !540)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1460, line: 50)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1456, line: 27, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1458, line: 44, baseType: !549)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1472, file: !1460, line: 52)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1473, line: 58, baseType: !1459)
!1473 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1460, line: 53)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1473, line: 60, baseType: !549)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1477, file: !1460, line: 54)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1473, line: 61, baseType: !549)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1460, line: 55)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1473, line: 62, baseType: !549)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1481, file: !1460, line: 57)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1473, line: 43, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1458, line: 52, baseType: !1457)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1484, file: !1460, line: 58)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1473, line: 44, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1458, line: 54, baseType: !1463)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1487, file: !1460, line: 59)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1473, line: 45, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1458, line: 56, baseType: !1467)
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1490, file: !1460, line: 60)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1473, line: 46, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1458, line: 58, baseType: !1470)
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1493, file: !1460, line: 62)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1473, line: 101, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1458, line: 72, baseType: !549)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1496, file: !1460, line: 63)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1473, line: 87, baseType: !549)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1498, file: !1460, line: 65)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1499, line: 24, baseType: !1500)
!1499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1458, line: 38, baseType: !1501)
!1501 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1503, file: !1460, line: 66)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1499, line: 25, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1458, line: 40, baseType: !1505)
!1505 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1507, file: !1460, line: 67)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1499, line: 26, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1458, line: 42, baseType: !725)
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1510, file: !1460, line: 68)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1499, line: 27, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1458, line: 45, baseType: !21)
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1513, file: !1460, line: 70)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1473, line: 71, baseType: !1501)
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1515, file: !1460, line: 71)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1473, line: 73, baseType: !21)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1517, file: !1460, line: 72)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1473, line: 74, baseType: !21)
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1519, file: !1460, line: 73)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1473, line: 75, baseType: !21)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1521, file: !1460, line: 75)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1473, line: 49, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1458, line: 53, baseType: !1500)
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1524, file: !1460, line: 76)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1473, line: 50, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1458, line: 55, baseType: !1504)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1460, line: 77)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1473, line: 51, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1458, line: 57, baseType: !1508)
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1530, file: !1460, line: 78)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1473, line: 52, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1458, line: 59, baseType: !1511)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1533, file: !1460, line: 80)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1473, line: 102, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1458, line: 73, baseType: !21)
!1535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1536, file: !1460, line: 81)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1473, line: 90, baseType: !21)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1538, file: !1540, line: 53)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1539, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1539 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1540 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1542, file: !1540, line: 54)
!1542 = !DISubprogram(name: "setlocale", scope: !1539, file: !1539, line: 122, type: !1543, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!680, !540, !477}
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1546, file: !1540, line: 55)
!1546 = !DISubprogram(name: "localeconv", scope: !1539, file: !1539, line: 125, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1553, line: 64)
!1551 = !DISubprogram(name: "isalnum", scope: !1552, file: !1552, line: 108, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1553 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1555, file: !1553, line: 65)
!1555 = !DISubprogram(name: "isalpha", scope: !1552, file: !1552, line: 109, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1557, file: !1553, line: 66)
!1557 = !DISubprogram(name: "iscntrl", scope: !1552, file: !1552, line: 110, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1553, line: 67)
!1559 = !DISubprogram(name: "isdigit", scope: !1552, file: !1552, line: 111, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1561, file: !1553, line: 68)
!1561 = !DISubprogram(name: "isgraph", scope: !1552, file: !1552, line: 113, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1563, file: !1553, line: 69)
!1563 = !DISubprogram(name: "islower", scope: !1552, file: !1552, line: 112, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1565, file: !1553, line: 70)
!1565 = !DISubprogram(name: "isprint", scope: !1552, file: !1552, line: 114, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1567, file: !1553, line: 71)
!1567 = !DISubprogram(name: "ispunct", scope: !1552, file: !1552, line: 115, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1569, file: !1553, line: 72)
!1569 = !DISubprogram(name: "isspace", scope: !1552, file: !1552, line: 116, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1571, file: !1553, line: 73)
!1571 = !DISubprogram(name: "isupper", scope: !1552, file: !1552, line: 117, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1573, file: !1553, line: 74)
!1573 = !DISubprogram(name: "isxdigit", scope: !1552, file: !1552, line: 118, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1575, file: !1553, line: 75)
!1575 = !DISubprogram(name: "tolower", scope: !1552, file: !1552, line: 122, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1577, file: !1553, line: 76)
!1577 = !DISubprogram(name: "toupper", scope: !1552, file: !1552, line: 125, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1579, file: !1553, line: 87)
!1579 = !DISubprogram(name: "isblank", scope: !1552, file: !1552, line: 130, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1581, file: !1583, line: 98)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1582, line: 7, baseType: !1211)
!1582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1583 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1585, file: !1583, line: 99)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1586, line: 84, baseType: !1587)
!1586 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1588, line: 14, baseType: !1589)
!1588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1588, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1591, file: !1583, line: 101)
!1591 = !DISubprogram(name: "clearerr", scope: !1586, file: !1586, line: 786, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1596, file: !1583, line: 102)
!1596 = !DISubprogram(name: "fclose", scope: !1586, file: !1586, line: 178, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!540, !1594}
!1599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1600, file: !1583, line: 103)
!1600 = !DISubprogram(name: "feof", scope: !1586, file: !1586, line: 788, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1602, file: !1583, line: 104)
!1602 = !DISubprogram(name: "ferror", scope: !1586, file: !1586, line: 790, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1604, file: !1583, line: 105)
!1604 = !DISubprogram(name: "fflush", scope: !1586, file: !1586, line: 230, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1606, file: !1583, line: 106)
!1606 = !DISubprogram(name: "fgetc", scope: !1586, file: !1586, line: 513, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1608, file: !1583, line: 107)
!1608 = !DISubprogram(name: "fgetpos", scope: !1586, file: !1586, line: 760, type: !1609, flags: DIFlagPrototyped, spFlags: 0)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!540, !1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1594)
!1612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1615, file: !1583, line: 108)
!1615 = !DISubprogram(name: "fgets", scope: !1586, file: !1586, line: 592, type: !1616, flags: DIFlagPrototyped, spFlags: 0)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!680, !746, !540, !1611}
!1618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1619, file: !1583, line: 109)
!1619 = !DISubprogram(name: "fopen", scope: !1586, file: !1586, line: 258, type: !1620, flags: DIFlagPrototyped, spFlags: 0)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1594, !704, !704}
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1623, file: !1583, line: 110)
!1623 = !DISubprogram(name: "fprintf", scope: !1586, file: !1586, line: 350, type: !1624, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!540, !1611, !704, null}
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1627, file: !1583, line: 111)
!1627 = !DISubprogram(name: "fputc", scope: !1586, file: !1586, line: 549, type: !1628, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!540, !540, !1594}
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1631, file: !1583, line: 112)
!1631 = !DISubprogram(name: "fputs", scope: !1586, file: !1586, line: 655, type: !1632, flags: DIFlagPrototyped, spFlags: 0)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!540, !704, !1611}
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1635, file: !1583, line: 113)
!1635 = !DISubprogram(name: "fread", scope: !1586, file: !1586, line: 675, type: !1636, flags: DIFlagPrototyped, spFlags: 0)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!632, !1638, !632, !632, !1611}
!1638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1640, file: !1583, line: 114)
!1640 = !DISubprogram(name: "freopen", scope: !1586, file: !1586, line: 265, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1594, !704, !704, !1611}
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1644, file: !1583, line: 115)
!1644 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1586, file: !1586, line: 434, type: !1624, flags: DIFlagPrototyped, spFlags: 0)
!1645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1646, file: !1583, line: 116)
!1646 = !DISubprogram(name: "fseek", scope: !1586, file: !1586, line: 713, type: !1647, flags: DIFlagPrototyped, spFlags: 0)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!540, !1594, !549, !540}
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1650, file: !1583, line: 117)
!1650 = !DISubprogram(name: "fsetpos", scope: !1586, file: !1586, line: 765, type: !1651, flags: DIFlagPrototyped, spFlags: 0)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!540, !1594, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1656, file: !1583, line: 118)
!1656 = !DISubprogram(name: "ftell", scope: !1586, file: !1586, line: 718, type: !1657, flags: DIFlagPrototyped, spFlags: 0)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!549, !1594}
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1660, file: !1583, line: 119)
!1660 = !DISubprogram(name: "fwrite", scope: !1586, file: !1586, line: 681, type: !1661, flags: DIFlagPrototyped, spFlags: 0)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!632, !1663, !632, !632, !1611}
!1663 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1665, file: !1583, line: 120)
!1665 = !DISubprogram(name: "getc", scope: !1586, file: !1586, line: 514, type: !1597, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1667, file: !1583, line: 121)
!1667 = !DISubprogram(name: "getchar", scope: !1586, file: !1586, line: 520, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1669, file: !1583, line: 126)
!1669 = !DISubprogram(name: "perror", scope: !1586, file: !1586, line: 804, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !477}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1673, file: !1583, line: 127)
!1673 = !DISubprogram(name: "printf", scope: !1586, file: !1586, line: 356, type: !1674, flags: DIFlagPrototyped, spFlags: 0)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!540, !704, null}
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1677, file: !1583, line: 128)
!1677 = !DISubprogram(name: "putc", scope: !1586, file: !1586, line: 550, type: !1628, flags: DIFlagPrototyped, spFlags: 0)
!1678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1679, file: !1583, line: 129)
!1679 = !DISubprogram(name: "putchar", scope: !1586, file: !1586, line: 556, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1681, file: !1583, line: 130)
!1681 = !DISubprogram(name: "puts", scope: !1586, file: !1586, line: 661, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1683, file: !1583, line: 131)
!1683 = !DISubprogram(name: "remove", scope: !1586, file: !1586, line: 152, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1685, file: !1583, line: 132)
!1685 = !DISubprogram(name: "rename", scope: !1586, file: !1586, line: 154, type: !1686, flags: DIFlagPrototyped, spFlags: 0)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!540, !477, !477}
!1688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1689, file: !1583, line: 133)
!1689 = !DISubprogram(name: "rewind", scope: !1586, file: !1586, line: 723, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1583, line: 134)
!1691 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1586, file: !1586, line: 437, type: !1674, flags: DIFlagPrototyped, spFlags: 0)
!1692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1693, file: !1583, line: 135)
!1693 = !DISubprogram(name: "setbuf", scope: !1586, file: !1586, line: 328, type: !1694, flags: DIFlagPrototyped, spFlags: 0)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1611, !746}
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1697, file: !1583, line: 136)
!1697 = !DISubprogram(name: "setvbuf", scope: !1586, file: !1586, line: 332, type: !1698, flags: DIFlagPrototyped, spFlags: 0)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!540, !1611, !746, !540, !632}
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1701, file: !1583, line: 137)
!1701 = !DISubprogram(name: "sprintf", scope: !1586, file: !1586, line: 358, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!540, !746, !704, null}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1705, file: !1583, line: 138)
!1705 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1586, file: !1586, line: 439, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!540, !704, !704, null}
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1709, file: !1583, line: 139)
!1709 = !DISubprogram(name: "tmpfile", scope: !1586, file: !1586, line: 188, type: !1710, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!1594}
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1713, file: !1583, line: 141)
!1713 = !DISubprogram(name: "tmpnam", scope: !1586, file: !1586, line: 205, type: !1714, flags: DIFlagPrototyped, spFlags: 0)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!680, !680}
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1717, file: !1583, line: 143)
!1717 = !DISubprogram(name: "ungetc", scope: !1586, file: !1586, line: 668, type: !1628, flags: DIFlagPrototyped, spFlags: 0)
!1718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1719, file: !1583, line: 144)
!1719 = !DISubprogram(name: "vfprintf", scope: !1586, file: !1586, line: 365, type: !1720, flags: DIFlagPrototyped, spFlags: 0)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!540, !1611, !704, !1286}
!1722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1723, file: !1583, line: 145)
!1723 = !DISubprogram(name: "vprintf", scope: !1586, file: !1586, line: 371, type: !1724, flags: DIFlagPrototyped, spFlags: 0)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!540, !704, !1286}
!1726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1727, file: !1583, line: 146)
!1727 = !DISubprogram(name: "vsprintf", scope: !1586, file: !1586, line: 373, type: !1728, flags: DIFlagPrototyped, spFlags: 0)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!540, !746, !704, !1286}
!1730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1731, file: !1583, line: 175)
!1731 = !DISubprogram(name: "snprintf", scope: !1586, file: !1586, line: 378, type: !1732, flags: DIFlagPrototyped, spFlags: 0)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!540, !746, !632, !704, null}
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1735, file: !1583, line: 176)
!1735 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1586, file: !1586, line: 479, type: !1720, flags: DIFlagPrototyped, spFlags: 0)
!1736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1737, file: !1583, line: 177)
!1737 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1586, file: !1586, line: 484, type: !1724, flags: DIFlagPrototyped, spFlags: 0)
!1738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1739, file: !1583, line: 178)
!1739 = !DISubprogram(name: "vsnprintf", scope: !1586, file: !1586, line: 382, type: !1740, flags: DIFlagPrototyped, spFlags: 0)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!540, !746, !632, !704, !1286}
!1742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1743, file: !1583, line: 179)
!1743 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1586, file: !1586, line: 487, type: !1744, flags: DIFlagPrototyped, spFlags: 0)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!540, !704, !704, !1286}
!1746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1731, file: !1583, line: 185)
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1735, file: !1583, line: 186)
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1737, file: !1583, line: 187)
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1739, file: !1583, line: 188)
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1743, file: !1583, line: 189)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1752, file: !1756, line: 82)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1753, line: 48, baseType: !1754)
!1753 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1756 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1758, file: !1756, line: 83)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1759, line: 38, baseType: !21)
!1759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1197, file: !1756, line: 84)
!1761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1762, file: !1756, line: 86)
!1762 = !DISubprogram(name: "iswalnum", scope: !1759, file: !1759, line: 95, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1764, file: !1756, line: 87)
!1764 = !DISubprogram(name: "iswalpha", scope: !1759, file: !1759, line: 101, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1766, file: !1756, line: 89)
!1766 = !DISubprogram(name: "iswblank", scope: !1759, file: !1759, line: 146, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1768, file: !1756, line: 91)
!1768 = !DISubprogram(name: "iswcntrl", scope: !1759, file: !1759, line: 104, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1770, file: !1756, line: 92)
!1770 = !DISubprogram(name: "iswctype", scope: !1759, file: !1759, line: 159, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!540, !1197, !1758}
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1774, file: !1756, line: 93)
!1774 = !DISubprogram(name: "iswdigit", scope: !1759, file: !1759, line: 108, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1776, file: !1756, line: 94)
!1776 = !DISubprogram(name: "iswgraph", scope: !1759, file: !1759, line: 112, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1778, file: !1756, line: 95)
!1778 = !DISubprogram(name: "iswlower", scope: !1759, file: !1759, line: 117, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1780, file: !1756, line: 96)
!1780 = !DISubprogram(name: "iswprint", scope: !1759, file: !1759, line: 120, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1782, file: !1756, line: 97)
!1782 = !DISubprogram(name: "iswpunct", scope: !1759, file: !1759, line: 125, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1784, file: !1756, line: 98)
!1784 = !DISubprogram(name: "iswspace", scope: !1759, file: !1759, line: 130, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1786, file: !1756, line: 99)
!1786 = !DISubprogram(name: "iswupper", scope: !1759, file: !1759, line: 135, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1788, file: !1756, line: 100)
!1788 = !DISubprogram(name: "iswxdigit", scope: !1759, file: !1759, line: 140, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1790, file: !1756, line: 101)
!1790 = !DISubprogram(name: "towctrans", scope: !1753, file: !1753, line: 55, type: !1791, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1197, !1197, !1752}
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1794, file: !1756, line: 102)
!1794 = !DISubprogram(name: "towlower", scope: !1759, file: !1759, line: 166, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1197, !1197}
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1798, file: !1756, line: 103)
!1798 = !DISubprogram(name: "towupper", scope: !1759, file: !1759, line: 169, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1800, file: !1756, line: 104)
!1800 = !DISubprogram(name: "wctrans", scope: !1753, file: !1753, line: 52, type: !1801, flags: DIFlagPrototyped, spFlags: 0)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1752, !477}
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1804, file: !1756, line: 105)
!1804 = !DISubprogram(name: "wctype", scope: !1759, file: !1759, line: 155, type: !1805, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1758, !477}
!1807 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1808, line: 70)
!1808 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1809 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1810, line: 7)
!1810 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!1811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1812, file: !1816, line: 77)
!1812 = !DISubprogram(name: "memchr", scope: !1813, file: !1813, line: 89, type: !1814, flags: DIFlagPrototyped, spFlags: 0)
!1813 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!88, !88, !540, !632}
!1816 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1818, file: !1816, line: 78)
!1818 = !DISubprogram(name: "memcmp", scope: !1813, file: !1813, line: 64, type: !1819, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!540, !88, !88, !632}
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1822, file: !1816, line: 79)
!1822 = !DISubprogram(name: "memcpy", scope: !1813, file: !1813, line: 43, type: !1823, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!16, !1638, !1663, !632}
!1825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1826, file: !1816, line: 80)
!1826 = !DISubprogram(name: "memmove", scope: !1813, file: !1813, line: 47, type: !1827, flags: DIFlagPrototyped, spFlags: 0)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!16, !16, !88, !632}
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1830, file: !1816, line: 81)
!1830 = !DISubprogram(name: "memset", scope: !1813, file: !1813, line: 61, type: !1831, flags: DIFlagPrototyped, spFlags: 0)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!16, !16, !540, !632}
!1833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1834, file: !1816, line: 82)
!1834 = !DISubprogram(name: "strcat", scope: !1813, file: !1813, line: 149, type: !1835, flags: DIFlagPrototyped, spFlags: 0)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!680, !746, !704}
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1838, file: !1816, line: 83)
!1838 = !DISubprogram(name: "strcmp", scope: !1813, file: !1813, line: 156, type: !1686, flags: DIFlagPrototyped, spFlags: 0)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1840, file: !1816, line: 84)
!1840 = !DISubprogram(name: "strcoll", scope: !1813, file: !1813, line: 163, type: !1686, flags: DIFlagPrototyped, spFlags: 0)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1842, file: !1816, line: 85)
!1842 = !DISubprogram(name: "strcpy", scope: !1813, file: !1813, line: 141, type: !1835, flags: DIFlagPrototyped, spFlags: 0)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1844, file: !1816, line: 86)
!1844 = !DISubprogram(name: "strcspn", scope: !1813, file: !1813, line: 293, type: !1845, flags: DIFlagPrototyped, spFlags: 0)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!632, !477, !477}
!1847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1848, file: !1816, line: 87)
!1848 = !DISubprogram(name: "strerror", scope: !1813, file: !1813, line: 419, type: !1849, flags: DIFlagPrototyped, spFlags: 0)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!680, !540}
!1851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1852, file: !1816, line: 88)
!1852 = !DISubprogram(name: "strlen", scope: !1813, file: !1813, line: 407, type: !1853, flags: DIFlagPrototyped, spFlags: 0)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!632, !477}
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1856, file: !1816, line: 89)
!1856 = !DISubprogram(name: "strncat", scope: !1813, file: !1813, line: 152, type: !1857, flags: DIFlagPrototyped, spFlags: 0)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!680, !746, !704, !632}
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1860, file: !1816, line: 90)
!1860 = !DISubprogram(name: "strncmp", scope: !1813, file: !1813, line: 159, type: !1861, flags: DIFlagPrototyped, spFlags: 0)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!540, !477, !477, !632}
!1863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1864, file: !1816, line: 91)
!1864 = !DISubprogram(name: "strncpy", scope: !1813, file: !1813, line: 144, type: !1857, flags: DIFlagPrototyped, spFlags: 0)
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1866, file: !1816, line: 92)
!1866 = !DISubprogram(name: "strspn", scope: !1813, file: !1813, line: 297, type: !1845, flags: DIFlagPrototyped, spFlags: 0)
!1867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1868, file: !1816, line: 93)
!1868 = !DISubprogram(name: "strtok", scope: !1813, file: !1813, line: 356, type: !1835, flags: DIFlagPrototyped, spFlags: 0)
!1869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1870, file: !1816, line: 94)
!1870 = !DISubprogram(name: "strxfrm", scope: !1813, file: !1813, line: 166, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!632, !746, !704, !632}
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1874, file: !1816, line: 95)
!1874 = !DISubprogram(name: "strchr", scope: !1813, file: !1813, line: 228, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!477, !477, !540}
!1877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1878, file: !1816, line: 96)
!1878 = !DISubprogram(name: "strpbrk", scope: !1813, file: !1813, line: 305, type: !1879, flags: DIFlagPrototyped, spFlags: 0)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!477, !477, !477}
!1881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1882, file: !1816, line: 97)
!1882 = !DISubprogram(name: "strrchr", scope: !1813, file: !1813, line: 255, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1884, file: !1816, line: 98)
!1884 = !DISubprogram(name: "strstr", scope: !1813, file: !1813, line: 332, type: !1879, flags: DIFlagPrototyped, spFlags: 0)
!1885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !1886, file: !14, line: 23)
!1886 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matrix4x4", scope: !1888, file: !1887, line: 9, size: 512, flags: DIFlagTypePassByValue, elements: !1889, identifier: "_ZTSN4RTTL9Matrix4x4E")
!1887 = !DIFile(filename: "RTTL/common/RTMatrix.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "7f520098e4175181190b8a9ccd06dffd")
!1888 = !DINamespace(name: "RTTL", scope: null)
!1889 = !{!1890, !1893, !1899, !1904, !1909, !1914, !1917, !1920}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !1886, file: !1887, line: 12, baseType: !1891, size: 512, flags: DIFlagPublic)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 512, elements: !1892)
!1892 = !{!573, !573}
!1893 = !DISubprogram(name: "operator()", linkageName: "_ZN4RTTL9Matrix4x4clEii", scope: !1886, file: !1887, line: 14, type: !1894, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !1897, !1898, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !571, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!1899 = !DISubprogram(name: "getRow", linkageName: "_ZN4RTTL9Matrix4x46getRowEi", scope: !1886, file: !1887, line: 17, type: !1900, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1902, !1897, !540}
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec4f", scope: !1888, file: !1810, line: 270, baseType: !1903)
!1903 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<4, float, 0>", scope: !1888, file: !1810, line: 53, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi4EfLi0EEE")
!1904 = !DISubprogram(name: "getCol", linkageName: "_ZN4RTTL9Matrix4x46getColEi", scope: !1886, file: !1887, line: 26, type: !1905, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1907, !1897, !540}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec3f", scope: !1888, file: !1810, line: 269, baseType: !1908)
!1908 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<3, float, 0>", scope: !1888, file: !1810, line: 48, size: 96, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi3EfLi0EEE")
!1909 = !DISubprogram(name: "setCol", linkageName: "_ZN4RTTL9Matrix4x46setColEiRKNS_7RTVec_tILi3EfLi0EEE", scope: !1886, file: !1887, line: 34, type: !1910, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !1897, !540, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1914 = !DISubprogram(name: "setIdentity", linkageName: "_ZN4RTTL9Matrix4x411setIdentityEv", scope: !1886, file: !1887, line: 40, type: !1915, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1897}
!1917 = !DISubprogram(name: "setTranslationPart", linkageName: "_ZN4RTTL9Matrix4x418setTranslationPartERKNS_7RTVec_tILi3EfLi0EEE", scope: !1886, file: !1887, line: 47, type: !1918, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1897, !1912}
!1920 = !DISubprogram(name: "setRotationPart", linkageName: "_ZN4RTTL9Matrix4x415setRotationPartERKNS_7RTVec_tILi3EfLi0EEEf", scope: !1886, file: !1887, line: 54, type: !1921, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1897, !1912, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1924 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !1888, file: !1925, line: 13)
!1925 = !DIFile(filename: "RTTL/API/rt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bf9a68cd91e3dd436b53dbb783d36fdf")
!1926 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !15, file: !1925, line: 14)
!1927 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !567, line: 24, baseType: !566)
!1930 = !{i32 7, !"Dwarf Version", i32 5}
!1931 = !{i32 2, !"Debug Info Version", i32 3}
!1932 = !{i32 1, !"wchar_size", i32 4}
!1933 = !{i32 8, !"PIC Level", i32 2}
!1934 = !{i32 7, !"PIE Level", i32 2}
!1935 = !{i32 7, !"uwtable", i32 2}
!1936 = !{i32 7, !"frame-pointer", i32 2}
!1937 = !{!"clang version 16.0.0"}
!1938 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1290, file: !1290, type: !626, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !148)
!1939 = !DILocation(line: 74, column: 25, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1938, file: !3, discriminator: 0)
!1941 = !DILocation(line: 0, scope: !1938)
!1942 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1290, file: !1290, type: !626, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !148)
!1943 = !DILocalVariable(name: "a", arg: 1, scope: !1944, file: !567, line: 622, type: !571)
!1944 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !567, file: !567, line: 622, type: !1945, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !148)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1929, !571}
!1947 = !DILocation(line: 622, column: 40, scope: !1944, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 38, column: 31, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1942, file: !1927, discriminator: 0)
!1950 = !DILocalVariable(name: "result", scope: !1944, file: !567, line: 623, type: !1929)
!1951 = !DILocation(line: 623, column: 11, scope: !1944, inlinedAt: !1948)
!1952 = !DILocalVariable(name: "i", scope: !1953, file: !567, line: 626, type: !540)
!1953 = distinct !DILexicalBlock(scope: !1944, file: !567, line: 626, column: 5)
!1954 = !DILocation(line: 626, column: 14, scope: !1953, inlinedAt: !1948)
!1955 = !DILocation(line: 626, column: 10, scope: !1953, inlinedAt: !1948)
!1956 = !DILocation(line: 626, column: 21, scope: !1957, inlinedAt: !1948)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !567, line: 626, column: 5)
!1958 = !DILocation(line: 626, column: 23, scope: !1957, inlinedAt: !1948)
!1959 = !DILocation(line: 626, column: 5, scope: !1953, inlinedAt: !1948)
!1960 = !DILocation(line: 627, column: 23, scope: !1957, inlinedAt: !1948)
!1961 = !DILocation(line: 627, column: 18, scope: !1957, inlinedAt: !1948)
!1962 = !DILocation(line: 627, column: 9, scope: !1957, inlinedAt: !1948)
!1963 = !DILocation(line: 627, column: 21, scope: !1957, inlinedAt: !1948)
!1964 = !DILocation(line: 626, column: 39, scope: !1957, inlinedAt: !1948)
!1965 = !DILocation(line: 626, column: 5, scope: !1957, inlinedAt: !1948)
!1966 = distinct !{!1966, !1959, !1967, !1968}
!1967 = !DILocation(line: 627, column: 23, scope: !1953, inlinedAt: !1948)
!1968 = !{!"llvm.loop.mustprogress"}
!1969 = !DILocation(line: 629, column: 5, scope: !1944, inlinedAt: !1948)
!1970 = !DILocation(line: 38, column: 31, scope: !1949)
!1971 = !DILocation(line: 38, column: 43, scope: !1949)
!1972 = distinct !DISubprogram(name: "rtShow", linkageName: "_Z6rtShowPN3ISG4NodeE", scope: !581, file: !581, line: 12, type: !1973, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !148)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !1925, line: 25, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_class_type, name: "Node", scope: !15, file: !14, line: 32, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3ISG4NodeE")
!1978 = !DILocalVariable(name: "node", arg: 1, scope: !1972, file: !581, line: 12, type: !1975)
!1979 = !DILocation(line: 12, column: 20, scope: !1972)
!1980 = !DILocalVariable(name: "world", scope: !1972, file: !581, line: 14, type: !584)
!1981 = !DILocation(line: 14, column: 10, scope: !1972)
!1982 = !DILocation(line: 14, column: 18, scope: !1972)
!1983 = !DILocation(line: 15, column: 3, scope: !1972)
!1984 = !DILocation(line: 15, column: 10, scope: !1972)
!1985 = !DILocation(line: 15, column: 40, scope: !1972)
!1986 = !DILocation(line: 15, column: 29, scope: !1972)
!1987 = !DILocation(line: 15, column: 19, scope: !1972)
!1988 = !DILocation(line: 16, column: 1, scope: !1972)
!1989 = distinct !DISubprogram(name: "getDefaultWorld", linkageName: "_ZN3ISG5World15getDefaultWorldEv", scope: !585, file: !14, line: 267, type: !595, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !594, retainedNodes: !148)
!1990 = !DILocation(line: 268, column: 11, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1989, file: !14, line: 268, column: 11)
!1992 = !DILocation(line: 268, column: 21, scope: !1991)
!1993 = !DILocation(line: 268, column: 11, scope: !1989)
!1994 = !DILocalVariable(name: "w", scope: !1995, file: !14, line: 268, type: !584)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !14, line: 268, column: 30)
!1996 = !DILocation(line: 268, column: 39, scope: !1995)
!1997 = !DILocation(line: 268, column: 43, scope: !1995)
!1998 = !DILocation(line: 268, column: 47, scope: !1995)
!1999 = !DILocation(line: 268, column: 54, scope: !1995)
!2000 = !DILocation(line: 268, column: 57, scope: !1995)
!2001 = !DILocation(line: 268, column: 72, scope: !1995)
!2002 = !DILocation(line: 268, column: 82, scope: !1989)
!2003 = !DILocation(line: 268, column: 75, scope: !1989)
!2004 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE9push_backEOS2_", scope: !23, file: !18, line: 1203, type: !435, scopeLine: 1204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !434, retainedNodes: !148)
!2005 = !DILocalVariable(name: "this", arg: 1, scope: !2004, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2007 = !DILocation(line: 0, scope: !2004)
!2008 = !DILocalVariable(name: "__x", arg: 2, scope: !2004, file: !18, line: 1203, type: !437)
!2009 = !DILocation(line: 1203, column: 30, scope: !2004)
!2010 = !DILocation(line: 1204, column: 32, scope: !2004)
!2011 = !DILocation(line: 1204, column: 9, scope: !2004)
!2012 = !DILocation(line: 1204, column: 39, scope: !2004)
!2013 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !566, file: !567, line: 21, type: !575, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !574, retainedNodes: !148)
!2014 = !DILocalVariable(name: "this", arg: 1, scope: !2013, type: !2015, flags: DIFlagArtificial | DIFlagObjectPointer)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2016 = !DILocation(line: 0, scope: !2013)
!2017 = !DILocation(line: 21, column: 11, scope: !2013)
!2018 = distinct !DISubprogram(name: "World", linkageName: "_ZN3ISG5WorldC2Ev", scope: !585, file: !14, line: 263, type: !598, scopeLine: 263, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2019, retainedNodes: !148)
!2019 = !DISubprogram(name: "World", scope: !585, type: !598, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2020 = !DILocalVariable(name: "this", arg: 1, scope: !2018, type: !584, flags: DIFlagArtificial | DIFlagObjectPointer)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 263, column: 10, scope: !2018)
!2023 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EEC2Ev", scope: !23, file: !18, line: 487, type: !294, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !293, retainedNodes: !148)
!2024 = !DILocalVariable(name: "this", arg: 1, scope: !2023, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2025 = !DILocation(line: 0, scope: !2023)
!2026 = !DILocation(line: 487, column: 7, scope: !2023)
!2027 = !DILocation(line: 487, column: 24, scope: !2023)
!2028 = distinct !DISubprogram(name: "makeDefault", linkageName: "_ZN3ISG5World11makeDefaultEv", scope: !585, file: !14, line: 269, type: !598, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !597, retainedNodes: !148)
!2029 = !DILocalVariable(name: "this", arg: 1, scope: !2028, type: !584, flags: DIFlagArtificial | DIFlagObjectPointer)
!2030 = !DILocation(line: 0, scope: !2028)
!2031 = !DILocation(line: 269, column: 44, scope: !2028)
!2032 = !DILocation(line: 269, column: 52, scope: !2028)
!2033 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EEC2Ev", scope: !26, file: !18, line: 288, type: !210, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !209, retainedNodes: !148)
!2034 = !DILocalVariable(name: "this", arg: 1, scope: !2033, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!2036 = !DILocation(line: 0, scope: !2033)
!2037 = !DILocation(line: 288, column: 7, scope: !2033)
!2038 = !DILocation(line: 288, column: 30, scope: !2033)
!2039 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE12_Vector_implC2Ev", scope: !29, file: !18, line: 131, type: !176, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !175, retainedNodes: !148)
!2040 = !DILocalVariable(name: "this", arg: 1, scope: !2039, type: !2041, flags: DIFlagArtificial | DIFlagObjectPointer)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2042 = !DILocation(line: 0, scope: !2039)
!2043 = !DILocation(line: 133, column: 4, scope: !2039)
!2044 = !DILocation(line: 131, column: 2, scope: !2039)
!2045 = !DILocation(line: 134, column: 4, scope: !2039)
!2046 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIPN3ISG8RootNodeEEC2Ev", scope: !50, file: !51, line: 156, type: !100, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !99, retainedNodes: !148)
!2047 = !DILocalVariable(name: "this", arg: 1, scope: !2046, type: !2048, flags: DIFlagArtificial | DIFlagObjectPointer)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!2049 = !DILocation(line: 0, scope: !2046)
!2050 = !DILocation(line: 156, column: 7, scope: !2046)
!2051 = !DILocation(line: 156, column: 38, scope: !2046)
!2052 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE17_Vector_impl_dataC2Ev", scope: !151, file: !18, line: 97, type: !159, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !158, retainedNodes: !148)
!2053 = !DILocalVariable(name: "this", arg: 1, scope: !2052, type: !2054, flags: DIFlagArtificial | DIFlagObjectPointer)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!2055 = !DILocation(line: 0, scope: !2052)
!2056 = !DILocation(line: 98, column: 4, scope: !2052)
!2057 = !DILocation(line: 98, column: 16, scope: !2052)
!2058 = !DILocation(line: 98, column: 29, scope: !2052)
!2059 = !DILocation(line: 99, column: 4, scope: !2052)
!2060 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEEC2Ev", scope: !56, file: !57, line: 79, type: !60, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !59, retainedNodes: !148)
!2061 = !DILocalVariable(name: "this", arg: 1, scope: !2060, type: !2062, flags: DIFlagArtificial | DIFlagObjectPointer)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!2063 = !DILocation(line: 0, scope: !2060)
!2064 = !DILocation(line: 79, column: 47, scope: !2060)
!2065 = distinct !DISubprogram(name: "emplace_back<ISG::RootNode *>", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_", scope: !23, file: !603, line: 110, type: !2066, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2070, declaration: !2069, retainedNodes: !148)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!400, !296, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !12, size: 64)
!2069 = !DISubprogram(name: "emplace_back<ISG::RootNode *>", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_", scope: !23, file: !18, line: 1212, type: !2066, scopeLine: 1212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2070)
!2070 = !{!2071}
!2071 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !2072)
!2072 = !{!147}
!2073 = !DILocalVariable(name: "this", arg: 1, scope: !2065, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2074 = !DILocation(line: 0, scope: !2065)
!2075 = !DILocalVariable(name: "__args", arg: 2, scope: !2065, file: !18, line: 1212, type: !2068)
!2076 = !DILocation(line: 1212, column: 26, scope: !2065)
!2077 = !DILocation(line: 112, column: 12, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2065, file: !603, line: 112, column: 6)
!2079 = !DILocation(line: 112, column: 20, scope: !2078)
!2080 = !DILocation(line: 112, column: 39, scope: !2078)
!2081 = !DILocation(line: 112, column: 47, scope: !2078)
!2082 = !DILocation(line: 112, column: 30, scope: !2078)
!2083 = !DILocation(line: 112, column: 6, scope: !2065)
!2084 = !DILocation(line: 115, column: 37, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2078, file: !603, line: 113, column: 4)
!2086 = !DILocation(line: 115, column: 52, scope: !2085)
!2087 = !DILocation(line: 115, column: 60, scope: !2085)
!2088 = !DILocation(line: 116, column: 30, scope: !2085)
!2089 = !DILocation(line: 115, column: 6, scope: !2085)
!2090 = !DILocation(line: 117, column: 14, scope: !2085)
!2091 = !DILocation(line: 117, column: 22, scope: !2085)
!2092 = !DILocation(line: 117, column: 6, scope: !2085)
!2093 = !DILocation(line: 119, column: 4, scope: !2085)
!2094 = !DILocation(line: 121, column: 22, scope: !2078)
!2095 = !DILocation(line: 121, column: 49, scope: !2078)
!2096 = !DILocation(line: 121, column: 4, scope: !2078)
!2097 = !DILocation(line: 123, column: 9, scope: !2065)
!2098 = !DILocation(line: 123, column: 2, scope: !2065)
!2099 = distinct !DISubprogram(name: "construct<ISG::RootNode *, ISG::RootNode *>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_", scope: !40, file: !41, line: 511, type: !2100, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2103, declaration: !2102, retainedNodes: !148)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !48, !47, !2068}
!2102 = !DISubprogram(name: "construct<ISG::RootNode *, ISG::RootNode *>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_", scope: !40, file: !41, line: 511, type: !2100, scopeLine: 511, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !2103)
!2103 = !{!2104, !2071}
!2104 = !DITemplateTypeParameter(name: "_Up", type: !12)
!2105 = !DILocalVariable(name: "__a", arg: 1, scope: !2099, file: !41, line: 511, type: !48)
!2106 = !DILocation(line: 511, column: 28, scope: !2099)
!2107 = !DILocalVariable(name: "__p", arg: 2, scope: !2099, file: !41, line: 511, type: !47)
!2108 = !DILocation(line: 511, column: 66, scope: !2099)
!2109 = !DILocalVariable(name: "__args", arg: 3, scope: !2099, file: !41, line: 512, type: !2068)
!2110 = !DILocation(line: 512, column: 16, scope: !2099)
!2111 = !DILocation(line: 516, column: 4, scope: !2099)
!2112 = !DILocation(line: 516, column: 18, scope: !2099)
!2113 = !DILocation(line: 516, column: 43, scope: !2099)
!2114 = !DILocation(line: 516, column: 8, scope: !2099)
!2115 = !DILocation(line: 520, column: 2, scope: !2099)
!2116 = distinct !DISubprogram(name: "_M_realloc_insert<ISG::RootNode *>", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_", scope: !23, file: !603, line: 427, type: !2117, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2070, declaration: !2119, retainedNodes: !148)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !296, !22, !2068}
!2119 = !DISubprogram(name: "_M_realloc_insert<ISG::RootNode *>", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_", scope: !23, file: !18, line: 1737, type: !2117, scopeLine: 1737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0, templateParams: !2070)
!2120 = !DILocalVariable(name: "this", arg: 1, scope: !2116, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2121 = !DILocation(line: 0, scope: !2116)
!2122 = !DILocalVariable(name: "__position", arg: 2, scope: !2116, file: !18, line: 1737, type: !22)
!2123 = !DILocation(line: 1737, column: 29, scope: !2116)
!2124 = !DILocalVariable(name: "__args", arg: 3, scope: !2116, file: !18, line: 1737, type: !2068)
!2125 = !DILocation(line: 1737, column: 52, scope: !2116)
!2126 = !DILocalVariable(name: "__len", scope: !2116, file: !603, line: 435, type: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2128 = !DILocation(line: 435, column: 23, scope: !2116)
!2129 = !DILocation(line: 436, column: 2, scope: !2116)
!2130 = !DILocalVariable(name: "__old_start", scope: !2116, file: !603, line: 437, type: !284)
!2131 = !DILocation(line: 437, column: 15, scope: !2116)
!2132 = !DILocation(line: 437, column: 35, scope: !2116)
!2133 = !DILocation(line: 437, column: 43, scope: !2116)
!2134 = !DILocalVariable(name: "__old_finish", scope: !2116, file: !603, line: 438, type: !284)
!2135 = !DILocation(line: 438, column: 15, scope: !2116)
!2136 = !DILocation(line: 438, column: 36, scope: !2116)
!2137 = !DILocation(line: 438, column: 44, scope: !2116)
!2138 = !DILocalVariable(name: "__elems_before", scope: !2116, file: !603, line: 439, type: !2127)
!2139 = !DILocation(line: 439, column: 23, scope: !2116)
!2140 = !DILocation(line: 439, column: 53, scope: !2116)
!2141 = !DILocation(line: 439, column: 51, scope: !2116)
!2142 = !DILocalVariable(name: "__new_start", scope: !2116, file: !603, line: 440, type: !284)
!2143 = !DILocation(line: 440, column: 15, scope: !2116)
!2144 = !DILocation(line: 440, column: 45, scope: !2116)
!2145 = !DILocation(line: 440, column: 33, scope: !2116)
!2146 = !DILocalVariable(name: "__new_finish", scope: !2116, file: !603, line: 441, type: !284)
!2147 = !DILocation(line: 441, column: 15, scope: !2116)
!2148 = !DILocation(line: 441, column: 28, scope: !2116)
!2149 = !DILocation(line: 449, column: 35, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2116, file: !603, line: 443, column: 2)
!2151 = !DILocation(line: 450, column: 8, scope: !2150)
!2152 = !DILocation(line: 450, column: 22, scope: !2150)
!2153 = !DILocation(line: 450, column: 20, scope: !2150)
!2154 = !DILocation(line: 452, column: 28, scope: !2150)
!2155 = !DILocation(line: 449, column: 4, scope: !2150)
!2156 = !DILocation(line: 456, column: 17, scope: !2150)
!2157 = !DILocation(line: 461, column: 35, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !603, line: 460, column: 6)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !603, line: 459, column: 29)
!2160 = !DILocation(line: 461, column: 59, scope: !2158)
!2161 = !DILocation(line: 462, column: 7, scope: !2158)
!2162 = !DILocation(line: 462, column: 20, scope: !2158)
!2163 = !DILocation(line: 461, column: 23, scope: !2158)
!2164 = !DILocation(line: 461, column: 21, scope: !2158)
!2165 = !DILocation(line: 464, column: 8, scope: !2158)
!2166 = !DILocation(line: 466, column: 46, scope: !2158)
!2167 = !DILocation(line: 466, column: 54, scope: !2158)
!2168 = !DILocation(line: 467, column: 7, scope: !2158)
!2169 = !DILocation(line: 467, column: 21, scope: !2158)
!2170 = !DILocation(line: 466, column: 23, scope: !2158)
!2171 = !DILocation(line: 466, column: 21, scope: !2158)
!2172 = !DILocation(line: 500, column: 21, scope: !2116)
!2173 = !DILocation(line: 501, column: 13, scope: !2116)
!2174 = !DILocation(line: 501, column: 21, scope: !2116)
!2175 = !DILocation(line: 501, column: 41, scope: !2116)
!2176 = !DILocation(line: 501, column: 39, scope: !2116)
!2177 = !DILocation(line: 500, column: 7, scope: !2116)
!2178 = !DILocation(line: 502, column: 32, scope: !2116)
!2179 = !DILocation(line: 502, column: 13, scope: !2116)
!2180 = !DILocation(line: 502, column: 21, scope: !2116)
!2181 = !DILocation(line: 502, column: 30, scope: !2116)
!2182 = !DILocation(line: 503, column: 33, scope: !2116)
!2183 = !DILocation(line: 503, column: 13, scope: !2116)
!2184 = !DILocation(line: 503, column: 21, scope: !2116)
!2185 = !DILocation(line: 503, column: 31, scope: !2116)
!2186 = !DILocation(line: 504, column: 41, scope: !2116)
!2187 = !DILocation(line: 504, column: 55, scope: !2116)
!2188 = !DILocation(line: 504, column: 53, scope: !2116)
!2189 = !DILocation(line: 504, column: 13, scope: !2116)
!2190 = !DILocation(line: 504, column: 21, scope: !2116)
!2191 = !DILocation(line: 504, column: 39, scope: !2116)
!2192 = !DILocation(line: 505, column: 5, scope: !2116)
!2193 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE3endEv", scope: !23, file: !18, line: 829, type: !356, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !365, retainedNodes: !148)
!2194 = !DILocalVariable(name: "this", arg: 1, scope: !2193, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2195 = !DILocation(line: 0, scope: !2193)
!2196 = !DILocation(line: 830, column: 31, scope: !2193)
!2197 = !DILocation(line: 830, column: 39, scope: !2193)
!2198 = !DILocation(line: 830, column: 16, scope: !2193)
!2199 = !DILocation(line: 830, column: 9, scope: !2193)
!2200 = distinct !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE4backEv", scope: !23, file: !18, line: 1143, type: !418, scopeLine: 1144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !423, retainedNodes: !148)
!2201 = !DILocalVariable(name: "this", arg: 1, scope: !2200, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2202 = !DILocation(line: 0, scope: !2200)
!2203 = !DILocation(line: 1146, column: 11, scope: !2200)
!2204 = !DILocation(line: 1146, column: 17, scope: !2200)
!2205 = !DILocation(line: 1146, column: 9, scope: !2200)
!2206 = !DILocation(line: 1146, column: 2, scope: !2200)
!2207 = distinct !DISubprogram(name: "construct<ISG::RootNode *, ISG::RootNode *>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE9constructIS3_JS3_EEEvPT_DpOT0_", scope: !56, file: !57, line: 160, type: !2208, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2103, declaration: !2210, retainedNodes: !148)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !62, !47, !2068}
!2210 = !DISubprogram(name: "construct<ISG::RootNode *, ISG::RootNode *>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE9constructIS3_JS3_EEEvPT_DpOT0_", scope: !56, file: !57, line: 160, type: !2208, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2103)
!2211 = !DILocalVariable(name: "this", arg: 1, scope: !2207, type: !2062, flags: DIFlagArtificial | DIFlagObjectPointer)
!2212 = !DILocation(line: 0, scope: !2207)
!2213 = !DILocalVariable(name: "__p", arg: 2, scope: !2207, file: !57, line: 160, type: !47)
!2214 = !DILocation(line: 160, column: 17, scope: !2207)
!2215 = !DILocalVariable(name: "__args", arg: 3, scope: !2207, file: !57, line: 160, type: !2068)
!2216 = !DILocation(line: 160, column: 33, scope: !2207)
!2217 = !DILocation(line: 162, column: 18, scope: !2207)
!2218 = !DILocation(line: 162, column: 47, scope: !2207)
!2219 = !DILocation(line: 162, column: 27, scope: !2207)
!2220 = !DILocation(line: 162, column: 4, scope: !2207)
!2221 = !DILocation(line: 162, column: 60, scope: !2207)
!2222 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE12_M_check_lenEmPKc", scope: !23, file: !18, line: 1756, type: !474, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !473, retainedNodes: !148)
!2223 = !DILocalVariable(name: "this", arg: 1, scope: !2222, type: !2224, flags: DIFlagArtificial | DIFlagObjectPointer)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!2225 = !DILocation(line: 0, scope: !2222)
!2226 = !DILocalVariable(name: "__n", arg: 2, scope: !2222, file: !18, line: 1756, type: !17)
!2227 = !DILocation(line: 1756, column: 30, scope: !2222)
!2228 = !DILocalVariable(name: "__s", arg: 3, scope: !2222, file: !18, line: 1756, type: !477)
!2229 = !DILocation(line: 1756, column: 47, scope: !2222)
!2230 = !DILocation(line: 1758, column: 6, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2222, file: !18, line: 1758, column: 6)
!2232 = !DILocation(line: 1758, column: 19, scope: !2231)
!2233 = !DILocation(line: 1758, column: 17, scope: !2231)
!2234 = !DILocation(line: 1758, column: 28, scope: !2231)
!2235 = !DILocation(line: 1758, column: 26, scope: !2231)
!2236 = !DILocation(line: 1758, column: 6, scope: !2222)
!2237 = !DILocation(line: 1759, column: 25, scope: !2231)
!2238 = !DILocation(line: 1759, column: 4, scope: !2231)
!2239 = !DILocalVariable(name: "__len", scope: !2222, file: !18, line: 1761, type: !2127)
!2240 = !DILocation(line: 1761, column: 18, scope: !2222)
!2241 = !DILocation(line: 1761, column: 26, scope: !2222)
!2242 = !DILocation(line: 1761, column: 46, scope: !2222)
!2243 = !DILocation(line: 1761, column: 35, scope: !2222)
!2244 = !DILocation(line: 1761, column: 33, scope: !2222)
!2245 = !DILocation(line: 1762, column: 10, scope: !2222)
!2246 = !DILocation(line: 1762, column: 18, scope: !2222)
!2247 = !DILocation(line: 1762, column: 16, scope: !2222)
!2248 = !DILocation(line: 1762, column: 25, scope: !2222)
!2249 = !DILocation(line: 1762, column: 28, scope: !2222)
!2250 = !DILocation(line: 1762, column: 36, scope: !2222)
!2251 = !DILocation(line: 1762, column: 34, scope: !2222)
!2252 = !DILocation(line: 1762, column: 9, scope: !2222)
!2253 = !DILocation(line: 1762, column: 50, scope: !2222)
!2254 = !DILocation(line: 1762, column: 63, scope: !2222)
!2255 = !DILocation(line: 1762, column: 2, scope: !2222)
!2256 = distinct !DISubprogram(name: "operator-<ISG::RootNode **, std::vector<ISG::RootNode *, std::allocator<ISG::RootNode *> > >", linkageName: "_ZN9__gnu_cxxmiIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_", scope: !37, file: !363, line: 1268, type: !2257, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !561, retainedNodes: !148)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!546, !2259, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !527, size: 64)
!2260 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2256, file: !363, line: 1268, type: !2259)
!2261 = !DILocation(line: 1268, column: 63, scope: !2256)
!2262 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2256, file: !363, line: 1269, type: !2259)
!2263 = !DILocation(line: 1269, column: 56, scope: !2256)
!2264 = !DILocation(line: 1271, column: 14, scope: !2256)
!2265 = !DILocation(line: 1271, column: 20, scope: !2256)
!2266 = !DILocation(line: 1271, column: 29, scope: !2256)
!2267 = !DILocation(line: 1271, column: 35, scope: !2256)
!2268 = !DILocation(line: 1271, column: 27, scope: !2256)
!2269 = !DILocation(line: 1271, column: 7, scope: !2256)
!2270 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE5beginEv", scope: !23, file: !18, line: 811, type: !356, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !355, retainedNodes: !148)
!2271 = !DILocalVariable(name: "this", arg: 1, scope: !2270, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2272 = !DILocation(line: 0, scope: !2270)
!2273 = !DILocation(line: 812, column: 31, scope: !2270)
!2274 = !DILocation(line: 812, column: 39, scope: !2270)
!2275 = !DILocation(line: 812, column: 16, scope: !2270)
!2276 = !DILocation(line: 812, column: 9, scope: !2270)
!2277 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE11_M_allocateEm", scope: !26, file: !18, line: 343, type: !238, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !237, retainedNodes: !148)
!2278 = !DILocalVariable(name: "this", arg: 1, scope: !2277, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2279 = !DILocation(line: 0, scope: !2277)
!2280 = !DILocalVariable(name: "__n", arg: 2, scope: !2277, file: !18, line: 343, type: !19)
!2281 = !DILocation(line: 343, column: 26, scope: !2277)
!2282 = !DILocation(line: 346, column: 9, scope: !2277)
!2283 = !DILocation(line: 346, column: 13, scope: !2277)
!2284 = !DILocation(line: 346, column: 34, scope: !2277)
!2285 = !DILocation(line: 346, column: 43, scope: !2277)
!2286 = !DILocation(line: 346, column: 20, scope: !2277)
!2287 = !DILocation(line: 346, column: 2, scope: !2277)
!2288 = !DILocalVariable(name: "__first", arg: 1, scope: !564, file: !18, line: 465, type: !284)
!2289 = !DILocation(line: 465, column: 27, scope: !564)
!2290 = !DILocalVariable(name: "__last", arg: 2, scope: !564, file: !18, line: 465, type: !284)
!2291 = !DILocation(line: 465, column: 44, scope: !564)
!2292 = !DILocalVariable(name: "__result", arg: 3, scope: !564, file: !18, line: 465, type: !284)
!2293 = !DILocation(line: 465, column: 60, scope: !564)
!2294 = !DILocalVariable(name: "__alloc", arg: 4, scope: !564, file: !18, line: 466, type: !285)
!2295 = !DILocation(line: 466, column: 21, scope: !564)
!2296 = !DILocation(line: 469, column: 24, scope: !564)
!2297 = !DILocation(line: 469, column: 33, scope: !564)
!2298 = !DILocation(line: 469, column: 41, scope: !564)
!2299 = !DILocation(line: 469, column: 51, scope: !564)
!2300 = !DILocation(line: 469, column: 9, scope: !564)
!2301 = !DILocation(line: 469, column: 2, scope: !564)
!2302 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !505, file: !363, line: 1105, type: !559, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !558, retainedNodes: !148)
!2303 = !DILocalVariable(name: "this", arg: 1, scope: !2302, type: !2304, flags: DIFlagArtificial | DIFlagObjectPointer)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!2305 = !DILocation(line: 0, scope: !2302)
!2306 = !DILocation(line: 1106, column: 16, scope: !2302)
!2307 = !DILocation(line: 1106, column: 9, scope: !2302)
!2308 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !26, file: !18, line: 276, type: !196, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !195, retainedNodes: !148)
!2309 = !DILocalVariable(name: "this", arg: 1, scope: !2308, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2310 = !DILocation(line: 0, scope: !2308)
!2311 = !DILocation(line: 277, column: 22, scope: !2308)
!2312 = !DILocation(line: 277, column: 9, scope: !2308)
!2313 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE13_M_deallocateEPS2_m", scope: !26, file: !18, line: 350, type: !241, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !240, retainedNodes: !148)
!2314 = !DILocalVariable(name: "this", arg: 1, scope: !2313, type: !2035, flags: DIFlagArtificial | DIFlagObjectPointer)
!2315 = !DILocation(line: 0, scope: !2313)
!2316 = !DILocalVariable(name: "__p", arg: 2, scope: !2313, file: !18, line: 350, type: !154)
!2317 = !DILocation(line: 350, column: 29, scope: !2313)
!2318 = !DILocalVariable(name: "__n", arg: 3, scope: !2313, file: !18, line: 350, type: !19)
!2319 = !DILocation(line: 350, column: 41, scope: !2313)
!2320 = !DILocation(line: 353, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2313, file: !18, line: 353, column: 6)
!2322 = !DILocation(line: 353, column: 6, scope: !2313)
!2323 = !DILocation(line: 354, column: 20, scope: !2321)
!2324 = !DILocation(line: 354, column: 29, scope: !2321)
!2325 = !DILocation(line: 354, column: 34, scope: !2321)
!2326 = !DILocation(line: 354, column: 4, scope: !2321)
!2327 = !DILocation(line: 355, column: 7, scope: !2313)
!2328 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE8max_sizeEv", scope: !23, file: !18, line: 923, type: !384, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !386, retainedNodes: !148)
!2329 = !DILocalVariable(name: "this", arg: 1, scope: !2328, type: !2224, flags: DIFlagArtificial | DIFlagObjectPointer)
!2330 = !DILocation(line: 0, scope: !2328)
!2331 = !DILocation(line: 924, column: 28, scope: !2328)
!2332 = !DILocation(line: 924, column: 16, scope: !2328)
!2333 = !DILocation(line: 924, column: 9, scope: !2328)
!2334 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIPN3ISG8RootNodeESaIS2_EE4sizeEv", scope: !23, file: !18, line: 918, type: !384, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !383, retainedNodes: !148)
!2335 = !DILocalVariable(name: "this", arg: 1, scope: !2334, type: !2224, flags: DIFlagArtificial | DIFlagObjectPointer)
!2336 = !DILocation(line: 0, scope: !2334)
!2337 = !DILocation(line: 919, column: 32, scope: !2334)
!2338 = !DILocation(line: 919, column: 40, scope: !2334)
!2339 = !DILocation(line: 919, column: 58, scope: !2334)
!2340 = !DILocation(line: 919, column: 66, scope: !2334)
!2341 = !DILocation(line: 919, column: 50, scope: !2334)
!2342 = !DILocation(line: 919, column: 9, scope: !2334)
!2343 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !2, file: !2344, line: 254, type: !2345, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2349, retainedNodes: !148)
!2344 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!2347, !2347, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!2349 = !{!2350}
!2350 = !DITemplateTypeParameter(name: "_Tp", type: !21)
!2351 = !DILocalVariable(name: "__a", arg: 1, scope: !2343, file: !2352, line: 407, type: !2347)
!2352 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!2353 = !DILocation(line: 407, column: 19, scope: !2343)
!2354 = !DILocalVariable(name: "__b", arg: 2, scope: !2343, file: !2352, line: 407, type: !2347)
!2355 = !DILocation(line: 407, column: 31, scope: !2343)
!2356 = !DILocation(line: 259, column: 11, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2343, file: !2344, line: 259, column: 11)
!2358 = !DILocation(line: 259, column: 17, scope: !2357)
!2359 = !DILocation(line: 259, column: 15, scope: !2357)
!2360 = !DILocation(line: 259, column: 11, scope: !2343)
!2361 = !DILocation(line: 260, column: 9, scope: !2357)
!2362 = !DILocation(line: 260, column: 2, scope: !2357)
!2363 = !DILocation(line: 261, column: 14, scope: !2343)
!2364 = !DILocation(line: 261, column: 7, scope: !2343)
!2365 = !DILocation(line: 262, column: 5, scope: !2343)
!2366 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE11_S_max_sizeERKS3_", scope: !23, file: !18, line: 1776, type: !484, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !483, retainedNodes: !148)
!2367 = !DILocalVariable(name: "__a", arg: 1, scope: !2366, file: !18, line: 1776, type: !486)
!2368 = !DILocation(line: 1776, column: 41, scope: !2366)
!2369 = !DILocalVariable(name: "__diffmax", scope: !2366, file: !18, line: 1781, type: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2371 = !DILocation(line: 1781, column: 15, scope: !2366)
!2372 = !DILocalVariable(name: "__allocmax", scope: !2366, file: !18, line: 1783, type: !2370)
!2373 = !DILocation(line: 1783, column: 15, scope: !2366)
!2374 = !DILocation(line: 1783, column: 52, scope: !2366)
!2375 = !DILocation(line: 1783, column: 28, scope: !2366)
!2376 = !DILocation(line: 1784, column: 9, scope: !2366)
!2377 = !DILocation(line: 1784, column: 2, scope: !2366)
!2378 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG8RootNodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !26, file: !18, line: 280, type: !201, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !200, retainedNodes: !148)
!2379 = !DILocalVariable(name: "this", arg: 1, scope: !2378, type: !2380, flags: DIFlagArtificial | DIFlagObjectPointer)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2381 = !DILocation(line: 0, scope: !2378)
!2382 = !DILocation(line: 281, column: 22, scope: !2378)
!2383 = !DILocation(line: 281, column: 9, scope: !2378)
!2384 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8max_sizeERKS3_", scope: !40, file: !41, line: 547, type: !122, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !121, retainedNodes: !148)
!2385 = !DILocalVariable(name: "__a", arg: 1, scope: !2384, file: !41, line: 547, type: !125)
!2386 = !DILocation(line: 547, column: 38, scope: !2384)
!2387 = !DILocation(line: 550, column: 9, scope: !2384)
!2388 = !DILocation(line: 550, column: 13, scope: !2384)
!2389 = !DILocation(line: 550, column: 2, scope: !2384)
!2390 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !2, file: !2344, line: 230, type: !2345, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2349, retainedNodes: !148)
!2391 = !DILocalVariable(name: "__a", arg: 1, scope: !2390, file: !2344, line: 230, type: !2347)
!2392 = !DILocation(line: 230, column: 20, scope: !2390)
!2393 = !DILocalVariable(name: "__b", arg: 2, scope: !2390, file: !2344, line: 230, type: !2347)
!2394 = !DILocation(line: 230, column: 36, scope: !2390)
!2395 = !DILocation(line: 235, column: 11, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2390, file: !2344, line: 235, column: 11)
!2397 = !DILocation(line: 235, column: 17, scope: !2396)
!2398 = !DILocation(line: 235, column: 15, scope: !2396)
!2399 = !DILocation(line: 235, column: 11, scope: !2390)
!2400 = !DILocation(line: 236, column: 9, scope: !2396)
!2401 = !DILocation(line: 236, column: 2, scope: !2396)
!2402 = !DILocation(line: 237, column: 14, scope: !2390)
!2403 = !DILocation(line: 237, column: 7, scope: !2390)
!2404 = !DILocation(line: 238, column: 5, scope: !2390)
!2405 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8max_sizeEv", scope: !56, file: !57, line: 154, type: !94, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !93, retainedNodes: !148)
!2406 = !DILocalVariable(name: "this", arg: 1, scope: !2405, type: !2407, flags: DIFlagArtificial | DIFlagObjectPointer)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2408 = !DILocation(line: 0, scope: !2405)
!2409 = !DILocation(line: 155, column: 16, scope: !2405)
!2410 = !DILocation(line: 155, column: 9, scope: !2405)
!2411 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE11_M_max_sizeEv", scope: !56, file: !57, line: 197, type: !94, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !96, retainedNodes: !148)
!2412 = !DILocalVariable(name: "this", arg: 1, scope: !2411, type: !2407, flags: DIFlagArtificial | DIFlagObjectPointer)
!2413 = !DILocation(line: 0, scope: !2411)
!2414 = !DILocation(line: 200, column: 2, scope: !2411)
!2415 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEC2ERKS4_", scope: !505, file: !363, line: 1027, type: !513, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !512, retainedNodes: !148)
!2416 = !DILocalVariable(name: "this", arg: 1, scope: !2415, type: !2417, flags: DIFlagArtificial | DIFlagObjectPointer)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2418 = !DILocation(line: 0, scope: !2415)
!2419 = !DILocalVariable(name: "__i", arg: 2, scope: !2415, file: !363, line: 1027, type: !515)
!2420 = !DILocation(line: 1027, column: 42, scope: !2415)
!2421 = !DILocation(line: 1028, column: 9, scope: !2415)
!2422 = !DILocation(line: 1028, column: 20, scope: !2415)
!2423 = !DILocation(line: 1028, column: 27, scope: !2415)
!2424 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE8allocateERS3_m", scope: !40, file: !41, line: 463, type: !44, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !43, retainedNodes: !148)
!2425 = !DILocalVariable(name: "__a", arg: 1, scope: !2424, file: !41, line: 463, type: !48)
!2426 = !DILocation(line: 463, column: 32, scope: !2424)
!2427 = !DILocalVariable(name: "__n", arg: 2, scope: !2424, file: !41, line: 463, type: !113)
!2428 = !DILocation(line: 463, column: 47, scope: !2424)
!2429 = !DILocation(line: 464, column: 16, scope: !2424)
!2430 = !DILocation(line: 464, column: 29, scope: !2424)
!2431 = !DILocation(line: 464, column: 20, scope: !2424)
!2432 = !DILocation(line: 464, column: 9, scope: !2424)
!2433 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE8allocateEmPKv", scope: !56, file: !57, line: 103, type: !85, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !84, retainedNodes: !148)
!2434 = !DILocalVariable(name: "this", arg: 1, scope: !2433, type: !2062, flags: DIFlagArtificial | DIFlagObjectPointer)
!2435 = !DILocation(line: 0, scope: !2433)
!2436 = !DILocalVariable(name: "__n", arg: 2, scope: !2433, file: !57, line: 103, type: !87)
!2437 = !DILocation(line: 103, column: 26, scope: !2433)
!2438 = !DILocalVariable(arg: 3, scope: !2433, file: !57, line: 103, type: !88)
!2439 = !DILocation(line: 103, column: 43, scope: !2433)
!2440 = !DILocation(line: 111, column: 23, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !57, line: 111, column: 6)
!2442 = !DILocation(line: 111, column: 35, scope: !2441)
!2443 = !DILocation(line: 111, column: 27, scope: !2441)
!2444 = !DILocation(line: 111, column: 6, scope: !2433)
!2445 = !DILocation(line: 115, column: 10, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !57, line: 115, column: 10)
!2447 = distinct !DILexicalBlock(scope: !2441, file: !57, line: 112, column: 4)
!2448 = !DILocation(line: 115, column: 14, scope: !2446)
!2449 = !DILocation(line: 115, column: 10, scope: !2447)
!2450 = !DILocation(line: 116, column: 8, scope: !2446)
!2451 = !DILocation(line: 117, column: 6, scope: !2447)
!2452 = !DILocation(line: 127, column: 42, scope: !2433)
!2453 = !DILocation(line: 127, column: 46, scope: !2433)
!2454 = !DILocation(line: 127, column: 27, scope: !2433)
!2455 = !DILocation(line: 127, column: 2, scope: !2433)
!2456 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG8RootNodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE", scope: !23, file: !18, line: 453, type: !282, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !281, retainedNodes: !148)
!2457 = !DILocalVariable(name: "__first", arg: 1, scope: !2456, file: !18, line: 453, type: !284)
!2458 = !DILocation(line: 453, column: 30, scope: !2456)
!2459 = !DILocalVariable(name: "__last", arg: 2, scope: !2456, file: !18, line: 453, type: !284)
!2460 = !DILocation(line: 453, column: 47, scope: !2456)
!2461 = !DILocalVariable(name: "__result", arg: 3, scope: !2456, file: !18, line: 453, type: !284)
!2462 = !DILocation(line: 453, column: 63, scope: !2456)
!2463 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2456, file: !18, line: 454, type: !285)
!2464 = !DILocation(line: 454, column: 24, scope: !2456)
!2465 = !DILocalVariable(arg: 5, scope: !2456, file: !18, line: 454, type: !248)
!2466 = !DILocation(line: 454, column: 42, scope: !2456)
!2467 = !DILocation(line: 456, column: 27, scope: !2456)
!2468 = !DILocation(line: 456, column: 36, scope: !2456)
!2469 = !DILocation(line: 456, column: 44, scope: !2456)
!2470 = !DILocation(line: 456, column: 54, scope: !2456)
!2471 = !DILocation(line: 456, column: 9, scope: !2456)
!2472 = !DILocation(line: 456, column: 2, scope: !2456)
!2473 = distinct !DISubprogram(name: "__relocate_a<ISG::RootNode **, ISG::RootNode **, std::allocator<ISG::RootNode *> >", linkageName: "_ZSt12__relocate_aIPPN3ISG8RootNodeES3_SaIS2_EET0_T_S6_S5_RT1_", scope: !2, file: !2474, line: 1040, type: !2475, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2477, retainedNodes: !148)
!2474 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!47, !47, !47, !47, !111}
!2477 = !{!2478, !2479, !2480}
!2478 = !DITemplateTypeParameter(name: "_InputIterator", type: !47)
!2479 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !47)
!2480 = !DITemplateTypeParameter(name: "_Allocator", type: !50)
!2481 = !DILocalVariable(name: "__first", arg: 1, scope: !2473, file: !2474, line: 1040, type: !47)
!2482 = !DILocation(line: 1040, column: 33, scope: !2473)
!2483 = !DILocalVariable(name: "__last", arg: 2, scope: !2473, file: !2474, line: 1040, type: !47)
!2484 = !DILocation(line: 1040, column: 57, scope: !2473)
!2485 = !DILocalVariable(name: "__result", arg: 3, scope: !2473, file: !2474, line: 1041, type: !47)
!2486 = !DILocation(line: 1041, column: 21, scope: !2473)
!2487 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2473, file: !2474, line: 1041, type: !111)
!2488 = !DILocation(line: 1041, column: 43, scope: !2473)
!2489 = !DILocation(line: 1046, column: 47, scope: !2473)
!2490 = !DILocation(line: 1046, column: 29, scope: !2473)
!2491 = !DILocation(line: 1047, column: 26, scope: !2473)
!2492 = !DILocation(line: 1047, column: 8, scope: !2473)
!2493 = !DILocation(line: 1048, column: 26, scope: !2473)
!2494 = !DILocation(line: 1048, column: 8, scope: !2473)
!2495 = !DILocation(line: 1048, column: 37, scope: !2473)
!2496 = !DILocation(line: 1046, column: 14, scope: !2473)
!2497 = !DILocation(line: 1046, column: 7, scope: !2473)
!2498 = distinct !DISubprogram(name: "__relocate_a_1<ISG::RootNode *, ISG::RootNode *>", linkageName: "_ZSt14__relocate_a_1IPN3ISG8RootNodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E", scope: !2, file: !2474, line: 1006, type: !2499, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2507, retainedNodes: !148)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !47, !47, !47, !111}
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<RootNode *>::value, ISG::RootNode **>", scope: !2, file: !249, line: 2205, baseType: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2503, file: !249, line: 2199, baseType: !47)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, ISG::RootNode **>", scope: !2, file: !249, line: 2198, size: 8, flags: DIFlagTypePassByValue, elements: !148, templateParams: !2504, identifier: "_ZTSSt9enable_ifILb1EPPN3ISG8RootNodeEE")
!2504 = !{!2505, !2506}
!2505 = !DITemplateValueParameter(type: !141, value: i1 true)
!2506 = !DITemplateTypeParameter(name: "_Tp", type: !47)
!2507 = !{!98, !2104}
!2508 = !DILocalVariable(name: "__first", arg: 1, scope: !2498, file: !2474, line: 1006, type: !47)
!2509 = !DILocation(line: 1006, column: 25, scope: !2498)
!2510 = !DILocalVariable(name: "__last", arg: 2, scope: !2498, file: !2474, line: 1006, type: !47)
!2511 = !DILocation(line: 1006, column: 39, scope: !2498)
!2512 = !DILocalVariable(name: "__result", arg: 3, scope: !2498, file: !2474, line: 1007, type: !47)
!2513 = !DILocation(line: 1007, column: 11, scope: !2498)
!2514 = !DILocalVariable(arg: 4, scope: !2498, file: !2474, line: 1007, type: !111)
!2515 = !DILocation(line: 1007, column: 36, scope: !2498)
!2516 = !DILocalVariable(name: "__count", scope: !2498, file: !2474, line: 1009, type: !548)
!2517 = !DILocation(line: 1009, column: 17, scope: !2498)
!2518 = !DILocation(line: 1009, column: 27, scope: !2498)
!2519 = !DILocation(line: 1009, column: 36, scope: !2498)
!2520 = !DILocation(line: 1009, column: 34, scope: !2498)
!2521 = !DILocation(line: 1010, column: 11, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2498, file: !2474, line: 1010, column: 11)
!2523 = !DILocation(line: 1010, column: 19, scope: !2522)
!2524 = !DILocation(line: 1010, column: 11, scope: !2498)
!2525 = !DILocation(line: 1011, column: 20, scope: !2522)
!2526 = !DILocation(line: 1011, column: 30, scope: !2522)
!2527 = !DILocation(line: 1011, column: 39, scope: !2522)
!2528 = !DILocation(line: 1011, column: 47, scope: !2522)
!2529 = !DILocation(line: 1011, column: 2, scope: !2522)
!2530 = !DILocation(line: 1012, column: 14, scope: !2498)
!2531 = !DILocation(line: 1012, column: 25, scope: !2498)
!2532 = !DILocation(line: 1012, column: 23, scope: !2498)
!2533 = !DILocation(line: 1012, column: 7, scope: !2498)
!2534 = distinct !DISubprogram(name: "__niter_base<ISG::RootNode **>", linkageName: "_ZSt12__niter_baseIPPN3ISG8RootNodeEET_S4_", scope: !2, file: !2344, line: 313, type: !2535, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !524, retainedNodes: !148)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!47, !47}
!2537 = !DILocalVariable(name: "__it", arg: 1, scope: !2534, file: !2344, line: 313, type: !47)
!2538 = !DILocation(line: 313, column: 28, scope: !2534)
!2539 = !DILocation(line: 315, column: 14, scope: !2534)
!2540 = !DILocation(line: 315, column: 7, scope: !2534)
!2541 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG8RootNodeEEE10deallocateERS3_PS2_m", scope: !40, file: !41, line: 495, type: !119, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !118, retainedNodes: !148)
!2542 = !DILocalVariable(name: "__a", arg: 1, scope: !2541, file: !41, line: 495, type: !48)
!2543 = !DILocation(line: 495, column: 34, scope: !2541)
!2544 = !DILocalVariable(name: "__p", arg: 2, scope: !2541, file: !41, line: 495, type: !46)
!2545 = !DILocation(line: 495, column: 47, scope: !2541)
!2546 = !DILocalVariable(name: "__n", arg: 3, scope: !2541, file: !41, line: 495, type: !113)
!2547 = !DILocation(line: 495, column: 62, scope: !2541)
!2548 = !DILocation(line: 496, column: 9, scope: !2541)
!2549 = !DILocation(line: 496, column: 24, scope: !2541)
!2550 = !DILocation(line: 496, column: 29, scope: !2541)
!2551 = !DILocation(line: 496, column: 13, scope: !2541)
!2552 = !DILocation(line: 496, column: 35, scope: !2541)
!2553 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG8RootNodeEE10deallocateEPS3_m", scope: !56, file: !57, line: 132, type: !91, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !90, retainedNodes: !148)
!2554 = !DILocalVariable(name: "this", arg: 1, scope: !2553, type: !2062, flags: DIFlagArtificial | DIFlagObjectPointer)
!2555 = !DILocation(line: 0, scope: !2553)
!2556 = !DILocalVariable(name: "__p", arg: 2, scope: !2553, file: !57, line: 132, type: !47)
!2557 = !DILocation(line: 132, column: 23, scope: !2553)
!2558 = !DILocalVariable(name: "__t", arg: 3, scope: !2553, file: !57, line: 132, type: !87)
!2559 = !DILocation(line: 132, column: 38, scope: !2553)
!2560 = !DILocation(line: 145, column: 20, scope: !2553)
!2561 = !DILocation(line: 145, column: 2, scope: !2553)
!2562 = !DILocation(line: 150, column: 7, scope: !2553)
!2563 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEmiEl", scope: !505, file: !363, line: 1100, type: !554, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !557, retainedNodes: !148)
!2564 = !DILocalVariable(name: "this", arg: 1, scope: !2563, type: !2304, flags: DIFlagArtificial | DIFlagObjectPointer)
!2565 = !DILocation(line: 0, scope: !2563)
!2566 = !DILocalVariable(name: "__n", arg: 2, scope: !2563, file: !363, line: 1100, type: !546)
!2567 = !DILocation(line: 1100, column: 33, scope: !2563)
!2568 = !DILocation(line: 1101, column: 34, scope: !2563)
!2569 = !DILocation(line: 1101, column: 47, scope: !2563)
!2570 = !DILocation(line: 1101, column: 45, scope: !2563)
!2571 = !DILocation(line: 1101, column: 16, scope: !2563)
!2572 = !DILocation(line: 1101, column: 9, scope: !2563)
!2573 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG8RootNodeESt6vectorIS3_SaIS3_EEEdeEv", scope: !505, file: !363, line: 1042, type: !518, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !517, retainedNodes: !148)
!2574 = !DILocalVariable(name: "this", arg: 1, scope: !2573, type: !2304, flags: DIFlagArtificial | DIFlagObjectPointer)
!2575 = !DILocation(line: 0, scope: !2573)
!2576 = !DILocation(line: 1043, column: 17, scope: !2573)
!2577 = !DILocation(line: 1043, column: 9, scope: !2573)
!2578 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_ISG.cxx", scope: !1290, file: !1290, type: !2579, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !148)
!2579 = !DISubroutineType(types: !148)
!2580 = !DILocation(line: 0, scope: !2578)
