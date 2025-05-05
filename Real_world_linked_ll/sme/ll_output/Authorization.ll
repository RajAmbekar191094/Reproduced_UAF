; ModuleID = 'common/Authorization.cpp'
source_filename = "common/Authorization.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.Log::_end_marker" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%class.Authorization = type { i32, %"class.std::__cxx11::basic_string" }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%class.StringVector = type { %"class.std::__cxx11::basic_string", %"class.std::vector.3" }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl" }
%"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl" = type { %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data" }
%"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator.8" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Poco::Message" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, %"class.Poco::Timestamp", i64, %"class.std::__cxx11::basic_string", i64, ptr, i32, ptr }
%"class.Poco::Timestamp" = type { i64 }
%struct.StringToken = type { i64, i64 }
%"class.Poco::Logger" = type <{ %"class.Poco::Channel.base", [4 x i8], %"class.std::__cxx11::basic_string", %"class.Poco::AutoPtr", i32, [4 x i8] }>
%"class.Poco::Channel.base" = type <{ %"class.Poco::Configurable", %"class.Poco::RefCountedObject.base" }>
%"class.Poco::Configurable" = type { ptr }
%"class.Poco::RefCountedObject.base" = type <{ ptr, %"class.Poco::AtomicCounter" }>
%"class.Poco::AtomicCounter" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.Poco::AutoPtr" = type { ptr }
%"class.Poco::LocalDateTime" = type <{ %"class.Poco::DateTime", i32, [4 x i8] }>
%"class.Poco::DateTime" = type { i64, i16, i16, i16, i16, i16, i16, i16, i16 }
%"class.__gnu_cxx::__normal_iterator.9" = type { ptr }

$_ZN3Log11_end_markerC2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv = comdat any

$_ZN9__gnu_cxxneIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESI_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv = comdat any

$_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN12StringVector5beginEv = comdat any

$_ZN9__gnu_cxxneIP11StringTokenSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZN12StringVector3endEv = comdat any

$_ZNK12StringVector8getParamB5cxx11ERK11StringToken = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZN12StringVectorD2Ev = comdat any

$_ZN3Log16isShutdownCalledEv = comdat any

$_ZNK4Poco6Logger5errorEv = comdat any

$_ZN3Log6prefixILi1023EEEPcS1_PKc = comdat any

$_ZSt9boolalphaRSt8ios_base = comdat any

$_ZNK4Poco6Logger4nameB5cxx11Ev = comdat any

$_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv = comdat any

$_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv = comdat any

$_ZN9__gnu_cxxneIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESJ_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN13AuthorizationC2ENS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv = comdat any

$_ZN13AuthorizationC2Ev = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP11StringTokenEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m = comdat any

$_ZNSaI11StringTokenED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev = comdat any

$_ZNSt8ios_base4setfESt13_Ios_Fmtflags = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev = comdat any

$_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvT_SB_ = comdat any

$_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m = comdat any

$_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE10deallocateERS8_PS7_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE10deallocateEPS8_m = comdat any

$_ZNSaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev = comdat any

$_ZNSt11char_traitsIcE7compareEPKcS2_m = comdat any

$_ZNSt11char_traitsIcE2ltERKcS2_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKS9_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKSA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZN3LogL3endE = internal global %"struct.Log::_end_marker" zeroinitializer, align 1, !dbg !7
@_ZZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8, !dbg !18
@_ZGVZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11 = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"access_token\00", align 1, !dbg !1363
@.str.2 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1, !dbg !1368
@.str.3 = private unnamed_addr constant [8 x i8] c"Bearer \00", align 1, !dbg !1373
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1, !dbg !1378
@.str.5 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1, !dbg !1383
@.str.6 = private unnamed_addr constant [132 x i8] c"No HTTP Authorization type detected. Assuming no authorization needed. Specify access_token to set the Authorization Bearer header.\00", align 1, !dbg !1388
@.str.7 = private unnamed_addr constant [3 x i8] c"| \00", align 1, !dbg !1393
@.str.8 = private unnamed_addr constant [25 x i8] c"common/Authorization.cpp\00", align 1, !dbg !1395
@.str.9 = private unnamed_addr constant [14 x i8] c"access_header\00", align 1, !dbg !1400
@_ZN3Log10IsShutdownE = external global i8, align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1, !dbg !1402
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Authorization.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !2434 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !2435
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !2437
  ret void, !dbg !2435
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" !dbg !2438 {
  call void @_ZN3Log11_end_markerC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3LogL3endE), !dbg !2439
  ret void, !dbg !2439
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log11_end_markerC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2441 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2442, metadata !DIExpression()), !dbg !2444
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2445
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZNK13Authorization12authorizeURIERN4Poco3URIE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) #5 align 2 personality ptr @__gxx_personality_v0 !dbg !20 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::vector", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2446, metadata !DIExpression()), !dbg !2448
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2449, metadata !DIExpression()), !dbg !2450
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %class.Authorization, ptr %14, i32 0, i32 0, !dbg !2451
  %16 = load i32, ptr %15, align 8, !dbg !2451
  %17 = icmp eq i32 %16, 1, !dbg !2453
  br i1 %17, label %18, label %68, !dbg !2454

18:                                               ; preds = %2
  %19 = load atomic i8, ptr @_ZGVZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11 acquire, align 8, !dbg !2455
  %20 = icmp eq i8 %19, 0, !dbg !2455
  br i1 %20, label %21, label %27, !dbg !2455, !prof !2457

21:                                               ; preds = %18
  %22 = call i32 @__cxa_guard_acquire(ptr @_ZGVZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11) #3, !dbg !2455
  %23 = icmp ne i32 %22, 0, !dbg !2455
  br i1 %23, label %24, label %27, !dbg !2455

24:                                               ; preds = %21
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !2458
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11, ptr noundef @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %25 unwind label %50, !dbg !2458

25:                                               ; preds = %24
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !2458
  %26 = call i32 @__cxa_atexit(ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11, ptr @__dso_handle) #3, !dbg !2455
  call void @__cxa_guard_release(ptr @_ZGVZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11) #3, !dbg !2455
  br label %27, !dbg !2455

27:                                               ; preds = %25, %21, %18
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2459, metadata !DIExpression()), !dbg !2460
  %28 = load ptr, ptr %4, align 8, !dbg !2461
  call void @_ZNK4Poco3URI18getQueryParametersB5cxx11Ev(ptr sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(200) %28), !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2463, metadata !DIExpression()), !dbg !2466
  store ptr %8, ptr %9, align 8, !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2468, metadata !DIExpression()), !dbg !2466
  %29 = load ptr, ptr %9, align 8, !dbg !2469
  %30 = call ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #3, !dbg !2469
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !2469
  store ptr %30, ptr %31, align 8, !dbg !2469
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2470, metadata !DIExpression()), !dbg !2466
  %32 = load ptr, ptr %9, align 8, !dbg !2469
  %33 = call ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #3, !dbg !2469
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !2469
  store ptr %33, ptr %34, align 8, !dbg !2469
  br label %35, !dbg !2469

35:                                               ; preds = %59, %27
  %36 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESI_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #3, !dbg !2469
  br i1 %36, label %37, label %61, !dbg !2469

37:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2471, metadata !DIExpression()), !dbg !2473
  %38 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #3, !dbg !2474
  store ptr %38, ptr %12, align 8, !dbg !2473
  %39 = load ptr, ptr %12, align 8, !dbg !2475
  %40 = getelementptr inbounds %"struct.std::pair", ptr %39, i32 0, i32 0, !dbg !2478
  %41 = call noundef zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11) #3, !dbg !2479
  br i1 %41, label %42, label %58, !dbg !2480

42:                                               ; preds = %37
  %43 = getelementptr inbounds %class.Authorization, ptr %14, i32 0, i32 1, !dbg !2481
  %44 = load ptr, ptr %12, align 8, !dbg !2483
  %45 = getelementptr inbounds %"struct.std::pair", ptr %44, i32 0, i32 1, !dbg !2484
  %46 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %47 unwind label %54, !dbg !2485

47:                                               ; preds = %42
  %48 = load ptr, ptr %4, align 8, !dbg !2486
  invoke void @_ZN4Poco3URI18setQueryParametersERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(200) %48, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %49 unwind label %54, !dbg !2487

49:                                               ; preds = %47
  store i32 1, ptr %13, align 4
  br label %65, !dbg !2488

50:                                               ; preds = %24
  %51 = landingpad { ptr, i32 }
          cleanup, !dbg !2489
  %52 = extractvalue { ptr, i32 } %51, 0, !dbg !2489
  store ptr %52, ptr %6, align 8, !dbg !2489
  %53 = extractvalue { ptr, i32 } %51, 1, !dbg !2489
  store i32 %53, ptr %7, align 4, !dbg !2489
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !2458
  call void @__cxa_guard_abort(ptr @_ZGVZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11) #3, !dbg !2455
  br label %69, !dbg !2455

54:                                               ; preds = %61, %47, %42
  %55 = landingpad { ptr, i32 }
          cleanup, !dbg !2490
  %56 = extractvalue { ptr, i32 } %55, 0, !dbg !2490
  store ptr %56, ptr %6, align 8, !dbg !2490
  %57 = extractvalue { ptr, i32 } %55, 1, !dbg !2490
  store i32 %57, ptr %7, align 4, !dbg !2490
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #3, !dbg !2491
  br label %69, !dbg !2491

58:                                               ; preds = %37
  br label %59, !dbg !2492

59:                                               ; preds = %58
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #3, !dbg !2469
  br label %35, !dbg !2469, !llvm.loop !2493

61:                                               ; preds = %35
  %62 = load ptr, ptr %4, align 8, !dbg !2495
  %63 = getelementptr inbounds %class.Authorization, ptr %14, i32 0, i32 1, !dbg !2496
  invoke void @_ZN4Poco3URI17addQueryParameterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(200) %62, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK13Authorization12authorizeURIERN4Poco3URIEE3keyB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %64 unwind label %54, !dbg !2497

64:                                               ; preds = %61
  store i32 0, ptr %13, align 4, !dbg !2491
  br label %65, !dbg !2491

65:                                               ; preds = %64, %49
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #3, !dbg !2491
  %66 = load i32, ptr %13, align 4
  switch i32 %66, label %74 [
    i32 0, label %67
    i32 1, label %68
  ]

67:                                               ; preds = %65
  br label %68, !dbg !2498

68:                                               ; preds = %65, %67, %2
  ret void, !dbg !2499

69:                                               ; preds = %54, %50
  %70 = load ptr, ptr %6, align 8, !dbg !2455
  %71 = load i32, ptr %7, align 4, !dbg !2455
  %72 = insertvalue { ptr, i32 } poison, ptr %70, 0, !dbg !2455
  %73 = insertvalue { ptr, i32 } %72, i32 %71, 1, !dbg !2455
  resume { ptr, i32 } %73, !dbg !2455

74:                                               ; preds = %65
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nounwind
declare i32 @__cxa_guard_acquire(ptr) #3

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2500 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  %11 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2506, metadata !DIExpression()), !dbg !2508
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2509, metadata !DIExpression()), !dbg !2510
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2511, metadata !DIExpression()), !dbg !2512
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i32 0, i32 0, !dbg !2513
  %14 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %12), !dbg !2514
  %15 = load ptr, ptr %6, align 8, !dbg !2515
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15), !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2516, metadata !DIExpression()), !dbg !2518
  %16 = load ptr, ptr %5, align 8, !dbg !2519
  %17 = icmp ne ptr %16, null, !dbg !2519
  br i1 %17, label %18, label %24, !dbg !2519

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8, !dbg !2520
  %20 = load ptr, ptr %5, align 8, !dbg !2521
  %21 = invoke noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %20)
          to label %22 unwind label %30, !dbg !2522

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !2523
  br label %25, !dbg !2519

24:                                               ; preds = %3
  br label %25, !dbg !2519

25:                                               ; preds = %24, %22
  %26 = phi ptr [ %23, %22 ], [ inttoptr (i64 1 to ptr), %24 ], !dbg !2519
  store ptr %26, ptr %7, align 8, !dbg !2518
  %27 = load ptr, ptr %5, align 8, !dbg !2524
  %28 = load ptr, ptr %7, align 8, !dbg !2525
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %30, !dbg !2526

29:                                               ; preds = %25
  ret void, !dbg !2527

30:                                               ; preds = %25, %18
  %31 = landingpad { ptr, i32 }
          cleanup, !dbg !2528
  %32 = extractvalue { ptr, i32 } %31, 0, !dbg !2528
  store ptr %32, ptr %8, align 8, !dbg !2528
  %33 = extractvalue { ptr, i32 } %31, 1, !dbg !2528
  store i32 %33, ptr %9, align 4, !dbg !2528
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #3, !dbg !2528
  br label %34, !dbg !2528

34:                                               ; preds = %30
  %35 = load ptr, ptr %8, align 8, !dbg !2528
  %36 = load i32, ptr %9, align 4, !dbg !2528
  %37 = insertvalue { ptr, i32 } poison, ptr %35, 0, !dbg !2528
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1, !dbg !2528
  resume { ptr, i32 } %38, !dbg !2528
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @__cxa_guard_abort(ptr) #3

; Function Attrs: nounwind
declare void @__cxa_guard_release(ptr) #3

declare void @_ZNK4Poco3URI18getQueryParametersB5cxx11Ev(ptr sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(200)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !2529 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2534, metadata !DIExpression()), !dbg !2536
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2537
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !2538
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2539
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2540
  %8 = load ptr, ptr %7, align 8, !dbg !2540
  ret ptr %8, !dbg !2540
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !2541 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2543, metadata !DIExpression()), !dbg !2544
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2545
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !2546
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2547
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2548
  %8 = load ptr, ptr %7, align 8, !dbg !2548
  ret ptr %8, !dbg !2548
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESI_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8 comdat !dbg !2549 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2553, metadata !DIExpression()), !dbg !2554
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2556
  %5 = load ptr, ptr %3, align 8, !dbg !2557
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2558
  %7 = load ptr, ptr %6, align 8, !dbg !2558
  %8 = load ptr, ptr %4, align 8, !dbg !2559
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2560
  %10 = load ptr, ptr %9, align 8, !dbg !2560
  %11 = icmp ne ptr %7, %10, !dbg !2561
  ret i1 %11, !dbg !2562
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !2563 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2564, metadata !DIExpression()), !dbg !2566
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2567
  %5 = load ptr, ptr %4, align 8, !dbg !2567
  ret ptr %5, !dbg !2568
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #8 comdat personality ptr @__gxx_personality_v0 !dbg !2569 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2578, metadata !DIExpression()), !dbg !2579
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2580, metadata !DIExpression()), !dbg !2581
  %5 = load ptr, ptr %3, align 8, !dbg !2582
  %6 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2583
  %7 = load ptr, ptr %4, align 8, !dbg !2584
  %8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #3, !dbg !2585
  %9 = icmp eq i64 %6, %8, !dbg !2586
  br i1 %9, label %10, label %21, !dbg !2587

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !2588
  %12 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #3, !dbg !2589
  %13 = load ptr, ptr %4, align 8, !dbg !2590
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #3, !dbg !2591
  %15 = load ptr, ptr %3, align 8, !dbg !2592
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #3, !dbg !2593
  %17 = invoke noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %12, ptr noundef %14, i64 noundef %16)
          to label %18 unwind label %23, !dbg !2594

18:                                               ; preds = %10
  %19 = icmp ne i32 %17, 0, !dbg !2594
  %20 = xor i1 %19, true, !dbg !2595
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i1 [ false, %2 ], [ %20, %18 ], !dbg !2596
  ret i1 %22, !dbg !2597

23:                                               ; preds = %10
  %24 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2594
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !2594
  call void @__clang_call_terminate(ptr %25) #13, !dbg !2594
  unreachable, !dbg !2594
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZN4Poco3URI18setQueryParametersERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(24)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !2598 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2601
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2602
  %5 = load ptr, ptr %4, align 8, !dbg !2603
  %6 = getelementptr inbounds %"struct.std::pair", ptr %5, i32 1, !dbg !2603
  store ptr %6, ptr %4, align 8, !dbg !2603
  ret ptr %3, !dbg !2604
}

declare void @_ZN4Poco3URI17addQueryParameterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2605 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2610
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2611
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !2613
  %6 = load ptr, ptr %5, align 8, !dbg !2613
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2614
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !2615
  %9 = load ptr, ptr %8, align 8, !dbg !2615
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2616
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !2617

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2618
  ret void, !dbg !2619

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2617
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !2617
  call void @__clang_call_terminate(ptr %14) #13, !dbg !2617
  unreachable, !dbg !2617
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZNK13Authorization16authorizeRequestERN4Poco3Net11HTTPRequestE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) #5 align 2 personality ptr @__gxx_personality_v0 !dbg !2620 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %class.StringVector, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca ptr, align 8
  %24 = alloca [1024 x i8], align 16
  %25 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::allocator", align 1
  %28 = alloca %"class.Poco::Message", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2621, metadata !DIExpression()), !dbg !2622
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2623, metadata !DIExpression()), !dbg !2624
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %class.Authorization, ptr %30, i32 0, i32 0, !dbg !2625
  %32 = load i32, ptr %31, align 8, !dbg !2625
  switch i32 %32, label %130 [
    i32 1, label %33
    i32 2, label %53
  ], !dbg !2626

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 8, !dbg !2627
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #3, !dbg !2629
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %35 unwind label %39, !dbg !2629

35:                                               ; preds = %33
  %36 = getelementptr inbounds %class.Authorization, ptr %30, i32 0, i32 1, !dbg !2630
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %37 unwind label %43, !dbg !2631

37:                                               ; preds = %35
  invoke void @_ZN4Poco3Net19NameValueCollection3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %38 unwind label %47, !dbg !2632

38:                                               ; preds = %37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #3, !dbg !2627
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2627
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #3, !dbg !2627
  br label %194, !dbg !2633

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          cleanup, !dbg !2634
  %41 = extractvalue { ptr, i32 } %40, 0, !dbg !2634
  store ptr %41, ptr %7, align 8, !dbg !2634
  %42 = extractvalue { ptr, i32 } %40, 1, !dbg !2634
  store i32 %42, ptr %8, align 4, !dbg !2634
  br label %52, !dbg !2634

43:                                               ; preds = %35
  %44 = landingpad { ptr, i32 }
          cleanup, !dbg !2634
  %45 = extractvalue { ptr, i32 } %44, 0, !dbg !2634
  store ptr %45, ptr %7, align 8, !dbg !2634
  %46 = extractvalue { ptr, i32 } %44, 1, !dbg !2634
  store i32 %46, ptr %8, align 4, !dbg !2634
  br label %51, !dbg !2634

47:                                               ; preds = %37
  %48 = landingpad { ptr, i32 }
          cleanup, !dbg !2634
  %49 = extractvalue { ptr, i32 } %48, 0, !dbg !2634
  store ptr %49, ptr %7, align 8, !dbg !2634
  %50 = extractvalue { ptr, i32 } %48, 1, !dbg !2634
  store i32 %50, ptr %8, align 4, !dbg !2634
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #3, !dbg !2627
  br label %51, !dbg !2627

51:                                               ; preds = %47, %43
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2627
  br label %52, !dbg !2627

52:                                               ; preds = %51, %39
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #3, !dbg !2627
  br label %195, !dbg !2627

53:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2635, metadata !DIExpression()), !dbg !2638
  %54 = getelementptr inbounds %class.Authorization, ptr %30, i32 0, i32 1, !dbg !2639
  call void @_ZN4Util13tokenizeAnyOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr sret(%class.StringVector) align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef @.str.4), !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2641, metadata !DIExpression()), !dbg !2643
  %55 = invoke ptr @_ZN12StringVector5beginEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %56 unwind label %106, !dbg !2644

56:                                               ; preds = %53
  %57 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %11, i32 0, i32 0, !dbg !2644
  store ptr %55, ptr %57, align 8, !dbg !2644
  br label %58, !dbg !2645

58:                                               ; preds = %125, %56
  %59 = invoke ptr @_ZN12StringVector3endEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %60 unwind label %106, !dbg !2646

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %12, i32 0, i32 0, !dbg !2646
  store ptr %59, ptr %61, align 8, !dbg !2646
  %62 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP11StringTokenSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #3, !dbg !2648
  br i1 %62, label %63, label %128, !dbg !2649

63:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2650, metadata !DIExpression()), !dbg !2652
  %64 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #3, !dbg !2653
  invoke void @_ZNK12StringVector8getParamB5cxx11ERK11StringToken(ptr sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(16) %64)
          to label %65 unwind label %106, !dbg !2654

65:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2655, metadata !DIExpression()), !dbg !2656
  %66 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 58, i64 noundef 0) #3, !dbg !2657
  store i64 %66, ptr %14, align 8, !dbg !2656
  %67 = load i64, ptr %14, align 8, !dbg !2658
  %68 = icmp ne i64 %67, -1, !dbg !2660
  br i1 %68, label %69, label %124, !dbg !2661

69:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2662, metadata !DIExpression()), !dbg !2664
  %70 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 32, i64 noundef 0) #3, !dbg !2665
  store i64 %70, ptr %15, align 8, !dbg !2664
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2666, metadata !DIExpression()), !dbg !2667
  %71 = load i64, ptr %14, align 8, !dbg !2668
  %72 = sub i64 %71, 1, !dbg !2669
  %73 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 32, i64 noundef %72) #3, !dbg !2670
  store i64 %73, ptr %16, align 8, !dbg !2667
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2671, metadata !DIExpression()), !dbg !2672
  %74 = load i64, ptr %14, align 8, !dbg !2673
  %75 = add i64 %74, 1, !dbg !2674
  %76 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 32, i64 noundef %75) #3, !dbg !2675
  store i64 %76, ptr %17, align 8, !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2676, metadata !DIExpression()), !dbg !2677
  %77 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 32, i64 noundef -1) #3, !dbg !2678
  store i64 %77, ptr %18, align 8, !dbg !2677
  %78 = load i64, ptr %15, align 8, !dbg !2679
  %79 = icmp ne i64 %78, -1, !dbg !2681
  br i1 %79, label %80, label %123, !dbg !2682

80:                                               ; preds = %69
  %81 = load i64, ptr %16, align 8, !dbg !2683
  %82 = icmp ne i64 %81, -1, !dbg !2684
  br i1 %82, label %83, label %123, !dbg !2685

83:                                               ; preds = %80
  %84 = load i64, ptr %17, align 8, !dbg !2686
  %85 = icmp ne i64 %84, -1, !dbg !2687
  br i1 %85, label %86, label %123, !dbg !2688

86:                                               ; preds = %83
  %87 = load i64, ptr %18, align 8, !dbg !2689
  %88 = icmp ne i64 %87, -1, !dbg !2690
  br i1 %88, label %89, label %123, !dbg !2691

89:                                               ; preds = %86
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2692, metadata !DIExpression()), !dbg !2694
  %90 = load i64, ptr %16, align 8, !dbg !2695
  %91 = load i64, ptr %15, align 8, !dbg !2696
  %92 = sub i64 %90, %91, !dbg !2697
  %93 = add i64 %92, 1, !dbg !2698
  store i64 %93, ptr %19, align 8, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2699, metadata !DIExpression()), !dbg !2700
  %94 = load i64, ptr %18, align 8, !dbg !2701
  %95 = load i64, ptr %17, align 8, !dbg !2702
  %96 = sub i64 %94, %95, !dbg !2703
  %97 = add i64 %96, 1, !dbg !2704
  store i64 %97, ptr %20, align 8, !dbg !2700
  %98 = load ptr, ptr %4, align 8, !dbg !2705
  %99 = load i64, ptr %15, align 8, !dbg !2706
  %100 = load i64, ptr %19, align 8, !dbg !2707
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %99, i64 noundef %100)
          to label %101 unwind label %110, !dbg !2708

101:                                              ; preds = %89
  %102 = load i64, ptr %17, align 8, !dbg !2709
  %103 = load i64, ptr %20, align 8, !dbg !2710
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %102, i64 noundef %103)
          to label %104 unwind label %114, !dbg !2711

104:                                              ; preds = %101
  invoke void @_ZN4Poco3Net19NameValueCollection3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %105 unwind label %118, !dbg !2712

105:                                              ; preds = %104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #3, !dbg !2705
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #3, !dbg !2705
  br label %123, !dbg !2713

106:                                              ; preds = %63, %58, %53
  %107 = landingpad { ptr, i32 }
          cleanup, !dbg !2714
  %108 = extractvalue { ptr, i32 } %107, 0, !dbg !2714
  store ptr %108, ptr %7, align 8, !dbg !2714
  %109 = extractvalue { ptr, i32 } %107, 1, !dbg !2714
  store i32 %109, ptr %8, align 4, !dbg !2714
  br label %129, !dbg !2714

110:                                              ; preds = %89
  %111 = landingpad { ptr, i32 }
          cleanup, !dbg !2715
  %112 = extractvalue { ptr, i32 } %111, 0, !dbg !2715
  store ptr %112, ptr %7, align 8, !dbg !2715
  %113 = extractvalue { ptr, i32 } %111, 1, !dbg !2715
  store i32 %113, ptr %8, align 4, !dbg !2715
  br label %127, !dbg !2715

114:                                              ; preds = %101
  %115 = landingpad { ptr, i32 }
          cleanup, !dbg !2715
  %116 = extractvalue { ptr, i32 } %115, 0, !dbg !2715
  store ptr %116, ptr %7, align 8, !dbg !2715
  %117 = extractvalue { ptr, i32 } %115, 1, !dbg !2715
  store i32 %117, ptr %8, align 4, !dbg !2715
  br label %122, !dbg !2715

118:                                              ; preds = %104
  %119 = landingpad { ptr, i32 }
          cleanup, !dbg !2715
  %120 = extractvalue { ptr, i32 } %119, 0, !dbg !2715
  store ptr %120, ptr %7, align 8, !dbg !2715
  %121 = extractvalue { ptr, i32 } %119, 1, !dbg !2715
  store i32 %121, ptr %8, align 4, !dbg !2715
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #3, !dbg !2705
  br label %122, !dbg !2705

122:                                              ; preds = %118, %114
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #3, !dbg !2705
  br label %127, !dbg !2705

123:                                              ; preds = %105, %86, %83, %80, %69
  br label %124, !dbg !2716

124:                                              ; preds = %123, %65
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #3, !dbg !2717
  br label %125, !dbg !2718

125:                                              ; preds = %124
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #3, !dbg !2719
  br label %58, !dbg !2720, !llvm.loop !2721

127:                                              ; preds = %122, %110
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #3, !dbg !2717
  br label %129, !dbg !2717

128:                                              ; preds = %60
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #3, !dbg !2724
  br label %194

129:                                              ; preds = %127, %106
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #3, !dbg !2724
  br label %195, !dbg !2724

130:                                              ; preds = %2
  br label %131, !dbg !2725

131:                                              ; preds = %130
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2726, metadata !DIExpression()), !dbg !2731
  %132 = call noundef nonnull align 8 dereferenceable(68) ptr @_ZN3Log6loggerEv(), !dbg !2731
  store ptr %132, ptr %23, align 8, !dbg !2731
  %133 = call noundef zeroext i1 @_ZN3Log16isShutdownCalledEv(), !dbg !2732
  br i1 %133, label %192, label %134, !dbg !2732

134:                                              ; preds = %131
  %135 = load ptr, ptr %23, align 8, !dbg !2732
  %136 = call noundef zeroext i1 @_ZNK4Poco6Logger5errorEv(ptr noundef nonnull align 8 dereferenceable(68) %135), !dbg !2732
  br i1 %136, label %137, label %192, !dbg !2731

137:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2734, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2740, metadata !DIExpression()), !dbg !2739
  %138 = getelementptr inbounds [1024 x i8], ptr %24, i64 0, i64 0, !dbg !2739
  %139 = call noundef ptr @_ZN3Log6prefixILi1023EEEPcS1_PKc(ptr noundef %138, ptr noundef @.str.5), !dbg !2739
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %27) #3, !dbg !2739
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %139, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %140 unwind label %169, !dbg !2739

140:                                              ; preds = %137
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 2)
          to label %141 unwind label %173, !dbg !2739

141:                                              ; preds = %140
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #3, !dbg !2739
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %27) #3, !dbg !2739
  %142 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef @_ZSt9boolalphaRSt8ios_base)
          to label %143 unwind label %178, !dbg !2739

143:                                              ; preds = %141
  %144 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %142, ptr noundef @.str.6)
          to label %145 unwind label %178, !dbg !2739

145:                                              ; preds = %143
  br label %146, !dbg !2739

146:                                              ; preds = %145
  %147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef @.str.7)
          to label %148 unwind label %178, !dbg !2745

148:                                              ; preds = %146
  %149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef @.str.8)
          to label %150 unwind label %178, !dbg !2745

150:                                              ; preds = %148
  %151 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %149, i8 noundef signext 58)
          to label %152 unwind label %178, !dbg !2745

152:                                              ; preds = %150
  %153 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %151, i32 noundef 84)
          to label %154 unwind label %178, !dbg !2745

154:                                              ; preds = %152
  %155 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %156 unwind label %178, !dbg !2748

156:                                              ; preds = %154
  br label %157, !dbg !2748

157:                                              ; preds = %156
  br label %158, !dbg !2748

158:                                              ; preds = %157
  %159 = load ptr, ptr %23, align 8, !dbg !2739
  %160 = load ptr, ptr %23, align 8, !dbg !2739
  %161 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Poco6Logger4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(68) %160)
          to label %162 unwind label %178, !dbg !2739

162:                                              ; preds = %158
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(112) %25)
          to label %163 unwind label %178, !dbg !2739

163:                                              ; preds = %162
  invoke void @_ZN4Poco7MessageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8PriorityE(ptr noundef nonnull align 8 dereferenceable(152) %28, ptr noundef nonnull align 8 dereferenceable(32) %161, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 3)
          to label %164 unwind label %182, !dbg !2739

164:                                              ; preds = %163
  %165 = load ptr, ptr %159, align 8, !dbg !2739
  %166 = getelementptr inbounds ptr, ptr %165, i64 6, !dbg !2739
  %167 = load ptr, ptr %166, align 8, !dbg !2739
  invoke void %167(ptr noundef nonnull align 8 dereferenceable(68) %159, ptr noundef nonnull align 8 dereferenceable(152) %28)
          to label %168 unwind label %186, !dbg !2739

168:                                              ; preds = %164
  call void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %28) #3, !dbg !2739
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #3, !dbg !2739
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %25) #3, !dbg !2732
  br label %192, !dbg !2739

169:                                              ; preds = %137
  %170 = landingpad { ptr, i32 }
          cleanup, !dbg !2749
  %171 = extractvalue { ptr, i32 } %170, 0, !dbg !2749
  store ptr %171, ptr %7, align 8, !dbg !2749
  %172 = extractvalue { ptr, i32 } %170, 1, !dbg !2749
  store i32 %172, ptr %8, align 4, !dbg !2749
  br label %177, !dbg !2749

173:                                              ; preds = %140
  %174 = landingpad { ptr, i32 }
          cleanup, !dbg !2749
  %175 = extractvalue { ptr, i32 } %174, 0, !dbg !2749
  store ptr %175, ptr %7, align 8, !dbg !2749
  %176 = extractvalue { ptr, i32 } %174, 1, !dbg !2749
  store i32 %176, ptr %8, align 4, !dbg !2749
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #3, !dbg !2739
  br label %177, !dbg !2739

177:                                              ; preds = %173, %169
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %27) #3, !dbg !2739
  br label %195, !dbg !2739

178:                                              ; preds = %162, %158, %154, %152, %150, %148, %146, %143, %141
  %179 = landingpad { ptr, i32 }
          cleanup, !dbg !2749
  %180 = extractvalue { ptr, i32 } %179, 0, !dbg !2749
  store ptr %180, ptr %7, align 8, !dbg !2749
  %181 = extractvalue { ptr, i32 } %179, 1, !dbg !2749
  store i32 %181, ptr %8, align 4, !dbg !2749
  br label %191, !dbg !2749

182:                                              ; preds = %163
  %183 = landingpad { ptr, i32 }
          cleanup, !dbg !2749
  %184 = extractvalue { ptr, i32 } %183, 0, !dbg !2749
  store ptr %184, ptr %7, align 8, !dbg !2749
  %185 = extractvalue { ptr, i32 } %183, 1, !dbg !2749
  store i32 %185, ptr %8, align 4, !dbg !2749
  br label %190, !dbg !2749

186:                                              ; preds = %164
  %187 = landingpad { ptr, i32 }
          cleanup, !dbg !2749
  %188 = extractvalue { ptr, i32 } %187, 0, !dbg !2749
  store ptr %188, ptr %7, align 8, !dbg !2749
  %189 = extractvalue { ptr, i32 } %187, 1, !dbg !2749
  store i32 %189, ptr %8, align 4, !dbg !2749
  call void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %28) #3, !dbg !2739
  br label %190, !dbg !2739

190:                                              ; preds = %186, %182
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #3, !dbg !2739
  br label %191, !dbg !2739

191:                                              ; preds = %190, %178
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %25) #3, !dbg !2732
  br label %195, !dbg !2732

192:                                              ; preds = %168, %134, %131
  br label %193, !dbg !2731

193:                                              ; preds = %192
  br label %194, !dbg !2750

194:                                              ; preds = %193, %128, %38
  ret void, !dbg !2751

195:                                              ; preds = %191, %177, %129, %52
  %196 = load ptr, ptr %7, align 8, !dbg !2627
  %197 = load i32, ptr %8, align 4, !dbg !2627
  %198 = insertvalue { ptr, i32 } poison, ptr %196, 0, !dbg !2627
  %199 = insertvalue { ptr, i32 } %198, i32 %197, 1, !dbg !2627
  resume { ptr, i32 } %199, !dbg !2627
}

declare void @_ZN4Poco3Net19NameValueCollection3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2752 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i1, align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2757, metadata !DIExpression()), !dbg !2758
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2761, metadata !DIExpression()), !dbg !2764
  %13 = load ptr, ptr %5, align 8, !dbg !2765
  %14 = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %13), !dbg !2766
  store i64 %14, ptr %7, align 8, !dbg !2764
  store i1 false, ptr %8, align 1, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2768, metadata !DIExpression(DW_OP_deref)), !dbg !2770
  %15 = load ptr, ptr %6, align 8, !dbg !2771
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr sret(%"class.std::allocator") align 1 %10, ptr noundef nonnull align 8 dereferenceable(32) %15) #3, !dbg !2772
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr sret(%"class.std::allocator") align 1 %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %16 unwind label %30, !dbg !2773

16:                                               ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %9) #3, !dbg !2770
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3, !dbg !2770
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #3, !dbg !2770
  %17 = load i64, ptr %7, align 8, !dbg !2774
  %18 = load ptr, ptr %6, align 8, !dbg !2775
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #3, !dbg !2776
  %20 = add i64 %17, %19, !dbg !2777
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %20)
          to label %21 unwind label %34, !dbg !2778

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8, !dbg !2779
  %23 = load i64, ptr %7, align 8, !dbg !2780
  %24 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %22, i64 noundef %23)
          to label %25 unwind label %34, !dbg !2781

25:                                               ; preds = %21
  %26 = load ptr, ptr %6, align 8, !dbg !2782
  %27 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %28 unwind label %34, !dbg !2783

28:                                               ; preds = %25
  store i1 true, ptr %8, align 1, !dbg !2784
  %29 = load i1, ptr %8, align 1, !dbg !2785
  br i1 %29, label %39, label %38, !dbg !2785

30:                                               ; preds = %3
  %31 = landingpad { ptr, i32 }
          cleanup, !dbg !2785
  %32 = extractvalue { ptr, i32 } %31, 0, !dbg !2785
  store ptr %32, ptr %11, align 8, !dbg !2785
  %33 = extractvalue { ptr, i32 } %31, 1, !dbg !2785
  store i32 %33, ptr %12, align 4, !dbg !2785
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #3, !dbg !2770
  br label %40, !dbg !2770

34:                                               ; preds = %25, %21, %16
  %35 = landingpad { ptr, i32 }
          cleanup, !dbg !2785
  %36 = extractvalue { ptr, i32 } %35, 0, !dbg !2785
  store ptr %36, ptr %11, align 8, !dbg !2785
  %37 = extractvalue { ptr, i32 } %35, 1, !dbg !2785
  store i32 %37, ptr %12, align 4, !dbg !2785
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !2785
  br label %40, !dbg !2785

38:                                               ; preds = %28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !2785
  br label %39, !dbg !2785

39:                                               ; preds = %38, %28
  ret void, !dbg !2785

40:                                               ; preds = %34, %30
  %41 = load ptr, ptr %11, align 8, !dbg !2770
  %42 = load i32, ptr %12, align 4, !dbg !2770
  %43 = insertvalue { ptr, i32 } poison, ptr %41, 0, !dbg !2770
  %44 = insertvalue { ptr, i32 } %43, i32 %42, 1, !dbg !2770
  resume { ptr, i32 } %44, !dbg !2770
}

declare void @_ZN4Util13tokenizeAnyOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr sret(%class.StringVector) align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZN12StringVector5beginEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #8 comdat align 2 !dbg !2786 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2791, metadata !DIExpression()), !dbg !2793
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %class.StringVector, ptr %4, i32 0, i32 1, !dbg !2794
  %6 = call ptr @_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2795
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !2795
  store ptr %6, ptr %7, align 8, !dbg !2795
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !2796
  %9 = load ptr, ptr %8, align 8, !dbg !2796
  ret ptr %9, !dbg !2796
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIP11StringTokenSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8 comdat !dbg !2797 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2801, metadata !DIExpression()), !dbg !2802
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2804
  %5 = load ptr, ptr %3, align 8, !dbg !2805
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2806
  %7 = load ptr, ptr %6, align 8, !dbg !2806
  %8 = load ptr, ptr %4, align 8, !dbg !2807
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2808
  %10 = load ptr, ptr %9, align 8, !dbg !2808
  %11 = icmp ne ptr %7, %10, !dbg !2809
  ret i1 %11, !dbg !2810
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZN12StringVector3endEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #8 comdat align 2 !dbg !2811 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !2814
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %class.StringVector, ptr %4, i32 0, i32 1, !dbg !2815
  %6 = call ptr @_ZNSt6vectorI11StringTokenSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #3, !dbg !2816
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !2816
  store ptr %6, ptr %7, align 8, !dbg !2816
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !2817
  %9 = load ptr, ptr %8, align 8, !dbg !2817
  ret ptr %9, !dbg !2817
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK12StringVector8getParamB5cxx11ERK11StringToken(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #5 comdat align 2 !dbg !2818 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2826, metadata !DIExpression()), !dbg !2828
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2829, metadata !DIExpression()), !dbg !2830
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %class.StringVector, ptr %7, i32 0, i32 0, !dbg !2831
  %9 = load ptr, ptr %6, align 8, !dbg !2832
  %10 = getelementptr inbounds %struct.StringToken, ptr %9, i32 0, i32 0, !dbg !2833
  %11 = load i64, ptr %10, align 8, !dbg !2833
  %12 = load ptr, ptr %6, align 8, !dbg !2834
  %13 = getelementptr inbounds %struct.StringToken, ptr %12, i32 0, i32 1, !dbg !2835
  %14 = load i64, ptr %13, align 8, !dbg !2835
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %11, i64 noundef %14), !dbg !2836
  ret void, !dbg !2837
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !2838 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2839, metadata !DIExpression()), !dbg !2841
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %3, i32 0, i32 0, !dbg !2842
  %5 = load ptr, ptr %4, align 8, !dbg !2842
  ret ptr %5, !dbg !2843
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) #2

declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !2844 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2847
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %3, i32 0, i32 0, !dbg !2848
  %5 = load ptr, ptr %4, align 8, !dbg !2849
  %6 = getelementptr inbounds %struct.StringToken, ptr %5, i32 1, !dbg !2849
  store ptr %6, ptr %4, align 8, !dbg !2849
  ret ptr %3, !dbg !2850
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !dbg !2851 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2855, metadata !DIExpression()), !dbg !2856
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 1, !dbg !2857
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2857
  %5 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 0, !dbg !2857
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2857
  ret void, !dbg !2859
}

declare noundef nonnull align 8 dereferenceable(68) ptr @_ZN3Log6loggerEv() #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3Log16isShutdownCalledEv() #8 comdat !dbg !2860 {
  %1 = load i8, ptr @_ZN3Log10IsShutdownE, align 1, !dbg !2861
  %2 = trunc i8 %1 to i1, !dbg !2861
  ret i1 %2, !dbg !2862
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4Poco6Logger5errorEv(ptr noundef nonnull align 8 dereferenceable(68) %0) #8 comdat align 2 !dbg !2863 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2869, metadata !DIExpression()), !dbg !2871
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::Logger", ptr %3, i32 0, i32 4, !dbg !2872
  %5 = load i32, ptr %4, align 8, !dbg !2872
  %6 = icmp sge i32 %5, 3, !dbg !2873
  ret i1 %6, !dbg !2874
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN3Log6prefixILi1023EEEPcS1_PKc(ptr noundef %0, ptr noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2875 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.Poco::LocalDateTime", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2880, metadata !DIExpression()), !dbg !2881
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @_ZN4Poco13LocalDateTimeC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5), !dbg !2884
  %8 = load ptr, ptr %3, align 8, !dbg !2885
  %9 = load ptr, ptr %4, align 8, !dbg !2886
  %10 = invoke noundef ptr @_ZN3Log6prefixERKN4Poco13LocalDateTimeEPcPKc(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %8, ptr noundef %9)
          to label %11 unwind label %12, !dbg !2887

11:                                               ; preds = %2
  call void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #3, !dbg !2888
  ret ptr %10, !dbg !2888

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup, !dbg !2889
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !2889
  store ptr %14, ptr %6, align 8, !dbg !2889
  %15 = extractvalue { ptr, i32 } %13, 1, !dbg !2889
  store i32 %15, ptr %7, align 4, !dbg !2889
  call void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #3, !dbg !2888
  br label %16, !dbg !2888

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8, !dbg !2888
  %18 = load i32, ptr %7, align 4, !dbg !2888
  %19 = insertvalue { ptr, i32 } poison, ptr %17, 0, !dbg !2888
  %20 = insertvalue { ptr, i32 } %19, i32 %18, 1, !dbg !2888
  resume { ptr, i32 } %20, !dbg !2888
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZSt9boolalphaRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %0) #5 comdat !dbg !2890 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2894, metadata !DIExpression()), !dbg !2895
  %3 = load ptr, ptr %2, align 8, !dbg !2896
  %4 = call noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %3, i32 noundef 1), !dbg !2897
  %5 = load ptr, ptr %2, align 8, !dbg !2898
  ret ptr %5, !dbg !2899
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Poco6Logger4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #8 comdat align 2 !dbg !2900 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2905
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::Logger", ptr %3, i32 0, i32 2, !dbg !2906
  ret ptr %4, !dbg !2907
}

declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) #1

declare void @_ZN4Poco7MessageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8PriorityE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN13Authorization6createERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE(ptr noalias sret(%class.Authorization) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #5 align 2 personality ptr @__gxx_personality_v0 !dbg !2908 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2913, metadata !DIExpression()), !dbg !2915
  %13 = load ptr, ptr %4, align 8, !dbg !2916
  store ptr %13, ptr %6, align 8, !dbg !2916
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2917, metadata !DIExpression()), !dbg !2915
  %14 = load ptr, ptr %6, align 8, !dbg !2918
  %15 = call ptr @_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #3, !dbg !2918
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %7, i32 0, i32 0, !dbg !2918
  store ptr %15, ptr %16, align 8, !dbg !2918
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2919, metadata !DIExpression()), !dbg !2915
  %17 = load ptr, ptr %6, align 8, !dbg !2918
  %18 = call ptr @_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #3, !dbg !2918
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %8, i32 0, i32 0, !dbg !2918
  store ptr %18, ptr %19, align 8, !dbg !2918
  br label %20, !dbg !2918

20:                                               ; preds = %47, %2
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESJ_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2918
  br i1 %21, label %22, label %49, !dbg !2918

22:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2920, metadata !DIExpression()), !dbg !2922
  %23 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #3, !dbg !2923
  store ptr %23, ptr %9, align 8, !dbg !2922
  %24 = load ptr, ptr %9, align 8, !dbg !2924
  %25 = getelementptr inbounds %"struct.std::pair", ptr %24, i32 0, i32 0, !dbg !2927
  %26 = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef @.str)
          to label %27 unwind label %33, !dbg !2928

27:                                               ; preds = %22
  br i1 %26, label %28, label %37, !dbg !2929

28:                                               ; preds = %27
  %29 = load ptr, ptr %9, align 8, !dbg !2930
  %30 = getelementptr inbounds %"struct.std::pair", ptr %29, i32 0, i32 1, !dbg !2932
  invoke void @_ZN4Poco3URI6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_b(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %31 unwind label %33, !dbg !2933

31:                                               ; preds = %28
  invoke void @_ZN13AuthorizationC2ENS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %32 unwind label %33, !dbg !2934

32:                                               ; preds = %31
  store i32 1, ptr %12, align 4
  br label %55, !dbg !2935

33:                                               ; preds = %53, %51, %42, %37, %31, %28, %22
  %34 = landingpad { ptr, i32 }
          cleanup, !dbg !2936
  %35 = extractvalue { ptr, i32 } %34, 0, !dbg !2936
  store ptr %35, ptr %10, align 8, !dbg !2936
  %36 = extractvalue { ptr, i32 } %34, 1, !dbg !2936
  store i32 %36, ptr %11, align 4, !dbg !2936
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2937
  br label %56, !dbg !2937

37:                                               ; preds = %27
  %38 = load ptr, ptr %9, align 8, !dbg !2938
  %39 = getelementptr inbounds %"struct.std::pair", ptr %38, i32 0, i32 0, !dbg !2940
  %40 = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef @.str.9)
          to label %41 unwind label %33, !dbg !2941

41:                                               ; preds = %37
  br i1 %40, label %42, label %46, !dbg !2942

42:                                               ; preds = %41
  %43 = load ptr, ptr %9, align 8, !dbg !2943
  %44 = getelementptr inbounds %"struct.std::pair", ptr %43, i32 0, i32 1, !dbg !2944
  invoke void @_ZN4Poco3URI6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_b(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %45 unwind label %33, !dbg !2945

45:                                               ; preds = %42
  br label %46, !dbg !2945

46:                                               ; preds = %45, %41
  br label %47, !dbg !2946

47:                                               ; preds = %46
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #3, !dbg !2918
  br label %20, !dbg !2918, !llvm.loop !2947

49:                                               ; preds = %20
  %50 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2949
  br i1 %50, label %53, label %51, !dbg !2951

51:                                               ; preds = %49
  invoke void @_ZN13AuthorizationC2ENS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %52 unwind label %33, !dbg !2952

52:                                               ; preds = %51
  store i32 1, ptr %12, align 4
  br label %55, !dbg !2953

53:                                               ; preds = %49
  invoke void @_ZN13AuthorizationC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %54 unwind label %33, !dbg !2954

54:                                               ; preds = %53
  store i32 1, ptr %12, align 4
  br label %55, !dbg !2955

55:                                               ; preds = %54, %52, %32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2937
  ret void, !dbg !2937

56:                                               ; preds = %33
  %57 = load ptr, ptr %10, align 8, !dbg !2937
  %58 = load i32, ptr %11, align 4, !dbg !2937
  %59 = insertvalue { ptr, i32 } poison, ptr %57, 0, !dbg !2937
  %60 = insertvalue { ptr, i32 } %59, i32 %58, 1, !dbg !2937
  resume { ptr, i32 } %60, !dbg !2937
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !2956 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2962, metadata !DIExpression()), !dbg !2964
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2965
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !2966
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2967
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %2, i32 0, i32 0, !dbg !2968
  %8 = load ptr, ptr %7, align 8, !dbg !2968
  ret ptr %8, !dbg !2968
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !2969 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !2972
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2973
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !2974
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2975
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %2, i32 0, i32 0, !dbg !2976
  %8 = load ptr, ptr %7, align 8, !dbg !2976
  ret ptr %8, !dbg !2976
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESJ_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8 comdat !dbg !2977 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !2982
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2983, metadata !DIExpression()), !dbg !2984
  %5 = load ptr, ptr %3, align 8, !dbg !2985
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2986
  %7 = load ptr, ptr %6, align 8, !dbg !2986
  %8 = load ptr, ptr %4, align 8, !dbg !2987
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2988
  %10 = load ptr, ptr %9, align 8, !dbg !2988
  %11 = icmp ne ptr %7, %10, !dbg !2989
  ret i1 %11, !dbg !2990
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !2991 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !2994
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %3, i32 0, i32 0, !dbg !2995
  %5 = load ptr, ptr %4, align 8, !dbg !2995
  ret ptr %5, !dbg !2996
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #8 comdat !dbg !2997 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3000, metadata !DIExpression()), !dbg !3001
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3002, metadata !DIExpression()), !dbg !3003
  %5 = load ptr, ptr %3, align 8, !dbg !3004
  %6 = load ptr, ptr %4, align 8, !dbg !3005
  %7 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6) #3, !dbg !3006
  %8 = icmp eq i32 %7, 0, !dbg !3007
  ret i1 %8, !dbg !3008
}

declare void @_ZN4Poco3URI6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN13AuthorizationC2ENS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 comdat align 2 !dbg !3009 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3010, metadata !DIExpression()), !dbg !3012
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3013, metadata !DIExpression()), !dbg !3014
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3015, metadata !DIExpression()), !dbg !3016
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %class.Authorization, ptr %7, i32 0, i32 0, !dbg !3017
  %9 = load i32, ptr %5, align 4, !dbg !3018
  store i32 %9, ptr %8, align 8, !dbg !3017
  %10 = getelementptr inbounds %class.Authorization, ptr %7, i32 0, i32 1, !dbg !3019
  %11 = load ptr, ptr %6, align 8, !dbg !3020
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11), !dbg !3019
  ret void, !dbg !3021
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !3022 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3023, metadata !DIExpression()), !dbg !3025
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %3, i32 0, i32 0, !dbg !3026
  %5 = load ptr, ptr %4, align 8, !dbg !3027
  %6 = getelementptr inbounds %"struct.std::pair", ptr %5, i32 1, !dbg !3027
  store ptr %6, ptr %4, align 8, !dbg !3027
  ret ptr %3, !dbg !3028
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13AuthorizationC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !dbg !3029 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3031
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Authorization, ptr %3, i32 0, i32 0, !dbg !3032
  store i32 0, ptr %4, align 8, !dbg !3032
  %5 = getelementptr inbounds %class.Authorization, ptr %3, i32 0, i32 1, !dbg !3033
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !3033
  ret void, !dbg !3034
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !3035 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3040, metadata !DIExpression()), !dbg !3042
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %4, i32 0, i32 0, !dbg !3043
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !3044
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !3045
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !3046
  %8 = load ptr, ptr %7, align 8, !dbg !3046
  ret ptr %8, !dbg !3046
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !3047 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3048, metadata !DIExpression()), !dbg !3049
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3050, metadata !DIExpression()), !dbg !3051
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %5, i32 0, i32 0, !dbg !3052
  %7 = load ptr, ptr %4, align 8, !dbg !3053
  %8 = load ptr, ptr %7, align 8, !dbg !3053
  store ptr %8, ptr %6, align 8, !dbg !3052
  ret void, !dbg !3054
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI11StringTokenSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !3055 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3057, metadata !DIExpression()), !dbg !3058
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %4, i32 0, i32 0, !dbg !3059
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !3060
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !3061
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %2, i32 0, i32 0, !dbg !3062
  %8 = load ptr, ptr %7, align 8, !dbg !3062
  ret ptr %8, !dbg !3062
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3063 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3067, metadata !DIExpression()), !dbg !3068
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3069
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3071
  %6 = load ptr, ptr %5, align 8, !dbg !3071
  %7 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3072
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !3073
  %9 = load ptr, ptr %8, align 8, !dbg !3073
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3074
  invoke void @_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !3075

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3076
  ret void, !dbg !3077

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3075
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !3075
  call void @__clang_call_terminate(ptr %14) #13, !dbg !3075
  unreachable, !dbg !3075
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #5 comdat !dbg !3078 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3087
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3088, metadata !DIExpression()), !dbg !3089
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3090, metadata !DIExpression()), !dbg !3091
  %7 = load ptr, ptr %4, align 8, !dbg !3092
  %8 = load ptr, ptr %5, align 8, !dbg !3093
  call void @_ZSt8_DestroyIP11StringTokenEvT_S2_(ptr noundef %7, ptr noundef %8), !dbg !3094
  ret void, !dbg !3095
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !3096 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3151, metadata !DIExpression()), !dbg !3153
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3154
  ret ptr %4, !dbg !3155
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #9 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3156 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3161
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3162
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3164
  %6 = load ptr, ptr %5, align 8, !dbg !3164
  %7 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3165
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !3166
  %9 = load ptr, ptr %8, align 8, !dbg !3166
  %10 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3167
  %11 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !3168
  %12 = load ptr, ptr %11, align 8, !dbg !3168
  %13 = ptrtoint ptr %9 to i64, !dbg !3169
  %14 = ptrtoint ptr %12 to i64, !dbg !3169
  %15 = sub i64 %13, %14, !dbg !3169
  %16 = sdiv exact i64 %15, 16, !dbg !3169
  invoke void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !3170

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %3, i32 0, i32 0, !dbg !3171
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #3, !dbg !3171
  ret void, !dbg !3172

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3170
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !3170
  call void @__clang_call_terminate(ptr %21) #13, !dbg !3170
  unreachable, !dbg !3170
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11StringTokenEvT_S2_(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !3173 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3178, metadata !DIExpression()), !dbg !3179
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3181
  %5 = load ptr, ptr %3, align 8, !dbg !3182
  %6 = load ptr, ptr %4, align 8, !dbg !3183
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_(ptr noundef %5, ptr noundef %6), !dbg !3184
  ret void, !dbg !3185
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_(ptr noundef %0, ptr noundef %1) #8 comdat align 2 !dbg !3186 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3190, metadata !DIExpression()), !dbg !3191
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3192, metadata !DIExpression()), !dbg !3193
  ret void, !dbg !3194
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3195 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3201, metadata !DIExpression()), !dbg !3202
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3205, metadata !DIExpression()), !dbg !3206
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3207
  %9 = icmp ne ptr %8, null, !dbg !3207
  br i1 %9, label %10, label %14, !dbg !3209

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base.4", ptr %7, i32 0, i32 0, !dbg !3210
  %12 = load ptr, ptr %5, align 8, !dbg !3211
  %13 = load i64, ptr %6, align 8, !dbg !3212
  call void @_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3213
  br label %14, !dbg !3213

14:                                               ; preds = %10, %3
  ret void, !dbg !3214
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !3215 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3221, metadata !DIExpression()), !dbg !3223
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3224
  ret void, !dbg !3226
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3227 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3228, metadata !DIExpression()), !dbg !3229
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3230, metadata !DIExpression()), !dbg !3231
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3232, metadata !DIExpression()), !dbg !3233
  %7 = load ptr, ptr %4, align 8, !dbg !3234
  %8 = load ptr, ptr %5, align 8, !dbg !3235
  %9 = load i64, ptr %6, align 8, !dbg !3236
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3237
  ret void, !dbg !3238
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #8 comdat align 2 !dbg !3239 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3249
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3250, metadata !DIExpression()), !dbg !3251
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3252, metadata !DIExpression()), !dbg !3253
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3254
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !3255
  ret void, !dbg !3256
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3257 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3262, metadata !DIExpression()), !dbg !3264
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3265
  ret void, !dbg !3267
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3268 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3272, metadata !DIExpression()), !dbg !3273
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3274
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #5 comdat align 2 !dbg !3275 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3281, metadata !DIExpression()), !dbg !3283
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3284, metadata !DIExpression()), !dbg !3285
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3286, metadata !DIExpression()), !dbg !3287
  %7 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 3, !dbg !3288
  %8 = load i32, ptr %7, align 8, !dbg !3288
  store i32 %8, ptr %5, align 4, !dbg !3287
  %9 = load i32, ptr %4, align 4, !dbg !3289
  %10 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 3, !dbg !3290
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %9), !dbg !3291
  %12 = load i32, ptr %5, align 4, !dbg !3292
  ret i32 %12, !dbg !3293
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) #5 comdat !dbg !3294 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3300, metadata !DIExpression()), !dbg !3301
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3303
  %5 = load ptr, ptr %3, align 8, !dbg !3304
  %6 = load i32, ptr %5, align 4, !dbg !3304
  %7 = load i32, ptr %4, align 4, !dbg !3305
  %8 = call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %6, i32 noundef %7), !dbg !3306
  %9 = load ptr, ptr %3, align 8, !dbg !3307
  store i32 %8, ptr %9, align 4, !dbg !3308
  ret ptr %9, !dbg !3309
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %0, i32 noundef %1) #8 comdat !dbg !3310 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3313, metadata !DIExpression()), !dbg !3314
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3316
  %5 = load i32, ptr %3, align 4, !dbg !3317
  %6 = load i32, ptr %4, align 4, !dbg !3318
  %7 = or i32 %5, %6, !dbg !3319
  ret i32 %7, !dbg !3320
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #5 comdat !dbg !3321 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3329, metadata !DIExpression()), !dbg !3330
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3331, metadata !DIExpression()), !dbg !3332
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3333, metadata !DIExpression()), !dbg !3334
  %7 = load ptr, ptr %4, align 8, !dbg !3335
  %8 = load ptr, ptr %5, align 8, !dbg !3336
  call void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %7, ptr noundef %8), !dbg !3337
  ret void, !dbg !3338
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 !dbg !3339 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3394, metadata !DIExpression()), !dbg !3396
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3397
  ret ptr %4, !dbg !3398
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3399 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3403, metadata !DIExpression()), !dbg !3404
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3405
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3407
  %6 = load ptr, ptr %5, align 8, !dbg !3407
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3408
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !3409
  %9 = load ptr, ptr %8, align 8, !dbg !3409
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3410
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !3411
  %12 = load ptr, ptr %11, align 8, !dbg !3411
  %13 = ptrtoint ptr %9 to i64, !dbg !3412
  %14 = ptrtoint ptr %12 to i64, !dbg !3412
  %15 = sub i64 %13, %14, !dbg !3412
  %16 = sdiv exact i64 %15, 64, !dbg !3412
  invoke void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !3413

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3414
  call void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #3, !dbg !3414
  ret void, !dbg !3415

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3413
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !3413
  call void @__clang_call_terminate(ptr %21) #13, !dbg !3413
  unreachable, !dbg !3413
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !3416 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3420, metadata !DIExpression()), !dbg !3421
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3423
  %5 = load ptr, ptr %3, align 8, !dbg !3424
  %6 = load ptr, ptr %4, align 8, !dbg !3425
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvT_SB_(ptr noundef %5, ptr noundef %6), !dbg !3426
  ret void, !dbg !3427
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvT_SB_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 !dbg !3428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3433, metadata !DIExpression()), !dbg !3434
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3435, metadata !DIExpression()), !dbg !3436
  br label %5, !dbg !3437

5:                                                ; preds = %11, %2
  %6 = load ptr, ptr %3, align 8, !dbg !3438
  %7 = load ptr, ptr %4, align 8, !dbg !3441
  %8 = icmp ne ptr %6, %7, !dbg !3442
  br i1 %8, label %9, label %14, !dbg !3443

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !3444
  call void @_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_(ptr noundef %10), !dbg !3445
  br label %11, !dbg !3445

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !dbg !3446
  %13 = getelementptr inbounds %"struct.std::pair", ptr %12, i32 1, !dbg !3446
  store ptr %13, ptr %3, align 8, !dbg !3446
  br label %5, !dbg !3447, !llvm.loop !3448

14:                                               ; preds = %5
  ret void, !dbg !3450
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_(ptr noundef %0) #8 comdat !dbg !3451 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3454, metadata !DIExpression()), !dbg !3455
  %3 = load ptr, ptr %2, align 8, !dbg !3456
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #3, !dbg !3457
  ret void, !dbg !3458
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 !dbg !3459 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3463, metadata !DIExpression()), !dbg !3464
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::pair", ptr %3, i32 0, i32 1, !dbg !3465
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #3, !dbg !3465
  %5 = getelementptr inbounds %"struct.std::pair", ptr %3, i32 0, i32 0, !dbg !3465
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !3465
  ret void, !dbg !3467
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3468 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3474, metadata !DIExpression()), !dbg !3475
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3476, metadata !DIExpression()), !dbg !3477
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3478, metadata !DIExpression()), !dbg !3479
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3480
  %9 = icmp ne ptr %8, null, !dbg !3480
  br i1 %9, label %10, label %14, !dbg !3482

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3483
  %12 = load ptr, ptr %5, align 8, !dbg !3484
  %13 = load i64, ptr %6, align 8, !dbg !3485
  call void @_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE10deallocateERS8_PS7_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3486
  br label %14, !dbg !3486

14:                                               ; preds = %10, %3
  ret void, !dbg !3487
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !3488 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3494, metadata !DIExpression()), !dbg !3496
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3497
  ret void, !dbg !3499
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE10deallocateERS8_PS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3500 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3501, metadata !DIExpression()), !dbg !3502
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3503, metadata !DIExpression()), !dbg !3504
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3505, metadata !DIExpression()), !dbg !3506
  %7 = load ptr, ptr %4, align 8, !dbg !3507
  %8 = load ptr, ptr %5, align 8, !dbg !3508
  %9 = load i64, ptr %6, align 8, !dbg !3509
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE10deallocateEPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3510
  ret void, !dbg !3511
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE10deallocateEPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #8 comdat align 2 !dbg !3512 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3518, metadata !DIExpression()), !dbg !3520
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3521, metadata !DIExpression()), !dbg !3522
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3523, metadata !DIExpression()), !dbg !3524
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3525
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !3526
  ret void, !dbg !3527
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3528 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3533, metadata !DIExpression()), !dbg !3535
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3536
  ret void, !dbg !3538
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3539 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3543, metadata !DIExpression()), !dbg !3544
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3545
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3546 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3547, metadata !DIExpression()), !dbg !3548
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i64 %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3551, metadata !DIExpression()), !dbg !3552
  %13 = load i64, ptr %11, align 8, !dbg !3553
  %14 = icmp eq i64 %13, 0, !dbg !3555
  br i1 %14, label %15, label %16, !dbg !3556

15:                                               ; preds = %3
  store i32 0, ptr %8, align 4, !dbg !3557
  br label %59, !dbg !3557

16:                                               ; preds = %3
  %17 = load i64, ptr %11, align 8, !dbg !3558
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !3560
  br i1 %18, label %19, label %54, !dbg !3561

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 8, !dbg !3562
  %21 = load i64, ptr %11, align 8, !dbg !3563
  store ptr %20, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3564, metadata !DIExpression()), !dbg !3568
  store i64 %21, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3570, metadata !DIExpression()), !dbg !3571
  br i1 false, label %22, label %54, !dbg !3572

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8, !dbg !3573
  %24 = load i64, ptr %11, align 8, !dbg !3574
  store ptr %23, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3564, metadata !DIExpression()), !dbg !3575
  store i64 %24, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3570, metadata !DIExpression()), !dbg !3577
  br i1 false, label %25, label %54, !dbg !3578

25:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3579, metadata !DIExpression()), !dbg !3582
  store i64 0, ptr %12, align 8, !dbg !3582
  br label %26, !dbg !3583

26:                                               ; preds = %50, %25
  %27 = load i64, ptr %12, align 8, !dbg !3584
  %28 = load i64, ptr %11, align 8, !dbg !3586
  %29 = icmp ult i64 %27, %28, !dbg !3587
  br i1 %29, label %30, label %53, !dbg !3588

30:                                               ; preds = %26
  %31 = load ptr, ptr %9, align 8, !dbg !3589
  %32 = load i64, ptr %12, align 8, !dbg !3591
  %33 = getelementptr inbounds i8, ptr %31, i64 %32, !dbg !3589
  %34 = load ptr, ptr %10, align 8, !dbg !3592
  %35 = load i64, ptr %12, align 8, !dbg !3593
  %36 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !3592
  %37 = call noundef zeroext i1 @_ZNSt11char_traitsIcE2ltERKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %36) #3, !dbg !3594
  br i1 %37, label %38, label %39, !dbg !3595

38:                                               ; preds = %30
  store i32 -1, ptr %8, align 4, !dbg !3596
  br label %59, !dbg !3596

39:                                               ; preds = %30
  %40 = load ptr, ptr %10, align 8, !dbg !3597
  %41 = load i64, ptr %12, align 8, !dbg !3599
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !3597
  %43 = load ptr, ptr %9, align 8, !dbg !3600
  %44 = load i64, ptr %12, align 8, !dbg !3601
  %45 = getelementptr inbounds i8, ptr %43, i64 %44, !dbg !3600
  %46 = call noundef zeroext i1 @_ZNSt11char_traitsIcE2ltERKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 1 dereferenceable(1) %45) #3, !dbg !3602
  br i1 %46, label %47, label %48, !dbg !3603

47:                                               ; preds = %39
  store i32 1, ptr %8, align 4, !dbg !3604
  br label %59, !dbg !3604

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  br label %50, !dbg !3605

50:                                               ; preds = %49
  %51 = load i64, ptr %12, align 8, !dbg !3606
  %52 = add i64 %51, 1, !dbg !3606
  store i64 %52, ptr %12, align 8, !dbg !3606
  br label %26, !dbg !3607, !llvm.loop !3608

53:                                               ; preds = %26
  store i32 0, ptr %8, align 4, !dbg !3610
  br label %59, !dbg !3610

54:                                               ; preds = %22, %19, %16
  %55 = load ptr, ptr %9, align 8, !dbg !3611
  %56 = load ptr, ptr %10, align 8, !dbg !3612
  %57 = load i64, ptr %11, align 8, !dbg !3613
  %58 = call i32 @memcmp(ptr noundef %55, ptr noundef %56, i64 noundef %57) #3, !dbg !3614
  store i32 %58, ptr %8, align 4, !dbg !3615
  br label %59, !dbg !3615

59:                                               ; preds = %54, %53, %47, %38, %15
  %60 = load i32, ptr %8, align 4, !dbg !3616
  ret i32 %60, !dbg !3616
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE2ltERKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #8 comdat align 2 !dbg !3617 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3618, metadata !DIExpression()), !dbg !3619
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3620, metadata !DIExpression()), !dbg !3621
  %5 = load ptr, ptr %3, align 8, !dbg !3622
  %6 = load i8, ptr %5, align 1, !dbg !3622
  %7 = zext i8 %6 to i32, !dbg !3623
  %8 = load ptr, ptr %4, align 8, !dbg !3624
  %9 = load i8, ptr %8, align 1, !dbg !3624
  %10 = zext i8 %9 to i32, !dbg !3625
  %11 = icmp slt i32 %7, %10, !dbg !3626
  ret i1 %11, !dbg !3627
}

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) #5 comdat align 2 !dbg !3628 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3629, metadata !DIExpression()), !dbg !3630
  %5 = load ptr, ptr %4, align 8, !dbg !3631
  store ptr %5, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3633, metadata !DIExpression()), !dbg !3637
  br i1 false, label %6, label %9, !dbg !3639

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !dbg !3640
  %8 = call noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %7), !dbg !3641
  store i64 %8, ptr %3, align 8, !dbg !3642
  br label %12, !dbg !3642

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8, !dbg !3643
  %11 = call i64 @strlen(ptr noundef %10) #3, !dbg !3644
  store i64 %11, ptr %3, align 8, !dbg !3645
  br label %12, !dbg !3645

12:                                               ; preds = %9, %6
  %13 = load i64, ptr %3, align 8, !dbg !3646
  ret i64 %13, !dbg !3646
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3647 {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3653, metadata !DIExpression()), !dbg !3654
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3655, metadata !DIExpression()), !dbg !3656
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3659, metadata !DIExpression()), !dbg !3660
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8, !dbg !3661
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %12), !dbg !3663
  br i1 %13, label %14, label %19, !dbg !3664

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8, !dbg !3665
  %16 = load ptr, ptr %7, align 8, !dbg !3666
  %17 = icmp ne ptr %15, %16, !dbg !3667
  br i1 %17, label %18, label %19, !dbg !3668

18:                                               ; preds = %14
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef @.str.10) #14, !dbg !3669
  unreachable, !dbg !3669

19:                                               ; preds = %14, %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3670, metadata !DIExpression()), !dbg !3671
  %20 = load ptr, ptr %6, align 8, !dbg !3672
  %21 = load ptr, ptr %7, align 8, !dbg !3673
  %22 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %20, ptr noundef %21), !dbg !3674
  store i64 %22, ptr %8, align 8, !dbg !3671
  %23 = load i64, ptr %8, align 8, !dbg !3675
  %24 = icmp ugt i64 %23, 15, !dbg !3677
  br i1 %24, label %25, label %28, !dbg !3678

25:                                               ; preds = %19
  %26 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0), !dbg !3679
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %26), !dbg !3681
  %27 = load i64, ptr %8, align 8, !dbg !3682
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %27), !dbg !3683
  br label %28, !dbg !3684

28:                                               ; preds = %25, %19
  %29 = invoke noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %30 unwind label %33, !dbg !3685

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8, !dbg !3687
  %32 = load ptr, ptr %7, align 8, !dbg !3688
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %29, ptr noundef %31, ptr noundef %32) #3, !dbg !3689
  br label %46, !dbg !3690

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3691
  %35 = extractvalue { ptr, i32 } %34, 0, !dbg !3691
  store ptr %35, ptr %9, align 8, !dbg !3691
  %36 = extractvalue { ptr, i32 } %34, 1, !dbg !3691
  store i32 %36, ptr %10, align 4, !dbg !3691
  br label %37, !dbg !3691

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8, !dbg !3690
  %39 = call ptr @__cxa_begin_catch(ptr %38) #3, !dbg !3690
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %40 unwind label %41, !dbg !3692

40:                                               ; preds = %37
  invoke void @__cxa_rethrow() #14
          to label %56 unwind label %41, !dbg !3694

41:                                               ; preds = %40, %37
  %42 = landingpad { ptr, i32 }
          cleanup, !dbg !3695
  %43 = extractvalue { ptr, i32 } %42, 0, !dbg !3695
  store ptr %43, ptr %9, align 8, !dbg !3695
  %44 = extractvalue { ptr, i32 } %42, 1, !dbg !3695
  store i32 %44, ptr %10, align 4, !dbg !3695
  invoke void @__cxa_end_catch()
          to label %45 unwind label %53, !dbg !3696

45:                                               ; preds = %41
  br label %48, !dbg !3696

46:                                               ; preds = %30
  %47 = load i64, ptr %8, align 8, !dbg !3697
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %47), !dbg !3698
  ret void, !dbg !3699

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 8, !dbg !3696
  %50 = load i32, ptr %10, align 4, !dbg !3696
  %51 = insertvalue { ptr, i32 } poison, ptr %49, 0, !dbg !3696
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1, !dbg !3696
  resume { ptr, i32 } %52, !dbg !3696

53:                                               ; preds = %41
  %54 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3696
  %55 = extractvalue { ptr, i32 } %54, 0, !dbg !3696
  call void @__clang_call_terminate(ptr %55) #13, !dbg !3696
  unreachable, !dbg !3696

56:                                               ; preds = %40
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !3700 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3705, metadata !DIExpression()), !dbg !3707
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3708
  ret void, !dbg !3710
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %0) #5 comdat align 2 !dbg !3711 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3763, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3765, metadata !DIExpression()), !dbg !3766
  store i64 0, ptr %3, align 8, !dbg !3766
  br label %5, !dbg !3767

5:                                                ; preds = %11, %1
  %6 = load ptr, ptr %2, align 8, !dbg !3768
  %7 = load i64, ptr %3, align 8, !dbg !3769
  %8 = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !3768
  store i8 0, ptr %4, align 1, !dbg !3770
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %4), !dbg !3771
  %10 = xor i1 %9, true, !dbg !3772
  br i1 %10, label %11, label %14, !dbg !3767

11:                                               ; preds = %5
  %12 = load i64, ptr %3, align 8, !dbg !3773
  %13 = add i64 %12, 1, !dbg !3773
  store i64 %13, ptr %3, align 8, !dbg !3773
  br label %5, !dbg !3767, !llvm.loop !3774

14:                                               ; preds = %5
  %15 = load i64, ptr %3, align 8, !dbg !3776
  ret i64 %15, !dbg !3777
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #8 comdat align 2 !dbg !3778 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3779, metadata !DIExpression()), !dbg !3780
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3781, metadata !DIExpression()), !dbg !3782
  %5 = load ptr, ptr %3, align 8, !dbg !3783
  %6 = load i8, ptr %5, align 1, !dbg !3783
  %7 = sext i8 %6 to i32, !dbg !3783
  %8 = load ptr, ptr %4, align 8, !dbg !3784
  %9 = load i8, ptr %8, align 1, !dbg !3784
  %10 = sext i8 %9 to i32, !dbg !3784
  %11 = icmp eq i32 %7, %10, !dbg !3785
  ret i1 %11, !dbg !3786
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %0) #8 comdat !dbg !3787 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3790, metadata !DIExpression()), !dbg !3791
  %3 = load ptr, ptr %2, align 8, !dbg !3792
  %4 = icmp eq ptr %3, null, !dbg !3793
  ret i1 %4, !dbg !3794
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !3795 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3801, metadata !DIExpression()), !dbg !3802
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3803, metadata !DIExpression()), !dbg !3804
  %7 = load ptr, ptr %3, align 8, !dbg !3805
  %8 = load ptr, ptr %4, align 8, !dbg !3806
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !3807
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %7, ptr noundef %8), !dbg !3808
  ret i64 %9, !dbg !3809
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #8 comdat !dbg !3810 {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3815, metadata !DIExpression()), !dbg !3816
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3819, metadata !DIExpression()), !dbg !3820
  %6 = load ptr, ptr %5, align 8, !dbg !3821
  %7 = load ptr, ptr %4, align 8, !dbg !3822
  %8 = ptrtoint ptr %6 to i64, !dbg !3823
  %9 = ptrtoint ptr %7 to i64, !dbg !3823
  %10 = sub i64 %8, %9, !dbg !3823
  ret i64 %10, !dbg !3824
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat !dbg !3825 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3831, metadata !DIExpression()), !dbg !3832
  ret void, !dbg !3833
}

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare noundef ptr @_ZN3Log6prefixERKN4Poco13LocalDateTimeEPcPKc(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) #1

declare void @_ZN4Poco13LocalDateTimeC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !3834 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3835, metadata !DIExpression()), !dbg !3836
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3837, metadata !DIExpression()), !dbg !3838
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !3839
  %7 = load ptr, ptr %4, align 8, !dbg !3840
  %8 = load ptr, ptr %7, align 8, !dbg !3840
  store ptr %8, ptr %6, align 8, !dbg !3839
  ret void, !dbg !3841
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !3842 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3843, metadata !DIExpression()), !dbg !3844
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3845
  ret ptr %4, !dbg !3846
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #5 comdat align 2 !dbg !3847 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3848, metadata !DIExpression()), !dbg !3849
  %5 = load ptr, ptr %4, align 8, !dbg !3850
  call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %5), !dbg !3851
  ret void, !dbg !3852
}

; Function Attrs: nounwind
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr sret(%"class.std::allocator") align 1, ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #8 comdat align 2 !dbg !3853 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3854, metadata !DIExpression()), !dbg !3855
  %5 = load ptr, ptr %4, align 8, !dbg !3856
  call void @_ZNSaIcEC1ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !3856
  ret void, !dbg !3857
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1ERKS_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !3858 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3860
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", ptr %3, i32 0, i32 0, !dbg !3861
  ret ptr %4, !dbg !3862
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !3863 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3864, metadata !DIExpression()), !dbg !3865
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3867
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %5, i32 0, i32 0, !dbg !3868
  %7 = load ptr, ptr %4, align 8, !dbg !3869
  %8 = load ptr, ptr %7, align 8, !dbg !3869
  store ptr %8, ptr %6, align 8, !dbg !3868
  ret void, !dbg !3870
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8 comdat align 2 !dbg !3871 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3872, metadata !DIExpression()), !dbg !3873
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9", ptr %3, i32 0, i32 0, !dbg !3874
  ret ptr %4, !dbg !3875
}

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Authorization.cpp() #0 section ".text.startup" !dbg !3876 {
  call void @__cxx_global_var_init(), !dbg !3878
  call void @__cxx_global_var_init.1(), !dbg !3878
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.dbg.cu = !{!1057}
!llvm.module.flags = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432}
!llvm.ident = !{!2433}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "end", linkageName: "_ZN3LogL3endE", scope: !9, file: !10, line: 119, type: !11, isLocal: true, isDefinition: true)
!9 = !DINamespace(name: "Log", scope: null)
!10 = !DIFile(filename: "./common/Log.hpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "6a8d57b5ce543c7c8a1eb53ba92f9b8e")
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_end_marker", scope: !9, file: !10, line: 114, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !13, identifier: "_ZTSN3Log11_end_markerE")
!13 = !{!14}
!14 = !DISubprogram(name: "_end_marker", scope: !12, file: !10, line: 116, type: !15, scopeLine: 116, flags: DIFlagPrototyped, spFlags: 0)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "key", scope: !20, file: !21, line: 23, type: !34, isLocal: true, isDefinition: true)
!20 = distinct !DISubprogram(name: "authorizeURI", linkageName: "_ZNK13Authorization12authorizeURIERN4Poco3URIE", scope: !22, file: !21, line: 19, type: !1045, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1044, retainedNodes: !172)
!21 = !DIFile(filename: "common/Authorization.cpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "bdd582f029c15a304b9723b117ef44c2")
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Authorization", file: !23, line: 18, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !24, identifier: "_ZTS13Authorization")
!23 = !DIFile(filename: "./common/Authorization.hpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "bb9dfc2438f5775691448abebe18ff80")
!24 = !{!25, !33, !1017, !1021, !1025, !1036, !1041, !1044, !1050}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !22, file: !23, line: 29, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type", scope: !22, file: !23, line: 21, baseType: !28, size: 32, flags: DIFlagEnumClass, elements: !29, identifier: "_ZTSN13Authorization4TypeE")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "None", value: 0)
!31 = !DIEnumerator(name: "Token", value: 1)
!32 = !DIEnumerator(name: "Header", value: 2)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !23, line: 30, baseType: !34, size: 256, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !36, line: 79, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stringfwd.h", directory: "")
!37 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !39, file: !38, line: 1627, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !40, templateParams: !1015, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!38 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.tcc", directory: "")
!39 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!40 = !{!41, !107, !109, !110, !118, !394, !399, !404, !407, !412, !415, !421, !422, !423, !426, !430, !433, !434, !437, !438, !448, !453, !456, !459, !462, !465, !468, !469, !472, !531, !582, !585, !588, !591, !595, !598, !601, !602, !605, !606, !609, !612, !615, !618, !622, !627, !630, !633, !634, !638, !641, !644, !647, !650, !653, !656, !659, !660, !661, !730, !794, !795, !796, !797, !798, !799, !800, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !822, !828, !829, !830, !833, !836, !837, !838, !839, !840, !841, !842, !843, !846, !849, !850, !853, !854, !857, !858, !859, !860, !861, !862, !863, !864, !867, !870, !873, !876, !879, !882, !885, !889, !892, !895, !898, !899, !902, !905, !908, !911, !914, !917, !920, !923, !926, !929, !932, !935, !938, !941, !942, !945, !946, !949, !952, !955, !956, !959, !962, !965, !968, !971, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !997, !1000, !1003, !1006, !1009, !1012}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !37, file: !42, line: 109, baseType: !43, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!42 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.h", directory: "")
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !37, file: !42, line: 96, baseType: !45, flags: DIFlagPublic)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !47, file: !46, line: 59, baseType: !80)
!46 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !48, file: !46, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !49, templateParams: !105, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!48 = !DINamespace(name: "__gnu_cxx", scope: null)
!49 = !{!50, !88, !93, !97, !101, !102, !103, !104}
!50 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !47, baseType: !51, extraData: i32 0)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !2, file: !52, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !53, templateParams: !86, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!52 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!53 = !{!54, !68, !74, !77, !83}
!54 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !51, file: !52, line: 463, type: !55, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !60, !64}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !51, file: !52, line: 420, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !51, file: !52, line: 414, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !2, file: !63, line: 261, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIcE")
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !52, line: 435, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !66, line: 280, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !51, file: !52, line: 477, type: !69, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{!57, !60, !64, !71}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !52, line: 429, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !51, file: !52, line: 495, type: !75, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !60, !57, !64}
!77 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !51, file: !52, line: 547, type: !78, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !51, file: !52, line: 435, baseType: !65)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!83 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !51, file: !52, line: 562, type: !84, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!61, !81}
!86 = !{!87}
!87 = !DITemplateTypeParameter(name: "_Alloc", type: !62)
!88 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !47, file: !46, line: 97, type: !89, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{!62, !91}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!93 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE10_S_on_swapERS1_S3_", scope: !47, file: !46, line: 100, type: !94, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !96}
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !62, size: 64)
!97 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv", scope: !47, file: !46, line: 103, type: !98, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{!100}
!100 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!101 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_move_assignEv", scope: !47, file: !46, line: 106, type: !98, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!102 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE20_S_propagate_on_swapEv", scope: !47, file: !46, line: 109, type: !98, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!103 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv", scope: !47, file: !46, line: 112, type: !98, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!104 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_nothrow_moveEv", scope: !47, file: !46, line: 115, type: !98, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!105 = !{!87, !106}
!106 = !DITemplateTypeParameter(type: !59)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_M_dataplus", scope: !37, file: !42, line: 174, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !37, file: !42, line: 158, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_M_string_length", scope: !37, file: !42, line: 175, baseType: !44, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !42, line: 179, baseType: !111, size: 128, offset: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !42, line: 179, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !112, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!112 = !{!113, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_M_local_buf", scope: !111, file: !42, line: 181, baseType: !114, size: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_M_allocated_capacity", scope: !111, file: !42, line: 182, baseType: !44, size: 64)
!118 = !DISubprogram(name: "_S_to_string_view", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E", scope: !37, file: !42, line: 133, type: !119, scopeLine: 133, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !121}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sv_type", scope: !37, file: !42, line: 122, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !2, file: !123, line: 98, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !124, templateParams: !340, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/string_view", directory: "")
!124 = !{!125, !128, !129, !132, !136, !141, !144, !147, !151, !159, !160, !161, !162, !248, !249, !250, !251, !254, !255, !256, !259, !264, !265, !268, !269, !273, !276, !277, !280, !284, !287, !290, !293, !296, !299, !302, !305, !308, !311, !314, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !122, file: !123, line: 119, baseType: !126, flags: DIFlagPublic | DIFlagStaticMember)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !123, line: 117, baseType: !65, flags: DIFlagPublic)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_M_len", scope: !122, file: !123, line: 511, baseType: !65, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_M_str", scope: !122, file: !123, line: 512, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!132 = !DISubprogram(name: "basic_string_view", scope: !122, file: !123, line: 124, type: !133, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !DISubprogram(name: "basic_string_view", scope: !122, file: !123, line: 128, type: !137, scopeLine: 128, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !135, !139}
!139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!141 = !DISubprogram(name: "basic_string_view", scope: !122, file: !123, line: 131, type: !142, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !135, !130}
!144 = !DISubprogram(name: "basic_string_view", scope: !122, file: !123, line: 137, type: !145, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !135, !130, !127}
!147 = !DISubprogram(name: "operator=", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEEaSERKS2_", scope: !122, file: !123, line: 172, type: !148, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !135, !139}
!150 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !122, size: 64)
!151 = !DISubprogram(name: "begin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5beginEv", scope: !122, file: !123, line: 177, type: !152, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !158}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !122, file: !123, line: 113, baseType: !155, flags: DIFlagPublic)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !122, file: !123, line: 108, baseType: !59, flags: DIFlagPublic)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!159 = !DISubprogram(name: "end", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE3endEv", scope: !122, file: !123, line: 181, type: !152, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!160 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6cbeginEv", scope: !122, file: !123, line: 185, type: !152, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!161 = !DISubprogram(name: "cend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4cendEv", scope: !122, file: !123, line: 189, type: !152, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!162 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6rbeginEv", scope: !122, file: !123, line: 193, type: !163, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !158}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !122, file: !123, line: 115, baseType: !166, flags: DIFlagPublic)
!166 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !2, file: !167, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !168, templateParams: !219, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!167 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!168 = !{!169, !191, !192, !196, !200, !205, !209, !213, !221, !226, !229, !232, !233, !234, !240, !243, !244, !245}
!169 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !166, baseType: !170, flags: DIFlagPublic, extraData: i32 0)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::random_access_iterator_tag, char, long, const char *, const char &>", scope: !2, file: !171, line: 127, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !173, identifier: "_ZTSSt8iteratorISt26random_access_iterator_tagclPKcRS1_E")
!171 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!172 = !{}
!173 = !{!174, !185, !186, !188, !189}
!174 = !DITemplateTypeParameter(name: "_Category", type: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !171, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !176, identifier: "_ZTSSt26random_access_iterator_tag")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !175, baseType: !178, extraData: i32 0)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !171, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !179, identifier: "_ZTSSt26bidirectional_iterator_tag")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !178, baseType: !181, extraData: i32 0)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !171, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !182, identifier: "_ZTSSt20forward_iterator_tag")
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !184, extraData: i32 0)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !171, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !172, identifier: "_ZTSSt18input_iterator_tag")
!185 = !DITemplateTypeParameter(name: "_Tp", type: !59)
!186 = !DITemplateTypeParameter(name: "_Distance", type: !187, defaulted: true)
!187 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!188 = !DITemplateTypeParameter(name: "_Pointer", type: !130)
!189 = !DITemplateTypeParameter(name: "_Reference", type: !190)
!190 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !131, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !166, file: !167, line: 147, baseType: !130, size: 64, flags: DIFlagProtected)
!192 = !DISubprogram(name: "reverse_iterator", scope: !166, file: !167, line: 178, type: !193, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!196 = !DISubprogram(name: "reverse_iterator", scope: !166, file: !167, line: 184, type: !197, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !195, !199}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !166, file: !167, line: 152, baseType: !130, flags: DIFlagPublic)
!200 = !DISubprogram(name: "reverse_iterator", scope: !166, file: !167, line: 190, type: !201, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !195, !203}
!203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!205 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIPKcEaSERKS2_", scope: !166, file: !167, line: 194, type: !206, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !195, !203}
!208 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !166, size: 64)
!209 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIPKcE4baseEv", scope: !166, file: !167, line: 228, type: !210, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!199, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!213 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIPKcEdeEv", scope: !166, file: !167, line: 242, type: !214, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !212}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !166, file: !167, line: 156, baseType: !217, flags: DIFlagPublic)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !218, file: !171, line: 227, baseType: !190)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !2, file: !171, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !219, identifier: "_ZTSSt15iterator_traitsIPKcE")
!219 = !{!220}
!220 = !DITemplateTypeParameter(name: "_Iterator", type: !130)
!221 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIPKcEptEv", scope: !166, file: !167, line: 254, type: !222, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !212}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !166, file: !167, line: 153, baseType: !225, flags: DIFlagPublic)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !218, file: !171, line: 226, baseType: !130)
!226 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIPKcEppEv", scope: !166, file: !167, line: 273, type: !227, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!208, !195}
!229 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIPKcEppEi", scope: !166, file: !167, line: 285, type: !230, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!166, !195, !28}
!232 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIPKcEmmEv", scope: !166, file: !167, line: 298, type: !227, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIPKcEmmEi", scope: !166, file: !167, line: 310, type: !230, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!234 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIPKcEplEl", scope: !166, file: !167, line: 323, type: !235, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!166, !212, !237}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !166, file: !167, line: 155, baseType: !238, flags: DIFlagPublic)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !218, file: !171, line: 225, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !66, line: 281, baseType: !187)
!240 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIPKcEpLEl", scope: !166, file: !167, line: 333, type: !241, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!208, !195, !237}
!243 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIPKcEmiEl", scope: !166, file: !167, line: 345, type: !235, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!244 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIPKcEmIEl", scope: !166, file: !167, line: 355, type: !241, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIPKcEixEl", scope: !166, file: !167, line: 367, type: !246, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!216, !212, !237}
!248 = !DISubprogram(name: "rend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4rendEv", scope: !122, file: !123, line: 197, type: !163, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!249 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7crbeginEv", scope: !122, file: !123, line: 201, type: !163, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!250 = !DISubprogram(name: "crend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5crendEv", scope: !122, file: !123, line: 205, type: !163, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubprogram(name: "size", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv", scope: !122, file: !123, line: 211, type: !252, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!127, !158}
!254 = !DISubprogram(name: "length", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6lengthEv", scope: !122, file: !123, line: 215, type: !252, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE8max_sizeEv", scope: !122, file: !123, line: 219, type: !252, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubprogram(name: "empty", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv", scope: !122, file: !123, line: 226, type: !257, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!100, !158}
!259 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEm", scope: !122, file: !123, line: 232, type: !260, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !158, !127}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !122, file: !123, line: 112, baseType: !263, flags: DIFlagPublic)
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!264 = !DISubprogram(name: "at", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm", scope: !122, file: !123, line: 239, type: !260, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubprogram(name: "front", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5frontEv", scope: !122, file: !123, line: 249, type: !266, scopeLine: 249, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!262, !158}
!268 = !DISubprogram(name: "back", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4backEv", scope: !122, file: !123, line: 256, type: !266, scopeLine: 256, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!269 = !DISubprogram(name: "data", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv", scope: !122, file: !123, line: 263, type: !270, scopeLine: 263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !158}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !122, file: !123, line: 110, baseType: !155, flags: DIFlagPublic)
!273 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE13remove_prefixEm", scope: !122, file: !123, line: 269, type: !274, scopeLine: 269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !135, !127}
!276 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE13remove_suffixEm", scope: !122, file: !123, line: 277, type: !274, scopeLine: 277, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubprogram(name: "swap", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE4swapERS2_", scope: !122, file: !123, line: 281, type: !278, scopeLine: 281, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !135, !150}
!280 = !DISubprogram(name: "copy", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm", scope: !122, file: !123, line: 292, type: !281, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !158, !58, !127, !127}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !122, file: !123, line: 117, baseType: !65, flags: DIFlagPublic)
!284 = !DISubprogram(name: "substr", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm", scope: !122, file: !123, line: 304, type: !285, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!122, !158, !127, !127}
!287 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareES2_", scope: !122, file: !123, line: 312, type: !288, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!28, !158, !122}
!290 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_", scope: !122, file: !123, line: 322, type: !291, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!28, !158, !127, !127, !122}
!293 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_mm", scope: !122, file: !123, line: 326, type: !294, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!28, !158, !127, !127, !122, !127, !127}
!296 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEPKc", scope: !122, file: !123, line: 333, type: !297, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{!28, !158, !130}
!299 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmPKc", scope: !122, file: !123, line: 337, type: !300, scopeLine: 337, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!28, !158, !127, !127, !130}
!302 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmPKcm", scope: !122, file: !123, line: 341, type: !303, scopeLine: 341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!28, !158, !127, !127, !130, !127}
!305 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m", scope: !122, file: !123, line: 398, type: !306, scopeLine: 398, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!283, !158, !122, !127}
!308 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm", scope: !122, file: !123, line: 402, type: !309, scopeLine: 402, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!283, !158, !59, !127}
!311 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm", scope: !122, file: !123, line: 405, type: !312, scopeLine: 405, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!283, !158, !130, !127, !127}
!314 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm", scope: !122, file: !123, line: 408, type: !315, scopeLine: 408, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!283, !158, !130, !127}
!317 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m", scope: !122, file: !123, line: 412, type: !306, scopeLine: 412, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!318 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm", scope: !122, file: !123, line: 416, type: !309, scopeLine: 416, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!319 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEPKcmm", scope: !122, file: !123, line: 419, type: !312, scopeLine: 419, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEPKcm", scope: !122, file: !123, line: 422, type: !315, scopeLine: 422, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m", scope: !122, file: !123, line: 426, type: !306, scopeLine: 426, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm", scope: !122, file: !123, line: 430, type: !309, scopeLine: 430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!323 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcmm", scope: !122, file: !123, line: 434, type: !312, scopeLine: 434, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!324 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm", scope: !122, file: !123, line: 438, type: !315, scopeLine: 438, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofES2_m", scope: !122, file: !123, line: 442, type: !306, scopeLine: 442, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!326 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm", scope: !122, file: !123, line: 447, type: !309, scopeLine: 447, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!327 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcmm", scope: !122, file: !123, line: 451, type: !312, scopeLine: 451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm", scope: !122, file: !123, line: 455, type: !315, scopeLine: 455, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!329 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m", scope: !122, file: !123, line: 459, type: !306, scopeLine: 459, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm", scope: !122, file: !123, line: 464, type: !309, scopeLine: 464, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcmm", scope: !122, file: !123, line: 467, type: !312, scopeLine: 467, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!332 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm", scope: !122, file: !123, line: 471, type: !315, scopeLine: 471, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!333 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofES2_m", scope: !122, file: !123, line: 478, type: !306, scopeLine: 478, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm", scope: !122, file: !123, line: 483, type: !309, scopeLine: 483, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcmm", scope: !122, file: !123, line: 486, type: !312, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!336 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm", scope: !122, file: !123, line: 490, type: !315, scopeLine: 490, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!337 = !DISubprogram(name: "_S_compare", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE10_S_compareEmm", scope: !122, file: !123, line: 500, type: !338, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!28, !127, !127}
!340 = !{!341, !342}
!341 = !DITemplateTypeParameter(name: "_CharT", type: !59)
!342 = !DITemplateTypeParameter(name: "_Traits", type: !343, defaulted: true)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !344, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !345, templateParams: !393, identifier: "_ZTSSt11char_traitsIcE")
!344 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!345 = !{!346, !353, !356, !357, !361, !364, !367, !371, !372, !375, !381, !384, !387, !390}
!346 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !343, file: !344, line: 356, type: !347, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349, !351}
!349 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !343, file: !344, line: 346, baseType: !59)
!351 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!353 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !343, file: !344, line: 360, type: !354, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!100, !351, !351}
!356 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !343, file: !344, line: 364, type: !354, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!357 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !343, file: !344, line: 372, type: !358, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!28, !360, !360, !65}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!361 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !343, file: !344, line: 393, type: !362, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!65, !360}
!364 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !343, file: !344, line: 403, type: !365, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{!360, !360, !65, !351}
!367 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !343, file: !344, line: 417, type: !368, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !370, !360, !65}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!371 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !343, file: !344, line: 429, type: !368, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!372 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !343, file: !344, line: 441, type: !373, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{!370, !370, !65, !350}
!375 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !343, file: !344, line: 453, type: !376, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{!350, !378}
!378 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !343, file: !344, line: 347, baseType: !28)
!381 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !343, file: !344, line: 459, type: !382, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!380, !351}
!384 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !343, file: !344, line: 463, type: !385, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!100, !378, !378}
!387 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !343, file: !344, line: 467, type: !388, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{!380}
!390 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !343, file: !344, line: 471, type: !391, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!380, !378}
!393 = !{!341}
!394 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 153, type: !395, scopeLine: 153, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !398, !91}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !37, file: !42, line: 140, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!399 = !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !37, file: !42, line: 186, type: !400, scopeLine: 186, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !397, !402}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !37, file: !42, line: 100, baseType: !403, flags: DIFlagPublic)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !47, file: !46, line: 57, baseType: !57)
!404 = !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !37, file: !42, line: 190, type: !405, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !397, !44}
!407 = !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !37, file: !42, line: 194, type: !408, scopeLine: 194, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!402, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!412 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !37, file: !42, line: 198, type: !413, scopeLine: 198, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!402, !397}
!415 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !37, file: !42, line: 208, type: !416, scopeLine: 208, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !410}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !37, file: !42, line: 101, baseType: !419, flags: DIFlagPublic)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !47, file: !46, line: 58, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !51, file: !52, line: 423, baseType: !130)
!421 = !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !37, file: !42, line: 218, type: !405, scopeLine: 218, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !37, file: !42, line: 222, type: !405, scopeLine: 222, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !37, file: !42, line: 229, type: !424, scopeLine: 229, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!100, !410}
!426 = !DISubprogram(name: "_M_create", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm", scope: !37, file: !42, line: 234, type: !427, scopeLine: 234, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!402, !397, !429, !44}
!429 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !44, size: 64)
!430 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !37, file: !42, line: 237, type: !431, scopeLine: 237, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !397}
!433 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !37, file: !42, line: 244, type: !405, scopeLine: 244, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubprogram(name: "_M_construct_aux_2", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE18_M_construct_aux_2Emc", scope: !37, file: !42, line: 266, type: !435, scopeLine: 266, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !397, !44, !59}
!437 = !DISubprogram(name: "_M_construct", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc", scope: !37, file: !42, line: 291, type: !435, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !37, file: !42, line: 294, type: !439, scopeLine: 294, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !397}
!441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !37, file: !42, line: 95, baseType: !443, flags: DIFlagPublic)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !37, file: !42, line: 88, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !445, file: !46, line: 120, baseType: !447)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !47, file: !46, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !446, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!446 = !{!185}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !51, file: !52, line: 450, baseType: !62)
!448 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !37, file: !42, line: 298, type: !449, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !410}
!451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!453 = !DISubprogram(name: "_M_check", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc", scope: !37, file: !42, line: 318, type: !454, scopeLine: 318, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DISubroutineType(types: !455)
!455 = !{!44, !410, !44, !130}
!456 = !DISubprogram(name: "_M_check_length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc", scope: !37, file: !42, line: 328, type: !457, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !410, !44, !44, !130}
!459 = !DISubprogram(name: "_M_limit", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm", scope: !37, file: !42, line: 337, type: !460, scopeLine: 337, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!44, !410, !44, !44}
!462 = !DISubprogram(name: "_M_disjunct", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc", scope: !37, file: !42, line: 345, type: !463, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!100, !410, !130}
!465 = !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !37, file: !42, line: 354, type: !466, scopeLine: 354, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !58, !130, !44}
!468 = !DISubprogram(name: "_S_move", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm", scope: !37, file: !42, line: 363, type: !466, scopeLine: 363, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!469 = !DISubprogram(name: "_S_assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc", scope: !37, file: !42, line: 372, type: !470, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !58, !44, !59}
!472 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS5_S4_EES8_", scope: !37, file: !42, line: 391, type: !473, scopeLine: 391, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !58, !475, !475}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !37, file: !42, line: 102, baseType: !476, flags: DIFlagPublic)
!476 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !48, file: !167, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !477, templateParams: !529, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!477 = !{!478, !479, !483, !488, !499, !504, !508, !511, !512, !513, !518, !521, !524, !525, !526}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !476, file: !167, line: 1007, baseType: !58, size: 64, flags: DIFlagProtected)
!479 = !DISubprogram(name: "__normal_iterator", scope: !476, file: !167, line: 1023, type: !480, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!483 = !DISubprogram(name: "__normal_iterator", scope: !476, file: !167, line: 1027, type: !484, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !482, !486}
!486 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!488 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv", scope: !476, file: !167, line: 1042, type: !489, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !497}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !476, file: !167, line: 1016, baseType: !492, flags: DIFlagPublic)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !493, file: !171, line: 216, baseType: !496)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !2, file: !171, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !494, identifier: "_ZTSSt15iterator_traitsIPcE")
!494 = !{!495}
!495 = !DITemplateTypeParameter(name: "_Iterator", type: !58)
!496 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !59, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!499 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEptEv", scope: !476, file: !167, line: 1047, type: !500, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !497}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !476, file: !167, line: 1017, baseType: !503, flags: DIFlagPublic)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !493, file: !171, line: 215, baseType: !58)
!504 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv", scope: !476, file: !167, line: 1052, type: !505, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !482}
!507 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !476, size: 64)
!508 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEi", scope: !476, file: !167, line: 1060, type: !509, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!476, !482, !28}
!511 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv", scope: !476, file: !167, line: 1066, type: !505, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!512 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEi", scope: !476, file: !167, line: 1074, type: !509, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEl", scope: !476, file: !167, line: 1080, type: !514, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!491, !497, !516}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !476, file: !167, line: 1015, baseType: !517, flags: DIFlagPublic)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !493, file: !171, line: 214, baseType: !239)
!518 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEpLEl", scope: !476, file: !167, line: 1085, type: !519, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!507, !482, !516}
!521 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEplEl", scope: !476, file: !167, line: 1090, type: !522, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!476, !497, !516}
!524 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmIEl", scope: !476, file: !167, line: 1095, type: !519, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!525 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmiEl", scope: !476, file: !167, line: 1100, type: !522, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!526 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv", scope: !476, file: !167, line: 1105, type: !527, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!486, !497}
!529 = !{!495, !530}
!530 = !DITemplateTypeParameter(name: "_Container", type: !37)
!531 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcS4_EESA_", scope: !37, file: !42, line: 395, type: !532, scopeLine: 395, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !58, !534, !534}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !37, file: !42, line: 104, baseType: !535, flags: DIFlagPublic)
!535 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !48, file: !167, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !536, templateParams: !581, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!536 = !{!537, !538, !542, !547, !553, !557, !561, !564, !565, !566, !570, !573, !576, !577, !578}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !535, file: !167, line: 1007, baseType: !130, size: 64, flags: DIFlagProtected)
!538 = !DISubprogram(name: "__normal_iterator", scope: !535, file: !167, line: 1023, type: !539, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!542 = !DISubprogram(name: "__normal_iterator", scope: !535, file: !167, line: 1027, type: !543, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !541, !545}
!545 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!547 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv", scope: !535, file: !167, line: 1042, type: !548, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !535, file: !167, line: 1016, baseType: !217, flags: DIFlagPublic)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!553 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEptEv", scope: !535, file: !167, line: 1047, type: !554, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !551}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !535, file: !167, line: 1017, baseType: !225, flags: DIFlagPublic)
!557 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv", scope: !535, file: !167, line: 1052, type: !558, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !541}
!560 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !535, size: 64)
!561 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEi", scope: !535, file: !167, line: 1060, type: !562, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!535, !541, !28}
!564 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv", scope: !535, file: !167, line: 1066, type: !558, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!565 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEi", scope: !535, file: !167, line: 1074, type: !562, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!566 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEl", scope: !535, file: !167, line: 1080, type: !567, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!550, !551, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !535, file: !167, line: 1015, baseType: !238, flags: DIFlagPublic)
!570 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEpLEl", scope: !535, file: !167, line: 1085, type: !571, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!560, !541, !569}
!573 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEplEl", scope: !535, file: !167, line: 1090, type: !574, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!535, !551, !569}
!576 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmIEl", scope: !535, file: !167, line: 1095, type: !571, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmiEl", scope: !535, file: !167, line: 1100, type: !574, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!578 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv", scope: !535, file: !167, line: 1105, type: !579, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!545, !551}
!581 = !{!220, !530}
!582 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !37, file: !42, line: 400, type: !583, scopeLine: 400, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !58, !58, !58}
!585 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !37, file: !42, line: 404, type: !586, scopeLine: 404, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !58, !130, !130}
!588 = !DISubprogram(name: "_S_compare", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_S_compareEmm", scope: !37, file: !42, line: 409, type: !589, scopeLine: 409, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!28, !44, !44}
!591 = !DISubprogram(name: "_M_assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_", scope: !37, file: !42, line: 422, type: !592, scopeLine: 422, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !397, !594}
!594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !411, size: 64)
!595 = !DISubprogram(name: "_M_mutate", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm", scope: !37, file: !42, line: 425, type: !596, scopeLine: 425, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !397, !44, !44, !130, !44}
!598 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm", scope: !37, file: !42, line: 429, type: !599, scopeLine: 429, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !397, !44, !44}
!601 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 439, type: !431, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!602 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 448, type: !603, scopeLine: 448, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !397, !91}
!605 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 456, type: !592, scopeLine: 456, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 469, type: !607, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !397, !594, !44, !91}
!609 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 484, type: !610, scopeLine: 484, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !397, !594, !44, !44}
!612 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 500, type: !613, scopeLine: 500, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !397, !594, !44, !44, !91}
!615 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 518, type: !616, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !397, !130, !44, !91}
!618 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 565, type: !619, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !397, !621}
!621 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !37, size: 64)
!622 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 592, type: !623, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !397, !625, !91}
!625 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !2, file: !626, line: 47, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!626 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!627 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 596, type: !628, scopeLine: 596, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !397, !594, !91}
!630 = !DISubprogram(name: "basic_string", scope: !37, file: !42, line: 600, type: !631, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !397, !621, !91}
!633 = !DISubprogram(name: "~basic_string", scope: !37, file: !42, line: 671, type: !431, scopeLine: 671, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!634 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !37, file: !42, line: 679, type: !635, scopeLine: 679, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !397, !594}
!637 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 64)
!638 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc", scope: !37, file: !42, line: 689, type: !639, scopeLine: 689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{!637, !397, !130}
!641 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc", scope: !37, file: !42, line: 700, type: !642, scopeLine: 700, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!637, !397, !59}
!644 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_", scope: !37, file: !42, line: 717, type: !645, scopeLine: 717, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!637, !397, !621}
!647 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSESt16initializer_listIcE", scope: !37, file: !42, line: 785, type: !648, scopeLine: 785, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!637, !397, !625}
!650 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEcvSt17basic_string_viewIcS2_EEv", scope: !37, file: !42, line: 806, type: !651, scopeLine: 806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!121, !410}
!653 = !DISubprogram(name: "begin", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv", scope: !37, file: !42, line: 816, type: !654, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!475, !397}
!656 = !DISubprogram(name: "begin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv", scope: !37, file: !42, line: 824, type: !657, scopeLine: 824, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!534, !410}
!659 = !DISubprogram(name: "end", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv", scope: !37, file: !42, line: 832, type: !654, scopeLine: 832, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!660 = !DISubprogram(name: "end", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv", scope: !37, file: !42, line: 840, type: !657, scopeLine: 840, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!661 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv", scope: !37, file: !42, line: 849, type: !662, scopeLine: 849, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!664, !397}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !37, file: !42, line: 106, baseType: !665, flags: DIFlagPublic)
!665 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !167, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !666, templateParams: !729, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!666 = !{!667, !672, !673, !677, !681, !686, !690, !694, !703, !708, !711, !714, !715, !716, !721, !724, !725, !726}
!667 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !665, baseType: !668, flags: DIFlagPublic, extraData: i32 0)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::random_access_iterator_tag, char, long, char *, char &>", scope: !2, file: !171, line: 127, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !669, identifier: "_ZTSSt8iteratorISt26random_access_iterator_tagclPcRcE")
!669 = !{!174, !185, !186, !670, !671}
!670 = !DITemplateTypeParameter(name: "_Pointer", type: !58, defaulted: true)
!671 = !DITemplateTypeParameter(name: "_Reference", type: !496, defaulted: true)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !665, file: !167, line: 147, baseType: !476, size: 64, flags: DIFlagProtected)
!673 = !DISubprogram(name: "reverse_iterator", scope: !665, file: !167, line: 178, type: !674, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!677 = !DISubprogram(name: "reverse_iterator", scope: !665, file: !167, line: 184, type: !678, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !676, !680}
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !665, file: !167, line: 152, baseType: !476, flags: DIFlagPublic)
!681 = !DISubprogram(name: "reverse_iterator", scope: !665, file: !167, line: 190, type: !682, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !676, !684}
!684 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!686 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSERKSA_", scope: !665, file: !167, line: 194, type: !687, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!689, !676, !684}
!689 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !665, size: 64)
!690 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE4baseEv", scope: !665, file: !167, line: 228, type: !691, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!680, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!694 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEdeEv", scope: !665, file: !167, line: 242, type: !695, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !693}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !665, file: !167, line: 156, baseType: !698, flags: DIFlagPublic)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !699, file: !171, line: 172, baseType: !491)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, void>", scope: !2, file: !171, line: 161, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !700, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE")
!700 = !{!701, !702}
!701 = !DITemplateTypeParameter(name: "_Iterator", type: !476)
!702 = !DITemplateTypeParameter(type: null, defaulted: true)
!703 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEptEv", scope: !665, file: !167, line: 254, type: !704, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!706, !693}
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !665, file: !167, line: 153, baseType: !707, flags: DIFlagPublic)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !699, file: !171, line: 171, baseType: !502)
!708 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEv", scope: !665, file: !167, line: 273, type: !709, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!689, !676}
!711 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEi", scope: !665, file: !167, line: 285, type: !712, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!665, !676, !28}
!714 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEv", scope: !665, file: !167, line: 298, type: !709, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!715 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEi", scope: !665, file: !167, line: 310, type: !712, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!716 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEplEl", scope: !665, file: !167, line: 323, type: !717, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!717 = !DISubroutineType(types: !718)
!718 = !{!665, !693, !719}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !665, file: !167, line: 155, baseType: !720, flags: DIFlagPublic)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !699, file: !171, line: 170, baseType: !516)
!721 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEpLEl", scope: !665, file: !167, line: 333, type: !722, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!689, !676, !719}
!724 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmiEl", scope: !665, file: !167, line: 345, type: !717, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!725 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmIEl", scope: !665, file: !167, line: 355, type: !722, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!726 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEixEl", scope: !665, file: !167, line: 367, type: !727, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!697, !693, !719}
!729 = !{!701}
!730 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv", scope: !37, file: !42, line: 858, type: !731, scopeLine: 858, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!733, !410}
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !37, file: !42, line: 105, baseType: !734, flags: DIFlagPublic)
!734 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !167, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !735, templateParams: !793, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!735 = !{!736, !737, !738, !742, !746, !751, !755, !759, !767, !772, !775, !778, !779, !780, !785, !788, !789, !790}
!736 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !734, baseType: !170, flags: DIFlagPublic, extraData: i32 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !734, file: !167, line: 147, baseType: !535, size: 64, flags: DIFlagProtected)
!738 = !DISubprogram(name: "reverse_iterator", scope: !734, file: !167, line: 178, type: !739, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!742 = !DISubprogram(name: "reverse_iterator", scope: !734, file: !167, line: 184, type: !743, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !741, !745}
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !734, file: !167, line: 152, baseType: !535, flags: DIFlagPublic)
!746 = !DISubprogram(name: "reverse_iterator", scope: !734, file: !167, line: 190, type: !747, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !741, !749}
!749 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!751 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSERKSB_", scope: !734, file: !167, line: 194, type: !752, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!752 = !DISubroutineType(types: !753)
!753 = !{!754, !741, !749}
!754 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !734, size: 64)
!755 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE4baseEv", scope: !734, file: !167, line: 228, type: !756, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!745, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!759 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEdeEv", scope: !734, file: !167, line: 242, type: !760, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !758}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !734, file: !167, line: 156, baseType: !763, flags: DIFlagPublic)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !764, file: !171, line: 172, baseType: !550)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, void>", scope: !2, file: !171, line: 161, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !765, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE")
!765 = !{!766, !702}
!766 = !DITemplateTypeParameter(name: "_Iterator", type: !535)
!767 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEptEv", scope: !734, file: !167, line: 254, type: !768, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!770, !758}
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !734, file: !167, line: 153, baseType: !771, flags: DIFlagPublic)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !764, file: !171, line: 171, baseType: !556)
!772 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEv", scope: !734, file: !167, line: 273, type: !773, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!754, !741}
!775 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEi", scope: !734, file: !167, line: 285, type: !776, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!734, !741, !28}
!778 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEv", scope: !734, file: !167, line: 298, type: !773, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!779 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEi", scope: !734, file: !167, line: 310, type: !776, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!780 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEplEl", scope: !734, file: !167, line: 323, type: !781, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!734, !758, !783}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !734, file: !167, line: 155, baseType: !784, flags: DIFlagPublic)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !764, file: !171, line: 170, baseType: !569)
!785 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEpLEl", scope: !734, file: !167, line: 333, type: !786, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!786 = !DISubroutineType(types: !787)
!787 = !{!754, !741, !783}
!788 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmiEl", scope: !734, file: !167, line: 345, type: !781, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!789 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmIEl", scope: !734, file: !167, line: 355, type: !786, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!790 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEixEl", scope: !734, file: !167, line: 367, type: !791, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!762, !758, !783}
!793 = !{!766}
!794 = !DISubprogram(name: "rend", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4rendEv", scope: !37, file: !42, line: 867, type: !662, scopeLine: 867, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!795 = !DISubprogram(name: "rend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4rendEv", scope: !37, file: !42, line: 876, type: !731, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!796 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6cbeginEv", scope: !37, file: !42, line: 885, type: !657, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!797 = !DISubprogram(name: "cend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4cendEv", scope: !37, file: !42, line: 893, type: !657, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!798 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7crbeginEv", scope: !37, file: !42, line: 902, type: !731, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!799 = !DISubprogram(name: "crend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5crendEv", scope: !37, file: !42, line: 911, type: !731, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!800 = !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !37, file: !42, line: 920, type: !801, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!44, !410}
!803 = !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !37, file: !42, line: 926, type: !801, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!804 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv", scope: !37, file: !42, line: 931, type: !801, scopeLine: 931, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!805 = !DISubprogram(name: "resize", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc", scope: !37, file: !42, line: 945, type: !435, scopeLine: 945, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!806 = !DISubprogram(name: "resize", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm", scope: !37, file: !42, line: 958, type: !405, scopeLine: 958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!807 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv", scope: !37, file: !42, line: 966, type: !431, scopeLine: 966, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!808 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv", scope: !37, file: !42, line: 976, type: !801, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!809 = !DISubprogram(name: "reserve", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm", scope: !37, file: !42, line: 1000, type: !405, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!810 = !DISubprogram(name: "reserve", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv", scope: !37, file: !42, line: 1009, type: !431, scopeLine: 1009, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!811 = !DISubprogram(name: "clear", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv", scope: !37, file: !42, line: 1015, type: !431, scopeLine: 1015, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!812 = !DISubprogram(name: "empty", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv", scope: !37, file: !42, line: 1023, type: !424, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!813 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm", scope: !37, file: !42, line: 1038, type: !814, scopeLine: 1038, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !410, !44}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !37, file: !42, line: 99, baseType: !817, flags: DIFlagPublic)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !47, file: !46, line: 63, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !47, file: !46, line: 56, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !51, file: !52, line: 417, baseType: !59)
!822 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm", scope: !37, file: !42, line: 1055, type: !823, scopeLine: 1055, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !397, !44}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !37, file: !42, line: 98, baseType: !826, flags: DIFlagPublic)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !47, file: !46, line: 62, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !820, size: 64)
!828 = !DISubprogram(name: "at", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm", scope: !37, file: !42, line: 1076, type: !814, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!829 = !DISubprogram(name: "at", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm", scope: !37, file: !42, line: 1097, type: !823, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!830 = !DISubprogram(name: "front", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv", scope: !37, file: !42, line: 1113, type: !831, scopeLine: 1113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!825, !397}
!833 = !DISubprogram(name: "front", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv", scope: !37, file: !42, line: 1124, type: !834, scopeLine: 1124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!834 = !DISubroutineType(types: !835)
!835 = !{!816, !410}
!836 = !DISubprogram(name: "back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv", scope: !37, file: !42, line: 1135, type: !831, scopeLine: 1135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!837 = !DISubprogram(name: "back", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv", scope: !37, file: !42, line: 1146, type: !834, scopeLine: 1146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!838 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_", scope: !37, file: !42, line: 1160, type: !635, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!839 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc", scope: !37, file: !42, line: 1169, type: !639, scopeLine: 1169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!840 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc", scope: !37, file: !42, line: 1178, type: !642, scopeLine: 1178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!841 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLESt16initializer_listIcE", scope: !37, file: !42, line: 1191, type: !648, scopeLine: 1191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!842 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_", scope: !37, file: !42, line: 1213, type: !635, scopeLine: 1213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!843 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm", scope: !37, file: !42, line: 1230, type: !844, scopeLine: 1230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!637, !397, !594, !44, !44}
!846 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm", scope: !37, file: !42, line: 1242, type: !847, scopeLine: 1242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!637, !397, !130, !44}
!849 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc", scope: !37, file: !42, line: 1255, type: !639, scopeLine: 1255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!850 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc", scope: !37, file: !42, line: 1272, type: !851, scopeLine: 1272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{!637, !397, !44, !59}
!853 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendESt16initializer_listIcE", scope: !37, file: !42, line: 1282, type: !648, scopeLine: 1282, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!854 = !DISubprogram(name: "push_back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc", scope: !37, file: !42, line: 1341, type: !855, scopeLine: 1341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !397, !59}
!857 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !37, file: !42, line: 1356, type: !635, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!858 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_", scope: !37, file: !42, line: 1401, type: !645, scopeLine: 1401, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!859 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_mm", scope: !37, file: !42, line: 1424, type: !844, scopeLine: 1424, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!860 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm", scope: !37, file: !42, line: 1440, type: !847, scopeLine: 1440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!861 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc", scope: !37, file: !42, line: 1456, type: !639, scopeLine: 1456, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!862 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc", scope: !37, file: !42, line: 1473, type: !851, scopeLine: 1473, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!863 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignESt16initializer_listIcE", scope: !37, file: !42, line: 1501, type: !648, scopeLine: 1501, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!864 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEmc", scope: !37, file: !42, line: 1555, type: !865, scopeLine: 1555, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!865 = !DISubroutineType(types: !866)
!866 = !{!475, !397, !534, !44, !59}
!867 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EESt16initializer_listIcE", scope: !37, file: !42, line: 1633, type: !868, scopeLine: 1633, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!868 = !DISubroutineType(types: !869)
!869 = !{!475, !397, !534, !625}
!870 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_", scope: !37, file: !42, line: 1660, type: !871, scopeLine: 1660, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!637, !397, !44, !594}
!873 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_mm", scope: !37, file: !42, line: 1683, type: !874, scopeLine: 1683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{!637, !397, !44, !594, !44, !44}
!876 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm", scope: !37, file: !42, line: 1706, type: !877, scopeLine: 1706, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!637, !397, !44, !130, !44}
!879 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc", scope: !37, file: !42, line: 1725, type: !880, scopeLine: 1725, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!880 = !DISubroutineType(types: !881)
!881 = !{!637, !397, !44, !130}
!882 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc", scope: !37, file: !42, line: 1749, type: !883, scopeLine: 1749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!883 = !DISubroutineType(types: !884)
!884 = !{!637, !397, !44, !44, !59}
!885 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc", scope: !37, file: !42, line: 1767, type: !886, scopeLine: 1767, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!475, !397, !888, !59}
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__const_iterator", scope: !37, file: !42, line: 116, baseType: !534, flags: DIFlagProtected)
!889 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm", scope: !37, file: !42, line: 1827, type: !890, scopeLine: 1827, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!637, !397, !44, !44}
!892 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE", scope: !37, file: !42, line: 1846, type: !893, scopeLine: 1846, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{!475, !397, !888}
!895 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_", scope: !37, file: !42, line: 1865, type: !896, scopeLine: 1865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!475, !397, !888, !888}
!898 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv", scope: !37, file: !42, line: 1884, type: !431, scopeLine: 1884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!899 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_", scope: !37, file: !42, line: 1909, type: !900, scopeLine: 1909, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!637, !397, !44, !44, !594}
!902 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm", scope: !37, file: !42, line: 1931, type: !903, scopeLine: 1931, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!637, !397, !44, !44, !594, !44, !44}
!905 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm", scope: !37, file: !42, line: 1956, type: !906, scopeLine: 1956, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!637, !397, !44, !44, !130, !44}
!908 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc", scope: !37, file: !42, line: 1981, type: !909, scopeLine: 1981, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{!637, !397, !44, !44, !130}
!911 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc", scope: !37, file: !42, line: 2005, type: !912, scopeLine: 2005, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!637, !397, !44, !44, !44, !59}
!914 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_RKS4_", scope: !37, file: !42, line: 2023, type: !915, scopeLine: 2023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{!637, !397, !888, !888, !594}
!917 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_m", scope: !37, file: !42, line: 2043, type: !918, scopeLine: 2043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!918 = !DISubroutineType(types: !919)
!919 = !{!637, !397, !888, !888, !130, !44}
!920 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_", scope: !37, file: !42, line: 2065, type: !921, scopeLine: 2065, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!921 = !DISubroutineType(types: !922)
!922 = !{!637, !397, !888, !888, !130}
!923 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_mc", scope: !37, file: !42, line: 2086, type: !924, scopeLine: 2086, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!637, !397, !888, !888, !44, !59}
!926 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_", scope: !37, file: !42, line: 2143, type: !927, scopeLine: 2143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!637, !397, !888, !888, !58, !58}
!929 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_S8_", scope: !37, file: !42, line: 2154, type: !930, scopeLine: 2154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{!637, !397, !888, !888, !130, !130}
!932 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_NS6_IPcS4_EESB_", scope: !37, file: !42, line: 2165, type: !933, scopeLine: 2165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{!637, !397, !888, !888, !475, !475}
!935 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S9_S9_", scope: !37, file: !42, line: 2176, type: !936, scopeLine: 2176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!637, !397, !888, !888, !534, !534}
!938 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_St16initializer_listIcE", scope: !37, file: !42, line: 2201, type: !939, scopeLine: 2201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!939 = !DISubroutineType(types: !940)
!940 = !{!637, !397, !534, !534, !625}
!941 = !DISubprogram(name: "_M_replace_aux", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc", scope: !37, file: !42, line: 2275, type: !912, scopeLine: 2275, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DISubprogram(name: "_M_replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm", scope: !37, file: !42, line: 2279, type: !943, scopeLine: 2279, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{!637, !397, !44, !44, !130, !43}
!945 = !DISubprogram(name: "_M_append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm", scope: !37, file: !42, line: 2283, type: !847, scopeLine: 2283, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DISubprogram(name: "copy", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4copyEPcmm", scope: !37, file: !42, line: 2300, type: !947, scopeLine: 2300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{!44, !410, !58, !44, !44}
!949 = !DISubprogram(name: "swap", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_", scope: !37, file: !42, line: 2310, type: !950, scopeLine: 2310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !397, !637}
!952 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv", scope: !37, file: !42, line: 2320, type: !953, scopeLine: 2320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!953 = !DISubroutineType(types: !954)
!954 = !{!130, !410}
!955 = !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !37, file: !42, line: 2332, type: !953, scopeLine: 2332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!956 = !DISubprogram(name: "data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !37, file: !42, line: 2343, type: !957, scopeLine: 2343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!957 = !DISubroutineType(types: !958)
!958 = !{!58, !397}
!959 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv", scope: !37, file: !42, line: 2351, type: !960, scopeLine: 2351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!960 = !DISubroutineType(types: !961)
!961 = !{!442, !410}
!962 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm", scope: !37, file: !42, line: 2367, type: !963, scopeLine: 2367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!963 = !DISubroutineType(types: !964)
!964 = !{!44, !410, !130, !44, !44}
!965 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m", scope: !37, file: !42, line: 2381, type: !966, scopeLine: 2381, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!966 = !DISubroutineType(types: !967)
!967 = !{!44, !410, !594, !44}
!968 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm", scope: !37, file: !42, line: 2413, type: !969, scopeLine: 2413, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!44, !410, !130, !44}
!971 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm", scope: !37, file: !42, line: 2430, type: !972, scopeLine: 2430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!972 = !DISubroutineType(types: !973)
!973 = !{!44, !410, !59, !44}
!974 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindERKS4_m", scope: !37, file: !42, line: 2443, type: !966, scopeLine: 2443, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!975 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm", scope: !37, file: !42, line: 2477, type: !963, scopeLine: 2477, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!976 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm", scope: !37, file: !42, line: 2491, type: !969, scopeLine: 2491, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!977 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm", scope: !37, file: !42, line: 2508, type: !972, scopeLine: 2508, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!978 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofERKS4_m", scope: !37, file: !42, line: 2522, type: !966, scopeLine: 2522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!979 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm", scope: !37, file: !42, line: 2557, type: !963, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!980 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm", scope: !37, file: !42, line: 2571, type: !969, scopeLine: 2571, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!981 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm", scope: !37, file: !42, line: 2591, type: !972, scopeLine: 2591, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!982 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofERKS4_m", scope: !37, file: !42, line: 2606, type: !966, scopeLine: 2606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!983 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm", scope: !37, file: !42, line: 2641, type: !963, scopeLine: 2641, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!984 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm", scope: !37, file: !42, line: 2655, type: !969, scopeLine: 2655, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!985 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm", scope: !37, file: !42, line: 2675, type: !972, scopeLine: 2675, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!986 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofERKS4_m", scope: !37, file: !42, line: 2689, type: !966, scopeLine: 2689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!987 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm", scope: !37, file: !42, line: 2724, type: !963, scopeLine: 2724, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!988 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm", scope: !37, file: !42, line: 2738, type: !969, scopeLine: 2738, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!989 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm", scope: !37, file: !42, line: 2756, type: !972, scopeLine: 2756, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!990 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofERKS4_m", scope: !37, file: !42, line: 2771, type: !966, scopeLine: 2771, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!991 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm", scope: !37, file: !42, line: 2806, type: !963, scopeLine: 2806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!992 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm", scope: !37, file: !42, line: 2820, type: !969, scopeLine: 2820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!993 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm", scope: !37, file: !42, line: 2838, type: !972, scopeLine: 2838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!994 = !DISubprogram(name: "substr", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm", scope: !37, file: !42, line: 2854, type: !995, scopeLine: 2854, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!37, !410, !44, !44}
!997 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_", scope: !37, file: !42, line: 2873, type: !998, scopeLine: 2873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!998 = !DISubroutineType(types: !999)
!999 = !{!28, !410, !594}
!1000 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_", scope: !37, file: !42, line: 2966, type: !1001, scopeLine: 2966, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!28, !410, !44, !44, !594}
!1003 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm", scope: !37, file: !42, line: 2992, type: !1004, scopeLine: 2992, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!28, !410, !44, !44, !594, !44, !44}
!1006 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc", scope: !37, file: !42, line: 3010, type: !1007, scopeLine: 3010, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!28, !410, !130}
!1009 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc", scope: !37, file: !42, line: 3034, type: !1010, scopeLine: 3034, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!28, !410, !44, !44, !130}
!1012 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKcm", scope: !37, file: !42, line: 3061, type: !1013, scopeLine: 3061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!28, !410, !44, !44, !130, !44}
!1015 = !{!341, !342, !1016}
!1016 = !DITemplateTypeParameter(name: "_Alloc", type: !62, defaulted: true)
!1017 = !DISubprogram(name: "Authorization", scope: !22, file: !23, line: 33, type: !1018, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1021 = !DISubprogram(name: "Authorization", scope: !22, file: !23, line: 38, type: !1022, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !1020, !27, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !34, size: 64)
!1025 = !DISubprogram(name: "create", linkageName: "_ZN13Authorization6createERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE", scope: !22, file: !23, line: 46, type: !1026, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!22, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "QueryParameters", scope: !1032, file: !1031, line: 54, baseType: !1034, flags: DIFlagPublic)
!1031 = !DIFile(filename: "/usr/include/Poco/URI.h", directory: "", checksumkind: CSK_MD5, checksum: "3c645142e5929ce50ca50c860fde370e")
!1032 = !DICompositeType(tag: DW_TAG_class_type, name: "URI", scope: !1033, file: !1031, line: 32, size: 1600, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco3URIE")
!1033 = !DINamespace(name: "Poco", scope: null)
!1034 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >", scope: !2, file: !1035, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE")
!1035 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!1036 = !DISubprogram(name: "create", linkageName: "_ZN13Authorization6createERKN4Poco3URIE", scope: !22, file: !23, line: 47, type: !1037, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!22, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1041 = !DISubprogram(name: "create", linkageName: "_ZN13Authorization6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !22, file: !23, line: 48, type: !1042, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!22, !1024}
!1044 = !DISubprogram(name: "authorizeURI", linkageName: "_ZNK13Authorization12authorizeURIERN4Poco3URIE", scope: !22, file: !23, line: 51, type: !1045, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1047, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1049 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1032, size: 64)
!1050 = !DISubprogram(name: "authorizeRequest", linkageName: "_ZNK13Authorization16authorizeRequestERN4Poco3Net11HTTPRequestE", scope: !22, file: !23, line: 54, type: !1051, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1047, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_class_type, name: "HTTPRequest", scope: !1056, file: !1055, line: 29, size: 1088, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1055 = !DIFile(filename: "/usr/include/Poco/Net/HTTPRequest.h", directory: "", checksumkind: CSK_MD5, checksum: "287c02b9dfb0425f2ce39e51a7f2fddc")
!1056 = !DINamespace(name: "Net", scope: !1033)
!1057 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !21, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !1058, retainedTypes: !1115, globals: !1362, imports: !1407, splitDebugInlining: false, nameTableKind: None)
!1058 = !{!1059, !27, !1066, !1077, !1089, !1112}
!1059 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !48, file: !1060, line: 49, baseType: !1061, size: 32, elements: !1062, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!1060 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/concurrence.h", directory: "")
!1061 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!1064 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!1065 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!1066 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Openmode", scope: !2, file: !5, line: 111, baseType: !28, size: 32, elements: !1067, identifier: "_ZTSSt13_Ios_Openmode")
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1068 = !DIEnumerator(name: "_S_app", value: 1)
!1069 = !DIEnumerator(name: "_S_ate", value: 2)
!1070 = !DIEnumerator(name: "_S_bin", value: 4)
!1071 = !DIEnumerator(name: "_S_in", value: 8)
!1072 = !DIEnumerator(name: "_S_out", value: 16)
!1073 = !DIEnumerator(name: "_S_trunc", value: 32)
!1074 = !DIEnumerator(name: "_S_ios_openmode_end", value: 65536)
!1075 = !DIEnumerator(name: "_S_ios_openmode_max", value: 2147483647)
!1076 = !DIEnumerator(name: "_S_ios_openmode_min", value: -2147483648)
!1077 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Priority", scope: !1079, file: !1078, line: 46, baseType: !1061, size: 32, elements: !1080, identifier: "_ZTSN4Poco7Message8PriorityE")
!1078 = !DIFile(filename: "/usr/include/Poco/Message.h", directory: "", checksumkind: CSK_MD5, checksum: "7bdab359746cded723eb4c57c8be664a")
!1079 = !DICompositeType(tag: DW_TAG_class_type, name: "Message", scope: !1033, file: !1078, line: 29, size: 1216, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco7MessageE")
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1081 = !DIEnumerator(name: "PRIO_FATAL", value: 1, isUnsigned: true)
!1082 = !DIEnumerator(name: "PRIO_CRITICAL", value: 2, isUnsigned: true)
!1083 = !DIEnumerator(name: "PRIO_ERROR", value: 3, isUnsigned: true)
!1084 = !DIEnumerator(name: "PRIO_WARNING", value: 4, isUnsigned: true)
!1085 = !DIEnumerator(name: "PRIO_NOTICE", value: 5, isUnsigned: true)
!1086 = !DIEnumerator(name: "PRIO_INFORMATION", value: 6, isUnsigned: true)
!1087 = !DIEnumerator(name: "PRIO_DEBUG", value: 7, isUnsigned: true)
!1088 = !DIEnumerator(name: "PRIO_TRACE", value: 8, isUnsigned: true)
!1089 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Fmtflags", scope: !2, file: !5, line: 57, baseType: !28, size: 32, elements: !1090, identifier: "_ZTSSt13_Ios_Fmtflags")
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1091 = !DIEnumerator(name: "_S_boolalpha", value: 1)
!1092 = !DIEnumerator(name: "_S_dec", value: 2)
!1093 = !DIEnumerator(name: "_S_fixed", value: 4)
!1094 = !DIEnumerator(name: "_S_hex", value: 8)
!1095 = !DIEnumerator(name: "_S_internal", value: 16)
!1096 = !DIEnumerator(name: "_S_left", value: 32)
!1097 = !DIEnumerator(name: "_S_oct", value: 64)
!1098 = !DIEnumerator(name: "_S_right", value: 128)
!1099 = !DIEnumerator(name: "_S_scientific", value: 256)
!1100 = !DIEnumerator(name: "_S_showbase", value: 512)
!1101 = !DIEnumerator(name: "_S_showpoint", value: 1024)
!1102 = !DIEnumerator(name: "_S_showpos", value: 2048)
!1103 = !DIEnumerator(name: "_S_skipws", value: 4096)
!1104 = !DIEnumerator(name: "_S_unitbuf", value: 8192)
!1105 = !DIEnumerator(name: "_S_uppercase", value: 16384)
!1106 = !DIEnumerator(name: "_S_adjustfield", value: 176)
!1107 = !DIEnumerator(name: "_S_basefield", value: 74)
!1108 = !DIEnumerator(name: "_S_floatfield", value: 260)
!1109 = !DIEnumerator(name: "_S_ios_fmtflags_end", value: 65536)
!1110 = !DIEnumerator(name: "_S_ios_fmtflags_max", value: 2147483647)
!1111 = !DIEnumerator(name: "_S_ios_fmtflags_min", value: -2147483648)
!1112 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !37, file: !42, line: 177, baseType: !1061, size: 32, elements: !1113, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt_E")
!1113 = !{!1114}
!1114 = !DIEnumerator(name: "_S_local_capacity", value: 15, isUnsigned: true)
!1115 = !{!1116, !1089, !28, !1186, !130, !44, !1187, !1307, !1196, !1192, !1188, !1122, !1118, !37, !6, !1308, !12, !22, !122, !166, !476, !535, !665, !734}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !1117, file: !1035, line: 419, baseType: !1118, flags: DIFlagPublic)
!1117 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<StringToken, std::allocator<StringToken> >", scope: !2, file: !1035, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorI11StringTokenSaIS0_EE")
!1118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<StringToken *, std::vector<StringToken, std::allocator<StringToken> > >", scope: !48, file: !167, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1119, templateParams: !1184, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEE")
!1119 = !{!1120, !1134, !1138, !1143, !1154, !1159, !1163, !1166, !1167, !1168, !1173, !1176, !1179, !1180, !1181}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !1118, file: !167, line: 1007, baseType: !1121, size: 64, flags: DIFlagProtected)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StringToken", file: !1123, line: 17, size: 128, flags: DIFlagTypePassByValue, elements: !1124, identifier: "_ZTS11StringToken")
!1123 = !DIFile(filename: "./common/StringVector.hpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "5dbd2cdb2741bf0e62e923dbf85e8d86")
!1124 = !{!1125, !1126, !1127, !1131}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1122, file: !1123, line: 19, baseType: !65, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_length", scope: !1122, file: !1123, line: 20, baseType: !65, size: 64, offset: 64)
!1127 = !DISubprogram(name: "StringToken", scope: !1122, file: !1123, line: 22, type: !1128, scopeLine: 22, flags: DIFlagPrototyped, spFlags: 0)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1131 = !DISubprogram(name: "StringToken", scope: !1122, file: !1123, line: 24, type: !1132, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1130, !65, !65}
!1134 = !DISubprogram(name: "__normal_iterator", scope: !1118, file: !167, line: 1023, type: !1135, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1138 = !DISubprogram(name: "__normal_iterator", scope: !1118, file: !167, line: 1027, type: !1139, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1137, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1143 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv", scope: !1118, file: !167, line: 1042, type: !1144, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1146, !1152}
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1118, file: !167, line: 1016, baseType: !1147, flags: DIFlagPublic)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1148, file: !171, line: 216, baseType: !1151)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<StringToken *>", scope: !2, file: !171, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !1149, identifier: "_ZTSSt15iterator_traitsIP11StringTokenE")
!1149 = !{!1150}
!1150 = !DITemplateTypeParameter(name: "_Iterator", type: !1121)
!1151 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1122, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1154 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEptEv", scope: !1118, file: !167, line: 1047, type: !1155, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !1152}
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1118, file: !167, line: 1017, baseType: !1158, flags: DIFlagPublic)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1148, file: !171, line: 215, baseType: !1121)
!1159 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv", scope: !1118, file: !167, line: 1052, type: !1160, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1162, !1137}
!1162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1118, size: 64)
!1163 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEi", scope: !1118, file: !167, line: 1060, type: !1164, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1118, !1137, !28}
!1166 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmmEv", scope: !1118, file: !167, line: 1066, type: !1160, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1167 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmmEi", scope: !1118, file: !167, line: 1074, type: !1164, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1168 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEixEl", scope: !1118, file: !167, line: 1080, type: !1169, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1146, !1152, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1118, file: !167, line: 1015, baseType: !1172, flags: DIFlagPublic)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1148, file: !171, line: 214, baseType: !239)
!1173 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEpLEl", scope: !1118, file: !167, line: 1085, type: !1174, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1162, !1137, !1171}
!1176 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEplEl", scope: !1118, file: !167, line: 1090, type: !1177, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1118, !1152, !1171}
!1179 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmIEl", scope: !1118, file: !167, line: 1095, type: !1174, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1180 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl", scope: !1118, file: !167, line: 1100, type: !1177, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1181 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv", scope: !1118, file: !167, line: 1105, type: !1182, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1141, !1152}
!1184 = !{!1150, !1185}
!1185 = !DITemplateTypeParameter(name: "_Container", type: !1117)
!1186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !1034, file: !1035, line: 419, baseType: !1188, flags: DIFlagPublic)
!1188 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > > >", scope: !48, file: !167, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1189, templateParams: !1305, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEE")
!1189 = !{!1190, !1256, !1260, !1265, !1275, !1280, !1284, !1287, !1288, !1289, !1294, !1297, !1300, !1301, !1302}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !1188, file: !167, line: 1007, baseType: !1191, size: 64, flags: DIFlagProtected)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !2, file: !1193, line: 211, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1194, templateParams: !1253, identifier: "_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E")
!1193 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_pair.h", directory: "", checksumkind: CSK_MD5, checksum: "7f4523a2a9644730e7f1af988b6f398d")
!1194 = !{!1195, !1215, !1216, !1217, !1223, !1227, !1241, !1250}
!1195 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1192, baseType: !1196, flags: DIFlagPrivate, extraData: i32 0)
!1196 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !2, file: !1193, line: 189, size: 8, flags: DIFlagTypePassByValue, elements: !1197, templateParams: !1212, identifier: "_ZTSSt11__pair_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E")
!1197 = !{!1198, !1202, !1203, !1208}
!1198 = !DISubprogram(name: "__pair_base", scope: !1196, file: !1193, line: 193, type: !1199, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1202 = !DISubprogram(name: "~__pair_base", scope: !1196, file: !1193, line: 194, type: !1199, scopeLine: 194, flags: DIFlagPrototyped, spFlags: 0)
!1203 = !DISubprogram(name: "__pair_base", scope: !1196, file: !1193, line: 195, type: !1204, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1201, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1208 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11__pair_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSERKS6_", scope: !1196, file: !1193, line: 196, type: !1209, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211, !1201, !1206}
!1211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1196, size: 64)
!1212 = !{!1213, !1214}
!1213 = !DITemplateTypeParameter(name: "_U1", type: !37)
!1214 = !DITemplateTypeParameter(name: "_U2", type: !37)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1192, file: !1193, line: 217, baseType: !37, size: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1192, file: !1193, line: 218, baseType: !37, size: 256, offset: 256)
!1217 = !DISubprogram(name: "pair", scope: !1192, file: !1193, line: 314, type: !1218, scopeLine: 314, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1221 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1223 = !DISubprogram(name: "pair", scope: !1192, file: !1193, line: 315, type: !1224, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1220, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1192, size: 64)
!1227 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSERKS6_", scope: !1192, file: !1193, line: 390, type: !1228, scopeLine: 390, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1230, !1220, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1192, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1233, file: !1232, line: 2221, baseType: !1221)
!1232 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, const std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &, const std::__nonesuch &>", scope: !2, file: !1232, line: 2220, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !1234, identifier: "_ZTSSt11conditionalILb1ERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ERKSt10__nonesuchE")
!1234 = !{!1235, !1236, !1237}
!1235 = !DITemplateValueParameter(name: "_Cond", type: !100, value: i1 true)
!1236 = !DITemplateTypeParameter(name: "_Iftrue", type: !1221)
!1237 = !DITemplateTypeParameter(name: "_Iffalse", type: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nonesuch", scope: !2, file: !1232, line: 2991, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt10__nonesuch")
!1241 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_", scope: !1192, file: !1193, line: 401, type: !1242, scopeLine: 401, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1230, !1220, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1245, file: !1232, line: 2221, baseType: !1226)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &&, std::__nonesuch &&>", scope: !2, file: !1232, line: 2220, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !1246, identifier: "_ZTSSt11conditionalILb1EOSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EOSt10__nonesuchE")
!1246 = !{!1235, !1247, !1248}
!1247 = !DITemplateTypeParameter(name: "_Iftrue", type: !1226)
!1248 = !DITemplateTypeParameter(name: "_Iffalse", type: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1240, size: 64)
!1250 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E4swapERS6_", scope: !1192, file: !1193, line: 439, type: !1251, scopeLine: 439, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1220, !1230}
!1253 = !{!1254, !1255}
!1254 = !DITemplateTypeParameter(name: "_T1", type: !37)
!1255 = !DITemplateTypeParameter(name: "_T2", type: !37)
!1256 = !DISubprogram(name: "__normal_iterator", scope: !1188, file: !167, line: 1023, type: !1257, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1260 = !DISubprogram(name: "__normal_iterator", scope: !1188, file: !167, line: 1027, type: !1261, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1259, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1265 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv", scope: !1188, file: !167, line: 1042, type: !1266, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!1268, !1273}
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1188, file: !167, line: 1016, baseType: !1269, flags: DIFlagPublic)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1270, file: !171, line: 216, baseType: !1230)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *>", scope: !2, file: !171, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !1271, identifier: "_ZTSSt15iterator_traitsIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE")
!1271 = !{!1272}
!1272 = !DITemplateTypeParameter(name: "_Iterator", type: !1191)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1275 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEptEv", scope: !1188, file: !167, line: 1047, type: !1276, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1278, !1273}
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1188, file: !167, line: 1017, baseType: !1279, flags: DIFlagPublic)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1270, file: !171, line: 215, baseType: !1191)
!1280 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv", scope: !1188, file: !167, line: 1052, type: !1281, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1283, !1259}
!1283 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1188, size: 64)
!1284 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEi", scope: !1188, file: !167, line: 1060, type: !1285, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!1188, !1259, !28}
!1287 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmmEv", scope: !1188, file: !167, line: 1066, type: !1281, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1288 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmmEi", scope: !1188, file: !167, line: 1074, type: !1285, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1289 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEixEl", scope: !1188, file: !167, line: 1080, type: !1290, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1268, !1273, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1188, file: !167, line: 1015, baseType: !1293, flags: DIFlagPublic)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1270, file: !171, line: 214, baseType: !239)
!1294 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEpLEl", scope: !1188, file: !167, line: 1085, type: !1295, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1283, !1259, !1292}
!1297 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEplEl", scope: !1188, file: !167, line: 1090, type: !1298, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!1188, !1273, !1292}
!1300 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmIEl", scope: !1188, file: !167, line: 1095, type: !1295, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1301 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmiEl", scope: !1188, file: !167, line: 1100, type: !1298, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1302 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv", scope: !1188, file: !167, line: 1105, type: !1303, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1263, !1273}
!1305 = !{!1272, !1306}
!1306 = !DITemplateTypeParameter(name: "_Container", type: !1034)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !1034, file: !1035, line: 421, baseType: !1308, flags: DIFlagPublic)
!1308 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > > >", scope: !48, file: !167, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1309, templateParams: !1361, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEE")
!1309 = !{!1310, !1312, !1316, !1321, !1331, !1336, !1340, !1343, !1344, !1345, !1350, !1353, !1356, !1357, !1358}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !1308, file: !167, line: 1007, baseType: !1311, size: 64, flags: DIFlagProtected)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1312 = !DISubprogram(name: "__normal_iterator", scope: !1308, file: !167, line: 1023, type: !1313, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1316 = !DISubprogram(name: "__normal_iterator", scope: !1308, file: !167, line: 1027, type: !1317, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1315, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1321 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv", scope: !1308, file: !167, line: 1042, type: !1322, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324, !1329}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1308, file: !167, line: 1016, baseType: !1325, flags: DIFlagPublic)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1326, file: !171, line: 227, baseType: !1221)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *>", scope: !2, file: !171, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !1327, identifier: "_ZTSSt15iterator_traitsIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE")
!1327 = !{!1328}
!1328 = !DITemplateTypeParameter(name: "_Iterator", type: !1311)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1331 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEptEv", scope: !1308, file: !167, line: 1047, type: !1332, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1334, !1329}
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1308, file: !167, line: 1017, baseType: !1335, flags: DIFlagPublic)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1326, file: !171, line: 226, baseType: !1311)
!1336 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv", scope: !1308, file: !167, line: 1052, type: !1337, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1339, !1315}
!1339 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1308, size: 64)
!1340 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEi", scope: !1308, file: !167, line: 1060, type: !1341, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1308, !1315, !28}
!1343 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmmEv", scope: !1308, file: !167, line: 1066, type: !1337, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1344 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmmEi", scope: !1308, file: !167, line: 1074, type: !1341, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1345 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEixEl", scope: !1308, file: !167, line: 1080, type: !1346, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1324, !1329, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1308, file: !167, line: 1015, baseType: !1349, flags: DIFlagPublic)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1326, file: !171, line: 225, baseType: !239)
!1350 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEpLEl", scope: !1308, file: !167, line: 1085, type: !1351, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1339, !1315, !1348}
!1353 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEplEl", scope: !1308, file: !167, line: 1090, type: !1354, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1308, !1329, !1348}
!1356 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmIEl", scope: !1308, file: !167, line: 1095, type: !1351, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1357 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEmiEl", scope: !1308, file: !167, line: 1100, type: !1354, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1358 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv", scope: !1308, file: !167, line: 1105, type: !1359, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1319, !1329}
!1361 = !{!1328, !1306}
!1362 = !{!0, !7, !1363, !18, !1368, !1373, !1378, !1383, !1388, !1393, !1395, !1400, !1402}
!1363 = !DIGlobalVariableExpression(var: !1364, expr: !DIExpression())
!1364 = distinct !DIGlobalVariable(scope: null, file: !21, line: 23, type: !1365, isLocal: true, isDefinition: true)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 104, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 13)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !21, line: 46, type: !1370, isLocal: true, isDefinition: true)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 112, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 14)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression())
!1374 = distinct !DIGlobalVariable(scope: null, file: !21, line: 46, type: !1375, isLocal: true, isDefinition: true)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 8)
!1378 = !DIGlobalVariableExpression(var: !1379, expr: !DIExpression())
!1379 = distinct !DIGlobalVariable(scope: null, file: !21, line: 55, type: !1380, isLocal: true, isDefinition: true)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 24, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 3)
!1383 = !DIGlobalVariableExpression(var: !1384, expr: !DIExpression())
!1384 = distinct !DIGlobalVariable(scope: null, file: !21, line: 83, type: !1385, isLocal: true, isDefinition: true)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: 4)
!1388 = !DIGlobalVariableExpression(var: !1389, expr: !DIExpression())
!1389 = distinct !DIGlobalVariable(scope: null, file: !21, line: 83, type: !1390, isLocal: true, isDefinition: true)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1056, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 132)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !21, line: 83, type: !1380, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !21, line: 83, type: !1397, isLocal: true, isDefinition: true)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 200, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 25)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !21, line: 101, type: !1370, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !38, line: 212, type: !1404, isLocal: true, isDefinition: true)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 336, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 42)
!1407 = !{!1408, !1412, !1427, !1430, !1435, !1443, !1451, !1455, !1462, !1466, !1470, !1472, !1474, !1478, !1487, !1491, !1497, !1503, !1505, !1509, !1513, !1517, !1521, !1534, !1536, !1540, !1544, !1548, !1550, !1555, !1559, !1563, !1565, !1567, !1571, !1592, !1596, !1600, !1604, !1606, !1612, !1614, !1621, !1626, !1630, !1634, !1638, !1642, !1646, !1648, !1650, !1654, !1658, !1662, !1664, !1668, !1672, !1674, !1676, !1680, !1685, !1690, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1712, !1716, !1719, !1722, !1725, !1727, !1729, !1731, !1734, !1737, !1740, !1743, !1746, !1748, !1752, !1756, !1759, !1762, !1764, !1766, !1768, !1770, !1773, !1776, !1779, !1782, !1785, !1787, !1791, !1795, !1800, !1806, !1808, !1810, !1812, !1814, !1816, !1818, !1820, !1822, !1824, !1826, !1828, !1830, !1832, !1836, !1840, !1846, !1850, !1854, !1859, !1861, !1865, !1869, !1873, !1881, !1883, !1887, !1891, !1895, !1899, !1903, !1907, !1911, !1915, !1919, !1923, !1927, !1929, !1933, !1937, !1941, !1947, !1951, !1955, !1957, !1961, !1965, !1971, !1973, !1977, !1981, !1985, !1989, !1993, !1997, !2001, !2002, !2003, !2004, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2016, !2022, !2027, !2031, !2033, !2035, !2037, !2039, !2046, !2050, !2054, !2058, !2062, !2066, !2071, !2075, !2077, !2081, !2087, !2091, !2096, !2098, !2100, !2104, !2108, !2110, !2112, !2114, !2116, !2120, !2122, !2124, !2128, !2132, !2136, !2140, !2144, !2148, !2150, !2154, !2158, !2162, !2166, !2168, !2170, !2174, !2178, !2179, !2180, !2181, !2182, !2183, !2189, !2193, !2197, !2201, !2205, !2209, !2211, !2213, !2215, !2219, !2223, !2227, !2231, !2235, !2237, !2239, !2241, !2245, !2249, !2253, !2255, !2257, !2261, !2265, !2270, !2276, !2279, !2280, !2282, !2284, !2286, !2288, !2292, !2294, !2296, !2298, !2300, !2302, !2304, !2306, !2308, !2312, !2316, !2318, !2322, !2326, !2331, !2335, !2336, !2341, !2345, !2350, !2355, !2359, !2365, !2369, !2371, !2375, !2382, !2387, !2389, !2392, !2397, !2401, !2405, !2409, !2413, !2417, !2421}
!1408 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1409, entity: !1410, file: !1411, line: 58)
!1409 = !DINamespace(name: "__gnu_debug", scope: null)
!1410 = !DINamespace(name: "__debug", scope: !2)
!1411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1413, file: !1426, line: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1414, line: 6, baseType: !1415)
!1414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1416, line: 21, baseType: !1417)
!1416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1418, identifier: "_ZTS11__mbstate_t")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1417, file: !1416, line: 15, baseType: !28, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1417, file: !1416, line: 20, baseType: !1421, size: 32, offset: 32)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1416, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1422, identifier: "_ZTSN11__mbstate_tUt_E")
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1421, file: !1416, line: 18, baseType: !1061, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1421, file: !1416, line: 19, baseType: !1425, size: 32)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !1386)
!1426 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1428, file: !1426, line: 141)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1429, line: 20, baseType: !1061)
!1429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1431, file: !1426, line: 143)
!1431 = !DISubprogram(name: "btowc", scope: !1432, file: !1432, line: 285, type: !1433, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1428, !28}
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1436, file: !1426, line: 144)
!1436 = !DISubprogram(name: "fgetwc", scope: !1432, file: !1432, line: 744, type: !1437, flags: DIFlagPrototyped, spFlags: 0)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1428, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1441, line: 5, baseType: !1442)
!1441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1441, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1444, file: !1426, line: 145)
!1444 = !DISubprogram(name: "fgetws", scope: !1432, file: !1432, line: 773, type: !1445, flags: DIFlagPrototyped, spFlags: 0)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1447, !1449, !28, !1450}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1447)
!1450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1439)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1452, file: !1426, line: 146)
!1452 = !DISubprogram(name: "fputwc", scope: !1432, file: !1432, line: 758, type: !1453, flags: DIFlagPrototyped, spFlags: 0)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1428, !1448, !1439}
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1456, file: !1426, line: 147)
!1456 = !DISubprogram(name: "fputws", scope: !1432, file: !1432, line: 780, type: !1457, flags: DIFlagPrototyped, spFlags: 0)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!28, !1459, !1450}
!1459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1463, file: !1426, line: 148)
!1463 = !DISubprogram(name: "fwide", scope: !1432, file: !1432, line: 588, type: !1464, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!28, !1439, !28}
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1467, file: !1426, line: 149)
!1467 = !DISubprogram(name: "fwprintf", scope: !1432, file: !1432, line: 595, type: !1468, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!28, !1450, !1459, null}
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1471, file: !1426, line: 150)
!1471 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1432, file: !1432, line: 657, type: !1468, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1473, file: !1426, line: 151)
!1473 = !DISubprogram(name: "getwc", scope: !1432, file: !1432, line: 745, type: !1437, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1426, line: 152)
!1475 = !DISubprogram(name: "getwchar", scope: !1432, file: !1432, line: 751, type: !1476, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1428}
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1426, line: 153)
!1479 = !DISubprogram(name: "mbrlen", scope: !1432, file: !1432, line: 308, type: !1480, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1482, !1484, !1482, !1485}
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1483, line: 46, baseType: !67)
!1483 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1488, file: !1426, line: 154)
!1488 = !DISubprogram(name: "mbrtowc", scope: !1432, file: !1432, line: 297, type: !1489, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1482, !1449, !1484, !1482, !1485}
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1492, file: !1426, line: 155)
!1492 = !DISubprogram(name: "mbsinit", scope: !1432, file: !1432, line: 293, type: !1493, flags: DIFlagPrototyped, spFlags: 0)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!28, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1498, file: !1426, line: 156)
!1498 = !DISubprogram(name: "mbsrtowcs", scope: !1432, file: !1432, line: 338, type: !1499, flags: DIFlagPrototyped, spFlags: 0)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1482, !1449, !1501, !1482, !1485}
!1501 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1504, file: !1426, line: 157)
!1504 = !DISubprogram(name: "putwc", scope: !1432, file: !1432, line: 759, type: !1453, flags: DIFlagPrototyped, spFlags: 0)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1506, file: !1426, line: 158)
!1506 = !DISubprogram(name: "putwchar", scope: !1432, file: !1432, line: 765, type: !1507, flags: DIFlagPrototyped, spFlags: 0)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1428, !1448}
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1510, file: !1426, line: 160)
!1510 = !DISubprogram(name: "swprintf", scope: !1432, file: !1432, line: 605, type: !1511, flags: DIFlagPrototyped, spFlags: 0)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!28, !1449, !1482, !1459, null}
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1514, file: !1426, line: 162)
!1514 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1432, file: !1432, line: 664, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!28, !1459, !1459, null}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1518, file: !1426, line: 163)
!1518 = !DISubprogram(name: "ungetwc", scope: !1432, file: !1432, line: 788, type: !1519, flags: DIFlagPrototyped, spFlags: 0)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1428, !1428, !1439}
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1522, file: !1426, line: 164)
!1522 = !DISubprogram(name: "vfwprintf", scope: !1432, file: !1432, line: 613, type: !1523, flags: DIFlagPrototyped, spFlags: 0)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!28, !1450, !1459, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1527, identifier: "_ZTS13__va_list_tag")
!1527 = !{!1528, !1530, !1531, !1533}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1526, file: !1529, baseType: !1061, size: 32)
!1529 = !DIFile(filename: "common/Authorization.cpp", directory: "/home/raj/sme2")
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1526, file: !1529, baseType: !1061, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1526, file: !1529, baseType: !1532, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1526, file: !1529, baseType: !1532, size: 64, offset: 128)
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1535, file: !1426, line: 166)
!1535 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1432, file: !1432, line: 711, type: !1523, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1537, file: !1426, line: 169)
!1537 = !DISubprogram(name: "vswprintf", scope: !1432, file: !1432, line: 626, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!28, !1449, !1482, !1459, !1525}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1541, file: !1426, line: 172)
!1541 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1432, file: !1432, line: 718, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!28, !1459, !1459, !1525}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1545, file: !1426, line: 174)
!1545 = !DISubprogram(name: "vwprintf", scope: !1432, file: !1432, line: 621, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!28, !1459, !1525}
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1549, file: !1426, line: 176)
!1549 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1432, file: !1432, line: 715, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1426, line: 178)
!1551 = !DISubprogram(name: "wcrtomb", scope: !1432, file: !1432, line: 302, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1482, !1554, !1448, !1485}
!1554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1556, file: !1426, line: 179)
!1556 = !DISubprogram(name: "wcscat", scope: !1432, file: !1432, line: 97, type: !1557, flags: DIFlagPrototyped, spFlags: 0)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1447, !1449, !1459}
!1559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1560, file: !1426, line: 180)
!1560 = !DISubprogram(name: "wcscmp", scope: !1432, file: !1432, line: 106, type: !1561, flags: DIFlagPrototyped, spFlags: 0)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!28, !1460, !1460}
!1563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1564, file: !1426, line: 181)
!1564 = !DISubprogram(name: "wcscoll", scope: !1432, file: !1432, line: 131, type: !1561, flags: DIFlagPrototyped, spFlags: 0)
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1566, file: !1426, line: 182)
!1566 = !DISubprogram(name: "wcscpy", scope: !1432, file: !1432, line: 87, type: !1557, flags: DIFlagPrototyped, spFlags: 0)
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1568, file: !1426, line: 183)
!1568 = !DISubprogram(name: "wcscspn", scope: !1432, file: !1432, line: 188, type: !1569, flags: DIFlagPrototyped, spFlags: 0)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1482, !1460, !1460}
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1572, file: !1426, line: 184)
!1572 = !DISubprogram(name: "wcsftime", scope: !1432, file: !1432, line: 852, type: !1573, flags: DIFlagPrototyped, spFlags: 0)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1482, !1449, !1482, !1459, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1579, line: 7, size: 448, flags: DIFlagTypePassByValue, elements: !1580, identifier: "_ZTS2tm")
!1579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1578, file: !1579, line: 9, baseType: !28, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1578, file: !1579, line: 10, baseType: !28, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1578, file: !1579, line: 11, baseType: !28, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1578, file: !1579, line: 12, baseType: !28, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1578, file: !1579, line: 13, baseType: !28, size: 32, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1578, file: !1579, line: 14, baseType: !28, size: 32, offset: 160)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1578, file: !1579, line: 15, baseType: !28, size: 32, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1578, file: !1579, line: 16, baseType: !28, size: 32, offset: 224)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1578, file: !1579, line: 17, baseType: !28, size: 32, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1578, file: !1579, line: 20, baseType: !187, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1578, file: !1579, line: 21, baseType: !130, size: 64, offset: 384)
!1592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1593, file: !1426, line: 185)
!1593 = !DISubprogram(name: "wcslen", scope: !1432, file: !1432, line: 223, type: !1594, flags: DIFlagPrototyped, spFlags: 0)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1482, !1460}
!1596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1597, file: !1426, line: 186)
!1597 = !DISubprogram(name: "wcsncat", scope: !1432, file: !1432, line: 101, type: !1598, flags: DIFlagPrototyped, spFlags: 0)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1447, !1449, !1459, !1482}
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1601, file: !1426, line: 187)
!1601 = !DISubprogram(name: "wcsncmp", scope: !1432, file: !1432, line: 109, type: !1602, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!28, !1460, !1460, !1482}
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1605, file: !1426, line: 188)
!1605 = !DISubprogram(name: "wcsncpy", scope: !1432, file: !1432, line: 92, type: !1598, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1607, file: !1426, line: 189)
!1607 = !DISubprogram(name: "wcsrtombs", scope: !1432, file: !1432, line: 344, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1482, !1554, !1610, !1482, !1485}
!1610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1613, file: !1426, line: 190)
!1613 = !DISubprogram(name: "wcsspn", scope: !1432, file: !1432, line: 192, type: !1569, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1615, file: !1426, line: 191)
!1615 = !DISubprogram(name: "wcstod", scope: !1432, file: !1432, line: 378, type: !1616, flags: DIFlagPrototyped, spFlags: 0)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1618, !1459, !1619}
!1618 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1619 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1622, file: !1426, line: 193)
!1622 = !DISubprogram(name: "wcstof", scope: !1432, file: !1432, line: 383, type: !1623, flags: DIFlagPrototyped, spFlags: 0)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!1625, !1459, !1619}
!1625 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1627, file: !1426, line: 195)
!1627 = !DISubprogram(name: "wcstok", scope: !1432, file: !1432, line: 218, type: !1628, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1447, !1449, !1459, !1619}
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1631, file: !1426, line: 196)
!1631 = !DISubprogram(name: "wcstol", scope: !1432, file: !1432, line: 429, type: !1632, flags: DIFlagPrototyped, spFlags: 0)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!187, !1459, !1619, !28}
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1635, file: !1426, line: 197)
!1635 = !DISubprogram(name: "wcstoul", scope: !1432, file: !1432, line: 434, type: !1636, flags: DIFlagPrototyped, spFlags: 0)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!67, !1459, !1619, !28}
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1639, file: !1426, line: 198)
!1639 = !DISubprogram(name: "wcsxfrm", scope: !1432, file: !1432, line: 135, type: !1640, flags: DIFlagPrototyped, spFlags: 0)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1482, !1449, !1459, !1482}
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1643, file: !1426, line: 199)
!1643 = !DISubprogram(name: "wctob", scope: !1432, file: !1432, line: 289, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!28, !1428}
!1646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1647, file: !1426, line: 200)
!1647 = !DISubprogram(name: "wmemcmp", scope: !1432, file: !1432, line: 259, type: !1602, flags: DIFlagPrototyped, spFlags: 0)
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1649, file: !1426, line: 201)
!1649 = !DISubprogram(name: "wmemcpy", scope: !1432, file: !1432, line: 263, type: !1598, flags: DIFlagPrototyped, spFlags: 0)
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1651, file: !1426, line: 202)
!1651 = !DISubprogram(name: "wmemmove", scope: !1432, file: !1432, line: 268, type: !1652, flags: DIFlagPrototyped, spFlags: 0)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1447, !1447, !1460, !1482}
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1655, file: !1426, line: 203)
!1655 = !DISubprogram(name: "wmemset", scope: !1432, file: !1432, line: 272, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1447, !1447, !1448, !1482}
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1659, file: !1426, line: 204)
!1659 = !DISubprogram(name: "wprintf", scope: !1432, file: !1432, line: 602, type: !1660, flags: DIFlagPrototyped, spFlags: 0)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!28, !1459, null}
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1663, file: !1426, line: 205)
!1663 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1432, file: !1432, line: 661, type: !1660, flags: DIFlagPrototyped, spFlags: 0)
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1665, file: !1426, line: 206)
!1665 = !DISubprogram(name: "wcschr", scope: !1432, file: !1432, line: 165, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1447, !1460, !1448}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1669, file: !1426, line: 207)
!1669 = !DISubprogram(name: "wcspbrk", scope: !1432, file: !1432, line: 202, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1447, !1460, !1460}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1673, file: !1426, line: 208)
!1673 = !DISubprogram(name: "wcsrchr", scope: !1432, file: !1432, line: 175, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1675, file: !1426, line: 209)
!1675 = !DISubprogram(name: "wcsstr", scope: !1432, file: !1432, line: 213, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1677, file: !1426, line: 210)
!1677 = !DISubprogram(name: "wmemchr", scope: !1432, file: !1432, line: 254, type: !1678, flags: DIFlagPrototyped, spFlags: 0)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1447, !1460, !1448, !1482}
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1681, file: !1426, line: 251)
!1681 = !DISubprogram(name: "wcstold", scope: !1432, file: !1432, line: 385, type: !1682, flags: DIFlagPrototyped, spFlags: 0)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1684, !1459, !1619}
!1684 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1686, file: !1426, line: 260)
!1686 = !DISubprogram(name: "wcstoll", scope: !1432, file: !1432, line: 442, type: !1687, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1689, !1459, !1619, !28}
!1689 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1691, file: !1426, line: 261)
!1691 = !DISubprogram(name: "wcstoull", scope: !1432, file: !1432, line: 449, type: !1692, flags: DIFlagPrototyped, spFlags: 0)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1694, !1459, !1619, !28}
!1694 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1681, file: !1426, line: 267)
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1686, file: !1426, line: 268)
!1697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1426, line: 269)
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1622, file: !1426, line: 283)
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1535, file: !1426, line: 286)
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1541, file: !1426, line: 289)
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1549, file: !1426, line: 292)
!1702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1681, file: !1426, line: 296)
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1686, file: !1426, line: 297)
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1426, line: 298)
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1706, file: !1711, line: 47)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1707, line: 24, baseType: !1708)
!1707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1709, line: 37, baseType: !1710)
!1709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1710 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1711 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1713, file: !1711, line: 48)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1707, line: 25, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1709, line: 39, baseType: !1715)
!1715 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1717, file: !1711, line: 49)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1707, line: 26, baseType: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1709, line: 41, baseType: !28)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1720, file: !1711, line: 50)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1707, line: 27, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1709, line: 44, baseType: !187)
!1722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1723, file: !1711, line: 52)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1724, line: 58, baseType: !1710)
!1724 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1726, file: !1711, line: 53)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1724, line: 60, baseType: !187)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1728, file: !1711, line: 54)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1724, line: 61, baseType: !187)
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1730, file: !1711, line: 55)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1724, line: 62, baseType: !187)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1732, file: !1711, line: 57)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1724, line: 43, baseType: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1709, line: 52, baseType: !1708)
!1734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1735, file: !1711, line: 58)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1724, line: 44, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1709, line: 54, baseType: !1714)
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1738, file: !1711, line: 59)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1724, line: 45, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1709, line: 56, baseType: !1718)
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1741, file: !1711, line: 60)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1724, line: 46, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1709, line: 58, baseType: !1721)
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1744, file: !1711, line: 62)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1724, line: 101, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1709, line: 72, baseType: !187)
!1746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1747, file: !1711, line: 63)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1724, line: 87, baseType: !187)
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1749, file: !1711, line: 65)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1750, line: 24, baseType: !1751)
!1750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1709, line: 38, baseType: !1186)
!1752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1753, file: !1711, line: 66)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1750, line: 25, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1709, line: 40, baseType: !1755)
!1755 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1757, file: !1711, line: 67)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1750, line: 26, baseType: !1758)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1709, line: 42, baseType: !1061)
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1760, file: !1711, line: 68)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1750, line: 27, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1709, line: 45, baseType: !67)
!1762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1763, file: !1711, line: 70)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1724, line: 71, baseType: !1186)
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1765, file: !1711, line: 71)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1724, line: 73, baseType: !67)
!1766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1767, file: !1711, line: 72)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1724, line: 74, baseType: !67)
!1768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1769, file: !1711, line: 73)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1724, line: 75, baseType: !67)
!1770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1771, file: !1711, line: 75)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1724, line: 49, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1709, line: 53, baseType: !1751)
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1774, file: !1711, line: 76)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1724, line: 50, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1709, line: 55, baseType: !1754)
!1776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1777, file: !1711, line: 77)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1724, line: 51, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1709, line: 57, baseType: !1758)
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1780, file: !1711, line: 78)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1724, line: 52, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1709, line: 59, baseType: !1761)
!1782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1783, file: !1711, line: 80)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1724, line: 102, baseType: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1709, line: 73, baseType: !67)
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1786, file: !1711, line: 81)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1724, line: 90, baseType: !67)
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1788, file: !1790, line: 53)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1789, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1789 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1790 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1792, file: !1790, line: 54)
!1792 = !DISubprogram(name: "setlocale", scope: !1789, file: !1789, line: 122, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!58, !28, !130}
!1795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1796, file: !1790, line: 55)
!1796 = !DISubprogram(name: "localeconv", scope: !1789, file: !1789, line: 125, type: !1797, flags: DIFlagPrototyped, spFlags: 0)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1801, file: !1805, line: 64)
!1801 = !DISubprogram(name: "isalnum", scope: !1802, file: !1802, line: 108, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1802 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!28, !28}
!1805 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1807, file: !1805, line: 65)
!1807 = !DISubprogram(name: "isalpha", scope: !1802, file: !1802, line: 109, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1809, file: !1805, line: 66)
!1809 = !DISubprogram(name: "iscntrl", scope: !1802, file: !1802, line: 110, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1811, file: !1805, line: 67)
!1811 = !DISubprogram(name: "isdigit", scope: !1802, file: !1802, line: 111, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1813, file: !1805, line: 68)
!1813 = !DISubprogram(name: "isgraph", scope: !1802, file: !1802, line: 113, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1815, file: !1805, line: 69)
!1815 = !DISubprogram(name: "islower", scope: !1802, file: !1802, line: 112, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1817, file: !1805, line: 70)
!1817 = !DISubprogram(name: "isprint", scope: !1802, file: !1802, line: 114, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1819, file: !1805, line: 71)
!1819 = !DISubprogram(name: "ispunct", scope: !1802, file: !1802, line: 115, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1821, file: !1805, line: 72)
!1821 = !DISubprogram(name: "isspace", scope: !1802, file: !1802, line: 116, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1823, file: !1805, line: 73)
!1823 = !DISubprogram(name: "isupper", scope: !1802, file: !1802, line: 117, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1825, file: !1805, line: 74)
!1825 = !DISubprogram(name: "isxdigit", scope: !1802, file: !1802, line: 118, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1827, file: !1805, line: 75)
!1827 = !DISubprogram(name: "tolower", scope: !1802, file: !1802, line: 122, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1829, file: !1805, line: 76)
!1829 = !DISubprogram(name: "toupper", scope: !1802, file: !1802, line: 125, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1831, file: !1805, line: 87)
!1831 = !DISubprogram(name: "isblank", scope: !1802, file: !1802, line: 130, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1833, file: !1835, line: 52)
!1833 = !DISubprogram(name: "abs", scope: !1834, file: !1834, line: 848, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1834 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1835 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1837, file: !1839, line: 127)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1834, line: 63, baseType: !1838)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1839 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1841, file: !1839, line: 128)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1834, line: 71, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1843, identifier: "_ZTS6ldiv_t")
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1842, file: !1834, line: 69, baseType: !187, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1842, file: !1834, line: 70, baseType: !187, size: 64, offset: 64)
!1846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1847, file: !1839, line: 130)
!1847 = !DISubprogram(name: "abort", scope: !1834, file: !1834, line: 598, type: !1848, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null}
!1850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1851, file: !1839, line: 132)
!1851 = !DISubprogram(name: "aligned_alloc", scope: !1834, file: !1834, line: 592, type: !1852, flags: DIFlagPrototyped, spFlags: 0)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1532, !1482, !1482}
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1855, file: !1839, line: 134)
!1855 = !DISubprogram(name: "atexit", scope: !1834, file: !1834, line: 602, type: !1856, flags: DIFlagPrototyped, spFlags: 0)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!28, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1860, file: !1839, line: 137)
!1860 = !DISubprogram(name: "at_quick_exit", scope: !1834, file: !1834, line: 607, type: !1856, flags: DIFlagPrototyped, spFlags: 0)
!1861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1862, file: !1839, line: 140)
!1862 = !DISubprogram(name: "atof", scope: !1834, file: !1834, line: 102, type: !1863, flags: DIFlagPrototyped, spFlags: 0)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1618, !130}
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1866, file: !1839, line: 141)
!1866 = !DISubprogram(name: "atoi", scope: !1834, file: !1834, line: 105, type: !1867, flags: DIFlagPrototyped, spFlags: 0)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!28, !130}
!1869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1870, file: !1839, line: 142)
!1870 = !DISubprogram(name: "atol", scope: !1834, file: !1834, line: 108, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!187, !130}
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1874, file: !1839, line: 143)
!1874 = !DISubprogram(name: "bsearch", scope: !1834, file: !1834, line: 828, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1532, !72, !72, !1482, !1482, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1834, line: 816, baseType: !1878)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!28, !72, !72}
!1881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1882, file: !1839, line: 144)
!1882 = !DISubprogram(name: "calloc", scope: !1834, file: !1834, line: 543, type: !1852, flags: DIFlagPrototyped, spFlags: 0)
!1883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1884, file: !1839, line: 145)
!1884 = !DISubprogram(name: "div", scope: !1834, file: !1834, line: 860, type: !1885, flags: DIFlagPrototyped, spFlags: 0)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!1837, !28, !28}
!1887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1888, file: !1839, line: 146)
!1888 = !DISubprogram(name: "exit", scope: !1834, file: !1834, line: 624, type: !1889, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !28}
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1892, file: !1839, line: 147)
!1892 = !DISubprogram(name: "free", scope: !1834, file: !1834, line: 555, type: !1893, flags: DIFlagPrototyped, spFlags: 0)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1532}
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1896, file: !1839, line: 148)
!1896 = !DISubprogram(name: "getenv", scope: !1834, file: !1834, line: 641, type: !1897, flags: DIFlagPrototyped, spFlags: 0)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!58, !130}
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1900, file: !1839, line: 149)
!1900 = !DISubprogram(name: "labs", scope: !1834, file: !1834, line: 849, type: !1901, flags: DIFlagPrototyped, spFlags: 0)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!187, !187}
!1903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1904, file: !1839, line: 150)
!1904 = !DISubprogram(name: "ldiv", scope: !1834, file: !1834, line: 862, type: !1905, flags: DIFlagPrototyped, spFlags: 0)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1841, !187, !187}
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1908, file: !1839, line: 151)
!1908 = !DISubprogram(name: "malloc", scope: !1834, file: !1834, line: 540, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1532, !1482}
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1912, file: !1839, line: 153)
!1912 = !DISubprogram(name: "mblen", scope: !1834, file: !1834, line: 930, type: !1913, flags: DIFlagPrototyped, spFlags: 0)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!28, !130, !1482}
!1915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1916, file: !1839, line: 154)
!1916 = !DISubprogram(name: "mbstowcs", scope: !1834, file: !1834, line: 941, type: !1917, flags: DIFlagPrototyped, spFlags: 0)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1482, !1449, !1484, !1482}
!1919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1920, file: !1839, line: 155)
!1920 = !DISubprogram(name: "mbtowc", scope: !1834, file: !1834, line: 933, type: !1921, flags: DIFlagPrototyped, spFlags: 0)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!28, !1449, !1484, !1482}
!1923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1924, file: !1839, line: 157)
!1924 = !DISubprogram(name: "qsort", scope: !1834, file: !1834, line: 838, type: !1925, flags: DIFlagPrototyped, spFlags: 0)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1532, !1482, !1482, !1877}
!1927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1928, file: !1839, line: 160)
!1928 = !DISubprogram(name: "quick_exit", scope: !1834, file: !1834, line: 630, type: !1889, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1930, file: !1839, line: 163)
!1930 = !DISubprogram(name: "rand", scope: !1834, file: !1834, line: 454, type: !1931, flags: DIFlagPrototyped, spFlags: 0)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!28}
!1933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1934, file: !1839, line: 164)
!1934 = !DISubprogram(name: "realloc", scope: !1834, file: !1834, line: 551, type: !1935, flags: DIFlagPrototyped, spFlags: 0)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1532, !1532, !1482}
!1937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1938, file: !1839, line: 165)
!1938 = !DISubprogram(name: "srand", scope: !1834, file: !1834, line: 456, type: !1939, flags: DIFlagPrototyped, spFlags: 0)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1061}
!1941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1942, file: !1839, line: 166)
!1942 = !DISubprogram(name: "strtod", scope: !1834, file: !1834, line: 118, type: !1943, flags: DIFlagPrototyped, spFlags: 0)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1618, !1484, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1948, file: !1839, line: 167)
!1948 = !DISubprogram(name: "strtol", scope: !1834, file: !1834, line: 177, type: !1949, flags: DIFlagPrototyped, spFlags: 0)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!187, !1484, !1945, !28}
!1951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1952, file: !1839, line: 168)
!1952 = !DISubprogram(name: "strtoul", scope: !1834, file: !1834, line: 181, type: !1953, flags: DIFlagPrototyped, spFlags: 0)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!67, !1484, !1945, !28}
!1955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1956, file: !1839, line: 169)
!1956 = !DISubprogram(name: "system", scope: !1834, file: !1834, line: 791, type: !1867, flags: DIFlagPrototyped, spFlags: 0)
!1957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1958, file: !1839, line: 171)
!1958 = !DISubprogram(name: "wcstombs", scope: !1834, file: !1834, line: 945, type: !1959, flags: DIFlagPrototyped, spFlags: 0)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1482, !1554, !1459, !1482}
!1961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1962, file: !1839, line: 172)
!1962 = !DISubprogram(name: "wctomb", scope: !1834, file: !1834, line: 937, type: !1963, flags: DIFlagPrototyped, spFlags: 0)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!28, !58, !1448}
!1965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1966, file: !1839, line: 200)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1834, line: 81, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1968, identifier: "_ZTS7lldiv_t")
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1967, file: !1834, line: 79, baseType: !1689, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1967, file: !1834, line: 80, baseType: !1689, size: 64, offset: 64)
!1971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1972, file: !1839, line: 206)
!1972 = !DISubprogram(name: "_Exit", scope: !1834, file: !1834, line: 636, type: !1889, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1974, file: !1839, line: 210)
!1974 = !DISubprogram(name: "llabs", scope: !1834, file: !1834, line: 852, type: !1975, flags: DIFlagPrototyped, spFlags: 0)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!1689, !1689}
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1978, file: !1839, line: 216)
!1978 = !DISubprogram(name: "lldiv", scope: !1834, file: !1834, line: 866, type: !1979, flags: DIFlagPrototyped, spFlags: 0)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1966, !1689, !1689}
!1981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1982, file: !1839, line: 227)
!1982 = !DISubprogram(name: "atoll", scope: !1834, file: !1834, line: 113, type: !1983, flags: DIFlagPrototyped, spFlags: 0)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1689, !130}
!1985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1986, file: !1839, line: 228)
!1986 = !DISubprogram(name: "strtoll", scope: !1834, file: !1834, line: 201, type: !1987, flags: DIFlagPrototyped, spFlags: 0)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1689, !1484, !1945, !28}
!1989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1990, file: !1839, line: 229)
!1990 = !DISubprogram(name: "strtoull", scope: !1834, file: !1834, line: 206, type: !1991, flags: DIFlagPrototyped, spFlags: 0)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1694, !1484, !1945, !28}
!1993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1994, file: !1839, line: 231)
!1994 = !DISubprogram(name: "strtof", scope: !1834, file: !1834, line: 124, type: !1995, flags: DIFlagPrototyped, spFlags: 0)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1625, !1484, !1945}
!1997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !1998, file: !1839, line: 232)
!1998 = !DISubprogram(name: "strtold", scope: !1834, file: !1834, line: 127, type: !1999, flags: DIFlagPrototyped, spFlags: 0)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!1684, !1484, !1945}
!2001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1966, file: !1839, line: 240)
!2002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1972, file: !1839, line: 242)
!2003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1974, file: !1839, line: 244)
!2004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2005, file: !1839, line: 245)
!2005 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !48, file: !1839, line: 213, type: !1979, flags: DIFlagPrototyped, spFlags: 0)
!2006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1978, file: !1839, line: 246)
!2007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1982, file: !1839, line: 248)
!2008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1994, file: !1839, line: 249)
!2009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1986, file: !1839, line: 250)
!2010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1990, file: !1839, line: 251)
!2011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1998, file: !1839, line: 252)
!2012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2013, file: !2015, line: 98)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2014, line: 7, baseType: !1442)
!2014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2015 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!2016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2017, file: !2015, line: 99)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2018, line: 84, baseType: !2019)
!2018 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !2020, line: 14, baseType: !2021)
!2020 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !2020, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!2022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2023, file: !2015, line: 101)
!2023 = !DISubprogram(name: "clearerr", scope: !2018, file: !2018, line: 786, type: !2024, flags: DIFlagPrototyped, spFlags: 0)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2028, file: !2015, line: 102)
!2028 = !DISubprogram(name: "fclose", scope: !2018, file: !2018, line: 178, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!28, !2026}
!2031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2032, file: !2015, line: 103)
!2032 = !DISubprogram(name: "feof", scope: !2018, file: !2018, line: 788, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2034, file: !2015, line: 104)
!2034 = !DISubprogram(name: "ferror", scope: !2018, file: !2018, line: 790, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2036, file: !2015, line: 105)
!2036 = !DISubprogram(name: "fflush", scope: !2018, file: !2018, line: 230, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2038, file: !2015, line: 106)
!2038 = !DISubprogram(name: "fgetc", scope: !2018, file: !2018, line: 513, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2040, file: !2015, line: 107)
!2040 = !DISubprogram(name: "fgetpos", scope: !2018, file: !2018, line: 760, type: !2041, flags: DIFlagPrototyped, spFlags: 0)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!28, !2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2026)
!2044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2047, file: !2015, line: 108)
!2047 = !DISubprogram(name: "fgets", scope: !2018, file: !2018, line: 592, type: !2048, flags: DIFlagPrototyped, spFlags: 0)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!58, !1554, !28, !2043}
!2050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2051, file: !2015, line: 109)
!2051 = !DISubprogram(name: "fopen", scope: !2018, file: !2018, line: 258, type: !2052, flags: DIFlagPrototyped, spFlags: 0)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!2026, !1484, !1484}
!2054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2055, file: !2015, line: 110)
!2055 = !DISubprogram(name: "fprintf", scope: !2018, file: !2018, line: 350, type: !2056, flags: DIFlagPrototyped, spFlags: 0)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!28, !2043, !1484, null}
!2058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2059, file: !2015, line: 111)
!2059 = !DISubprogram(name: "fputc", scope: !2018, file: !2018, line: 549, type: !2060, flags: DIFlagPrototyped, spFlags: 0)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!28, !28, !2026}
!2062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2063, file: !2015, line: 112)
!2063 = !DISubprogram(name: "fputs", scope: !2018, file: !2018, line: 655, type: !2064, flags: DIFlagPrototyped, spFlags: 0)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!28, !1484, !2043}
!2066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2067, file: !2015, line: 113)
!2067 = !DISubprogram(name: "fread", scope: !2018, file: !2018, line: 675, type: !2068, flags: DIFlagPrototyped, spFlags: 0)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!1482, !2070, !1482, !1482, !2043}
!2070 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1532)
!2071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2072, file: !2015, line: 114)
!2072 = !DISubprogram(name: "freopen", scope: !2018, file: !2018, line: 265, type: !2073, flags: DIFlagPrototyped, spFlags: 0)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!2026, !1484, !1484, !2043}
!2075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2076, file: !2015, line: 115)
!2076 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !2018, file: !2018, line: 434, type: !2056, flags: DIFlagPrototyped, spFlags: 0)
!2077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2078, file: !2015, line: 116)
!2078 = !DISubprogram(name: "fseek", scope: !2018, file: !2018, line: 713, type: !2079, flags: DIFlagPrototyped, spFlags: 0)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!28, !2026, !187, !28}
!2081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2082, file: !2015, line: 117)
!2082 = !DISubprogram(name: "fsetpos", scope: !2018, file: !2018, line: 765, type: !2083, flags: DIFlagPrototyped, spFlags: 0)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!28, !2026, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2088, file: !2015, line: 118)
!2088 = !DISubprogram(name: "ftell", scope: !2018, file: !2018, line: 718, type: !2089, flags: DIFlagPrototyped, spFlags: 0)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!187, !2026}
!2091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2092, file: !2015, line: 119)
!2092 = !DISubprogram(name: "fwrite", scope: !2018, file: !2018, line: 681, type: !2093, flags: DIFlagPrototyped, spFlags: 0)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1482, !2095, !1482, !1482, !2043}
!2095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!2096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2097, file: !2015, line: 120)
!2097 = !DISubprogram(name: "getc", scope: !2018, file: !2018, line: 514, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2099, file: !2015, line: 121)
!2099 = !DISubprogram(name: "getchar", scope: !2018, file: !2018, line: 520, type: !1931, flags: DIFlagPrototyped, spFlags: 0)
!2100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2101, file: !2015, line: 126)
!2101 = !DISubprogram(name: "perror", scope: !2018, file: !2018, line: 804, type: !2102, flags: DIFlagPrototyped, spFlags: 0)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !130}
!2104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2105, file: !2015, line: 127)
!2105 = !DISubprogram(name: "printf", scope: !2018, file: !2018, line: 356, type: !2106, flags: DIFlagPrototyped, spFlags: 0)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!28, !1484, null}
!2108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2109, file: !2015, line: 128)
!2109 = !DISubprogram(name: "putc", scope: !2018, file: !2018, line: 550, type: !2060, flags: DIFlagPrototyped, spFlags: 0)
!2110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2111, file: !2015, line: 129)
!2111 = !DISubprogram(name: "putchar", scope: !2018, file: !2018, line: 556, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!2112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2113, file: !2015, line: 130)
!2113 = !DISubprogram(name: "puts", scope: !2018, file: !2018, line: 661, type: !1867, flags: DIFlagPrototyped, spFlags: 0)
!2114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2115, file: !2015, line: 131)
!2115 = !DISubprogram(name: "remove", scope: !2018, file: !2018, line: 152, type: !1867, flags: DIFlagPrototyped, spFlags: 0)
!2116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2117, file: !2015, line: 132)
!2117 = !DISubprogram(name: "rename", scope: !2018, file: !2018, line: 154, type: !2118, flags: DIFlagPrototyped, spFlags: 0)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!28, !130, !130}
!2120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2121, file: !2015, line: 133)
!2121 = !DISubprogram(name: "rewind", scope: !2018, file: !2018, line: 723, type: !2024, flags: DIFlagPrototyped, spFlags: 0)
!2122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2123, file: !2015, line: 134)
!2123 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !2018, file: !2018, line: 437, type: !2106, flags: DIFlagPrototyped, spFlags: 0)
!2124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2125, file: !2015, line: 135)
!2125 = !DISubprogram(name: "setbuf", scope: !2018, file: !2018, line: 328, type: !2126, flags: DIFlagPrototyped, spFlags: 0)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !2043, !1554}
!2128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2129, file: !2015, line: 136)
!2129 = !DISubprogram(name: "setvbuf", scope: !2018, file: !2018, line: 332, type: !2130, flags: DIFlagPrototyped, spFlags: 0)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!28, !2043, !1554, !28, !1482}
!2132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2133, file: !2015, line: 137)
!2133 = !DISubprogram(name: "sprintf", scope: !2018, file: !2018, line: 358, type: !2134, flags: DIFlagPrototyped, spFlags: 0)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!28, !1554, !1484, null}
!2136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2137, file: !2015, line: 138)
!2137 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !2018, file: !2018, line: 439, type: !2138, flags: DIFlagPrototyped, spFlags: 0)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!28, !1484, !1484, null}
!2140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2141, file: !2015, line: 139)
!2141 = !DISubprogram(name: "tmpfile", scope: !2018, file: !2018, line: 188, type: !2142, flags: DIFlagPrototyped, spFlags: 0)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2026}
!2144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2145, file: !2015, line: 141)
!2145 = !DISubprogram(name: "tmpnam", scope: !2018, file: !2018, line: 205, type: !2146, flags: DIFlagPrototyped, spFlags: 0)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!58, !58}
!2148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2149, file: !2015, line: 143)
!2149 = !DISubprogram(name: "ungetc", scope: !2018, file: !2018, line: 668, type: !2060, flags: DIFlagPrototyped, spFlags: 0)
!2150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2151, file: !2015, line: 144)
!2151 = !DISubprogram(name: "vfprintf", scope: !2018, file: !2018, line: 365, type: !2152, flags: DIFlagPrototyped, spFlags: 0)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!28, !2043, !1484, !1525}
!2154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2155, file: !2015, line: 145)
!2155 = !DISubprogram(name: "vprintf", scope: !2018, file: !2018, line: 371, type: !2156, flags: DIFlagPrototyped, spFlags: 0)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!28, !1484, !1525}
!2158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2159, file: !2015, line: 146)
!2159 = !DISubprogram(name: "vsprintf", scope: !2018, file: !2018, line: 373, type: !2160, flags: DIFlagPrototyped, spFlags: 0)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!28, !1554, !1484, !1525}
!2162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !2163, file: !2015, line: 175)
!2163 = !DISubprogram(name: "snprintf", scope: !2018, file: !2018, line: 378, type: !2164, flags: DIFlagPrototyped, spFlags: 0)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!28, !1554, !1482, !1484, null}
!2166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !2167, file: !2015, line: 176)
!2167 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !2018, file: !2018, line: 479, type: !2152, flags: DIFlagPrototyped, spFlags: 0)
!2168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !2169, file: !2015, line: 177)
!2169 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !2018, file: !2018, line: 484, type: !2156, flags: DIFlagPrototyped, spFlags: 0)
!2170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !2171, file: !2015, line: 178)
!2171 = !DISubprogram(name: "vsnprintf", scope: !2018, file: !2018, line: 382, type: !2172, flags: DIFlagPrototyped, spFlags: 0)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!28, !1554, !1482, !1484, !1525}
!2174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !48, entity: !2175, file: !2015, line: 179)
!2175 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !2018, file: !2018, line: 487, type: !2176, flags: DIFlagPrototyped, spFlags: 0)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!28, !1484, !1484, !1525}
!2178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2163, file: !2015, line: 185)
!2179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2167, file: !2015, line: 186)
!2180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2169, file: !2015, line: 187)
!2181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2171, file: !2015, line: 188)
!2182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2175, file: !2015, line: 189)
!2183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2184, file: !2188, line: 77)
!2184 = !DISubprogram(name: "memchr", scope: !2185, file: !2185, line: 89, type: !2186, flags: DIFlagPrototyped, spFlags: 0)
!2185 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!72, !72, !28, !1482}
!2188 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!2189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2190, file: !2188, line: 78)
!2190 = !DISubprogram(name: "memcmp", scope: !2185, file: !2185, line: 64, type: !2191, flags: DIFlagPrototyped, spFlags: 0)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!28, !72, !72, !1482}
!2193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2194, file: !2188, line: 79)
!2194 = !DISubprogram(name: "memcpy", scope: !2185, file: !2185, line: 43, type: !2195, flags: DIFlagPrototyped, spFlags: 0)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!1532, !2070, !2095, !1482}
!2197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2198, file: !2188, line: 80)
!2198 = !DISubprogram(name: "memmove", scope: !2185, file: !2185, line: 47, type: !2199, flags: DIFlagPrototyped, spFlags: 0)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1532, !1532, !72, !1482}
!2201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2202, file: !2188, line: 81)
!2202 = !DISubprogram(name: "memset", scope: !2185, file: !2185, line: 61, type: !2203, flags: DIFlagPrototyped, spFlags: 0)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!1532, !1532, !28, !1482}
!2205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2206, file: !2188, line: 82)
!2206 = !DISubprogram(name: "strcat", scope: !2185, file: !2185, line: 149, type: !2207, flags: DIFlagPrototyped, spFlags: 0)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!58, !1554, !1484}
!2209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2210, file: !2188, line: 83)
!2210 = !DISubprogram(name: "strcmp", scope: !2185, file: !2185, line: 156, type: !2118, flags: DIFlagPrototyped, spFlags: 0)
!2211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2212, file: !2188, line: 84)
!2212 = !DISubprogram(name: "strcoll", scope: !2185, file: !2185, line: 163, type: !2118, flags: DIFlagPrototyped, spFlags: 0)
!2213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2214, file: !2188, line: 85)
!2214 = !DISubprogram(name: "strcpy", scope: !2185, file: !2185, line: 141, type: !2207, flags: DIFlagPrototyped, spFlags: 0)
!2215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2216, file: !2188, line: 86)
!2216 = !DISubprogram(name: "strcspn", scope: !2185, file: !2185, line: 293, type: !2217, flags: DIFlagPrototyped, spFlags: 0)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1482, !130, !130}
!2219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2220, file: !2188, line: 87)
!2220 = !DISubprogram(name: "strerror", scope: !2185, file: !2185, line: 419, type: !2221, flags: DIFlagPrototyped, spFlags: 0)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!58, !28}
!2223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2224, file: !2188, line: 88)
!2224 = !DISubprogram(name: "strlen", scope: !2185, file: !2185, line: 407, type: !2225, flags: DIFlagPrototyped, spFlags: 0)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!1482, !130}
!2227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2228, file: !2188, line: 89)
!2228 = !DISubprogram(name: "strncat", scope: !2185, file: !2185, line: 152, type: !2229, flags: DIFlagPrototyped, spFlags: 0)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!58, !1554, !1484, !1482}
!2231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2232, file: !2188, line: 90)
!2232 = !DISubprogram(name: "strncmp", scope: !2185, file: !2185, line: 159, type: !2233, flags: DIFlagPrototyped, spFlags: 0)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!28, !130, !130, !1482}
!2235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2236, file: !2188, line: 91)
!2236 = !DISubprogram(name: "strncpy", scope: !2185, file: !2185, line: 144, type: !2229, flags: DIFlagPrototyped, spFlags: 0)
!2237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2238, file: !2188, line: 92)
!2238 = !DISubprogram(name: "strspn", scope: !2185, file: !2185, line: 297, type: !2217, flags: DIFlagPrototyped, spFlags: 0)
!2239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2240, file: !2188, line: 93)
!2240 = !DISubprogram(name: "strtok", scope: !2185, file: !2185, line: 356, type: !2207, flags: DIFlagPrototyped, spFlags: 0)
!2241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2242, file: !2188, line: 94)
!2242 = !DISubprogram(name: "strxfrm", scope: !2185, file: !2185, line: 166, type: !2243, flags: DIFlagPrototyped, spFlags: 0)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1482, !1554, !1484, !1482}
!2245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2246, file: !2188, line: 95)
!2246 = !DISubprogram(name: "strchr", scope: !2185, file: !2185, line: 228, type: !2247, flags: DIFlagPrototyped, spFlags: 0)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!130, !130, !28}
!2249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2250, file: !2188, line: 96)
!2250 = !DISubprogram(name: "strpbrk", scope: !2185, file: !2185, line: 305, type: !2251, flags: DIFlagPrototyped, spFlags: 0)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!130, !130, !130}
!2253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2254, file: !2188, line: 97)
!2254 = !DISubprogram(name: "strrchr", scope: !2185, file: !2185, line: 255, type: !2247, flags: DIFlagPrototyped, spFlags: 0)
!2255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2256, file: !2188, line: 98)
!2256 = !DISubprogram(name: "strstr", scope: !2185, file: !2185, line: 332, type: !2251, flags: DIFlagPrototyped, spFlags: 0)
!2257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2258, file: !2259, line: 68)
!2258 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !2260, file: !2259, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!2259 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!2260 = !DINamespace(name: "__exception_ptr", scope: !2)
!2261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2260, entity: !2262, file: !2259, line: 84)
!2262 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !2259, line: 80, type: !2263, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !2258}
!2265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2266, file: !2269, line: 58)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2267, line: 24, baseType: !2268)
!2267 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!2268 = !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!2269 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!2270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2271, file: !2275, line: 82)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2272, line: 48, baseType: !2273)
!2272 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!2275 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!2276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2277, file: !2275, line: 83)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2278, line: 38, baseType: !67)
!2278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1428, file: !2275, line: 84)
!2280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2281, file: !2275, line: 86)
!2281 = !DISubprogram(name: "iswalnum", scope: !2278, file: !2278, line: 95, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2283, file: !2275, line: 87)
!2283 = !DISubprogram(name: "iswalpha", scope: !2278, file: !2278, line: 101, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2285, file: !2275, line: 89)
!2285 = !DISubprogram(name: "iswblank", scope: !2278, file: !2278, line: 146, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2287, file: !2275, line: 91)
!2287 = !DISubprogram(name: "iswcntrl", scope: !2278, file: !2278, line: 104, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2289, file: !2275, line: 92)
!2289 = !DISubprogram(name: "iswctype", scope: !2278, file: !2278, line: 159, type: !2290, flags: DIFlagPrototyped, spFlags: 0)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!28, !1428, !2277}
!2292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2293, file: !2275, line: 93)
!2293 = !DISubprogram(name: "iswdigit", scope: !2278, file: !2278, line: 108, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2295, file: !2275, line: 94)
!2295 = !DISubprogram(name: "iswgraph", scope: !2278, file: !2278, line: 112, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2297, file: !2275, line: 95)
!2297 = !DISubprogram(name: "iswlower", scope: !2278, file: !2278, line: 117, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2299, file: !2275, line: 96)
!2299 = !DISubprogram(name: "iswprint", scope: !2278, file: !2278, line: 120, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2301, file: !2275, line: 97)
!2301 = !DISubprogram(name: "iswpunct", scope: !2278, file: !2278, line: 125, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2303, file: !2275, line: 98)
!2303 = !DISubprogram(name: "iswspace", scope: !2278, file: !2278, line: 130, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2305, file: !2275, line: 99)
!2305 = !DISubprogram(name: "iswupper", scope: !2278, file: !2278, line: 135, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2307, file: !2275, line: 100)
!2307 = !DISubprogram(name: "iswxdigit", scope: !2278, file: !2278, line: 140, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!2308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2309, file: !2275, line: 101)
!2309 = !DISubprogram(name: "towctrans", scope: !2272, file: !2272, line: 55, type: !2310, flags: DIFlagPrototyped, spFlags: 0)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!1428, !1428, !2271}
!2312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2313, file: !2275, line: 102)
!2313 = !DISubprogram(name: "towlower", scope: !2278, file: !2278, line: 166, type: !2314, flags: DIFlagPrototyped, spFlags: 0)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!1428, !1428}
!2316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2317, file: !2275, line: 103)
!2317 = !DISubprogram(name: "towupper", scope: !2278, file: !2278, line: 169, type: !2314, flags: DIFlagPrototyped, spFlags: 0)
!2318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2319, file: !2275, line: 104)
!2319 = !DISubprogram(name: "wctrans", scope: !2272, file: !2272, line: 52, type: !2320, flags: DIFlagPrototyped, spFlags: 0)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2271, !130}
!2322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2323, file: !2275, line: 105)
!2323 = !DISubprogram(name: "wctype", scope: !2278, file: !2278, line: 155, type: !2324, flags: DIFlagPrototyped, spFlags: 0)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2277, !130}
!2326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2327, file: !2330, line: 60)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2328, line: 7, baseType: !2329)
!2328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1709, line: 156, baseType: !187)
!2330 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ctime", directory: "")
!2331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2332, file: !2330, line: 61)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2333, line: 10, baseType: !2334)
!2333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1709, line: 160, baseType: !187)
!2335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1578, file: !2330, line: 62)
!2336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2337, file: !2330, line: 64)
!2337 = !DISubprogram(name: "clock", scope: !2338, file: !2338, line: 72, type: !2339, flags: DIFlagPrototyped, spFlags: 0)
!2338 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2327}
!2341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2342, file: !2330, line: 65)
!2342 = !DISubprogram(name: "difftime", scope: !2338, file: !2338, line: 79, type: !2343, flags: DIFlagPrototyped, spFlags: 0)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!1618, !2332, !2332}
!2345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2346, file: !2330, line: 66)
!2346 = !DISubprogram(name: "mktime", scope: !2338, file: !2338, line: 83, type: !2347, flags: DIFlagPrototyped, spFlags: 0)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2332, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!2350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2351, file: !2330, line: 67)
!2351 = !DISubprogram(name: "time", scope: !2338, file: !2338, line: 76, type: !2352, flags: DIFlagPrototyped, spFlags: 0)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2332, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2356, file: !2330, line: 68)
!2356 = !DISubprogram(name: "asctime", scope: !2338, file: !2338, line: 179, type: !2357, flags: DIFlagPrototyped, spFlags: 0)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!58, !1576}
!2359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2360, file: !2330, line: 69)
!2360 = !DISubprogram(name: "ctime", scope: !2338, file: !2338, line: 183, type: !2361, flags: DIFlagPrototyped, spFlags: 0)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!58, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2366, file: !2330, line: 70)
!2366 = !DISubprogram(name: "gmtime", scope: !2338, file: !2338, line: 132, type: !2367, flags: DIFlagPrototyped, spFlags: 0)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2349, !2363}
!2369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2370, file: !2330, line: 71)
!2370 = !DISubprogram(name: "localtime", scope: !2338, file: !2338, line: 136, type: !2367, flags: DIFlagPrototyped, spFlags: 0)
!2371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2372, file: !2330, line: 72)
!2372 = !DISubprogram(name: "strftime", scope: !2338, file: !2338, line: 100, type: !2373, flags: DIFlagPrototyped, spFlags: 0)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!1482, !1554, !1482, !1484, !1575}
!2375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2376, file: !2330, line: 79)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2377, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !2378, identifier: "_ZTS8timespec")
!2377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2376, file: !2377, line: 16, baseType: !2334, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2376, file: !2377, line: 21, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1709, line: 197, baseType: !187)
!2382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2383, file: !2330, line: 80)
!2383 = !DISubprogram(name: "timespec_get", scope: !2338, file: !2338, line: 371, type: !2384, flags: DIFlagPrototyped, spFlags: 0)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!28, !2386, !28}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !2388, line: 95)
!2388 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "8d23d9a03c9ca5773e092d05679e2362")
!2389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2390, file: !2388, line: 96)
!2390 = !DIGlobalVariable(name: "__default_lock_policy", linkageName: "_ZN9__gnu_cxxL21__default_lock_policyE", scope: !48, file: !1060, line: 53, type: !2391, isLocal: true, isDefinition: false)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!2392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2393, file: !2396, line: 58)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "imaxdiv_t", file: !2394, line: 275, baseType: !2395)
!2394 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!2395 = !DICompositeType(tag: DW_TAG_structure_type, file: !2394, line: 271, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9imaxdiv_t")
!2396 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cinttypes", directory: "")
!2397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2398, file: !2396, line: 61)
!2398 = !DISubprogram(name: "imaxabs", scope: !2394, file: !2394, line: 290, type: !2399, flags: DIFlagPrototyped, spFlags: 0)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!1744, !1744}
!2401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2402, file: !2396, line: 62)
!2402 = !DISubprogram(name: "imaxdiv", scope: !2394, file: !2394, line: 293, type: !2403, flags: DIFlagPrototyped, spFlags: 0)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2393, !1744, !1744}
!2405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2406, file: !2396, line: 68)
!2406 = !DISubprogram(name: "strtoimax", scope: !2394, file: !2394, line: 297, type: !2407, flags: DIFlagPrototyped, spFlags: 0)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!1744, !1484, !1945, !28}
!2409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2410, file: !2396, line: 69)
!2410 = !DISubprogram(name: "strtoumax", scope: !2394, file: !2394, line: 301, type: !2411, flags: DIFlagPrototyped, spFlags: 0)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!1783, !1484, !1945, !28}
!2413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2414, file: !2396, line: 72)
!2414 = !DISubprogram(name: "wcstoimax", scope: !2394, file: !2394, line: 305, type: !2415, flags: DIFlagPrototyped, spFlags: 0)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!1744, !1459, !1619, !28}
!2417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2418, file: !2396, line: 73)
!2418 = !DISubprogram(name: "wcstoumax", scope: !2394, file: !2394, line: 310, type: !2419, flags: DIFlagPrototyped, spFlags: 0)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!1783, !1459, !1619, !28}
!2421 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2422, entity: !2423, file: !2425, line: 3305)
!2422 = !DINamespace(name: "chrono", scope: !2)
!2423 = !DINamespace(name: "chrono_literals", scope: !2424, exportSymbols: true)
!2424 = !DINamespace(name: "literals", scope: !2, exportSymbols: true)
!2425 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/chrono", directory: "")
!2426 = !{i32 7, !"Dwarf Version", i32 5}
!2427 = !{i32 2, !"Debug Info Version", i32 3}
!2428 = !{i32 1, !"wchar_size", i32 4}
!2429 = !{i32 8, !"PIC Level", i32 2}
!2430 = !{i32 7, !"PIE Level", i32 2}
!2431 = !{i32 7, !"uwtable", i32 2}
!2432 = !{i32 7, !"frame-pointer", i32 2}
!2433 = !{!"clang version 16.0.0"}
!2434 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1529, file: !1529, type: !1848, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!2435 = !DILocation(line: 74, column: 25, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2434, file: !3, discriminator: 0)
!2437 = !DILocation(line: 0, scope: !2434)
!2438 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1529, file: !1529, type: !1848, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!2439 = !DILocation(line: 119, column: 7, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2438, file: !10, discriminator: 0)
!2441 = distinct !DISubprogram(name: "_end_marker", linkageName: "_ZN3Log11_end_markerC2Ev", scope: !12, file: !10, line: 116, type: !15, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !14, retainedNodes: !172)
!2442 = !DILocalVariable(name: "this", arg: 1, scope: !2441, type: !2443, flags: DIFlagArtificial | DIFlagObjectPointer)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2444 = !DILocation(line: 0, scope: !2441)
!2445 = !DILocation(line: 118, column: 9, scope: !2441)
!2446 = !DILocalVariable(name: "this", arg: 1, scope: !20, type: !2447, flags: DIFlagArtificial | DIFlagObjectPointer)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!2448 = !DILocation(line: 0, scope: !20)
!2449 = !DILocalVariable(name: "uri", arg: 2, scope: !20, file: !21, line: 19, type: !1049)
!2450 = !DILocation(line: 19, column: 45, scope: !20)
!2451 = !DILocation(line: 21, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !20, file: !21, line: 21, column: 9)
!2453 = !DILocation(line: 21, column: 15, scope: !2452)
!2454 = !DILocation(line: 21, column: 9, scope: !20)
!2455 = !DILocation(line: 23, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !21, line: 22, column: 5)
!2457 = !{!"branch_weights", i32 1, i32 1048575}
!2458 = !DILocation(line: 23, column: 34, scope: !2456)
!2459 = !DILocalVariable(name: "queryParams", scope: !2456, file: !21, line: 25, type: !1030)
!2460 = !DILocation(line: 25, column: 36, scope: !2456)
!2461 = !DILocation(line: 25, column: 50, scope: !2456)
!2462 = !DILocation(line: 25, column: 54, scope: !2456)
!2463 = !DILocalVariable(name: "__range2", scope: !2464, type: !2465, flags: DIFlagArtificial)
!2464 = distinct !DILexicalBlock(scope: !2456, file: !21, line: 26, column: 9)
!2465 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1030, size: 64)
!2466 = !DILocation(line: 0, scope: !2464)
!2467 = !DILocation(line: 26, column: 27, scope: !2464)
!2468 = !DILocalVariable(name: "__begin2", scope: !2464, type: !1187, flags: DIFlagArtificial)
!2469 = !DILocation(line: 26, column: 25, scope: !2464)
!2470 = !DILocalVariable(name: "__end2", scope: !2464, type: !1187, flags: DIFlagArtificial)
!2471 = !DILocalVariable(name: "param", scope: !2472, file: !21, line: 26, type: !1230)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !21, line: 26, column: 9)
!2473 = !DILocation(line: 26, column: 20, scope: !2472)
!2474 = !DILocation(line: 26, column: 25, scope: !2472)
!2475 = !DILocation(line: 28, column: 17, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !21, line: 28, column: 17)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !21, line: 27, column: 9)
!2478 = !DILocation(line: 28, column: 23, scope: !2476)
!2479 = !DILocation(line: 28, column: 29, scope: !2476)
!2480 = !DILocation(line: 28, column: 17, scope: !2477)
!2481 = !DILocation(line: 30, column: 32, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !21, line: 29, column: 13)
!2483 = !DILocation(line: 30, column: 17, scope: !2482)
!2484 = !DILocation(line: 30, column: 23, scope: !2482)
!2485 = !DILocation(line: 30, column: 30, scope: !2482)
!2486 = !DILocation(line: 31, column: 17, scope: !2482)
!2487 = !DILocation(line: 31, column: 21, scope: !2482)
!2488 = !DILocation(line: 32, column: 17, scope: !2482)
!2489 = !DILocation(line: 39, column: 1, scope: !2456)
!2490 = !DILocation(line: 39, column: 1, scope: !2482)
!2491 = !DILocation(line: 38, column: 5, scope: !2452)
!2492 = !DILocation(line: 26, column: 9, scope: !2464)
!2493 = distinct !{!2493, !2492, !2494}
!2494 = !DILocation(line: 34, column: 9, scope: !2464)
!2495 = !DILocation(line: 37, column: 9, scope: !2456)
!2496 = !DILocation(line: 37, column: 36, scope: !2456)
!2497 = !DILocation(line: 37, column: 13, scope: !2456)
!2498 = !DILocation(line: 38, column: 5, scope: !2456)
!2499 = !DILocation(line: 39, column: 1, scope: !20)
!2500 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_", scope: !37, file: !42, line: 533, type: !2501, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !2504, declaration: !2503, retainedNodes: !172)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !397, !130, !91}
!2503 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !37, file: !42, line: 533, type: !2501, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2504)
!2504 = !{!2505}
!2505 = !DITemplateTypeParameter(type: !62, defaulted: true)
!2506 = !DILocalVariable(name: "this", arg: 1, scope: !2500, type: !2507, flags: DIFlagArtificial | DIFlagObjectPointer)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2508 = !DILocation(line: 0, scope: !2500)
!2509 = !DILocalVariable(name: "__s", arg: 2, scope: !2500, file: !42, line: 533, type: !130)
!2510 = !DILocation(line: 533, column: 34, scope: !2500)
!2511 = !DILocalVariable(name: "__a", arg: 3, scope: !2500, file: !42, line: 533, type: !91)
!2512 = !DILocation(line: 533, column: 53, scope: !2500)
!2513 = !DILocation(line: 534, column: 9, scope: !2500)
!2514 = !DILocation(line: 534, column: 21, scope: !2500)
!2515 = !DILocation(line: 534, column: 38, scope: !2500)
!2516 = !DILocalVariable(name: "__end", scope: !2517, file: !42, line: 536, type: !130)
!2517 = distinct !DILexicalBlock(scope: !2500, file: !42, line: 535, column: 7)
!2518 = !DILocation(line: 536, column: 16, scope: !2517)
!2519 = !DILocation(line: 536, column: 24, scope: !2517)
!2520 = !DILocation(line: 536, column: 30, scope: !2517)
!2521 = !DILocation(line: 536, column: 56, scope: !2517)
!2522 = !DILocation(line: 536, column: 36, scope: !2517)
!2523 = !DILocation(line: 536, column: 34, scope: !2517)
!2524 = !DILocation(line: 539, column: 15, scope: !2517)
!2525 = !DILocation(line: 539, column: 20, scope: !2517)
!2526 = !DILocation(line: 539, column: 2, scope: !2517)
!2527 = !DILocation(line: 540, column: 7, scope: !2500)
!2528 = !DILocation(line: 540, column: 7, scope: !2517)
!2529 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv", scope: !1034, file: !1035, line: 811, type: !2530, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2533, retainedNodes: !172)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!1187, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2533 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv", scope: !1034, file: !1035, line: 811, type: !2530, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2534 = !DILocalVariable(name: "this", arg: 1, scope: !2529, type: !2535, flags: DIFlagArtificial | DIFlagObjectPointer)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 812, column: 31, scope: !2529)
!2538 = !DILocation(line: 812, column: 39, scope: !2529)
!2539 = !DILocation(line: 812, column: 16, scope: !2529)
!2540 = !DILocation(line: 812, column: 9, scope: !2529)
!2541 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv", scope: !1034, file: !1035, line: 829, type: !2530, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2542, retainedNodes: !172)
!2542 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv", scope: !1034, file: !1035, line: 829, type: !2530, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2543 = !DILocalVariable(name: "this", arg: 1, scope: !2541, type: !2535, flags: DIFlagArtificial | DIFlagObjectPointer)
!2544 = !DILocation(line: 0, scope: !2541)
!2545 = !DILocation(line: 830, column: 31, scope: !2541)
!2546 = !DILocation(line: 830, column: 39, scope: !2541)
!2547 = !DILocation(line: 830, column: 16, scope: !2541)
!2548 = !DILocation(line: 830, column: 9, scope: !2541)
!2549 = distinct !DISubprogram(name: "operator!=<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > > >", linkageName: "_ZN9__gnu_cxxneIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESI_", scope: !48, file: !167, line: 1179, type: !2550, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !1305, retainedNodes: !172)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!100, !2552, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1274, size: 64)
!2553 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2549, file: !167, line: 1179, type: !2552)
!2554 = !DILocation(line: 1179, column: 64, scope: !2549)
!2555 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2549, file: !167, line: 1180, type: !2552)
!2556 = !DILocation(line: 1180, column: 57, scope: !2549)
!2557 = !DILocation(line: 1182, column: 14, scope: !2549)
!2558 = !DILocation(line: 1182, column: 20, scope: !2549)
!2559 = !DILocation(line: 1182, column: 30, scope: !2549)
!2560 = !DILocation(line: 1182, column: 36, scope: !2549)
!2561 = !DILocation(line: 1182, column: 27, scope: !2549)
!2562 = !DILocation(line: 1182, column: 7, scope: !2549)
!2563 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv", scope: !1188, file: !167, line: 1042, type: !1266, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1265, retainedNodes: !172)
!2564 = !DILocalVariable(name: "this", arg: 1, scope: !2563, type: !2565, flags: DIFlagArtificial | DIFlagObjectPointer)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!2566 = !DILocation(line: 0, scope: !2563)
!2567 = !DILocation(line: 1043, column: 17, scope: !2563)
!2568 = !DILocation(line: 1043, column: 9, scope: !2563)
!2569 = distinct !DISubprogram(name: "operator==<char>", linkageName: "_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_", scope: !2, file: !42, line: 6234, type: !2570, scopeLine: 6236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !393, retainedNodes: !172)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!2572, !594, !594}
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !2574, file: !2573, line: 50, baseType: !100)
!2573 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, bool>", scope: !48, file: !2573, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !2575, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EbEE")
!2575 = !{!2576, !2577}
!2576 = !DITemplateValueParameter(type: !100, value: i1 true)
!2577 = !DITemplateTypeParameter(type: !100)
!2578 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2569, file: !42, line: 6234, type: !594)
!2579 = !DILocation(line: 6234, column: 44, scope: !2569)
!2580 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2569, file: !42, line: 6235, type: !594)
!2581 = !DILocation(line: 6235, column: 37, scope: !2569)
!2582 = !DILocation(line: 6236, column: 15, scope: !2569)
!2583 = !DILocation(line: 6236, column: 21, scope: !2569)
!2584 = !DILocation(line: 6236, column: 31, scope: !2569)
!2585 = !DILocation(line: 6236, column: 37, scope: !2569)
!2586 = !DILocation(line: 6236, column: 28, scope: !2569)
!2587 = !DILocation(line: 6237, column: 8, scope: !2569)
!2588 = !DILocation(line: 6237, column: 46, scope: !2569)
!2589 = !DILocation(line: 6237, column: 52, scope: !2569)
!2590 = !DILocation(line: 6237, column: 60, scope: !2569)
!2591 = !DILocation(line: 6237, column: 66, scope: !2569)
!2592 = !DILocation(line: 6238, column: 11, scope: !2569)
!2593 = !DILocation(line: 6238, column: 17, scope: !2569)
!2594 = !DILocation(line: 6237, column: 12, scope: !2569)
!2595 = !DILocation(line: 6237, column: 11, scope: !2569)
!2596 = !DILocation(line: 0, scope: !2569)
!2597 = !DILocation(line: 6236, column: 7, scope: !2569)
!2598 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv", scope: !1188, file: !167, line: 1052, type: !1281, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1280, retainedNodes: !172)
!2599 = !DILocalVariable(name: "this", arg: 1, scope: !2598, type: !2600, flags: DIFlagArtificial | DIFlagObjectPointer)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!2601 = !DILocation(line: 0, scope: !2598)
!2602 = !DILocation(line: 1054, column: 4, scope: !2598)
!2603 = !DILocation(line: 1054, column: 2, scope: !2598)
!2604 = !DILocation(line: 1055, column: 2, scope: !2598)
!2605 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev", scope: !1034, file: !1035, line: 678, type: !2606, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2608, retainedNodes: !172)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2532}
!2608 = !DISubprogram(name: "~vector", scope: !1034, file: !1035, line: 678, type: !2606, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2609 = !DILocalVariable(name: "this", arg: 1, scope: !2605, type: !2535, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DILocation(line: 0, scope: !2605)
!2611 = !DILocation(line: 680, column: 22, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !1035, line: 679, column: 7)
!2613 = !DILocation(line: 680, column: 30, scope: !2612)
!2614 = !DILocation(line: 680, column: 46, scope: !2612)
!2615 = !DILocation(line: 680, column: 54, scope: !2612)
!2616 = !DILocation(line: 681, column: 9, scope: !2612)
!2617 = !DILocation(line: 680, column: 2, scope: !2612)
!2618 = !DILocation(line: 683, column: 7, scope: !2612)
!2619 = !DILocation(line: 683, column: 7, scope: !2605)
!2620 = distinct !DISubprogram(name: "authorizeRequest", linkageName: "_ZNK13Authorization16authorizeRequestERN4Poco3Net11HTTPRequestE", scope: !22, file: !21, line: 41, type: !1051, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1050, retainedNodes: !172)
!2621 = !DILocalVariable(name: "this", arg: 1, scope: !2620, type: !2447, flags: DIFlagArtificial | DIFlagObjectPointer)
!2622 = !DILocation(line: 0, scope: !2620)
!2623 = !DILocalVariable(name: "request", arg: 2, scope: !2620, file: !21, line: 41, type: !1053)
!2624 = !DILocation(line: 41, column: 62, scope: !2620)
!2625 = !DILocation(line: 43, column: 13, scope: !2620)
!2626 = !DILocation(line: 43, column: 5, scope: !2620)
!2627 = !DILocation(line: 46, column: 13, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2620, file: !21, line: 44, column: 5)
!2629 = !DILocation(line: 46, column: 25, scope: !2628)
!2630 = !DILocation(line: 46, column: 54, scope: !2628)
!2631 = !DILocation(line: 46, column: 52, scope: !2628)
!2632 = !DILocation(line: 46, column: 21, scope: !2628)
!2633 = !DILocation(line: 47, column: 13, scope: !2628)
!2634 = !DILocation(line: 87, column: 1, scope: !2628)
!2635 = !DILocalVariable(name: "tokens", scope: !2636, file: !21, line: 55, type: !2637)
!2636 = distinct !DILexicalBlock(scope: !2628, file: !21, line: 49, column: 9)
!2637 = !DICompositeType(tag: DW_TAG_class_type, name: "StringVector", file: !1123, line: 35, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12StringVector")
!2638 = !DILocation(line: 55, column: 26, scope: !2636)
!2639 = !DILocation(line: 55, column: 53, scope: !2636)
!2640 = !DILocation(line: 55, column: 33, scope: !2636)
!2641 = !DILocalVariable(name: "it", scope: !2642, file: !21, line: 56, type: !1116)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !21, line: 56, column: 13)
!2643 = !DILocation(line: 56, column: 23, scope: !2642)
!2644 = !DILocation(line: 56, column: 35, scope: !2642)
!2645 = !DILocation(line: 56, column: 18, scope: !2642)
!2646 = !DILocation(line: 56, column: 57, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !21, line: 56, column: 13)
!2648 = !DILocation(line: 56, column: 47, scope: !2647)
!2649 = !DILocation(line: 56, column: 13, scope: !2642)
!2650 = !DILocalVariable(name: "token", scope: !2651, file: !21, line: 58, type: !35)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !21, line: 57, column: 13)
!2652 = !DILocation(line: 58, column: 29, scope: !2651)
!2653 = !DILocation(line: 58, column: 53, scope: !2651)
!2654 = !DILocation(line: 58, column: 44, scope: !2651)
!2655 = !DILocalVariable(name: "separator", scope: !2651, file: !21, line: 60, type: !65)
!2656 = !DILocation(line: 60, column: 29, scope: !2651)
!2657 = !DILocation(line: 60, column: 47, scope: !2651)
!2658 = !DILocation(line: 61, column: 21, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2651, file: !21, line: 61, column: 21)
!2660 = !DILocation(line: 61, column: 31, scope: !2659)
!2661 = !DILocation(line: 61, column: 21, scope: !2651)
!2662 = !DILocalVariable(name: "headerStart", scope: !2663, file: !21, line: 63, type: !65)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !21, line: 62, column: 17)
!2664 = !DILocation(line: 63, column: 33, scope: !2663)
!2665 = !DILocation(line: 63, column: 53, scope: !2663)
!2666 = !DILocalVariable(name: "headerEnd", scope: !2663, file: !21, line: 64, type: !65)
!2667 = !DILocation(line: 64, column: 33, scope: !2663)
!2668 = !DILocation(line: 64, column: 73, scope: !2663)
!2669 = !DILocation(line: 64, column: 83, scope: !2663)
!2670 = !DILocation(line: 64, column: 51, scope: !2663)
!2671 = !DILocalVariable(name: "valueStart", scope: !2663, file: !21, line: 66, type: !65)
!2672 = !DILocation(line: 66, column: 33, scope: !2663)
!2673 = !DILocation(line: 66, column: 75, scope: !2663)
!2674 = !DILocation(line: 66, column: 85, scope: !2663)
!2675 = !DILocation(line: 66, column: 52, scope: !2663)
!2676 = !DILocalVariable(name: "valueEnd", scope: !2663, file: !21, line: 67, type: !65)
!2677 = !DILocation(line: 67, column: 33, scope: !2663)
!2678 = !DILocation(line: 67, column: 50, scope: !2663)
!2679 = !DILocation(line: 70, column: 25, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2663, file: !21, line: 70, column: 25)
!2681 = !DILocation(line: 70, column: 37, scope: !2680)
!2682 = !DILocation(line: 70, column: 58, scope: !2680)
!2683 = !DILocation(line: 70, column: 61, scope: !2680)
!2684 = !DILocation(line: 70, column: 71, scope: !2680)
!2685 = !DILocation(line: 70, column: 92, scope: !2680)
!2686 = !DILocation(line: 71, column: 29, scope: !2680)
!2687 = !DILocation(line: 71, column: 40, scope: !2680)
!2688 = !DILocation(line: 71, column: 61, scope: !2680)
!2689 = !DILocation(line: 71, column: 64, scope: !2680)
!2690 = !DILocation(line: 71, column: 73, scope: !2680)
!2691 = !DILocation(line: 70, column: 25, scope: !2663)
!2692 = !DILocalVariable(name: "headerLength", scope: !2693, file: !21, line: 73, type: !65)
!2693 = distinct !DILexicalBlock(scope: !2680, file: !21, line: 72, column: 21)
!2694 = !DILocation(line: 73, column: 37, scope: !2693)
!2695 = !DILocation(line: 73, column: 52, scope: !2693)
!2696 = !DILocation(line: 73, column: 64, scope: !2693)
!2697 = !DILocation(line: 73, column: 62, scope: !2693)
!2698 = !DILocation(line: 73, column: 76, scope: !2693)
!2699 = !DILocalVariable(name: "valueLength", scope: !2693, file: !21, line: 74, type: !65)
!2700 = !DILocation(line: 74, column: 37, scope: !2693)
!2701 = !DILocation(line: 74, column: 51, scope: !2693)
!2702 = !DILocation(line: 74, column: 62, scope: !2693)
!2703 = !DILocation(line: 74, column: 60, scope: !2693)
!2704 = !DILocation(line: 74, column: 73, scope: !2693)
!2705 = !DILocation(line: 76, column: 25, scope: !2693)
!2706 = !DILocation(line: 76, column: 50, scope: !2693)
!2707 = !DILocation(line: 76, column: 63, scope: !2693)
!2708 = !DILocation(line: 76, column: 43, scope: !2693)
!2709 = !DILocation(line: 76, column: 91, scope: !2693)
!2710 = !DILocation(line: 76, column: 103, scope: !2693)
!2711 = !DILocation(line: 76, column: 84, scope: !2693)
!2712 = !DILocation(line: 76, column: 33, scope: !2693)
!2713 = !DILocation(line: 77, column: 21, scope: !2693)
!2714 = !DILocation(line: 87, column: 1, scope: !2642)
!2715 = !DILocation(line: 87, column: 1, scope: !2693)
!2716 = !DILocation(line: 78, column: 17, scope: !2663)
!2717 = !DILocation(line: 79, column: 13, scope: !2647)
!2718 = !DILocation(line: 79, column: 13, scope: !2651)
!2719 = !DILocation(line: 56, column: 64, scope: !2647)
!2720 = !DILocation(line: 56, column: 13, scope: !2647)
!2721 = distinct !{!2721, !2649, !2722, !2723}
!2722 = !DILocation(line: 79, column: 13, scope: !2642)
!2723 = !{!"llvm.loop.mustprogress"}
!2724 = !DILocation(line: 81, column: 9, scope: !2628)
!2725 = !DILocation(line: 83, column: 13, scope: !2628)
!2726 = !DILocalVariable(name: "log_", scope: !2727, file: !21, line: 83, type: !2728)
!2727 = distinct !DILexicalBlock(scope: !2628, file: !21, line: 83, column: 13)
!2728 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_class_type, name: "Logger", scope: !1033, file: !2730, line: 38, size: 576, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!2730 = !DIFile(filename: "/usr/include/Poco/Logger.h", directory: "", checksumkind: CSK_MD5, checksum: "7838b915a6ea410ec2db8909269b1ff6")
!2731 = !DILocation(line: 83, column: 13, scope: !2727)
!2732 = !DILocation(line: 83, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2727, file: !21, line: 83, column: 13)
!2734 = !DILocalVariable(name: "b_", scope: !2735, file: !21, line: 83, type: !2736)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !21, line: 83, column: 13)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8192, elements: !2737)
!2737 = !{!2738}
!2738 = !DISubrange(count: 1024)
!2739 = !DILocation(line: 83, column: 13, scope: !2735)
!2740 = !DILocalVariable(name: "oss_", scope: !2735, file: !21, line: 83, type: !2741)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostringstream", scope: !2, file: !2742, line: 153, baseType: !2743)
!2742 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!2743 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >", scope: !39, file: !2744, line: 293, size: 3008, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!2744 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/sstream.tcc", directory: "")
!2745 = !DILocation(line: 83, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !21, line: 83, column: 13)
!2747 = distinct !DILexicalBlock(scope: !2735, file: !21, line: 83, column: 13)
!2748 = !DILocation(line: 83, column: 13, scope: !2747)
!2749 = !DILocation(line: 87, column: 1, scope: !2735)
!2750 = !DILocation(line: 85, column: 13, scope: !2628)
!2751 = !DILocation(line: 87, column: 1, scope: !2620)
!2752 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_", scope: !2, file: !38, line: 1169, type: !2753, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !2755, retainedNodes: !172)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!37, !130, !594}
!2755 = !{!341, !2756, !87}
!2756 = !DITemplateTypeParameter(name: "_Traits", type: !343)
!2757 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2752, file: !38, line: 1169, type: !130)
!2758 = !DILocation(line: 1169, column: 29, scope: !2752)
!2759 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2752, file: !38, line: 1170, type: !594)
!2760 = !DILocation(line: 1170, column: 53, scope: !2752)
!2761 = !DILocalVariable(name: "__len", scope: !2752, file: !38, line: 1178, type: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2763)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_type", scope: !2752, file: !38, line: 1174, baseType: !44)
!2764 = !DILocation(line: 1178, column: 25, scope: !2752)
!2765 = !DILocation(line: 1178, column: 49, scope: !2752)
!2766 = !DILocation(line: 1178, column: 33, scope: !2752)
!2767 = !DILocation(line: 1179, column: 7, scope: !2752)
!2768 = !DILocalVariable(name: "__str", scope: !2752, file: !38, line: 1179, type: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__string_type", scope: !2752, file: !38, line: 1173, baseType: !37)
!2770 = !DILocation(line: 1179, column: 21, scope: !2752)
!2771 = !DILocation(line: 1180, column: 11, scope: !2752)
!2772 = !DILocation(line: 1180, column: 17, scope: !2752)
!2773 = !DILocation(line: 1179, column: 27, scope: !2752)
!2774 = !DILocation(line: 1181, column: 21, scope: !2752)
!2775 = !DILocation(line: 1181, column: 29, scope: !2752)
!2776 = !DILocation(line: 1181, column: 35, scope: !2752)
!2777 = !DILocation(line: 1181, column: 27, scope: !2752)
!2778 = !DILocation(line: 1181, column: 13, scope: !2752)
!2779 = !DILocation(line: 1182, column: 20, scope: !2752)
!2780 = !DILocation(line: 1182, column: 27, scope: !2752)
!2781 = !DILocation(line: 1182, column: 13, scope: !2752)
!2782 = !DILocation(line: 1183, column: 20, scope: !2752)
!2783 = !DILocation(line: 1183, column: 13, scope: !2752)
!2784 = !DILocation(line: 1184, column: 7, scope: !2752)
!2785 = !DILocation(line: 1185, column: 5, scope: !2752)
!2786 = distinct !DISubprogram(name: "begin", linkageName: "_ZN12StringVector5beginEv", scope: !2637, file: !1123, line: 68, type: !2787, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2790, retainedNodes: !172)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!1116, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2790 = !DISubprogram(name: "begin", linkageName: "_ZN12StringVector5beginEv", scope: !2637, file: !1123, line: 68, type: !2787, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2791 = !DILocalVariable(name: "this", arg: 1, scope: !2786, type: !2792, flags: DIFlagArtificial | DIFlagObjectPointer)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 68, column: 57, scope: !2786)
!2795 = !DILocation(line: 68, column: 65, scope: !2786)
!2796 = !DILocation(line: 68, column: 50, scope: !2786)
!2797 = distinct !DISubprogram(name: "operator!=<StringToken *, std::vector<StringToken, std::allocator<StringToken> > >", linkageName: "_ZN9__gnu_cxxneIP11StringTokenSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_", scope: !48, file: !167, line: 1179, type: !2798, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !1184, retainedNodes: !172)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!100, !2800, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1153, size: 64)
!2801 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2797, file: !167, line: 1179, type: !2800)
!2802 = !DILocation(line: 1179, column: 64, scope: !2797)
!2803 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2797, file: !167, line: 1180, type: !2800)
!2804 = !DILocation(line: 1180, column: 57, scope: !2797)
!2805 = !DILocation(line: 1182, column: 14, scope: !2797)
!2806 = !DILocation(line: 1182, column: 20, scope: !2797)
!2807 = !DILocation(line: 1182, column: 30, scope: !2797)
!2808 = !DILocation(line: 1182, column: 36, scope: !2797)
!2809 = !DILocation(line: 1182, column: 27, scope: !2797)
!2810 = !DILocation(line: 1182, column: 7, scope: !2797)
!2811 = distinct !DISubprogram(name: "end", linkageName: "_ZN12StringVector3endEv", scope: !2637, file: !1123, line: 72, type: !2787, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2812, retainedNodes: !172)
!2812 = !DISubprogram(name: "end", linkageName: "_ZN12StringVector3endEv", scope: !2637, file: !1123, line: 72, type: !2787, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2813 = !DILocalVariable(name: "this", arg: 1, scope: !2811, type: !2792, flags: DIFlagArtificial | DIFlagObjectPointer)
!2814 = !DILocation(line: 0, scope: !2811)
!2815 = !DILocation(line: 72, column: 55, scope: !2811)
!2816 = !DILocation(line: 72, column: 63, scope: !2811)
!2817 = !DILocation(line: 72, column: 48, scope: !2811)
!2818 = distinct !DISubprogram(name: "getParam", linkageName: "_ZNK12StringVector8getParamB5cxx11ERK11StringToken", scope: !2637, file: !1123, line: 86, type: !2819, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2825, retainedNodes: !172)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!35, !2821, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2823 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!2825 = !DISubprogram(name: "getParam", linkageName: "_ZNK12StringVector8getParamB5cxx11ERK11StringToken", scope: !2637, file: !1123, line: 86, type: !2819, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2826 = !DILocalVariable(name: "this", arg: 1, scope: !2818, type: !2827, flags: DIFlagArtificial | DIFlagObjectPointer)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2828 = !DILocation(line: 0, scope: !2818)
!2829 = !DILocalVariable(name: "token", arg: 2, scope: !2818, file: !1123, line: 86, type: !2823)
!2830 = !DILocation(line: 86, column: 45, scope: !2818)
!2831 = !DILocation(line: 88, column: 16, scope: !2818)
!2832 = !DILocation(line: 88, column: 31, scope: !2818)
!2833 = !DILocation(line: 88, column: 37, scope: !2818)
!2834 = !DILocation(line: 88, column: 45, scope: !2818)
!2835 = !DILocation(line: 88, column: 51, scope: !2818)
!2836 = !DILocation(line: 88, column: 24, scope: !2818)
!2837 = !DILocation(line: 88, column: 9, scope: !2818)
!2838 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv", scope: !1118, file: !167, line: 1042, type: !1144, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1143, retainedNodes: !172)
!2839 = !DILocalVariable(name: "this", arg: 1, scope: !2838, type: !2840, flags: DIFlagArtificial | DIFlagObjectPointer)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!2841 = !DILocation(line: 0, scope: !2838)
!2842 = !DILocation(line: 1043, column: 17, scope: !2838)
!2843 = !DILocation(line: 1043, column: 9, scope: !2838)
!2844 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv", scope: !1118, file: !167, line: 1052, type: !1160, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1159, retainedNodes: !172)
!2845 = !DILocalVariable(name: "this", arg: 1, scope: !2844, type: !2846, flags: DIFlagArtificial | DIFlagObjectPointer)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!2847 = !DILocation(line: 0, scope: !2844)
!2848 = !DILocation(line: 1054, column: 4, scope: !2844)
!2849 = !DILocation(line: 1054, column: 2, scope: !2844)
!2850 = !DILocation(line: 1055, column: 2, scope: !2844)
!2851 = distinct !DISubprogram(name: "~StringVector", linkageName: "_ZN12StringVectorD2Ev", scope: !2637, file: !1123, line: 35, type: !2852, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2854, retainedNodes: !172)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2789}
!2854 = !DISubprogram(name: "~StringVector", scope: !2637, type: !2852, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2855 = !DILocalVariable(name: "this", arg: 1, scope: !2851, type: !2792, flags: DIFlagArtificial | DIFlagObjectPointer)
!2856 = !DILocation(line: 0, scope: !2851)
!2857 = !DILocation(line: 35, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2851, file: !1123, line: 35, column: 7)
!2859 = !DILocation(line: 35, column: 7, scope: !2851)
!2860 = distinct !DISubprogram(name: "isShutdownCalled", linkageName: "_ZN3Log16isShutdownCalledEv", scope: !9, file: !10, line: 80, type: !98, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!2861 = !DILocation(line: 80, column: 45, scope: !2860)
!2862 = !DILocation(line: 80, column: 38, scope: !2860)
!2863 = distinct !DISubprogram(name: "error", linkageName: "_ZNK4Poco6Logger5errorEv", scope: !2729, file: !2730, line: 792, type: !2864, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2868, retainedNodes: !172)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!100, !2866}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2868 = !DISubprogram(name: "error", linkageName: "_ZNK4Poco6Logger5errorEv", scope: !2729, file: !2730, line: 334, type: !2864, scopeLine: 334, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2869 = !DILocalVariable(name: "this", arg: 1, scope: !2863, type: !2870, flags: DIFlagArtificial | DIFlagObjectPointer)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2871 = !DILocation(line: 0, scope: !2863)
!2872 = !DILocation(line: 794, column: 9, scope: !2863)
!2873 = !DILocation(line: 794, column: 16, scope: !2863)
!2874 = !DILocation(line: 794, column: 2, scope: !2863)
!2875 = distinct !DISubprogram(name: "prefix<1023>", linkageName: "_ZN3Log6prefixILi1023EEEPcS1_PKc", scope: !9, file: !10, line: 89, type: !2876, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !2878, retainedNodes: !172)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!58, !58, !130}
!2878 = !{!2879}
!2879 = !DITemplateValueParameter(name: "Size", type: !28, value: i32 1023)
!2880 = !DILocalVariable(name: "buffer", arg: 1, scope: !2875, file: !10, line: 89, type: !58)
!2881 = !DILocation(line: 89, column: 50, scope: !2875)
!2882 = !DILocalVariable(name: "level", arg: 2, scope: !2875, file: !10, line: 89, type: !130)
!2883 = !DILocation(line: 89, column: 76, scope: !2875)
!2884 = !DILocation(line: 92, column: 23, scope: !2875)
!2885 = !DILocation(line: 92, column: 46, scope: !2875)
!2886 = !DILocation(line: 92, column: 54, scope: !2875)
!2887 = !DILocation(line: 92, column: 16, scope: !2875)
!2888 = !DILocation(line: 92, column: 9, scope: !2875)
!2889 = !DILocation(line: 93, column: 5, scope: !2875)
!2890 = distinct !DISubprogram(name: "boolalpha", linkageName: "_ZSt9boolalphaRSt8ios_base", scope: !2, file: !5, line: 908, type: !2891, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!2893, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!2894 = !DILocalVariable(name: "__base", arg: 1, scope: !2890, file: !5, line: 908, type: !2893)
!2895 = !DILocation(line: 908, column: 23, scope: !2890)
!2896 = !DILocation(line: 910, column: 5, scope: !2890)
!2897 = !DILocation(line: 910, column: 12, scope: !2890)
!2898 = !DILocation(line: 911, column: 12, scope: !2890)
!2899 = !DILocation(line: 911, column: 5, scope: !2890)
!2900 = distinct !DISubprogram(name: "name", linkageName: "_ZNK4Poco6Logger4nameB5cxx11Ev", scope: !2729, file: !2730, line: 647, type: !2901, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2903, retainedNodes: !172)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!1024, !2866}
!2903 = !DISubprogram(name: "name", linkageName: "_ZNK4Poco6Logger4nameB5cxx11Ev", scope: !2729, file: !2730, line: 85, type: !2901, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2904 = !DILocalVariable(name: "this", arg: 1, scope: !2900, type: !2870, flags: DIFlagArtificial | DIFlagObjectPointer)
!2905 = !DILocation(line: 0, scope: !2900)
!2906 = !DILocation(line: 649, column: 9, scope: !2900)
!2907 = !DILocation(line: 649, column: 2, scope: !2900)
!2908 = distinct !DISubprogram(name: "create", linkageName: "_ZN13Authorization6createERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE", scope: !22, file: !21, line: 89, type: !1026, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1025, retainedNodes: !172)
!2909 = !DILocalVariable(name: "queryParams", arg: 1, scope: !2908, file: !21, line: 89, type: !1028)
!2910 = !DILocation(line: 89, column: 71, scope: !2908)
!2911 = !DILocalVariable(name: "decoded", scope: !2908, file: !21, line: 92, type: !35)
!2912 = !DILocation(line: 92, column: 17, scope: !2908)
!2913 = !DILocalVariable(name: "__range1", scope: !2914, type: !1028, flags: DIFlagArtificial)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !21, line: 93, column: 5)
!2915 = !DILocation(line: 0, scope: !2914)
!2916 = !DILocation(line: 93, column: 30, scope: !2914)
!2917 = !DILocalVariable(name: "__begin1", scope: !2914, type: !1307, flags: DIFlagArtificial)
!2918 = !DILocation(line: 93, column: 28, scope: !2914)
!2919 = !DILocalVariable(name: "__end1", scope: !2914, type: !1307, flags: DIFlagArtificial)
!2920 = !DILocalVariable(name: "param", scope: !2921, file: !21, line: 93, type: !1221)
!2921 = distinct !DILexicalBlock(scope: !2914, file: !21, line: 93, column: 5)
!2922 = !DILocation(line: 93, column: 22, scope: !2921)
!2923 = !DILocation(line: 93, column: 28, scope: !2921)
!2924 = !DILocation(line: 95, column: 13, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !21, line: 95, column: 13)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !21, line: 94, column: 5)
!2927 = !DILocation(line: 95, column: 19, scope: !2925)
!2928 = !DILocation(line: 95, column: 25, scope: !2925)
!2929 = !DILocation(line: 95, column: 13, scope: !2926)
!2930 = !DILocation(line: 97, column: 31, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !21, line: 96, column: 9)
!2932 = !DILocation(line: 97, column: 37, scope: !2931)
!2933 = !DILocation(line: 97, column: 13, scope: !2931)
!2934 = !DILocation(line: 98, column: 20, scope: !2931)
!2935 = !DILocation(line: 98, column: 13, scope: !2931)
!2936 = !DILocation(line: 109, column: 1, scope: !2925)
!2937 = !DILocation(line: 109, column: 1, scope: !2908)
!2938 = !DILocation(line: 101, column: 13, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2926, file: !21, line: 101, column: 13)
!2940 = !DILocation(line: 101, column: 19, scope: !2939)
!2941 = !DILocation(line: 101, column: 25, scope: !2939)
!2942 = !DILocation(line: 101, column: 13, scope: !2926)
!2943 = !DILocation(line: 102, column: 31, scope: !2939)
!2944 = !DILocation(line: 102, column: 37, scope: !2939)
!2945 = !DILocation(line: 102, column: 13, scope: !2939)
!2946 = !DILocation(line: 93, column: 5, scope: !2914)
!2947 = distinct !{!2947, !2946, !2948}
!2948 = !DILocation(line: 103, column: 5, scope: !2914)
!2949 = !DILocation(line: 105, column: 18, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2908, file: !21, line: 105, column: 9)
!2951 = !DILocation(line: 105, column: 9, scope: !2908)
!2952 = !DILocation(line: 106, column: 16, scope: !2950)
!2953 = !DILocation(line: 106, column: 9, scope: !2950)
!2954 = !DILocation(line: 108, column: 12, scope: !2908)
!2955 = !DILocation(line: 108, column: 5, scope: !2908)
!2956 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv", scope: !1034, file: !1035, line: 820, type: !2957, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2961, retainedNodes: !172)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!1307, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!2961 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5beginEv", scope: !1034, file: !1035, line: 820, type: !2957, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2962 = !DILocalVariable(name: "this", arg: 1, scope: !2956, type: !2963, flags: DIFlagArtificial | DIFlagObjectPointer)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2964 = !DILocation(line: 0, scope: !2956)
!2965 = !DILocation(line: 821, column: 37, scope: !2956)
!2966 = !DILocation(line: 821, column: 45, scope: !2956)
!2967 = !DILocation(line: 821, column: 16, scope: !2956)
!2968 = !DILocation(line: 821, column: 9, scope: !2956)
!2969 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv", scope: !1034, file: !1035, line: 838, type: !2957, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !2970, retainedNodes: !172)
!2970 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE3endEv", scope: !1034, file: !1035, line: 838, type: !2957, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2971 = !DILocalVariable(name: "this", arg: 1, scope: !2969, type: !2963, flags: DIFlagArtificial | DIFlagObjectPointer)
!2972 = !DILocation(line: 0, scope: !2969)
!2973 = !DILocation(line: 839, column: 37, scope: !2969)
!2974 = !DILocation(line: 839, column: 45, scope: !2969)
!2975 = !DILocation(line: 839, column: 16, scope: !2969)
!2976 = !DILocation(line: 839, column: 9, scope: !2969)
!2977 = distinct !DISubprogram(name: "operator!=<const std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *, std::vector<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > > >", linkageName: "_ZN9__gnu_cxxneIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEEbRKNS_17__normal_iteratorIT_T0_EESJ_", scope: !48, file: !167, line: 1179, type: !2978, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !1361, retainedNodes: !172)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!100, !2980, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1330, size: 64)
!2981 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2977, file: !167, line: 1179, type: !2980)
!2982 = !DILocation(line: 1179, column: 64, scope: !2977)
!2983 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2977, file: !167, line: 1180, type: !2980)
!2984 = !DILocation(line: 1180, column: 57, scope: !2977)
!2985 = !DILocation(line: 1182, column: 14, scope: !2977)
!2986 = !DILocation(line: 1182, column: 20, scope: !2977)
!2987 = !DILocation(line: 1182, column: 30, scope: !2977)
!2988 = !DILocation(line: 1182, column: 36, scope: !2977)
!2989 = !DILocation(line: 1182, column: 27, scope: !2977)
!2990 = !DILocation(line: 1182, column: 7, scope: !2977)
!2991 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEdeEv", scope: !1308, file: !167, line: 1042, type: !1322, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1321, retainedNodes: !172)
!2992 = !DILocalVariable(name: "this", arg: 1, scope: !2991, type: !2993, flags: DIFlagArtificial | DIFlagObjectPointer)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!2994 = !DILocation(line: 0, scope: !2991)
!2995 = !DILocation(line: 1043, column: 17, scope: !2991)
!2996 = !DILocation(line: 1043, column: 9, scope: !2991)
!2997 = distinct !DISubprogram(name: "operator==<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_", scope: !2, file: !42, line: 6248, type: !2998, scopeLine: 6250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !2755, retainedNodes: !172)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!100, !594, !130}
!3000 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2997, file: !42, line: 6248, type: !594)
!3001 = !DILocation(line: 6248, column: 61, scope: !2997)
!3002 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2997, file: !42, line: 6249, type: !130)
!3003 = !DILocation(line: 6249, column: 23, scope: !2997)
!3004 = !DILocation(line: 6250, column: 14, scope: !2997)
!3005 = !DILocation(line: 6250, column: 28, scope: !2997)
!3006 = !DILocation(line: 6250, column: 20, scope: !2997)
!3007 = !DILocation(line: 6250, column: 35, scope: !2997)
!3008 = !DILocation(line: 6250, column: 7, scope: !2997)
!3009 = distinct !DISubprogram(name: "Authorization", linkageName: "_ZN13AuthorizationC2ENS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !22, file: !23, line: 38, type: !1022, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1021, retainedNodes: !172)
!3010 = !DILocalVariable(name: "this", arg: 1, scope: !3009, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!3012 = !DILocation(line: 0, scope: !3009)
!3013 = !DILocalVariable(name: "type", arg: 2, scope: !3009, file: !23, line: 38, type: !27)
!3014 = !DILocation(line: 38, column: 24, scope: !3009)
!3015 = !DILocalVariable(name: "data", arg: 3, scope: !3009, file: !23, line: 38, type: !1024)
!3016 = !DILocation(line: 38, column: 49, scope: !3009)
!3017 = !DILocation(line: 39, column: 11, scope: !3009)
!3018 = !DILocation(line: 39, column: 17, scope: !3009)
!3019 = !DILocation(line: 40, column: 11, scope: !3009)
!3020 = !DILocation(line: 40, column: 17, scope: !3009)
!3021 = !DILocation(line: 42, column: 5, scope: !3009)
!3022 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEppEv", scope: !1308, file: !167, line: 1052, type: !1337, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1336, retainedNodes: !172)
!3023 = !DILocalVariable(name: "this", arg: 1, scope: !3022, type: !3024, flags: DIFlagArtificial | DIFlagObjectPointer)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!3025 = !DILocation(line: 0, scope: !3022)
!3026 = !DILocation(line: 1054, column: 4, scope: !3022)
!3027 = !DILocation(line: 1054, column: 2, scope: !3022)
!3028 = !DILocation(line: 1055, column: 2, scope: !3022)
!3029 = distinct !DISubprogram(name: "Authorization", linkageName: "_ZN13AuthorizationC2Ev", scope: !22, file: !23, line: 33, type: !1018, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1017, retainedNodes: !172)
!3030 = !DILocalVariable(name: "this", arg: 1, scope: !3029, type: !3011, flags: DIFlagArtificial | DIFlagObjectPointer)
!3031 = !DILocation(line: 0, scope: !3029)
!3032 = !DILocation(line: 34, column: 11, scope: !3029)
!3033 = !DILocation(line: 33, column: 5, scope: !3029)
!3034 = !DILocation(line: 36, column: 5, scope: !3029)
!3035 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv", scope: !1117, file: !1035, line: 811, type: !3036, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3039, retainedNodes: !172)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!1116, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3039 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv", scope: !1117, file: !1035, line: 811, type: !3036, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3040 = !DILocalVariable(name: "this", arg: 1, scope: !3035, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!3042 = !DILocation(line: 0, scope: !3035)
!3043 = !DILocation(line: 812, column: 31, scope: !3035)
!3044 = !DILocation(line: 812, column: 39, scope: !3035)
!3045 = !DILocation(line: 812, column: 16, scope: !3035)
!3046 = !DILocation(line: 812, column: 9, scope: !3035)
!3047 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_", scope: !1118, file: !167, line: 1027, type: !1139, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1138, retainedNodes: !172)
!3048 = !DILocalVariable(name: "this", arg: 1, scope: !3047, type: !2846, flags: DIFlagArtificial | DIFlagObjectPointer)
!3049 = !DILocation(line: 0, scope: !3047)
!3050 = !DILocalVariable(name: "__i", arg: 2, scope: !3047, file: !167, line: 1027, type: !1141)
!3051 = !DILocation(line: 1027, column: 42, scope: !3047)
!3052 = !DILocation(line: 1028, column: 9, scope: !3047)
!3053 = !DILocation(line: 1028, column: 20, scope: !3047)
!3054 = !DILocation(line: 1028, column: 27, scope: !3047)
!3055 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE3endEv", scope: !1117, file: !1035, line: 829, type: !3036, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3056, retainedNodes: !172)
!3056 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE3endEv", scope: !1117, file: !1035, line: 829, type: !3036, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3057 = !DILocalVariable(name: "this", arg: 1, scope: !3055, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!3058 = !DILocation(line: 0, scope: !3055)
!3059 = !DILocation(line: 830, column: 31, scope: !3055)
!3060 = !DILocation(line: 830, column: 39, scope: !3055)
!3061 = !DILocation(line: 830, column: 16, scope: !3055)
!3062 = !DILocation(line: 830, column: 9, scope: !3055)
!3063 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EED2Ev", scope: !1117, file: !1035, line: 678, type: !3064, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3066, retainedNodes: !172)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3038}
!3066 = !DISubprogram(name: "~vector", scope: !1117, file: !1035, line: 678, type: !3064, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3067 = !DILocalVariable(name: "this", arg: 1, scope: !3063, type: !3041, flags: DIFlagArtificial | DIFlagObjectPointer)
!3068 = !DILocation(line: 0, scope: !3063)
!3069 = !DILocation(line: 680, column: 22, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !1035, line: 679, column: 7)
!3071 = !DILocation(line: 680, column: 30, scope: !3070)
!3072 = !DILocation(line: 680, column: 46, scope: !3070)
!3073 = !DILocation(line: 680, column: 54, scope: !3070)
!3074 = !DILocation(line: 681, column: 9, scope: !3070)
!3075 = !DILocation(line: 680, column: 2, scope: !3070)
!3076 = !DILocation(line: 683, column: 7, scope: !3070)
!3077 = !DILocation(line: 683, column: 7, scope: !3063)
!3078 = distinct !DISubprogram(name: "_Destroy<StringToken *, StringToken>", linkageName: "_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E", scope: !2, file: !52, line: 845, type: !3079, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3083, retainedNodes: !172)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !1121, !1121, !3081}
!3081 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<StringToken>", scope: !2, file: !63, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaI11StringTokenE")
!3083 = !{!3084, !3085}
!3084 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !1121)
!3085 = !DITemplateTypeParameter(name: "_Tp", type: !1122)
!3086 = !DILocalVariable(name: "__first", arg: 1, scope: !3078, file: !52, line: 845, type: !1121)
!3087 = !DILocation(line: 845, column: 31, scope: !3078)
!3088 = !DILocalVariable(name: "__last", arg: 2, scope: !3078, file: !52, line: 845, type: !1121)
!3089 = !DILocation(line: 845, column: 57, scope: !3078)
!3090 = !DILocalVariable(arg: 3, scope: !3078, file: !52, line: 846, type: !3081)
!3091 = !DILocation(line: 846, column: 22, scope: !3078)
!3092 = !DILocation(line: 848, column: 16, scope: !3078)
!3093 = !DILocation(line: 848, column: 25, scope: !3078)
!3094 = !DILocation(line: 848, column: 7, scope: !3078)
!3095 = !DILocation(line: 849, column: 5, scope: !3078)
!3096 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !3097, file: !1035, line: 276, type: !3098, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3150, retainedNodes: !172)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<StringToken, std::allocator<StringToken> >", scope: !2, file: !1035, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseI11StringTokenSaIS0_EE")
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3100, !3149}
!3100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !3097, file: !1035, line: 87, baseType: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !3103, file: !46, line: 120, baseType: !3148)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<StringToken>", scope: !3104, file: !46, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !3147, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E6rebindIS1_EE")
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<StringToken>, StringToken>", scope: !48, file: !46, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !3105, templateParams: !3145, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_EE")
!3105 = !{!3106, !3132, !3137, !3140, !3141, !3142, !3143, !3144}
!3106 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3104, baseType: !3107, extraData: i32 0)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<StringToken> >", scope: !2, file: !52, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !3108, templateParams: !3130, identifier: "_ZTSSt16allocator_traitsISaI11StringTokenEE")
!3108 = !{!3109, !3115, !3118, !3121, !3127}
!3109 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m", scope: !3107, file: !52, line: 463, type: !3110, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!3112, !3113, !64}
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3107, file: !52, line: 420, baseType: !1121)
!3113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !3107, file: !52, line: 414, baseType: !3082)
!3115 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_mPKv", scope: !3107, file: !52, line: 477, type: !3116, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!3112, !3113, !64, !71}
!3118 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m", scope: !3107, file: !52, line: 495, type: !3119, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3113, !3112, !64}
!3121 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_", scope: !3107, file: !52, line: 547, type: !3122, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !3107, file: !52, line: 435, baseType: !65)
!3125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3114)
!3127 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE37select_on_container_copy_constructionERKS1_", scope: !3107, file: !52, line: 562, type: !3128, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!3114, !3125}
!3130 = !{!3131}
!3131 = !DITemplateTypeParameter(name: "_Alloc", type: !3082)
!3132 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E17_S_select_on_copyERKS2_", scope: !3104, file: !46, line: 97, type: !3133, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!3082, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3137 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E10_S_on_swapERS2_S4_", scope: !3104, file: !46, line: 100, type: !3138, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !3081, !3081}
!3140 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E27_S_propagate_on_copy_assignEv", scope: !3104, file: !46, line: 103, type: !98, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3141 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E27_S_propagate_on_move_assignEv", scope: !3104, file: !46, line: 106, type: !98, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3142 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E20_S_propagate_on_swapEv", scope: !3104, file: !46, line: 109, type: !98, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3143 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E15_S_always_equalEv", scope: !3104, file: !46, line: 112, type: !98, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3144 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E15_S_nothrow_moveEv", scope: !3104, file: !46, line: 115, type: !98, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3145 = !{!3131, !3146}
!3146 = !DITemplateTypeParameter(type: !1122)
!3147 = !{!3085}
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<StringToken>", scope: !3107, file: !52, line: 450, baseType: !3082)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3150 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !3097, file: !1035, line: 276, type: !3098, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!3151 = !DILocalVariable(name: "this", arg: 1, scope: !3096, type: !3152, flags: DIFlagArtificial | DIFlagObjectPointer)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3153 = !DILocation(line: 0, scope: !3096)
!3154 = !DILocation(line: 277, column: 22, scope: !3096)
!3155 = !DILocation(line: 277, column: 9, scope: !3096)
!3156 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev", scope: !3097, file: !1035, line: 333, type: !3157, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3159, retainedNodes: !172)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3149}
!3159 = !DISubprogram(name: "~_Vector_base", scope: !3097, file: !1035, line: 333, type: !3157, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!3160 = !DILocalVariable(name: "this", arg: 1, scope: !3156, type: !3152, flags: DIFlagArtificial | DIFlagObjectPointer)
!3161 = !DILocation(line: 0, scope: !3156)
!3162 = !DILocation(line: 335, column: 16, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3156, file: !1035, line: 334, column: 7)
!3164 = !DILocation(line: 335, column: 24, scope: !3163)
!3165 = !DILocation(line: 336, column: 9, scope: !3163)
!3166 = !DILocation(line: 336, column: 17, scope: !3163)
!3167 = !DILocation(line: 336, column: 37, scope: !3163)
!3168 = !DILocation(line: 336, column: 45, scope: !3163)
!3169 = !DILocation(line: 336, column: 35, scope: !3163)
!3170 = !DILocation(line: 335, column: 2, scope: !3163)
!3171 = !DILocation(line: 337, column: 7, scope: !3163)
!3172 = !DILocation(line: 337, column: 7, scope: !3156)
!3173 = distinct !DISubprogram(name: "_Destroy<StringToken *>", linkageName: "_ZSt8_DestroyIP11StringTokenEvT_S2_", scope: !2, file: !3174, line: 182, type: !3175, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3177, retainedNodes: !172)
!3174 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !1121, !1121}
!3177 = !{!3084}
!3178 = !DILocalVariable(name: "__first", arg: 1, scope: !3173, file: !3174, line: 182, type: !1121)
!3179 = !DILocation(line: 182, column: 31, scope: !3173)
!3180 = !DILocalVariable(name: "__last", arg: 2, scope: !3173, file: !3174, line: 182, type: !1121)
!3181 = !DILocation(line: 182, column: 57, scope: !3173)
!3182 = !DILocation(line: 196, column: 12, scope: !3173)
!3183 = !DILocation(line: 196, column: 21, scope: !3173)
!3184 = !DILocation(line: 195, column: 7, scope: !3173)
!3185 = !DILocation(line: 197, column: 5, scope: !3173)
!3186 = distinct !DISubprogram(name: "__destroy<StringToken *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_", scope: !3187, file: !3174, line: 172, type: !3175, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3177, declaration: !3189, retainedNodes: !172)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !2, file: !3174, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !3188, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3188 = !{!2576}
!3189 = !DISubprogram(name: "__destroy<StringToken *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_", scope: !3187, file: !3174, line: 172, type: !3175, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3177)
!3190 = !DILocalVariable(arg: 1, scope: !3186, file: !3174, line: 172, type: !1121)
!3191 = !DILocation(line: 172, column: 35, scope: !3186)
!3192 = !DILocalVariable(arg: 2, scope: !3186, file: !3174, line: 172, type: !1121)
!3193 = !DILocation(line: 172, column: 53, scope: !3186)
!3194 = !DILocation(line: 172, column: 57, scope: !3186)
!3195 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m", scope: !3097, file: !1035, line: 350, type: !3196, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3200, retainedNodes: !172)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3149, !3198, !65}
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3097, file: !1035, line: 89, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3104, file: !46, line: 57, baseType: !3112)
!3200 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m", scope: !3097, file: !1035, line: 350, type: !3196, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3201 = !DILocalVariable(name: "this", arg: 1, scope: !3195, type: !3152, flags: DIFlagArtificial | DIFlagObjectPointer)
!3202 = !DILocation(line: 0, scope: !3195)
!3203 = !DILocalVariable(name: "__p", arg: 2, scope: !3195, file: !1035, line: 350, type: !3198)
!3204 = !DILocation(line: 350, column: 29, scope: !3195)
!3205 = !DILocalVariable(name: "__n", arg: 3, scope: !3195, file: !1035, line: 350, type: !65)
!3206 = !DILocation(line: 350, column: 41, scope: !3195)
!3207 = !DILocation(line: 353, column: 6, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3195, file: !1035, line: 353, column: 6)
!3209 = !DILocation(line: 353, column: 6, scope: !3195)
!3210 = !DILocation(line: 354, column: 20, scope: !3208)
!3211 = !DILocation(line: 354, column: 29, scope: !3208)
!3212 = !DILocation(line: 354, column: 34, scope: !3208)
!3213 = !DILocation(line: 354, column: 4, scope: !3208)
!3214 = !DILocation(line: 355, column: 7, scope: !3195)
!3215 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev", scope: !3216, file: !1035, line: 128, type: !3217, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3220, retainedNodes: !172)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !3097, file: !1035, line: 128, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implE")
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3220 = !DISubprogram(name: "~_Vector_impl", scope: !3216, type: !3217, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3221 = !DILocalVariable(name: "this", arg: 1, scope: !3215, type: !3222, flags: DIFlagArtificial | DIFlagObjectPointer)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3223 = !DILocation(line: 0, scope: !3215)
!3224 = !DILocation(line: 128, column: 14, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3215, file: !1035, line: 128, column: 14)
!3226 = !DILocation(line: 128, column: 14, scope: !3215)
!3227 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m", scope: !3107, file: !52, line: 495, type: !3119, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3118, retainedNodes: !172)
!3228 = !DILocalVariable(name: "__a", arg: 1, scope: !3227, file: !52, line: 495, type: !3113)
!3229 = !DILocation(line: 495, column: 34, scope: !3227)
!3230 = !DILocalVariable(name: "__p", arg: 2, scope: !3227, file: !52, line: 495, type: !3112)
!3231 = !DILocation(line: 495, column: 47, scope: !3227)
!3232 = !DILocalVariable(name: "__n", arg: 3, scope: !3227, file: !52, line: 495, type: !64)
!3233 = !DILocation(line: 495, column: 62, scope: !3227)
!3234 = !DILocation(line: 496, column: 9, scope: !3227)
!3235 = !DILocation(line: 496, column: 24, scope: !3227)
!3236 = !DILocation(line: 496, column: 29, scope: !3227)
!3237 = !DILocation(line: 496, column: 13, scope: !3227)
!3238 = !DILocation(line: 496, column: 35, scope: !3227)
!3239 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m", scope: !3241, file: !3240, line: 132, type: !3242, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3246, retainedNodes: !172)
!3240 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!3241 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<StringToken>", scope: !48, file: !3240, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorI11StringTokenEE")
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !3244, !1121, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !3240, line: 59, baseType: !65, flags: DIFlagPublic)
!3246 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m", scope: !3241, file: !3240, line: 132, type: !3242, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3247 = !DILocalVariable(name: "this", arg: 1, scope: !3239, type: !3248, flags: DIFlagArtificial | DIFlagObjectPointer)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3249 = !DILocation(line: 0, scope: !3239)
!3250 = !DILocalVariable(name: "__p", arg: 2, scope: !3239, file: !3240, line: 132, type: !1121)
!3251 = !DILocation(line: 132, column: 23, scope: !3239)
!3252 = !DILocalVariable(name: "__t", arg: 3, scope: !3239, file: !3240, line: 132, type: !3245)
!3253 = !DILocation(line: 132, column: 38, scope: !3239)
!3254 = !DILocation(line: 145, column: 20, scope: !3239)
!3255 = !DILocation(line: 145, column: 2, scope: !3239)
!3256 = !DILocation(line: 150, column: 7, scope: !3239)
!3257 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaI11StringTokenED2Ev", scope: !3082, file: !63, line: 174, type: !3258, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3261, retainedNodes: !172)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3261 = !DISubprogram(name: "~allocator", scope: !3082, file: !63, line: 174, type: !3258, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3262 = !DILocalVariable(name: "this", arg: 1, scope: !3257, type: !3263, flags: DIFlagArtificial | DIFlagObjectPointer)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3264 = !DILocation(line: 0, scope: !3257)
!3265 = !DILocation(line: 174, column: 39, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3257, file: !63, line: 174, column: 37)
!3267 = !DILocation(line: 174, column: 39, scope: !3257)
!3268 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev", scope: !3241, file: !3240, line: 89, type: !3269, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3271, retainedNodes: !172)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3244}
!3271 = !DISubprogram(name: "~new_allocator", scope: !3241, file: !3240, line: 89, type: !3269, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3272 = !DILocalVariable(name: "this", arg: 1, scope: !3268, type: !3248, flags: DIFlagArtificial | DIFlagObjectPointer)
!3273 = !DILocation(line: 0, scope: !3268)
!3274 = !DILocation(line: 89, column: 48, scope: !3268)
!3275 = distinct !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_Fmtflags", scope: !6, file: !5, line: 676, type: !3276, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3280, retainedNodes: !172)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!3278, !3279, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !6, file: !5, line: 341, baseType: !1089, flags: DIFlagPublic)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3280 = !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_Fmtflags", scope: !6, file: !5, line: 676, type: !3276, scopeLine: 676, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3281 = !DILocalVariable(name: "this", arg: 1, scope: !3275, type: !3282, flags: DIFlagArtificial | DIFlagObjectPointer)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3283 = !DILocation(line: 0, scope: !3275)
!3284 = !DILocalVariable(name: "__fmtfl", arg: 2, scope: !3275, file: !5, line: 676, type: !3278)
!3285 = !DILocation(line: 676, column: 19, scope: !3275)
!3286 = !DILocalVariable(name: "__old", scope: !3275, file: !5, line: 678, type: !3278)
!3287 = !DILocation(line: 678, column: 16, scope: !3275)
!3288 = !DILocation(line: 678, column: 24, scope: !3275)
!3289 = !DILocation(line: 679, column: 19, scope: !3275)
!3290 = !DILocation(line: 679, column: 7, scope: !3275)
!3291 = !DILocation(line: 679, column: 16, scope: !3275)
!3292 = !DILocation(line: 680, column: 14, scope: !3275)
!3293 = !DILocation(line: 680, column: 7, scope: !3275)
!3294 = distinct !DISubprogram(name: "operator|=", linkageName: "_ZStoRRSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 99, type: !3295, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!3297, !3299, !1089}
!3297 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!3299 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1089, size: 64)
!3300 = !DILocalVariable(name: "__a", arg: 1, scope: !3294, file: !5, line: 99, type: !3299)
!3301 = !DILocation(line: 99, column: 29, scope: !3294)
!3302 = !DILocalVariable(name: "__b", arg: 2, scope: !3294, file: !5, line: 99, type: !1089)
!3303 = !DILocation(line: 99, column: 48, scope: !3294)
!3304 = !DILocation(line: 100, column: 18, scope: !3294)
!3305 = !DILocation(line: 100, column: 24, scope: !3294)
!3306 = !DILocation(line: 100, column: 22, scope: !3294)
!3307 = !DILocation(line: 100, column: 12, scope: !3294)
!3308 = !DILocation(line: 100, column: 16, scope: !3294)
!3309 = !DILocation(line: 100, column: 5, scope: !3294)
!3310 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 87, type: !3311, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!1089, !1089, !1089}
!3313 = !DILocalVariable(name: "__a", arg: 1, scope: !3310, file: !5, line: 87, type: !1089)
!3314 = !DILocation(line: 87, column: 27, scope: !3310)
!3315 = !DILocalVariable(name: "__b", arg: 2, scope: !3310, file: !5, line: 87, type: !1089)
!3316 = !DILocation(line: 87, column: 46, scope: !3310)
!3317 = !DILocation(line: 88, column: 43, scope: !3310)
!3318 = !DILocation(line: 88, column: 67, scope: !3310)
!3319 = !DILocation(line: 88, column: 48, scope: !3310)
!3320 = !DILocation(line: 88, column: 5, scope: !3310)
!3321 = distinct !DISubprogram(name: "_Destroy<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", linkageName: "_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E", scope: !2, file: !52, line: 845, type: !3322, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3326, retainedNodes: !172)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !1191, !1191, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !63, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EE")
!3326 = !{!3327, !3328}
!3327 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !1191)
!3328 = !DITemplateTypeParameter(name: "_Tp", type: !1192)
!3329 = !DILocalVariable(name: "__first", arg: 1, scope: !3321, file: !52, line: 845, type: !1191)
!3330 = !DILocation(line: 845, column: 31, scope: !3321)
!3331 = !DILocalVariable(name: "__last", arg: 2, scope: !3321, file: !52, line: 845, type: !1191)
!3332 = !DILocation(line: 845, column: 57, scope: !3321)
!3333 = !DILocalVariable(arg: 3, scope: !3321, file: !52, line: 846, type: !3324)
!3334 = !DILocation(line: 846, column: 22, scope: !3321)
!3335 = !DILocation(line: 848, column: 16, scope: !3321)
!3336 = !DILocation(line: 848, column: 25, scope: !3321)
!3337 = !DILocation(line: 848, column: 7, scope: !3321)
!3338 = !DILocation(line: 849, column: 5, scope: !3321)
!3339 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_get_Tp_allocatorEv", scope: !3340, file: !1035, line: 276, type: !3341, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3393, retainedNodes: !172)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >", scope: !2, file: !1035, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE")
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!3343, !3392}
!3343 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !3340, file: !1035, line: 87, baseType: !3345)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !3346, file: !46, line: 120, baseType: !3391)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !3347, file: !46, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !3390, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E6rebindIS8_EE")
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !48, file: !46, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !3348, templateParams: !3388, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_EE")
!3348 = !{!3349, !3375, !3380, !3383, !3384, !3385, !3386, !3387}
!3349 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3347, baseType: !3350, extraData: i32 0)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >", scope: !2, file: !52, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !3351, templateParams: !3373, identifier: "_ZTSSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE")
!3351 = !{!3352, !3358, !3361, !3364, !3370}
!3352 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE8allocateERS8_m", scope: !3350, file: !52, line: 463, type: !3353, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!3355, !3356, !64}
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3350, file: !52, line: 420, baseType: !1191)
!3356 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !3350, file: !52, line: 414, baseType: !3325)
!3358 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE8allocateERS8_mPKv", scope: !3350, file: !52, line: 477, type: !3359, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3355, !3356, !64, !71}
!3361 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE10deallocateERS8_PS7_m", scope: !3350, file: !52, line: 495, type: !3362, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !3356, !3355, !64}
!3364 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE8max_sizeERKS8_", scope: !3350, file: !52, line: 547, type: !3365, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !3350, file: !52, line: 435, baseType: !65)
!3368 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3370 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE37select_on_container_copy_constructionERKS8_", scope: !3350, file: !52, line: 562, type: !3371, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!3357, !3368}
!3373 = !{!3374}
!3374 = !DITemplateTypeParameter(name: "_Alloc", type: !3325)
!3375 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E17_S_select_on_copyERKS9_", scope: !3347, file: !46, line: 97, type: !3376, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!3325, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3380 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E10_S_on_swapERS9_SB_", scope: !3347, file: !46, line: 100, type: !3381, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3324, !3324}
!3383 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E27_S_propagate_on_copy_assignEv", scope: !3347, file: !46, line: 103, type: !98, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3384 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E27_S_propagate_on_move_assignEv", scope: !3347, file: !46, line: 106, type: !98, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3385 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E20_S_propagate_on_swapEv", scope: !3347, file: !46, line: 109, type: !98, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3386 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E15_S_always_equalEv", scope: !3347, file: !46, line: 112, type: !98, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3387 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES8_E15_S_nothrow_moveEv", scope: !3347, file: !46, line: 115, type: !98, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3388 = !{!3374, !3389}
!3389 = !DITemplateTypeParameter(type: !1192)
!3390 = !{!3328}
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char> > >", scope: !3350, file: !52, line: 450, baseType: !3325)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3393 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_get_Tp_allocatorEv", scope: !3340, file: !1035, line: 276, type: !3341, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!3394 = !DILocalVariable(name: "this", arg: 1, scope: !3339, type: !3395, flags: DIFlagArtificial | DIFlagObjectPointer)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3396 = !DILocation(line: 0, scope: !3339)
!3397 = !DILocation(line: 277, column: 22, scope: !3339)
!3398 = !DILocation(line: 277, column: 9, scope: !3339)
!3399 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev", scope: !3340, file: !1035, line: 333, type: !3400, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3402, retainedNodes: !172)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !3392}
!3402 = !DISubprogram(name: "~_Vector_base", scope: !3340, file: !1035, line: 333, type: !3400, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!3403 = !DILocalVariable(name: "this", arg: 1, scope: !3399, type: !3395, flags: DIFlagArtificial | DIFlagObjectPointer)
!3404 = !DILocation(line: 0, scope: !3399)
!3405 = !DILocation(line: 335, column: 16, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !1035, line: 334, column: 7)
!3407 = !DILocation(line: 335, column: 24, scope: !3406)
!3408 = !DILocation(line: 336, column: 9, scope: !3406)
!3409 = !DILocation(line: 336, column: 17, scope: !3406)
!3410 = !DILocation(line: 336, column: 37, scope: !3406)
!3411 = !DILocation(line: 336, column: 45, scope: !3406)
!3412 = !DILocation(line: 336, column: 35, scope: !3406)
!3413 = !DILocation(line: 335, column: 2, scope: !3406)
!3414 = !DILocation(line: 337, column: 7, scope: !3406)
!3415 = !DILocation(line: 337, column: 7, scope: !3399)
!3416 = distinct !DISubprogram(name: "_Destroy<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *>", linkageName: "_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_", scope: !2, file: !3174, line: 182, type: !3417, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3419, retainedNodes: !172)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !1191, !1191}
!3419 = !{!3327}
!3420 = !DILocalVariable(name: "__first", arg: 1, scope: !3416, file: !3174, line: 182, type: !1191)
!3421 = !DILocation(line: 182, column: 31, scope: !3416)
!3422 = !DILocalVariable(name: "__last", arg: 2, scope: !3416, file: !3174, line: 182, type: !1191)
!3423 = !DILocation(line: 182, column: 57, scope: !3416)
!3424 = !DILocation(line: 196, column: 12, scope: !3416)
!3425 = !DILocation(line: 196, column: 21, scope: !3416)
!3426 = !DILocation(line: 195, column: 7, scope: !3416)
!3427 = !DILocation(line: 197, column: 5, scope: !3416)
!3428 = distinct !DISubprogram(name: "__destroy<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvT_SB_", scope: !3429, file: !3174, line: 160, type: !3417, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3419, declaration: !3432, retainedNodes: !172)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<false>", scope: !2, file: !3174, line: 156, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !3430, identifier: "_ZTSSt12_Destroy_auxILb0EE")
!3430 = !{!3431}
!3431 = !DITemplateValueParameter(type: !100, value: i1 false)
!3432 = !DISubprogram(name: "__destroy<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > *>", linkageName: "_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEvT_SB_", scope: !3429, file: !3174, line: 160, type: !3417, scopeLine: 160, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3419)
!3433 = !DILocalVariable(name: "__first", arg: 1, scope: !3428, file: !3174, line: 160, type: !1191)
!3434 = !DILocation(line: 160, column: 29, scope: !3428)
!3435 = !DILocalVariable(name: "__last", arg: 2, scope: !3428, file: !3174, line: 160, type: !1191)
!3436 = !DILocation(line: 160, column: 55, scope: !3428)
!3437 = !DILocation(line: 162, column: 4, scope: !3428)
!3438 = !DILocation(line: 162, column: 11, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3174, line: 162, column: 4)
!3440 = distinct !DILexicalBlock(scope: !3428, file: !3174, line: 162, column: 4)
!3441 = !DILocation(line: 162, column: 22, scope: !3439)
!3442 = !DILocation(line: 162, column: 19, scope: !3439)
!3443 = !DILocation(line: 162, column: 4, scope: !3440)
!3444 = !DILocation(line: 163, column: 38, scope: !3439)
!3445 = !DILocation(line: 163, column: 6, scope: !3439)
!3446 = !DILocation(line: 162, column: 30, scope: !3439)
!3447 = !DILocation(line: 162, column: 4, scope: !3439)
!3448 = distinct !{!3448, !3443, !3449, !2723}
!3449 = !DILocation(line: 163, column: 46, scope: !3440)
!3450 = !DILocation(line: 164, column: 2, scope: !3428)
!3451 = distinct !DISubprogram(name: "_Destroy<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", linkageName: "_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_", scope: !2, file: !3174, line: 146, type: !3452, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3390, retainedNodes: !172)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !1191}
!3454 = !DILocalVariable(name: "__pointer", arg: 1, scope: !3451, file: !3174, line: 146, type: !1191)
!3455 = !DILocation(line: 146, column: 19, scope: !3451)
!3456 = !DILocation(line: 151, column: 7, scope: !3451)
!3457 = !DILocation(line: 151, column: 19, scope: !3451)
!3458 = !DILocation(line: 153, column: 5, scope: !3451)
!3459 = distinct !DISubprogram(name: "~pair", linkageName: "_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev", scope: !1192, file: !167, line: 2488, type: !3460, scopeLine: 2488, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3462, retainedNodes: !172)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !1220}
!3462 = !DISubprogram(name: "~pair", scope: !1192, type: !3460, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3463 = !DILocalVariable(name: "this", arg: 1, scope: !3459, type: !1191, flags: DIFlagArtificial | DIFlagObjectPointer)
!3464 = !DILocation(line: 0, scope: !3459)
!3465 = !DILocation(line: 2488, column: 12, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !167, line: 2488, column: 12)
!3467 = !DILocation(line: 2488, column: 12, scope: !3459)
!3468 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m", scope: !3340, file: !1035, line: 350, type: !3469, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3473, retainedNodes: !172)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3392, !3471, !65}
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3340, file: !1035, line: 89, baseType: !3472)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !3347, file: !46, line: 57, baseType: !3355)
!3473 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m", scope: !3340, file: !1035, line: 350, type: !3469, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!3474 = !DILocalVariable(name: "this", arg: 1, scope: !3468, type: !3395, flags: DIFlagArtificial | DIFlagObjectPointer)
!3475 = !DILocation(line: 0, scope: !3468)
!3476 = !DILocalVariable(name: "__p", arg: 2, scope: !3468, file: !1035, line: 350, type: !3471)
!3477 = !DILocation(line: 350, column: 29, scope: !3468)
!3478 = !DILocalVariable(name: "__n", arg: 3, scope: !3468, file: !1035, line: 350, type: !65)
!3479 = !DILocation(line: 350, column: 41, scope: !3468)
!3480 = !DILocation(line: 353, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3468, file: !1035, line: 353, column: 6)
!3482 = !DILocation(line: 353, column: 6, scope: !3468)
!3483 = !DILocation(line: 354, column: 20, scope: !3481)
!3484 = !DILocation(line: 354, column: 29, scope: !3481)
!3485 = !DILocation(line: 354, column: 34, scope: !3481)
!3486 = !DILocation(line: 354, column: 4, scope: !3481)
!3487 = !DILocation(line: 355, column: 7, scope: !3468)
!3488 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implD2Ev", scope: !3489, file: !1035, line: 128, type: !3490, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3493, retainedNodes: !172)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !3340, file: !1035, line: 128, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE")
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3492}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3493 = !DISubprogram(name: "~_Vector_impl", scope: !3489, type: !3490, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3494 = !DILocalVariable(name: "this", arg: 1, scope: !3488, type: !3495, flags: DIFlagArtificial | DIFlagObjectPointer)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3496 = !DILocation(line: 0, scope: !3488)
!3497 = !DILocation(line: 128, column: 14, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3488, file: !1035, line: 128, column: 14)
!3499 = !DILocation(line: 128, column: 14, scope: !3488)
!3500 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE10deallocateERS8_PS7_m", scope: !3350, file: !52, line: 495, type: !3362, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3361, retainedNodes: !172)
!3501 = !DILocalVariable(name: "__a", arg: 1, scope: !3500, file: !52, line: 495, type: !3356)
!3502 = !DILocation(line: 495, column: 34, scope: !3500)
!3503 = !DILocalVariable(name: "__p", arg: 2, scope: !3500, file: !52, line: 495, type: !3355)
!3504 = !DILocation(line: 495, column: 47, scope: !3500)
!3505 = !DILocalVariable(name: "__n", arg: 3, scope: !3500, file: !52, line: 495, type: !64)
!3506 = !DILocation(line: 495, column: 62, scope: !3500)
!3507 = !DILocation(line: 496, column: 9, scope: !3500)
!3508 = !DILocation(line: 496, column: 24, scope: !3500)
!3509 = !DILocation(line: 496, column: 29, scope: !3500)
!3510 = !DILocation(line: 496, column: 13, scope: !3500)
!3511 = !DILocation(line: 496, column: 35, scope: !3500)
!3512 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE10deallocateEPS8_m", scope: !3513, file: !3240, line: 132, type: !3514, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3517, retainedNodes: !172)
!3513 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !48, file: !3240, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE")
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3516, !1191, !3245}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3517 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE10deallocateEPS8_m", scope: !3513, file: !3240, line: 132, type: !3514, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3518 = !DILocalVariable(name: "this", arg: 1, scope: !3512, type: !3519, flags: DIFlagArtificial | DIFlagObjectPointer)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3520 = !DILocation(line: 0, scope: !3512)
!3521 = !DILocalVariable(name: "__p", arg: 2, scope: !3512, file: !3240, line: 132, type: !1191)
!3522 = !DILocation(line: 132, column: 23, scope: !3512)
!3523 = !DILocalVariable(name: "__t", arg: 3, scope: !3512, file: !3240, line: 132, type: !3245)
!3524 = !DILocation(line: 132, column: 38, scope: !3512)
!3525 = !DILocation(line: 145, column: 20, scope: !3512)
!3526 = !DILocation(line: 145, column: 2, scope: !3512)
!3527 = !DILocation(line: 150, column: 7, scope: !3512)
!3528 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev", scope: !3325, file: !63, line: 174, type: !3529, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3532, retainedNodes: !172)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3532 = !DISubprogram(name: "~allocator", scope: !3325, file: !63, line: 174, type: !3529, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3533 = !DILocalVariable(name: "this", arg: 1, scope: !3528, type: !3534, flags: DIFlagArtificial | DIFlagObjectPointer)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3535 = !DILocation(line: 0, scope: !3528)
!3536 = !DILocation(line: 174, column: 39, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3528, file: !63, line: 174, column: 37)
!3538 = !DILocation(line: 174, column: 39, scope: !3528)
!3539 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EED2Ev", scope: !3513, file: !3240, line: 89, type: !3540, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3542, retainedNodes: !172)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !3516}
!3542 = !DISubprogram(name: "~new_allocator", scope: !3513, file: !3240, line: 89, type: !3540, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3543 = !DILocalVariable(name: "this", arg: 1, scope: !3539, type: !3519, flags: DIFlagArtificial | DIFlagObjectPointer)
!3544 = !DILocation(line: 0, scope: !3539)
!3545 = !DILocation(line: 89, column: 48, scope: !3539)
!3546 = distinct !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !343, file: !344, line: 372, type: !358, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !357, retainedNodes: !172)
!3547 = !DILocalVariable(name: "__s1", arg: 1, scope: !3546, file: !344, line: 372, type: !360)
!3548 = !DILocation(line: 372, column: 32, scope: !3546)
!3549 = !DILocalVariable(name: "__s2", arg: 2, scope: !3546, file: !344, line: 372, type: !360)
!3550 = !DILocation(line: 372, column: 55, scope: !3546)
!3551 = !DILocalVariable(name: "__n", arg: 3, scope: !3546, file: !344, line: 372, type: !65)
!3552 = !DILocation(line: 372, column: 68, scope: !3546)
!3553 = !DILocation(line: 374, column: 6, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3546, file: !344, line: 374, column: 6)
!3555 = !DILocation(line: 374, column: 10, scope: !3554)
!3556 = !DILocation(line: 374, column: 6, scope: !3546)
!3557 = !DILocation(line: 375, column: 4, scope: !3554)
!3558 = !DILocation(line: 377, column: 27, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3546, file: !344, line: 377, column: 6)
!3560 = !DILocation(line: 377, column: 6, scope: !3559)
!3561 = !DILocation(line: 378, column: 6, scope: !3559)
!3562 = !DILocation(line: 378, column: 33, scope: !3559)
!3563 = !DILocation(line: 378, column: 39, scope: !3559)
!3564 = !DILocalVariable(name: "__a", arg: 1, scope: !3565, file: !344, line: 308, type: !130)
!3565 = distinct !DISubprogram(name: "__constant_char_array_p<char>", linkageName: "_ZSt23__constant_char_array_pIcEbPKT_m", scope: !2, file: !344, line: 308, type: !3566, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !393, retainedNodes: !172)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!100, !130, !65}
!3568 = !DILocation(line: 308, column: 43, scope: !3565, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 378, column: 9, scope: !3559)
!3570 = !DILocalVariable(name: "__n", arg: 2, scope: !3565, file: !344, line: 308, type: !65)
!3571 = !DILocation(line: 308, column: 55, scope: !3565, inlinedAt: !3569)
!3572 = !DILocation(line: 379, column: 6, scope: !3559)
!3573 = !DILocation(line: 379, column: 33, scope: !3559)
!3574 = !DILocation(line: 379, column: 39, scope: !3559)
!3575 = !DILocation(line: 308, column: 43, scope: !3565, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 379, column: 9, scope: !3559)
!3577 = !DILocation(line: 308, column: 55, scope: !3565, inlinedAt: !3576)
!3578 = !DILocation(line: 377, column: 6, scope: !3546)
!3579 = !DILocalVariable(name: "__i", scope: !3580, file: !344, line: 381, type: !65)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !344, line: 381, column: 6)
!3581 = distinct !DILexicalBlock(scope: !3559, file: !344, line: 380, column: 4)
!3582 = !DILocation(line: 381, column: 18, scope: !3580)
!3583 = !DILocation(line: 381, column: 11, scope: !3580)
!3584 = !DILocation(line: 381, column: 27, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3580, file: !344, line: 381, column: 6)
!3586 = !DILocation(line: 381, column: 33, scope: !3585)
!3587 = !DILocation(line: 381, column: 31, scope: !3585)
!3588 = !DILocation(line: 381, column: 6, scope: !3580)
!3589 = !DILocation(line: 382, column: 15, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !344, line: 382, column: 12)
!3591 = !DILocation(line: 382, column: 20, scope: !3590)
!3592 = !DILocation(line: 382, column: 26, scope: !3590)
!3593 = !DILocation(line: 382, column: 31, scope: !3590)
!3594 = !DILocation(line: 382, column: 12, scope: !3590)
!3595 = !DILocation(line: 382, column: 12, scope: !3585)
!3596 = !DILocation(line: 383, column: 3, scope: !3590)
!3597 = !DILocation(line: 384, column: 20, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3590, file: !344, line: 384, column: 17)
!3599 = !DILocation(line: 384, column: 25, scope: !3598)
!3600 = !DILocation(line: 384, column: 31, scope: !3598)
!3601 = !DILocation(line: 384, column: 36, scope: !3598)
!3602 = !DILocation(line: 384, column: 17, scope: !3598)
!3603 = !DILocation(line: 384, column: 17, scope: !3590)
!3604 = !DILocation(line: 385, column: 3, scope: !3598)
!3605 = !DILocation(line: 382, column: 35, scope: !3590)
!3606 = !DILocation(line: 381, column: 38, scope: !3585)
!3607 = !DILocation(line: 381, column: 6, scope: !3585)
!3608 = distinct !{!3608, !3588, !3609, !2723}
!3609 = !DILocation(line: 385, column: 10, scope: !3580)
!3610 = !DILocation(line: 386, column: 6, scope: !3581)
!3611 = !DILocation(line: 389, column: 26, scope: !3546)
!3612 = !DILocation(line: 389, column: 32, scope: !3546)
!3613 = !DILocation(line: 389, column: 38, scope: !3546)
!3614 = !DILocation(line: 389, column: 9, scope: !3546)
!3615 = !DILocation(line: 389, column: 2, scope: !3546)
!3616 = !DILocation(line: 390, column: 7, scope: !3546)
!3617 = distinct !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !343, file: !344, line: 364, type: !354, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !356, retainedNodes: !172)
!3618 = !DILocalVariable(name: "__c1", arg: 1, scope: !3617, file: !344, line: 364, type: !351)
!3619 = !DILocation(line: 364, column: 27, scope: !3617)
!3620 = !DILocalVariable(name: "__c2", arg: 2, scope: !3617, file: !344, line: 364, type: !351)
!3621 = !DILocation(line: 364, column: 50, scope: !3617)
!3622 = !DILocation(line: 367, column: 37, scope: !3617)
!3623 = !DILocation(line: 367, column: 10, scope: !3617)
!3624 = !DILocation(line: 368, column: 32, scope: !3617)
!3625 = !DILocation(line: 368, column: 5, scope: !3617)
!3626 = !DILocation(line: 368, column: 3, scope: !3617)
!3627 = !DILocation(line: 367, column: 2, scope: !3617)
!3628 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !343, file: !344, line: 393, type: !362, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !361, retainedNodes: !172)
!3629 = !DILocalVariable(name: "__s", arg: 1, scope: !3628, file: !344, line: 393, type: !360)
!3630 = !DILocation(line: 393, column: 31, scope: !3628)
!3631 = !DILocation(line: 396, column: 26, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !344, line: 396, column: 6)
!3633 = !DILocalVariable(name: "__s", arg: 1, scope: !3634, file: !344, line: 285, type: !130)
!3634 = distinct !DISubprogram(name: "__constant_string_p<char>", linkageName: "_ZSt19__constant_string_pIcEbPKT_", scope: !2, file: !344, line: 285, type: !3635, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !393, retainedNodes: !172)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!100, !130}
!3637 = !DILocation(line: 285, column: 39, scope: !3634, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 396, column: 6, scope: !3632)
!3639 = !DILocation(line: 396, column: 6, scope: !3628)
!3640 = !DILocation(line: 397, column: 53, scope: !3632)
!3641 = !DILocation(line: 397, column: 11, scope: !3632)
!3642 = !DILocation(line: 397, column: 4, scope: !3632)
!3643 = !DILocation(line: 399, column: 26, scope: !3628)
!3644 = !DILocation(line: 399, column: 9, scope: !3628)
!3645 = !DILocation(line: 399, column: 2, scope: !3628)
!3646 = !DILocation(line: 400, column: 7, scope: !3628)
!3647 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !37, file: !38, line: 207, type: !3648, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3651, declaration: !3650, retainedNodes: !172)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !397, !130, !130, !181}
!3650 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !37, file: !42, line: 287, type: !3648, scopeLine: 287, flags: DIFlagPrototyped, spFlags: 0, templateParams: !3651)
!3651 = !{!3652}
!3652 = !DITemplateTypeParameter(name: "_FwdIterator", type: !130)
!3653 = !DILocalVariable(name: "this", arg: 1, scope: !3647, type: !2507, flags: DIFlagArtificial | DIFlagObjectPointer)
!3654 = !DILocation(line: 0, scope: !3647)
!3655 = !DILocalVariable(name: "__beg", arg: 2, scope: !3647, file: !42, line: 287, type: !130)
!3656 = !DILocation(line: 287, column: 35, scope: !3647)
!3657 = !DILocalVariable(name: "__end", arg: 3, scope: !3647, file: !42, line: 287, type: !130)
!3658 = !DILocation(line: 287, column: 55, scope: !3647)
!3659 = !DILocalVariable(arg: 4, scope: !3647, file: !42, line: 288, type: !181)
!3660 = !DILocation(line: 288, column: 33, scope: !3647)
!3661 = !DILocation(line: 211, column: 35, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3647, file: !38, line: 211, column: 6)
!3663 = !DILocation(line: 211, column: 6, scope: !3662)
!3664 = !DILocation(line: 211, column: 42, scope: !3662)
!3665 = !DILocation(line: 211, column: 45, scope: !3662)
!3666 = !DILocation(line: 211, column: 54, scope: !3662)
!3667 = !DILocation(line: 211, column: 51, scope: !3662)
!3668 = !DILocation(line: 211, column: 6, scope: !3647)
!3669 = !DILocation(line: 212, column: 4, scope: !3662)
!3670 = !DILocalVariable(name: "__dnew", scope: !3647, file: !38, line: 215, type: !44)
!3671 = !DILocation(line: 215, column: 12, scope: !3647)
!3672 = !DILocation(line: 215, column: 58, scope: !3647)
!3673 = !DILocation(line: 215, column: 65, scope: !3647)
!3674 = !DILocation(line: 215, column: 44, scope: !3647)
!3675 = !DILocation(line: 217, column: 6, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3647, file: !38, line: 217, column: 6)
!3677 = !DILocation(line: 217, column: 13, scope: !3676)
!3678 = !DILocation(line: 217, column: 6, scope: !3647)
!3679 = !DILocation(line: 219, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !38, line: 218, column: 4)
!3681 = !DILocation(line: 219, column: 6, scope: !3680)
!3682 = !DILocation(line: 220, column: 18, scope: !3680)
!3683 = !DILocation(line: 220, column: 6, scope: !3680)
!3684 = !DILocation(line: 221, column: 4, scope: !3680)
!3685 = !DILocation(line: 225, column: 26, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3647, file: !38, line: 225, column: 4)
!3687 = !DILocation(line: 225, column: 37, scope: !3686)
!3688 = !DILocation(line: 225, column: 44, scope: !3686)
!3689 = !DILocation(line: 225, column: 6, scope: !3686)
!3690 = !DILocation(line: 225, column: 52, scope: !3686)
!3691 = !DILocation(line: 233, column: 7, scope: !3686)
!3692 = !DILocation(line: 228, column: 6, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3647, file: !38, line: 227, column: 4)
!3694 = !DILocation(line: 229, column: 6, scope: !3693)
!3695 = !DILocation(line: 233, column: 7, scope: !3693)
!3696 = !DILocation(line: 230, column: 4, scope: !3693)
!3697 = !DILocation(line: 232, column: 16, scope: !3647)
!3698 = !DILocation(line: 232, column: 2, scope: !3647)
!3699 = !DILocation(line: 233, column: 7, scope: !3647)
!3700 = distinct !DISubprogram(name: "~_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev", scope: !108, file: !42, line: 158, type: !3701, scopeLine: 158, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3704, retainedNodes: !172)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3704 = !DISubprogram(name: "~_Alloc_hider", scope: !108, type: !3701, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3705 = !DILocalVariable(name: "this", arg: 1, scope: !3700, type: !3706, flags: DIFlagArtificial | DIFlagObjectPointer)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!3707 = !DILocation(line: 0, scope: !3700)
!3708 = !DILocation(line: 158, column: 14, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3700, file: !42, line: 158, column: 14)
!3710 = !DILocation(line: 158, column: 14, scope: !3700)
!3711 = distinct !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !3712, file: !344, line: 168, type: !3730, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3729, retainedNodes: !172)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !48, file: !344, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !3713, templateParams: !393, identifier: "_ZTSN9__gnu_cxx11char_traitsIcEE")
!3713 = !{!3714, !3721, !3724, !3725, !3729, !3732, !3735, !3739, !3740, !3743, !3751, !3754, !3757, !3760}
!3714 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc", scope: !3712, file: !344, line: 102, type: !3715, scopeLine: 102, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3717, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !3712, file: !344, line: 92, baseType: !59)
!3719 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3721 = !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !3712, file: !344, line: 106, type: !3722, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!100, !3719, !3719}
!3724 = !DISubprogram(name: "lt", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2ltERKcS3_", scope: !3712, file: !344, line: 110, type: !3722, scopeLine: 110, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3725 = !DISubprogram(name: "compare", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7compareEPKcS3_m", scope: !3712, file: !344, line: 114, type: !3726, scopeLine: 114, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!28, !3728, !3728, !65}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3729 = !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !3712, file: !344, line: 117, type: !3730, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!65, !3728}
!3732 = !DISubprogram(name: "find", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_", scope: !3712, file: !344, line: 120, type: !3733, scopeLine: 120, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!3728, !3728, !65, !3719}
!3735 = !DISubprogram(name: "move", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm", scope: !3712, file: !344, line: 123, type: !3736, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3738, !3738, !3728, !65}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3739 = !DISubprogram(name: "copy", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm", scope: !3712, file: !344, line: 126, type: !3736, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3740 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc", scope: !3712, file: !344, line: 129, type: !3741, scopeLine: 129, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!3738, !3738, !65, !3718}
!3743 = !DISubprogram(name: "to_char_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE12to_char_typeERKm", scope: !3712, file: !344, line: 132, type: !3744, scopeLine: 132, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3718, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !3712, file: !344, line: 93, baseType: !3749)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !3750, file: !344, line: 67, baseType: !67)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Char_types<char>", scope: !48, file: !344, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !172, templateParams: !393, identifier: "_ZTSN9__gnu_cxx11_Char_typesIcEE")
!3751 = !DISubprogram(name: "to_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11to_int_typeERKc", scope: !3712, file: !344, line: 136, type: !3752, scopeLine: 136, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3748, !3719}
!3754 = !DISubprogram(name: "eq_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11eq_int_typeERKmS3_", scope: !3712, file: !344, line: 140, type: !3755, scopeLine: 140, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!100, !3746, !3746}
!3757 = !DISubprogram(name: "eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE3eofEv", scope: !3712, file: !344, line: 144, type: !3758, scopeLine: 144, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3748}
!3760 = !DISubprogram(name: "not_eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7not_eofERKm", scope: !3712, file: !344, line: 148, type: !3761, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!3748, !3746}
!3763 = !DILocalVariable(name: "__p", arg: 1, scope: !3711, file: !344, line: 117, type: !3728)
!3764 = !DILocation(line: 117, column: 31, scope: !3711)
!3765 = !DILocalVariable(name: "__i", scope: !3711, file: !344, line: 170, type: !65)
!3766 = !DILocation(line: 170, column: 19, scope: !3711)
!3767 = !DILocation(line: 171, column: 7, scope: !3711)
!3768 = !DILocation(line: 171, column: 18, scope: !3711)
!3769 = !DILocation(line: 171, column: 22, scope: !3711)
!3770 = !DILocation(line: 171, column: 28, scope: !3711)
!3771 = !DILocation(line: 171, column: 15, scope: !3711)
!3772 = !DILocation(line: 171, column: 14, scope: !3711)
!3773 = !DILocation(line: 172, column: 9, scope: !3711)
!3774 = distinct !{!3774, !3767, !3775, !2723}
!3775 = !DILocation(line: 172, column: 11, scope: !3711)
!3776 = !DILocation(line: 173, column: 14, scope: !3711)
!3777 = !DILocation(line: 173, column: 7, scope: !3711)
!3778 = distinct !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !3712, file: !344, line: 106, type: !3722, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !3721, retainedNodes: !172)
!3779 = !DILocalVariable(name: "__c1", arg: 1, scope: !3778, file: !344, line: 106, type: !3719)
!3780 = !DILocation(line: 106, column: 27, scope: !3778)
!3781 = !DILocalVariable(name: "__c2", arg: 2, scope: !3778, file: !344, line: 106, type: !3719)
!3782 = !DILocation(line: 106, column: 50, scope: !3778)
!3783 = !DILocation(line: 107, column: 16, scope: !3778)
!3784 = !DILocation(line: 107, column: 24, scope: !3778)
!3785 = !DILocation(line: 107, column: 21, scope: !3778)
!3786 = !DILocation(line: 107, column: 9, scope: !3778)
!3787 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !48, file: !2573, line: 152, type: !3635, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3788, retainedNodes: !172)
!3788 = !{!3789}
!3789 = !DITemplateTypeParameter(name: "_Type", type: !131)
!3790 = !DILocalVariable(name: "__ptr", arg: 1, scope: !3787, file: !2573, line: 152, type: !130)
!3791 = !DILocation(line: 152, column: 30, scope: !3787)
!3792 = !DILocation(line: 153, column: 14, scope: !3787)
!3793 = !DILocation(line: 153, column: 20, scope: !3787)
!3794 = !DILocation(line: 153, column: 7, scope: !3787)
!3795 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !2, file: !3796, line: 138, type: !3797, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3799, retainedNodes: !172)
!3796 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_funcs.h", directory: "")
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!238, !130, !130}
!3799 = !{!3800}
!3800 = !DITemplateTypeParameter(name: "_InputIterator", type: !130)
!3801 = !DILocalVariable(name: "__first", arg: 1, scope: !3795, file: !3796, line: 138, type: !130)
!3802 = !DILocation(line: 138, column: 29, scope: !3795)
!3803 = !DILocalVariable(name: "__last", arg: 2, scope: !3795, file: !3796, line: 138, type: !130)
!3804 = !DILocation(line: 138, column: 53, scope: !3795)
!3805 = !DILocation(line: 141, column: 30, scope: !3795)
!3806 = !DILocation(line: 141, column: 39, scope: !3795)
!3807 = !DILocation(line: 142, column: 9, scope: !3795)
!3808 = !DILocation(line: 141, column: 14, scope: !3795)
!3809 = !DILocation(line: 141, column: 7, scope: !3795)
!3810 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !2, file: !3796, line: 98, type: !3811, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3813, retainedNodes: !172)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!238, !130, !130, !175}
!3813 = !{!3814}
!3814 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !130)
!3815 = !DILocalVariable(name: "__first", arg: 1, scope: !3810, file: !3796, line: 98, type: !130)
!3816 = !DILocation(line: 98, column: 38, scope: !3810)
!3817 = !DILocalVariable(name: "__last", arg: 2, scope: !3810, file: !3796, line: 98, type: !130)
!3818 = !DILocation(line: 98, column: 69, scope: !3810)
!3819 = !DILocalVariable(arg: 3, scope: !3810, file: !3796, line: 99, type: !175)
!3820 = !DILocation(line: 99, column: 42, scope: !3810)
!3821 = !DILocation(line: 104, column: 14, scope: !3810)
!3822 = !DILocation(line: 104, column: 23, scope: !3810)
!3823 = !DILocation(line: 104, column: 21, scope: !3810)
!3824 = !DILocation(line: 104, column: 7, scope: !3810)
!3825 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !2, file: !171, line: 238, type: !3826, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, templateParams: !3829, retainedNodes: !172)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!3828, !545}
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !218, file: !171, line: 223, baseType: !175)
!3829 = !{!3830}
!3830 = !DITemplateTypeParameter(name: "_Iter", type: !130)
!3831 = !DILocalVariable(arg: 1, scope: !3825, file: !171, line: 238, type: !545)
!3832 = !DILocation(line: 238, column: 37, scope: !3825)
!3833 = !DILocation(line: 239, column: 7, scope: !3825)
!3834 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKS9_", scope: !1188, file: !167, line: 1027, type: !1261, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1260, retainedNodes: !172)
!3835 = !DILocalVariable(name: "this", arg: 1, scope: !3834, type: !2600, flags: DIFlagArtificial | DIFlagObjectPointer)
!3836 = !DILocation(line: 0, scope: !3834)
!3837 = !DILocalVariable(name: "__i", arg: 2, scope: !3834, file: !167, line: 1027, type: !1263)
!3838 = !DILocation(line: 1027, column: 42, scope: !3834)
!3839 = !DILocation(line: 1028, column: 9, scope: !3834)
!3840 = !DILocation(line: 1028, column: 20, scope: !3834)
!3841 = !DILocation(line: 1028, column: 27, scope: !3834)
!3842 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv", scope: !1188, file: !167, line: 1105, type: !1303, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1302, retainedNodes: !172)
!3843 = !DILocalVariable(name: "this", arg: 1, scope: !3842, type: !2565, flags: DIFlagArtificial | DIFlagObjectPointer)
!3844 = !DILocation(line: 0, scope: !3842)
!3845 = !DILocation(line: 1106, column: 16, scope: !3842)
!3846 = !DILocation(line: 1106, column: 9, scope: !3842)
!3847 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !47, file: !46, line: 97, type: !89, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !88, retainedNodes: !172)
!3848 = !DILocalVariable(name: "__a", arg: 1, scope: !3847, file: !46, line: 97, type: !91)
!3849 = !DILocation(line: 97, column: 61, scope: !3847)
!3850 = !DILocation(line: 98, column: 64, scope: !3847)
!3851 = !DILocation(line: 98, column: 14, scope: !3847)
!3852 = !DILocation(line: 98, column: 7, scope: !3847)
!3853 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !51, file: !52, line: 562, type: !84, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !83, retainedNodes: !172)
!3854 = !DILocalVariable(name: "__rhs", arg: 1, scope: !3853, file: !52, line: 562, type: !81)
!3855 = !DILocation(line: 562, column: 67, scope: !3853)
!3856 = !DILocation(line: 563, column: 16, scope: !3853)
!3857 = !DILocation(line: 563, column: 9, scope: !3853)
!3858 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv", scope: !1118, file: !167, line: 1105, type: !1182, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1181, retainedNodes: !172)
!3859 = !DILocalVariable(name: "this", arg: 1, scope: !3858, type: !2840, flags: DIFlagArtificial | DIFlagObjectPointer)
!3860 = !DILocation(line: 0, scope: !3858)
!3861 = !DILocation(line: 1106, column: 16, scope: !3858)
!3862 = !DILocation(line: 1106, column: 9, scope: !3858)
!3863 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEEC2ERKSA_", scope: !1308, file: !167, line: 1027, type: !1317, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1316, retainedNodes: !172)
!3864 = !DILocalVariable(name: "this", arg: 1, scope: !3863, type: !3024, flags: DIFlagArtificial | DIFlagObjectPointer)
!3865 = !DILocation(line: 0, scope: !3863)
!3866 = !DILocalVariable(name: "__i", arg: 2, scope: !3863, file: !167, line: 1027, type: !1319)
!3867 = !DILocation(line: 1027, column: 42, scope: !3863)
!3868 = !DILocation(line: 1028, column: 9, scope: !3863)
!3869 = !DILocation(line: 1028, column: 20, scope: !3863)
!3870 = !DILocation(line: 1028, column: 27, scope: !3863)
!3871 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESt6vectorIS8_SaIS8_EEE4baseEv", scope: !1308, file: !167, line: 1105, type: !1359, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1057, declaration: !1358, retainedNodes: !172)
!3872 = !DILocalVariable(name: "this", arg: 1, scope: !3871, type: !2993, flags: DIFlagArtificial | DIFlagObjectPointer)
!3873 = !DILocation(line: 0, scope: !3871)
!3874 = !DILocation(line: 1106, column: 16, scope: !3871)
!3875 = !DILocation(line: 1106, column: 9, scope: !3871)
!3876 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_Authorization.cpp", scope: !1529, file: !1529, type: !3877, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1057, retainedNodes: !172)
!3877 = !DISubroutineType(types: !172)
!3878 = !DILocation(line: 0, scope: !3876)
