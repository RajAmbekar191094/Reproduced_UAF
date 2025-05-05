; ModuleID = 'common/Log.cpp'
source_filename = "common/Log.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.Log::_end_marker" = type { i8 }
%"struct.Log::StaticHelper" = type <{ ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"struct.std::atomic.0", [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Poco::LocalDateTime" = type <{ %"class.Poco::DateTime", i32, [4 x i8] }>
%"class.Poco::DateTime" = type { i64, i16, i16, i16, i16, i16, i16, i16, i16 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"struct.std::_Setw" = type { i32 }
%"struct.std::_Setfill" = type { i8 }
%"class.Poco::AutoPtr" = type { ptr }
%"class.std::allocator" = type { i8 }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"class.Poco::Message" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, %"class.Poco::Timestamp", i64, %"class.std::__cxx11::basic_string", i64, ptr, i32, ptr }
%"class.Poco::Timestamp" = type { i64 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.Poco::Logger" = type <{ %"class.Poco::Channel.base", [4 x i8], %"class.std::__cxx11::basic_string", %"class.Poco::AutoPtr", i32, [4 x i8] }>
%"class.Poco::Channel.base" = type <{ %"class.Poco::Configurable", %"class.Poco::RefCountedObject.base" }>
%"class.Poco::Configurable" = type { ptr }
%"class.Poco::RefCountedObject.base" = type <{ ptr, %"class.Poco::AtomicCounter" }>
%"class.Poco::AtomicCounter" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.Poco::RefCountedObject" = type <{ ptr, %"class.Poco::AtomicCounter", [4 x i8] }>
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }

$_ZN3Log11_end_markerC2Ev = comdat any

$_ZN3Log12StaticHelperC2Ev = comdat any

$_ZN3Log12StaticHelperD2Ev = comdat any

$_ZNK3Log12StaticHelper9getInitedEv = comdat any

$_ZNK3Log12StaticHelper5getIdB5cxx11Ev = comdat any

$_ZN3Log14to_ascii_fixedILi6EEEvPcm = comdat any

$_ZN3Log14to_ascii_fixedILi5EEEvPcm = comdat any

$_ZN3Log14to_ascii_fixedILi4EEEvPcm = comdat any

$_ZNK4Poco13LocalDateTime4yearEv = comdat any

$_ZN3Log14to_ascii_fixedILi2EEEvPcm = comdat any

$_ZNK4Poco13LocalDateTime5monthEv = comdat any

$_ZNK4Poco13LocalDateTime3dayEv = comdat any

$_ZNK4Poco13LocalDateTime4hourEv = comdat any

$_ZNK4Poco13LocalDateTime6minuteEv = comdat any

$_ZNK4Poco13LocalDateTime6secondEv = comdat any

$_ZNK4Poco13LocalDateTime11millisecondEv = comdat any

$_ZNK4Poco13LocalDateTime11microsecondEv = comdat any

$_ZNK4Poco13LocalDateTime3tzdEv = comdat any

$_ZN3Log6prefixILi1023EEEPcS1_PKc = comdat any

$_ZN3Log12StaticHelper7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNK3Log12StaticHelper7getNameB5cxx11Ev = comdat any

$_ZSt4setwi = comdat any

$_ZSt7setfillIcESt8_SetfillIT_ES1_ = comdat any

$_ZN3Log12StaticHelper5setIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEEC2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5beginEv = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEEptEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEEC2ERKS2_ = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEED2Ev = comdat any

$_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE = comdat any

$__clang_call_terminate = comdat any

$_ZNK3Log12StaticHelper9getLoggerEv = comdat any

$_ZN3Log12StaticHelper8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNK4Poco6Logger8getLevelEv = comdat any

$_ZN3Log16isShutdownCalledEv = comdat any

$_ZNK4Poco6Logger11informationEv = comdat any

$_ZSt9boolalphaRSt8ios_base = comdat any

$_ZNK4Poco6Logger4nameB5cxx11Ev = comdat any

$_ZNK3Log12StaticHelper20getThreadLocalLoggerEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNSt7__cxx119to_stringEi = comdat any

$_ZN3Log12StaticHelper20setThreadLocalLoggerEPN4Poco6LoggerE = comdat any

$_ZNK3Log12StaticHelper8getLevelB5cxx11Ev = comdat any

$_ZNSt6atomicIbEC2Eb = comdat any

$_ZNSt13__atomic_baseIbEC2Eb = comdat any

$_ZNSt6atomicIbEaSEb = comdat any

$_ZNSt13__atomic_baseIbEaSEb = comdat any

$_ZStanSt12memory_orderSt23__memory_order_modifier = comdat any

$_ZNKSt6atomicIbEcvbEv = comdat any

$_ZNK4Poco8DateTime4yearEv = comdat any

$_ZNK4Poco8DateTime5monthEv = comdat any

$_ZNK4Poco8DateTime3dayEv = comdat any

$_ZNK4Poco8DateTime4hourEv = comdat any

$_ZNK4Poco8DateTime6minuteEv = comdat any

$_ZNK4Poco8DateTime6secondEv = comdat any

$_ZNK4Poco8DateTime11millisecondEv = comdat any

$_ZNK4Poco8DateTime11microsecondEv = comdat any

$_ZNSt8ios_base4setfESt13_Ios_Fmtflags = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt8__detail14__to_chars_lenIjEEjT_i = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_ = comdat any

$_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNK4Poco16RefCountedObject7releaseEv = comdat any

$_ZN4Poco13AtomicCountermmEv = comdat any

$_ZNSt13__atomic_baseIiEmmEv = comdat any

$_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNK4Poco16RefCountedObject9duplicateEv = comdat any

$_ZN4Poco13AtomicCounterppEv = comdat any

$_ZNSt13__atomic_baseIiEppEv = comdat any

$_ZTWN3Log12StaticHelper18_threadLocalLoggerE = comdat any

$_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZN3LogL3endE = internal global %"struct.Log::_end_marker" zeroinitializer, align 1, !dbg !7
@_ZN3LogL6StaticE = internal global %"struct.Log::StaticHelper" zeroinitializer, align 8, !dbg !18
@_ZN3Log12StaticHelper18_threadLocalLoggerE = dso_local thread_local global ptr null, align 8, !dbg !1261
@_ZN3Log10IsShutdownE = dso_local global i8 0, align 1, !dbg !1263
@.str = private unnamed_addr constant [11 x i8] c"<shutdown>\00", align 1, !dbg !1265
@.str.3 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1, !dbg !1270
@.str.4 = private unnamed_addr constant [12 x i8] c"coolwsd.log\00", align 1, !dbg !1275
@.str.5 = private unnamed_addr constant [11 x i8] c"traceColor\00", align 1, !dbg !1280
@.str.6 = private unnamed_addr constant [6 x i8] c"green\00", align 1, !dbg !1282
@.str.7 = private unnamed_addr constant [13 x i8] c"warningColor\00", align 1, !dbg !1287
@.str.8 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1, !dbg !1292
@_ZTIN4Poco15ExistsExceptionE = external constant ptr
@.str.9 = private unnamed_addr constant [6 x i8] c"trace\00", align 1, !dbg !1297
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1299
@.str.11 = private unnamed_addr constant [14 x i8] c"Initializing \00", align 1, !dbg !1304
@.str.12 = private unnamed_addr constant [11 x i8] c"%a %F %T%z\00", align 1, !dbg !1309
@.str.13 = private unnamed_addr constant [14 x i8] c" Local time: \00", align 1, !dbg !1311
@.str.14 = private unnamed_addr constant [16 x i8] c" Log level is [\00", align 1, !dbg !1313
@.str.15 = private unnamed_addr constant [3 x i8] c"].\00", align 1, !dbg !1316
@.str.16 = private unnamed_addr constant [4 x i8] c"INF\00", align 1, !dbg !1321
@.str.17 = private unnamed_addr constant [3 x i8] c"| \00", align 1, !dbg !1323
@.str.18 = private unnamed_addr constant [15 x i8] c"common/Log.cpp\00", align 1, !dbg !1325
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@stdout = external global ptr, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@stderr = external global ptr, align 8
@_ZZN3Log22setThreadLocalLogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7counter = internal global i32 1, align 4, !dbg !1330
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !1810
@_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = linkonce_odr dso_local constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 16, !dbg !1815
@.str.20 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1, !dbg !1828
@_ZTIN4Poco20NullPointerExceptionE = external constant ptr
@.str.21 = private unnamed_addr constant [37 x i8] c"/usr/include/Poco/RefCountedObject.h\00", align 1, !dbg !1833
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Log.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !2868 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !2869
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !2871
  ret void, !dbg !2869
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" !dbg !2872 {
  call void @_ZN3Log11_end_markerC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3LogL3endE), !dbg !2873
  ret void, !dbg !2873
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log11_end_markerC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !2875 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2876, metadata !DIExpression()), !dbg !2878
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2879
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" !dbg !2880 {
  call void @_ZN3Log12StaticHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !2881
  %1 = call i32 @__cxa_atexit(ptr @_ZN3Log12StaticHelperD2Ev, ptr @_ZN3LogL6StaticE, ptr @__dso_handle) #3, !dbg !2883
  ret void, !dbg !2881
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #4 comdat align 2 !dbg !2884 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2885, metadata !DIExpression()), !dbg !2887
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 0, !dbg !2888
  store ptr null, ptr %4, align 8, !dbg !2888
  %5 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 1, !dbg !2889
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !2889
  %6 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 2, !dbg !2889
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #3, !dbg !2889
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 3, !dbg !2889
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #3, !dbg !2889
  %8 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 4, !dbg !2890
  call void @_ZNSt6atomicIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %8, i1 noundef zeroext true) #3, !dbg !2890
  ret void, !dbg !2891
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #4 comdat align 2 !dbg !2892 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2894
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 4, !dbg !2895
  %5 = call noundef zeroext i1 @_ZNSt6atomicIbEaSEb(ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext false) #3, !dbg !2897
  %6 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 3, !dbg !2898
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #3, !dbg !2898
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 2, !dbg !2898
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #3, !dbg !2898
  %8 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 1, !dbg !2898
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #3, !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log9signalLogEPKc(ptr noundef %0) #5 !dbg !2900 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2901, metadata !DIExpression()), !dbg !2902
  br label %5, !dbg !2903

5:                                                ; preds = %1, %20, %33
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2904, metadata !DIExpression()), !dbg !2906
  %6 = load ptr, ptr %2, align 8, !dbg !2907
  %7 = call i64 @strlen(ptr noundef %6) #17, !dbg !2908
  %8 = trunc i64 %7 to i32, !dbg !2908
  store i32 %8, ptr %3, align 4, !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2909, metadata !DIExpression()), !dbg !2910
  %9 = load ptr, ptr %2, align 8, !dbg !2911
  %10 = load i32, ptr %3, align 4, !dbg !2912
  %11 = sext i32 %10 to i64, !dbg !2912
  %12 = call i64 @write(i32 noundef 2, ptr noundef %9, i64 noundef %11), !dbg !2913
  %13 = trunc i64 %12 to i32, !dbg !2913
  store i32 %13, ptr %4, align 4, !dbg !2910
  %14 = load i32, ptr %4, align 4, !dbg !2914
  %15 = icmp slt i32 %14, 0, !dbg !2916
  br i1 %15, label %16, label %22, !dbg !2917

16:                                               ; preds = %5
  %17 = call ptr @__errno_location() #18, !dbg !2918
  %18 = load i32, ptr %17, align 4, !dbg !2918
  %19 = icmp eq i32 %18, 4, !dbg !2921
  br i1 %19, label %20, label %21, !dbg !2922

20:                                               ; preds = %16
  br label %5, !dbg !2923, !llvm.loop !2924

21:                                               ; preds = %16
  br label %34, !dbg !2927

22:                                               ; preds = %5
  %23 = load i32, ptr %4, align 4, !dbg !2928
  %24 = load ptr, ptr %2, align 8, !dbg !2929
  %25 = sext i32 %23 to i64, !dbg !2929
  %26 = getelementptr inbounds i8, ptr %24, i64 %25, !dbg !2929
  store ptr %26, ptr %2, align 8, !dbg !2929
  %27 = load ptr, ptr %2, align 8, !dbg !2930
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !2930
  %29 = load i8, ptr %28, align 1, !dbg !2930
  %30 = sext i8 %29 to i32, !dbg !2930
  %31 = icmp eq i32 %30, 0, !dbg !2932
  br i1 %31, label %32, label %33, !dbg !2933

32:                                               ; preds = %22
  br label %34, !dbg !2934

33:                                               ; preds = %22
  br label %5, !dbg !2903, !llvm.loop !2924

34:                                               ; preds = %32, %21
  ret void, !dbg !2935
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log15signalLogNumberEm(i64 noundef %0) #5 !dbg !2936 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [22 x i8], align 16
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2943, metadata !DIExpression()), !dbg !2947
  %5 = getelementptr inbounds [22 x i8], ptr %4, i64 0, i64 21, !dbg !2948
  store i8 0, ptr %5, align 1, !dbg !2949
  store i32 20, ptr %3, align 4, !dbg !2950
  br label %6, !dbg !2952

6:                                                ; preds = %24, %1
  %7 = load i32, ptr %3, align 4, !dbg !2953
  %8 = icmp sgt i32 %7, 0, !dbg !2955
  br i1 %8, label %9, label %12, !dbg !2956

9:                                                ; preds = %6
  %10 = load i64, ptr %2, align 8, !dbg !2957
  %11 = icmp ugt i64 %10, 0, !dbg !2958
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ], !dbg !2959
  br i1 %13, label %14, label %27, !dbg !2960

14:                                               ; preds = %12
  %15 = load i64, ptr %2, align 8, !dbg !2961
  %16 = urem i64 %15, 10, !dbg !2963
  %17 = add i64 48, %16, !dbg !2964
  %18 = trunc i64 %17 to i8, !dbg !2965
  %19 = load i32, ptr %3, align 4, !dbg !2966
  %20 = sext i32 %19 to i64, !dbg !2967
  %21 = getelementptr inbounds [22 x i8], ptr %4, i64 0, i64 %20, !dbg !2967
  store i8 %18, ptr %21, align 1, !dbg !2968
  %22 = load i64, ptr %2, align 8, !dbg !2969
  %23 = udiv i64 %22, 10, !dbg !2969
  store i64 %23, ptr %2, align 8, !dbg !2969
  br label %24, !dbg !2970

24:                                               ; preds = %14
  %25 = load i32, ptr %3, align 4, !dbg !2971
  %26 = add nsw i32 %25, -1, !dbg !2971
  store i32 %26, ptr %3, align 4, !dbg !2971
  br label %6, !dbg !2972, !llvm.loop !2973

27:                                               ; preds = %12
  %28 = getelementptr inbounds [22 x i8], ptr %4, i64 0, i64 0, !dbg !2975
  %29 = load i32, ptr %3, align 4, !dbg !2976
  %30 = sext i32 %29 to i64, !dbg !2977
  %31 = getelementptr inbounds i8, ptr %28, i64 %30, !dbg !2977
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !2978
  call void @_ZN3Log9signalLogEPKc(ptr noundef %32), !dbg !2979
  ret void, !dbg !2980
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef ptr @_ZN3Log7strcopyEPKcPc(ptr noundef %0, ptr noundef %1) #9 !dbg !2981 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2984, metadata !DIExpression()), !dbg !2985
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !2987
  br label %5, !dbg !2988

5:                                                ; preds = %9, %2
  %6 = load ptr, ptr %3, align 8, !dbg !2989
  %7 = load i8, ptr %6, align 1, !dbg !2990
  %8 = icmp ne i8 %7, 0, !dbg !2990
  br i1 %8, label %9, label %15, !dbg !2988

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !2991
  %11 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !2991
  store ptr %11, ptr %3, align 8, !dbg !2991
  %12 = load i8, ptr %10, align 1, !dbg !2992
  %13 = load ptr, ptr %4, align 8, !dbg !2993
  %14 = getelementptr inbounds i8, ptr %13, i32 1, !dbg !2993
  store ptr %14, ptr %4, align 8, !dbg !2993
  store i8 %12, ptr %13, align 1, !dbg !2994
  br label %5, !dbg !2988, !llvm.loop !2995

15:                                               ; preds = %5
  %16 = load ptr, ptr %4, align 8, !dbg !2996
  ret ptr %16, !dbg !2997
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef ptr @_ZN3Log8to_asciiEPcm(ptr noundef %0, i64 noundef %1) #9 !dbg !2998 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3001, metadata !DIExpression()), !dbg !3002
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3005, metadata !DIExpression()), !dbg !3006
  store i32 0, ptr %5, align 4, !dbg !3006
  br label %9, !dbg !3007

9:                                                ; preds = %21, %2
  %10 = load i64, ptr %4, align 8, !dbg !3008
  %11 = urem i64 %10, 10, !dbg !3010
  %12 = add i64 48, %11, !dbg !3011
  %13 = trunc i64 %12 to i8, !dbg !3012
  %14 = load ptr, ptr %3, align 8, !dbg !3013
  %15 = load i32, ptr %5, align 4, !dbg !3014
  %16 = add nsw i32 %15, 1, !dbg !3014
  store i32 %16, ptr %5, align 4, !dbg !3014
  %17 = sext i32 %15 to i64, !dbg !3013
  %18 = getelementptr inbounds i8, ptr %14, i64 %17, !dbg !3013
  store i8 %13, ptr %18, align 1, !dbg !3015
  %19 = load i64, ptr %4, align 8, !dbg !3016
  %20 = udiv i64 %19, 10, !dbg !3016
  store i64 %20, ptr %4, align 8, !dbg !3016
  br label %21, !dbg !3017

21:                                               ; preds = %9
  %22 = load i64, ptr %4, align 8, !dbg !3018
  %23 = icmp ugt i64 %22, 0, !dbg !3019
  br i1 %23, label %9, label %24, !dbg !3017, !llvm.loop !3020

24:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3022, metadata !DIExpression()), !dbg !3024
  %25 = load ptr, ptr %3, align 8, !dbg !3025
  store ptr %25, ptr %6, align 8, !dbg !3024
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3026, metadata !DIExpression()), !dbg !3027
  %26 = load ptr, ptr %3, align 8, !dbg !3028
  %27 = load i32, ptr %5, align 4, !dbg !3029
  %28 = sext i32 %27 to i64, !dbg !3030
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !3030
  %30 = getelementptr inbounds i8, ptr %29, i64 -1, !dbg !3031
  store ptr %30, ptr %7, align 8, !dbg !3027
  br label %31, !dbg !3032

31:                                               ; preds = %43, %24
  %32 = load ptr, ptr %7, align 8, !dbg !3033
  %33 = load ptr, ptr %6, align 8, !dbg !3035
  %34 = icmp ugt ptr %32, %33, !dbg !3036
  br i1 %34, label %35, label %48, !dbg !3037

35:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3038, metadata !DIExpression()), !dbg !3040
  %36 = load ptr, ptr %6, align 8, !dbg !3041
  %37 = load i8, ptr %36, align 1, !dbg !3042
  store i8 %37, ptr %8, align 1, !dbg !3040
  %38 = load ptr, ptr %7, align 8, !dbg !3043
  %39 = load i8, ptr %38, align 1, !dbg !3044
  %40 = load ptr, ptr %6, align 8, !dbg !3045
  store i8 %39, ptr %40, align 1, !dbg !3046
  %41 = load i8, ptr %8, align 1, !dbg !3047
  %42 = load ptr, ptr %7, align 8, !dbg !3048
  store i8 %41, ptr %42, align 1, !dbg !3049
  br label %43, !dbg !3050

43:                                               ; preds = %35
  %44 = load ptr, ptr %6, align 8, !dbg !3051
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !3051
  store ptr %45, ptr %6, align 8, !dbg !3051
  %46 = load ptr, ptr %7, align 8, !dbg !3052
  %47 = getelementptr inbounds i8, ptr %46, i32 -1, !dbg !3052
  store ptr %47, ptr %7, align 8, !dbg !3052
  br label %31, !dbg !3053, !llvm.loop !3054

48:                                               ; preds = %31
  %49 = load ptr, ptr %3, align 8, !dbg !3056
  %50 = load i32, ptr %5, align 4, !dbg !3057
  %51 = sext i32 %50 to i64, !dbg !3058
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !3058
  ret ptr %52, !dbg !3059
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN3Log6prefixERKN4Poco13LocalDateTimeEPcPKc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2) #5 !dbg !3060 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3067, metadata !DIExpression()), !dbg !3068
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3069, metadata !DIExpression()), !dbg !3070
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3073, metadata !DIExpression()), !dbg !3074
  %10 = call noundef zeroext i1 @_ZNK3Log12StaticHelper9getInitedEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3075
  br i1 %10, label %11, label %14, !dbg !3076

11:                                               ; preds = %3
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper5getIdB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3077
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #3, !dbg !3078
  br label %15, !dbg !3076

14:                                               ; preds = %3
  br label %15, !dbg !3076

15:                                               ; preds = %14, %11
  %16 = phi ptr [ %13, %11 ], [ @.str, %14 ], !dbg !3076
  %17 = load ptr, ptr %5, align 8, !dbg !3079
  %18 = call noundef ptr @_ZN3Log7strcopyEPKcPc(ptr noundef %16, ptr noundef %17), !dbg !3080
  store ptr %18, ptr %7, align 8, !dbg !3074
  %19 = load ptr, ptr %7, align 8, !dbg !3081
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !3081
  store ptr %20, ptr %7, align 8, !dbg !3081
  store i8 45, ptr %19, align 1, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3083, metadata !DIExpression()), !dbg !3087
  %21 = call noundef i32 @_ZN4Util11getThreadIdEv(), !dbg !3088
  store i32 %21, ptr %8, align 4, !dbg !3087
  %22 = load i32, ptr %8, align 4, !dbg !3089
  %23 = icmp sgt i32 %22, 99999, !dbg !3091
  br i1 %23, label %24, label %39, !dbg !3092

24:                                               ; preds = %15
  %25 = load i32, ptr %8, align 4, !dbg !3093
  %26 = icmp sgt i32 %25, 999999, !dbg !3096
  br i1 %26, label %27, label %32, !dbg !3097

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !dbg !3098
  %29 = load i32, ptr %8, align 4, !dbg !3099
  %30 = sext i32 %29 to i64, !dbg !3099
  %31 = call noundef ptr @_ZN3Log8to_asciiEPcm(ptr noundef %28, i64 noundef %30), !dbg !3100
  store ptr %31, ptr %7, align 8, !dbg !3101
  br label %38, !dbg !3102

32:                                               ; preds = %24
  %33 = load ptr, ptr %7, align 8, !dbg !3103
  %34 = load i32, ptr %8, align 4, !dbg !3105
  %35 = sext i32 %34 to i64, !dbg !3105
  call void @_ZN3Log14to_ascii_fixedILi6EEEvPcm(ptr noundef %33, i64 noundef %35), !dbg !3106
  %36 = load ptr, ptr %7, align 8, !dbg !3107
  %37 = getelementptr inbounds i8, ptr %36, i64 6, !dbg !3107
  store ptr %37, ptr %7, align 8, !dbg !3107
  br label %38

38:                                               ; preds = %32, %27
  br label %45, !dbg !3108

39:                                               ; preds = %15
  %40 = load ptr, ptr %7, align 8, !dbg !3109
  %41 = load i32, ptr %8, align 4, !dbg !3111
  %42 = sext i32 %41 to i64, !dbg !3111
  call void @_ZN3Log14to_ascii_fixedILi5EEEvPcm(ptr noundef %40, i64 noundef %42), !dbg !3112
  %43 = load ptr, ptr %7, align 8, !dbg !3113
  %44 = getelementptr inbounds i8, ptr %43, i64 5, !dbg !3113
  store ptr %44, ptr %7, align 8, !dbg !3113
  br label %45

45:                                               ; preds = %39, %38
  %46 = load ptr, ptr %7, align 8, !dbg !3114
  %47 = getelementptr inbounds i8, ptr %46, i32 1, !dbg !3114
  store ptr %47, ptr %7, align 8, !dbg !3114
  store i8 32, ptr %46, align 1, !dbg !3115
  %48 = load ptr, ptr %7, align 8, !dbg !3116
  %49 = load ptr, ptr %4, align 8, !dbg !3117
  %50 = call noundef i32 @_ZNK4Poco13LocalDateTime4yearEv(ptr noundef nonnull align 8 dereferenceable(28) %49), !dbg !3118
  %51 = sext i32 %50 to i64, !dbg !3117
  call void @_ZN3Log14to_ascii_fixedILi4EEEvPcm(ptr noundef %48, i64 noundef %51), !dbg !3119
  %52 = load ptr, ptr %7, align 8, !dbg !3120
  %53 = getelementptr inbounds i8, ptr %52, i64 4, !dbg !3120
  store i8 45, ptr %53, align 1, !dbg !3121
  %54 = load ptr, ptr %7, align 8, !dbg !3122
  %55 = getelementptr inbounds i8, ptr %54, i64 5, !dbg !3122
  store ptr %55, ptr %7, align 8, !dbg !3122
  %56 = load ptr, ptr %7, align 8, !dbg !3123
  %57 = load ptr, ptr %4, align 8, !dbg !3124
  %58 = call noundef i32 @_ZNK4Poco13LocalDateTime5monthEv(ptr noundef nonnull align 8 dereferenceable(28) %57), !dbg !3125
  %59 = sext i32 %58 to i64, !dbg !3124
  call void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %56, i64 noundef %59), !dbg !3126
  %60 = load ptr, ptr %7, align 8, !dbg !3127
  %61 = getelementptr inbounds i8, ptr %60, i64 2, !dbg !3127
  store i8 45, ptr %61, align 1, !dbg !3128
  %62 = load ptr, ptr %7, align 8, !dbg !3129
  %63 = getelementptr inbounds i8, ptr %62, i64 3, !dbg !3129
  store ptr %63, ptr %7, align 8, !dbg !3129
  %64 = load ptr, ptr %7, align 8, !dbg !3130
  %65 = load ptr, ptr %4, align 8, !dbg !3131
  %66 = call noundef i32 @_ZNK4Poco13LocalDateTime3dayEv(ptr noundef nonnull align 8 dereferenceable(28) %65), !dbg !3132
  %67 = sext i32 %66 to i64, !dbg !3131
  call void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %64, i64 noundef %67), !dbg !3133
  %68 = load ptr, ptr %7, align 8, !dbg !3134
  %69 = getelementptr inbounds i8, ptr %68, i64 2, !dbg !3134
  store i8 32, ptr %69, align 1, !dbg !3135
  %70 = load ptr, ptr %7, align 8, !dbg !3136
  %71 = getelementptr inbounds i8, ptr %70, i64 3, !dbg !3136
  store ptr %71, ptr %7, align 8, !dbg !3136
  %72 = load ptr, ptr %7, align 8, !dbg !3137
  %73 = load ptr, ptr %4, align 8, !dbg !3138
  %74 = call noundef i32 @_ZNK4Poco13LocalDateTime4hourEv(ptr noundef nonnull align 8 dereferenceable(28) %73), !dbg !3139
  %75 = sext i32 %74 to i64, !dbg !3138
  call void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %72, i64 noundef %75), !dbg !3140
  %76 = load ptr, ptr %7, align 8, !dbg !3141
  %77 = getelementptr inbounds i8, ptr %76, i64 2, !dbg !3141
  store i8 58, ptr %77, align 1, !dbg !3142
  %78 = load ptr, ptr %7, align 8, !dbg !3143
  %79 = getelementptr inbounds i8, ptr %78, i64 3, !dbg !3143
  store ptr %79, ptr %7, align 8, !dbg !3143
  %80 = load ptr, ptr %7, align 8, !dbg !3144
  %81 = load ptr, ptr %4, align 8, !dbg !3145
  %82 = call noundef i32 @_ZNK4Poco13LocalDateTime6minuteEv(ptr noundef nonnull align 8 dereferenceable(28) %81), !dbg !3146
  %83 = sext i32 %82 to i64, !dbg !3145
  call void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %80, i64 noundef %83), !dbg !3147
  %84 = load ptr, ptr %7, align 8, !dbg !3148
  %85 = getelementptr inbounds i8, ptr %84, i64 2, !dbg !3148
  store i8 58, ptr %85, align 1, !dbg !3149
  %86 = load ptr, ptr %7, align 8, !dbg !3150
  %87 = getelementptr inbounds i8, ptr %86, i64 3, !dbg !3150
  store ptr %87, ptr %7, align 8, !dbg !3150
  %88 = load ptr, ptr %7, align 8, !dbg !3151
  %89 = load ptr, ptr %4, align 8, !dbg !3152
  %90 = call noundef i32 @_ZNK4Poco13LocalDateTime6secondEv(ptr noundef nonnull align 8 dereferenceable(28) %89), !dbg !3153
  %91 = sext i32 %90 to i64, !dbg !3152
  call void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %88, i64 noundef %91), !dbg !3154
  %92 = load ptr, ptr %7, align 8, !dbg !3155
  %93 = getelementptr inbounds i8, ptr %92, i64 2, !dbg !3155
  store i8 46, ptr %93, align 1, !dbg !3156
  %94 = load ptr, ptr %7, align 8, !dbg !3157
  %95 = getelementptr inbounds i8, ptr %94, i64 3, !dbg !3157
  store ptr %95, ptr %7, align 8, !dbg !3157
  %96 = load ptr, ptr %7, align 8, !dbg !3158
  %97 = load ptr, ptr %4, align 8, !dbg !3159
  %98 = call noundef i32 @_ZNK4Poco13LocalDateTime11millisecondEv(ptr noundef nonnull align 8 dereferenceable(28) %97), !dbg !3160
  %99 = mul nsw i32 %98, 1000, !dbg !3161
  %100 = load ptr, ptr %4, align 8, !dbg !3162
  %101 = call noundef i32 @_ZNK4Poco13LocalDateTime11microsecondEv(ptr noundef nonnull align 8 dereferenceable(28) %100), !dbg !3163
  %102 = add nsw i32 %99, %101, !dbg !3164
  %103 = sext i32 %102 to i64, !dbg !3159
  call void @_ZN3Log14to_ascii_fixedILi6EEEvPcm(ptr noundef %96, i64 noundef %103), !dbg !3165
  %104 = load ptr, ptr %7, align 8, !dbg !3166
  %105 = getelementptr inbounds i8, ptr %104, i64 6, !dbg !3166
  store i8 32, ptr %105, align 1, !dbg !3167
  %106 = load ptr, ptr %7, align 8, !dbg !3168
  %107 = getelementptr inbounds i8, ptr %106, i64 7, !dbg !3168
  store ptr %107, ptr %7, align 8, !dbg !3168
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3169, metadata !DIExpression()), !dbg !3170
  %108 = load ptr, ptr %4, align 8, !dbg !3171
  %109 = call noundef i32 @_ZNK4Poco13LocalDateTime3tzdEv(ptr noundef nonnull align 8 dereferenceable(28) %108), !dbg !3172
  store i32 %109, ptr %9, align 4, !dbg !3170
  %110 = load i32, ptr %9, align 4, !dbg !3173
  %111 = icmp slt i32 %110, 0, !dbg !3175
  br i1 %111, label %112, label %117, !dbg !3176

112:                                              ; preds = %45
  %113 = load ptr, ptr %7, align 8, !dbg !3177
  %114 = getelementptr inbounds i8, ptr %113, i64 0, !dbg !3177
  store i8 45, ptr %114, align 1, !dbg !3179
  %115 = load i32, ptr %9, align 4, !dbg !3180
  %116 = sub nsw i32 0, %115, !dbg !3181
  store i32 %116, ptr %9, align 4, !dbg !3182
  br label %120, !dbg !3183

117:                                              ; preds = %45
  %118 = load ptr, ptr %7, align 8, !dbg !3184
  %119 = getelementptr inbounds i8, ptr %118, i64 0, !dbg !3184
  store i8 43, ptr %119, align 1, !dbg !3186
  br label %120

120:                                              ; preds = %117, %112
  %121 = load ptr, ptr %7, align 8, !dbg !3187
  %122 = getelementptr inbounds i8, ptr %121, i64 1, !dbg !3187
  store ptr %122, ptr %7, align 8, !dbg !3187
  %123 = load i32, ptr %9, align 4, !dbg !3188
  %124 = sdiv i32 %123, 36, !dbg !3189
  %125 = load i32, ptr %9, align 4, !dbg !3190
  %126 = sdiv i32 %125, 36, !dbg !3191
  %127 = srem i32 %126, 100, !dbg !3192
  %128 = sub nsw i32 %124, %127, !dbg !3193
  %129 = load i32, ptr %9, align 4, !dbg !3194
  %130 = sdiv i32 %129, 36, !dbg !3195
  %131 = srem i32 %130, 100, !dbg !3196
  %132 = mul nsw i32 %131, 60, !dbg !3197
  %133 = sdiv i32 %132, 100, !dbg !3198
  %134 = add nsw i32 %128, %133, !dbg !3199
  store i32 %134, ptr %9, align 4, !dbg !3200
  %135 = load ptr, ptr %7, align 8, !dbg !3201
  %136 = load i32, ptr %9, align 4, !dbg !3202
  %137 = sext i32 %136 to i64, !dbg !3202
  call void @_ZN3Log14to_ascii_fixedILi4EEEvPcm(ptr noundef %135, i64 noundef %137), !dbg !3203
  %138 = load ptr, ptr %7, align 8, !dbg !3204
  %139 = getelementptr inbounds i8, ptr %138, i64 4, !dbg !3204
  store i8 32, ptr %139, align 1, !dbg !3205
  %140 = load ptr, ptr %7, align 8, !dbg !3206
  %141 = getelementptr inbounds i8, ptr %140, i64 5, !dbg !3206
  store ptr %141, ptr %7, align 8, !dbg !3206
  %142 = load ptr, ptr %7, align 8, !dbg !3207
  %143 = getelementptr inbounds i8, ptr %142, i64 0, !dbg !3207
  store i8 91, ptr %143, align 1, !dbg !3208
  %144 = load ptr, ptr %7, align 8, !dbg !3209
  %145 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !3209
  store i8 32, ptr %145, align 1, !dbg !3210
  %146 = load ptr, ptr %7, align 8, !dbg !3211
  %147 = getelementptr inbounds i8, ptr %146, i64 2, !dbg !3211
  store ptr %147, ptr %7, align 8, !dbg !3211
  %148 = call noundef ptr @_ZN4Util13getThreadNameEv(), !dbg !3212
  %149 = load ptr, ptr %7, align 8, !dbg !3213
  %150 = call noundef ptr @_ZN3Log7strcopyEPKcPc(ptr noundef %148, ptr noundef %149), !dbg !3214
  store ptr %150, ptr %7, align 8, !dbg !3215
  %151 = load ptr, ptr %7, align 8, !dbg !3216
  %152 = getelementptr inbounds i8, ptr %151, i64 0, !dbg !3216
  store i8 32, ptr %152, align 1, !dbg !3217
  %153 = load ptr, ptr %7, align 8, !dbg !3218
  %154 = getelementptr inbounds i8, ptr %153, i64 1, !dbg !3218
  store i8 93, ptr %154, align 1, !dbg !3219
  %155 = load ptr, ptr %7, align 8, !dbg !3220
  %156 = getelementptr inbounds i8, ptr %155, i64 2, !dbg !3220
  store i8 32, ptr %156, align 1, !dbg !3221
  %157 = load ptr, ptr %7, align 8, !dbg !3222
  %158 = getelementptr inbounds i8, ptr %157, i64 3, !dbg !3222
  store ptr %158, ptr %7, align 8, !dbg !3222
  %159 = load ptr, ptr %6, align 8, !dbg !3223
  %160 = load ptr, ptr %7, align 8, !dbg !3224
  %161 = call noundef ptr @_ZN3Log7strcopyEPKcPc(ptr noundef %159, ptr noundef %160), !dbg !3225
  store ptr %161, ptr %7, align 8, !dbg !3226
  %162 = load ptr, ptr %7, align 8, !dbg !3227
  %163 = getelementptr inbounds i8, ptr %162, i64 0, !dbg !3227
  store i8 32, ptr %163, align 1, !dbg !3228
  %164 = load ptr, ptr %7, align 8, !dbg !3229
  %165 = getelementptr inbounds i8, ptr %164, i64 1, !dbg !3229
  store i8 32, ptr %165, align 1, !dbg !3230
  %166 = load ptr, ptr %7, align 8, !dbg !3231
  %167 = getelementptr inbounds i8, ptr %166, i64 2, !dbg !3231
  store i8 0, ptr %167, align 1, !dbg !3232
  %168 = load ptr, ptr %5, align 8, !dbg !3233
  ret ptr %168, !dbg !3234
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3Log12StaticHelper9getInitedEv(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !3235 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3236, metadata !DIExpression()), !dbg !3238
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 4, !dbg !3239
  %5 = call noundef zeroext i1 @_ZNKSt6atomicIbEcvbEv(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !3239
  ret i1 %5, !dbg !3240
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper5getIdB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !3241 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3242, metadata !DIExpression()), !dbg !3243
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 3, !dbg !3244
  ret ptr %4, !dbg !3245
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

declare noundef i32 @_ZN4Util11getThreadIdEv() #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log14to_ascii_fixedILi6EEEvPcm(ptr noundef %0, i64 noundef %1) #9 comdat !dbg !3246 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3253, metadata !DIExpression()), !dbg !3254
  %5 = load i64, ptr %4, align 8, !dbg !3255
  %6 = urem i64 %5, 10, !dbg !3256
  %7 = add i64 48, %6, !dbg !3257
  %8 = trunc i64 %7 to i8, !dbg !3258
  %9 = load ptr, ptr %3, align 8, !dbg !3259
  %10 = getelementptr inbounds i8, ptr %9, i64 5, !dbg !3259
  store i8 %8, ptr %10, align 1, !dbg !3260
  %11 = load i64, ptr %4, align 8, !dbg !3261
  %12 = udiv i64 %11, 10, !dbg !3261
  store i64 %12, ptr %4, align 8, !dbg !3261
  %13 = load i64, ptr %4, align 8, !dbg !3264
  %14 = urem i64 %13, 10, !dbg !3265
  %15 = add i64 48, %14, !dbg !3266
  %16 = trunc i64 %15 to i8, !dbg !3267
  %17 = load ptr, ptr %3, align 8, !dbg !3268
  %18 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !3268
  store i8 %16, ptr %18, align 1, !dbg !3269
  %19 = load i64, ptr %4, align 8, !dbg !3270
  %20 = udiv i64 %19, 10, !dbg !3270
  store i64 %20, ptr %4, align 8, !dbg !3270
  %21 = load i64, ptr %4, align 8, !dbg !3273
  %22 = urem i64 %21, 10, !dbg !3274
  %23 = add i64 48, %22, !dbg !3275
  %24 = trunc i64 %23 to i8, !dbg !3276
  %25 = load ptr, ptr %3, align 8, !dbg !3277
  %26 = getelementptr inbounds i8, ptr %25, i64 3, !dbg !3277
  store i8 %24, ptr %26, align 1, !dbg !3278
  %27 = load i64, ptr %4, align 8, !dbg !3279
  %28 = udiv i64 %27, 10, !dbg !3279
  store i64 %28, ptr %4, align 8, !dbg !3279
  %29 = load i64, ptr %4, align 8, !dbg !3282
  %30 = urem i64 %29, 10, !dbg !3283
  %31 = add i64 48, %30, !dbg !3284
  %32 = trunc i64 %31 to i8, !dbg !3285
  %33 = load ptr, ptr %3, align 8, !dbg !3286
  %34 = getelementptr inbounds i8, ptr %33, i64 2, !dbg !3286
  store i8 %32, ptr %34, align 1, !dbg !3287
  %35 = load i64, ptr %4, align 8, !dbg !3288
  %36 = udiv i64 %35, 10, !dbg !3288
  store i64 %36, ptr %4, align 8, !dbg !3288
  %37 = load i64, ptr %4, align 8, !dbg !3291
  %38 = urem i64 %37, 10, !dbg !3292
  %39 = add i64 48, %38, !dbg !3293
  %40 = trunc i64 %39 to i8, !dbg !3294
  %41 = load ptr, ptr %3, align 8, !dbg !3295
  %42 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !3295
  store i8 %40, ptr %42, align 1, !dbg !3296
  %43 = load i64, ptr %4, align 8, !dbg !3297
  %44 = udiv i64 %43, 10, !dbg !3297
  store i64 %44, ptr %4, align 8, !dbg !3297
  %45 = load i64, ptr %4, align 8, !dbg !3300
  %46 = urem i64 %45, 10, !dbg !3301
  %47 = add i64 48, %46, !dbg !3302
  %48 = trunc i64 %47 to i8, !dbg !3303
  %49 = load ptr, ptr %3, align 8, !dbg !3304
  %50 = getelementptr inbounds i8, ptr %49, i64 0, !dbg !3304
  store i8 %48, ptr %50, align 1, !dbg !3305
  ret void, !dbg !3306
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log14to_ascii_fixedILi5EEEvPcm(ptr noundef %0, i64 noundef %1) #9 comdat !dbg !3307 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3310, metadata !DIExpression()), !dbg !3311
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3312, metadata !DIExpression()), !dbg !3313
  %5 = load i64, ptr %4, align 8, !dbg !3314
  %6 = urem i64 %5, 10, !dbg !3315
  %7 = add i64 48, %6, !dbg !3316
  %8 = trunc i64 %7 to i8, !dbg !3317
  %9 = load ptr, ptr %3, align 8, !dbg !3318
  %10 = getelementptr inbounds i8, ptr %9, i64 4, !dbg !3318
  store i8 %8, ptr %10, align 1, !dbg !3319
  %11 = load i64, ptr %4, align 8, !dbg !3320
  %12 = udiv i64 %11, 10, !dbg !3320
  store i64 %12, ptr %4, align 8, !dbg !3320
  %13 = load i64, ptr %4, align 8, !dbg !3323
  %14 = urem i64 %13, 10, !dbg !3324
  %15 = add i64 48, %14, !dbg !3325
  %16 = trunc i64 %15 to i8, !dbg !3326
  %17 = load ptr, ptr %3, align 8, !dbg !3327
  %18 = getelementptr inbounds i8, ptr %17, i64 3, !dbg !3327
  store i8 %16, ptr %18, align 1, !dbg !3328
  %19 = load i64, ptr %4, align 8, !dbg !3329
  %20 = udiv i64 %19, 10, !dbg !3329
  store i64 %20, ptr %4, align 8, !dbg !3329
  %21 = load i64, ptr %4, align 8, !dbg !3332
  %22 = urem i64 %21, 10, !dbg !3333
  %23 = add i64 48, %22, !dbg !3334
  %24 = trunc i64 %23 to i8, !dbg !3335
  %25 = load ptr, ptr %3, align 8, !dbg !3336
  %26 = getelementptr inbounds i8, ptr %25, i64 2, !dbg !3336
  store i8 %24, ptr %26, align 1, !dbg !3337
  %27 = load i64, ptr %4, align 8, !dbg !3338
  %28 = udiv i64 %27, 10, !dbg !3338
  store i64 %28, ptr %4, align 8, !dbg !3338
  %29 = load i64, ptr %4, align 8, !dbg !3341
  %30 = urem i64 %29, 10, !dbg !3342
  %31 = add i64 48, %30, !dbg !3343
  %32 = trunc i64 %31 to i8, !dbg !3344
  %33 = load ptr, ptr %3, align 8, !dbg !3345
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !3345
  store i8 %32, ptr %34, align 1, !dbg !3346
  %35 = load i64, ptr %4, align 8, !dbg !3347
  %36 = udiv i64 %35, 10, !dbg !3347
  store i64 %36, ptr %4, align 8, !dbg !3347
  %37 = load i64, ptr %4, align 8, !dbg !3350
  %38 = urem i64 %37, 10, !dbg !3351
  %39 = add i64 48, %38, !dbg !3352
  %40 = trunc i64 %39 to i8, !dbg !3353
  %41 = load ptr, ptr %3, align 8, !dbg !3354
  %42 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !3354
  store i8 %40, ptr %42, align 1, !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log14to_ascii_fixedILi4EEEvPcm(ptr noundef %0, i64 noundef %1) #9 comdat !dbg !3357 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3360, metadata !DIExpression()), !dbg !3361
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3362, metadata !DIExpression()), !dbg !3363
  %5 = load i64, ptr %4, align 8, !dbg !3364
  %6 = urem i64 %5, 10, !dbg !3365
  %7 = add i64 48, %6, !dbg !3366
  %8 = trunc i64 %7 to i8, !dbg !3367
  %9 = load ptr, ptr %3, align 8, !dbg !3368
  %10 = getelementptr inbounds i8, ptr %9, i64 3, !dbg !3368
  store i8 %8, ptr %10, align 1, !dbg !3369
  %11 = load i64, ptr %4, align 8, !dbg !3370
  %12 = udiv i64 %11, 10, !dbg !3370
  store i64 %12, ptr %4, align 8, !dbg !3370
  %13 = load i64, ptr %4, align 8, !dbg !3373
  %14 = urem i64 %13, 10, !dbg !3374
  %15 = add i64 48, %14, !dbg !3375
  %16 = trunc i64 %15 to i8, !dbg !3376
  %17 = load ptr, ptr %3, align 8, !dbg !3377
  %18 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !3377
  store i8 %16, ptr %18, align 1, !dbg !3378
  %19 = load i64, ptr %4, align 8, !dbg !3379
  %20 = udiv i64 %19, 10, !dbg !3379
  store i64 %20, ptr %4, align 8, !dbg !3379
  %21 = load i64, ptr %4, align 8, !dbg !3382
  %22 = urem i64 %21, 10, !dbg !3383
  %23 = add i64 48, %22, !dbg !3384
  %24 = trunc i64 %23 to i8, !dbg !3385
  %25 = load ptr, ptr %3, align 8, !dbg !3386
  %26 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !3386
  store i8 %24, ptr %26, align 1, !dbg !3387
  %27 = load i64, ptr %4, align 8, !dbg !3388
  %28 = udiv i64 %27, 10, !dbg !3388
  store i64 %28, ptr %4, align 8, !dbg !3388
  %29 = load i64, ptr %4, align 8, !dbg !3391
  %30 = urem i64 %29, 10, !dbg !3392
  %31 = add i64 48, %30, !dbg !3393
  %32 = trunc i64 %31 to i8, !dbg !3394
  %33 = load ptr, ptr %3, align 8, !dbg !3395
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !3395
  store i8 %32, ptr %34, align 1, !dbg !3396
  ret void, !dbg !3397
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime4yearEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3398 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3403, metadata !DIExpression()), !dbg !3405
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3406
  %5 = call noundef i32 @_ZNK4Poco8DateTime4yearEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3407
  ret i32 %5, !dbg !3408
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log14to_ascii_fixedILi2EEEvPcm(ptr noundef %0, i64 noundef %1) #9 comdat !dbg !3409 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3414, metadata !DIExpression()), !dbg !3415
  %5 = load i64, ptr %4, align 8, !dbg !3416
  %6 = urem i64 %5, 10, !dbg !3417
  %7 = add i64 48, %6, !dbg !3418
  %8 = trunc i64 %7 to i8, !dbg !3419
  %9 = load ptr, ptr %3, align 8, !dbg !3420
  %10 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !3420
  store i8 %8, ptr %10, align 1, !dbg !3421
  %11 = load i64, ptr %4, align 8, !dbg !3422
  %12 = udiv i64 %11, 10, !dbg !3422
  store i64 %12, ptr %4, align 8, !dbg !3422
  %13 = load i64, ptr %4, align 8, !dbg !3425
  %14 = urem i64 %13, 10, !dbg !3426
  %15 = add i64 48, %14, !dbg !3427
  %16 = trunc i64 %15 to i8, !dbg !3428
  %17 = load ptr, ptr %3, align 8, !dbg !3429
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !3429
  store i8 %16, ptr %18, align 1, !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime5monthEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3432 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3435
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3436
  %5 = call noundef i32 @_ZNK4Poco8DateTime5monthEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3437
  ret i32 %5, !dbg !3438
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime3dayEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3439 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3441, metadata !DIExpression()), !dbg !3442
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3443
  %5 = call noundef i32 @_ZNK4Poco8DateTime3dayEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3444
  ret i32 %5, !dbg !3445
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime4hourEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3446 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3449
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3450
  %5 = call noundef i32 @_ZNK4Poco8DateTime4hourEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3451
  ret i32 %5, !dbg !3452
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime6minuteEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3453 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3455, metadata !DIExpression()), !dbg !3456
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3457
  %5 = call noundef i32 @_ZNK4Poco8DateTime6minuteEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3458
  ret i32 %5, !dbg !3459
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime6secondEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3460 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3462, metadata !DIExpression()), !dbg !3463
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3464
  %5 = call noundef i32 @_ZNK4Poco8DateTime6secondEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3465
  ret i32 %5, !dbg !3466
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime11millisecondEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3467 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3469, metadata !DIExpression()), !dbg !3470
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3471
  %5 = call noundef i32 @_ZNK4Poco8DateTime11millisecondEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3472
  ret i32 %5, !dbg !3473
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime11microsecondEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #5 comdat align 2 !dbg !3474 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3476, metadata !DIExpression()), !dbg !3477
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 0, !dbg !3478
  %5 = call noundef i32 @_ZNK4Poco8DateTime11microsecondEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !dbg !3479
  ret i32 %5, !dbg !3480
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco13LocalDateTime3tzdEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #9 comdat align 2 !dbg !3481 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::LocalDateTime", ptr %3, i32 0, i32 1, !dbg !3485
  %5 = load i32, ptr %4, align 8, !dbg !3485
  ret i32 %5, !dbg !3486
}

declare noundef ptr @_ZN4Util13getThreadNameEv() #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log15signalLogPrefixEv() #5 !dbg !3487 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3492
  %2 = getelementptr inbounds [1024 x i8], ptr %1, i64 0, i64 0, !dbg !3493
  %3 = call noundef ptr @_ZN3Log6prefixILi1023EEEPcS1_PKc(ptr noundef %2, ptr noundef @.str.3), !dbg !3494
  %4 = getelementptr inbounds [1024 x i8], ptr %1, i64 0, i64 0, !dbg !3495
  call void @_ZN3Log9signalLogEPKc(ptr noundef %4), !dbg !3496
  ret void, !dbg !3497
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN3Log6prefixILi1023EEEPcS1_PKc(ptr noundef %0, ptr noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !3498 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.Poco::LocalDateTime", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3503, metadata !DIExpression()), !dbg !3504
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @_ZN4Poco13LocalDateTimeC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5), !dbg !3507
  %8 = load ptr, ptr %3, align 8, !dbg !3508
  %9 = load ptr, ptr %4, align 8, !dbg !3509
  %10 = invoke noundef ptr @_ZN3Log6prefixERKN4Poco13LocalDateTimeEPcPKc(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %8, ptr noundef %9)
          to label %11 unwind label %12, !dbg !3510

11:                                               ; preds = %2
  call void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #3, !dbg !3511
  ret ptr %10, !dbg !3511

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup, !dbg !3512
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !3512
  store ptr %14, ptr %6, align 8, !dbg !3512
  %15 = extractvalue { ptr, i32 } %13, 1, !dbg !3512
  store i32 %15, ptr %7, align 4, !dbg !3512
  call void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #3, !dbg !3511
  br label %16, !dbg !3511

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8, !dbg !3511
  %18 = load i32, ptr %7, align 4, !dbg !3511
  %19 = insertvalue { ptr, i32 } poison, ptr %17, 0, !dbg !3511
  %20 = insertvalue { ptr, i32 } %19, i32 %18, 1, !dbg !3511
  resume { ptr, i32 } %20, !dbg !3511
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_bbRKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(48) %4) #5 personality ptr @__gxx_personality_v0 !dbg !3513 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %"struct.std::_Setw", align 4
  %15 = alloca %"struct.std::_Setfill", align 1
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.Poco::AutoPtr", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca i1, align 1
  %21 = alloca ptr, align 8
  %22 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %23 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %24 = alloca ptr, align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::allocator", align 1
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::allocator", align 1
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::allocator", align 1
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::allocator", align 1
  %33 = alloca ptr, align 8
  %34 = alloca %"class.Poco::AutoPtr", align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca %"class.std::__cxx11::basic_string", align 8
  %39 = alloca %"class.std::allocator", align 1
  %40 = alloca i1, align 1
  %41 = alloca i64, align 8
  %42 = alloca %"class.std::__cxx11::basic_string", align 8
  %43 = alloca %"class.std::allocator", align 1
  %44 = alloca [32 x i8], align 16
  %45 = alloca ptr, align 8
  %46 = alloca [1024 x i8], align 16
  %47 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %48 = alloca %"class.std::__cxx11::basic_string", align 8
  %49 = alloca %"class.std::allocator", align 1
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca %"class.Poco::Message", align 8
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3520, metadata !DIExpression()), !dbg !3521
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3522, metadata !DIExpression()), !dbg !3523
  %53 = zext i1 %2 to i8
  store i8 %53, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3524, metadata !DIExpression()), !dbg !3525
  %54 = zext i1 %3 to i8
  store i8 %54, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3526, metadata !DIExpression()), !dbg !3527
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3528, metadata !DIExpression()), !dbg !3529
  %55 = load ptr, ptr %6, align 8, !dbg !3530
  call void @_ZN3Log12StaticHelper7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef nonnull align 8 dereferenceable(32) %55), !dbg !3531
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11), !dbg !3537
  %56 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE)
          to label %57 unwind label %114, !dbg !3538

57:                                               ; preds = %5
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %59 unwind label %114, !dbg !3539

59:                                               ; preds = %57
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 45)
          to label %61 unwind label %114, !dbg !3540

61:                                               ; preds = %59
  %62 = invoke i32 @_ZSt4setwi(i32 noundef 5)
          to label %63 unwind label %114, !dbg !3541

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"struct.std::_Setw", ptr %14, i32 0, i32 0, !dbg !3541
  store i32 %62, ptr %64, align 4, !dbg !3541
  %65 = getelementptr inbounds %"struct.std::_Setw", ptr %14, i32 0, i32 0, !dbg !3542
  %66 = load i32, ptr %65, align 4, !dbg !3542
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 %66)
          to label %68 unwind label %114, !dbg !3542

68:                                               ; preds = %63
  %69 = invoke i8 @_ZSt7setfillIcESt8_SetfillIT_ES1_(i8 noundef signext 48)
          to label %70 unwind label %114, !dbg !3543

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"struct.std::_Setfill", ptr %15, i32 0, i32 0, !dbg !3543
  store i8 %69, ptr %71, align 1, !dbg !3543
  %72 = getelementptr inbounds %"struct.std::_Setfill", ptr %15, i32 0, i32 0, !dbg !3544
  %73 = load i8, ptr %72, align 1, !dbg !3544
  %74 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %67, i8 %73)
          to label %75 unwind label %114, !dbg !3544

75:                                               ; preds = %70
  %76 = call i32 @getpid() #3, !dbg !3545
  %77 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef %76)
          to label %78 unwind label %114, !dbg !3546

78:                                               ; preds = %75
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %79 unwind label %114, !dbg !3547

79:                                               ; preds = %78
  invoke void @_ZN3Log12StaticHelper5setIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %80 unwind label %118, !dbg !3548

80:                                               ; preds = %79
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #3, !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3550, metadata !DIExpression()), !dbg !3551
  invoke void @_ZN4Poco7AutoPtrINS_7ChannelEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %81 unwind label %114, !dbg !3551

81:                                               ; preds = %80
  %82 = load i8, ptr %9, align 1, !dbg !3552
  %83 = trunc i8 %82 to i1, !dbg !3552
  br i1 %83, label %84, label %139, !dbg !3554

84:                                               ; preds = %81
  %85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 304) #19
          to label %86 unwind label %122, !dbg !3555, !heapallocsite !3557

86:                                               ; preds = %84
  store i1 true, ptr %20, align 1
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #3, !dbg !3559
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %87 unwind label %126, !dbg !3559

87:                                               ; preds = %86
  invoke void @_ZN4Poco11FileChannelC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304) %85, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %88 unwind label %130, !dbg !3560

88:                                               ; preds = %87
  store i1 false, ptr %20, align 1, !dbg !3555
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %85)
          to label %90 unwind label %130, !dbg !3561

90:                                               ; preds = %88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #3, !dbg !3562
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #3, !dbg !3562
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3563, metadata !DIExpression()), !dbg !3565
  %91 = load ptr, ptr %10, align 8, !dbg !3566
  store ptr %91, ptr %21, align 8, !dbg !3566
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3567, metadata !DIExpression()), !dbg !3565
  %92 = load ptr, ptr %21, align 8, !dbg !3569
  %93 = call ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %92) #3, !dbg !3569
  %94 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %22, i32 0, i32 0, !dbg !3569
  store ptr %93, ptr %94, align 8, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3570, metadata !DIExpression()), !dbg !3565
  %95 = load ptr, ptr %21, align 8, !dbg !3569
  %96 = call ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %95) #3, !dbg !3569
  %97 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %23, i32 0, i32 0, !dbg !3569
  store ptr %96, ptr %97, align 8, !dbg !3569
  br label %98, !dbg !3569

98:                                               ; preds = %112, %90
  %99 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %23) #3, !dbg !3569
  br i1 %99, label %100, label %138, !dbg !3569

100:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata ptr %24, metadata !3571, metadata !DIExpression()), !dbg !3573
  %101 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #3, !dbg !3574
  store ptr %101, ptr %24, align 8, !dbg !3573
  %102 = invoke noundef ptr @_ZN4Poco7AutoPtrINS_7ChannelEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %103 unwind label %122, !dbg !3575

103:                                              ; preds = %100
  %104 = load ptr, ptr %24, align 8, !dbg !3577
  %105 = getelementptr inbounds %"struct.std::pair", ptr %104, i32 0, i32 0, !dbg !3578
  %106 = load ptr, ptr %24, align 8, !dbg !3579
  %107 = getelementptr inbounds %"struct.std::pair", ptr %106, i32 0, i32 1, !dbg !3580
  %108 = load ptr, ptr %102, align 8, !dbg !3581
  %109 = getelementptr inbounds ptr, ptr %108, i64 2, !dbg !3581
  %110 = load ptr, ptr %109, align 8, !dbg !3581
  invoke void %110(ptr noundef nonnull align 8 dereferenceable(20) %102, ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull align 8 dereferenceable(32) %107)
          to label %111 unwind label %122, !dbg !3581

111:                                              ; preds = %103
  br label %112, !dbg !3582

112:                                              ; preds = %111
  %113 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #3, !dbg !3569
  br label %98, !dbg !3569, !llvm.loop !3583

114:                                              ; preds = %80, %78, %75, %70, %68, %63, %61, %59, %57, %5
  %115 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %116 = extractvalue { ptr, i32 } %115, 0, !dbg !3585
  store ptr %116, ptr %12, align 8, !dbg !3585
  %117 = extractvalue { ptr, i32 } %115, 1, !dbg !3585
  store i32 %117, ptr %13, align 4, !dbg !3585
  br label %397, !dbg !3585

118:                                              ; preds = %79
  %119 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %120 = extractvalue { ptr, i32 } %119, 0, !dbg !3585
  store ptr %120, ptr %12, align 8, !dbg !3585
  %121 = extractvalue { ptr, i32 } %119, 1, !dbg !3585
  store i32 %121, ptr %13, align 4, !dbg !3585
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #3, !dbg !3549
  br label %397, !dbg !3549

122:                                              ; preds = %243, %241, %209, %207, %199, %196, %155, %147, %145, %142, %103, %100, %84
  %123 = landingpad { ptr, i32 }
          cleanup, !dbg !3586
  %124 = extractvalue { ptr, i32 } %123, 0, !dbg !3586
  store ptr %124, ptr %12, align 8, !dbg !3586
  %125 = extractvalue { ptr, i32 } %123, 1, !dbg !3586
  store i32 %125, ptr %13, align 4, !dbg !3586
  br label %396, !dbg !3586

126:                                              ; preds = %86
  %127 = landingpad { ptr, i32 }
          cleanup, !dbg !3586
  %128 = extractvalue { ptr, i32 } %127, 0, !dbg !3586
  store ptr %128, ptr %12, align 8, !dbg !3586
  %129 = extractvalue { ptr, i32 } %127, 1, !dbg !3586
  store i32 %129, ptr %13, align 4, !dbg !3586
  br label %134, !dbg !3586

130:                                              ; preds = %88, %87
  %131 = landingpad { ptr, i32 }
          cleanup, !dbg !3586
  %132 = extractvalue { ptr, i32 } %131, 0, !dbg !3586
  store ptr %132, ptr %12, align 8, !dbg !3586
  %133 = extractvalue { ptr, i32 } %131, 1, !dbg !3586
  store i32 %133, ptr %13, align 4, !dbg !3586
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #3, !dbg !3562
  br label %134, !dbg !3562

134:                                              ; preds = %130, %126
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #3, !dbg !3562
  %135 = load i1, ptr %20, align 1, !dbg !3562
  br i1 %135, label %136, label %137, !dbg !3562

136:                                              ; preds = %134
  call void @_ZdlPv(ptr noundef %85) #20, !dbg !3562
  br label %137, !dbg !3562

137:                                              ; preds = %136, %134
  br label %396, !dbg !3562

138:                                              ; preds = %98
  br label %207, !dbg !3587

139:                                              ; preds = %81
  %140 = load i8, ptr %8, align 1, !dbg !3588
  %141 = trunc i8 %140 to i1, !dbg !3588
  br i1 %141, label %142, label %196, !dbg !3590

142:                                              ; preds = %139
  %143 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 72) #19
          to label %144 unwind label %122, !dbg !3591, !heapallocsite !3593

144:                                              ; preds = %142
  invoke void @_ZN4Poco19ColorConsoleChannelC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %143)
          to label %145 unwind label %164, !dbg !3595

145:                                              ; preds = %144
  %146 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %143)
          to label %147 unwind label %122, !dbg !3596

147:                                              ; preds = %145
  %148 = invoke noundef ptr @_ZN4Poco7AutoPtrINS_7ChannelEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %149 unwind label %122, !dbg !3597

149:                                              ; preds = %147
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #3, !dbg !3598
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %150 unwind label %168, !dbg !3598

150:                                              ; preds = %149
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %28) #3, !dbg !3599
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %151 unwind label %172, !dbg !3599

151:                                              ; preds = %150
  %152 = load ptr, ptr %148, align 8, !dbg !3600
  %153 = getelementptr inbounds ptr, ptr %152, i64 2, !dbg !3600
  %154 = load ptr, ptr %153, align 8, !dbg !3600
  invoke void %154(ptr noundef nonnull align 8 dereferenceable(20) %148, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %155 unwind label %176, !dbg !3600

155:                                              ; preds = %151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #3, !dbg !3597
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %28) #3, !dbg !3597
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #3, !dbg !3597
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #3, !dbg !3597
  %156 = invoke noundef ptr @_ZN4Poco7AutoPtrINS_7ChannelEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %157 unwind label %122, !dbg !3601

157:                                              ; preds = %155
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #3, !dbg !3602
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %158 unwind label %182, !dbg !3602

158:                                              ; preds = %157
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %32) #3, !dbg !3603
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %159 unwind label %186, !dbg !3603

159:                                              ; preds = %158
  %160 = load ptr, ptr %156, align 8, !dbg !3604
  %161 = getelementptr inbounds ptr, ptr %160, i64 2, !dbg !3604
  %162 = load ptr, ptr %161, align 8, !dbg !3604
  invoke void %162(ptr noundef nonnull align 8 dereferenceable(20) %156, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %163 unwind label %190, !dbg !3604

163:                                              ; preds = %159
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #3, !dbg !3601
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %32) #3, !dbg !3601
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #3, !dbg !3601
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #3, !dbg !3601
  br label %206, !dbg !3605

164:                                              ; preds = %144
  %165 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %166 = extractvalue { ptr, i32 } %165, 0, !dbg !3606
  store ptr %166, ptr %12, align 8, !dbg !3606
  %167 = extractvalue { ptr, i32 } %165, 1, !dbg !3606
  store i32 %167, ptr %13, align 4, !dbg !3606
  call void @_ZdlPv(ptr noundef %143) #20, !dbg !3591
  br label %396, !dbg !3591

168:                                              ; preds = %149
  %169 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %170 = extractvalue { ptr, i32 } %169, 0, !dbg !3606
  store ptr %170, ptr %12, align 8, !dbg !3606
  %171 = extractvalue { ptr, i32 } %169, 1, !dbg !3606
  store i32 %171, ptr %13, align 4, !dbg !3606
  br label %181, !dbg !3606

172:                                              ; preds = %150
  %173 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %174 = extractvalue { ptr, i32 } %173, 0, !dbg !3606
  store ptr %174, ptr %12, align 8, !dbg !3606
  %175 = extractvalue { ptr, i32 } %173, 1, !dbg !3606
  store i32 %175, ptr %13, align 4, !dbg !3606
  br label %180, !dbg !3606

176:                                              ; preds = %151
  %177 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %178 = extractvalue { ptr, i32 } %177, 0, !dbg !3606
  store ptr %178, ptr %12, align 8, !dbg !3606
  %179 = extractvalue { ptr, i32 } %177, 1, !dbg !3606
  store i32 %179, ptr %13, align 4, !dbg !3606
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #3, !dbg !3597
  br label %180, !dbg !3597

180:                                              ; preds = %176, %172
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %28) #3, !dbg !3597
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #3, !dbg !3597
  br label %181, !dbg !3597

181:                                              ; preds = %180, %168
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #3, !dbg !3597
  br label %396, !dbg !3597

182:                                              ; preds = %157
  %183 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %184 = extractvalue { ptr, i32 } %183, 0, !dbg !3606
  store ptr %184, ptr %12, align 8, !dbg !3606
  %185 = extractvalue { ptr, i32 } %183, 1, !dbg !3606
  store i32 %185, ptr %13, align 4, !dbg !3606
  br label %195, !dbg !3606

186:                                              ; preds = %158
  %187 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %188 = extractvalue { ptr, i32 } %187, 0, !dbg !3606
  store ptr %188, ptr %12, align 8, !dbg !3606
  %189 = extractvalue { ptr, i32 } %187, 1, !dbg !3606
  store i32 %189, ptr %13, align 4, !dbg !3606
  br label %194, !dbg !3606

190:                                              ; preds = %159
  %191 = landingpad { ptr, i32 }
          cleanup, !dbg !3606
  %192 = extractvalue { ptr, i32 } %191, 0, !dbg !3606
  store ptr %192, ptr %12, align 8, !dbg !3606
  %193 = extractvalue { ptr, i32 } %191, 1, !dbg !3606
  store i32 %193, ptr %13, align 4, !dbg !3606
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #3, !dbg !3601
  br label %194, !dbg !3601

194:                                              ; preds = %190, %186
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %32) #3, !dbg !3601
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #3, !dbg !3601
  br label %195, !dbg !3601

195:                                              ; preds = %194, %182
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %30) #3, !dbg !3601
  br label %396, !dbg !3601

196:                                              ; preds = %139
  %197 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #19
          to label %198 unwind label %122, !dbg !3607, !heapallocsite !3608

198:                                              ; preds = %196
  invoke void @_ZN4Poco14ConsoleChannelC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %197)
          to label %199 unwind label %202, !dbg !3609

199:                                              ; preds = %198
  %200 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %197)
          to label %201 unwind label %122, !dbg !3610

201:                                              ; preds = %199
  br label %206

202:                                              ; preds = %198
  %203 = landingpad { ptr, i32 }
          cleanup, !dbg !3611
  %204 = extractvalue { ptr, i32 } %203, 0, !dbg !3611
  store ptr %204, ptr %12, align 8, !dbg !3611
  %205 = extractvalue { ptr, i32 } %203, 1, !dbg !3611
  store i32 %205, ptr %13, align 4, !dbg !3611
  call void @_ZdlPv(ptr noundef %197) #20, !dbg !3607
  br label %396, !dbg !3607

206:                                              ; preds = %201, %163
  br label %207

207:                                              ; preds = %206, %138
  %208 = invoke noundef ptr @_ZN4Poco7AutoPtrINS_7ChannelEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %209 unwind label %122, !dbg !3612

209:                                              ; preds = %207
  %210 = load ptr, ptr %208, align 8, !dbg !3613
  %211 = getelementptr inbounds ptr, ptr %210, i64 4, !dbg !3613
  %212 = load ptr, ptr %211, align 8, !dbg !3613
  invoke void %212(ptr noundef nonnull align 8 dereferenceable(20) %208)
          to label %213 unwind label %122, !dbg !3613

213:                                              ; preds = %209
  call void @llvm.dbg.declare(metadata ptr %33, metadata !3614, metadata !DIExpression()), !dbg !3617
  %214 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE)
          to label %215 unwind label %221, !dbg !3618

215:                                              ; preds = %213
  invoke void @_ZN4Poco7AutoPtrINS_7ChannelEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %216 unwind label %221, !dbg !3619

216:                                              ; preds = %215
  %217 = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7AutoPtrINS_7ChannelEEEi(ptr noundef nonnull align 8 dereferenceable(32) %214, ptr noundef %34, i32 noundef 8)
          to label %218 unwind label %225, !dbg !3620

218:                                              ; preds = %216
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #3, !dbg !3620
  store ptr %217, ptr %33, align 8, !dbg !3617
  %219 = load ptr, ptr %33, align 8, !dbg !3621
  invoke void @_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef %219)
          to label %220 unwind label %221, !dbg !3622

220:                                              ; preds = %218
  br label %243, !dbg !3623

221:                                              ; preds = %218, %215, %213
  %222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Poco15ExistsExceptionE, !dbg !3624
  %223 = extractvalue { ptr, i32 } %222, 0, !dbg !3624
  store ptr %223, ptr %12, align 8, !dbg !3624
  %224 = extractvalue { ptr, i32 } %222, 1, !dbg !3624
  store i32 %224, ptr %13, align 4, !dbg !3624
  br label %229, !dbg !3624

225:                                              ; preds = %216
  %226 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Poco15ExistsExceptionE, !dbg !3624
  %227 = extractvalue { ptr, i32 } %226, 0, !dbg !3624
  store ptr %227, ptr %12, align 8, !dbg !3624
  %228 = extractvalue { ptr, i32 } %226, 1, !dbg !3624
  store i32 %228, ptr %13, align 4, !dbg !3624
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #3, !dbg !3620
  br label %229, !dbg !3620

229:                                              ; preds = %225, %221
  %230 = load i32, ptr %13, align 4, !dbg !3623
  %231 = call i32 @llvm.eh.typeid.for(ptr @_ZTIN4Poco15ExistsExceptionE) #3, !dbg !3623
  %232 = icmp eq i32 %230, %231, !dbg !3623
  br i1 %232, label %233, label %396, !dbg !3623

233:                                              ; preds = %229
  call void @llvm.dbg.declare(metadata ptr %35, metadata !3625, metadata !DIExpression()), !dbg !3629
  %234 = load ptr, ptr %12, align 8, !dbg !3623
  %235 = call ptr @__cxa_begin_catch(ptr %234) #3, !dbg !3623
  store ptr %235, ptr %35, align 8, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %36, metadata !3630, metadata !DIExpression()), !dbg !3632
  %236 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE)
          to label %237 unwind label %287, !dbg !3633

237:                                              ; preds = %233
  %238 = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %236)
          to label %239 unwind label %287, !dbg !3634

239:                                              ; preds = %237
  store ptr %238, ptr %36, align 8, !dbg !3632
  %240 = load ptr, ptr %36, align 8, !dbg !3635
  invoke void @_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef %240)
          to label %241 unwind label %287, !dbg !3636

241:                                              ; preds = %239
  invoke void @__cxa_end_catch()
          to label %242 unwind label %122, !dbg !3637

242:                                              ; preds = %241
  br label %243, !dbg !3637

243:                                              ; preds = %242, %220
  call void @llvm.dbg.declare(metadata ptr %37, metadata !3638, metadata !DIExpression()), !dbg !3639
  %244 = invoke noundef ptr @_ZNK3Log12StaticHelper9getLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE)
          to label %245 unwind label %122, !dbg !3640

245:                                              ; preds = %243
  store ptr %244, ptr %37, align 8, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %38, metadata !3641, metadata !DIExpression()), !dbg !3642
  %246 = load ptr, ptr %7, align 8, !dbg !3643
  %247 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %246) #3, !dbg !3644
  store i1 false, ptr %40, align 1
  br i1 %247, label %248, label %250, !dbg !3643

248:                                              ; preds = %245
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %39) #3, !dbg !3645
  store i1 true, ptr %40, align 1, !dbg !3645
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %249 unwind label %292, !dbg !3645

249:                                              ; preds = %248
  br label %253, !dbg !3643

250:                                              ; preds = %245
  %251 = load ptr, ptr %7, align 8, !dbg !3646
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %251)
          to label %252 unwind label %292, !dbg !3646

252:                                              ; preds = %250
  br label %253, !dbg !3643

253:                                              ; preds = %252, %249
  %254 = load i1, ptr %40, align 1, !dbg !3643
  br i1 %254, label %255, label %256, !dbg !3643

255:                                              ; preds = %253
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %39) #3, !dbg !3643
  br label %256, !dbg !3643

256:                                              ; preds = %255, %253
  %257 = load ptr, ptr %37, align 8, !dbg !3647
  invoke void @_ZN4Poco6Logger8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %257, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %258 unwind label %299, !dbg !3648

258:                                              ; preds = %256
  invoke void @_ZN3Log12StaticHelper8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %259 unwind label %299, !dbg !3649

259:                                              ; preds = %258
  call void @llvm.dbg.declare(metadata ptr %41, metadata !3650, metadata !DIExpression()), !dbg !3651
  %260 = call i64 @time(ptr noundef null) #3, !dbg !3652
  store i64 %260, ptr %41, align 8, !dbg !3651
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %43) #3, !dbg !3653
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %261 unwind label %303, !dbg !3653

261:                                              ; preds = %259
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %262 unwind label %307, !dbg !3654

262:                                              ; preds = %261
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #3, !dbg !3655
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %43) #3, !dbg !3655
  %263 = load ptr, ptr %11, align 8, !dbg !3656
  %264 = getelementptr i8, ptr %263, i64 -24, !dbg !3656
  %265 = load i64, ptr %264, align 8, !dbg !3656
  %266 = getelementptr inbounds i8, ptr %11, i64 %265, !dbg !3656
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %266, i32 noundef 0)
          to label %267 unwind label %299, !dbg !3657

267:                                              ; preds = %262
  %268 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef @.str.11)
          to label %269 unwind label %299, !dbg !3658

269:                                              ; preds = %267
  %270 = load ptr, ptr %6, align 8, !dbg !3659
  %271 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %268, ptr noundef nonnull align 8 dereferenceable(32) %270)
          to label %272 unwind label %299, !dbg !3660

272:                                              ; preds = %269
  %273 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %271, i8 noundef signext 46)
          to label %274 unwind label %299, !dbg !3661

274:                                              ; preds = %272
  call void @llvm.dbg.declare(metadata ptr %44, metadata !3662, metadata !DIExpression()), !dbg !3666
  %275 = getelementptr inbounds [32 x i8], ptr %44, i64 0, i64 0, !dbg !3667
  %276 = call ptr @localtime(ptr noundef %41) #3, !dbg !3669
  %277 = call i64 @strftime(ptr noundef %275, i64 noundef 32, ptr noundef @.str.12, ptr noundef %276) #3, !dbg !3670
  %278 = icmp ugt i64 %277, 0, !dbg !3671
  br i1 %278, label %279, label %312, !dbg !3672

279:                                              ; preds = %274
  %280 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef @.str.13)
          to label %281 unwind label %299, !dbg !3673

281:                                              ; preds = %279
  %282 = getelementptr inbounds [32 x i8], ptr %44, i64 0, i64 0, !dbg !3675
  %283 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %280, ptr noundef %282)
          to label %284 unwind label %299, !dbg !3676

284:                                              ; preds = %281
  %285 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %283, i8 noundef signext 46)
          to label %286 unwind label %299, !dbg !3677

286:                                              ; preds = %284
  br label %312, !dbg !3678

287:                                              ; preds = %239, %237, %233
  %288 = landingpad { ptr, i32 }
          cleanup, !dbg !3679
  %289 = extractvalue { ptr, i32 } %288, 0, !dbg !3679
  store ptr %289, ptr %12, align 8, !dbg !3679
  %290 = extractvalue { ptr, i32 } %288, 1, !dbg !3679
  store i32 %290, ptr %13, align 4, !dbg !3679
  invoke void @__cxa_end_catch()
          to label %291 unwind label %403, !dbg !3637

291:                                              ; preds = %287
  br label %396, !dbg !3637

292:                                              ; preds = %250, %248
  %293 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %294 = extractvalue { ptr, i32 } %293, 0, !dbg !3585
  store ptr %294, ptr %12, align 8, !dbg !3585
  %295 = extractvalue { ptr, i32 } %293, 1, !dbg !3585
  store i32 %295, ptr %13, align 4, !dbg !3585
  %296 = load i1, ptr %40, align 1, !dbg !3643
  br i1 %296, label %297, label %298, !dbg !3643

297:                                              ; preds = %292
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %39) #3, !dbg !3643
  br label %298, !dbg !3643

298:                                              ; preds = %297, %292
  br label %396, !dbg !3643

299:                                              ; preds = %331, %327, %324, %322, %319, %317, %314, %312, %284, %281, %279, %272, %269, %267, %262, %258, %256
  %300 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %301 = extractvalue { ptr, i32 } %300, 0, !dbg !3585
  store ptr %301, ptr %12, align 8, !dbg !3585
  %302 = extractvalue { ptr, i32 } %300, 1, !dbg !3585
  store i32 %302, ptr %13, align 4, !dbg !3585
  br label %395, !dbg !3585

303:                                              ; preds = %259
  %304 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %305 = extractvalue { ptr, i32 } %304, 0, !dbg !3585
  store ptr %305, ptr %12, align 8, !dbg !3585
  %306 = extractvalue { ptr, i32 } %304, 1, !dbg !3585
  store i32 %306, ptr %13, align 4, !dbg !3585
  br label %311, !dbg !3585

307:                                              ; preds = %261
  %308 = landingpad { ptr, i32 }
          cleanup, !dbg !3585
  %309 = extractvalue { ptr, i32 } %308, 0, !dbg !3585
  store ptr %309, ptr %12, align 8, !dbg !3585
  %310 = extractvalue { ptr, i32 } %308, 1, !dbg !3585
  store i32 %310, ptr %13, align 4, !dbg !3585
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #3, !dbg !3655
  br label %311, !dbg !3655

311:                                              ; preds = %307, %303
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %43) #3, !dbg !3655
  br label %395, !dbg !3655

312:                                              ; preds = %286, %274
  %313 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef @.str.14)
          to label %314 unwind label %299, !dbg !3680

314:                                              ; preds = %312
  %315 = load ptr, ptr %37, align 8, !dbg !3681
  %316 = invoke noundef i32 @_ZNK4Poco6Logger8getLevelEv(ptr noundef nonnull align 8 dereferenceable(68) %315)
          to label %317 unwind label %299, !dbg !3682

317:                                              ; preds = %314
  %318 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %313, i32 noundef %316)
          to label %319 unwind label %299, !dbg !3683

319:                                              ; preds = %317
  %320 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %318, ptr noundef @.str.15)
          to label %321 unwind label %299, !dbg !3684

321:                                              ; preds = %319
  br label %322, !dbg !3685

322:                                              ; preds = %321
  call void @llvm.dbg.declare(metadata ptr %45, metadata !3686, metadata !DIExpression()), !dbg !3688
  %323 = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN3Log6loggerEv()
          to label %324 unwind label %299, !dbg !3688

324:                                              ; preds = %322
  store ptr %323, ptr %45, align 8, !dbg !3688
  %325 = invoke noundef zeroext i1 @_ZN3Log16isShutdownCalledEv()
          to label %326 unwind label %299, !dbg !3689

326:                                              ; preds = %324
  br i1 %325, label %392, label %327, !dbg !3689

327:                                              ; preds = %326
  %328 = load ptr, ptr %45, align 8, !dbg !3689
  %329 = invoke noundef zeroext i1 @_ZNK4Poco6Logger11informationEv(ptr noundef nonnull align 8 dereferenceable(68) %328)
          to label %330 unwind label %299, !dbg !3689

330:                                              ; preds = %327
  br i1 %329, label %331, label %392, !dbg !3688

331:                                              ; preds = %330
  call void @llvm.dbg.declare(metadata ptr %46, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %47, metadata !3694, metadata !DIExpression()), !dbg !3693
  %332 = getelementptr inbounds [1024 x i8], ptr %46, i64 0, i64 0, !dbg !3693
  %333 = invoke noundef ptr @_ZN3Log6prefixILi1023EEEPcS1_PKc(ptr noundef %332, ptr noundef @.str.16)
          to label %334 unwind label %299, !dbg !3693

334:                                              ; preds = %331
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %49) #3, !dbg !3693
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %333, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %335 unwind label %365, !dbg !3693

335:                                              ; preds = %334
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %47, ptr noundef nonnull align 8 dereferenceable(32) %48, i32 noundef 2)
          to label %336 unwind label %369, !dbg !3693

336:                                              ; preds = %335
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #3, !dbg !3693
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %49) #3, !dbg !3693
  %337 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @_ZSt9boolalphaRSt8ios_base)
          to label %338 unwind label %374, !dbg !3693

338:                                              ; preds = %336
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %339 unwind label %374, !dbg !3693

339:                                              ; preds = %338
  %340 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %337, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %341 unwind label %378, !dbg !3693

341:                                              ; preds = %339
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %50) #3, !dbg !3693
  br label %342, !dbg !3693

342:                                              ; preds = %341
  %343 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @.str.17)
          to label %344 unwind label %374, !dbg !3695

344:                                              ; preds = %342
  %345 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %343, ptr noundef @.str.18)
          to label %346 unwind label %374, !dbg !3695

346:                                              ; preds = %344
  %347 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %345, i8 noundef signext 58)
          to label %348 unwind label %374, !dbg !3695

348:                                              ; preds = %346
  %349 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %347, i32 noundef 384)
          to label %350 unwind label %374, !dbg !3695

350:                                              ; preds = %348
  %351 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %352 unwind label %374, !dbg !3698

352:                                              ; preds = %350
  br label %353, !dbg !3698

353:                                              ; preds = %352
  br label %354, !dbg !3698

354:                                              ; preds = %353
  %355 = load ptr, ptr %45, align 8, !dbg !3693
  %356 = load ptr, ptr %45, align 8, !dbg !3693
  %357 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Poco6Logger4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(68) %356)
          to label %358 unwind label %374, !dbg !3693

358:                                              ; preds = %354
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 8 dereferenceable(112) %47)
          to label %359 unwind label %374, !dbg !3693

359:                                              ; preds = %358
  invoke void @_ZN4Poco7MessageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8PriorityE(ptr noundef nonnull align 8 dereferenceable(152) %51, ptr noundef nonnull align 8 dereferenceable(32) %357, ptr noundef nonnull align 8 dereferenceable(32) %52, i32 noundef 6)
          to label %360 unwind label %382, !dbg !3693

360:                                              ; preds = %359
  %361 = load ptr, ptr %355, align 8, !dbg !3693
  %362 = getelementptr inbounds ptr, ptr %361, i64 6, !dbg !3693
  %363 = load ptr, ptr %362, align 8, !dbg !3693
  invoke void %363(ptr noundef nonnull align 8 dereferenceable(68) %355, ptr noundef nonnull align 8 dereferenceable(152) %51)
          to label %364 unwind label %386, !dbg !3693

364:                                              ; preds = %360
  call void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %51) #3, !dbg !3693
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %52) #3, !dbg !3693
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %47) #3, !dbg !3689
  br label %392, !dbg !3693

365:                                              ; preds = %334
  %366 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %367 = extractvalue { ptr, i32 } %366, 0, !dbg !3699
  store ptr %367, ptr %12, align 8, !dbg !3699
  %368 = extractvalue { ptr, i32 } %366, 1, !dbg !3699
  store i32 %368, ptr %13, align 4, !dbg !3699
  br label %373, !dbg !3699

369:                                              ; preds = %335
  %370 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %371 = extractvalue { ptr, i32 } %370, 0, !dbg !3699
  store ptr %371, ptr %12, align 8, !dbg !3699
  %372 = extractvalue { ptr, i32 } %370, 1, !dbg !3699
  store i32 %372, ptr %13, align 4, !dbg !3699
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #3, !dbg !3693
  br label %373, !dbg !3693

373:                                              ; preds = %369, %365
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %49) #3, !dbg !3693
  br label %395, !dbg !3693

374:                                              ; preds = %358, %354, %350, %348, %346, %344, %342, %338, %336
  %375 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %376 = extractvalue { ptr, i32 } %375, 0, !dbg !3699
  store ptr %376, ptr %12, align 8, !dbg !3699
  %377 = extractvalue { ptr, i32 } %375, 1, !dbg !3699
  store i32 %377, ptr %13, align 4, !dbg !3699
  br label %391, !dbg !3699

378:                                              ; preds = %339
  %379 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %380 = extractvalue { ptr, i32 } %379, 0, !dbg !3699
  store ptr %380, ptr %12, align 8, !dbg !3699
  %381 = extractvalue { ptr, i32 } %379, 1, !dbg !3699
  store i32 %381, ptr %13, align 4, !dbg !3699
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %50) #3, !dbg !3693
  br label %391, !dbg !3693

382:                                              ; preds = %359
  %383 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %384 = extractvalue { ptr, i32 } %383, 0, !dbg !3699
  store ptr %384, ptr %12, align 8, !dbg !3699
  %385 = extractvalue { ptr, i32 } %383, 1, !dbg !3699
  store i32 %385, ptr %13, align 4, !dbg !3699
  br label %390, !dbg !3699

386:                                              ; preds = %360
  %387 = landingpad { ptr, i32 }
          cleanup, !dbg !3699
  %388 = extractvalue { ptr, i32 } %387, 0, !dbg !3699
  store ptr %388, ptr %12, align 8, !dbg !3699
  %389 = extractvalue { ptr, i32 } %387, 1, !dbg !3699
  store i32 %389, ptr %13, align 4, !dbg !3699
  call void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %51) #3, !dbg !3693
  br label %390, !dbg !3693

390:                                              ; preds = %386, %382
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %52) #3, !dbg !3693
  br label %391, !dbg !3693

391:                                              ; preds = %390, %378, %374
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %47) #3, !dbg !3689
  br label %395, !dbg !3689

392:                                              ; preds = %364, %330, %326
  br label %393, !dbg !3688

393:                                              ; preds = %392
  br label %394, !dbg !3688

394:                                              ; preds = %393
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #3, !dbg !3585
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #3, !dbg !3585
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #3, !dbg !3585
  ret void, !dbg !3585

395:                                              ; preds = %391, %373, %311, %299
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #3, !dbg !3585
  br label %396, !dbg !3585

396:                                              ; preds = %395, %298, %291, %229, %202, %195, %181, %164, %137, %122
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #3, !dbg !3585
  br label %397, !dbg !3585

397:                                              ; preds = %396, %118, %114
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #3, !dbg !3585
  br label %398, !dbg !3585

398:                                              ; preds = %397
  %399 = load ptr, ptr %12, align 8, !dbg !3585
  %400 = load i32, ptr %13, align 4, !dbg !3585
  %401 = insertvalue { ptr, i32 } poison, ptr %399, 0, !dbg !3585
  %402 = insertvalue { ptr, i32 } %401, i32 %400, 1, !dbg !3585
  resume { ptr, i32 } %402, !dbg !3585

403:                                              ; preds = %287
  %404 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3637
  %405 = extractvalue { ptr, i32 } %404, 0, !dbg !3637
  call void @__clang_call_terminate(ptr %405) #21, !dbg !3637
  unreachable, !dbg !3637
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelper7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #5 comdat align 2 !dbg !3700 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3702
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3703, metadata !DIExpression()), !dbg !3704
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3705
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %5, i32 0, i32 1, !dbg !3706
  %8 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6), !dbg !3707
  ret void, !dbg !3708
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !3709 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3710, metadata !DIExpression()), !dbg !3711
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 1, !dbg !3712
  ret ptr %4, !dbg !3713
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E(ptr noundef nonnull align 8 dereferenceable(8), i8) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(ptr noundef nonnull align 8 dereferenceable(8), i32) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZSt4setwi(i32 noundef %0) #9 comdat !dbg !3714 {
  %2 = alloca %"struct.std::_Setw", align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  %4 = getelementptr inbounds %"struct.std::_Setw", ptr %2, i32 0, i32 0, !dbg !3723
  %5 = load i32, ptr %3, align 4, !dbg !3724
  store i32 %5, ptr %4, align 4, !dbg !3723
  %6 = getelementptr inbounds %"struct.std::_Setw", ptr %2, i32 0, i32 0, !dbg !3725
  %7 = load i32, ptr %6, align 4, !dbg !3725
  ret i32 %7, !dbg !3725
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8 @_ZSt7setfillIcESt8_SetfillIT_ES1_(i8 noundef signext %0) #9 comdat !dbg !3726 {
  %2 = alloca %"struct.std::_Setfill", align 1
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3732, metadata !DIExpression()), !dbg !3733
  %4 = getelementptr inbounds %"struct.std::_Setfill", ptr %2, i32 0, i32 0, !dbg !3734
  %5 = load i8, ptr %3, align 1, !dbg !3735
  store i8 %5, ptr %4, align 1, !dbg !3734
  %6 = getelementptr inbounds %"struct.std::_Setfill", ptr %2, i32 0, i32 0, !dbg !3736
  %7 = load i8, ptr %6, align 1, !dbg !3736
  ret i8 %7, !dbg !3736
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelper5setIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #5 comdat align 2 !dbg !3737 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3738, metadata !DIExpression()), !dbg !3739
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3741
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3742
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %5, i32 0, i32 3, !dbg !3743
  %8 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6), !dbg !3744
  ret void, !dbg !3745
}

declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4Poco7AutoPtrINS_7ChannelEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !3746 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3747, metadata !DIExpression()), !dbg !3749
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %3, i32 0, i32 0, !dbg !3750
  store ptr null, ptr %4, align 8, !dbg !3750
  ret void, !dbg !3751
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3752 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  %11 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3758, metadata !DIExpression()), !dbg !3760
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3761, metadata !DIExpression()), !dbg !3762
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3763, metadata !DIExpression()), !dbg !3764
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i32 0, i32 0, !dbg !3765
  %14 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %12), !dbg !3766
  %15 = load ptr, ptr %6, align 8, !dbg !3767
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15), !dbg !3765
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3768, metadata !DIExpression()), !dbg !3770
  %16 = load ptr, ptr %5, align 8, !dbg !3771
  %17 = icmp ne ptr %16, null, !dbg !3771
  br i1 %17, label %18, label %24, !dbg !3771

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8, !dbg !3772
  %20 = load ptr, ptr %5, align 8, !dbg !3773
  %21 = invoke noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %20)
          to label %22 unwind label %30, !dbg !3774

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !3775
  br label %25, !dbg !3771

24:                                               ; preds = %3
  br label %25, !dbg !3771

25:                                               ; preds = %24, %22
  %26 = phi ptr [ %23, %22 ], [ inttoptr (i64 1 to ptr), %24 ], !dbg !3771
  store ptr %26, ptr %7, align 8, !dbg !3770
  %27 = load ptr, ptr %5, align 8, !dbg !3776
  %28 = load ptr, ptr %7, align 8, !dbg !3777
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %30, !dbg !3778

29:                                               ; preds = %25
  ret void, !dbg !3779

30:                                               ; preds = %25, %18
  %31 = landingpad { ptr, i32 }
          cleanup, !dbg !3780
  %32 = extractvalue { ptr, i32 } %31, 0, !dbg !3780
  store ptr %32, ptr %8, align 8, !dbg !3780
  %33 = extractvalue { ptr, i32 } %31, 1, !dbg !3780
  store i32 %33, ptr %9, align 4, !dbg !3780
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #3, !dbg !3780
  br label %34, !dbg !3780

34:                                               ; preds = %30
  %35 = load ptr, ptr %8, align 8, !dbg !3780
  %36 = load i32, ptr %9, align 4, !dbg !3780
  %37 = insertvalue { ptr, i32 } poison, ptr %35, 0, !dbg !3780
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1, !dbg !3780
  resume { ptr, i32 } %38, !dbg !3780
}

declare void @_ZN4Poco11FileChannelC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #5 comdat align 2 !dbg !3781 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3782, metadata !DIExpression()), !dbg !3783
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3785
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3786
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6), !dbg !3787
  ret ptr %7, !dbg !3788
}

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9 comdat align 2 !dbg !3789 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3794, metadata !DIExpression()), !dbg !3796
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::map", ptr %4, i32 0, i32 0, !dbg !3797
  %6 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #3, !dbg !3798
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !3798
  store ptr %6, ptr %7, align 8, !dbg !3798
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !3799
  %9 = load ptr, ptr %8, align 8, !dbg !3799
  ret ptr %9, !dbg !3799
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9 comdat align 2 !dbg !3800 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3802, metadata !DIExpression()), !dbg !3803
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::map", ptr %4, i32 0, i32 0, !dbg !3804
  %6 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #3, !dbg !3805
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !3805
  store ptr %6, ptr %7, align 8, !dbg !3805
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !3806
  %9 = load ptr, ptr %8, align 8, !dbg !3806
  ret ptr %9, !dbg !3806
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat !dbg !3807 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3812, metadata !DIExpression()), !dbg !3813
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3814, metadata !DIExpression()), !dbg !3815
  %5 = load ptr, ptr %3, align 8, !dbg !3816
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !3817
  %7 = load ptr, ptr %6, align 8, !dbg !3817
  %8 = load ptr, ptr %4, align 8, !dbg !3818
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %8, i32 0, i32 0, !dbg !3819
  %10 = load ptr, ptr %9, align 8, !dbg !3819
  %11 = icmp ne ptr %7, %10, !dbg !3820
  ret i1 %11, !dbg !3821
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3822 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3823, metadata !DIExpression()), !dbg !3825
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !3826
  %5 = load ptr, ptr %4, align 8, !dbg !3826
  %6 = invoke noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %7 unwind label %8, !dbg !3827

7:                                                ; preds = %1
  ret ptr %6, !dbg !3828

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3827
  %10 = extractvalue { ptr, i32 } %9, 0, !dbg !3827
  call void @__clang_call_terminate(ptr %10) #21, !dbg !3827
  unreachable, !dbg !3827
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Poco7AutoPtrINS_7ChannelEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3829 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3830, metadata !DIExpression()), !dbg !3831
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !3832
  %7 = load ptr, ptr %6, align 8, !dbg !3832
  %8 = icmp ne ptr %7, null, !dbg !3832
  br i1 %8, label %9, label %12, !dbg !3834

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !3835
  %11 = load ptr, ptr %10, align 8, !dbg !3835
  ret ptr %11, !dbg !3836

12:                                               ; preds = %1
  %13 = call ptr @__cxa_allocate_exception(i64 56) #3, !dbg !3837
  invoke void @_ZN4Poco20NullPointerExceptionC1Ei(ptr noundef nonnull align 8 dereferenceable(52) %13, i32 noundef 0)
          to label %14 unwind label %15, !dbg !3838

14:                                               ; preds = %12
  call void @__cxa_throw(ptr %13, ptr @_ZTIN4Poco20NullPointerExceptionE, ptr @_ZN4Poco20NullPointerExceptionD1Ev) #22, !dbg !3837
  unreachable, !dbg !3837

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup, !dbg !3839
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !3839
  store ptr %17, ptr %3, align 8, !dbg !3839
  %18 = extractvalue { ptr, i32 } %16, 1, !dbg !3839
  store i32 %18, ptr %4, align 4, !dbg !3839
  call void @__cxa_free_exception(ptr %13) #3, !dbg !3837
  br label %19, !dbg !3837

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !dbg !3837
  %21 = load i32, ptr %4, align 4, !dbg !3837
  %22 = insertvalue { ptr, i32 } poison, ptr %20, 0, !dbg !3837
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1, !dbg !3837
  resume { ptr, i32 } %23, !dbg !3837
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 comdat align 2 !dbg !3840 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3841, metadata !DIExpression()), !dbg !3843
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !3844
  %5 = load ptr, ptr %4, align 8, !dbg !3844
  %6 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %5) #17, !dbg !3845
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !3846
  store ptr %6, ptr %7, align 8, !dbg !3847
  ret ptr %3, !dbg !3848
}

declare void @_ZN4Poco19ColorConsoleChannelC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare void @_ZN4Poco14ConsoleChannelC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7AutoPtrINS_7ChannelEEEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Poco7AutoPtrINS_7ChannelEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 !dbg !3849 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3850, metadata !DIExpression()), !dbg !3851
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3852, metadata !DIExpression()), !dbg !3853
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !3854
  %7 = load ptr, ptr %4, align 8, !dbg !3855
  %8 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %7, i32 0, i32 0, !dbg !3856
  %9 = load ptr, ptr %8, align 8, !dbg !3856
  store ptr %9, ptr %6, align 8, !dbg !3854
  %10 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !3857
  %11 = load ptr, ptr %10, align 8, !dbg !3857
  %12 = icmp ne ptr %11, null, !dbg !3857
  br i1 %12, label %13, label %17, !dbg !3860

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !3861
  %15 = load ptr, ptr %14, align 8, !dbg !3861
  %16 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !3862
  call void @_ZNK4Poco16RefCountedObject9duplicateEv(ptr noundef nonnull align 8 dereferenceable(12) %16), !dbg !3862
  br label %17, !dbg !3861

17:                                               ; preds = %13, %2
  ret void, !dbg !3863
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !3864 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3865, metadata !DIExpression()), !dbg !3866
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %3, i32 0, i32 0, !dbg !3867
  %5 = load ptr, ptr %4, align 8, !dbg !3867
  %6 = icmp ne ptr %5, null, !dbg !3867
  br i1 %6, label %7, label %11, !dbg !3870

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %3, i32 0, i32 0, !dbg !3871
  %9 = load ptr, ptr %8, align 8, !dbg !3871
  %10 = getelementptr inbounds i8, ptr %9, i64 8, !dbg !3872
  call void @_ZNK4Poco16RefCountedObject7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #3, !dbg !3872
  br label %11, !dbg !3871

11:                                               ; preds = %7, %1
  ret void, !dbg !3873
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %1) #9 comdat align 2 !dbg !3874 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3875, metadata !DIExpression()), !dbg !3876
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3877, metadata !DIExpression()), !dbg !3878
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3879
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %5, i32 0, i32 0, !dbg !3880
  store ptr %6, ptr %7, align 8, !dbg !3881
  ret void, !dbg !3882
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare ptr @__cxa_begin_catch(ptr)

declare noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #14 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3Log12StaticHelper9getLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !3883 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3884, metadata !DIExpression()), !dbg !3885
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 0, !dbg !3886
  %5 = load ptr, ptr %4, align 8, !dbg !3886
  ret ptr %5, !dbg !3887
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN4Poco6Logger8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelper8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #5 comdat align 2 !dbg !3888 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3889, metadata !DIExpression()), !dbg !3890
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3891, metadata !DIExpression()), !dbg !3892
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3893
  %7 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %5, i32 0, i32 2, !dbg !3894
  %8 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6), !dbg !3895
  ret void, !dbg !3896
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco6Logger8getLevelEv(ptr noundef nonnull align 8 dereferenceable(68) %0) #9 comdat align 2 !dbg !3897 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3903, metadata !DIExpression()), !dbg !3905
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::Logger", ptr %3, i32 0, i32 4, !dbg !3906
  %5 = load i32, ptr %4, align 8, !dbg !3906
  ret i32 %5, !dbg !3907
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZN3Log6loggerEv() #5 personality ptr @__gxx_personality_v0 !dbg !3908 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3911, metadata !DIExpression()), !dbg !3912
  %7 = call noundef ptr @_ZNK3Log12StaticHelper20getThreadLocalLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3913
  store ptr %7, ptr %2, align 8, !dbg !3912
  %8 = load ptr, ptr %2, align 8, !dbg !3914
  %9 = icmp ne ptr %8, null, !dbg !3916
  br i1 %9, label %10, label %12, !dbg !3917

10:                                               ; preds = %0
  %11 = load ptr, ptr %2, align 8, !dbg !3918
  store ptr %11, ptr %1, align 8, !dbg !3919
  br label %38, !dbg !3919

12:                                               ; preds = %0
  %13 = call noundef ptr @_ZNK3Log12StaticHelper9getLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3920
  store ptr %13, ptr %2, align 8, !dbg !3921
  %14 = load ptr, ptr %2, align 8, !dbg !3922
  %15 = icmp ne ptr %14, null, !dbg !3922
  store i1 false, ptr %4, align 1
  br i1 %15, label %16, label %18, !dbg !3922

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 8, !dbg !3923
  br label %26, !dbg !3922

18:                                               ; preds = %12
  %19 = call noundef zeroext i1 @_ZNK3Log12StaticHelper9getInitedEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3924
  br i1 %19, label %20, label %22, !dbg !3925

20:                                               ; preds = %18
  %21 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3926
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %21), !dbg !3927
  br label %23, !dbg !3925

22:                                               ; preds = %18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #3, !dbg !3928
  br label %23, !dbg !3925

23:                                               ; preds = %22, %20
  store i1 true, ptr %4, align 1, !dbg !3925
  %24 = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %25 unwind label %31, !dbg !3929

25:                                               ; preds = %23
  br label %26, !dbg !3922

26:                                               ; preds = %25, %16
  %27 = phi ptr [ %17, %16 ], [ %24, %25 ], !dbg !3922
  store ptr %27, ptr %1, align 8, !dbg !3930
  %28 = load i1, ptr %4, align 1, !dbg !3930
  br i1 %28, label %29, label %30, !dbg !3930

29:                                               ; preds = %26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #3, !dbg !3930
  br label %30, !dbg !3930

30:                                               ; preds = %29, %26
  br label %38, !dbg !3930

31:                                               ; preds = %23
  %32 = landingpad { ptr, i32 }
          cleanup, !dbg !3931
  %33 = extractvalue { ptr, i32 } %32, 0, !dbg !3931
  store ptr %33, ptr %5, align 8, !dbg !3931
  %34 = extractvalue { ptr, i32 } %32, 1, !dbg !3931
  store i32 %34, ptr %6, align 4, !dbg !3931
  %35 = load i1, ptr %4, align 1, !dbg !3930
  br i1 %35, label %36, label %37, !dbg !3930

36:                                               ; preds = %31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #3, !dbg !3930
  br label %37, !dbg !3930

37:                                               ; preds = %36, %31
  br label %40, !dbg !3930

38:                                               ; preds = %30, %10
  %39 = load ptr, ptr %1, align 8, !dbg !3931
  ret ptr %39, !dbg !3931

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 8, !dbg !3930
  %42 = load i32, ptr %6, align 4, !dbg !3930
  %43 = insertvalue { ptr, i32 } poison, ptr %41, 0, !dbg !3930
  %44 = insertvalue { ptr, i32 } %43, i32 %42, 1, !dbg !3930
  resume { ptr, i32 } %44, !dbg !3930
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3Log16isShutdownCalledEv() #9 comdat !dbg !3932 {
  %1 = load i8, ptr @_ZN3Log10IsShutdownE, align 1, !dbg !3933
  %2 = trunc i8 %1 to i1, !dbg !3933
  ret i1 %2, !dbg !3934
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4Poco6Logger11informationEv(ptr noundef nonnull align 8 dereferenceable(68) %0) #9 comdat align 2 !dbg !3935 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3939, metadata !DIExpression()), !dbg !3940
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::Logger", ptr %3, i32 0, i32 4, !dbg !3941
  %5 = load i32, ptr %4, align 8, !dbg !3941
  %6 = icmp sge i32 %5, 6, !dbg !3942
  ret i1 %6, !dbg !3943
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZSt9boolalphaRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %0) #5 comdat !dbg !3944 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3948, metadata !DIExpression()), !dbg !3949
  %3 = load ptr, ptr %2, align 8, !dbg !3950
  %4 = call noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %3, i32 noundef 1), !dbg !3951
  %5 = load ptr, ptr %2, align 8, !dbg !3952
  ret ptr %5, !dbg !3953
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Poco6Logger4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #9 comdat align 2 !dbg !3954 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3958, metadata !DIExpression()), !dbg !3959
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::Logger", ptr %3, i32 0, i32 2, !dbg !3960
  ret ptr %4, !dbg !3961
}

declare void @_ZN4Poco7MessageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8PriorityE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4Poco7MessageD1Ev(ptr noundef nonnull align 8 dereferenceable(152)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3Log12StaticHelper20getThreadLocalLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !3962 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3963, metadata !DIExpression()), !dbg !3964
  %3 = load ptr, ptr %2, align 8
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN3Log12StaticHelper18_threadLocalLoggerE), !dbg !3965
  %5 = load ptr, ptr %4, align 8, !dbg !3965
  ret ptr %5, !dbg !3966
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log8shutdownEv() #5 !dbg !3967 {
  store i8 1, ptr @_ZN3Log10IsShutdownE, align 1, !dbg !3968
  call void @_ZN4Poco6Logger8shutdownEv(), !dbg !3969
  %1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !dbg !3970
  %2 = load ptr, ptr @stdout, align 8, !dbg !3971
  %3 = call i32 @fflush(ptr noundef %2), !dbg !3972
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr), !dbg !3973
  %5 = load ptr, ptr @stderr, align 8, !dbg !3974
  %6 = call i32 @fflush(ptr noundef %5), !dbg !3975
  ret void, !dbg !3976
}

declare void @_ZN4Poco6Logger8shutdownEv() #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3Log22setThreadLocalLogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) #5 personality ptr @__gxx_personality_v0 !dbg !1332 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.Poco::AutoPtr", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.Poco::AutoPtr", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3977, metadata !DIExpression()), !dbg !3978
  %11 = call noundef ptr @_ZNK3Log12StaticHelper9getLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3979
  %12 = icmp ne ptr %11, null, !dbg !3981
  br i1 %12, label %14, label %13, !dbg !3982

13:                                               ; preds = %1
  br label %31, !dbg !3983

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3985, metadata !DIExpression()), !dbg !3987
  %15 = call noundef ptr @_ZNK3Log12StaticHelper9getLoggerEv(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !3988
  call void @_ZNK4Poco6Logger10getChannelEv(ptr sret(%"class.Poco::AutoPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(68) %15), !dbg !3989
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3990, metadata !DIExpression()), !dbg !3991
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE)
          to label %17 unwind label %32, !dbg !3992

17:                                               ; preds = %14
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef @.str.19)
          to label %18 unwind label %32, !dbg !3993

18:                                               ; preds = %17
  %19 = load i32, ptr @_ZZN3Log22setThreadLocalLogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7counter, align 4, !dbg !3994
  %20 = add nsw i32 %19, 1, !dbg !3994
  store i32 %20, ptr @_ZZN3Log22setThreadLocalLogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7counter, align 4, !dbg !3994
  invoke void @_ZNSt7__cxx119to_stringEi(ptr sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %19)
          to label %21 unwind label %36, !dbg !3995

21:                                               ; preds = %18
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %22 unwind label %40, !dbg !3996

22:                                               ; preds = %21
  invoke void @_ZN4Poco7AutoPtrINS_7ChannelEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %44, !dbg !3997

23:                                               ; preds = %22
  %24 = load ptr, ptr %2, align 8, !dbg !3998
  %25 = invoke noundef i32 @_ZN4Poco6Logger10parseLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %26 unwind label %48, !dbg !3999

26:                                               ; preds = %23
  %27 = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN4Poco6Logger6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7AutoPtrINS_7ChannelEEEi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %10, i32 noundef %25)
          to label %28 unwind label %48, !dbg !4000

28:                                               ; preds = %26
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #3, !dbg !4000
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !4000
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #3, !dbg !4000
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #3, !dbg !4000
  store ptr %27, ptr %4, align 8, !dbg !3991
  %29 = load ptr, ptr %4, align 8, !dbg !4001
  invoke void @_ZN3Log12StaticHelper20setThreadLocalLoggerEPN4Poco6LoggerE(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE, ptr noundef %29)
          to label %30 unwind label %32, !dbg !4002

30:                                               ; preds = %28
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #3, !dbg !4003
  br label %31, !dbg !4003

31:                                               ; preds = %30, %13
  ret void, !dbg !4003

32:                                               ; preds = %28, %17, %14
  %33 = landingpad { ptr, i32 }
          cleanup, !dbg !4003
  %34 = extractvalue { ptr, i32 } %33, 0, !dbg !4003
  store ptr %34, ptr %7, align 8, !dbg !4003
  %35 = extractvalue { ptr, i32 } %33, 1, !dbg !4003
  store i32 %35, ptr %8, align 4, !dbg !4003
  br label %55, !dbg !4003

36:                                               ; preds = %18
  %37 = landingpad { ptr, i32 }
          cleanup, !dbg !4003
  %38 = extractvalue { ptr, i32 } %37, 0, !dbg !4003
  store ptr %38, ptr %7, align 8, !dbg !4003
  %39 = extractvalue { ptr, i32 } %37, 1, !dbg !4003
  store i32 %39, ptr %8, align 4, !dbg !4003
  br label %54, !dbg !4003

40:                                               ; preds = %21
  %41 = landingpad { ptr, i32 }
          cleanup, !dbg !4003
  %42 = extractvalue { ptr, i32 } %41, 0, !dbg !4003
  store ptr %42, ptr %7, align 8, !dbg !4003
  %43 = extractvalue { ptr, i32 } %41, 1, !dbg !4003
  store i32 %43, ptr %8, align 4, !dbg !4003
  br label %53, !dbg !4003

44:                                               ; preds = %22
  %45 = landingpad { ptr, i32 }
          cleanup, !dbg !4003
  %46 = extractvalue { ptr, i32 } %45, 0, !dbg !4003
  store ptr %46, ptr %7, align 8, !dbg !4003
  %47 = extractvalue { ptr, i32 } %45, 1, !dbg !4003
  store i32 %47, ptr %8, align 4, !dbg !4003
  br label %52, !dbg !4003

48:                                               ; preds = %26, %23
  %49 = landingpad { ptr, i32 }
          cleanup, !dbg !4003
  %50 = extractvalue { ptr, i32 } %49, 0, !dbg !4003
  store ptr %50, ptr %7, align 8, !dbg !4003
  %51 = extractvalue { ptr, i32 } %49, 1, !dbg !4003
  store i32 %51, ptr %8, align 4, !dbg !4003
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #3, !dbg !4000
  br label %52, !dbg !4000

52:                                               ; preds = %48, %44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #3, !dbg !4000
  br label %53, !dbg !4000

53:                                               ; preds = %52, %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #3, !dbg !4000
  br label %54, !dbg !4000

54:                                               ; preds = %53, %36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #3, !dbg !4000
  br label %55, !dbg !4000

55:                                               ; preds = %54, %32
  call void @_ZN4Poco7AutoPtrINS_7ChannelEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #3, !dbg !4003
  br label %56, !dbg !4003

56:                                               ; preds = %55
  %57 = load ptr, ptr %7, align 8, !dbg !4003
  %58 = load i32, ptr %8, align 4, !dbg !4003
  %59 = insertvalue { ptr, i32 } poison, ptr %57, 0, !dbg !4003
  %60 = insertvalue { ptr, i32 } %59, i32 %58, 1, !dbg !4003
  resume { ptr, i32 } %60, !dbg !4003
}

declare void @_ZNK4Poco6Logger10getChannelEv(ptr sret(%"class.Poco::AutoPtr") align 8, ptr noundef nonnull align 8 dereferenceable(68)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #5 comdat !dbg !4004 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4009, metadata !DIExpression()), !dbg !4010
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4011, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4013, metadata !DIExpression()), !dbg !4014
  store i8 0, ptr %7, align 1, !dbg !4014
  store i8 1, ptr %7, align 1, !dbg !4015
  %9 = load i8, ptr %7, align 1, !dbg !4017
  %10 = trunc i8 %9 to i1, !dbg !4017
  br i1 %10, label %11, label %31, !dbg !4019

11:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4020, metadata !DIExpression()), !dbg !4022
  %12 = load ptr, ptr %5, align 8, !dbg !4023
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #3, !dbg !4024
  %14 = load ptr, ptr %6, align 8, !dbg !4025
  %15 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #3, !dbg !4026
  %16 = add i64 %13, %15, !dbg !4027
  store i64 %16, ptr %8, align 8, !dbg !4022
  %17 = load i64, ptr %8, align 8, !dbg !4028
  %18 = load ptr, ptr %5, align 8, !dbg !4030
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #3, !dbg !4031
  %20 = icmp ugt i64 %17, %19, !dbg !4032
  br i1 %20, label %21, label %30, !dbg !4033

21:                                               ; preds = %11
  %22 = load i64, ptr %8, align 8, !dbg !4034
  %23 = load ptr, ptr %6, align 8, !dbg !4035
  %24 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #3, !dbg !4036
  %25 = icmp ule i64 %22, %24, !dbg !4037
  br i1 %25, label %26, label %30, !dbg !4038

26:                                               ; preds = %21
  %27 = load ptr, ptr %6, align 8, !dbg !4039
  %28 = load ptr, ptr %5, align 8, !dbg !4040
  %29 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %28), !dbg !4041
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %29) #3, !dbg !4042
  br label %35, !dbg !4043

30:                                               ; preds = %21, %11
  br label %31, !dbg !4044

31:                                               ; preds = %30, %3
  %32 = load ptr, ptr %5, align 8, !dbg !4045
  %33 = load ptr, ptr %6, align 8, !dbg !4046
  %34 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %33), !dbg !4047
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %34) #3, !dbg !4048
  br label %35, !dbg !4049

35:                                               ; preds = %31, %26
  ret void, !dbg !4050
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 !dbg !4051 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4054, metadata !DIExpression()), !dbg !4055
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4056, metadata !DIExpression()), !dbg !4057
  store i1 false, ptr %7, align 1, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4059, metadata !DIExpression(DW_OP_deref)), !dbg !4060
  %10 = load ptr, ptr %5, align 8, !dbg !4061
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %10), !dbg !4060
  %11 = load ptr, ptr %6, align 8, !dbg !4062
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11)
          to label %13 unwind label %15, !dbg !4063

13:                                               ; preds = %3
  store i1 true, ptr %7, align 1, !dbg !4064
  %14 = load i1, ptr %7, align 1, !dbg !4065
  br i1 %14, label %20, label %19, !dbg !4065

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup, !dbg !4065
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !4065
  store ptr %17, ptr %8, align 8, !dbg !4065
  %18 = extractvalue { ptr, i32 } %16, 1, !dbg !4065
  store i32 %18, ptr %9, align 4, !dbg !4065
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !4065
  br label %21, !dbg !4065

19:                                               ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !4065
  br label %20, !dbg !4065

20:                                               ; preds = %19, %13
  ret void, !dbg !4065

21:                                               ; preds = %15
  %22 = load ptr, ptr %8, align 8, !dbg !4065
  %23 = load i32, ptr %9, align 4, !dbg !4065
  %24 = insertvalue { ptr, i32 } poison, ptr %22, 0, !dbg !4065
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1, !dbg !4065
  resume { ptr, i32 } %25, !dbg !4065
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEi(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !4066 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i1, align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4071, metadata !DIExpression()), !dbg !4072
  %12 = load i32, ptr %4, align 4, !dbg !4073
  %13 = icmp slt i32 %12, 0, !dbg !4074
  %14 = zext i1 %13 to i8, !dbg !4072
  store i8 %14, ptr %5, align 1, !dbg !4072
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4075, metadata !DIExpression()), !dbg !4077
  %15 = load i8, ptr %5, align 1, !dbg !4078
  %16 = trunc i8 %15 to i1, !dbg !4078
  br i1 %16, label %17, label %21, !dbg !4078

17:                                               ; preds = %2
  %18 = load i32, ptr %4, align 4, !dbg !4079
  %19 = xor i32 %18, -1, !dbg !4080
  %20 = add i32 %19, 1, !dbg !4081
  br label %23, !dbg !4078

21:                                               ; preds = %2
  %22 = load i32, ptr %4, align 4, !dbg !4082
  br label %23, !dbg !4078

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ], !dbg !4078
  store i32 %24, ptr %6, align 4, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4083, metadata !DIExpression()), !dbg !4084
  %25 = load i32, ptr %6, align 4, !dbg !4085
  %26 = call noundef i32 @_ZNSt8__detail14__to_chars_lenIjEEjT_i(i32 noundef %25, i32 noundef 10) #3, !dbg !4086
  store i32 %26, ptr %7, align 4, !dbg !4084
  store i1 false, ptr %8, align 1, !dbg !4087
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4088, metadata !DIExpression(DW_OP_deref)), !dbg !4089
  %27 = load i8, ptr %5, align 1, !dbg !4090
  %28 = trunc i8 %27 to i1, !dbg !4090
  %29 = zext i1 %28 to i32, !dbg !4090
  %30 = load i32, ptr %7, align 4, !dbg !4091
  %31 = add i32 %29, %30, !dbg !4092
  %32 = zext i32 %31 to i64, !dbg !4090
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3, !dbg !4089
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %32, i8 noundef signext 45, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %33 unwind label %42, !dbg !4089

33:                                               ; preds = %23
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3, !dbg !4089
  %34 = load i8, ptr %5, align 1, !dbg !4093
  %35 = trunc i8 %34 to i1, !dbg !4093
  %36 = zext i1 %35 to i64, !dbg !4093
  %37 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %36)
          to label %38 unwind label %46, !dbg !4094

38:                                               ; preds = %33
  %39 = load i32, ptr %7, align 4, !dbg !4095
  %40 = load i32, ptr %6, align 4, !dbg !4096
  call void @_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_(ptr noundef %37, i32 noundef %39, i32 noundef %40) #3, !dbg !4097
  store i1 true, ptr %8, align 1, !dbg !4098
  %41 = load i1, ptr %8, align 1, !dbg !4099
  br i1 %41, label %51, label %50, !dbg !4099

42:                                               ; preds = %23
  %43 = landingpad { ptr, i32 }
          cleanup, !dbg !4099
  %44 = extractvalue { ptr, i32 } %43, 0, !dbg !4099
  store ptr %44, ptr %10, align 8, !dbg !4099
  %45 = extractvalue { ptr, i32 } %43, 1, !dbg !4099
  store i32 %45, ptr %11, align 4, !dbg !4099
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3, !dbg !4089
  br label %52, !dbg !4089

46:                                               ; preds = %33
  %47 = landingpad { ptr, i32 }
          cleanup, !dbg !4099
  %48 = extractvalue { ptr, i32 } %47, 0, !dbg !4099
  store ptr %48, ptr %10, align 8, !dbg !4099
  %49 = extractvalue { ptr, i32 } %47, 1, !dbg !4099
  store i32 %49, ptr %11, align 4, !dbg !4099
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !4099
  br label %52, !dbg !4099

50:                                               ; preds = %38
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #3, !dbg !4099
  br label %51, !dbg !4099

51:                                               ; preds = %50, %38
  ret void, !dbg !4099

52:                                               ; preds = %46, %42
  %53 = load ptr, ptr %10, align 8, !dbg !4089
  %54 = load i32, ptr %11, align 4, !dbg !4089
  %55 = insertvalue { ptr, i32 } poison, ptr %53, 0, !dbg !4089
  %56 = insertvalue { ptr, i32 } %55, i32 %54, 1, !dbg !4089
  resume { ptr, i32 } %56, !dbg !4089
}

declare noundef i32 @_ZN4Poco6Logger10parseLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3Log12StaticHelper20setThreadLocalLoggerEPN4Poco6LoggerE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %1) #9 comdat align 2 !dbg !4100 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4101, metadata !DIExpression()), !dbg !4102
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4103, metadata !DIExpression()), !dbg !4104
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4105
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN3Log12StaticHelper18_threadLocalLoggerE), !dbg !4106
  store ptr %6, ptr %7, align 8, !dbg !4107
  ret void, !dbg !4108
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN3Log8getLevelB5cxx11Ev() #5 !dbg !4109 {
  %1 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper8getLevelB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) @_ZN3LogL6StaticE), !dbg !4112
  ret ptr %1, !dbg !4113
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK3Log12StaticHelper8getLevelB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) #9 comdat align 2 !dbg !4114 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4115, metadata !DIExpression()), !dbg !4116
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.Log::StaticHelper", ptr %3, i32 0, i32 2, !dbg !4117
  ret ptr %4, !dbg !4118
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6atomicIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !dbg !4119 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4120, metadata !DIExpression()), !dbg !4122
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4123, metadata !DIExpression()), !dbg !4124
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::atomic.0", ptr %6, i32 0, i32 0, !dbg !4125
  %8 = load i8, ptr %4, align 1, !dbg !4126
  %9 = trunc i8 %8 to i1, !dbg !4126
  call void @_ZNSt13__atomic_baseIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %7, i1 noundef zeroext %9) #3, !dbg !4125
  ret void, !dbg !4127
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13__atomic_baseIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !dbg !4128 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4131
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4132, metadata !DIExpression()), !dbg !4133
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::__atomic_base.1", ptr %6, i32 0, i32 0, !dbg !4134
  %8 = load i8, ptr %4, align 1, !dbg !4135
  %9 = trunc i8 %8 to i1, !dbg !4135
  %10 = zext i1 %9 to i8, !dbg !4134
  store i8 %10, ptr %7, align 1, !dbg !4134
  ret void, !dbg !4136
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6atomicIbEaSEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1) #9 comdat align 2 !dbg !4137 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4138, metadata !DIExpression()), !dbg !4139
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4140, metadata !DIExpression()), !dbg !4141
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::atomic.0", ptr %6, i32 0, i32 0, !dbg !4142
  %8 = load i8, ptr %4, align 1, !dbg !4143
  %9 = trunc i8 %8 to i1, !dbg !4143
  %10 = call noundef zeroext i1 @_ZNSt13__atomic_baseIbEaSEb(ptr noundef nonnull align 1 dereferenceable(1) %7, i1 noundef zeroext %9) #3, !dbg !4144
  ret i1 %10, !dbg !4145
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt13__atomic_baseIbEaSEb(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4146 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4147, metadata !DIExpression()), !dbg !4148
  %10 = zext i1 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4149, metadata !DIExpression()), !dbg !4150
  %11 = load ptr, ptr %8, align 8
  %12 = load i8, ptr %9, align 1, !dbg !4151
  %13 = trunc i8 %12 to i1, !dbg !4151
  store ptr %11, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4152, metadata !DIExpression()), !dbg !4154
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i32 5, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4158, metadata !DIExpression()), !dbg !4159
  %15 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4160, metadata !DIExpression()), !dbg !4161
  %16 = load i32, ptr %5, align 4, !dbg !4162
  %17 = invoke noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %16, i32 noundef 65535)
          to label %18 unwind label %29, !dbg !4163

18:                                               ; preds = %2
  store i32 %17, ptr %6, align 4, !dbg !4161
  %19 = load i32, ptr %5, align 4, !dbg !4164
  %20 = load i8, ptr %4, align 1, !dbg !4165
  %21 = trunc i8 %20 to i1, !dbg !4165
  %22 = zext i1 %21 to i8, !dbg !4166
  store i8 %22, ptr %7, align 1, !dbg !4166
  switch i32 %19, label %23 [
    i32 3, label %25
    i32 5, label %27
  ], !dbg !4166

23:                                               ; preds = %18
  %24 = load i8, ptr %7, align 1, !dbg !4166
  store atomic i8 %24, ptr %15 monotonic, align 1, !dbg !4166
  br label %32, !dbg !4166

25:                                               ; preds = %18
  %26 = load i8, ptr %7, align 1, !dbg !4166
  store atomic i8 %26, ptr %15 release, align 1, !dbg !4166
  br label %32, !dbg !4166

27:                                               ; preds = %18
  %28 = load i8, ptr %7, align 1, !dbg !4166
  store atomic i8 %28, ptr %15 seq_cst, align 1, !dbg !4166
  br label %32, !dbg !4166

29:                                               ; preds = %2
  %30 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4163
  %31 = extractvalue { ptr, i32 } %30, 0, !dbg !4163
  call void @__clang_call_terminate(ptr %31) #21, !dbg !4163
  unreachable, !dbg !4163

32:                                               ; preds = %23, %25, %27
  %33 = load i8, ptr %9, align 1, !dbg !4167
  %34 = trunc i8 %33 to i1, !dbg !4167
  ret i1 %34, !dbg !4168
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %0, i32 noundef %1) #9 comdat !dbg !4169 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4172, metadata !DIExpression()), !dbg !4173
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4174, metadata !DIExpression()), !dbg !4175
  %5 = load i32, ptr %3, align 4, !dbg !4176
  %6 = load i32, ptr %4, align 4, !dbg !4177
  %7 = and i32 %5, %6, !dbg !4178
  ret i32 %7, !dbg !4179
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6atomicIbEcvbEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 !dbg !4180 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4181, metadata !DIExpression()), !dbg !4183
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"struct.std::atomic.0", ptr %7, i32 0, i32 0, !dbg !4184
  store ptr %8, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4185, metadata !DIExpression()), !dbg !4188
  store i32 5, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4190, metadata !DIExpression()), !dbg !4191
  %9 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4192, metadata !DIExpression()), !dbg !4193
  %10 = load i32, ptr %3, align 4, !dbg !4194
  %11 = call noundef i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 noundef %10, i32 noundef 65535), !dbg !4195
  store i32 %11, ptr %4, align 4, !dbg !4193
  %12 = load i32, ptr %3, align 4, !dbg !4196
  switch i32 %12, label %13 [
    i32 1, label %15
    i32 2, label %15
    i32 5, label %17
  ], !dbg !4197

13:                                               ; preds = %1
  %14 = load atomic i8, ptr %9 monotonic, align 1, !dbg !4197
  store i8 %14, ptr %5, align 1, !dbg !4197
  br label %19, !dbg !4197

15:                                               ; preds = %1, %1
  %16 = load atomic i8, ptr %9 acquire, align 1, !dbg !4197
  store i8 %16, ptr %5, align 1, !dbg !4197
  br label %19, !dbg !4197

17:                                               ; preds = %1
  %18 = load atomic i8, ptr %9 seq_cst, align 1, !dbg !4197
  store i8 %18, ptr %5, align 1, !dbg !4197
  br label %19, !dbg !4197

19:                                               ; preds = %13, %15, %17
  %20 = load i8, ptr %5, align 1, !dbg !4197
  %21 = trunc i8 %20 to i1, !dbg !4197
  ret i1 %21, !dbg !4198
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime4yearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4199 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4207, metadata !DIExpression()), !dbg !4209
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 1, !dbg !4210
  %5 = load i16, ptr %4, align 8, !dbg !4210
  %6 = sext i16 %5 to i32, !dbg !4210
  ret i32 %6, !dbg !4211
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime5monthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4212 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4214, metadata !DIExpression()), !dbg !4215
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 2, !dbg !4216
  %5 = load i16, ptr %4, align 2, !dbg !4216
  %6 = sext i16 %5 to i32, !dbg !4216
  ret i32 %6, !dbg !4217
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime3dayEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4218 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4220, metadata !DIExpression()), !dbg !4221
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 3, !dbg !4222
  %5 = load i16, ptr %4, align 4, !dbg !4222
  %6 = sext i16 %5 to i32, !dbg !4222
  ret i32 %6, !dbg !4223
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime4hourEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4224 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4226, metadata !DIExpression()), !dbg !4227
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 4, !dbg !4228
  %5 = load i16, ptr %4, align 2, !dbg !4228
  %6 = sext i16 %5 to i32, !dbg !4228
  ret i32 %6, !dbg !4229
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime6minuteEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4232, metadata !DIExpression()), !dbg !4233
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 5, !dbg !4234
  %5 = load i16, ptr %4, align 8, !dbg !4234
  %6 = sext i16 %5 to i32, !dbg !4234
  ret i32 %6, !dbg !4235
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime6secondEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4236 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4238, metadata !DIExpression()), !dbg !4239
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 6, !dbg !4240
  %5 = load i16, ptr %4, align 2, !dbg !4240
  %6 = sext i16 %5 to i32, !dbg !4240
  ret i32 %6, !dbg !4241
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime11millisecondEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4242 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4244, metadata !DIExpression()), !dbg !4245
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 7, !dbg !4246
  %5 = load i16, ptr %4, align 4, !dbg !4246
  %6 = sext i16 %5 to i32, !dbg !4246
  ret i32 %6, !dbg !4247
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4Poco8DateTime11microsecondEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9 comdat align 2 !dbg !4248 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4250, metadata !DIExpression()), !dbg !4251
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::DateTime", ptr %3, i32 0, i32 8, !dbg !4252
  %5 = load i16, ptr %4, align 2, !dbg !4252
  %6 = sext i16 %5 to i32, !dbg !4252
  ret i32 %6, !dbg !4253
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #5 comdat align 2 !dbg !4254 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4262
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4263, metadata !DIExpression()), !dbg !4264
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4265, metadata !DIExpression()), !dbg !4266
  %7 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 3, !dbg !4267
  %8 = load i32, ptr %7, align 8, !dbg !4267
  store i32 %8, ptr %5, align 4, !dbg !4266
  %9 = load i32, ptr %4, align 4, !dbg !4268
  %10 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 3, !dbg !4269
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %9), !dbg !4270
  %12 = load i32, ptr %5, align 4, !dbg !4271
  ret i32 %12, !dbg !4272
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) #5 comdat !dbg !4273 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4281, metadata !DIExpression()), !dbg !4282
  %5 = load ptr, ptr %3, align 8, !dbg !4283
  %6 = load i32, ptr %5, align 4, !dbg !4283
  %7 = load i32, ptr %4, align 4, !dbg !4284
  %8 = call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %6, i32 noundef %7), !dbg !4285
  %9 = load ptr, ptr %3, align 8, !dbg !4286
  store i32 %8, ptr %9, align 4, !dbg !4287
  ret ptr %9, !dbg !4288
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %0, i32 noundef %1) #9 comdat !dbg !4289 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4294, metadata !DIExpression()), !dbg !4295
  %5 = load i32, ptr %3, align 4, !dbg !4296
  %6 = load i32, ptr %4, align 4, !dbg !4297
  %7 = or i32 %5, %6, !dbg !4298
  ret i32 %7, !dbg !4299
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8__detail14__to_chars_lenIjEEjT_i(i32 noundef %0, i32 noundef %1) #9 comdat !dbg !4300 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4307, metadata !DIExpression()), !dbg !4308
  store i32 1, ptr %6, align 4, !dbg !4308
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4309, metadata !DIExpression()), !dbg !4310
  %10 = load i32, ptr %5, align 4, !dbg !4311
  %11 = load i32, ptr %5, align 4, !dbg !4312
  %12 = mul nsw i32 %10, %11, !dbg !4313
  store i32 %12, ptr %7, align 4, !dbg !4310
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4314, metadata !DIExpression()), !dbg !4315
  %13 = load i32, ptr %7, align 4, !dbg !4316
  %14 = load i32, ptr %5, align 4, !dbg !4317
  %15 = mul i32 %13, %14, !dbg !4318
  store i32 %15, ptr %8, align 4, !dbg !4315
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4319, metadata !DIExpression()), !dbg !4321
  %16 = load i32, ptr %8, align 4, !dbg !4322
  %17 = load i32, ptr %5, align 4, !dbg !4323
  %18 = mul i32 %16, %17, !dbg !4324
  %19 = zext i32 %18 to i64, !dbg !4322
  store i64 %19, ptr %9, align 8, !dbg !4321
  br label %20, !dbg !4325

20:                                               ; preds = %48, %2
  %21 = load i32, ptr %4, align 4, !dbg !4326
  %22 = load i32, ptr %5, align 4, !dbg !4331
  %23 = icmp ult i32 %21, %22, !dbg !4332
  br i1 %23, label %24, label %26, !dbg !4333

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 4, !dbg !4334
  store i32 %25, ptr %3, align 4, !dbg !4335
  br label %56, !dbg !4335

26:                                               ; preds = %20
  %27 = load i32, ptr %4, align 4, !dbg !4336
  %28 = load i32, ptr %7, align 4, !dbg !4338
  %29 = icmp ult i32 %27, %28, !dbg !4339
  br i1 %29, label %30, label %33, !dbg !4340

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !4341
  %32 = add i32 %31, 1, !dbg !4342
  store i32 %32, ptr %3, align 4, !dbg !4343
  br label %56, !dbg !4343

33:                                               ; preds = %26
  %34 = load i32, ptr %4, align 4, !dbg !4344
  %35 = load i32, ptr %8, align 4, !dbg !4346
  %36 = icmp ult i32 %34, %35, !dbg !4347
  br i1 %36, label %37, label %40, !dbg !4348

37:                                               ; preds = %33
  %38 = load i32, ptr %6, align 4, !dbg !4349
  %39 = add i32 %38, 2, !dbg !4350
  store i32 %39, ptr %3, align 4, !dbg !4351
  br label %56, !dbg !4351

40:                                               ; preds = %33
  %41 = load i32, ptr %4, align 4, !dbg !4352
  %42 = zext i32 %41 to i64, !dbg !4352
  %43 = load i64, ptr %9, align 8, !dbg !4354
  %44 = icmp ult i64 %42, %43, !dbg !4355
  br i1 %44, label %45, label %48, !dbg !4356

45:                                               ; preds = %40
  %46 = load i32, ptr %6, align 4, !dbg !4357
  %47 = add i32 %46, 3, !dbg !4358
  store i32 %47, ptr %3, align 4, !dbg !4359
  br label %56, !dbg !4359

48:                                               ; preds = %40
  %49 = load i64, ptr %9, align 8, !dbg !4360
  %50 = load i32, ptr %4, align 4, !dbg !4361
  %51 = zext i32 %50 to i64, !dbg !4361
  %52 = udiv i64 %51, %49, !dbg !4361
  %53 = trunc i64 %52 to i32, !dbg !4361
  store i32 %53, ptr %4, align 4, !dbg !4361
  %54 = load i32, ptr %6, align 4, !dbg !4362
  %55 = add i32 %54, 4, !dbg !4362
  store i32 %55, ptr %6, align 4, !dbg !4362
  br label %20, !dbg !4363, !llvm.loop !4364

56:                                               ; preds = %45, %37, %30, %24
  %57 = load i32, ptr %3, align 4, !dbg !4367
  ret i32 %57, !dbg !4367
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4368 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4372, metadata !DIExpression()), !dbg !4373
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4374, metadata !DIExpression()), !dbg !4375
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4376, metadata !DIExpression()), !dbg !4377
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4378, metadata !DIExpression()), !dbg !4379
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i32 0, i32 0, !dbg !4380
  %13 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11), !dbg !4381
  %14 = load ptr, ptr %8, align 8, !dbg !4382
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %14), !dbg !4380
  %15 = load i64, ptr %6, align 8, !dbg !4383
  %16 = load i8, ptr %7, align 1, !dbg !4385
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %15, i8 noundef signext %16)
          to label %17 unwind label %18, !dbg !4386

17:                                               ; preds = %4
  ret void, !dbg !4387

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup, !dbg !4388
  %20 = extractvalue { ptr, i32 } %19, 0, !dbg !4388
  store ptr %20, ptr %9, align 8, !dbg !4388
  %21 = extractvalue { ptr, i32 } %19, 1, !dbg !4388
  store i32 %21, ptr %10, align 4, !dbg !4388
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #3, !dbg !4388
  br label %22, !dbg !4388

22:                                               ; preds = %18
  %23 = load ptr, ptr %9, align 8, !dbg !4388
  %24 = load i32, ptr %10, align 4, !dbg !4388
  %25 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !4388
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1, !dbg !4388
  resume { ptr, i32 } %26, !dbg !4388
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9 comdat !dbg !1817 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4389, metadata !DIExpression()), !dbg !4390
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4393, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4395, metadata !DIExpression()), !dbg !4396
  %10 = load i32, ptr %5, align 4, !dbg !4397
  %11 = sub i32 %10, 1, !dbg !4398
  store i32 %11, ptr %7, align 4, !dbg !4396
  br label %12, !dbg !4399

12:                                               ; preds = %15, %3
  %13 = load i32, ptr %6, align 4, !dbg !4400
  %14 = icmp uge i32 %13, 100, !dbg !4401
  br i1 %14, label %15, label %41, !dbg !4399

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4402, metadata !DIExpression()), !dbg !4404
  %16 = load i32, ptr %6, align 4, !dbg !4405
  %17 = urem i32 %16, 100, !dbg !4406
  %18 = mul i32 %17, 2, !dbg !4407
  store i32 %18, ptr %8, align 4, !dbg !4404
  %19 = load i32, ptr %6, align 4, !dbg !4408
  %20 = udiv i32 %19, 100, !dbg !4408
  store i32 %20, ptr %6, align 4, !dbg !4408
  %21 = load i32, ptr %8, align 4, !dbg !4409
  %22 = add i32 %21, 1, !dbg !4410
  %23 = zext i32 %22 to i64, !dbg !4411
  %24 = getelementptr inbounds [201 x i8], ptr @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %23, !dbg !4411
  %25 = load i8, ptr %24, align 1, !dbg !4411
  %26 = load ptr, ptr %4, align 8, !dbg !4412
  %27 = load i32, ptr %7, align 4, !dbg !4413
  %28 = zext i32 %27 to i64, !dbg !4412
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !4412
  store i8 %25, ptr %29, align 1, !dbg !4414
  %30 = load i32, ptr %8, align 4, !dbg !4415
  %31 = zext i32 %30 to i64, !dbg !4416
  %32 = getelementptr inbounds [201 x i8], ptr @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %31, !dbg !4416
  %33 = load i8, ptr %32, align 1, !dbg !4416
  %34 = load ptr, ptr %4, align 8, !dbg !4417
  %35 = load i32, ptr %7, align 4, !dbg !4418
  %36 = sub i32 %35, 1, !dbg !4419
  %37 = zext i32 %36 to i64, !dbg !4417
  %38 = getelementptr inbounds i8, ptr %34, i64 %37, !dbg !4417
  store i8 %33, ptr %38, align 1, !dbg !4420
  %39 = load i32, ptr %7, align 4, !dbg !4421
  %40 = sub i32 %39, 2, !dbg !4421
  store i32 %40, ptr %7, align 4, !dbg !4421
  br label %12, !dbg !4399, !llvm.loop !4422

41:                                               ; preds = %12
  %42 = load i32, ptr %6, align 4, !dbg !4424
  %43 = icmp uge i32 %42, 10, !dbg !4426
  br i1 %43, label %44, label %60, !dbg !4427

44:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4428, metadata !DIExpression()), !dbg !4430
  %45 = load i32, ptr %6, align 4, !dbg !4431
  %46 = mul i32 %45, 2, !dbg !4432
  store i32 %46, ptr %9, align 4, !dbg !4430
  %47 = load i32, ptr %9, align 4, !dbg !4433
  %48 = add i32 %47, 1, !dbg !4434
  %49 = zext i32 %48 to i64, !dbg !4435
  %50 = getelementptr inbounds [201 x i8], ptr @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %49, !dbg !4435
  %51 = load i8, ptr %50, align 1, !dbg !4435
  %52 = load ptr, ptr %4, align 8, !dbg !4436
  %53 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !4436
  store i8 %51, ptr %53, align 1, !dbg !4437
  %54 = load i32, ptr %9, align 4, !dbg !4438
  %55 = zext i32 %54 to i64, !dbg !4439
  %56 = getelementptr inbounds [201 x i8], ptr @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %55, !dbg !4439
  %57 = load i8, ptr %56, align 1, !dbg !4439
  %58 = load ptr, ptr %4, align 8, !dbg !4440
  %59 = getelementptr inbounds i8, ptr %58, i64 0, !dbg !4440
  store i8 %57, ptr %59, align 1, !dbg !4441
  br label %66, !dbg !4442

60:                                               ; preds = %41
  %61 = load i32, ptr %6, align 4, !dbg !4443
  %62 = add i32 48, %61, !dbg !4444
  %63 = trunc i32 %62 to i8, !dbg !4445
  %64 = load ptr, ptr %4, align 8, !dbg !4446
  %65 = getelementptr inbounds i8, ptr %64, i64 0, !dbg !4446
  store i8 %63, ptr %65, align 1, !dbg !4447
  br label %66

66:                                               ; preds = %60, %44
  ret void, !dbg !4448
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !4449 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4454, metadata !DIExpression()), !dbg !4456
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !4457
  ret void, !dbg !4459
}

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) #5 comdat align 2 !dbg !4460 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4462
  %5 = load ptr, ptr %4, align 8, !dbg !4463
  store ptr %5, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4465, metadata !DIExpression()), !dbg !4469
  br i1 false, label %6, label %9, !dbg !4471

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !dbg !4472
  %8 = call noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %7), !dbg !4473
  store i64 %8, ptr %3, align 8, !dbg !4474
  br label %12, !dbg !4474

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8, !dbg !4475
  %11 = call i64 @strlen(ptr noundef %10) #3, !dbg !4476
  store i64 %11, ptr %3, align 8, !dbg !4477
  br label %12, !dbg !4477

12:                                               ; preds = %9, %6
  %13 = load i64, ptr %3, align 8, !dbg !4478
  ret i64 %13, !dbg !4478
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4479 {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4485, metadata !DIExpression()), !dbg !4486
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4487, metadata !DIExpression()), !dbg !4488
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4491, metadata !DIExpression()), !dbg !4492
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8, !dbg !4493
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %12), !dbg !4495
  br i1 %13, label %14, label %19, !dbg !4496

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8, !dbg !4497
  %16 = load ptr, ptr %7, align 8, !dbg !4498
  %17 = icmp ne ptr %15, %16, !dbg !4499
  br i1 %17, label %18, label %19, !dbg !4500

18:                                               ; preds = %14
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef @.str.20) #22, !dbg !4501
  unreachable, !dbg !4501

19:                                               ; preds = %14, %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4502, metadata !DIExpression()), !dbg !4503
  %20 = load ptr, ptr %6, align 8, !dbg !4504
  %21 = load ptr, ptr %7, align 8, !dbg !4505
  %22 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %20, ptr noundef %21), !dbg !4506
  store i64 %22, ptr %8, align 8, !dbg !4503
  %23 = load i64, ptr %8, align 8, !dbg !4507
  %24 = icmp ugt i64 %23, 15, !dbg !4509
  br i1 %24, label %25, label %28, !dbg !4510

25:                                               ; preds = %19
  %26 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0), !dbg !4511
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %26), !dbg !4513
  %27 = load i64, ptr %8, align 8, !dbg !4514
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %27), !dbg !4515
  br label %28, !dbg !4516

28:                                               ; preds = %25, %19
  %29 = invoke noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %30 unwind label %33, !dbg !4517

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8, !dbg !4519
  %32 = load ptr, ptr %7, align 8, !dbg !4520
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %29, ptr noundef %31, ptr noundef %32) #3, !dbg !4521
  br label %46, !dbg !4522

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4523
  %35 = extractvalue { ptr, i32 } %34, 0, !dbg !4523
  store ptr %35, ptr %9, align 8, !dbg !4523
  %36 = extractvalue { ptr, i32 } %34, 1, !dbg !4523
  store i32 %36, ptr %10, align 4, !dbg !4523
  br label %37, !dbg !4523

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8, !dbg !4522
  %39 = call ptr @__cxa_begin_catch(ptr %38) #3, !dbg !4522
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %40 unwind label %41, !dbg !4524

40:                                               ; preds = %37
  invoke void @__cxa_rethrow() #22
          to label %56 unwind label %41, !dbg !4526

41:                                               ; preds = %40, %37
  %42 = landingpad { ptr, i32 }
          cleanup, !dbg !4527
  %43 = extractvalue { ptr, i32 } %42, 0, !dbg !4527
  store ptr %43, ptr %9, align 8, !dbg !4527
  %44 = extractvalue { ptr, i32 } %42, 1, !dbg !4527
  store i32 %44, ptr %10, align 4, !dbg !4527
  invoke void @__cxa_end_catch()
          to label %45 unwind label %53, !dbg !4528

45:                                               ; preds = %41
  br label %48, !dbg !4528

46:                                               ; preds = %30
  %47 = load i64, ptr %8, align 8, !dbg !4529
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %47), !dbg !4530
  ret void, !dbg !4531

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 8, !dbg !4528
  %50 = load i32, ptr %10, align 4, !dbg !4528
  %51 = insertvalue { ptr, i32 } poison, ptr %49, 0, !dbg !4528
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1, !dbg !4528
  resume { ptr, i32 } %52, !dbg !4528

53:                                               ; preds = %41
  %54 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4528
  %55 = extractvalue { ptr, i32 } %54, 0, !dbg !4528
  call void @__clang_call_terminate(ptr %55) #21, !dbg !4528
  unreachable, !dbg !4528

56:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %0) #5 comdat align 2 !dbg !4532 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4584, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4587
  store i64 0, ptr %3, align 8, !dbg !4587
  br label %5, !dbg !4588

5:                                                ; preds = %11, %1
  %6 = load ptr, ptr %2, align 8, !dbg !4589
  %7 = load i64, ptr %3, align 8, !dbg !4590
  %8 = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !4589
  store i8 0, ptr %4, align 1, !dbg !4591
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %4), !dbg !4592
  %10 = xor i1 %9, true, !dbg !4593
  br i1 %10, label %11, label %14, !dbg !4588

11:                                               ; preds = %5
  %12 = load i64, ptr %3, align 8, !dbg !4594
  %13 = add i64 %12, 1, !dbg !4594
  store i64 %13, ptr %3, align 8, !dbg !4594
  br label %5, !dbg !4588, !llvm.loop !4595

14:                                               ; preds = %5
  %15 = load i64, ptr %3, align 8, !dbg !4597
  ret i64 %15, !dbg !4598
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #9 comdat align 2 !dbg !4599 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4600, metadata !DIExpression()), !dbg !4601
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4602, metadata !DIExpression()), !dbg !4603
  %5 = load ptr, ptr %3, align 8, !dbg !4604
  %6 = load i8, ptr %5, align 1, !dbg !4604
  %7 = sext i8 %6 to i32, !dbg !4604
  %8 = load ptr, ptr %4, align 8, !dbg !4605
  %9 = load i8, ptr %8, align 1, !dbg !4605
  %10 = sext i8 %9 to i32, !dbg !4605
  %11 = icmp eq i32 %7, %10, !dbg !4606
  ret i1 %11, !dbg !4607
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %0) #9 comdat !dbg !4608 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4612, metadata !DIExpression()), !dbg !4613
  %3 = load ptr, ptr %2, align 8, !dbg !4614
  %4 = icmp eq ptr %3, null, !dbg !4615
  ret i1 %4, !dbg !4616
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) #15

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !4617 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4623, metadata !DIExpression()), !dbg !4624
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4625, metadata !DIExpression()), !dbg !4626
  %7 = load ptr, ptr %3, align 8, !dbg !4627
  %8 = load ptr, ptr %4, align 8, !dbg !4628
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !4629
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %7, ptr noundef %8), !dbg !4630
  ret i64 %9, !dbg !4631
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @__cxa_rethrow()

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #9 comdat !dbg !4632 {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4637, metadata !DIExpression()), !dbg !4638
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4639, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4641, metadata !DIExpression()), !dbg !4642
  %6 = load ptr, ptr %5, align 8, !dbg !4643
  %7 = load ptr, ptr %4, align 8, !dbg !4644
  %8 = ptrtoint ptr %6 to i64, !dbg !4645
  %9 = ptrtoint ptr %7 to i64, !dbg !4645
  %10 = sub i64 %8, %9, !dbg !4645
  ret i64 %10, !dbg !4646
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #9 comdat !dbg !4647 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4653, metadata !DIExpression()), !dbg !4654
  ret void, !dbg !4655
}

declare ptr @__cxa_allocate_exception(i64)

declare void @_ZN4Poco20NullPointerExceptionC1Ei(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare void @_ZN4Poco20NullPointerExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr)

declare void @_ZN4Poco13LocalDateTimeC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4Poco13LocalDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK4Poco16RefCountedObject7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4656 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4663, metadata !DIExpression()), !dbg !4665
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.Poco::RefCountedObject", ptr %5, i32 0, i32 1, !dbg !4666
  %7 = invoke noundef i32 @_ZN4Poco13AtomicCountermmEv(ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %8 unwind label %17, !dbg !4669

8:                                                ; preds = %1
  %9 = icmp eq i32 %7, 0, !dbg !4670
  br i1 %9, label %10, label %27, !dbg !4671

10:                                               ; preds = %8
  %11 = icmp eq ptr %5, null, !dbg !4672
  br i1 %11, label %16, label %12, !dbg !4672

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 8, !dbg !4672
  %14 = getelementptr inbounds ptr, ptr %13, i64 1, !dbg !4672
  %15 = load ptr, ptr %14, align 8, !dbg !4672
  call void %15(ptr noundef nonnull align 8 dereferenceable(12) %5) #3, !dbg !4672
  br label %16, !dbg !4672

16:                                               ; preds = %12, %10
  br label %27, !dbg !4672

17:                                               ; preds = %1
  %18 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4673
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !4673
  store ptr %19, ptr %3, align 8, !dbg !4673
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !4673
  store i32 %20, ptr %4, align 4, !dbg !4673
  br label %21, !dbg !4673

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8, !dbg !4674
  %23 = call ptr @__cxa_begin_catch(ptr %22) #3, !dbg !4674
  invoke void @_ZN4Poco8Bugcheck10unexpectedEPKci(ptr noundef @.str.21, i32 noundef 86)
          to label %24 unwind label %28, !dbg !4675

24:                                               ; preds = %21
  invoke void @__cxa_end_catch()
          to label %25 unwind label %28, !dbg !4677

25:                                               ; preds = %24
  br label %26, !dbg !4677

26:                                               ; preds = %25, %27
  ret void, !dbg !4678

27:                                               ; preds = %16, %8
  br label %26, !dbg !4674

28:                                               ; preds = %24, %21
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4675
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !4675
  call void @__clang_call_terminate(ptr %30) #21, !dbg !4675
  unreachable, !dbg !4675
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Poco13AtomicCountermmEv(ptr noundef nonnull align 4 dereferenceable(4) %0) #9 comdat align 2 !dbg !4679 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4687, metadata !DIExpression()), !dbg !4689
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::AtomicCounter", ptr %3, i32 0, i32 0, !dbg !4690
  %5 = call noundef i32 @_ZNSt13__atomic_baseIiEmmEv(ptr noundef nonnull align 4 dereferenceable(4) %4) #3, !dbg !4691
  ret i32 %5, !dbg !4692
}

declare void @_ZN4Poco8Bugcheck10unexpectedEPKci(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt13__atomic_baseIiEmmEv(ptr noundef nonnull align 4 dereferenceable(4) %0) #9 comdat align 2 !dbg !4693 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4694, metadata !DIExpression()), !dbg !4696
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"struct.std::__atomic_base", ptr %5, i32 0, i32 0, !dbg !4697
  store i32 1, ptr %3, align 4, !dbg !4698
  %7 = load i32, ptr %3, align 4, !dbg !4698
  %8 = atomicrmw sub ptr %6, i32 %7 seq_cst, align 4, !dbg !4698
  %9 = sub i32 %8, %7, !dbg !4698
  store i32 %9, ptr %4, align 4, !dbg !4698
  %10 = load i32, ptr %4, align 4, !dbg !4698
  ret i32 %10, !dbg !4699
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9 comdat align 2 !dbg !4700 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4701, metadata !DIExpression()), !dbg !4702
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4703, metadata !DIExpression()), !dbg !4704
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !4705
  %7 = load ptr, ptr %6, align 8, !dbg !4705
  %8 = load ptr, ptr %4, align 8, !dbg !4707
  %9 = icmp ne ptr %7, %8, !dbg !4708
  br i1 %9, label %10, label %21, !dbg !4709

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !4710
  %12 = load ptr, ptr %11, align 8, !dbg !4710
  %13 = icmp ne ptr %12, null, !dbg !4710
  br i1 %13, label %14, label %18, !dbg !4713

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !4714
  %16 = load ptr, ptr %15, align 8, !dbg !4714
  %17 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !4715
  call void @_ZNK4Poco16RefCountedObject7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #3, !dbg !4715
  br label %18, !dbg !4714

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %4, align 8, !dbg !4716
  %20 = getelementptr inbounds %"class.Poco::AutoPtr", ptr %5, i32 0, i32 0, !dbg !4717
  store ptr %19, ptr %20, align 8, !dbg !4718
  br label %21, !dbg !4719

21:                                               ; preds = %18, %2
  ret ptr %5, !dbg !4720
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9 comdat align 2 !dbg !4721 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4727, metadata !DIExpression()), !dbg !4729
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", ptr %4, i32 0, i32 0, !dbg !4730
  %6 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !4731
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %6, i32 0, i32 0, !dbg !4732
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i32 0, i32 2, !dbg !4733
  %9 = load ptr, ptr %8, align 8, !dbg !4733
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9) #3, !dbg !4734
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !4735
  %11 = load ptr, ptr %10, align 8, !dbg !4735
  ret ptr %11, !dbg !4735
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !dbg !4736 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4737, metadata !DIExpression()), !dbg !4738
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4739, metadata !DIExpression()), !dbg !4740
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !4741
  %7 = load ptr, ptr %4, align 8, !dbg !4742
  store ptr %7, ptr %6, align 8, !dbg !4741
  ret void, !dbg !4743
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9 comdat align 2 !dbg !4744 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4746, metadata !DIExpression()), !dbg !4747
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", ptr %4, i32 0, i32 0, !dbg !4748
  %6 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !4749
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %6, i32 0, i32 0, !dbg !4750
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %7) #3, !dbg !4751
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !4752
  %9 = load ptr, ptr %8, align 8, !dbg !4752
  ret ptr %9, !dbg !4752
}

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #9 comdat align 2 !dbg !4753 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4754, metadata !DIExpression()), !dbg !4755
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i32 0, i32 1, !dbg !4756
  %5 = call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #3, !dbg !4757
  ret ptr %5, !dbg !4758
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #9 comdat align 2 !dbg !4759 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4760, metadata !DIExpression()), !dbg !4762
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #3, !dbg !4763
  ret ptr %4, !dbg !4764
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #9 comdat align 2 !dbg !4765 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4766, metadata !DIExpression()), !dbg !4767
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", ptr %3, i32 0, i32 0, !dbg !4768
  ret ptr %4, !dbg !4769
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK4Poco16RefCountedObject9duplicateEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #5 comdat align 2 !dbg !4770 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4772, metadata !DIExpression()), !dbg !4773
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::RefCountedObject", ptr %3, i32 0, i32 1, !dbg !4774
  %5 = call noundef i32 @_ZN4Poco13AtomicCounterppEv(ptr noundef nonnull align 4 dereferenceable(4) %4), !dbg !4775
  ret void, !dbg !4776
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Poco13AtomicCounterppEv(ptr noundef nonnull align 4 dereferenceable(4) %0) #9 comdat align 2 !dbg !4777 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4779, metadata !DIExpression()), !dbg !4780
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Poco::AtomicCounter", ptr %3, i32 0, i32 0, !dbg !4781
  %5 = call noundef i32 @_ZNSt13__atomic_baseIiEppEv(ptr noundef nonnull align 4 dereferenceable(4) %4) #3, !dbg !4782
  ret i32 %5, !dbg !4783
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt13__atomic_baseIiEppEv(ptr noundef nonnull align 4 dereferenceable(4) %0) #9 comdat align 2 !dbg !4784 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4785, metadata !DIExpression()), !dbg !4786
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"struct.std::__atomic_base", ptr %5, i32 0, i32 0, !dbg !4787
  store i32 1, ptr %3, align 4, !dbg !4788
  %7 = load i32, ptr %3, align 4, !dbg !4788
  %8 = atomicrmw add ptr %6, i32 %7 seq_cst, align 4, !dbg !4788
  %9 = add i32 %8, %7, !dbg !4788
  store i32 %9, ptr %4, align 4, !dbg !4788
  %10 = load i32, ptr %4, align 4, !dbg !4788
  ret i32 %10, !dbg !4789
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Log.cpp() #0 section ".text.startup" !dbg !4790 {
  call void @__cxx_global_var_init(), !dbg !4792
  call void @__cxx_global_var_init.1(), !dbg !4792
  call void @__cxx_global_var_init.2(), !dbg !4792
  ret void
}

; Function Attrs: noinline uwtable
define weak_odr hidden noundef ptr @_ZTWN3Log12StaticHelper18_threadLocalLoggerE() #16 comdat {
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN3Log12StaticHelper18_threadLocalLoggerE)
  ret ptr %1
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.dbg.cu = !{!1335}
!llvm.module.flags = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866}
!llvm.ident = !{!2867}

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
!19 = distinct !DIGlobalVariable(name: "Static", linkageName: "_ZN3LogL6StaticE", scope: !9, file: !20, line: 88, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "common/Log.cpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "44383061b786f198902e8bdc63f1b207")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StaticHelper", scope: !9, file: !20, line: 40, size: 896, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !22, identifier: "_ZTSN3Log12StaticHelperE")
!22 = !{!23, !28, !29, !1013, !1014, !1015, !1231, !1235, !1236, !1241, !1246, !1249, !1250, !1251, !1252, !1253, !1256, !1257, !1260}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_logger", scope: !21, file: !20, line: 43, baseType: !24, size: 64, flags: DIFlagPrivate)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_class_type, name: "Logger", scope: !27, file: !26, line: 38, size: 576, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!26 = !DIFile(filename: "/usr/include/Poco/Logger.h", directory: "", checksumkind: CSK_MD5, checksum: "7838b915a6ea410ec2db8909269b1ff6")
!27 = !DINamespace(name: "Poco", scope: null)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_threadLocalLogger", scope: !21, file: !20, line: 44, baseType: !24, flags: DIFlagPrivate | DIFlagStaticMember)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_name", scope: !21, file: !20, line: 45, baseType: !30, size: 256, offset: 64, flags: DIFlagPrivate)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !31, line: 79, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stringfwd.h", directory: "")
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !34, file: !33, line: 1627, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !35, templateParams: !1011, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.tcc", directory: "")
!34 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!35 = !{!36, !102, !104, !105, !113, !390, !395, !400, !403, !408, !411, !417, !418, !419, !422, !426, !429, !430, !433, !434, !444, !449, !452, !455, !458, !461, !464, !465, !468, !527, !578, !581, !584, !587, !591, !594, !597, !598, !601, !602, !605, !608, !611, !614, !618, !623, !626, !629, !630, !634, !637, !640, !643, !646, !649, !652, !655, !656, !657, !726, !790, !791, !792, !793, !794, !795, !796, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !818, !824, !825, !826, !829, !832, !833, !834, !835, !836, !837, !838, !839, !842, !845, !846, !849, !850, !853, !854, !855, !856, !857, !858, !859, !860, !863, !866, !869, !872, !875, !878, !881, !885, !888, !891, !894, !895, !898, !901, !904, !907, !910, !913, !916, !919, !922, !925, !928, !931, !934, !937, !938, !941, !942, !945, !948, !951, !952, !955, !958, !961, !964, !967, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !993, !996, !999, !1002, !1005, !1008}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !32, file: !37, line: 109, baseType: !38, flags: DIFlagPublic | DIFlagStaticMember, extraData: i64 -1)
!37 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.h", directory: "")
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !32, file: !37, line: 96, baseType: !40, flags: DIFlagPublic)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !42, file: !41, line: 59, baseType: !75)
!41 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !43, file: !41, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !44, templateParams: !100, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!43 = !DINamespace(name: "__gnu_cxx", scope: null)
!44 = !{!45, !83, !88, !92, !96, !97, !98, !99}
!45 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !42, baseType: !46, extraData: i32 0)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !2, file: !47, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !81, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!47 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!48 = !{!49, !63, !69, !72, !78}
!49 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !46, file: !47, line: 463, type: !50, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !55, !59}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !46, file: !47, line: 420, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !46, file: !47, line: 414, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !2, file: !58, line: 261, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIcE")
!58 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !47, line: 435, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !61, line: 280, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !46, file: !47, line: 477, type: !64, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!52, !55, !59, !66}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !47, line: 429, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !46, file: !47, line: 495, type: !70, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !55, !52, !59}
!72 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !46, file: !47, line: 547, type: !73, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !46, file: !47, line: 435, baseType: !60)
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!78 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !46, file: !47, line: 562, type: !79, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{!56, !76}
!81 = !{!82}
!82 = !DITemplateTypeParameter(name: "_Alloc", type: !57)
!83 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !42, file: !41, line: 97, type: !84, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!57, !86}
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!88 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE10_S_on_swapERS1_S3_", scope: !42, file: !41, line: 100, type: !89, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !91}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !57, size: 64)
!92 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv", scope: !42, file: !41, line: 103, type: !93, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{!95}
!95 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!96 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_move_assignEv", scope: !42, file: !41, line: 106, type: !93, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!97 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE20_S_propagate_on_swapEv", scope: !42, file: !41, line: 109, type: !93, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!98 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv", scope: !42, file: !41, line: 112, type: !93, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!99 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_nothrow_moveEv", scope: !42, file: !41, line: 115, type: !93, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!100 = !{!82, !101}
!101 = !DITemplateTypeParameter(type: !54)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_M_dataplus", scope: !32, file: !37, line: 174, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !32, file: !37, line: 158, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_M_string_length", scope: !32, file: !37, line: 175, baseType: !39, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !32, file: !37, line: 179, baseType: !106, size: 128, offset: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !37, line: 179, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !107, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!107 = !{!108, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_M_local_buf", scope: !106, file: !37, line: 181, baseType: !109, size: 128)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_M_allocated_capacity", scope: !106, file: !37, line: 182, baseType: !39, size: 64)
!113 = !DISubprogram(name: "_S_to_string_view", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E", scope: !32, file: !37, line: 133, type: !114, scopeLine: 133, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !116}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sv_type", scope: !32, file: !37, line: 122, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !2, file: !118, line: 98, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !119, templateParams: !336, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!118 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/string_view", directory: "")
!119 = !{!120, !123, !124, !127, !131, !136, !139, !142, !146, !154, !155, !156, !157, !244, !245, !246, !247, !250, !251, !252, !255, !260, !261, !264, !265, !269, !272, !273, !276, !280, !283, !286, !289, !292, !295, !298, !301, !304, !307, !310, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !117, file: !118, line: 119, baseType: !121, flags: DIFlagPublic | DIFlagStaticMember)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !118, line: 117, baseType: !60, flags: DIFlagPublic)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_M_len", scope: !117, file: !118, line: 511, baseType: !60, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_M_str", scope: !117, file: !118, line: 512, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!127 = !DISubprogram(name: "basic_string_view", scope: !117, file: !118, line: 124, type: !128, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!131 = !DISubprogram(name: "basic_string_view", scope: !117, file: !118, line: 128, type: !132, scopeLine: 128, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !130, !134}
!134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!136 = !DISubprogram(name: "basic_string_view", scope: !117, file: !118, line: 131, type: !137, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !130, !125}
!139 = !DISubprogram(name: "basic_string_view", scope: !117, file: !118, line: 137, type: !140, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !130, !125, !122}
!142 = !DISubprogram(name: "operator=", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEEaSERKS2_", scope: !117, file: !118, line: 172, type: !143, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !130, !134}
!145 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !117, size: 64)
!146 = !DISubprogram(name: "begin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5beginEv", scope: !117, file: !118, line: 177, type: !147, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !153}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !117, file: !118, line: 113, baseType: !150, flags: DIFlagPublic)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !117, file: !118, line: 108, baseType: !54, flags: DIFlagPublic)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DISubprogram(name: "end", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE3endEv", scope: !117, file: !118, line: 181, type: !147, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6cbeginEv", scope: !117, file: !118, line: 185, type: !147, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!156 = !DISubprogram(name: "cend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4cendEv", scope: !117, file: !118, line: 189, type: !147, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!157 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6rbeginEv", scope: !117, file: !118, line: 193, type: !158, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !153}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !117, file: !118, line: 115, baseType: !161, flags: DIFlagPublic)
!161 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !2, file: !162, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !163, templateParams: !214, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!162 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!163 = !{!164, !186, !187, !191, !195, !200, !204, !208, !216, !221, !224, !228, !229, !230, !236, !239, !240, !241}
!164 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !161, baseType: !165, flags: DIFlagPublic, extraData: i32 0)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::random_access_iterator_tag, char, long, const char *, const char &>", scope: !2, file: !166, line: 127, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !168, identifier: "_ZTSSt8iteratorISt26random_access_iterator_tagclPKcRS1_E")
!166 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!167 = !{}
!168 = !{!169, !180, !181, !183, !184}
!169 = !DITemplateTypeParameter(name: "_Category", type: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !166, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !171, identifier: "_ZTSSt26random_access_iterator_tag")
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !170, baseType: !173, extraData: i32 0)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !166, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !174, identifier: "_ZTSSt26bidirectional_iterator_tag")
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !173, baseType: !176, extraData: i32 0)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !166, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !177, identifier: "_ZTSSt20forward_iterator_tag")
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !176, baseType: !179, extraData: i32 0)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !166, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !167, identifier: "_ZTSSt18input_iterator_tag")
!180 = !DITemplateTypeParameter(name: "_Tp", type: !54)
!181 = !DITemplateTypeParameter(name: "_Distance", type: !182, defaulted: true)
!182 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!183 = !DITemplateTypeParameter(name: "_Pointer", type: !125)
!184 = !DITemplateTypeParameter(name: "_Reference", type: !185)
!185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !126, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !161, file: !162, line: 147, baseType: !125, size: 64, flags: DIFlagProtected)
!187 = !DISubprogram(name: "reverse_iterator", scope: !161, file: !162, line: 178, type: !188, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!191 = !DISubprogram(name: "reverse_iterator", scope: !161, file: !162, line: 184, type: !192, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !190, !194}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !161, file: !162, line: 152, baseType: !125, flags: DIFlagPublic)
!195 = !DISubprogram(name: "reverse_iterator", scope: !161, file: !162, line: 190, type: !196, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !190, !198}
!198 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!200 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIPKcEaSERKS2_", scope: !161, file: !162, line: 194, type: !201, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !190, !198}
!203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !161, size: 64)
!204 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIPKcE4baseEv", scope: !161, file: !162, line: 228, type: !205, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!194, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIPKcEdeEv", scope: !161, file: !162, line: 242, type: !209, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !207}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !161, file: !162, line: 156, baseType: !212, flags: DIFlagPublic)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !213, file: !166, line: 227, baseType: !185)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !2, file: !166, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !214, identifier: "_ZTSSt15iterator_traitsIPKcE")
!214 = !{!215}
!215 = !DITemplateTypeParameter(name: "_Iterator", type: !125)
!216 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIPKcEptEv", scope: !161, file: !162, line: 254, type: !217, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !207}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !161, file: !162, line: 153, baseType: !220, flags: DIFlagPublic)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !213, file: !166, line: 226, baseType: !125)
!221 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIPKcEppEv", scope: !161, file: !162, line: 273, type: !222, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!203, !190}
!224 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIPKcEppEi", scope: !161, file: !162, line: 285, type: !225, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!161, !190, !227}
!227 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!228 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIPKcEmmEv", scope: !161, file: !162, line: 298, type: !222, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!229 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIPKcEmmEi", scope: !161, file: !162, line: 310, type: !225, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!230 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIPKcEplEl", scope: !161, file: !162, line: 323, type: !231, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{!161, !207, !233}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !161, file: !162, line: 155, baseType: !234, flags: DIFlagPublic)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !213, file: !166, line: 225, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !61, line: 281, baseType: !182)
!236 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIPKcEpLEl", scope: !161, file: !162, line: 333, type: !237, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!203, !190, !233}
!239 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIPKcEmiEl", scope: !161, file: !162, line: 345, type: !231, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!240 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIPKcEmIEl", scope: !161, file: !162, line: 355, type: !237, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!241 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIPKcEixEl", scope: !161, file: !162, line: 367, type: !242, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!211, !207, !233}
!244 = !DISubprogram(name: "rend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4rendEv", scope: !117, file: !118, line: 197, type: !158, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!245 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7crbeginEv", scope: !117, file: !118, line: 201, type: !158, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!246 = !DISubprogram(name: "crend", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5crendEv", scope: !117, file: !118, line: 205, type: !158, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!247 = !DISubprogram(name: "size", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv", scope: !117, file: !118, line: 211, type: !248, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!122, !153}
!250 = !DISubprogram(name: "length", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6lengthEv", scope: !117, file: !118, line: 215, type: !248, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!251 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE8max_sizeEv", scope: !117, file: !118, line: 219, type: !248, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!252 = !DISubprogram(name: "empty", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv", scope: !117, file: !118, line: 226, type: !253, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!95, !153}
!255 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEEixEm", scope: !117, file: !118, line: 232, type: !256, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !153, !122}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !117, file: !118, line: 112, baseType: !259, flags: DIFlagPublic)
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !151, size: 64)
!260 = !DISubprogram(name: "at", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm", scope: !117, file: !118, line: 239, type: !256, scopeLine: 239, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!261 = !DISubprogram(name: "front", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5frontEv", scope: !117, file: !118, line: 249, type: !262, scopeLine: 249, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!258, !153}
!264 = !DISubprogram(name: "back", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4backEv", scope: !117, file: !118, line: 256, type: !262, scopeLine: 256, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubprogram(name: "data", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv", scope: !117, file: !118, line: 263, type: !266, scopeLine: 263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !153}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !117, file: !118, line: 110, baseType: !150, flags: DIFlagPublic)
!269 = !DISubprogram(name: "remove_prefix", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE13remove_prefixEm", scope: !117, file: !118, line: 269, type: !270, scopeLine: 269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !130, !122}
!272 = !DISubprogram(name: "remove_suffix", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE13remove_suffixEm", scope: !117, file: !118, line: 277, type: !270, scopeLine: 277, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!273 = !DISubprogram(name: "swap", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE4swapERS2_", scope: !117, file: !118, line: 281, type: !274, scopeLine: 281, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !130, !145}
!276 = !DISubprogram(name: "copy", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm", scope: !117, file: !118, line: 292, type: !277, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !153, !53, !122, !122}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !117, file: !118, line: 117, baseType: !60, flags: DIFlagPublic)
!280 = !DISubprogram(name: "substr", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm", scope: !117, file: !118, line: 304, type: !281, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!117, !153, !122, !122}
!283 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareES2_", scope: !117, file: !118, line: 312, type: !284, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!227, !153, !117}
!286 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_", scope: !117, file: !118, line: 322, type: !287, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!227, !153, !122, !122, !117}
!289 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_mm", scope: !117, file: !118, line: 326, type: !290, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!227, !153, !122, !122, !117, !122, !122}
!292 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEPKc", scope: !117, file: !118, line: 333, type: !293, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!227, !153, !125}
!295 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmPKc", scope: !117, file: !118, line: 337, type: !296, scopeLine: 337, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!227, !153, !122, !122, !125}
!298 = !DISubprogram(name: "compare", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmPKcm", scope: !117, file: !118, line: 341, type: !299, scopeLine: 341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{!227, !153, !122, !122, !125, !122}
!301 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m", scope: !117, file: !118, line: 398, type: !302, scopeLine: 398, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!279, !153, !117, !122}
!304 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm", scope: !117, file: !118, line: 402, type: !305, scopeLine: 402, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!279, !153, !54, !122}
!307 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm", scope: !117, file: !118, line: 405, type: !308, scopeLine: 405, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!279, !153, !125, !122, !122}
!310 = !DISubprogram(name: "find", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm", scope: !117, file: !118, line: 408, type: !311, scopeLine: 408, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!279, !153, !125, !122}
!313 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m", scope: !117, file: !118, line: 412, type: !302, scopeLine: 412, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!314 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm", scope: !117, file: !118, line: 416, type: !305, scopeLine: 416, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEPKcmm", scope: !117, file: !118, line: 419, type: !308, scopeLine: 419, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!316 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEPKcm", scope: !117, file: !118, line: 422, type: !311, scopeLine: 422, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m", scope: !117, file: !118, line: 426, type: !302, scopeLine: 426, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!318 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm", scope: !117, file: !118, line: 430, type: !305, scopeLine: 430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!319 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcmm", scope: !117, file: !118, line: 434, type: !308, scopeLine: 434, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm", scope: !117, file: !118, line: 438, type: !311, scopeLine: 438, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofES2_m", scope: !117, file: !118, line: 442, type: !302, scopeLine: 442, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm", scope: !117, file: !118, line: 447, type: !305, scopeLine: 447, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!323 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcmm", scope: !117, file: !118, line: 451, type: !308, scopeLine: 451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!324 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm", scope: !117, file: !118, line: 455, type: !311, scopeLine: 455, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m", scope: !117, file: !118, line: 459, type: !302, scopeLine: 459, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!326 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm", scope: !117, file: !118, line: 464, type: !305, scopeLine: 464, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!327 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcmm", scope: !117, file: !118, line: 467, type: !308, scopeLine: 467, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm", scope: !117, file: !118, line: 471, type: !311, scopeLine: 471, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!329 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofES2_m", scope: !117, file: !118, line: 478, type: !302, scopeLine: 478, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm", scope: !117, file: !118, line: 483, type: !305, scopeLine: 483, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcmm", scope: !117, file: !118, line: 486, type: !308, scopeLine: 486, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!332 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm", scope: !117, file: !118, line: 490, type: !311, scopeLine: 490, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!333 = !DISubprogram(name: "_S_compare", linkageName: "_ZNSt17basic_string_viewIcSt11char_traitsIcEE10_S_compareEmm", scope: !117, file: !118, line: 500, type: !334, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!227, !122, !122}
!336 = !{!337, !338}
!337 = !DITemplateTypeParameter(name: "_CharT", type: !54)
!338 = !DITemplateTypeParameter(name: "_Traits", type: !339, defaulted: true)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !340, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !341, templateParams: !389, identifier: "_ZTSSt11char_traitsIcE")
!340 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!341 = !{!342, !349, !352, !353, !357, !360, !363, !367, !368, !371, !377, !380, !383, !386}
!342 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !339, file: !340, line: 356, type: !343, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345, !347}
!345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !339, file: !340, line: 346, baseType: !54)
!347 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!349 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !339, file: !340, line: 360, type: !350, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!95, !347, !347}
!352 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !339, file: !340, line: 364, type: !350, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!353 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !339, file: !340, line: 372, type: !354, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!227, !356, !356, !60}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!357 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !339, file: !340, line: 393, type: !358, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!60, !356}
!360 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !339, file: !340, line: 403, type: !361, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!356, !356, !60, !347}
!363 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !339, file: !340, line: 417, type: !364, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !366, !356, !60}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!367 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !339, file: !340, line: 429, type: !364, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!368 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !339, file: !340, line: 441, type: !369, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!369 = !DISubroutineType(types: !370)
!370 = !{!366, !366, !60, !346}
!371 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !339, file: !340, line: 453, type: !372, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!346, !374}
!374 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !339, file: !340, line: 347, baseType: !227)
!377 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !339, file: !340, line: 459, type: !378, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{!376, !347}
!380 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !339, file: !340, line: 463, type: !381, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!95, !374, !374}
!383 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !339, file: !340, line: 467, type: !384, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!376}
!386 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !339, file: !340, line: 471, type: !387, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!376, !374}
!389 = !{!337}
!390 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 153, type: !391, scopeLine: 153, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !394, !86}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !32, file: !37, line: 140, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!395 = !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !32, file: !37, line: 186, type: !396, scopeLine: 186, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !393, !398}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !32, file: !37, line: 100, baseType: !399, flags: DIFlagPublic)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !42, file: !41, line: 57, baseType: !52)
!400 = !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !32, file: !37, line: 190, type: !401, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !393, !39}
!403 = !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !32, file: !37, line: 194, type: !404, scopeLine: 194, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!398, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!408 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !32, file: !37, line: 198, type: !409, scopeLine: 198, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DISubroutineType(types: !410)
!410 = !{!398, !393}
!411 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !32, file: !37, line: 208, type: !412, scopeLine: 208, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !406}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !32, file: !37, line: 101, baseType: !415, flags: DIFlagPublic)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !42, file: !41, line: 58, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !46, file: !47, line: 423, baseType: !125)
!417 = !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !32, file: !37, line: 218, type: !401, scopeLine: 218, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !32, file: !37, line: 222, type: !401, scopeLine: 222, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !32, file: !37, line: 229, type: !420, scopeLine: 229, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!95, !406}
!422 = !DISubprogram(name: "_M_create", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm", scope: !32, file: !37, line: 234, type: !423, scopeLine: 234, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!398, !393, !425, !39}
!425 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!426 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !32, file: !37, line: 237, type: !427, scopeLine: 237, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !393}
!429 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !32, file: !37, line: 244, type: !401, scopeLine: 244, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubprogram(name: "_M_construct_aux_2", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE18_M_construct_aux_2Emc", scope: !32, file: !37, line: 266, type: !431, scopeLine: 266, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !393, !39, !54}
!433 = !DISubprogram(name: "_M_construct", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc", scope: !32, file: !37, line: 291, type: !431, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !32, file: !37, line: 294, type: !435, scopeLine: 294, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !393}
!437 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !32, file: !37, line: 95, baseType: !439, flags: DIFlagPublic)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !32, file: !37, line: 88, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !441, file: !41, line: 120, baseType: !443)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !42, file: !41, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !442, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!442 = !{!180}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !46, file: !47, line: 450, baseType: !57)
!444 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !32, file: !37, line: 298, type: !445, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !406}
!447 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!449 = !DISubprogram(name: "_M_check", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc", scope: !32, file: !37, line: 318, type: !450, scopeLine: 318, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DISubroutineType(types: !451)
!451 = !{!39, !406, !39, !125}
!452 = !DISubprogram(name: "_M_check_length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc", scope: !32, file: !37, line: 328, type: !453, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !406, !39, !39, !125}
!455 = !DISubprogram(name: "_M_limit", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm", scope: !32, file: !37, line: 337, type: !456, scopeLine: 337, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!39, !406, !39, !39}
!458 = !DISubprogram(name: "_M_disjunct", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc", scope: !32, file: !37, line: 345, type: !459, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!95, !406, !125}
!461 = !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !32, file: !37, line: 354, type: !462, scopeLine: 354, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !53, !125, !39}
!464 = !DISubprogram(name: "_S_move", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm", scope: !32, file: !37, line: 363, type: !462, scopeLine: 363, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!465 = !DISubprogram(name: "_S_assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc", scope: !32, file: !37, line: 372, type: !466, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !53, !39, !54}
!468 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS5_S4_EES8_", scope: !32, file: !37, line: 391, type: !469, scopeLine: 391, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !53, !471, !471}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !32, file: !37, line: 102, baseType: !472, flags: DIFlagPublic)
!472 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !43, file: !162, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !473, templateParams: !525, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!473 = !{!474, !475, !479, !484, !495, !500, !504, !507, !508, !509, !514, !517, !520, !521, !522}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !472, file: !162, line: 1007, baseType: !53, size: 64, flags: DIFlagProtected)
!475 = !DISubprogram(name: "__normal_iterator", scope: !472, file: !162, line: 1023, type: !476, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DISubprogram(name: "__normal_iterator", scope: !472, file: !162, line: 1027, type: !480, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !478, !482}
!482 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!484 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv", scope: !472, file: !162, line: 1042, type: !485, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !493}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !472, file: !162, line: 1016, baseType: !488, flags: DIFlagPublic)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !489, file: !166, line: 216, baseType: !492)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !2, file: !166, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !490, identifier: "_ZTSSt15iterator_traitsIPcE")
!490 = !{!491}
!491 = !DITemplateTypeParameter(name: "_Iterator", type: !53)
!492 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !54, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!495 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEptEv", scope: !472, file: !162, line: 1047, type: !496, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !493}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !472, file: !162, line: 1017, baseType: !499, flags: DIFlagPublic)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !489, file: !166, line: 215, baseType: !53)
!500 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv", scope: !472, file: !162, line: 1052, type: !501, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !478}
!503 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !472, size: 64)
!504 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEi", scope: !472, file: !162, line: 1060, type: !505, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!472, !478, !227}
!507 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv", scope: !472, file: !162, line: 1066, type: !501, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!508 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEi", scope: !472, file: !162, line: 1074, type: !505, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEl", scope: !472, file: !162, line: 1080, type: !510, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!487, !493, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !472, file: !162, line: 1015, baseType: !513, flags: DIFlagPublic)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !489, file: !166, line: 214, baseType: !235)
!514 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEpLEl", scope: !472, file: !162, line: 1085, type: !515, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!503, !478, !512}
!517 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEplEl", scope: !472, file: !162, line: 1090, type: !518, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!472, !493, !512}
!520 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmIEl", scope: !472, file: !162, line: 1095, type: !515, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmiEl", scope: !472, file: !162, line: 1100, type: !518, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv", scope: !472, file: !162, line: 1105, type: !523, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!482, !493}
!525 = !{!491, !526}
!526 = !DITemplateTypeParameter(name: "_Container", type: !32)
!527 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcS4_EESA_", scope: !32, file: !37, line: 395, type: !528, scopeLine: 395, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !53, !530, !530}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !32, file: !37, line: 104, baseType: !531, flags: DIFlagPublic)
!531 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !43, file: !162, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !532, templateParams: !577, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!532 = !{!533, !534, !538, !543, !549, !553, !557, !560, !561, !562, !566, !569, !572, !573, !574}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !531, file: !162, line: 1007, baseType: !125, size: 64, flags: DIFlagProtected)
!534 = !DISubprogram(name: "__normal_iterator", scope: !531, file: !162, line: 1023, type: !535, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!538 = !DISubprogram(name: "__normal_iterator", scope: !531, file: !162, line: 1027, type: !539, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !537, !541}
!541 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!543 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv", scope: !531, file: !162, line: 1042, type: !544, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !531, file: !162, line: 1016, baseType: !212, flags: DIFlagPublic)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!549 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEptEv", scope: !531, file: !162, line: 1047, type: !550, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !547}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !531, file: !162, line: 1017, baseType: !220, flags: DIFlagPublic)
!553 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv", scope: !531, file: !162, line: 1052, type: !554, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !537}
!556 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !531, size: 64)
!557 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEi", scope: !531, file: !162, line: 1060, type: !558, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!531, !537, !227}
!560 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv", scope: !531, file: !162, line: 1066, type: !554, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!561 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEi", scope: !531, file: !162, line: 1074, type: !558, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!562 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEl", scope: !531, file: !162, line: 1080, type: !563, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{!546, !547, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !531, file: !162, line: 1015, baseType: !234, flags: DIFlagPublic)
!566 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEpLEl", scope: !531, file: !162, line: 1085, type: !567, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!556, !537, !565}
!569 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEplEl", scope: !531, file: !162, line: 1090, type: !570, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{!531, !547, !565}
!572 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmIEl", scope: !531, file: !162, line: 1095, type: !567, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!573 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmiEl", scope: !531, file: !162, line: 1100, type: !570, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!574 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv", scope: !531, file: !162, line: 1105, type: !575, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!541, !547}
!577 = !{!215, !526}
!578 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !32, file: !37, line: 400, type: !579, scopeLine: 400, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !53, !53, !53}
!581 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !32, file: !37, line: 404, type: !582, scopeLine: 404, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !53, !125, !125}
!584 = !DISubprogram(name: "_S_compare", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_S_compareEmm", scope: !32, file: !37, line: 409, type: !585, scopeLine: 409, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!227, !39, !39}
!587 = !DISubprogram(name: "_M_assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_", scope: !32, file: !37, line: 422, type: !588, scopeLine: 422, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !393, !590}
!590 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !407, size: 64)
!591 = !DISubprogram(name: "_M_mutate", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm", scope: !32, file: !37, line: 425, type: !592, scopeLine: 425, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !393, !39, !39, !125, !39}
!594 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm", scope: !32, file: !37, line: 429, type: !595, scopeLine: 429, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !393, !39, !39}
!597 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 439, type: !427, scopeLine: 439, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!598 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 448, type: !599, scopeLine: 448, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !393, !86}
!601 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 456, type: !588, scopeLine: 456, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!602 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 469, type: !603, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !393, !590, !39, !86}
!605 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 484, type: !606, scopeLine: 484, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !393, !590, !39, !39}
!608 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 500, type: !609, scopeLine: 500, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !393, !590, !39, !39, !86}
!611 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 518, type: !612, scopeLine: 518, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !393, !125, !39, !86}
!614 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 565, type: !615, scopeLine: 565, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !393, !617}
!617 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !32, size: 64)
!618 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 592, type: !619, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !393, !621, !86}
!621 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !2, file: !622, line: 47, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!622 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!623 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 596, type: !624, scopeLine: 596, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !393, !590, !86}
!626 = !DISubprogram(name: "basic_string", scope: !32, file: !37, line: 600, type: !627, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !393, !617, !86}
!629 = !DISubprogram(name: "~basic_string", scope: !32, file: !37, line: 671, type: !427, scopeLine: 671, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!630 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !32, file: !37, line: 679, type: !631, scopeLine: 679, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!633, !393, !590}
!633 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!634 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc", scope: !32, file: !37, line: 689, type: !635, scopeLine: 689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!633, !393, !125}
!637 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc", scope: !32, file: !37, line: 700, type: !638, scopeLine: 700, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!633, !393, !54}
!640 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_", scope: !32, file: !37, line: 717, type: !641, scopeLine: 717, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!633, !393, !617}
!643 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSESt16initializer_listIcE", scope: !32, file: !37, line: 785, type: !644, scopeLine: 785, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{!633, !393, !621}
!646 = !DISubprogram(name: "operator basic_string_view", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEcvSt17basic_string_viewIcS2_EEv", scope: !32, file: !37, line: 806, type: !647, scopeLine: 806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!116, !406}
!649 = !DISubprogram(name: "begin", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv", scope: !32, file: !37, line: 816, type: !650, scopeLine: 816, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!471, !393}
!652 = !DISubprogram(name: "begin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv", scope: !32, file: !37, line: 824, type: !653, scopeLine: 824, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!530, !406}
!655 = !DISubprogram(name: "end", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv", scope: !32, file: !37, line: 832, type: !650, scopeLine: 832, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!656 = !DISubprogram(name: "end", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv", scope: !32, file: !37, line: 840, type: !653, scopeLine: 840, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!657 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv", scope: !32, file: !37, line: 849, type: !658, scopeLine: 849, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !393}
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !32, file: !37, line: 106, baseType: !661, flags: DIFlagPublic)
!661 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !162, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !662, templateParams: !725, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!662 = !{!663, !668, !669, !673, !677, !682, !686, !690, !699, !704, !707, !710, !711, !712, !717, !720, !721, !722}
!663 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !661, baseType: !664, flags: DIFlagPublic, extraData: i32 0)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator<std::random_access_iterator_tag, char, long, char *, char &>", scope: !2, file: !166, line: 127, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !665, identifier: "_ZTSSt8iteratorISt26random_access_iterator_tagclPcRcE")
!665 = !{!169, !180, !181, !666, !667}
!666 = !DITemplateTypeParameter(name: "_Pointer", type: !53, defaulted: true)
!667 = !DITemplateTypeParameter(name: "_Reference", type: !492, defaulted: true)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !661, file: !162, line: 147, baseType: !472, size: 64, flags: DIFlagProtected)
!669 = !DISubprogram(name: "reverse_iterator", scope: !661, file: !162, line: 178, type: !670, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!673 = !DISubprogram(name: "reverse_iterator", scope: !661, file: !162, line: 184, type: !674, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !672, !676}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !661, file: !162, line: 152, baseType: !472, flags: DIFlagPublic)
!677 = !DISubprogram(name: "reverse_iterator", scope: !661, file: !162, line: 190, type: !678, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !672, !680}
!680 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!682 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSERKSA_", scope: !661, file: !162, line: 194, type: !683, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !672, !680}
!685 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !661, size: 64)
!686 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE4baseEv", scope: !661, file: !162, line: 228, type: !687, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!676, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!690 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEdeEv", scope: !661, file: !162, line: 242, type: !691, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!693, !689}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !661, file: !162, line: 156, baseType: !694, flags: DIFlagPublic)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !695, file: !166, line: 172, baseType: !487)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, void>", scope: !2, file: !166, line: 161, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !696, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE")
!696 = !{!697, !698}
!697 = !DITemplateTypeParameter(name: "_Iterator", type: !472)
!698 = !DITemplateTypeParameter(type: null, defaulted: true)
!699 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEptEv", scope: !661, file: !162, line: 254, type: !700, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !689}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !661, file: !162, line: 153, baseType: !703, flags: DIFlagPublic)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !695, file: !166, line: 171, baseType: !498)
!704 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEv", scope: !661, file: !162, line: 273, type: !705, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!685, !672}
!707 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEi", scope: !661, file: !162, line: 285, type: !708, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!661, !672, !227}
!710 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEv", scope: !661, file: !162, line: 298, type: !705, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!711 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEi", scope: !661, file: !162, line: 310, type: !708, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!712 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEplEl", scope: !661, file: !162, line: 323, type: !713, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!661, !689, !715}
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !661, file: !162, line: 155, baseType: !716, flags: DIFlagPublic)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !695, file: !166, line: 170, baseType: !512)
!717 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEpLEl", scope: !661, file: !162, line: 333, type: !718, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!685, !672, !715}
!720 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmiEl", scope: !661, file: !162, line: 345, type: !713, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!721 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmIEl", scope: !661, file: !162, line: 355, type: !718, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!722 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEixEl", scope: !661, file: !162, line: 367, type: !723, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!693, !689, !715}
!725 = !{!697}
!726 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv", scope: !32, file: !37, line: 858, type: !727, scopeLine: 858, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!729, !406}
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !32, file: !37, line: 105, baseType: !730, flags: DIFlagPublic)
!730 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !162, line: 128, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !731, templateParams: !789, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!731 = !{!732, !733, !734, !738, !742, !747, !751, !755, !763, !768, !771, !774, !775, !776, !781, !784, !785, !786}
!732 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !730, baseType: !165, flags: DIFlagPublic, extraData: i32 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !730, file: !162, line: 147, baseType: !531, size: 64, flags: DIFlagProtected)
!734 = !DISubprogram(name: "reverse_iterator", scope: !730, file: !162, line: 178, type: !735, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!738 = !DISubprogram(name: "reverse_iterator", scope: !730, file: !162, line: 184, type: !739, scopeLine: 184, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !737, !741}
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_type", scope: !730, file: !162, line: 152, baseType: !531, flags: DIFlagPublic)
!742 = !DISubprogram(name: "reverse_iterator", scope: !730, file: !162, line: 190, type: !743, scopeLine: 190, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !737, !745}
!745 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!747 = !DISubprogram(name: "operator=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSERKSB_", scope: !730, file: !162, line: 194, type: !748, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!750, !737, !745}
!750 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !730, size: 64)
!751 = !DISubprogram(name: "base", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE4baseEv", scope: !730, file: !162, line: 228, type: !752, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!752 = !DISubroutineType(types: !753)
!753 = !{!741, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEdeEv", scope: !730, file: !162, line: 242, type: !756, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !754}
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !730, file: !162, line: 156, baseType: !759, flags: DIFlagPublic)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !760, file: !166, line: 172, baseType: !546)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, void>", scope: !2, file: !166, line: 161, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !761, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE")
!761 = !{!762, !698}
!762 = !DITemplateTypeParameter(name: "_Iterator", type: !531)
!763 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEptEv", scope: !730, file: !162, line: 254, type: !764, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !754}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !730, file: !162, line: 153, baseType: !767, flags: DIFlagPublic)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !760, file: !166, line: 171, baseType: !552)
!768 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEv", scope: !730, file: !162, line: 273, type: !769, scopeLine: 273, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!750, !737}
!771 = !DISubprogram(name: "operator++", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEppEi", scope: !730, file: !162, line: 285, type: !772, scopeLine: 285, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!730, !737, !227}
!774 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEv", scope: !730, file: !162, line: 298, type: !769, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!775 = !DISubprogram(name: "operator--", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmmEi", scope: !730, file: !162, line: 310, type: !772, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!776 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEplEl", scope: !730, file: !162, line: 323, type: !777, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!730, !754, !779}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !730, file: !162, line: 155, baseType: !780, flags: DIFlagPublic)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !760, file: !166, line: 170, baseType: !565)
!781 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEpLEl", scope: !730, file: !162, line: 333, type: !782, scopeLine: 333, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{!750, !737, !779}
!784 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmiEl", scope: !730, file: !162, line: 345, type: !777, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!785 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEmIEl", scope: !730, file: !162, line: 355, type: !782, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!786 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEixEl", scope: !730, file: !162, line: 367, type: !787, scopeLine: 367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!758, !754, !779}
!789 = !{!762}
!790 = !DISubprogram(name: "rend", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4rendEv", scope: !32, file: !37, line: 867, type: !658, scopeLine: 867, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!791 = !DISubprogram(name: "rend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4rendEv", scope: !32, file: !37, line: 876, type: !727, scopeLine: 876, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!792 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6cbeginEv", scope: !32, file: !37, line: 885, type: !653, scopeLine: 885, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!793 = !DISubprogram(name: "cend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4cendEv", scope: !32, file: !37, line: 893, type: !653, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!794 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7crbeginEv", scope: !32, file: !37, line: 902, type: !727, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!795 = !DISubprogram(name: "crend", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5crendEv", scope: !32, file: !37, line: 911, type: !727, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!796 = !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !32, file: !37, line: 920, type: !797, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!39, !406}
!799 = !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !32, file: !37, line: 926, type: !797, scopeLine: 926, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!800 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv", scope: !32, file: !37, line: 931, type: !797, scopeLine: 931, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!801 = !DISubprogram(name: "resize", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc", scope: !32, file: !37, line: 945, type: !431, scopeLine: 945, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!802 = !DISubprogram(name: "resize", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm", scope: !32, file: !37, line: 958, type: !401, scopeLine: 958, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!803 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13shrink_to_fitEv", scope: !32, file: !37, line: 966, type: !427, scopeLine: 966, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!804 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv", scope: !32, file: !37, line: 976, type: !797, scopeLine: 976, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!805 = !DISubprogram(name: "reserve", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm", scope: !32, file: !37, line: 1000, type: !401, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!806 = !DISubprogram(name: "reserve", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv", scope: !32, file: !37, line: 1009, type: !427, scopeLine: 1009, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!807 = !DISubprogram(name: "clear", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv", scope: !32, file: !37, line: 1015, type: !427, scopeLine: 1015, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!808 = !DISubprogram(name: "empty", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv", scope: !32, file: !37, line: 1023, type: !420, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!809 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm", scope: !32, file: !37, line: 1038, type: !810, scopeLine: 1038, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !406, !39}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !32, file: !37, line: 99, baseType: !813, flags: DIFlagPublic)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !42, file: !41, line: 63, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !42, file: !41, line: 56, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !46, file: !47, line: 417, baseType: !54)
!818 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm", scope: !32, file: !37, line: 1055, type: !819, scopeLine: 1055, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!821, !393, !39}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !32, file: !37, line: 98, baseType: !822, flags: DIFlagPublic)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !42, file: !41, line: 62, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !816, size: 64)
!824 = !DISubprogram(name: "at", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm", scope: !32, file: !37, line: 1076, type: !810, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!825 = !DISubprogram(name: "at", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm", scope: !32, file: !37, line: 1097, type: !819, scopeLine: 1097, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!826 = !DISubprogram(name: "front", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv", scope: !32, file: !37, line: 1113, type: !827, scopeLine: 1113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!821, !393}
!829 = !DISubprogram(name: "front", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5frontEv", scope: !32, file: !37, line: 1124, type: !830, scopeLine: 1124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!812, !406}
!832 = !DISubprogram(name: "back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv", scope: !32, file: !37, line: 1135, type: !827, scopeLine: 1135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!833 = !DISubprogram(name: "back", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv", scope: !32, file: !37, line: 1146, type: !830, scopeLine: 1146, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!834 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_", scope: !32, file: !37, line: 1160, type: !631, scopeLine: 1160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!835 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc", scope: !32, file: !37, line: 1169, type: !635, scopeLine: 1169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!836 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc", scope: !32, file: !37, line: 1178, type: !638, scopeLine: 1178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!837 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLESt16initializer_listIcE", scope: !32, file: !37, line: 1191, type: !644, scopeLine: 1191, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!838 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_", scope: !32, file: !37, line: 1213, type: !631, scopeLine: 1213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!839 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm", scope: !32, file: !37, line: 1230, type: !840, scopeLine: 1230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!633, !393, !590, !39, !39}
!842 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm", scope: !32, file: !37, line: 1242, type: !843, scopeLine: 1242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!633, !393, !125, !39}
!845 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc", scope: !32, file: !37, line: 1255, type: !635, scopeLine: 1255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!846 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc", scope: !32, file: !37, line: 1272, type: !847, scopeLine: 1272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!633, !393, !39, !54}
!849 = !DISubprogram(name: "append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendESt16initializer_listIcE", scope: !32, file: !37, line: 1282, type: !644, scopeLine: 1282, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!850 = !DISubprogram(name: "push_back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc", scope: !32, file: !37, line: 1341, type: !851, scopeLine: 1341, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !393, !54}
!853 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !32, file: !37, line: 1356, type: !631, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!854 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_", scope: !32, file: !37, line: 1401, type: !641, scopeLine: 1401, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!855 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_mm", scope: !32, file: !37, line: 1424, type: !840, scopeLine: 1424, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!856 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm", scope: !32, file: !37, line: 1440, type: !843, scopeLine: 1440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!857 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc", scope: !32, file: !37, line: 1456, type: !635, scopeLine: 1456, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!858 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc", scope: !32, file: !37, line: 1473, type: !847, scopeLine: 1473, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!859 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignESt16initializer_listIcE", scope: !32, file: !37, line: 1501, type: !644, scopeLine: 1501, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!860 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEmc", scope: !32, file: !37, line: 1555, type: !861, scopeLine: 1555, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{!471, !393, !530, !39, !54}
!863 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EESt16initializer_listIcE", scope: !32, file: !37, line: 1633, type: !864, scopeLine: 1633, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!864 = !DISubroutineType(types: !865)
!865 = !{!471, !393, !530, !621}
!866 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_", scope: !32, file: !37, line: 1660, type: !867, scopeLine: 1660, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{!633, !393, !39, !590}
!869 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_mm", scope: !32, file: !37, line: 1683, type: !870, scopeLine: 1683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{!633, !393, !39, !590, !39, !39}
!872 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKcm", scope: !32, file: !37, line: 1706, type: !873, scopeLine: 1706, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!633, !393, !39, !125, !39}
!875 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc", scope: !32, file: !37, line: 1725, type: !876, scopeLine: 1725, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{!633, !393, !39, !125}
!878 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc", scope: !32, file: !37, line: 1749, type: !879, scopeLine: 1749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!633, !393, !39, !39, !54}
!881 = !DISubprogram(name: "insert", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc", scope: !32, file: !37, line: 1767, type: !882, scopeLine: 1767, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!471, !393, !884, !54}
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__const_iterator", scope: !32, file: !37, line: 116, baseType: !530, flags: DIFlagProtected)
!885 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm", scope: !32, file: !37, line: 1827, type: !886, scopeLine: 1827, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!633, !393, !39, !39}
!888 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EE", scope: !32, file: !37, line: 1846, type: !889, scopeLine: 1846, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!889 = !DISubroutineType(types: !890)
!890 = !{!471, !393, !884}
!891 = !DISubprogram(name: "erase", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_", scope: !32, file: !37, line: 1865, type: !892, scopeLine: 1865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!892 = !DISubroutineType(types: !893)
!893 = !{!471, !393, !884, !884}
!894 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv", scope: !32, file: !37, line: 1884, type: !427, scopeLine: 1884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!895 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_", scope: !32, file: !37, line: 1909, type: !896, scopeLine: 1909, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!633, !393, !39, !39, !590}
!898 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_mm", scope: !32, file: !37, line: 1931, type: !899, scopeLine: 1931, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!633, !393, !39, !39, !590, !39, !39}
!901 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm", scope: !32, file: !37, line: 1956, type: !902, scopeLine: 1956, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!633, !393, !39, !39, !125, !39}
!904 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc", scope: !32, file: !37, line: 1981, type: !905, scopeLine: 1981, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!905 = !DISubroutineType(types: !906)
!906 = !{!633, !393, !39, !39, !125}
!907 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc", scope: !32, file: !37, line: 2005, type: !908, scopeLine: 2005, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!908 = !DISubroutineType(types: !909)
!909 = !{!633, !393, !39, !39, !39, !54}
!910 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_RKS4_", scope: !32, file: !37, line: 2023, type: !911, scopeLine: 2023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{!633, !393, !884, !884, !590}
!913 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_m", scope: !32, file: !37, line: 2043, type: !914, scopeLine: 2043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!914 = !DISubroutineType(types: !915)
!915 = !{!633, !393, !884, !884, !125, !39}
!916 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_", scope: !32, file: !37, line: 2065, type: !917, scopeLine: 2065, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!633, !393, !884, !884, !125}
!919 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_mc", scope: !32, file: !37, line: 2086, type: !920, scopeLine: 2086, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!920 = !DISubroutineType(types: !921)
!921 = !{!633, !393, !884, !884, !39, !54}
!922 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_", scope: !32, file: !37, line: 2143, type: !923, scopeLine: 2143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{!633, !393, !884, !884, !53, !53}
!925 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S8_S8_", scope: !32, file: !37, line: 2154, type: !926, scopeLine: 2154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!926 = !DISubroutineType(types: !927)
!927 = !{!633, !393, !884, !884, !125, !125}
!928 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_NS6_IPcS4_EESB_", scope: !32, file: !37, line: 2165, type: !929, scopeLine: 2165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!929 = !DISubroutineType(types: !930)
!930 = !{!633, !393, !884, !884, !471, !471}
!931 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_S9_S9_", scope: !32, file: !37, line: 2176, type: !932, scopeLine: 2176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!633, !393, !884, !884, !530, !530}
!934 = !DISubprogram(name: "replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_St16initializer_listIcE", scope: !32, file: !37, line: 2201, type: !935, scopeLine: 2201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!935 = !DISubroutineType(types: !936)
!936 = !{!633, !393, !530, !530, !621}
!937 = !DISubprogram(name: "_M_replace_aux", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc", scope: !32, file: !37, line: 2275, type: !908, scopeLine: 2275, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DISubprogram(name: "_M_replace", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm", scope: !32, file: !37, line: 2279, type: !939, scopeLine: 2279, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DISubroutineType(types: !940)
!940 = !{!633, !393, !39, !39, !125, !38}
!941 = !DISubprogram(name: "_M_append", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm", scope: !32, file: !37, line: 2283, type: !843, scopeLine: 2283, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DISubprogram(name: "copy", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4copyEPcmm", scope: !32, file: !37, line: 2300, type: !943, scopeLine: 2300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{!39, !406, !53, !39, !39}
!945 = !DISubprogram(name: "swap", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_", scope: !32, file: !37, line: 2310, type: !946, scopeLine: 2310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !393, !633}
!948 = !DISubprogram(name: "c_str", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv", scope: !32, file: !37, line: 2320, type: !949, scopeLine: 2320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!949 = !DISubroutineType(types: !950)
!950 = !{!125, !406}
!951 = !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !32, file: !37, line: 2332, type: !949, scopeLine: 2332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!952 = !DISubprogram(name: "data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !32, file: !37, line: 2343, type: !953, scopeLine: 2343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!953 = !DISubroutineType(types: !954)
!954 = !{!53, !393}
!955 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv", scope: !32, file: !37, line: 2351, type: !956, scopeLine: 2351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!438, !406}
!958 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm", scope: !32, file: !37, line: 2367, type: !959, scopeLine: 2367, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!959 = !DISubroutineType(types: !960)
!960 = !{!39, !406, !125, !39, !39}
!961 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m", scope: !32, file: !37, line: 2381, type: !962, scopeLine: 2381, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!962 = !DISubroutineType(types: !963)
!963 = !{!39, !406, !590, !39}
!964 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm", scope: !32, file: !37, line: 2413, type: !965, scopeLine: 2413, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!39, !406, !125, !39}
!967 = !DISubprogram(name: "find", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm", scope: !32, file: !37, line: 2430, type: !968, scopeLine: 2430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!968 = !DISubroutineType(types: !969)
!969 = !{!39, !406, !54, !39}
!970 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindERKS4_m", scope: !32, file: !37, line: 2443, type: !962, scopeLine: 2443, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!971 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm", scope: !32, file: !37, line: 2477, type: !959, scopeLine: 2477, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!972 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm", scope: !32, file: !37, line: 2491, type: !965, scopeLine: 2491, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!973 = !DISubprogram(name: "rfind", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm", scope: !32, file: !37, line: 2508, type: !968, scopeLine: 2508, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!974 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofERKS4_m", scope: !32, file: !37, line: 2522, type: !962, scopeLine: 2522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!975 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm", scope: !32, file: !37, line: 2557, type: !959, scopeLine: 2557, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!976 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm", scope: !32, file: !37, line: 2571, type: !965, scopeLine: 2571, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!977 = !DISubprogram(name: "find_first_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm", scope: !32, file: !37, line: 2591, type: !968, scopeLine: 2591, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!978 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofERKS4_m", scope: !32, file: !37, line: 2606, type: !962, scopeLine: 2606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!979 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm", scope: !32, file: !37, line: 2641, type: !959, scopeLine: 2641, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!980 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm", scope: !32, file: !37, line: 2655, type: !965, scopeLine: 2655, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!981 = !DISubprogram(name: "find_last_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm", scope: !32, file: !37, line: 2675, type: !968, scopeLine: 2675, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!982 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofERKS4_m", scope: !32, file: !37, line: 2689, type: !962, scopeLine: 2689, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!983 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm", scope: !32, file: !37, line: 2724, type: !959, scopeLine: 2724, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!984 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm", scope: !32, file: !37, line: 2738, type: !965, scopeLine: 2738, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!985 = !DISubprogram(name: "find_first_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm", scope: !32, file: !37, line: 2756, type: !968, scopeLine: 2756, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!986 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofERKS4_m", scope: !32, file: !37, line: 2771, type: !962, scopeLine: 2771, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!987 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm", scope: !32, file: !37, line: 2806, type: !959, scopeLine: 2806, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!988 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm", scope: !32, file: !37, line: 2820, type: !965, scopeLine: 2820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!989 = !DISubprogram(name: "find_last_not_of", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm", scope: !32, file: !37, line: 2838, type: !968, scopeLine: 2838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!990 = !DISubprogram(name: "substr", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm", scope: !32, file: !37, line: 2854, type: !991, scopeLine: 2854, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!32, !406, !39, !39}
!993 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_", scope: !32, file: !37, line: 2873, type: !994, scopeLine: 2873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!994 = !DISubroutineType(types: !995)
!995 = !{!227, !406, !590}
!996 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_", scope: !32, file: !37, line: 2966, type: !997, scopeLine: 2966, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!997 = !DISubroutineType(types: !998)
!998 = !{!227, !406, !39, !39, !590}
!999 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_mm", scope: !32, file: !37, line: 2992, type: !1000, scopeLine: 2992, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!227, !406, !39, !39, !590, !39, !39}
!1002 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc", scope: !32, file: !37, line: 3010, type: !1003, scopeLine: 3010, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!227, !406, !125}
!1005 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc", scope: !32, file: !37, line: 3034, type: !1006, scopeLine: 3034, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!227, !406, !39, !39, !125}
!1008 = !DISubprogram(name: "compare", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKcm", scope: !32, file: !37, line: 3061, type: !1009, scopeLine: 3061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!227, !406, !39, !39, !125, !39}
!1011 = !{!337, !338, !1012}
!1012 = !DITemplateTypeParameter(name: "_Alloc", type: !57, defaulted: true)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_logLevel", scope: !21, file: !20, line: 46, baseType: !30, size: 256, offset: 320, flags: DIFlagPrivate)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !21, file: !20, line: 47, baseType: !30, size: 256, offset: 576, flags: DIFlagPrivate)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_inited", scope: !21, file: !20, line: 48, baseType: !1016, size: 8, offset: 832, flags: DIFlagPrivate)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<bool>", scope: !2, file: !1017, line: 62, size: 8, flags: DIFlagTypePassByReference, elements: !1018, templateParams: !1229, identifier: "_ZTSSt6atomicIbE")
!1017 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/atomic", directory: "")
!1018 = !{!1019, !1153, !1155, !1159, !1160, !1165, !1169, !1174, !1177, !1180, !1183, !1187, !1192, !1193, !1194, !1197, !1200, !1203, !1206, !1209, !1212, !1216, !1219, !1222, !1225, !1226, !1227, !1228}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_M_base", scope: !1016, file: !1017, line: 67, baseType: !1020, size: 8, flags: DIFlagPrivate)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<bool>", scope: !2, file: !1021, line: 324, size: 8, flags: DIFlagTypePassByReference, elements: !1022, templateParams: !1151, identifier: "_ZTSSt13__atomic_baseIbE")
!1021 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/atomic_base.h", directory: "")
!1022 = !{!1023, !1025, !1027, !1031, !1032, !1037, !1041, !1046, !1049, !1053, !1058, !1061, !1064, !1067, !1070, !1071, !1072, !1075, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1093, !1096, !1109, !1112, !1115, !1118, !1121, !1124, !1128, !1131, !1134, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_S_alignment", scope: !1020, file: !1021, line: 332, baseType: !1024, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 1)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !1020, file: !1021, line: 335, baseType: !1026, size: 8, align: 8, flags: DIFlagPrivate)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !1020, file: !1021, line: 330, baseType: !95, flags: DIFlagPrivate)
!1027 = !DISubprogram(name: "__atomic_base", scope: !1020, file: !1021, line: 338, type: !1028, scopeLine: 338, flags: DIFlagPrototyped, spFlags: 0)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1031 = !DISubprogram(name: "~__atomic_base", scope: !1020, file: !1021, line: 339, type: !1028, scopeLine: 339, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DISubprogram(name: "__atomic_base", scope: !1020, file: !1021, line: 340, type: !1033, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1030, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1037 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIbEaSERKS0_", scope: !1020, file: !1021, line: 341, type: !1038, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1040, !1030, !1035}
!1040 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1020, size: 64)
!1041 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIbEaSERKS0_", scope: !1020, file: !1021, line: 342, type: !1042, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1040, !1044, !1035}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1045 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1020)
!1046 = !DISubprogram(name: "__atomic_base", scope: !1020, file: !1021, line: 345, type: !1047, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1030, !1026}
!1049 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt13__atomic_baseIbEcvbEv", scope: !1020, file: !1021, line: 347, type: !1050, scopeLine: 347, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1026, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1053 = !DISubprogram(name: "operator bool", linkageName: "_ZNVKSt13__atomic_baseIbEcvbEv", scope: !1020, file: !1021, line: 350, type: !1054, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1026, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1058 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIbEaSEb", scope: !1020, file: !1021, line: 354, type: !1059, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1026, !1030, !1026}
!1061 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIbEaSEb", scope: !1020, file: !1021, line: 361, type: !1062, scopeLine: 361, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1026, !1044, !1026}
!1064 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIbEppEi", scope: !1020, file: !1021, line: 368, type: !1065, scopeLine: 368, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1026, !1030, !227}
!1067 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIbEppEi", scope: !1020, file: !1021, line: 372, type: !1068, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1026, !1044, !227}
!1070 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIbEmmEi", scope: !1020, file: !1021, line: 376, type: !1065, scopeLine: 376, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIbEmmEi", scope: !1020, file: !1021, line: 380, type: !1068, scopeLine: 380, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIbEppEv", scope: !1020, file: !1021, line: 384, type: !1073, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1026, !1030}
!1075 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIbEppEv", scope: !1020, file: !1021, line: 388, type: !1076, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1026, !1044}
!1078 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIbEmmEv", scope: !1020, file: !1021, line: 392, type: !1073, scopeLine: 392, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIbEmmEv", scope: !1020, file: !1021, line: 396, type: !1076, scopeLine: 396, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseIbEpLEb", scope: !1020, file: !1021, line: 400, type: !1059, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseIbEpLEb", scope: !1020, file: !1021, line: 404, type: !1062, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseIbEmIEb", scope: !1020, file: !1021, line: 408, type: !1059, scopeLine: 408, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseIbEmIEb", scope: !1020, file: !1021, line: 412, type: !1062, scopeLine: 412, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseIbEaNEb", scope: !1020, file: !1021, line: 416, type: !1059, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseIbEaNEb", scope: !1020, file: !1021, line: 420, type: !1062, scopeLine: 420, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseIbEoREb", scope: !1020, file: !1021, line: 424, type: !1059, scopeLine: 424, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseIbEoREb", scope: !1020, file: !1021, line: 428, type: !1062, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseIbEeOEb", scope: !1020, file: !1021, line: 432, type: !1059, scopeLine: 432, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseIbEeOEb", scope: !1020, file: !1021, line: 436, type: !1062, scopeLine: 436, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseIbE12is_lock_freeEv", scope: !1020, file: !1021, line: 440, type: !1091, scopeLine: 440, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!95, !1052}
!1093 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseIbE12is_lock_freeEv", scope: !1020, file: !1021, line: 448, type: !1094, scopeLine: 448, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!95, !1056}
!1096 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIbE5storeEbSt12memory_order", scope: !1020, file: !1021, line: 456, type: !1097, scopeLine: 456, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !1030, !1026, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_order", scope: !2, file: !1021, line: 86, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !2, file: !1021, line: 78, baseType: !1101, size: 32, elements: !1102, identifier: "_ZTSSt12memory_order")
!1101 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108}
!1103 = !DIEnumerator(name: "memory_order_relaxed", value: 0, isUnsigned: true)
!1104 = !DIEnumerator(name: "memory_order_consume", value: 1, isUnsigned: true)
!1105 = !DIEnumerator(name: "memory_order_acquire", value: 2, isUnsigned: true)
!1106 = !DIEnumerator(name: "memory_order_release", value: 3, isUnsigned: true)
!1107 = !DIEnumerator(name: "memory_order_acq_rel", value: 4, isUnsigned: true)
!1108 = !DIEnumerator(name: "memory_order_seq_cst", value: 5, isUnsigned: true)
!1109 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseIbE5storeEbSt12memory_order", scope: !1020, file: !1021, line: 468, type: !1110, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1044, !1026, !1099}
!1112 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIbE4loadESt12memory_order", scope: !1020, file: !1021, line: 481, type: !1113, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1026, !1052, !1099}
!1115 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseIbE4loadESt12memory_order", scope: !1020, file: !1021, line: 492, type: !1116, scopeLine: 492, flags: DIFlagPrototyped, spFlags: 0)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1026, !1056, !1099}
!1118 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseIbE8exchangeEbSt12memory_order", scope: !1020, file: !1021, line: 503, type: !1119, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1026, !1030, !1026, !1099}
!1121 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseIbE8exchangeEbSt12memory_order", scope: !1020, file: !1021, line: 511, type: !1122, scopeLine: 511, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1026, !1044, !1026, !1099}
!1124 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_orderS2_", scope: !1020, file: !1021, line: 518, type: !1125, scopeLine: 518, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!95, !1030, !1127, !1026, !1099, !1099}
!1127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1026, size: 64)
!1128 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_orderS2_", scope: !1020, file: !1021, line: 528, type: !1129, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!95, !1044, !1127, !1026, !1099, !1099}
!1131 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_order", scope: !1020, file: !1021, line: 539, type: !1132, scopeLine: 539, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!95, !1030, !1127, !1026, !1099}
!1134 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_order", scope: !1020, file: !1021, line: 547, type: !1135, scopeLine: 547, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!95, !1044, !1127, !1026, !1099}
!1137 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_orderS2_", scope: !1020, file: !1021, line: 555, type: !1125, scopeLine: 555, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_orderS2_", scope: !1020, file: !1021, line: 565, type: !1129, scopeLine: 565, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_order", scope: !1020, file: !1021, line: 576, type: !1132, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!1140 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_order", scope: !1020, file: !1021, line: 584, type: !1135, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseIbE9fetch_addEbSt12memory_order", scope: !1020, file: !1021, line: 616, type: !1119, scopeLine: 616, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseIbE9fetch_addEbSt12memory_order", scope: !1020, file: !1021, line: 621, type: !1122, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!1143 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseIbE9fetch_subEbSt12memory_order", scope: !1020, file: !1021, line: 626, type: !1119, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseIbE9fetch_subEbSt12memory_order", scope: !1020, file: !1021, line: 631, type: !1122, scopeLine: 631, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseIbE9fetch_andEbSt12memory_order", scope: !1020, file: !1021, line: 636, type: !1119, scopeLine: 636, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseIbE9fetch_andEbSt12memory_order", scope: !1020, file: !1021, line: 641, type: !1122, scopeLine: 641, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseIbE8fetch_orEbSt12memory_order", scope: !1020, file: !1021, line: 646, type: !1119, scopeLine: 646, flags: DIFlagPrototyped, spFlags: 0)
!1148 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseIbE8fetch_orEbSt12memory_order", scope: !1020, file: !1021, line: 651, type: !1122, scopeLine: 651, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseIbE9fetch_xorEbSt12memory_order", scope: !1020, file: !1021, line: 656, type: !1119, scopeLine: 656, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseIbE9fetch_xorEbSt12memory_order", scope: !1020, file: !1021, line: 661, type: !1122, scopeLine: 661, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !{!1152}
!1152 = !DITemplateTypeParameter(name: "_ITp", type: !95)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "is_always_lock_free", scope: !1016, file: !1017, line: 99, baseType: !1154, flags: DIFlagStaticMember, extraData: i1 true)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1155 = !DISubprogram(name: "atomic", scope: !1016, file: !1017, line: 70, type: !1156, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1159 = !DISubprogram(name: "~atomic", scope: !1016, file: !1017, line: 71, type: !1156, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubprogram(name: "atomic", scope: !1016, file: !1017, line: 72, type: !1161, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1158, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1165 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIbEaSERKS0_", scope: !1016, file: !1017, line: 73, type: !1166, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1168, !1158, !1163}
!1168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1016, size: 64)
!1169 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIbEaSERKS0_", scope: !1016, file: !1017, line: 74, type: !1170, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1168, !1172, !1163}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1173 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1016)
!1174 = !DISubprogram(name: "atomic", scope: !1016, file: !1017, line: 76, type: !1175, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !1158, !95}
!1177 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIbEaSEb", scope: !1016, file: !1017, line: 79, type: !1178, scopeLine: 79, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!95, !1158, !95}
!1180 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt6atomicIbEaSEb", scope: !1016, file: !1017, line: 83, type: !1181, scopeLine: 83, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!95, !1172, !95}
!1183 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt6atomicIbEcvbEv", scope: !1016, file: !1017, line: 86, type: !1184, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!95, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1187 = !DISubprogram(name: "operator bool", linkageName: "_ZNVKSt6atomicIbEcvbEv", scope: !1016, file: !1017, line: 89, type: !1188, scopeLine: 89, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!95, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1192 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt6atomicIbE12is_lock_freeEv", scope: !1016, file: !1017, line: 93, type: !1184, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt6atomicIbE12is_lock_freeEv", scope: !1016, file: !1017, line: 96, type: !1188, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DISubprogram(name: "store", linkageName: "_ZNSt6atomicIbE5storeEbSt12memory_order", scope: !1016, file: !1017, line: 103, type: !1195, scopeLine: 103, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1158, !95, !1099}
!1197 = !DISubprogram(name: "store", linkageName: "_ZNVSt6atomicIbE5storeEbSt12memory_order", scope: !1016, file: !1017, line: 107, type: !1198, scopeLine: 107, flags: DIFlagPrototyped, spFlags: 0)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1172, !95, !1099}
!1200 = !DISubprogram(name: "load", linkageName: "_ZNKSt6atomicIbE4loadESt12memory_order", scope: !1016, file: !1017, line: 111, type: !1201, scopeLine: 111, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!95, !1186, !1099}
!1203 = !DISubprogram(name: "load", linkageName: "_ZNVKSt6atomicIbE4loadESt12memory_order", scope: !1016, file: !1017, line: 115, type: !1204, scopeLine: 115, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!95, !1190, !1099}
!1206 = !DISubprogram(name: "exchange", linkageName: "_ZNSt6atomicIbE8exchangeEbSt12memory_order", scope: !1016, file: !1017, line: 119, type: !1207, scopeLine: 119, flags: DIFlagPrototyped, spFlags: 0)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!95, !1158, !95, !1099}
!1209 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt6atomicIbE8exchangeEbSt12memory_order", scope: !1016, file: !1017, line: 123, type: !1210, scopeLine: 123, flags: DIFlagPrototyped, spFlags: 0)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!95, !1172, !95, !1099}
!1212 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_", scope: !1016, file: !1017, line: 128, type: !1213, scopeLine: 128, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!95, !1158, !1215, !95, !1099, !1099}
!1215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 64)
!1216 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_", scope: !1016, file: !1017, line: 133, type: !1217, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!95, !1172, !1215, !95, !1099, !1099}
!1219 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_order", scope: !1016, file: !1017, line: 138, type: !1220, scopeLine: 138, flags: DIFlagPrototyped, spFlags: 0)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!95, !1158, !1215, !95, !1099}
!1222 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt6atomicIbE21compare_exchange_weakERbbSt12memory_order", scope: !1016, file: !1017, line: 143, type: !1223, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!95, !1172, !1215, !95, !1099}
!1225 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_", scope: !1016, file: !1017, line: 148, type: !1213, scopeLine: 148, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_", scope: !1016, file: !1017, line: 153, type: !1217, scopeLine: 153, flags: DIFlagPrototyped, spFlags: 0)
!1227 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order", scope: !1016, file: !1017, line: 158, type: !1220, scopeLine: 158, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt6atomicIbE23compare_exchange_strongERbbSt12memory_order", scope: !1016, file: !1017, line: 163, type: !1223, scopeLine: 163, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !{!1230}
!1230 = !DITemplateTypeParameter(name: "_Tp", type: !95)
!1231 = !DISubprogram(name: "StaticHelper", scope: !21, file: !20, line: 50, type: !1232, scopeLine: 50, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1235 = !DISubprogram(name: "~StaticHelper", scope: !21, file: !20, line: 55, type: !1232, scopeLine: 55, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DISubprogram(name: "getInited", linkageName: "_ZNK3Log12StaticHelper9getInitedEv", scope: !21, file: !20, line: 60, type: !1237, scopeLine: 60, flags: DIFlagPrototyped, spFlags: 0)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!95, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1241 = !DISubprogram(name: "setId", linkageName: "_ZN3Log12StaticHelper5setIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 62, type: !1242, scopeLine: 62, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1234, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1246 = !DISubprogram(name: "getId", linkageName: "_ZNK3Log12StaticHelper5getIdB5cxx11Ev", scope: !21, file: !20, line: 64, type: !1247, scopeLine: 64, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1244, !1239}
!1249 = !DISubprogram(name: "setName", linkageName: "_ZN3Log12StaticHelper7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 66, type: !1242, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DISubprogram(name: "getName", linkageName: "_ZNK3Log12StaticHelper7getNameB5cxx11Ev", scope: !21, file: !20, line: 68, type: !1247, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DISubprogram(name: "setLevel", linkageName: "_ZN3Log12StaticHelper8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 70, type: !1242, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DISubprogram(name: "getLevel", linkageName: "_ZNK3Log12StaticHelper8getLevelB5cxx11Ev", scope: !21, file: !20, line: 72, type: !1247, scopeLine: 72, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DISubprogram(name: "setLogger", linkageName: "_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE", scope: !21, file: !20, line: 74, type: !1254, scopeLine: 74, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !1234, !24}
!1256 = !DISubprogram(name: "setThreadLocalLogger", linkageName: "_ZN3Log12StaticHelper20setThreadLocalLoggerEPN4Poco6LoggerE", scope: !21, file: !20, line: 76, type: !1254, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DISubprogram(name: "getLogger", linkageName: "_ZNK3Log12StaticHelper9getLoggerEv", scope: !21, file: !20, line: 84, type: !1258, scopeLine: 84, flags: DIFlagPrototyped, spFlags: 0)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!24, !1239}
!1260 = !DISubprogram(name: "getThreadLocalLogger", linkageName: "_ZNK3Log12StaticHelper20getThreadLocalLoggerEv", scope: !21, file: !20, line: 86, type: !1258, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(name: "_threadLocalLogger", linkageName: "_ZN3Log12StaticHelper18_threadLocalLoggerE", scope: !9, file: !20, line: 90, type: !24, isLocal: false, isDefinition: true, declaration: !28)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(name: "IsShutdown", linkageName: "_ZN3Log10IsShutdownE", scope: !9, file: !20, line: 92, type: !95, isLocal: false, isDefinition: true)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !20, line: 213, type: !1267, isLocal: true, isDefinition: true)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 88, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 11)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !20, line: 307, type: !1272, isLocal: true, isDefinition: true)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 4)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(scope: null, file: !20, line: 331, type: !1277, isLocal: true, isDefinition: true)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 96, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 12)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !20, line: 340, type: !1267, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !20, line: 340, type: !1284, isLocal: true, isDefinition: true)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 48, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 6)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !20, line: 341, type: !1289, isLocal: true, isDefinition: true)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 104, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 13)
!1292 = !DIGlobalVariableExpression(var: !1293, expr: !DIExpression())
!1293 = distinct !DIGlobalVariable(scope: null, file: !20, line: 341, type: !1294, isLocal: true, isDefinition: true)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 8)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !20, line: 366, type: !1284, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !20, line: 371, type: !1301, isLocal: true, isDefinition: true)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 1)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(scope: null, file: !20, line: 374, type: !1306, isLocal: true, isDefinition: true)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 112, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 14)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !20, line: 378, type: !1267, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !20, line: 380, type: !1306, isLocal: true, isDefinition: true)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !20, line: 383, type: !1315, isLocal: true, isDefinition: true)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !110)
!1316 = !DIGlobalVariableExpression(var: !1317, expr: !DIExpression())
!1317 = distinct !DIGlobalVariable(scope: null, file: !20, line: 383, type: !1318, isLocal: true, isDefinition: true)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 24, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 3)
!1321 = !DIGlobalVariableExpression(var: !1322, expr: !DIExpression())
!1322 = distinct !DIGlobalVariable(scope: null, file: !20, line: 384, type: !1272, isLocal: true, isDefinition: true)
!1323 = !DIGlobalVariableExpression(var: !1324, expr: !DIExpression())
!1324 = distinct !DIGlobalVariable(scope: null, file: !20, line: 384, type: !1318, isLocal: true, isDefinition: true)
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression())
!1326 = distinct !DIGlobalVariable(scope: null, file: !20, line: 384, type: !1327, isLocal: true, isDefinition: true)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 120, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 15)
!1330 = !DIGlobalVariableExpression(var: !1331, expr: !DIExpression())
!1331 = distinct !DIGlobalVariable(name: "counter", scope: !1332, file: !20, line: 425, type: !227, isLocal: true, isDefinition: true)
!1332 = distinct !DISubprogram(name: "setThreadLocalLogLevel", linkageName: "_ZN3Log22setThreadLocalLogLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !9, file: !20, line: 413, type: !1333, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1244}
!1335 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !1336, retainedTypes: !1403, globals: !1809, imports: !1839, splitDebugInlining: false, nameTableKind: None)
!1336 = !{!1337, !1343, !1355, !1100, !1366, !1372, !1395, !1398}
!1337 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !43, file: !1338, line: 49, baseType: !1101, size: 32, elements: !1339, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!1338 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/concurrence.h", directory: "")
!1339 = !{!1340, !1341, !1342}
!1340 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!1341 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!1342 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!1343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Priority", scope: !1345, file: !1344, line: 46, baseType: !1101, size: 32, elements: !1346, identifier: "_ZTSN4Poco7Message8PriorityE")
!1344 = !DIFile(filename: "/usr/include/Poco/Message.h", directory: "", checksumkind: CSK_MD5, checksum: "7bdab359746cded723eb4c57c8be664a")
!1345 = !DICompositeType(tag: DW_TAG_class_type, name: "Message", scope: !27, file: !1344, line: 29, size: 1216, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco7MessageE")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1347 = !DIEnumerator(name: "PRIO_FATAL", value: 1, isUnsigned: true)
!1348 = !DIEnumerator(name: "PRIO_CRITICAL", value: 2, isUnsigned: true)
!1349 = !DIEnumerator(name: "PRIO_ERROR", value: 3, isUnsigned: true)
!1350 = !DIEnumerator(name: "PRIO_WARNING", value: 4, isUnsigned: true)
!1351 = !DIEnumerator(name: "PRIO_NOTICE", value: 5, isUnsigned: true)
!1352 = !DIEnumerator(name: "PRIO_INFORMATION", value: 6, isUnsigned: true)
!1353 = !DIEnumerator(name: "PRIO_DEBUG", value: 7, isUnsigned: true)
!1354 = !DIEnumerator(name: "PRIO_TRACE", value: 8, isUnsigned: true)
!1355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Openmode", scope: !2, file: !5, line: 111, baseType: !227, size: 32, elements: !1356, identifier: "_ZTSSt13_Ios_Openmode")
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1357 = !DIEnumerator(name: "_S_app", value: 1)
!1358 = !DIEnumerator(name: "_S_ate", value: 2)
!1359 = !DIEnumerator(name: "_S_bin", value: 4)
!1360 = !DIEnumerator(name: "_S_in", value: 8)
!1361 = !DIEnumerator(name: "_S_out", value: 16)
!1362 = !DIEnumerator(name: "_S_trunc", value: 32)
!1363 = !DIEnumerator(name: "_S_ios_openmode_end", value: 65536)
!1364 = !DIEnumerator(name: "_S_ios_openmode_max", value: 2147483647)
!1365 = !DIEnumerator(name: "_S_ios_openmode_min", value: -2147483648)
!1366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__memory_order_modifier", scope: !2, file: !1021, line: 89, baseType: !1101, size: 32, elements: !1367, identifier: "_ZTSSt23__memory_order_modifier")
!1367 = !{!1368, !1369, !1370, !1371}
!1368 = !DIEnumerator(name: "__memory_order_mask", value: 65535, isUnsigned: true)
!1369 = !DIEnumerator(name: "__memory_order_modifier_mask", value: 4294901760, isUnsigned: true)
!1370 = !DIEnumerator(name: "__memory_order_hle_acquire", value: 65536, isUnsigned: true)
!1371 = !DIEnumerator(name: "__memory_order_hle_release", value: 131072, isUnsigned: true)
!1372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Fmtflags", scope: !2, file: !5, line: 57, baseType: !227, size: 32, elements: !1373, identifier: "_ZTSSt13_Ios_Fmtflags")
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1374 = !DIEnumerator(name: "_S_boolalpha", value: 1)
!1375 = !DIEnumerator(name: "_S_dec", value: 2)
!1376 = !DIEnumerator(name: "_S_fixed", value: 4)
!1377 = !DIEnumerator(name: "_S_hex", value: 8)
!1378 = !DIEnumerator(name: "_S_internal", value: 16)
!1379 = !DIEnumerator(name: "_S_left", value: 32)
!1380 = !DIEnumerator(name: "_S_oct", value: 64)
!1381 = !DIEnumerator(name: "_S_right", value: 128)
!1382 = !DIEnumerator(name: "_S_scientific", value: 256)
!1383 = !DIEnumerator(name: "_S_showbase", value: 512)
!1384 = !DIEnumerator(name: "_S_showpoint", value: 1024)
!1385 = !DIEnumerator(name: "_S_showpos", value: 2048)
!1386 = !DIEnumerator(name: "_S_skipws", value: 4096)
!1387 = !DIEnumerator(name: "_S_unitbuf", value: 8192)
!1388 = !DIEnumerator(name: "_S_uppercase", value: 16384)
!1389 = !DIEnumerator(name: "_S_adjustfield", value: 176)
!1390 = !DIEnumerator(name: "_S_basefield", value: 74)
!1391 = !DIEnumerator(name: "_S_floatfield", value: 260)
!1392 = !DIEnumerator(name: "_S_ios_fmtflags_end", value: 65536)
!1393 = !DIEnumerator(name: "_S_ios_fmtflags_max", value: 2147483647)
!1394 = !DIEnumerator(name: "_S_ios_fmtflags_min", value: -2147483648)
!1395 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !32, file: !37, line: 177, baseType: !1101, size: 32, elements: !1396, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt_E")
!1396 = !{!1397}
!1397 = !DIEnumerator(name: "_S_local_capacity", value: 15, isUnsigned: true)
!1398 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Rb_tree_color", scope: !2, file: !1399, line: 99, baseType: !1101, size: 32, elements: !1400, identifier: "_ZTSSt14_Rb_tree_color")
!1399 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_tree.h", directory: "")
!1400 = !{!1401, !1402}
!1401 = !DIEnumerator(name: "_S_red", value: 0, isUnsigned: true)
!1402 = !DIEnumerator(name: "_S_black", value: 1, isUnsigned: true)
!1403 = !{!1404, !30, !227, !1099, !1372, !1101, !125, !39, !1407, !1536, !1523, !67, !1461, !1457, !6, !12, !1020, !1016, !21, !117, !161, !32, !472, !531, !661, !730, !1586, !1688, !1409, !1543}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_class_type, name: "Channel", scope: !27, file: !1406, line: 34, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1406 = !DIFile(filename: "/usr/include/Poco/Channel.h", directory: "", checksumkind: CSK_MD5, checksum: "3cf13c7dacea02a654b31829b23cc0f5")
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !1408, file: !1399, line: 816, baseType: !1409, flags: DIFlagPublic)
!1408 = !DICompositeType(tag: DW_TAG_class_type, name: "_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::_Select1st<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >", scope: !2, file: !1399, line: 425, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE")
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !1399, line: 328, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1410, templateParams: !1534, identifier: "_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE")
!1410 = !{!1411, !1432, !1436, !1439, !1446, !1451, !1519, !1524, !1529, !1532, !1533}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_M_node", scope: !1409, file: !1399, line: 405, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", file: !1399, line: 340, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", scope: !1414, file: !1399, line: 104, baseType: !1430)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node_base", scope: !2, file: !1399, line: 101, size: 256, flags: DIFlagTypePassByValue, elements: !1415, identifier: "_ZTSSt18_Rb_tree_node_base")
!1415 = !{!1416, !1417, !1420, !1421, !1422, !1425, !1428, !1429}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_M_color", scope: !1414, file: !1399, line: 106, baseType: !1398, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_M_parent", scope: !1414, file: !1399, line: 107, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", scope: !1414, file: !1399, line: 103, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_M_left", scope: !1414, file: !1399, line: 108, baseType: !1418, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_M_right", scope: !1414, file: !1399, line: 109, baseType: !1418, size: 64, offset: 192)
!1422 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPS_", scope: !1414, file: !1399, line: 112, type: !1423, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!1418, !1418}
!1425 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPKS_", scope: !1414, file: !1399, line: 119, type: !1426, scopeLine: 119, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1413, !1413}
!1428 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPS_", scope: !1414, file: !1399, line: 126, type: !1423, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1429 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPKS_", scope: !1414, file: !1399, line: 133, type: !1426, scopeLine: 133, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1432 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !1409, file: !1399, line: 343, type: !1433, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1436 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !1409, file: !1399, line: 347, type: !1437, scopeLine: 347, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1435, !1412}
!1439 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !1409, file: !1399, line: 350, type: !1440, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1435, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !1409, file: !1399, line: 334, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !1399, line: 256, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE")
!1446 = !DISubprogram(name: "_M_const_cast", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE13_M_const_castEv", scope: !1409, file: !1399, line: 354, type: !1447, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1444, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1451 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv", scope: !1409, file: !1399, line: 358, type: !1452, scopeLine: 358, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1449}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1409, file: !1399, line: 331, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !2, file: !1458, line: 211, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1459, templateParams: !1516, identifier: "_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E")
!1458 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_pair.h", directory: "", checksumkind: CSK_MD5, checksum: "7f4523a2a9644730e7f1af988b6f398d")
!1459 = !{!1460, !1480, !1481, !1482, !1486, !1490, !1504, !1513}
!1460 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1457, baseType: !1461, flags: DIFlagPrivate, extraData: i32 0)
!1461 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !2, file: !1458, line: 189, size: 8, flags: DIFlagTypePassByValue, elements: !1462, templateParams: !1477, identifier: "_ZTSSt11__pair_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E")
!1462 = !{!1463, !1467, !1468, !1473}
!1463 = !DISubprogram(name: "__pair_base", scope: !1461, file: !1458, line: 193, type: !1464, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1467 = !DISubprogram(name: "~__pair_base", scope: !1461, file: !1458, line: 194, type: !1464, scopeLine: 194, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DISubprogram(name: "__pair_base", scope: !1461, file: !1458, line: 195, type: !1469, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !1466, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1473 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11__pair_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSERKS7_", scope: !1461, file: !1458, line: 196, type: !1474, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !1466, !1471}
!1476 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1461, size: 64)
!1477 = !{!1478, !1479}
!1478 = !DITemplateTypeParameter(name: "_U1", type: !407)
!1479 = !DITemplateTypeParameter(name: "_U2", type: !32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1457, file: !1458, line: 217, baseType: !407, size: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !1457, file: !1458, line: 218, baseType: !32, size: 256, offset: 256)
!1482 = !DISubprogram(name: "pair", scope: !1457, file: !1458, line: 314, type: !1483, scopeLine: 314, flags: DIFlagPrototyped, spFlags: 0)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1485, !1455}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1486 = !DISubprogram(name: "pair", scope: !1457, file: !1458, line: 315, type: !1487, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1485, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1457, size: 64)
!1490 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSERKSt10__nonesuch", scope: !1457, file: !1458, line: 390, type: !1491, scopeLine: 390, flags: DIFlagPrototyped, spFlags: 0)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1493, !1485, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1457, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1496, file: !1495, line: 2226, baseType: !1501)
!1495 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, const std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &, const std::__nonesuch &>", scope: !2, file: !1495, line: 2225, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !1497, identifier: "_ZTSSt11conditionalILb0ERKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ERKSt10__nonesuchE")
!1497 = !{!1498, !1499, !1500}
!1498 = !DITemplateValueParameter(name: "_Cond", type: !95, value: i1 false)
!1499 = !DITemplateTypeParameter(name: "_Iftrue", type: !1455)
!1500 = !DITemplateTypeParameter(name: "_Iffalse", type: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nonesuch", scope: !2, file: !1495, line: 2991, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt10__nonesuch")
!1504 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOSt10__nonesuch", scope: !1457, file: !1458, line: 401, type: !1505, scopeLine: 401, flags: DIFlagPrototyped, spFlags: 0)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!1493, !1485, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1508, file: !1495, line: 2226, baseType: !1512)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &&, std::__nonesuch &&>", scope: !2, file: !1495, line: 2225, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !1509, identifier: "_ZTSSt11conditionalILb0EOSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EOSt10__nonesuchE")
!1509 = !{!1498, !1510, !1511}
!1510 = !DITemplateTypeParameter(name: "_Iftrue", type: !1489)
!1511 = !DITemplateTypeParameter(name: "_Iffalse", type: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1503, size: 64)
!1513 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E4swapERS7_", scope: !1457, file: !1458, line: 439, type: !1514, scopeLine: 439, flags: DIFlagPrototyped, spFlags: 0)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1485, !1493}
!1516 = !{!1517, !1518}
!1517 = !DITemplateTypeParameter(name: "_T1", type: !407)
!1518 = !DITemplateTypeParameter(name: "_T2", type: !32)
!1519 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv", scope: !1409, file: !1399, line: 362, type: !1520, scopeLine: 362, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1522, !1449}
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1409, file: !1399, line: 332, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1524 = !DISubprogram(name: "operator++", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv", scope: !1409, file: !1399, line: 366, type: !1525, scopeLine: 366, flags: DIFlagPrototyped, spFlags: 0)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1527, !1435}
!1527 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Self", scope: !1409, file: !1399, line: 339, baseType: !1409)
!1529 = !DISubprogram(name: "operator++", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEi", scope: !1409, file: !1399, line: 373, type: !1530, scopeLine: 373, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1528, !1435, !227}
!1532 = !DISubprogram(name: "operator--", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEv", scope: !1409, file: !1399, line: 381, type: !1525, scopeLine: 381, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DISubprogram(name: "operator--", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEi", scope: !1409, file: !1399, line: 388, type: !1530, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !{!1535}
!1535 = !DITemplateTypeParameter(name: "_Tp", type: !1457)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Link_type", scope: !1409, file: !1399, line: 341, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !2, file: !1399, line: 216, size: 768, flags: DIFlagTypePassByValue, elements: !1540, templateParams: !1584, identifier: "_ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE")
!1540 = !{!1541, !1542, !1576, !1580}
!1541 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1539, baseType: !1414, extraData: i32 0)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !1539, file: !1399, line: 231, baseType: !1543, size: 512, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__aligned_membuf<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !43, file: !1544, line: 47, size: 512, flags: DIFlagTypePassByValue, elements: !1545, templateParams: !1534, identifier: "_ZTSN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE")
!1544 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/aligned_buffer.h", directory: "")
!1545 = !{!1546, !1551, !1555, !1560, !1564, !1569, !1573}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !1543, file: !1544, line: 56, baseType: !1547, size: 512, align: 64)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1548, size: 512, elements: !1549)
!1548 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1549 = !{!1550}
!1550 = !DISubrange(count: 64)
!1551 = !DISubprogram(name: "__aligned_membuf", scope: !1543, file: !1544, line: 58, type: !1552, scopeLine: 58, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1555 = !DISubprogram(name: "__aligned_membuf", scope: !1543, file: !1544, line: 61, type: !1556, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1554, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !61, line: 284, baseType: !1559)
!1559 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1560 = !DISubprogram(name: "_M_addr", linkageName: "_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv", scope: !1543, file: !1544, line: 64, type: !1561, scopeLine: 64, flags: DIFlagPrototyped, spFlags: 0)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1563, !1554}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1564 = !DISubprogram(name: "_M_addr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv", scope: !1543, file: !1544, line: 68, type: !1565, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!67, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1569 = !DISubprogram(name: "_M_ptr", linkageName: "_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv", scope: !1543, file: !1544, line: 72, type: !1570, scopeLine: 72, flags: DIFlagPrototyped, spFlags: 0)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1572, !1554}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1573 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv", scope: !1543, file: !1544, line: 76, type: !1574, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1523, !1567}
!1576 = !DISubprogram(name: "_M_valptr", linkageName: "_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv", scope: !1539, file: !1399, line: 234, type: !1577, scopeLine: 234, flags: DIFlagPrototyped, spFlags: 0)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1572, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1580 = !DISubprogram(name: "_M_valptr", linkageName: "_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv", scope: !1539, file: !1399, line: 238, type: !1581, scopeLine: 238, flags: DIFlagPrototyped, spFlags: 0)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1523, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1584 = !{!1585}
!1585 = !DITemplateTypeParameter(name: "_Val", type: !1457)
!1586 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AutoPtr<Poco::Channel>", scope: !27, file: !1587, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1588, templateParams: !1686, identifier: "_ZTSN4Poco7AutoPtrINS_7ChannelEEE")
!1587 = !DIFile(filename: "/usr/include/Poco/AutoPtr.h", directory: "", checksumkind: CSK_MD5, checksum: "e986bd87059dd8c1f148453e36f8f6b9")
!1588 = !{!1589, !1590, !1594, !1597, !1600, !1605, !1609, !1610, !1614, !1617, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1629, !1632, !1635, !1641, !1645, !1649, !1650, !1651, !1652, !1653, !1656, !1657, !1658, !1661, !1664, !1667, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_ptr", scope: !1586, file: !1587, line: 396, baseType: !1404, size: 64)
!1590 = !DISubprogram(name: "AutoPtr", scope: !1586, file: !1587, line: 65, type: !1591, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1594 = !DISubprogram(name: "AutoPtr", scope: !1586, file: !1587, line: 69, type: !1595, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1593, !1404}
!1597 = !DISubprogram(name: "AutoPtr", scope: !1586, file: !1587, line: 73, type: !1598, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !1593, !1404, !95}
!1600 = !DISubprogram(name: "AutoPtr", scope: !1586, file: !1587, line: 78, type: !1601, scopeLine: 78, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1593, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1605 = !DISubprogram(name: "AutoPtr", scope: !1586, file: !1587, line: 83, type: !1606, scopeLine: 83, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1593, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1586, size: 64)
!1609 = !DISubprogram(name: "~AutoPtr", scope: !1586, file: !1587, line: 94, type: !1591, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1610 = !DISubprogram(name: "assign", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_", scope: !1586, file: !1587, line: 99, type: !1611, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1613, !1593, !1404}
!1613 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1586, size: 64)
!1614 = !DISubprogram(name: "assign", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_b", scope: !1586, file: !1587, line: 109, type: !1615, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1613, !1593, !1404, !95}
!1617 = !DISubprogram(name: "assign", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE6assignERKS2_", scope: !1586, file: !1587, line: 120, type: !1618, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1613, !1593, !1603}
!1620 = !DISubprogram(name: "reset", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE5resetEv", scope: !1586, file: !1587, line: 143, type: !1591, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1621 = !DISubprogram(name: "reset", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE5resetEPS1_", scope: !1586, file: !1587, line: 152, type: !1595, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1622 = !DISubprogram(name: "reset", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE5resetEPS1_b", scope: !1586, file: !1587, line: 157, type: !1598, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1623 = !DISubprogram(name: "reset", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE5resetERKS2_", scope: !1586, file: !1587, line: 162, type: !1601, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1624 = !DISubprogram(name: "operator=", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_", scope: !1586, file: !1587, line: 173, type: !1611, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1625 = !DISubprogram(name: "operator=", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEaSERKS2_", scope: !1586, file: !1587, line: 178, type: !1618, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1626 = !DISubprogram(name: "operator=", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEaSEOS2_", scope: !1586, file: !1587, line: 183, type: !1627, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1613, !1593, !1608}
!1629 = !DISubprogram(name: "swap", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE4swapERS2_", scope: !1586, file: !1587, line: 197, type: !1630, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1593, !1613}
!1632 = !DISubprogram(name: "operator->", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEptEv", scope: !1586, file: !1587, line: 227, type: !1633, scopeLine: 227, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1404, !1593}
!1635 = !DISubprogram(name: "operator->", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEptEv", scope: !1586, file: !1587, line: 235, type: !1636, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1638, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1641 = !DISubprogram(name: "operator*", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEdeEv", scope: !1586, file: !1587, line: 243, type: !1642, scopeLine: 243, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1644, !1593}
!1644 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1405, size: 64)
!1645 = !DISubprogram(name: "operator*", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEdeEv", scope: !1586, file: !1587, line: 251, type: !1646, scopeLine: 251, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1640}
!1648 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1639, size: 64)
!1649 = !DISubprogram(name: "get", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE3getEv", scope: !1586, file: !1587, line: 259, type: !1633, scopeLine: 259, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1650 = !DISubprogram(name: "get", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEE3getEv", scope: !1586, file: !1587, line: 264, type: !1636, scopeLine: 264, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1651 = !DISubprogram(name: "operator Poco::Channel *", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEcvPS1_Ev", scope: !1586, file: !1587, line: 269, type: !1633, scopeLine: 269, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1652 = !DISubprogram(name: "operator const Poco::Channel *", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEcvPKS1_Ev", scope: !1586, file: !1587, line: 274, type: !1636, scopeLine: 274, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1653 = !DISubprogram(name: "operator!", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEntEv", scope: !1586, file: !1587, line: 279, type: !1654, scopeLine: 279, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!95, !1640}
!1656 = !DISubprogram(name: "isNull", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEE6isNullEv", scope: !1586, file: !1587, line: 284, type: !1654, scopeLine: 284, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1657 = !DISubprogram(name: "duplicate", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE9duplicateEv", scope: !1586, file: !1587, line: 289, type: !1633, scopeLine: 289, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1658 = !DISubprogram(name: "operator==", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEeqERKS2_", scope: !1586, file: !1587, line: 295, type: !1659, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!95, !1640, !1603}
!1661 = !DISubprogram(name: "operator==", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEeqEPKS1_", scope: !1586, file: !1587, line: 300, type: !1662, scopeLine: 300, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!95, !1640, !1638}
!1664 = !DISubprogram(name: "operator==", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEeqEPS1_", scope: !1586, file: !1587, line: 305, type: !1665, scopeLine: 305, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!95, !1640, !1404}
!1667 = !DISubprogram(name: "operator==", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEeqEDn", scope: !1586, file: !1587, line: 310, type: !1668, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!95, !1640, !1558}
!1670 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEneERKS2_", scope: !1586, file: !1587, line: 315, type: !1659, scopeLine: 315, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1671 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEneEPKS1_", scope: !1586, file: !1587, line: 320, type: !1662, scopeLine: 320, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1672 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEneEPS1_", scope: !1586, file: !1587, line: 325, type: !1665, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1673 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEneEDn", scope: !1586, file: !1587, line: 330, type: !1668, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1674 = !DISubprogram(name: "operator<", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEltERKS2_", scope: !1586, file: !1587, line: 335, type: !1659, scopeLine: 335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1675 = !DISubprogram(name: "operator<", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEltEPKS1_", scope: !1586, file: !1587, line: 340, type: !1662, scopeLine: 340, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1676 = !DISubprogram(name: "operator<", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEltEPS1_", scope: !1586, file: !1587, line: 345, type: !1665, scopeLine: 345, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1677 = !DISubprogram(name: "operator<=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEleERKS2_", scope: !1586, file: !1587, line: 350, type: !1659, scopeLine: 350, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1678 = !DISubprogram(name: "operator<=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEleEPKS1_", scope: !1586, file: !1587, line: 355, type: !1662, scopeLine: 355, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1679 = !DISubprogram(name: "operator<=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEleEPS1_", scope: !1586, file: !1587, line: 360, type: !1665, scopeLine: 360, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1680 = !DISubprogram(name: "operator>", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgtERKS2_", scope: !1586, file: !1587, line: 365, type: !1659, scopeLine: 365, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1681 = !DISubprogram(name: "operator>", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgtEPKS1_", scope: !1586, file: !1587, line: 370, type: !1662, scopeLine: 370, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1682 = !DISubprogram(name: "operator>", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgtEPS1_", scope: !1586, file: !1587, line: 375, type: !1665, scopeLine: 375, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1683 = !DISubprogram(name: "operator>=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgeERKS2_", scope: !1586, file: !1587, line: 380, type: !1659, scopeLine: 380, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1684 = !DISubprogram(name: "operator>=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgeEPKS1_", scope: !1586, file: !1587, line: 385, type: !1662, scopeLine: 385, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1685 = !DISubprogram(name: "operator>=", linkageName: "_ZNK4Poco7AutoPtrINS_7ChannelEEgeEPS1_", scope: !1586, file: !1587, line: 390, type: !1665, scopeLine: 390, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1686 = !{!1687}
!1687 = !DITemplateTypeParameter(name: "C", type: !1405)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int>", scope: !2, file: !1021, line: 324, size: 32, flags: DIFlagTypePassByReference, elements: !1689, templateParams: !1807, identifier: "_ZTSSt13__atomic_baseIiE")
!1689 = !{!1690, !1691, !1693, !1697, !1698, !1703, !1707, !1712, !1715, !1719, !1724, !1727, !1730, !1733, !1736, !1737, !1738, !1741, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1759, !1762, !1765, !1768, !1771, !1774, !1777, !1780, !1784, !1787, !1790, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_S_alignment", scope: !1688, file: !1021, line: 332, baseType: !1024, flags: DIFlagPrivate | DIFlagStaticMember, extraData: i32 4)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_M_i", scope: !1688, file: !1021, line: 335, baseType: !1692, size: 32, align: 32, flags: DIFlagPrivate)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_type", scope: !1688, file: !1021, line: 330, baseType: !227, flags: DIFlagPrivate)
!1693 = !DISubprogram(name: "__atomic_base", scope: !1688, file: !1021, line: 338, type: !1694, scopeLine: 338, flags: DIFlagPrototyped, spFlags: 0)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1697 = !DISubprogram(name: "~__atomic_base", scope: !1688, file: !1021, line: 339, type: !1694, scopeLine: 339, flags: DIFlagPrototyped, spFlags: 0)
!1698 = !DISubprogram(name: "__atomic_base", scope: !1688, file: !1021, line: 340, type: !1699, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1696, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1703 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIiEaSERKS0_", scope: !1688, file: !1021, line: 341, type: !1704, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1706, !1696, !1701}
!1706 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1688, size: 64)
!1707 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIiEaSERKS0_", scope: !1688, file: !1021, line: 342, type: !1708, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!1706, !1710, !1701}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1711 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1688)
!1712 = !DISubprogram(name: "__atomic_base", scope: !1688, file: !1021, line: 345, type: !1713, scopeLine: 345, flags: DIFlagPrototyped, spFlags: 0)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1696, !1692}
!1715 = !DISubprogram(name: "operator int", linkageName: "_ZNKSt13__atomic_baseIiEcviEv", scope: !1688, file: !1021, line: 347, type: !1716, scopeLine: 347, flags: DIFlagPrototyped, spFlags: 0)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1692, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1719 = !DISubprogram(name: "operator int", linkageName: "_ZNVKSt13__atomic_baseIiEcviEv", scope: !1688, file: !1021, line: 350, type: !1720, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1692, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1724 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIiEaSEi", scope: !1688, file: !1021, line: 354, type: !1725, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1692, !1696, !1692}
!1727 = !DISubprogram(name: "operator=", linkageName: "_ZNVSt13__atomic_baseIiEaSEi", scope: !1688, file: !1021, line: 361, type: !1728, scopeLine: 361, flags: DIFlagPrototyped, spFlags: 0)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1692, !1710, !1692}
!1730 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIiEppEi", scope: !1688, file: !1021, line: 368, type: !1731, scopeLine: 368, flags: DIFlagPrototyped, spFlags: 0)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1692, !1696, !227}
!1733 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIiEppEi", scope: !1688, file: !1021, line: 372, type: !1734, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1692, !1710, !227}
!1736 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIiEmmEi", scope: !1688, file: !1021, line: 376, type: !1731, scopeLine: 376, flags: DIFlagPrototyped, spFlags: 0)
!1737 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIiEmmEi", scope: !1688, file: !1021, line: 380, type: !1734, scopeLine: 380, flags: DIFlagPrototyped, spFlags: 0)
!1738 = !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIiEppEv", scope: !1688, file: !1021, line: 384, type: !1739, scopeLine: 384, flags: DIFlagPrototyped, spFlags: 0)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1692, !1696}
!1741 = !DISubprogram(name: "operator++", linkageName: "_ZNVSt13__atomic_baseIiEppEv", scope: !1688, file: !1021, line: 388, type: !1742, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1692, !1710}
!1744 = !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIiEmmEv", scope: !1688, file: !1021, line: 392, type: !1739, scopeLine: 392, flags: DIFlagPrototyped, spFlags: 0)
!1745 = !DISubprogram(name: "operator--", linkageName: "_ZNVSt13__atomic_baseIiEmmEv", scope: !1688, file: !1021, line: 396, type: !1742, scopeLine: 396, flags: DIFlagPrototyped, spFlags: 0)
!1746 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt13__atomic_baseIiEpLEi", scope: !1688, file: !1021, line: 400, type: !1725, scopeLine: 400, flags: DIFlagPrototyped, spFlags: 0)
!1747 = !DISubprogram(name: "operator+=", linkageName: "_ZNVSt13__atomic_baseIiEpLEi", scope: !1688, file: !1021, line: 404, type: !1728, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!1748 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt13__atomic_baseIiEmIEi", scope: !1688, file: !1021, line: 408, type: !1725, scopeLine: 408, flags: DIFlagPrototyped, spFlags: 0)
!1749 = !DISubprogram(name: "operator-=", linkageName: "_ZNVSt13__atomic_baseIiEmIEi", scope: !1688, file: !1021, line: 412, type: !1728, scopeLine: 412, flags: DIFlagPrototyped, spFlags: 0)
!1750 = !DISubprogram(name: "operator&=", linkageName: "_ZNSt13__atomic_baseIiEaNEi", scope: !1688, file: !1021, line: 416, type: !1725, scopeLine: 416, flags: DIFlagPrototyped, spFlags: 0)
!1751 = !DISubprogram(name: "operator&=", linkageName: "_ZNVSt13__atomic_baseIiEaNEi", scope: !1688, file: !1021, line: 420, type: !1728, scopeLine: 420, flags: DIFlagPrototyped, spFlags: 0)
!1752 = !DISubprogram(name: "operator|=", linkageName: "_ZNSt13__atomic_baseIiEoREi", scope: !1688, file: !1021, line: 424, type: !1725, scopeLine: 424, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DISubprogram(name: "operator|=", linkageName: "_ZNVSt13__atomic_baseIiEoREi", scope: !1688, file: !1021, line: 428, type: !1728, scopeLine: 428, flags: DIFlagPrototyped, spFlags: 0)
!1754 = !DISubprogram(name: "operator^=", linkageName: "_ZNSt13__atomic_baseIiEeOEi", scope: !1688, file: !1021, line: 432, type: !1725, scopeLine: 432, flags: DIFlagPrototyped, spFlags: 0)
!1755 = !DISubprogram(name: "operator^=", linkageName: "_ZNVSt13__atomic_baseIiEeOEi", scope: !1688, file: !1021, line: 436, type: !1728, scopeLine: 436, flags: DIFlagPrototyped, spFlags: 0)
!1756 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNKSt13__atomic_baseIiE12is_lock_freeEv", scope: !1688, file: !1021, line: 440, type: !1757, scopeLine: 440, flags: DIFlagPrototyped, spFlags: 0)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!95, !1718}
!1759 = !DISubprogram(name: "is_lock_free", linkageName: "_ZNVKSt13__atomic_baseIiE12is_lock_freeEv", scope: !1688, file: !1021, line: 448, type: !1760, scopeLine: 448, flags: DIFlagPrototyped, spFlags: 0)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!95, !1722}
!1762 = !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIiE5storeEiSt12memory_order", scope: !1688, file: !1021, line: 456, type: !1763, scopeLine: 456, flags: DIFlagPrototyped, spFlags: 0)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !1696, !1692, !1099}
!1765 = !DISubprogram(name: "store", linkageName: "_ZNVSt13__atomic_baseIiE5storeEiSt12memory_order", scope: !1688, file: !1021, line: 468, type: !1766, scopeLine: 468, flags: DIFlagPrototyped, spFlags: 0)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1710, !1692, !1099}
!1768 = !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIiE4loadESt12memory_order", scope: !1688, file: !1021, line: 481, type: !1769, scopeLine: 481, flags: DIFlagPrototyped, spFlags: 0)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1692, !1718, !1099}
!1771 = !DISubprogram(name: "load", linkageName: "_ZNVKSt13__atomic_baseIiE4loadESt12memory_order", scope: !1688, file: !1021, line: 492, type: !1772, scopeLine: 492, flags: DIFlagPrototyped, spFlags: 0)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1692, !1722, !1099}
!1774 = !DISubprogram(name: "exchange", linkageName: "_ZNSt13__atomic_baseIiE8exchangeEiSt12memory_order", scope: !1688, file: !1021, line: 503, type: !1775, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1692, !1696, !1692, !1099}
!1777 = !DISubprogram(name: "exchange", linkageName: "_ZNVSt13__atomic_baseIiE8exchangeEiSt12memory_order", scope: !1688, file: !1021, line: 511, type: !1778, scopeLine: 511, flags: DIFlagPrototyped, spFlags: 0)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1692, !1710, !1692, !1099}
!1780 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_", scope: !1688, file: !1021, line: 518, type: !1781, scopeLine: 518, flags: DIFlagPrototyped, spFlags: 0)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!95, !1696, !1783, !1692, !1099, !1099}
!1783 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1692, size: 64)
!1784 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_", scope: !1688, file: !1021, line: 528, type: !1785, scopeLine: 528, flags: DIFlagPrototyped, spFlags: 0)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!95, !1710, !1783, !1692, !1099, !1099}
!1787 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_order", scope: !1688, file: !1021, line: 539, type: !1788, scopeLine: 539, flags: DIFlagPrototyped, spFlags: 0)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!95, !1696, !1783, !1692, !1099}
!1790 = !DISubprogram(name: "compare_exchange_weak", linkageName: "_ZNVSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_order", scope: !1688, file: !1021, line: 547, type: !1791, scopeLine: 547, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!95, !1710, !1783, !1692, !1099}
!1793 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_", scope: !1688, file: !1021, line: 555, type: !1781, scopeLine: 555, flags: DIFlagPrototyped, spFlags: 0)
!1794 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_", scope: !1688, file: !1021, line: 565, type: !1785, scopeLine: 565, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_order", scope: !1688, file: !1021, line: 576, type: !1788, scopeLine: 576, flags: DIFlagPrototyped, spFlags: 0)
!1796 = !DISubprogram(name: "compare_exchange_strong", linkageName: "_ZNVSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_order", scope: !1688, file: !1021, line: 584, type: !1791, scopeLine: 584, flags: DIFlagPrototyped, spFlags: 0)
!1797 = !DISubprogram(name: "fetch_add", linkageName: "_ZNSt13__atomic_baseIiE9fetch_addEiSt12memory_order", scope: !1688, file: !1021, line: 616, type: !1775, scopeLine: 616, flags: DIFlagPrototyped, spFlags: 0)
!1798 = !DISubprogram(name: "fetch_add", linkageName: "_ZNVSt13__atomic_baseIiE9fetch_addEiSt12memory_order", scope: !1688, file: !1021, line: 621, type: !1778, scopeLine: 621, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNSt13__atomic_baseIiE9fetch_subEiSt12memory_order", scope: !1688, file: !1021, line: 626, type: !1775, scopeLine: 626, flags: DIFlagPrototyped, spFlags: 0)
!1800 = !DISubprogram(name: "fetch_sub", linkageName: "_ZNVSt13__atomic_baseIiE9fetch_subEiSt12memory_order", scope: !1688, file: !1021, line: 631, type: !1778, scopeLine: 631, flags: DIFlagPrototyped, spFlags: 0)
!1801 = !DISubprogram(name: "fetch_and", linkageName: "_ZNSt13__atomic_baseIiE9fetch_andEiSt12memory_order", scope: !1688, file: !1021, line: 636, type: !1775, scopeLine: 636, flags: DIFlagPrototyped, spFlags: 0)
!1802 = !DISubprogram(name: "fetch_and", linkageName: "_ZNVSt13__atomic_baseIiE9fetch_andEiSt12memory_order", scope: !1688, file: !1021, line: 641, type: !1778, scopeLine: 641, flags: DIFlagPrototyped, spFlags: 0)
!1803 = !DISubprogram(name: "fetch_or", linkageName: "_ZNSt13__atomic_baseIiE8fetch_orEiSt12memory_order", scope: !1688, file: !1021, line: 646, type: !1775, scopeLine: 646, flags: DIFlagPrototyped, spFlags: 0)
!1804 = !DISubprogram(name: "fetch_or", linkageName: "_ZNVSt13__atomic_baseIiE8fetch_orEiSt12memory_order", scope: !1688, file: !1021, line: 651, type: !1778, scopeLine: 651, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNSt13__atomic_baseIiE9fetch_xorEiSt12memory_order", scope: !1688, file: !1021, line: 656, type: !1775, scopeLine: 656, flags: DIFlagPrototyped, spFlags: 0)
!1806 = !DISubprogram(name: "fetch_xor", linkageName: "_ZNVSt13__atomic_baseIiE9fetch_xorEiSt12memory_order", scope: !1688, file: !1021, line: 661, type: !1778, scopeLine: 661, flags: DIFlagPrototyped, spFlags: 0)
!1807 = !{!1808}
!1808 = !DITemplateTypeParameter(name: "_ITp", type: !227)
!1809 = !{!0, !7, !18, !1261, !1263, !1265, !1270, !1275, !1280, !1282, !1287, !1292, !1297, !1299, !1304, !1309, !1311, !1313, !1316, !1321, !1323, !1325, !1330, !1810, !1815, !1828, !1833}
!1810 = !DIGlobalVariableExpression(var: !1811, expr: !DIExpression())
!1811 = distinct !DIGlobalVariable(scope: null, file: !20, line: 426, type: !1812, isLocal: true, isDefinition: true)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 16, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 2)
!1815 = !DIGlobalVariableExpression(var: !1816, expr: !DIExpression())
!1816 = distinct !DIGlobalVariable(name: "__digits", scope: !1817, file: !1818, line: 77, type: !1824, isLocal: false, isDefinition: true)
!1817 = distinct !DISubprogram(name: "__to_chars_10_impl<unsigned int>", linkageName: "_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_", scope: !1819, file: !1818, line: 72, type: !1820, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !1822, retainedNodes: !167)
!1818 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/charconv.h", directory: "")
!1819 = !DINamespace(name: "__detail", scope: !2)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !53, !1101, !1101}
!1822 = !{!1823}
!1823 = !DITemplateTypeParameter(name: "_Tp", type: !1101)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1608, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: 201)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(scope: null, file: !33, line: 212, type: !1830, isLocal: true, isDefinition: true)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 336, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 42)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(scope: null, file: !1835, line: 86, type: !1836, isLocal: true, isDefinition: true)
!1835 = !DIFile(filename: "/usr/include/Poco/RefCountedObject.h", directory: "", checksumkind: CSK_MD5, checksum: "26f3999e68b01d8ced998015b85f8d4f")
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 296, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 37)
!1839 = !{!1840, !1848, !1852, !1858, !1862, !1866, !1872, !1876, !1878, !1880, !1884, !1888, !1892, !1896, !1900, !1902, !1904, !1906, !1910, !1914, !1918, !1920, !1922, !1928, !1932, !1947, !1952, !1957, !1962, !1967, !1973, !1979, !1983, !1985, !1990, !1997, !2002, !2017, !2020, !2025, !2033, !2041, !2045, !2052, !2056, !2060, !2062, !2064, !2068, !2074, !2078, !2084, !2090, !2092, !2096, !2100, !2104, !2108, !2120, !2122, !2126, !2130, !2134, !2136, !2140, !2144, !2148, !2150, !2152, !2156, !2160, !2164, !2168, !2172, !2174, !2180, !2182, !2188, !2193, !2197, !2201, !2205, !2209, !2213, !2215, !2217, !2221, !2225, !2229, !2231, !2235, !2239, !2241, !2243, !2247, !2252, !2257, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2276, !2280, !2285, !2291, !2293, !2295, !2297, !2299, !2301, !2303, !2305, !2307, !2309, !2311, !2313, !2315, !2317, !2321, !2327, !2331, !2334, !2337, !2340, !2342, !2344, !2346, !2349, !2352, !2355, !2358, !2361, !2365, !2369, !2373, !2376, !2379, !2381, !2383, !2385, !2387, !2390, !2393, !2396, !2399, !2402, !2404, !2408, !2412, !2418, !2422, !2426, !2431, !2433, !2437, !2441, !2445, !2453, !2455, !2459, !2463, !2467, !2471, !2475, !2479, !2483, !2487, !2491, !2495, !2499, !2501, !2505, !2509, !2513, !2519, !2523, !2527, !2529, !2533, !2537, !2543, !2545, !2549, !2553, !2557, !2561, !2565, !2569, !2573, !2574, !2575, !2576, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2588, !2594, !2599, !2603, !2605, !2607, !2609, !2611, !2618, !2622, !2626, !2630, !2634, !2638, !2642, !2646, !2648, !2652, !2658, !2662, !2666, !2668, !2670, !2674, !2678, !2680, !2682, !2684, !2686, !2688, !2690, !2692, !2696, !2700, !2704, !2708, !2712, !2716, !2718, !2722, !2726, !2730, !2734, !2736, !2738, !2742, !2746, !2747, !2748, !2749, !2750, !2751, !2755, !2759, !2765, !2768, !2769, !2771, !2773, !2775, !2777, !2781, !2783, !2785, !2787, !2789, !2791, !2793, !2795, !2797, !2801, !2805, !2807, !2811, !2815, !2820, !2825, !2827, !2830, !2835, !2839, !2843, !2847, !2851, !2855, !2859}
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1841, file: !1847, line: 77)
!1841 = !DISubprogram(name: "memchr", scope: !1842, file: !1842, line: 89, type: !1843, flags: DIFlagPrototyped, spFlags: 0)
!1842 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!67, !67, !227, !1845}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1846, line: 46, baseType: !62)
!1846 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1847 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1849, file: !1847, line: 78)
!1849 = !DISubprogram(name: "memcmp", scope: !1842, file: !1842, line: 64, type: !1850, flags: DIFlagPrototyped, spFlags: 0)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!227, !67, !67, !1845}
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1853, file: !1847, line: 79)
!1853 = !DISubprogram(name: "memcpy", scope: !1842, file: !1842, line: 43, type: !1854, flags: DIFlagPrototyped, spFlags: 0)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1563, !1856, !1857, !1845}
!1856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1563)
!1857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1859, file: !1847, line: 80)
!1859 = !DISubprogram(name: "memmove", scope: !1842, file: !1842, line: 47, type: !1860, flags: DIFlagPrototyped, spFlags: 0)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1563, !1563, !67, !1845}
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1863, file: !1847, line: 81)
!1863 = !DISubprogram(name: "memset", scope: !1842, file: !1842, line: 61, type: !1864, flags: DIFlagPrototyped, spFlags: 0)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1563, !1563, !227, !1845}
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1867, file: !1847, line: 82)
!1867 = !DISubprogram(name: "strcat", scope: !1842, file: !1842, line: 149, type: !1868, flags: DIFlagPrototyped, spFlags: 0)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!53, !1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!1871 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1873, file: !1847, line: 83)
!1873 = !DISubprogram(name: "strcmp", scope: !1842, file: !1842, line: 156, type: !1874, flags: DIFlagPrototyped, spFlags: 0)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!227, !125, !125}
!1876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1877, file: !1847, line: 84)
!1877 = !DISubprogram(name: "strcoll", scope: !1842, file: !1842, line: 163, type: !1874, flags: DIFlagPrototyped, spFlags: 0)
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1879, file: !1847, line: 85)
!1879 = !DISubprogram(name: "strcpy", scope: !1842, file: !1842, line: 141, type: !1868, flags: DIFlagPrototyped, spFlags: 0)
!1880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1881, file: !1847, line: 86)
!1881 = !DISubprogram(name: "strcspn", scope: !1842, file: !1842, line: 293, type: !1882, flags: DIFlagPrototyped, spFlags: 0)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1845, !125, !125}
!1884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1885, file: !1847, line: 87)
!1885 = !DISubprogram(name: "strerror", scope: !1842, file: !1842, line: 419, type: !1886, flags: DIFlagPrototyped, spFlags: 0)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!53, !227}
!1888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1889, file: !1847, line: 88)
!1889 = !DISubprogram(name: "strlen", scope: !1842, file: !1842, line: 407, type: !1890, flags: DIFlagPrototyped, spFlags: 0)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1845, !125}
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1893, file: !1847, line: 89)
!1893 = !DISubprogram(name: "strncat", scope: !1842, file: !1842, line: 152, type: !1894, flags: DIFlagPrototyped, spFlags: 0)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!53, !1870, !1871, !1845}
!1896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1897, file: !1847, line: 90)
!1897 = !DISubprogram(name: "strncmp", scope: !1842, file: !1842, line: 159, type: !1898, flags: DIFlagPrototyped, spFlags: 0)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!227, !125, !125, !1845}
!1900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1901, file: !1847, line: 91)
!1901 = !DISubprogram(name: "strncpy", scope: !1842, file: !1842, line: 144, type: !1894, flags: DIFlagPrototyped, spFlags: 0)
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1903, file: !1847, line: 92)
!1903 = !DISubprogram(name: "strspn", scope: !1842, file: !1842, line: 297, type: !1882, flags: DIFlagPrototyped, spFlags: 0)
!1904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1905, file: !1847, line: 93)
!1905 = !DISubprogram(name: "strtok", scope: !1842, file: !1842, line: 356, type: !1868, flags: DIFlagPrototyped, spFlags: 0)
!1906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1907, file: !1847, line: 94)
!1907 = !DISubprogram(name: "strxfrm", scope: !1842, file: !1842, line: 166, type: !1908, flags: DIFlagPrototyped, spFlags: 0)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1845, !1870, !1871, !1845}
!1910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1911, file: !1847, line: 95)
!1911 = !DISubprogram(name: "strchr", scope: !1842, file: !1842, line: 228, type: !1912, flags: DIFlagPrototyped, spFlags: 0)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!125, !125, !227}
!1914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1915, file: !1847, line: 96)
!1915 = !DISubprogram(name: "strpbrk", scope: !1842, file: !1842, line: 305, type: !1916, flags: DIFlagPrototyped, spFlags: 0)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!125, !125, !125}
!1918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1919, file: !1847, line: 97)
!1919 = !DISubprogram(name: "strrchr", scope: !1842, file: !1842, line: 255, type: !1912, flags: DIFlagPrototyped, spFlags: 0)
!1920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1921, file: !1847, line: 98)
!1921 = !DISubprogram(name: "strstr", scope: !1842, file: !1842, line: 332, type: !1916, flags: DIFlagPrototyped, spFlags: 0)
!1922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1923, file: !1927, line: 60)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1924, line: 7, baseType: !1925)
!1924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1926, line: 156, baseType: !182)
!1926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1927 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ctime", directory: "")
!1928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1929, file: !1927, line: 61)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1930, line: 10, baseType: !1931)
!1930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1926, line: 160, baseType: !182)
!1932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1933, file: !1927, line: 62)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1934, line: 7, size: 448, flags: DIFlagTypePassByValue, elements: !1935, identifier: "_ZTS2tm")
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1933, file: !1934, line: 9, baseType: !227, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1933, file: !1934, line: 10, baseType: !227, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1933, file: !1934, line: 11, baseType: !227, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1933, file: !1934, line: 12, baseType: !227, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1933, file: !1934, line: 13, baseType: !227, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1933, file: !1934, line: 14, baseType: !227, size: 32, offset: 160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1933, file: !1934, line: 15, baseType: !227, size: 32, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1933, file: !1934, line: 16, baseType: !227, size: 32, offset: 224)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1933, file: !1934, line: 17, baseType: !227, size: 32, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1933, file: !1934, line: 20, baseType: !182, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1933, file: !1934, line: 21, baseType: !125, size: 64, offset: 384)
!1947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1948, file: !1927, line: 64)
!1948 = !DISubprogram(name: "clock", scope: !1949, file: !1949, line: 72, type: !1950, flags: DIFlagPrototyped, spFlags: 0)
!1949 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1923}
!1952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1953, file: !1927, line: 65)
!1953 = !DISubprogram(name: "difftime", scope: !1949, file: !1949, line: 79, type: !1954, flags: DIFlagPrototyped, spFlags: 0)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1956, !1929, !1929}
!1956 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1958, file: !1927, line: 66)
!1958 = !DISubprogram(name: "mktime", scope: !1949, file: !1949, line: 83, type: !1959, flags: DIFlagPrototyped, spFlags: 0)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1929, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1963, file: !1927, line: 67)
!1963 = !DISubprogram(name: "time", scope: !1949, file: !1949, line: 76, type: !1964, flags: DIFlagPrototyped, spFlags: 0)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1929, !1966}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1968, file: !1927, line: 68)
!1968 = !DISubprogram(name: "asctime", scope: !1949, file: !1949, line: 179, type: !1969, flags: DIFlagPrototyped, spFlags: 0)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!53, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1974, file: !1927, line: 69)
!1974 = !DISubprogram(name: "ctime", scope: !1949, file: !1949, line: 183, type: !1975, flags: DIFlagPrototyped, spFlags: 0)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!53, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1980, file: !1927, line: 70)
!1980 = !DISubprogram(name: "gmtime", scope: !1949, file: !1949, line: 132, type: !1981, flags: DIFlagPrototyped, spFlags: 0)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1961, !1977}
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1984, file: !1927, line: 71)
!1984 = !DISubprogram(name: "localtime", scope: !1949, file: !1949, line: 136, type: !1981, flags: DIFlagPrototyped, spFlags: 0)
!1985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1986, file: !1927, line: 72)
!1986 = !DISubprogram(name: "strftime", scope: !1949, file: !1949, line: 100, type: !1987, flags: DIFlagPrototyped, spFlags: 0)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1845, !1870, !1845, !1871, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1971)
!1990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1991, file: !1927, line: 79)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1992, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !1993, identifier: "_ZTS8timespec")
!1992 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1991, file: !1992, line: 16, baseType: !1931, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1991, file: !1992, line: 21, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1926, line: 197, baseType: !182)
!1997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1998, file: !1927, line: 80)
!1998 = !DISubprogram(name: "timespec_get", scope: !1949, file: !1949, line: 371, type: !1999, flags: DIFlagPrototyped, spFlags: 0)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!227, !2001, !227}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!2002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2003, file: !2016, line: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2004, line: 6, baseType: !2005)
!2004 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2006, line: 21, baseType: !2007)
!2006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2006, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !2008, identifier: "_ZTS11__mbstate_t")
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2007, file: !2006, line: 15, baseType: !227, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2007, file: !2006, line: 20, baseType: !2011, size: 32, offset: 32)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !2006, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !2012, identifier: "_ZTSN11__mbstate_tUt_E")
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2011, file: !2006, line: 18, baseType: !1101, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2011, file: !2006, line: 19, baseType: !2015, size: 32)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !1273)
!2016 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!2017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2018, file: !2016, line: 141)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2019, line: 20, baseType: !1101)
!2019 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2021, file: !2016, line: 143)
!2021 = !DISubprogram(name: "btowc", scope: !2022, file: !2022, line: 285, type: !2023, flags: DIFlagPrototyped, spFlags: 0)
!2022 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!2018, !227}
!2025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2026, file: !2016, line: 144)
!2026 = !DISubprogram(name: "fgetwc", scope: !2022, file: !2022, line: 744, type: !2027, flags: DIFlagPrototyped, spFlags: 0)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2018, !2029}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !2031, line: 5, baseType: !2032)
!2031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2031, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!2033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2034, file: !2016, line: 145)
!2034 = !DISubprogram(name: "fgetws", scope: !2022, file: !2022, line: 773, type: !2035, flags: DIFlagPrototyped, spFlags: 0)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2037, !2039, !227, !2040}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!2039 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2037)
!2040 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2029)
!2041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2042, file: !2016, line: 146)
!2042 = !DISubprogram(name: "fputwc", scope: !2022, file: !2022, line: 758, type: !2043, flags: DIFlagPrototyped, spFlags: 0)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!2018, !2038, !2029}
!2045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2046, file: !2016, line: 147)
!2046 = !DISubprogram(name: "fputws", scope: !2022, file: !2022, line: 780, type: !2047, flags: DIFlagPrototyped, spFlags: 0)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!227, !2049, !2040}
!2049 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2053, file: !2016, line: 148)
!2053 = !DISubprogram(name: "fwide", scope: !2022, file: !2022, line: 588, type: !2054, flags: DIFlagPrototyped, spFlags: 0)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!227, !2029, !227}
!2056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2057, file: !2016, line: 149)
!2057 = !DISubprogram(name: "fwprintf", scope: !2022, file: !2022, line: 595, type: !2058, flags: DIFlagPrototyped, spFlags: 0)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!227, !2040, !2049, null}
!2060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2061, file: !2016, line: 150)
!2061 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !2022, file: !2022, line: 657, type: !2058, flags: DIFlagPrototyped, spFlags: 0)
!2062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2063, file: !2016, line: 151)
!2063 = !DISubprogram(name: "getwc", scope: !2022, file: !2022, line: 745, type: !2027, flags: DIFlagPrototyped, spFlags: 0)
!2064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2065, file: !2016, line: 152)
!2065 = !DISubprogram(name: "getwchar", scope: !2022, file: !2022, line: 751, type: !2066, flags: DIFlagPrototyped, spFlags: 0)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2018}
!2068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2069, file: !2016, line: 153)
!2069 = !DISubprogram(name: "mbrlen", scope: !2022, file: !2022, line: 308, type: !2070, flags: DIFlagPrototyped, spFlags: 0)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!1845, !1871, !1845, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2075, file: !2016, line: 154)
!2075 = !DISubprogram(name: "mbrtowc", scope: !2022, file: !2022, line: 297, type: !2076, flags: DIFlagPrototyped, spFlags: 0)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!1845, !2039, !1871, !1845, !2072}
!2078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2079, file: !2016, line: 155)
!2079 = !DISubprogram(name: "mbsinit", scope: !2022, file: !2022, line: 293, type: !2080, flags: DIFlagPrototyped, spFlags: 0)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!227, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2085, file: !2016, line: 156)
!2085 = !DISubprogram(name: "mbsrtowcs", scope: !2022, file: !2022, line: 338, type: !2086, flags: DIFlagPrototyped, spFlags: 0)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!1845, !2039, !2088, !1845, !2072}
!2088 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2091, file: !2016, line: 157)
!2091 = !DISubprogram(name: "putwc", scope: !2022, file: !2022, line: 759, type: !2043, flags: DIFlagPrototyped, spFlags: 0)
!2092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2093, file: !2016, line: 158)
!2093 = !DISubprogram(name: "putwchar", scope: !2022, file: !2022, line: 765, type: !2094, flags: DIFlagPrototyped, spFlags: 0)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2018, !2038}
!2096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2097, file: !2016, line: 160)
!2097 = !DISubprogram(name: "swprintf", scope: !2022, file: !2022, line: 605, type: !2098, flags: DIFlagPrototyped, spFlags: 0)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!227, !2039, !1845, !2049, null}
!2100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2101, file: !2016, line: 162)
!2101 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !2022, file: !2022, line: 664, type: !2102, flags: DIFlagPrototyped, spFlags: 0)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!227, !2049, !2049, null}
!2104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2105, file: !2016, line: 163)
!2105 = !DISubprogram(name: "ungetwc", scope: !2022, file: !2022, line: 788, type: !2106, flags: DIFlagPrototyped, spFlags: 0)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2018, !2018, !2029}
!2108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2109, file: !2016, line: 164)
!2109 = !DISubprogram(name: "vfwprintf", scope: !2022, file: !2022, line: 613, type: !2110, flags: DIFlagPrototyped, spFlags: 0)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!227, !2040, !2049, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !2114, identifier: "_ZTS13__va_list_tag")
!2114 = !{!2115, !2117, !2118, !2119}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2113, file: !2116, baseType: !1101, size: 32)
!2116 = !DIFile(filename: "common/Log.cpp", directory: "/home/raj/sme2")
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2113, file: !2116, baseType: !1101, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2113, file: !2116, baseType: !1563, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2113, file: !2116, baseType: !1563, size: 64, offset: 128)
!2120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2121, file: !2016, line: 166)
!2121 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !2022, file: !2022, line: 711, type: !2110, flags: DIFlagPrototyped, spFlags: 0)
!2122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2123, file: !2016, line: 169)
!2123 = !DISubprogram(name: "vswprintf", scope: !2022, file: !2022, line: 626, type: !2124, flags: DIFlagPrototyped, spFlags: 0)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!227, !2039, !1845, !2049, !2112}
!2126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2127, file: !2016, line: 172)
!2127 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !2022, file: !2022, line: 718, type: !2128, flags: DIFlagPrototyped, spFlags: 0)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!227, !2049, !2049, !2112}
!2130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2131, file: !2016, line: 174)
!2131 = !DISubprogram(name: "vwprintf", scope: !2022, file: !2022, line: 621, type: !2132, flags: DIFlagPrototyped, spFlags: 0)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!227, !2049, !2112}
!2134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2135, file: !2016, line: 176)
!2135 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !2022, file: !2022, line: 715, type: !2132, flags: DIFlagPrototyped, spFlags: 0)
!2136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2137, file: !2016, line: 178)
!2137 = !DISubprogram(name: "wcrtomb", scope: !2022, file: !2022, line: 302, type: !2138, flags: DIFlagPrototyped, spFlags: 0)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1845, !1870, !2038, !2072}
!2140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2141, file: !2016, line: 179)
!2141 = !DISubprogram(name: "wcscat", scope: !2022, file: !2022, line: 97, type: !2142, flags: DIFlagPrototyped, spFlags: 0)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2037, !2039, !2049}
!2144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2145, file: !2016, line: 180)
!2145 = !DISubprogram(name: "wcscmp", scope: !2022, file: !2022, line: 106, type: !2146, flags: DIFlagPrototyped, spFlags: 0)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!227, !2050, !2050}
!2148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2149, file: !2016, line: 181)
!2149 = !DISubprogram(name: "wcscoll", scope: !2022, file: !2022, line: 131, type: !2146, flags: DIFlagPrototyped, spFlags: 0)
!2150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2151, file: !2016, line: 182)
!2151 = !DISubprogram(name: "wcscpy", scope: !2022, file: !2022, line: 87, type: !2142, flags: DIFlagPrototyped, spFlags: 0)
!2152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2153, file: !2016, line: 183)
!2153 = !DISubprogram(name: "wcscspn", scope: !2022, file: !2022, line: 188, type: !2154, flags: DIFlagPrototyped, spFlags: 0)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1845, !2050, !2050}
!2156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2157, file: !2016, line: 184)
!2157 = !DISubprogram(name: "wcsftime", scope: !2022, file: !2022, line: 852, type: !2158, flags: DIFlagPrototyped, spFlags: 0)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1845, !2039, !1845, !2049, !1989}
!2160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2161, file: !2016, line: 185)
!2161 = !DISubprogram(name: "wcslen", scope: !2022, file: !2022, line: 223, type: !2162, flags: DIFlagPrototyped, spFlags: 0)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!1845, !2050}
!2164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2165, file: !2016, line: 186)
!2165 = !DISubprogram(name: "wcsncat", scope: !2022, file: !2022, line: 101, type: !2166, flags: DIFlagPrototyped, spFlags: 0)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2037, !2039, !2049, !1845}
!2168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2169, file: !2016, line: 187)
!2169 = !DISubprogram(name: "wcsncmp", scope: !2022, file: !2022, line: 109, type: !2170, flags: DIFlagPrototyped, spFlags: 0)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!227, !2050, !2050, !1845}
!2172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2173, file: !2016, line: 188)
!2173 = !DISubprogram(name: "wcsncpy", scope: !2022, file: !2022, line: 92, type: !2166, flags: DIFlagPrototyped, spFlags: 0)
!2174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2175, file: !2016, line: 189)
!2175 = !DISubprogram(name: "wcsrtombs", scope: !2022, file: !2022, line: 344, type: !2176, flags: DIFlagPrototyped, spFlags: 0)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!1845, !1870, !2178, !1845, !2072}
!2178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2181, file: !2016, line: 190)
!2181 = !DISubprogram(name: "wcsspn", scope: !2022, file: !2022, line: 192, type: !2154, flags: DIFlagPrototyped, spFlags: 0)
!2182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2183, file: !2016, line: 191)
!2183 = !DISubprogram(name: "wcstod", scope: !2022, file: !2022, line: 378, type: !2184, flags: DIFlagPrototyped, spFlags: 0)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!1956, !2049, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2189, file: !2016, line: 193)
!2189 = !DISubprogram(name: "wcstof", scope: !2022, file: !2022, line: 383, type: !2190, flags: DIFlagPrototyped, spFlags: 0)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2049, !2186}
!2192 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2194, file: !2016, line: 195)
!2194 = !DISubprogram(name: "wcstok", scope: !2022, file: !2022, line: 218, type: !2195, flags: DIFlagPrototyped, spFlags: 0)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!2037, !2039, !2049, !2186}
!2197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2198, file: !2016, line: 196)
!2198 = !DISubprogram(name: "wcstol", scope: !2022, file: !2022, line: 429, type: !2199, flags: DIFlagPrototyped, spFlags: 0)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!182, !2049, !2186, !227}
!2201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2202, file: !2016, line: 197)
!2202 = !DISubprogram(name: "wcstoul", scope: !2022, file: !2022, line: 434, type: !2203, flags: DIFlagPrototyped, spFlags: 0)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!62, !2049, !2186, !227}
!2205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2206, file: !2016, line: 198)
!2206 = !DISubprogram(name: "wcsxfrm", scope: !2022, file: !2022, line: 135, type: !2207, flags: DIFlagPrototyped, spFlags: 0)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!1845, !2039, !2049, !1845}
!2209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2210, file: !2016, line: 199)
!2210 = !DISubprogram(name: "wctob", scope: !2022, file: !2022, line: 289, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!227, !2018}
!2213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2214, file: !2016, line: 200)
!2214 = !DISubprogram(name: "wmemcmp", scope: !2022, file: !2022, line: 259, type: !2170, flags: DIFlagPrototyped, spFlags: 0)
!2215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2216, file: !2016, line: 201)
!2216 = !DISubprogram(name: "wmemcpy", scope: !2022, file: !2022, line: 263, type: !2166, flags: DIFlagPrototyped, spFlags: 0)
!2217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2218, file: !2016, line: 202)
!2218 = !DISubprogram(name: "wmemmove", scope: !2022, file: !2022, line: 268, type: !2219, flags: DIFlagPrototyped, spFlags: 0)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2037, !2037, !2050, !1845}
!2221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2222, file: !2016, line: 203)
!2222 = !DISubprogram(name: "wmemset", scope: !2022, file: !2022, line: 272, type: !2223, flags: DIFlagPrototyped, spFlags: 0)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2037, !2037, !2038, !1845}
!2225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2226, file: !2016, line: 204)
!2226 = !DISubprogram(name: "wprintf", scope: !2022, file: !2022, line: 602, type: !2227, flags: DIFlagPrototyped, spFlags: 0)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!227, !2049, null}
!2229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2230, file: !2016, line: 205)
!2230 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !2022, file: !2022, line: 661, type: !2227, flags: DIFlagPrototyped, spFlags: 0)
!2231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2232, file: !2016, line: 206)
!2232 = !DISubprogram(name: "wcschr", scope: !2022, file: !2022, line: 165, type: !2233, flags: DIFlagPrototyped, spFlags: 0)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2037, !2050, !2038}
!2235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2236, file: !2016, line: 207)
!2236 = !DISubprogram(name: "wcspbrk", scope: !2022, file: !2022, line: 202, type: !2237, flags: DIFlagPrototyped, spFlags: 0)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!2037, !2050, !2050}
!2239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2240, file: !2016, line: 208)
!2240 = !DISubprogram(name: "wcsrchr", scope: !2022, file: !2022, line: 175, type: !2233, flags: DIFlagPrototyped, spFlags: 0)
!2241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2242, file: !2016, line: 209)
!2242 = !DISubprogram(name: "wcsstr", scope: !2022, file: !2022, line: 213, type: !2237, flags: DIFlagPrototyped, spFlags: 0)
!2243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2244, file: !2016, line: 210)
!2244 = !DISubprogram(name: "wmemchr", scope: !2022, file: !2022, line: 254, type: !2245, flags: DIFlagPrototyped, spFlags: 0)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2037, !2050, !2038, !1845}
!2247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2248, file: !2016, line: 251)
!2248 = !DISubprogram(name: "wcstold", scope: !2022, file: !2022, line: 385, type: !2249, flags: DIFlagPrototyped, spFlags: 0)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!2251, !2049, !2186}
!2251 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!2252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2253, file: !2016, line: 260)
!2253 = !DISubprogram(name: "wcstoll", scope: !2022, file: !2022, line: 442, type: !2254, flags: DIFlagPrototyped, spFlags: 0)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2256, !2049, !2186, !227}
!2256 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!2257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2258, file: !2016, line: 261)
!2258 = !DISubprogram(name: "wcstoull", scope: !2022, file: !2022, line: 449, type: !2259, flags: DIFlagPrototyped, spFlags: 0)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!2261, !2049, !2186, !227}
!2261 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!2262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2248, file: !2016, line: 267)
!2263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2253, file: !2016, line: 268)
!2264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2258, file: !2016, line: 269)
!2265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2189, file: !2016, line: 283)
!2266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2121, file: !2016, line: 286)
!2267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2127, file: !2016, line: 289)
!2268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2135, file: !2016, line: 292)
!2269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2248, file: !2016, line: 296)
!2270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2253, file: !2016, line: 297)
!2271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2258, file: !2016, line: 298)
!2272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2273, file: !2275, line: 53)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !2274, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!2274 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!2275 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!2276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2277, file: !2275, line: 54)
!2277 = !DISubprogram(name: "setlocale", scope: !2274, file: !2274, line: 122, type: !2278, flags: DIFlagPrototyped, spFlags: 0)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!53, !227, !125}
!2280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2281, file: !2275, line: 55)
!2281 = !DISubprogram(name: "localeconv", scope: !2274, file: !2274, line: 125, type: !2282, flags: DIFlagPrototyped, spFlags: 0)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2286, file: !2290, line: 64)
!2286 = !DISubprogram(name: "isalnum", scope: !2287, file: !2287, line: 108, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2287 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!227, !227}
!2290 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!2291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2292, file: !2290, line: 65)
!2292 = !DISubprogram(name: "isalpha", scope: !2287, file: !2287, line: 109, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2294, file: !2290, line: 66)
!2294 = !DISubprogram(name: "iscntrl", scope: !2287, file: !2287, line: 110, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2296, file: !2290, line: 67)
!2296 = !DISubprogram(name: "isdigit", scope: !2287, file: !2287, line: 111, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2298, file: !2290, line: 68)
!2298 = !DISubprogram(name: "isgraph", scope: !2287, file: !2287, line: 113, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2300, file: !2290, line: 69)
!2300 = !DISubprogram(name: "islower", scope: !2287, file: !2287, line: 112, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2302, file: !2290, line: 70)
!2302 = !DISubprogram(name: "isprint", scope: !2287, file: !2287, line: 114, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2304, file: !2290, line: 71)
!2304 = !DISubprogram(name: "ispunct", scope: !2287, file: !2287, line: 115, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2306, file: !2290, line: 72)
!2306 = !DISubprogram(name: "isspace", scope: !2287, file: !2287, line: 116, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2308, file: !2290, line: 73)
!2308 = !DISubprogram(name: "isupper", scope: !2287, file: !2287, line: 117, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2310, file: !2290, line: 74)
!2310 = !DISubprogram(name: "isxdigit", scope: !2287, file: !2287, line: 118, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2312, file: !2290, line: 75)
!2312 = !DISubprogram(name: "tolower", scope: !2287, file: !2287, line: 122, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2314, file: !2290, line: 76)
!2314 = !DISubprogram(name: "toupper", scope: !2287, file: !2287, line: 125, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2316, file: !2290, line: 87)
!2316 = !DISubprogram(name: "isblank", scope: !2287, file: !2287, line: 130, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2317 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2318, entity: !2319, file: !2320, line: 58)
!2318 = !DINamespace(name: "__gnu_debug", scope: null)
!2319 = !DINamespace(name: "__debug", scope: !2)
!2320 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!2321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2322, file: !2326, line: 47)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2323, line: 24, baseType: !2324)
!2323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1926, line: 37, baseType: !2325)
!2325 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2326 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!2327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2328, file: !2326, line: 48)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2323, line: 25, baseType: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1926, line: 39, baseType: !2330)
!2330 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2332, file: !2326, line: 49)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !2323, line: 26, baseType: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1926, line: 41, baseType: !227)
!2334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2335, file: !2326, line: 50)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2323, line: 27, baseType: !2336)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1926, line: 44, baseType: !182)
!2337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2338, file: !2326, line: 52)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !2339, line: 58, baseType: !2325)
!2339 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!2340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2341, file: !2326, line: 53)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !2339, line: 60, baseType: !182)
!2342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2343, file: !2326, line: 54)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !2339, line: 61, baseType: !182)
!2344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2345, file: !2326, line: 55)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !2339, line: 62, baseType: !182)
!2346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2347, file: !2326, line: 57)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !2339, line: 43, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1926, line: 52, baseType: !2324)
!2349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2350, file: !2326, line: 58)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !2339, line: 44, baseType: !2351)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1926, line: 54, baseType: !2329)
!2352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2353, file: !2326, line: 59)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !2339, line: 45, baseType: !2354)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1926, line: 56, baseType: !2333)
!2355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2356, file: !2326, line: 60)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !2339, line: 46, baseType: !2357)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1926, line: 58, baseType: !2336)
!2358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2359, file: !2326, line: 62)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2339, line: 101, baseType: !2360)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1926, line: 72, baseType: !182)
!2361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2362, file: !2326, line: 63)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2363, line: 267, baseType: !2364)
!2363 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !1926, line: 207, baseType: !182)
!2365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2366, file: !2326, line: 65)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2367, line: 24, baseType: !2368)
!2367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1926, line: 38, baseType: !1548)
!2369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2370, file: !2326, line: 66)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2367, line: 25, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1926, line: 40, baseType: !2372)
!2372 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2374, file: !2326, line: 67)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2367, line: 26, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1926, line: 42, baseType: !1101)
!2376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2377, file: !2326, line: 68)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2367, line: 27, baseType: !2378)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1926, line: 45, baseType: !62)
!2379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2380, file: !2326, line: 70)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !2339, line: 71, baseType: !1548)
!2381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2382, file: !2326, line: 71)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !2339, line: 73, baseType: !62)
!2383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2384, file: !2326, line: 72)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !2339, line: 74, baseType: !62)
!2385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2386, file: !2326, line: 73)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !2339, line: 75, baseType: !62)
!2387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2388, file: !2326, line: 75)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !2339, line: 49, baseType: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1926, line: 53, baseType: !2368)
!2390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2391, file: !2326, line: 76)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !2339, line: 50, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1926, line: 55, baseType: !2371)
!2393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2394, file: !2326, line: 77)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !2339, line: 51, baseType: !2395)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1926, line: 57, baseType: !2375)
!2396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2397, file: !2326, line: 78)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !2339, line: 52, baseType: !2398)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1926, line: 59, baseType: !2378)
!2399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2400, file: !2326, line: 80)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2339, line: 102, baseType: !2401)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1926, line: 73, baseType: !62)
!2402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2403, file: !2326, line: 81)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2339, line: 90, baseType: !62)
!2404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2405, file: !2407, line: 52)
!2405 = !DISubprogram(name: "abs", scope: !2406, file: !2406, line: 848, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2406 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!2408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2409, file: !2411, line: 127)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !2406, line: 63, baseType: !2410)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!2411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!2412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2413, file: !2411, line: 128)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !2406, line: 71, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !2415, identifier: "_ZTS6ldiv_t")
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2414, file: !2406, line: 69, baseType: !182, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2414, file: !2406, line: 70, baseType: !182, size: 64, offset: 64)
!2418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2419, file: !2411, line: 130)
!2419 = !DISubprogram(name: "abort", scope: !2406, file: !2406, line: 598, type: !2420, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null}
!2422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2423, file: !2411, line: 132)
!2423 = !DISubprogram(name: "aligned_alloc", scope: !2406, file: !2406, line: 592, type: !2424, flags: DIFlagPrototyped, spFlags: 0)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!1563, !1845, !1845}
!2426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2427, file: !2411, line: 134)
!2427 = !DISubprogram(name: "atexit", scope: !2406, file: !2406, line: 602, type: !2428, flags: DIFlagPrototyped, spFlags: 0)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!227, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2432, file: !2411, line: 137)
!2432 = !DISubprogram(name: "at_quick_exit", scope: !2406, file: !2406, line: 607, type: !2428, flags: DIFlagPrototyped, spFlags: 0)
!2433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2434, file: !2411, line: 140)
!2434 = !DISubprogram(name: "atof", scope: !2406, file: !2406, line: 102, type: !2435, flags: DIFlagPrototyped, spFlags: 0)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!1956, !125}
!2437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2438, file: !2411, line: 141)
!2438 = !DISubprogram(name: "atoi", scope: !2406, file: !2406, line: 105, type: !2439, flags: DIFlagPrototyped, spFlags: 0)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!227, !125}
!2441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2442, file: !2411, line: 142)
!2442 = !DISubprogram(name: "atol", scope: !2406, file: !2406, line: 108, type: !2443, flags: DIFlagPrototyped, spFlags: 0)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!182, !125}
!2445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2446, file: !2411, line: 143)
!2446 = !DISubprogram(name: "bsearch", scope: !2406, file: !2406, line: 828, type: !2447, flags: DIFlagPrototyped, spFlags: 0)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!1563, !67, !67, !1845, !1845, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2406, line: 816, baseType: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!227, !67, !67}
!2453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2454, file: !2411, line: 144)
!2454 = !DISubprogram(name: "calloc", scope: !2406, file: !2406, line: 543, type: !2424, flags: DIFlagPrototyped, spFlags: 0)
!2455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2456, file: !2411, line: 145)
!2456 = !DISubprogram(name: "div", scope: !2406, file: !2406, line: 860, type: !2457, flags: DIFlagPrototyped, spFlags: 0)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!2409, !227, !227}
!2459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2460, file: !2411, line: 146)
!2460 = !DISubprogram(name: "exit", scope: !2406, file: !2406, line: 624, type: !2461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !227}
!2463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2464, file: !2411, line: 147)
!2464 = !DISubprogram(name: "free", scope: !2406, file: !2406, line: 555, type: !2465, flags: DIFlagPrototyped, spFlags: 0)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !1563}
!2467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2468, file: !2411, line: 148)
!2468 = !DISubprogram(name: "getenv", scope: !2406, file: !2406, line: 641, type: !2469, flags: DIFlagPrototyped, spFlags: 0)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!53, !125}
!2471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2472, file: !2411, line: 149)
!2472 = !DISubprogram(name: "labs", scope: !2406, file: !2406, line: 849, type: !2473, flags: DIFlagPrototyped, spFlags: 0)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!182, !182}
!2475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2476, file: !2411, line: 150)
!2476 = !DISubprogram(name: "ldiv", scope: !2406, file: !2406, line: 862, type: !2477, flags: DIFlagPrototyped, spFlags: 0)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2413, !182, !182}
!2479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2480, file: !2411, line: 151)
!2480 = !DISubprogram(name: "malloc", scope: !2406, file: !2406, line: 540, type: !2481, flags: DIFlagPrototyped, spFlags: 0)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!1563, !1845}
!2483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2484, file: !2411, line: 153)
!2484 = !DISubprogram(name: "mblen", scope: !2406, file: !2406, line: 930, type: !2485, flags: DIFlagPrototyped, spFlags: 0)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!227, !125, !1845}
!2487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2488, file: !2411, line: 154)
!2488 = !DISubprogram(name: "mbstowcs", scope: !2406, file: !2406, line: 941, type: !2489, flags: DIFlagPrototyped, spFlags: 0)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!1845, !2039, !1871, !1845}
!2491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2492, file: !2411, line: 155)
!2492 = !DISubprogram(name: "mbtowc", scope: !2406, file: !2406, line: 933, type: !2493, flags: DIFlagPrototyped, spFlags: 0)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!227, !2039, !1871, !1845}
!2495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2496, file: !2411, line: 157)
!2496 = !DISubprogram(name: "qsort", scope: !2406, file: !2406, line: 838, type: !2497, flags: DIFlagPrototyped, spFlags: 0)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !1563, !1845, !1845, !2449}
!2499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2500, file: !2411, line: 160)
!2500 = !DISubprogram(name: "quick_exit", scope: !2406, file: !2406, line: 630, type: !2461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2502, file: !2411, line: 163)
!2502 = !DISubprogram(name: "rand", scope: !2406, file: !2406, line: 454, type: !2503, flags: DIFlagPrototyped, spFlags: 0)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!227}
!2505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2506, file: !2411, line: 164)
!2506 = !DISubprogram(name: "realloc", scope: !2406, file: !2406, line: 551, type: !2507, flags: DIFlagPrototyped, spFlags: 0)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!1563, !1563, !1845}
!2509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2510, file: !2411, line: 165)
!2510 = !DISubprogram(name: "srand", scope: !2406, file: !2406, line: 456, type: !2511, flags: DIFlagPrototyped, spFlags: 0)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !1101}
!2513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2514, file: !2411, line: 166)
!2514 = !DISubprogram(name: "strtod", scope: !2406, file: !2406, line: 118, type: !2515, flags: DIFlagPrototyped, spFlags: 0)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!1956, !1871, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!2519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2520, file: !2411, line: 167)
!2520 = !DISubprogram(name: "strtol", scope: !2406, file: !2406, line: 177, type: !2521, flags: DIFlagPrototyped, spFlags: 0)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!182, !1871, !2517, !227}
!2523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2524, file: !2411, line: 168)
!2524 = !DISubprogram(name: "strtoul", scope: !2406, file: !2406, line: 181, type: !2525, flags: DIFlagPrototyped, spFlags: 0)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!62, !1871, !2517, !227}
!2527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2528, file: !2411, line: 169)
!2528 = !DISubprogram(name: "system", scope: !2406, file: !2406, line: 791, type: !2439, flags: DIFlagPrototyped, spFlags: 0)
!2529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2530, file: !2411, line: 171)
!2530 = !DISubprogram(name: "wcstombs", scope: !2406, file: !2406, line: 945, type: !2531, flags: DIFlagPrototyped, spFlags: 0)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!1845, !1870, !2049, !1845}
!2533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2534, file: !2411, line: 172)
!2534 = !DISubprogram(name: "wctomb", scope: !2406, file: !2406, line: 937, type: !2535, flags: DIFlagPrototyped, spFlags: 0)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!227, !53, !2038}
!2537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2538, file: !2411, line: 200)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !2406, line: 81, baseType: !2539)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !2540, identifier: "_ZTS7lldiv_t")
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !2539, file: !2406, line: 79, baseType: !2256, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !2539, file: !2406, line: 80, baseType: !2256, size: 64, offset: 64)
!2543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2544, file: !2411, line: 206)
!2544 = !DISubprogram(name: "_Exit", scope: !2406, file: !2406, line: 636, type: !2461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2546, file: !2411, line: 210)
!2546 = !DISubprogram(name: "llabs", scope: !2406, file: !2406, line: 852, type: !2547, flags: DIFlagPrototyped, spFlags: 0)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!2256, !2256}
!2549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2550, file: !2411, line: 216)
!2550 = !DISubprogram(name: "lldiv", scope: !2406, file: !2406, line: 866, type: !2551, flags: DIFlagPrototyped, spFlags: 0)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2538, !2256, !2256}
!2553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2554, file: !2411, line: 227)
!2554 = !DISubprogram(name: "atoll", scope: !2406, file: !2406, line: 113, type: !2555, flags: DIFlagPrototyped, spFlags: 0)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!2256, !125}
!2557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2558, file: !2411, line: 228)
!2558 = !DISubprogram(name: "strtoll", scope: !2406, file: !2406, line: 201, type: !2559, flags: DIFlagPrototyped, spFlags: 0)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2256, !1871, !2517, !227}
!2561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2562, file: !2411, line: 229)
!2562 = !DISubprogram(name: "strtoull", scope: !2406, file: !2406, line: 206, type: !2563, flags: DIFlagPrototyped, spFlags: 0)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2261, !1871, !2517, !227}
!2565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2566, file: !2411, line: 231)
!2566 = !DISubprogram(name: "strtof", scope: !2406, file: !2406, line: 124, type: !2567, flags: DIFlagPrototyped, spFlags: 0)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2192, !1871, !2517}
!2569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2570, file: !2411, line: 232)
!2570 = !DISubprogram(name: "strtold", scope: !2406, file: !2406, line: 127, type: !2571, flags: DIFlagPrototyped, spFlags: 0)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2251, !1871, !2517}
!2573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2538, file: !2411, line: 240)
!2574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2544, file: !2411, line: 242)
!2575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2546, file: !2411, line: 244)
!2576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2577, file: !2411, line: 245)
!2577 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !43, file: !2411, line: 213, type: !2551, flags: DIFlagPrototyped, spFlags: 0)
!2578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2550, file: !2411, line: 246)
!2579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2554, file: !2411, line: 248)
!2580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2566, file: !2411, line: 249)
!2581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2558, file: !2411, line: 250)
!2582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2562, file: !2411, line: 251)
!2583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2570, file: !2411, line: 252)
!2584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2585, file: !2587, line: 98)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2586, line: 7, baseType: !2032)
!2586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2587 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!2588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2589, file: !2587, line: 99)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !2590, line: 84, baseType: !2591)
!2590 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !2592, line: 14, baseType: !2593)
!2592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !2592, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!2594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2595, file: !2587, line: 101)
!2595 = !DISubprogram(name: "clearerr", scope: !2590, file: !2590, line: 786, type: !2596, flags: DIFlagPrototyped, spFlags: 0)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2600, file: !2587, line: 102)
!2600 = !DISubprogram(name: "fclose", scope: !2590, file: !2590, line: 178, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!227, !2598}
!2603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2604, file: !2587, line: 103)
!2604 = !DISubprogram(name: "feof", scope: !2590, file: !2590, line: 788, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2606, file: !2587, line: 104)
!2606 = !DISubprogram(name: "ferror", scope: !2590, file: !2590, line: 790, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2608, file: !2587, line: 105)
!2608 = !DISubprogram(name: "fflush", scope: !2590, file: !2590, line: 230, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2610, file: !2587, line: 106)
!2610 = !DISubprogram(name: "fgetc", scope: !2590, file: !2590, line: 513, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2612, file: !2587, line: 107)
!2612 = !DISubprogram(name: "fgetpos", scope: !2590, file: !2590, line: 760, type: !2613, flags: DIFlagPrototyped, spFlags: 0)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!227, !2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2598)
!2616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2617)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2619, file: !2587, line: 108)
!2619 = !DISubprogram(name: "fgets", scope: !2590, file: !2590, line: 592, type: !2620, flags: DIFlagPrototyped, spFlags: 0)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!53, !1870, !227, !2615}
!2622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2623, file: !2587, line: 109)
!2623 = !DISubprogram(name: "fopen", scope: !2590, file: !2590, line: 258, type: !2624, flags: DIFlagPrototyped, spFlags: 0)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!2598, !1871, !1871}
!2626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2627, file: !2587, line: 110)
!2627 = !DISubprogram(name: "fprintf", scope: !2590, file: !2590, line: 350, type: !2628, flags: DIFlagPrototyped, spFlags: 0)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!227, !2615, !1871, null}
!2630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2631, file: !2587, line: 111)
!2631 = !DISubprogram(name: "fputc", scope: !2590, file: !2590, line: 549, type: !2632, flags: DIFlagPrototyped, spFlags: 0)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!227, !227, !2598}
!2634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2635, file: !2587, line: 112)
!2635 = !DISubprogram(name: "fputs", scope: !2590, file: !2590, line: 655, type: !2636, flags: DIFlagPrototyped, spFlags: 0)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!227, !1871, !2615}
!2638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2639, file: !2587, line: 113)
!2639 = !DISubprogram(name: "fread", scope: !2590, file: !2590, line: 675, type: !2640, flags: DIFlagPrototyped, spFlags: 0)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!1845, !1856, !1845, !1845, !2615}
!2642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2643, file: !2587, line: 114)
!2643 = !DISubprogram(name: "freopen", scope: !2590, file: !2590, line: 265, type: !2644, flags: DIFlagPrototyped, spFlags: 0)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!2598, !1871, !1871, !2615}
!2646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2647, file: !2587, line: 115)
!2647 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !2590, file: !2590, line: 434, type: !2628, flags: DIFlagPrototyped, spFlags: 0)
!2648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2649, file: !2587, line: 116)
!2649 = !DISubprogram(name: "fseek", scope: !2590, file: !2590, line: 713, type: !2650, flags: DIFlagPrototyped, spFlags: 0)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!227, !2598, !182, !227}
!2652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2653, file: !2587, line: 117)
!2653 = !DISubprogram(name: "fsetpos", scope: !2590, file: !2590, line: 765, type: !2654, flags: DIFlagPrototyped, spFlags: 0)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!227, !2598, !2656}
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2659, file: !2587, line: 118)
!2659 = !DISubprogram(name: "ftell", scope: !2590, file: !2590, line: 718, type: !2660, flags: DIFlagPrototyped, spFlags: 0)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!182, !2598}
!2662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2663, file: !2587, line: 119)
!2663 = !DISubprogram(name: "fwrite", scope: !2590, file: !2590, line: 681, type: !2664, flags: DIFlagPrototyped, spFlags: 0)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!1845, !1857, !1845, !1845, !2615}
!2666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2667, file: !2587, line: 120)
!2667 = !DISubprogram(name: "getc", scope: !2590, file: !2590, line: 514, type: !2601, flags: DIFlagPrototyped, spFlags: 0)
!2668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2669, file: !2587, line: 121)
!2669 = !DISubprogram(name: "getchar", scope: !2590, file: !2590, line: 520, type: !2503, flags: DIFlagPrototyped, spFlags: 0)
!2670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2671, file: !2587, line: 126)
!2671 = !DISubprogram(name: "perror", scope: !2590, file: !2590, line: 804, type: !2672, flags: DIFlagPrototyped, spFlags: 0)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !125}
!2674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2675, file: !2587, line: 127)
!2675 = !DISubprogram(name: "printf", scope: !2590, file: !2590, line: 356, type: !2676, flags: DIFlagPrototyped, spFlags: 0)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!227, !1871, null}
!2678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2679, file: !2587, line: 128)
!2679 = !DISubprogram(name: "putc", scope: !2590, file: !2590, line: 550, type: !2632, flags: DIFlagPrototyped, spFlags: 0)
!2680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2681, file: !2587, line: 129)
!2681 = !DISubprogram(name: "putchar", scope: !2590, file: !2590, line: 556, type: !2288, flags: DIFlagPrototyped, spFlags: 0)
!2682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2683, file: !2587, line: 130)
!2683 = !DISubprogram(name: "puts", scope: !2590, file: !2590, line: 661, type: !2439, flags: DIFlagPrototyped, spFlags: 0)
!2684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2685, file: !2587, line: 131)
!2685 = !DISubprogram(name: "remove", scope: !2590, file: !2590, line: 152, type: !2439, flags: DIFlagPrototyped, spFlags: 0)
!2686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2687, file: !2587, line: 132)
!2687 = !DISubprogram(name: "rename", scope: !2590, file: !2590, line: 154, type: !1874, flags: DIFlagPrototyped, spFlags: 0)
!2688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2689, file: !2587, line: 133)
!2689 = !DISubprogram(name: "rewind", scope: !2590, file: !2590, line: 723, type: !2596, flags: DIFlagPrototyped, spFlags: 0)
!2690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2691, file: !2587, line: 134)
!2691 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !2590, file: !2590, line: 437, type: !2676, flags: DIFlagPrototyped, spFlags: 0)
!2692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2693, file: !2587, line: 135)
!2693 = !DISubprogram(name: "setbuf", scope: !2590, file: !2590, line: 328, type: !2694, flags: DIFlagPrototyped, spFlags: 0)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2615, !1870}
!2696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2697, file: !2587, line: 136)
!2697 = !DISubprogram(name: "setvbuf", scope: !2590, file: !2590, line: 332, type: !2698, flags: DIFlagPrototyped, spFlags: 0)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!227, !2615, !1870, !227, !1845}
!2700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2701, file: !2587, line: 137)
!2701 = !DISubprogram(name: "sprintf", scope: !2590, file: !2590, line: 358, type: !2702, flags: DIFlagPrototyped, spFlags: 0)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!227, !1870, !1871, null}
!2704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2705, file: !2587, line: 138)
!2705 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !2590, file: !2590, line: 439, type: !2706, flags: DIFlagPrototyped, spFlags: 0)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!227, !1871, !1871, null}
!2708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2709, file: !2587, line: 139)
!2709 = !DISubprogram(name: "tmpfile", scope: !2590, file: !2590, line: 188, type: !2710, flags: DIFlagPrototyped, spFlags: 0)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2598}
!2712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2713, file: !2587, line: 141)
!2713 = !DISubprogram(name: "tmpnam", scope: !2590, file: !2590, line: 205, type: !2714, flags: DIFlagPrototyped, spFlags: 0)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!53, !53}
!2716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2717, file: !2587, line: 143)
!2717 = !DISubprogram(name: "ungetc", scope: !2590, file: !2590, line: 668, type: !2632, flags: DIFlagPrototyped, spFlags: 0)
!2718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2719, file: !2587, line: 144)
!2719 = !DISubprogram(name: "vfprintf", scope: !2590, file: !2590, line: 365, type: !2720, flags: DIFlagPrototyped, spFlags: 0)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!227, !2615, !1871, !2112}
!2722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2723, file: !2587, line: 145)
!2723 = !DISubprogram(name: "vprintf", scope: !2590, file: !2590, line: 371, type: !2724, flags: DIFlagPrototyped, spFlags: 0)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!227, !1871, !2112}
!2726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2727, file: !2587, line: 146)
!2727 = !DISubprogram(name: "vsprintf", scope: !2590, file: !2590, line: 373, type: !2728, flags: DIFlagPrototyped, spFlags: 0)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!227, !1870, !1871, !2112}
!2730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2731, file: !2587, line: 175)
!2731 = !DISubprogram(name: "snprintf", scope: !2590, file: !2590, line: 378, type: !2732, flags: DIFlagPrototyped, spFlags: 0)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!227, !1870, !1845, !1871, null}
!2734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2735, file: !2587, line: 176)
!2735 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !2590, file: !2590, line: 479, type: !2720, flags: DIFlagPrototyped, spFlags: 0)
!2736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2737, file: !2587, line: 177)
!2737 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !2590, file: !2590, line: 484, type: !2724, flags: DIFlagPrototyped, spFlags: 0)
!2738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2739, file: !2587, line: 178)
!2739 = !DISubprogram(name: "vsnprintf", scope: !2590, file: !2590, line: 382, type: !2740, flags: DIFlagPrototyped, spFlags: 0)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!227, !1870, !1845, !1871, !2112}
!2742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !43, entity: !2743, file: !2587, line: 179)
!2743 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !2590, file: !2590, line: 487, type: !2744, flags: DIFlagPrototyped, spFlags: 0)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!227, !1871, !1871, !2112}
!2746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2731, file: !2587, line: 185)
!2747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2735, file: !2587, line: 186)
!2748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2737, file: !2587, line: 187)
!2749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2739, file: !2587, line: 188)
!2750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2743, file: !2587, line: 189)
!2751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2752, file: !2753, line: 68)
!2752 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !2754, file: !2753, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!2753 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!2754 = !DINamespace(name: "__exception_ptr", scope: !2)
!2755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2754, entity: !2756, file: !2753, line: 84)
!2756 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !2753, line: 80, type: !2757, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2752}
!2759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2760, file: !2764, line: 82)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2761, line: 48, baseType: !2762)
!2761 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2764 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!2765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2766, file: !2764, line: 83)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2767, line: 38, baseType: !62)
!2767 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2018, file: !2764, line: 84)
!2769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2770, file: !2764, line: 86)
!2770 = !DISubprogram(name: "iswalnum", scope: !2767, file: !2767, line: 95, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2772, file: !2764, line: 87)
!2772 = !DISubprogram(name: "iswalpha", scope: !2767, file: !2767, line: 101, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2774, file: !2764, line: 89)
!2774 = !DISubprogram(name: "iswblank", scope: !2767, file: !2767, line: 146, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2776, file: !2764, line: 91)
!2776 = !DISubprogram(name: "iswcntrl", scope: !2767, file: !2767, line: 104, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2778, file: !2764, line: 92)
!2778 = !DISubprogram(name: "iswctype", scope: !2767, file: !2767, line: 159, type: !2779, flags: DIFlagPrototyped, spFlags: 0)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!227, !2018, !2766}
!2781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2782, file: !2764, line: 93)
!2782 = !DISubprogram(name: "iswdigit", scope: !2767, file: !2767, line: 108, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2784, file: !2764, line: 94)
!2784 = !DISubprogram(name: "iswgraph", scope: !2767, file: !2767, line: 112, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2786, file: !2764, line: 95)
!2786 = !DISubprogram(name: "iswlower", scope: !2767, file: !2767, line: 117, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2788, file: !2764, line: 96)
!2788 = !DISubprogram(name: "iswprint", scope: !2767, file: !2767, line: 120, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2790, file: !2764, line: 97)
!2790 = !DISubprogram(name: "iswpunct", scope: !2767, file: !2767, line: 125, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2792, file: !2764, line: 98)
!2792 = !DISubprogram(name: "iswspace", scope: !2767, file: !2767, line: 130, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2794, file: !2764, line: 99)
!2794 = !DISubprogram(name: "iswupper", scope: !2767, file: !2767, line: 135, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2796, file: !2764, line: 100)
!2796 = !DISubprogram(name: "iswxdigit", scope: !2767, file: !2767, line: 140, type: !2211, flags: DIFlagPrototyped, spFlags: 0)
!2797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2798, file: !2764, line: 101)
!2798 = !DISubprogram(name: "towctrans", scope: !2761, file: !2761, line: 55, type: !2799, flags: DIFlagPrototyped, spFlags: 0)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!2018, !2018, !2760}
!2801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2802, file: !2764, line: 102)
!2802 = !DISubprogram(name: "towlower", scope: !2767, file: !2767, line: 166, type: !2803, flags: DIFlagPrototyped, spFlags: 0)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!2018, !2018}
!2805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2806, file: !2764, line: 103)
!2806 = !DISubprogram(name: "towupper", scope: !2767, file: !2767, line: 169, type: !2803, flags: DIFlagPrototyped, spFlags: 0)
!2807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2808, file: !2764, line: 104)
!2808 = !DISubprogram(name: "wctrans", scope: !2761, file: !2761, line: 52, type: !2809, flags: DIFlagPrototyped, spFlags: 0)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!2760, !125}
!2811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2812, file: !2764, line: 105)
!2812 = !DISubprogram(name: "wctype", scope: !2767, file: !2767, line: 155, type: !2813, flags: DIFlagPrototyped, spFlags: 0)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!2766, !125}
!2815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2816, file: !2819, line: 58)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2817, line: 24, baseType: !2818)
!2817 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!2818 = !DICompositeType(tag: DW_TAG_structure_type, file: !2817, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!2819 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!2820 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2821, entity: !2822, file: !2824, line: 3305)
!2821 = !DINamespace(name: "chrono", scope: !2)
!2822 = !DINamespace(name: "chrono_literals", scope: !2823, exportSymbols: true)
!2823 = !DINamespace(name: "literals", scope: !2, exportSymbols: true)
!2824 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/chrono", directory: "")
!2825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !2826, line: 95)
!2826 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "8d23d9a03c9ca5773e092d05679e2362")
!2827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2828, file: !2826, line: 96)
!2828 = !DIGlobalVariable(name: "__default_lock_policy", linkageName: "_ZN9__gnu_cxxL21__default_lock_policyE", scope: !43, file: !1338, line: 53, type: !2829, isLocal: true, isDefinition: false)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!2830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2831, file: !2834, line: 58)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "imaxdiv_t", file: !2832, line: 275, baseType: !2833)
!2832 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!2833 = !DICompositeType(tag: DW_TAG_structure_type, file: !2832, line: 271, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9imaxdiv_t")
!2834 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cinttypes", directory: "")
!2835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2836, file: !2834, line: 61)
!2836 = !DISubprogram(name: "imaxabs", scope: !2832, file: !2832, line: 290, type: !2837, flags: DIFlagPrototyped, spFlags: 0)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!2359, !2359}
!2839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2840, file: !2834, line: 62)
!2840 = !DISubprogram(name: "imaxdiv", scope: !2832, file: !2832, line: 293, type: !2841, flags: DIFlagPrototyped, spFlags: 0)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!2831, !2359, !2359}
!2843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2844, file: !2834, line: 68)
!2844 = !DISubprogram(name: "strtoimax", scope: !2832, file: !2832, line: 297, type: !2845, flags: DIFlagPrototyped, spFlags: 0)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!2359, !1871, !2517, !227}
!2847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2848, file: !2834, line: 69)
!2848 = !DISubprogram(name: "strtoumax", scope: !2832, file: !2832, line: 301, type: !2849, flags: DIFlagPrototyped, spFlags: 0)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2400, !1871, !2517, !227}
!2851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2852, file: !2834, line: 72)
!2852 = !DISubprogram(name: "wcstoimax", scope: !2832, file: !2832, line: 305, type: !2853, flags: DIFlagPrototyped, spFlags: 0)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!2359, !2049, !2186, !227}
!2855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2856, file: !2834, line: 73)
!2856 = !DISubprogram(name: "wcstoumax", scope: !2832, file: !2832, line: 310, type: !2857, flags: DIFlagPrototyped, spFlags: 0)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!2400, !2049, !2186, !227}
!2859 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !27, file: !20, line: 37)
!2860 = !{i32 7, !"Dwarf Version", i32 5}
!2861 = !{i32 2, !"Debug Info Version", i32 3}
!2862 = !{i32 1, !"wchar_size", i32 4}
!2863 = !{i32 8, !"PIC Level", i32 2}
!2864 = !{i32 7, !"PIE Level", i32 2}
!2865 = !{i32 7, !"uwtable", i32 2}
!2866 = !{i32 7, !"frame-pointer", i32 2}
!2867 = !{!"clang version 16.0.0"}
!2868 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !2116, file: !2116, type: !2420, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2869 = !DILocation(line: 74, column: 25, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2868, file: !3, discriminator: 0)
!2871 = !DILocation(line: 0, scope: !2868)
!2872 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !2116, file: !2116, type: !2420, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2873 = !DILocation(line: 119, column: 7, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2872, file: !10, discriminator: 0)
!2875 = distinct !DISubprogram(name: "_end_marker", linkageName: "_ZN3Log11_end_markerC2Ev", scope: !12, file: !10, line: 116, type: !15, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !14, retainedNodes: !167)
!2876 = !DILocalVariable(name: "this", arg: 1, scope: !2875, type: !2877, flags: DIFlagArtificial | DIFlagObjectPointer)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2878 = !DILocation(line: 0, scope: !2875)
!2879 = !DILocation(line: 118, column: 9, scope: !2875)
!2880 = distinct !DISubprogram(name: "__cxx_global_var_init.2", scope: !2116, file: !2116, type: !2420, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2881 = !DILocation(line: 88, column: 7, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2880, file: !20, discriminator: 0)
!2883 = !DILocation(line: 0, scope: !2880)
!2884 = distinct !DISubprogram(name: "StaticHelper", linkageName: "_ZN3Log12StaticHelperC2Ev", scope: !21, file: !20, line: 50, type: !1232, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1231, retainedNodes: !167)
!2885 = !DILocalVariable(name: "this", arg: 1, scope: !2884, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 51, column: 13, scope: !2884)
!2889 = !DILocation(line: 50, column: 9, scope: !2884)
!2890 = !DILocation(line: 52, column: 13, scope: !2884)
!2891 = !DILocation(line: 54, column: 9, scope: !2884)
!2892 = distinct !DISubprogram(name: "~StaticHelper", linkageName: "_ZN3Log12StaticHelperD2Ev", scope: !21, file: !20, line: 55, type: !1232, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1235, retainedNodes: !167)
!2893 = !DILocalVariable(name: "this", arg: 1, scope: !2892, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!2894 = !DILocation(line: 0, scope: !2892)
!2895 = !DILocation(line: 57, column: 13, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !20, line: 56, column: 9)
!2897 = !DILocation(line: 57, column: 21, scope: !2896)
!2898 = !DILocation(line: 58, column: 9, scope: !2896)
!2899 = !DILocation(line: 58, column: 9, scope: !2892)
!2900 = distinct !DISubprogram(name: "signalLog", linkageName: "_ZN3Log9signalLogEPKc", scope: !9, file: !20, line: 96, type: !2672, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2901 = !DILocalVariable(name: "message", arg: 1, scope: !2900, file: !20, line: 96, type: !125)
!2902 = !DILocation(line: 96, column: 32, scope: !2900)
!2903 = !DILocation(line: 98, column: 9, scope: !2900)
!2904 = !DILocalVariable(name: "length", scope: !2905, file: !20, line: 100, type: !1024)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !20, line: 99, column: 9)
!2906 = !DILocation(line: 100, column: 23, scope: !2905)
!2907 = !DILocation(line: 100, column: 44, scope: !2905)
!2908 = !DILocation(line: 100, column: 32, scope: !2905)
!2909 = !DILocalVariable(name: "written", scope: !2905, file: !20, line: 101, type: !1024)
!2910 = !DILocation(line: 101, column: 23, scope: !2905)
!2911 = !DILocation(line: 101, column: 54, scope: !2905)
!2912 = !DILocation(line: 101, column: 63, scope: !2905)
!2913 = !DILocation(line: 101, column: 33, scope: !2905)
!2914 = !DILocation(line: 102, column: 17, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2905, file: !20, line: 102, column: 17)
!2916 = !DILocation(line: 102, column: 25, scope: !2915)
!2917 = !DILocation(line: 102, column: 17, scope: !2905)
!2918 = !DILocation(line: 104, column: 21, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !20, line: 104, column: 21)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !20, line: 103, column: 13)
!2921 = !DILocation(line: 104, column: 27, scope: !2919)
!2922 = !DILocation(line: 104, column: 21, scope: !2920)
!2923 = !DILocation(line: 105, column: 21, scope: !2919)
!2924 = distinct !{!2924, !2903, !2925, !2926}
!2925 = !DILocation(line: 113, column: 9, scope: !2900)
!2926 = !{!"llvm.loop.mustprogress"}
!2927 = !DILocation(line: 107, column: 21, scope: !2919)
!2928 = !DILocation(line: 110, column: 24, scope: !2905)
!2929 = !DILocation(line: 110, column: 21, scope: !2905)
!2930 = !DILocation(line: 111, column: 17, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2905, file: !20, line: 111, column: 17)
!2932 = !DILocation(line: 111, column: 28, scope: !2931)
!2933 = !DILocation(line: 111, column: 17, scope: !2905)
!2934 = !DILocation(line: 112, column: 17, scope: !2931)
!2935 = !DILocation(line: 114, column: 5, scope: !2900)
!2936 = distinct !DISubprogram(name: "signalLogNumber", linkageName: "_ZN3Log15signalLogNumberEm", scope: !9, file: !20, line: 118, type: !2937, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !60}
!2939 = !DILocalVariable(name: "num", arg: 1, scope: !2936, file: !20, line: 118, type: !60)
!2940 = !DILocation(line: 118, column: 38, scope: !2936)
!2941 = !DILocalVariable(name: "i", scope: !2936, file: !20, line: 120, type: !227)
!2942 = !DILocation(line: 120, column: 13, scope: !2936)
!2943 = !DILocalVariable(name: "buf", scope: !2936, file: !20, line: 121, type: !2944)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 176, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 22)
!2947 = !DILocation(line: 121, column: 14, scope: !2936)
!2948 = !DILocation(line: 122, column: 9, scope: !2936)
!2949 = !DILocation(line: 122, column: 17, scope: !2936)
!2950 = !DILocation(line: 123, column: 16, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2936, file: !20, line: 123, column: 9)
!2952 = !DILocation(line: 123, column: 14, scope: !2951)
!2953 = !DILocation(line: 123, column: 22, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !20, line: 123, column: 9)
!2955 = !DILocation(line: 123, column: 24, scope: !2954)
!2956 = !DILocation(line: 123, column: 28, scope: !2954)
!2957 = !DILocation(line: 123, column: 31, scope: !2954)
!2958 = !DILocation(line: 123, column: 35, scope: !2954)
!2959 = !DILocation(line: 0, scope: !2954)
!2960 = !DILocation(line: 123, column: 9, scope: !2951)
!2961 = !DILocation(line: 125, column: 28, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !20, line: 124, column: 9)
!2963 = !DILocation(line: 125, column: 32, scope: !2962)
!2964 = !DILocation(line: 125, column: 26, scope: !2962)
!2965 = !DILocation(line: 125, column: 22, scope: !2962)
!2966 = !DILocation(line: 125, column: 17, scope: !2962)
!2967 = !DILocation(line: 125, column: 13, scope: !2962)
!2968 = !DILocation(line: 125, column: 20, scope: !2962)
!2969 = !DILocation(line: 126, column: 17, scope: !2962)
!2970 = !DILocation(line: 127, column: 9, scope: !2962)
!2971 = !DILocation(line: 123, column: 40, scope: !2954)
!2972 = !DILocation(line: 123, column: 9, scope: !2954)
!2973 = distinct !{!2973, !2960, !2974, !2926}
!2974 = !DILocation(line: 127, column: 9, scope: !2951)
!2975 = !DILocation(line: 128, column: 19, scope: !2936)
!2976 = !DILocation(line: 128, column: 25, scope: !2936)
!2977 = !DILocation(line: 128, column: 23, scope: !2936)
!2978 = !DILocation(line: 128, column: 27, scope: !2936)
!2979 = !DILocation(line: 128, column: 9, scope: !2936)
!2980 = !DILocation(line: 129, column: 5, scope: !2936)
!2981 = distinct !DISubprogram(name: "strcopy", linkageName: "_ZN3Log7strcopyEPKcPc", scope: !9, file: !20, line: 173, type: !2982, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!53, !125, !53}
!2984 = !DILocalVariable(name: "in", arg: 1, scope: !2981, file: !20, line: 173, type: !125)
!2985 = !DILocation(line: 173, column: 31, scope: !2981)
!2986 = !DILocalVariable(name: "out", arg: 2, scope: !2981, file: !20, line: 173, type: !53)
!2987 = !DILocation(line: 173, column: 41, scope: !2981)
!2988 = !DILocation(line: 175, column: 9, scope: !2981)
!2989 = !DILocation(line: 175, column: 17, scope: !2981)
!2990 = !DILocation(line: 175, column: 16, scope: !2981)
!2991 = !DILocation(line: 176, column: 25, scope: !2981)
!2992 = !DILocation(line: 176, column: 22, scope: !2981)
!2993 = !DILocation(line: 176, column: 17, scope: !2981)
!2994 = !DILocation(line: 176, column: 20, scope: !2981)
!2995 = distinct !{!2995, !2988, !2991, !2926}
!2996 = !DILocation(line: 177, column: 16, scope: !2981)
!2997 = !DILocation(line: 177, column: 9, scope: !2981)
!2998 = distinct !DISubprogram(name: "to_ascii", linkageName: "_ZN3Log8to_asciiEPcm", scope: !9, file: !20, line: 182, type: !2999, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!53, !53, !60}
!3001 = !DILocalVariable(name: "buf", arg: 1, scope: !2998, file: !20, line: 182, type: !53)
!3002 = !DILocation(line: 182, column: 26, scope: !2998)
!3003 = !DILocalVariable(name: "num", arg: 2, scope: !2998, file: !20, line: 182, type: !60)
!3004 = !DILocation(line: 182, column: 43, scope: !2998)
!3005 = !DILocalVariable(name: "i", scope: !2998, file: !20, line: 184, type: !227)
!3006 = !DILocation(line: 184, column: 13, scope: !2998)
!3007 = !DILocation(line: 185, column: 9, scope: !2998)
!3008 = !DILocation(line: 187, column: 30, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2998, file: !20, line: 186, column: 9)
!3010 = !DILocation(line: 187, column: 34, scope: !3009)
!3011 = !DILocation(line: 187, column: 28, scope: !3009)
!3012 = !DILocation(line: 187, column: 24, scope: !3009)
!3013 = !DILocation(line: 187, column: 13, scope: !3009)
!3014 = !DILocation(line: 187, column: 18, scope: !3009)
!3015 = !DILocation(line: 187, column: 22, scope: !3009)
!3016 = !DILocation(line: 188, column: 17, scope: !3009)
!3017 = !DILocation(line: 189, column: 9, scope: !3009)
!3018 = !DILocation(line: 189, column: 18, scope: !2998)
!3019 = !DILocation(line: 189, column: 22, scope: !2998)
!3020 = distinct !{!3020, !3007, !3021, !2926}
!3021 = !DILocation(line: 189, column: 25, scope: !2998)
!3022 = !DILocalVariable(name: "front", scope: !3023, file: !20, line: 192, type: !53)
!3023 = distinct !DILexicalBlock(scope: !2998, file: !20, line: 192, column: 9)
!3024 = !DILocation(line: 192, column: 20, scope: !3023)
!3025 = !DILocation(line: 192, column: 28, scope: !3023)
!3026 = !DILocalVariable(name: "back", scope: !3023, file: !20, line: 192, type: !53)
!3027 = !DILocation(line: 192, column: 34, scope: !3023)
!3028 = !DILocation(line: 192, column: 41, scope: !3023)
!3029 = !DILocation(line: 192, column: 47, scope: !3023)
!3030 = !DILocation(line: 192, column: 45, scope: !3023)
!3031 = !DILocation(line: 192, column: 49, scope: !3023)
!3032 = !DILocation(line: 192, column: 14, scope: !3023)
!3033 = !DILocation(line: 192, column: 54, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3023, file: !20, line: 192, column: 9)
!3035 = !DILocation(line: 192, column: 61, scope: !3034)
!3036 = !DILocation(line: 192, column: 59, scope: !3034)
!3037 = !DILocation(line: 192, column: 9, scope: !3023)
!3038 = !DILocalVariable(name: "t", scope: !3039, file: !20, line: 194, type: !126)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !20, line: 193, column: 9)
!3040 = !DILocation(line: 194, column: 24, scope: !3039)
!3041 = !DILocation(line: 194, column: 29, scope: !3039)
!3042 = !DILocation(line: 194, column: 28, scope: !3039)
!3043 = !DILocation(line: 195, column: 23, scope: !3039)
!3044 = !DILocation(line: 195, column: 22, scope: !3039)
!3045 = !DILocation(line: 195, column: 14, scope: !3039)
!3046 = !DILocation(line: 195, column: 20, scope: !3039)
!3047 = !DILocation(line: 196, column: 21, scope: !3039)
!3048 = !DILocation(line: 196, column: 14, scope: !3039)
!3049 = !DILocation(line: 196, column: 19, scope: !3039)
!3050 = !DILocation(line: 197, column: 9, scope: !3039)
!3051 = !DILocation(line: 192, column: 68, scope: !3034)
!3052 = !DILocation(line: 192, column: 77, scope: !3034)
!3053 = !DILocation(line: 192, column: 9, scope: !3034)
!3054 = distinct !{!3054, !3037, !3055, !2926}
!3055 = !DILocation(line: 197, column: 9, scope: !3023)
!3056 = !DILocation(line: 199, column: 16, scope: !2998)
!3057 = !DILocation(line: 199, column: 22, scope: !2998)
!3058 = !DILocation(line: 199, column: 20, scope: !2998)
!3059 = !DILocation(line: 199, column: 9, scope: !2998)
!3060 = distinct !DISubprogram(name: "prefix", linkageName: "_ZN3Log6prefixERKN4Poco13LocalDateTimeEPcPKc", scope: !9, file: !20, line: 202, type: !3061, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!53, !3063, !53, !125}
!3063 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3065)
!3065 = !DICompositeType(tag: DW_TAG_class_type, name: "LocalDateTime", scope: !27, file: !3066, line: 28, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco13LocalDateTimeE")
!3066 = !DIFile(filename: "/usr/include/Poco/LocalDateTime.h", directory: "", checksumkind: CSK_MD5, checksum: "34d850f42c0d6d1afe8392303644c748")
!3067 = !DILocalVariable(name: "time", arg: 1, scope: !3060, file: !20, line: 202, type: !3063)
!3068 = !DILocation(line: 202, column: 45, scope: !3060)
!3069 = !DILocalVariable(name: "buffer", arg: 2, scope: !3060, file: !20, line: 202, type: !53)
!3070 = !DILocation(line: 202, column: 57, scope: !3060)
!3071 = !DILocalVariable(name: "level", arg: 3, scope: !3060, file: !20, line: 202, type: !125)
!3072 = !DILocation(line: 202, column: 77, scope: !3060)
!3073 = !DILocalVariable(name: "pos", scope: !3060, file: !20, line: 213, type: !53)
!3074 = !DILocation(line: 213, column: 15, scope: !3060)
!3075 = !DILocation(line: 213, column: 37, scope: !3060)
!3076 = !DILocation(line: 213, column: 30, scope: !3060)
!3077 = !DILocation(line: 213, column: 58, scope: !3060)
!3078 = !DILocation(line: 213, column: 66, scope: !3060)
!3079 = !DILocation(line: 213, column: 91, scope: !3060)
!3080 = !DILocation(line: 213, column: 21, scope: !3060)
!3081 = !DILocation(line: 214, column: 13, scope: !3060)
!3082 = !DILocation(line: 214, column: 16, scope: !3060)
!3083 = !DILocalVariable(name: "osTid", scope: !3060, file: !20, line: 217, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3085)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !2363, line: 260, baseType: !3086)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !1926, line: 154, baseType: !227)
!3087 = !DILocation(line: 217, column: 20, scope: !3060)
!3088 = !DILocation(line: 217, column: 28, scope: !3060)
!3089 = !DILocation(line: 220, column: 13, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3060, file: !20, line: 220, column: 13)
!3091 = !DILocation(line: 220, column: 19, scope: !3090)
!3092 = !DILocation(line: 220, column: 13, scope: !3060)
!3093 = !DILocation(line: 222, column: 17, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !20, line: 222, column: 17)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !20, line: 221, column: 9)
!3096 = !DILocation(line: 222, column: 23, scope: !3094)
!3097 = !DILocation(line: 222, column: 17, scope: !3095)
!3098 = !DILocation(line: 223, column: 32, scope: !3094)
!3099 = !DILocation(line: 223, column: 37, scope: !3094)
!3100 = !DILocation(line: 223, column: 23, scope: !3094)
!3101 = !DILocation(line: 223, column: 21, scope: !3094)
!3102 = !DILocation(line: 223, column: 17, scope: !3094)
!3103 = !DILocation(line: 226, column: 35, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3094, file: !20, line: 225, column: 13)
!3105 = !DILocation(line: 226, column: 40, scope: !3104)
!3106 = !DILocation(line: 226, column: 17, scope: !3104)
!3107 = !DILocation(line: 227, column: 21, scope: !3104)
!3108 = !DILocation(line: 229, column: 9, scope: !3095)
!3109 = !DILocation(line: 232, column: 31, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3090, file: !20, line: 231, column: 9)
!3111 = !DILocation(line: 232, column: 36, scope: !3110)
!3112 = !DILocation(line: 232, column: 13, scope: !3110)
!3113 = !DILocation(line: 233, column: 17, scope: !3110)
!3114 = !DILocation(line: 242, column: 13, scope: !3060)
!3115 = !DILocation(line: 242, column: 16, scope: !3060)
!3116 = !DILocation(line: 246, column: 27, scope: !3060)
!3117 = !DILocation(line: 246, column: 32, scope: !3060)
!3118 = !DILocation(line: 246, column: 37, scope: !3060)
!3119 = !DILocation(line: 246, column: 9, scope: !3060)
!3120 = !DILocation(line: 247, column: 9, scope: !3060)
!3121 = !DILocation(line: 247, column: 16, scope: !3060)
!3122 = !DILocation(line: 248, column: 13, scope: !3060)
!3123 = !DILocation(line: 249, column: 27, scope: !3060)
!3124 = !DILocation(line: 249, column: 32, scope: !3060)
!3125 = !DILocation(line: 249, column: 37, scope: !3060)
!3126 = !DILocation(line: 249, column: 9, scope: !3060)
!3127 = !DILocation(line: 250, column: 9, scope: !3060)
!3128 = !DILocation(line: 250, column: 16, scope: !3060)
!3129 = !DILocation(line: 251, column: 13, scope: !3060)
!3130 = !DILocation(line: 252, column: 27, scope: !3060)
!3131 = !DILocation(line: 252, column: 32, scope: !3060)
!3132 = !DILocation(line: 252, column: 37, scope: !3060)
!3133 = !DILocation(line: 252, column: 9, scope: !3060)
!3134 = !DILocation(line: 253, column: 9, scope: !3060)
!3135 = !DILocation(line: 253, column: 16, scope: !3060)
!3136 = !DILocation(line: 254, column: 13, scope: !3060)
!3137 = !DILocation(line: 257, column: 27, scope: !3060)
!3138 = !DILocation(line: 257, column: 32, scope: !3060)
!3139 = !DILocation(line: 257, column: 37, scope: !3060)
!3140 = !DILocation(line: 257, column: 9, scope: !3060)
!3141 = !DILocation(line: 258, column: 9, scope: !3060)
!3142 = !DILocation(line: 258, column: 16, scope: !3060)
!3143 = !DILocation(line: 259, column: 13, scope: !3060)
!3144 = !DILocation(line: 260, column: 27, scope: !3060)
!3145 = !DILocation(line: 260, column: 32, scope: !3060)
!3146 = !DILocation(line: 260, column: 37, scope: !3060)
!3147 = !DILocation(line: 260, column: 9, scope: !3060)
!3148 = !DILocation(line: 261, column: 9, scope: !3060)
!3149 = !DILocation(line: 261, column: 16, scope: !3060)
!3150 = !DILocation(line: 262, column: 13, scope: !3060)
!3151 = !DILocation(line: 263, column: 27, scope: !3060)
!3152 = !DILocation(line: 263, column: 32, scope: !3060)
!3153 = !DILocation(line: 263, column: 37, scope: !3060)
!3154 = !DILocation(line: 263, column: 9, scope: !3060)
!3155 = !DILocation(line: 264, column: 9, scope: !3060)
!3156 = !DILocation(line: 264, column: 16, scope: !3060)
!3157 = !DILocation(line: 265, column: 13, scope: !3060)
!3158 = !DILocation(line: 266, column: 27, scope: !3060)
!3159 = !DILocation(line: 266, column: 32, scope: !3060)
!3160 = !DILocation(line: 266, column: 37, scope: !3060)
!3161 = !DILocation(line: 266, column: 51, scope: !3060)
!3162 = !DILocation(line: 266, column: 60, scope: !3060)
!3163 = !DILocation(line: 266, column: 65, scope: !3060)
!3164 = !DILocation(line: 266, column: 58, scope: !3060)
!3165 = !DILocation(line: 266, column: 9, scope: !3060)
!3166 = !DILocation(line: 267, column: 9, scope: !3060)
!3167 = !DILocation(line: 267, column: 16, scope: !3060)
!3168 = !DILocation(line: 268, column: 13, scope: !3060)
!3169 = !DILocalVariable(name: "tzd", scope: !3060, file: !20, line: 271, type: !227)
!3170 = !DILocation(line: 271, column: 13, scope: !3060)
!3171 = !DILocation(line: 271, column: 19, scope: !3060)
!3172 = !DILocation(line: 271, column: 24, scope: !3060)
!3173 = !DILocation(line: 272, column: 13, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3060, file: !20, line: 272, column: 13)
!3175 = !DILocation(line: 272, column: 17, scope: !3174)
!3176 = !DILocation(line: 272, column: 13, scope: !3060)
!3177 = !DILocation(line: 274, column: 13, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !20, line: 273, column: 9)
!3179 = !DILocation(line: 274, column: 20, scope: !3178)
!3180 = !DILocation(line: 275, column: 20, scope: !3178)
!3181 = !DILocation(line: 275, column: 19, scope: !3178)
!3182 = !DILocation(line: 275, column: 17, scope: !3178)
!3183 = !DILocation(line: 276, column: 9, scope: !3178)
!3184 = !DILocation(line: 279, column: 13, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3174, file: !20, line: 278, column: 9)
!3186 = !DILocation(line: 279, column: 20, scope: !3185)
!3187 = !DILocation(line: 281, column: 13, scope: !3060)
!3188 = !DILocation(line: 282, column: 16, scope: !3060)
!3189 = !DILocation(line: 282, column: 20, scope: !3060)
!3190 = !DILocation(line: 282, column: 29, scope: !3060)
!3191 = !DILocation(line: 282, column: 33, scope: !3060)
!3192 = !DILocation(line: 282, column: 39, scope: !3060)
!3193 = !DILocation(line: 282, column: 26, scope: !3060)
!3194 = !DILocation(line: 282, column: 49, scope: !3060)
!3195 = !DILocation(line: 282, column: 53, scope: !3060)
!3196 = !DILocation(line: 282, column: 59, scope: !3060)
!3197 = !DILocation(line: 282, column: 66, scope: !3060)
!3198 = !DILocation(line: 282, column: 71, scope: !3060)
!3199 = !DILocation(line: 282, column: 45, scope: !3060)
!3200 = !DILocation(line: 282, column: 13, scope: !3060)
!3201 = !DILocation(line: 283, column: 27, scope: !3060)
!3202 = !DILocation(line: 283, column: 32, scope: !3060)
!3203 = !DILocation(line: 283, column: 9, scope: !3060)
!3204 = !DILocation(line: 284, column: 9, scope: !3060)
!3205 = !DILocation(line: 284, column: 16, scope: !3060)
!3206 = !DILocation(line: 285, column: 13, scope: !3060)
!3207 = !DILocation(line: 288, column: 9, scope: !3060)
!3208 = !DILocation(line: 288, column: 16, scope: !3060)
!3209 = !DILocation(line: 289, column: 9, scope: !3060)
!3210 = !DILocation(line: 289, column: 16, scope: !3060)
!3211 = !DILocation(line: 290, column: 13, scope: !3060)
!3212 = !DILocation(line: 291, column: 23, scope: !3060)
!3213 = !DILocation(line: 291, column: 46, scope: !3060)
!3214 = !DILocation(line: 291, column: 15, scope: !3060)
!3215 = !DILocation(line: 291, column: 13, scope: !3060)
!3216 = !DILocation(line: 292, column: 9, scope: !3060)
!3217 = !DILocation(line: 292, column: 16, scope: !3060)
!3218 = !DILocation(line: 293, column: 9, scope: !3060)
!3219 = !DILocation(line: 293, column: 16, scope: !3060)
!3220 = !DILocation(line: 294, column: 9, scope: !3060)
!3221 = !DILocation(line: 294, column: 16, scope: !3060)
!3222 = !DILocation(line: 295, column: 13, scope: !3060)
!3223 = !DILocation(line: 296, column: 23, scope: !3060)
!3224 = !DILocation(line: 296, column: 30, scope: !3060)
!3225 = !DILocation(line: 296, column: 15, scope: !3060)
!3226 = !DILocation(line: 296, column: 13, scope: !3060)
!3227 = !DILocation(line: 297, column: 9, scope: !3060)
!3228 = !DILocation(line: 297, column: 16, scope: !3060)
!3229 = !DILocation(line: 298, column: 9, scope: !3060)
!3230 = !DILocation(line: 298, column: 16, scope: !3060)
!3231 = !DILocation(line: 299, column: 9, scope: !3060)
!3232 = !DILocation(line: 299, column: 16, scope: !3060)
!3233 = !DILocation(line: 301, column: 16, scope: !3060)
!3234 = !DILocation(line: 301, column: 9, scope: !3060)
!3235 = distinct !DISubprogram(name: "getInited", linkageName: "_ZNK3Log12StaticHelper9getInitedEv", scope: !21, file: !20, line: 60, type: !1237, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1236, retainedNodes: !167)
!3236 = !DILocalVariable(name: "this", arg: 1, scope: !3235, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!3238 = !DILocation(line: 0, scope: !3235)
!3239 = !DILocation(line: 60, column: 41, scope: !3235)
!3240 = !DILocation(line: 60, column: 34, scope: !3235)
!3241 = distinct !DISubprogram(name: "getId", linkageName: "_ZNK3Log12StaticHelper5getIdB5cxx11Ev", scope: !21, file: !20, line: 64, type: !1247, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1246, retainedNodes: !167)
!3242 = !DILocalVariable(name: "this", arg: 1, scope: !3241, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!3243 = !DILocation(line: 0, scope: !3241)
!3244 = !DILocation(line: 64, column: 51, scope: !3241)
!3245 = !DILocation(line: 64, column: 44, scope: !3241)
!3246 = distinct !DISubprogram(name: "to_ascii_fixed<6>", linkageName: "_ZN3Log14to_ascii_fixedILi6EEEvPcm", scope: !9, file: !20, line: 132, type: !3247, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3249, retainedNodes: !167)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !53, !60}
!3249 = !{!3250}
!3250 = !DITemplateValueParameter(name: "Width", type: !227, value: i32 6)
!3251 = !DILocalVariable(name: "buf", arg: 1, scope: !3246, file: !20, line: 132, type: !53)
!3252 = !DILocation(line: 132, column: 52, scope: !3246)
!3253 = !DILocalVariable(name: "num", arg: 2, scope: !3246, file: !20, line: 132, type: !60)
!3254 = !DILocation(line: 132, column: 69, scope: !3246)
!3255 = !DILocation(line: 134, column: 32, scope: !3246)
!3256 = !DILocation(line: 134, column: 36, scope: !3246)
!3257 = !DILocation(line: 134, column: 30, scope: !3246)
!3258 = !DILocation(line: 134, column: 26, scope: !3246)
!3259 = !DILocation(line: 134, column: 9, scope: !3246)
!3260 = !DILocation(line: 134, column: 24, scope: !3246)
!3261 = !DILocation(line: 138, column: 17, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !20, line: 137, column: 9)
!3263 = distinct !DILexicalBlock(scope: !3246, file: !20, line: 136, column: 13)
!3264 = !DILocation(line: 139, column: 36, scope: !3262)
!3265 = !DILocation(line: 139, column: 40, scope: !3262)
!3266 = !DILocation(line: 139, column: 34, scope: !3262)
!3267 = !DILocation(line: 139, column: 30, scope: !3262)
!3268 = !DILocation(line: 139, column: 13, scope: !3262)
!3269 = !DILocation(line: 139, column: 28, scope: !3262)
!3270 = !DILocation(line: 144, column: 17, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !20, line: 143, column: 9)
!3272 = distinct !DILexicalBlock(scope: !3246, file: !20, line: 142, column: 13)
!3273 = !DILocation(line: 145, column: 36, scope: !3271)
!3274 = !DILocation(line: 145, column: 40, scope: !3271)
!3275 = !DILocation(line: 145, column: 34, scope: !3271)
!3276 = !DILocation(line: 145, column: 30, scope: !3271)
!3277 = !DILocation(line: 145, column: 13, scope: !3271)
!3278 = !DILocation(line: 145, column: 28, scope: !3271)
!3279 = !DILocation(line: 150, column: 17, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !20, line: 149, column: 9)
!3281 = distinct !DILexicalBlock(scope: !3246, file: !20, line: 148, column: 13)
!3282 = !DILocation(line: 151, column: 36, scope: !3280)
!3283 = !DILocation(line: 151, column: 40, scope: !3280)
!3284 = !DILocation(line: 151, column: 34, scope: !3280)
!3285 = !DILocation(line: 151, column: 30, scope: !3280)
!3286 = !DILocation(line: 151, column: 13, scope: !3280)
!3287 = !DILocation(line: 151, column: 28, scope: !3280)
!3288 = !DILocation(line: 156, column: 17, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !20, line: 155, column: 9)
!3290 = distinct !DILexicalBlock(scope: !3246, file: !20, line: 154, column: 13)
!3291 = !DILocation(line: 157, column: 36, scope: !3289)
!3292 = !DILocation(line: 157, column: 40, scope: !3289)
!3293 = !DILocation(line: 157, column: 34, scope: !3289)
!3294 = !DILocation(line: 157, column: 30, scope: !3289)
!3295 = !DILocation(line: 157, column: 13, scope: !3289)
!3296 = !DILocation(line: 157, column: 28, scope: !3289)
!3297 = !DILocation(line: 162, column: 17, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !20, line: 161, column: 9)
!3299 = distinct !DILexicalBlock(scope: !3246, file: !20, line: 160, column: 13)
!3300 = !DILocation(line: 163, column: 36, scope: !3298)
!3301 = !DILocation(line: 163, column: 40, scope: !3298)
!3302 = !DILocation(line: 163, column: 34, scope: !3298)
!3303 = !DILocation(line: 163, column: 30, scope: !3298)
!3304 = !DILocation(line: 163, column: 13, scope: !3298)
!3305 = !DILocation(line: 163, column: 28, scope: !3298)
!3306 = !DILocation(line: 167, column: 5, scope: !3246)
!3307 = distinct !DISubprogram(name: "to_ascii_fixed<5>", linkageName: "_ZN3Log14to_ascii_fixedILi5EEEvPcm", scope: !9, file: !20, line: 132, type: !3247, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3308, retainedNodes: !167)
!3308 = !{!3309}
!3309 = !DITemplateValueParameter(name: "Width", type: !227, value: i32 5)
!3310 = !DILocalVariable(name: "buf", arg: 1, scope: !3307, file: !20, line: 132, type: !53)
!3311 = !DILocation(line: 132, column: 52, scope: !3307)
!3312 = !DILocalVariable(name: "num", arg: 2, scope: !3307, file: !20, line: 132, type: !60)
!3313 = !DILocation(line: 132, column: 69, scope: !3307)
!3314 = !DILocation(line: 134, column: 32, scope: !3307)
!3315 = !DILocation(line: 134, column: 36, scope: !3307)
!3316 = !DILocation(line: 134, column: 30, scope: !3307)
!3317 = !DILocation(line: 134, column: 26, scope: !3307)
!3318 = !DILocation(line: 134, column: 9, scope: !3307)
!3319 = !DILocation(line: 134, column: 24, scope: !3307)
!3320 = !DILocation(line: 138, column: 17, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !20, line: 137, column: 9)
!3322 = distinct !DILexicalBlock(scope: !3307, file: !20, line: 136, column: 13)
!3323 = !DILocation(line: 139, column: 36, scope: !3321)
!3324 = !DILocation(line: 139, column: 40, scope: !3321)
!3325 = !DILocation(line: 139, column: 34, scope: !3321)
!3326 = !DILocation(line: 139, column: 30, scope: !3321)
!3327 = !DILocation(line: 139, column: 13, scope: !3321)
!3328 = !DILocation(line: 139, column: 28, scope: !3321)
!3329 = !DILocation(line: 144, column: 17, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !20, line: 143, column: 9)
!3331 = distinct !DILexicalBlock(scope: !3307, file: !20, line: 142, column: 13)
!3332 = !DILocation(line: 145, column: 36, scope: !3330)
!3333 = !DILocation(line: 145, column: 40, scope: !3330)
!3334 = !DILocation(line: 145, column: 34, scope: !3330)
!3335 = !DILocation(line: 145, column: 30, scope: !3330)
!3336 = !DILocation(line: 145, column: 13, scope: !3330)
!3337 = !DILocation(line: 145, column: 28, scope: !3330)
!3338 = !DILocation(line: 150, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !20, line: 149, column: 9)
!3340 = distinct !DILexicalBlock(scope: !3307, file: !20, line: 148, column: 13)
!3341 = !DILocation(line: 151, column: 36, scope: !3339)
!3342 = !DILocation(line: 151, column: 40, scope: !3339)
!3343 = !DILocation(line: 151, column: 34, scope: !3339)
!3344 = !DILocation(line: 151, column: 30, scope: !3339)
!3345 = !DILocation(line: 151, column: 13, scope: !3339)
!3346 = !DILocation(line: 151, column: 28, scope: !3339)
!3347 = !DILocation(line: 156, column: 17, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !20, line: 155, column: 9)
!3349 = distinct !DILexicalBlock(scope: !3307, file: !20, line: 154, column: 13)
!3350 = !DILocation(line: 157, column: 36, scope: !3348)
!3351 = !DILocation(line: 157, column: 40, scope: !3348)
!3352 = !DILocation(line: 157, column: 34, scope: !3348)
!3353 = !DILocation(line: 157, column: 30, scope: !3348)
!3354 = !DILocation(line: 157, column: 13, scope: !3348)
!3355 = !DILocation(line: 157, column: 28, scope: !3348)
!3356 = !DILocation(line: 167, column: 5, scope: !3307)
!3357 = distinct !DISubprogram(name: "to_ascii_fixed<4>", linkageName: "_ZN3Log14to_ascii_fixedILi4EEEvPcm", scope: !9, file: !20, line: 132, type: !3247, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3358, retainedNodes: !167)
!3358 = !{!3359}
!3359 = !DITemplateValueParameter(name: "Width", type: !227, value: i32 4)
!3360 = !DILocalVariable(name: "buf", arg: 1, scope: !3357, file: !20, line: 132, type: !53)
!3361 = !DILocation(line: 132, column: 52, scope: !3357)
!3362 = !DILocalVariable(name: "num", arg: 2, scope: !3357, file: !20, line: 132, type: !60)
!3363 = !DILocation(line: 132, column: 69, scope: !3357)
!3364 = !DILocation(line: 134, column: 32, scope: !3357)
!3365 = !DILocation(line: 134, column: 36, scope: !3357)
!3366 = !DILocation(line: 134, column: 30, scope: !3357)
!3367 = !DILocation(line: 134, column: 26, scope: !3357)
!3368 = !DILocation(line: 134, column: 9, scope: !3357)
!3369 = !DILocation(line: 134, column: 24, scope: !3357)
!3370 = !DILocation(line: 138, column: 17, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !20, line: 137, column: 9)
!3372 = distinct !DILexicalBlock(scope: !3357, file: !20, line: 136, column: 13)
!3373 = !DILocation(line: 139, column: 36, scope: !3371)
!3374 = !DILocation(line: 139, column: 40, scope: !3371)
!3375 = !DILocation(line: 139, column: 34, scope: !3371)
!3376 = !DILocation(line: 139, column: 30, scope: !3371)
!3377 = !DILocation(line: 139, column: 13, scope: !3371)
!3378 = !DILocation(line: 139, column: 28, scope: !3371)
!3379 = !DILocation(line: 144, column: 17, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !20, line: 143, column: 9)
!3381 = distinct !DILexicalBlock(scope: !3357, file: !20, line: 142, column: 13)
!3382 = !DILocation(line: 145, column: 36, scope: !3380)
!3383 = !DILocation(line: 145, column: 40, scope: !3380)
!3384 = !DILocation(line: 145, column: 34, scope: !3380)
!3385 = !DILocation(line: 145, column: 30, scope: !3380)
!3386 = !DILocation(line: 145, column: 13, scope: !3380)
!3387 = !DILocation(line: 145, column: 28, scope: !3380)
!3388 = !DILocation(line: 150, column: 17, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !20, line: 149, column: 9)
!3390 = distinct !DILexicalBlock(scope: !3357, file: !20, line: 148, column: 13)
!3391 = !DILocation(line: 151, column: 36, scope: !3389)
!3392 = !DILocation(line: 151, column: 40, scope: !3389)
!3393 = !DILocation(line: 151, column: 34, scope: !3389)
!3394 = !DILocation(line: 151, column: 30, scope: !3389)
!3395 = !DILocation(line: 151, column: 13, scope: !3389)
!3396 = !DILocation(line: 151, column: 28, scope: !3389)
!3397 = !DILocation(line: 167, column: 5, scope: !3357)
!3398 = distinct !DISubprogram(name: "year", linkageName: "_ZNK4Poco13LocalDateTime4yearEv", scope: !3065, file: !3066, line: 265, type: !3399, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3402, retainedNodes: !167)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!227, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3402 = !DISubprogram(name: "year", linkageName: "_ZNK4Poco13LocalDateTime4yearEv", scope: !3065, file: !3066, line: 156, type: !3399, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3403 = !DILocalVariable(name: "this", arg: 1, scope: !3398, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3405 = !DILocation(line: 0, scope: !3398)
!3406 = !DILocation(line: 267, column: 9, scope: !3398)
!3407 = !DILocation(line: 267, column: 19, scope: !3398)
!3408 = !DILocation(line: 267, column: 2, scope: !3398)
!3409 = distinct !DISubprogram(name: "to_ascii_fixed<2>", linkageName: "_ZN3Log14to_ascii_fixedILi2EEEvPcm", scope: !9, file: !20, line: 132, type: !3247, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3410, retainedNodes: !167)
!3410 = !{!3411}
!3411 = !DITemplateValueParameter(name: "Width", type: !227, value: i32 2)
!3412 = !DILocalVariable(name: "buf", arg: 1, scope: !3409, file: !20, line: 132, type: !53)
!3413 = !DILocation(line: 132, column: 52, scope: !3409)
!3414 = !DILocalVariable(name: "num", arg: 2, scope: !3409, file: !20, line: 132, type: !60)
!3415 = !DILocation(line: 132, column: 69, scope: !3409)
!3416 = !DILocation(line: 134, column: 32, scope: !3409)
!3417 = !DILocation(line: 134, column: 36, scope: !3409)
!3418 = !DILocation(line: 134, column: 30, scope: !3409)
!3419 = !DILocation(line: 134, column: 26, scope: !3409)
!3420 = !DILocation(line: 134, column: 9, scope: !3409)
!3421 = !DILocation(line: 134, column: 24, scope: !3409)
!3422 = !DILocation(line: 138, column: 17, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !20, line: 137, column: 9)
!3424 = distinct !DILexicalBlock(scope: !3409, file: !20, line: 136, column: 13)
!3425 = !DILocation(line: 139, column: 36, scope: !3423)
!3426 = !DILocation(line: 139, column: 40, scope: !3423)
!3427 = !DILocation(line: 139, column: 34, scope: !3423)
!3428 = !DILocation(line: 139, column: 30, scope: !3423)
!3429 = !DILocation(line: 139, column: 13, scope: !3423)
!3430 = !DILocation(line: 139, column: 28, scope: !3423)
!3431 = !DILocation(line: 167, column: 5, scope: !3409)
!3432 = distinct !DISubprogram(name: "month", linkageName: "_ZNK4Poco13LocalDateTime5monthEv", scope: !3065, file: !3066, line: 271, type: !3399, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3433, retainedNodes: !167)
!3433 = !DISubprogram(name: "month", linkageName: "_ZNK4Poco13LocalDateTime5monthEv", scope: !3065, file: !3066, line: 159, type: !3399, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3434 = !DILocalVariable(name: "this", arg: 1, scope: !3432, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3435 = !DILocation(line: 0, scope: !3432)
!3436 = !DILocation(line: 273, column: 9, scope: !3432)
!3437 = !DILocation(line: 273, column: 19, scope: !3432)
!3438 = !DILocation(line: 273, column: 2, scope: !3432)
!3439 = distinct !DISubprogram(name: "day", linkageName: "_ZNK4Poco13LocalDateTime3dayEv", scope: !3065, file: !3066, line: 283, type: !3399, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3440, retainedNodes: !167)
!3440 = !DISubprogram(name: "day", linkageName: "_ZNK4Poco13LocalDateTime3dayEv", scope: !3065, file: !3066, line: 175, type: !3399, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3441 = !DILocalVariable(name: "this", arg: 1, scope: !3439, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3442 = !DILocation(line: 0, scope: !3439)
!3443 = !DILocation(line: 285, column: 9, scope: !3439)
!3444 = !DILocation(line: 285, column: 19, scope: !3439)
!3445 = !DILocation(line: 285, column: 2, scope: !3439)
!3446 = distinct !DISubprogram(name: "hour", linkageName: "_ZNK4Poco13LocalDateTime4hourEv", scope: !3065, file: !3066, line: 301, type: !3399, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3447, retainedNodes: !167)
!3447 = !DISubprogram(name: "hour", linkageName: "_ZNK4Poco13LocalDateTime4hourEv", scope: !3065, file: !3066, line: 186, type: !3399, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3448 = !DILocalVariable(name: "this", arg: 1, scope: !3446, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3449 = !DILocation(line: 0, scope: !3446)
!3450 = !DILocation(line: 303, column: 9, scope: !3446)
!3451 = !DILocation(line: 303, column: 19, scope: !3446)
!3452 = !DILocation(line: 303, column: 2, scope: !3446)
!3453 = distinct !DISubprogram(name: "minute", linkageName: "_ZNK4Poco13LocalDateTime6minuteEv", scope: !3065, file: !3066, line: 325, type: !3399, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3454, retainedNodes: !167)
!3454 = !DISubprogram(name: "minute", linkageName: "_ZNK4Poco13LocalDateTime6minuteEv", scope: !3065, file: !3066, line: 198, type: !3399, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3455 = !DILocalVariable(name: "this", arg: 1, scope: !3453, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 327, column: 9, scope: !3453)
!3458 = !DILocation(line: 327, column: 19, scope: !3453)
!3459 = !DILocation(line: 327, column: 2, scope: !3453)
!3460 = distinct !DISubprogram(name: "second", linkageName: "_ZNK4Poco13LocalDateTime6secondEv", scope: !3065, file: !3066, line: 331, type: !3399, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3461, retainedNodes: !167)
!3461 = !DISubprogram(name: "second", linkageName: "_ZNK4Poco13LocalDateTime6secondEv", scope: !3065, file: !3066, line: 201, type: !3399, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3462 = !DILocalVariable(name: "this", arg: 1, scope: !3460, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3463 = !DILocation(line: 0, scope: !3460)
!3464 = !DILocation(line: 333, column: 9, scope: !3460)
!3465 = !DILocation(line: 333, column: 19, scope: !3460)
!3466 = !DILocation(line: 333, column: 2, scope: !3460)
!3467 = distinct !DISubprogram(name: "millisecond", linkageName: "_ZNK4Poco13LocalDateTime11millisecondEv", scope: !3065, file: !3066, line: 337, type: !3399, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3468, retainedNodes: !167)
!3468 = !DISubprogram(name: "millisecond", linkageName: "_ZNK4Poco13LocalDateTime11millisecondEv", scope: !3065, file: !3066, line: 204, type: !3399, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3469 = !DILocalVariable(name: "this", arg: 1, scope: !3467, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3470 = !DILocation(line: 0, scope: !3467)
!3471 = !DILocation(line: 339, column: 9, scope: !3467)
!3472 = !DILocation(line: 339, column: 19, scope: !3467)
!3473 = !DILocation(line: 339, column: 2, scope: !3467)
!3474 = distinct !DISubprogram(name: "microsecond", linkageName: "_ZNK4Poco13LocalDateTime11microsecondEv", scope: !3065, file: !3066, line: 343, type: !3399, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3475, retainedNodes: !167)
!3475 = !DISubprogram(name: "microsecond", linkageName: "_ZNK4Poco13LocalDateTime11microsecondEv", scope: !3065, file: !3066, line: 207, type: !3399, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3476 = !DILocalVariable(name: "this", arg: 1, scope: !3474, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3477 = !DILocation(line: 0, scope: !3474)
!3478 = !DILocation(line: 345, column: 9, scope: !3474)
!3479 = !DILocation(line: 345, column: 19, scope: !3474)
!3480 = !DILocation(line: 345, column: 2, scope: !3474)
!3481 = distinct !DISubprogram(name: "tzd", linkageName: "_ZNK4Poco13LocalDateTime3tzdEv", scope: !3065, file: !3066, line: 355, type: !3399, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3482, retainedNodes: !167)
!3482 = !DISubprogram(name: "tzd", linkageName: "_ZNK4Poco13LocalDateTime3tzdEv", scope: !3065, file: !3066, line: 213, type: !3399, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3483 = !DILocalVariable(name: "this", arg: 1, scope: !3481, type: !3404, flags: DIFlagArtificial | DIFlagObjectPointer)
!3484 = !DILocation(line: 0, scope: !3481)
!3485 = !DILocation(line: 357, column: 9, scope: !3481)
!3486 = !DILocation(line: 357, column: 2, scope: !3481)
!3487 = distinct !DISubprogram(name: "signalLogPrefix", linkageName: "_ZN3Log15signalLogPrefixEv", scope: !9, file: !20, line: 304, type: !2420, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3488 = !DILocalVariable(name: "buffer", scope: !3487, file: !20, line: 306, type: !3489)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8192, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 1024)
!3492 = !DILocation(line: 306, column: 14, scope: !3487)
!3493 = !DILocation(line: 307, column: 36, scope: !3487)
!3494 = !DILocation(line: 307, column: 9, scope: !3487)
!3495 = !DILocation(line: 308, column: 19, scope: !3487)
!3496 = !DILocation(line: 308, column: 9, scope: !3487)
!3497 = !DILocation(line: 309, column: 5, scope: !3487)
!3498 = distinct !DISubprogram(name: "prefix<1023>", linkageName: "_ZN3Log6prefixILi1023EEEPcS1_PKc", scope: !9, file: !10, line: 89, type: !3499, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3501, retainedNodes: !167)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!53, !53, !125}
!3501 = !{!3502}
!3502 = !DITemplateValueParameter(name: "Size", type: !227, value: i32 1023)
!3503 = !DILocalVariable(name: "buffer", arg: 1, scope: !3498, file: !10, line: 89, type: !53)
!3504 = !DILocation(line: 89, column: 50, scope: !3498)
!3505 = !DILocalVariable(name: "level", arg: 2, scope: !3498, file: !10, line: 89, type: !125)
!3506 = !DILocation(line: 89, column: 76, scope: !3498)
!3507 = !DILocation(line: 92, column: 23, scope: !3498)
!3508 = !DILocation(line: 92, column: 46, scope: !3498)
!3509 = !DILocation(line: 92, column: 54, scope: !3498)
!3510 = !DILocation(line: 92, column: 16, scope: !3498)
!3511 = !DILocation(line: 92, column: 9, scope: !3498)
!3512 = !DILocation(line: 93, column: 5, scope: !3498)
!3513 = distinct !DISubprogram(name: "initialize", linkageName: "_ZN3Log10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_bbRKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE", scope: !9, file: !20, line: 311, type: !3514, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !1244, !1244, !1154, !1154, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DICompositeType(tag: DW_TAG_class_type, name: "map<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >", scope: !2, file: !3519, line: 100, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE")
!3519 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_map.h", directory: "", checksumkind: CSK_MD5, checksum: "aee57a8661ec66bcbd3d049a16df390e")
!3520 = !DILocalVariable(name: "name", arg: 1, scope: !3513, file: !20, line: 311, type: !1244)
!3521 = !DILocation(line: 311, column: 40, scope: !3513)
!3522 = !DILocalVariable(name: "logLevel", arg: 2, scope: !3513, file: !20, line: 312, type: !1244)
!3523 = !DILocation(line: 312, column: 40, scope: !3513)
!3524 = !DILocalVariable(name: "withColor", arg: 3, scope: !3513, file: !20, line: 313, type: !1154)
!3525 = !DILocation(line: 313, column: 32, scope: !3513)
!3526 = !DILocalVariable(name: "logToFile", arg: 4, scope: !3513, file: !20, line: 314, type: !1154)
!3527 = !DILocation(line: 314, column: 32, scope: !3513)
!3528 = !DILocalVariable(name: "config", arg: 5, scope: !3513, file: !20, line: 315, type: !3516)
!3529 = !DILocation(line: 315, column: 63, scope: !3513)
!3530 = !DILocation(line: 317, column: 24, scope: !3513)
!3531 = !DILocation(line: 317, column: 16, scope: !3513)
!3532 = !DILocalVariable(name: "oss", scope: !3513, file: !20, line: 318, type: !3533)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostringstream", scope: !2, file: !3534, line: 153, baseType: !3535)
!3534 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!3535 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostringstream<char, std::char_traits<char>, std::allocator<char> >", scope: !34, file: !3536, line: 293, size: 3008, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3536 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/sstream.tcc", directory: "")
!3537 = !DILocation(line: 318, column: 28, scope: !3513)
!3538 = !DILocation(line: 319, column: 23, scope: !3513)
!3539 = !DILocation(line: 319, column: 13, scope: !3513)
!3540 = !DILocation(line: 321, column: 13, scope: !3513)
!3541 = !DILocation(line: 322, column: 16, scope: !3513)
!3542 = !DILocation(line: 322, column: 13, scope: !3513)
!3543 = !DILocation(line: 322, column: 32, scope: !3513)
!3544 = !DILocation(line: 322, column: 29, scope: !3513)
!3545 = !DILocation(line: 322, column: 53, scope: !3513)
!3546 = !DILocation(line: 322, column: 50, scope: !3513)
!3547 = !DILocation(line: 324, column: 26, scope: !3513)
!3548 = !DILocation(line: 324, column: 16, scope: !3513)
!3549 = !DILocation(line: 324, column: 9, scope: !3513)
!3550 = !DILocalVariable(name: "channel", scope: !3513, file: !20, line: 327, type: !1586)
!3551 = !DILocation(line: 327, column: 26, scope: !3513)
!3552 = !DILocation(line: 329, column: 13, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3513, file: !20, line: 329, column: 13)
!3554 = !DILocation(line: 329, column: 13, scope: !3513)
!3555 = !DILocation(line: 331, column: 51, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !20, line: 330, column: 9)
!3557 = !DICompositeType(tag: DW_TAG_class_type, name: "FileChannel", scope: !27, file: !3558, line: 37, size: 2432, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3558 = !DIFile(filename: "/usr/include/Poco/FileChannel.h", directory: "", checksumkind: CSK_MD5, checksum: "3b2242ccbaebcaf92bc8e670148f117c")
!3559 = !DILocation(line: 331, column: 67, scope: !3556)
!3560 = !DILocation(line: 331, column: 55, scope: !3556)
!3561 = !DILocation(line: 331, column: 21, scope: !3556)
!3562 = !DILocation(line: 331, column: 13, scope: !3556)
!3563 = !DILocalVariable(name: "__range2", scope: !3564, type: !3516, flags: DIFlagArtificial)
!3564 = distinct !DILexicalBlock(scope: !3556, file: !20, line: 332, column: 13)
!3565 = !DILocation(line: 0, scope: !3564)
!3566 = !DILocation(line: 332, column: 37, scope: !3564)
!3567 = !DILocalVariable(name: "__begin2", scope: !3564, type: !3568, flags: DIFlagArtificial)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !3518, file: !3519, line: 165, baseType: !1407, flags: DIFlagPublic)
!3569 = !DILocation(line: 332, column: 35, scope: !3564)
!3570 = !DILocalVariable(name: "__end2", scope: !3564, type: !3568, flags: DIFlagArtificial)
!3571 = !DILocalVariable(name: "pair", scope: !3572, file: !20, line: 332, type: !1455)
!3572 = distinct !DILexicalBlock(scope: !3564, file: !20, line: 332, column: 13)
!3573 = !DILocation(line: 332, column: 30, scope: !3572)
!3574 = !DILocation(line: 332, column: 35, scope: !3572)
!3575 = !DILocation(line: 334, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !20, line: 333, column: 13)
!3577 = !DILocation(line: 334, column: 38, scope: !3576)
!3578 = !DILocation(line: 334, column: 43, scope: !3576)
!3579 = !DILocation(line: 334, column: 50, scope: !3576)
!3580 = !DILocation(line: 334, column: 55, scope: !3576)
!3581 = !DILocation(line: 334, column: 26, scope: !3576)
!3582 = !DILocation(line: 332, column: 13, scope: !3564)
!3583 = distinct !{!3583, !3582, !3584}
!3584 = !DILocation(line: 335, column: 13, scope: !3564)
!3585 = !DILocation(line: 385, column: 5, scope: !3513)
!3586 = !DILocation(line: 385, column: 5, scope: !3556)
!3587 = !DILocation(line: 336, column: 9, scope: !3556)
!3588 = !DILocation(line: 337, column: 18, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3553, file: !20, line: 337, column: 18)
!3590 = !DILocation(line: 337, column: 18, scope: !3553)
!3591 = !DILocation(line: 339, column: 51, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !20, line: 338, column: 9)
!3593 = !DICompositeType(tag: DW_TAG_class_type, name: "ColorConsoleChannel", scope: !27, file: !3594, line: 66, size: 576, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3594 = !DIFile(filename: "/usr/include/Poco/ConsoleChannel.h", directory: "", checksumkind: CSK_MD5, checksum: "94548b9c8757eb1a304ca9dbc23f9f8d")
!3595 = !DILocation(line: 339, column: 55, scope: !3592)
!3596 = !DILocation(line: 339, column: 21, scope: !3592)
!3597 = !DILocation(line: 340, column: 13, scope: !3592)
!3598 = !DILocation(line: 340, column: 34, scope: !3592)
!3599 = !DILocation(line: 340, column: 48, scope: !3592)
!3600 = !DILocation(line: 340, column: 22, scope: !3592)
!3601 = !DILocation(line: 341, column: 13, scope: !3592)
!3602 = !DILocation(line: 341, column: 34, scope: !3592)
!3603 = !DILocation(line: 341, column: 50, scope: !3592)
!3604 = !DILocation(line: 341, column: 22, scope: !3592)
!3605 = !DILocation(line: 342, column: 9, scope: !3592)
!3606 = !DILocation(line: 385, column: 5, scope: !3592)
!3607 = !DILocation(line: 344, column: 51, scope: !3589)
!3608 = !DICompositeType(tag: DW_TAG_class_type, name: "ConsoleChannel", scope: !27, file: !3594, line: 30, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3609 = !DILocation(line: 344, column: 55, scope: !3589)
!3610 = !DILocation(line: 344, column: 21, scope: !3589)
!3611 = !DILocation(line: 385, column: 5, scope: !3589)
!3612 = !DILocation(line: 351, column: 9, scope: !3513)
!3613 = !DILocation(line: 351, column: 18, scope: !3513)
!3614 = !DILocalVariable(name: "logger", scope: !3615, file: !20, line: 355, type: !3616)
!3615 = distinct !DILexicalBlock(scope: !3513, file: !20, line: 354, column: 9)
!3616 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!3617 = !DILocation(line: 355, column: 19, scope: !3615)
!3618 = !DILocation(line: 355, column: 56, scope: !3615)
!3619 = !DILocation(line: 355, column: 67, scope: !3615)
!3620 = !DILocation(line: 355, column: 28, scope: !3615)
!3621 = !DILocation(line: 356, column: 31, scope: !3615)
!3622 = !DILocation(line: 356, column: 20, scope: !3615)
!3623 = !DILocation(line: 357, column: 9, scope: !3615)
!3624 = !DILocation(line: 385, column: 5, scope: !3615)
!3625 = !DILocalVariable(scope: !3513, file: !20, line: 358, type: !3626)
!3626 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_class_type, name: "ExistsException", scope: !27, file: !3628, line: 220, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!3628 = !DIFile(filename: "/usr/include/Poco/Exception.h", directory: "", checksumkind: CSK_MD5, checksum: "a4b5e88debd6fbeb02ccac2b30234603")
!3629 = !DILocation(line: 358, column: 32, scope: !3513)
!3630 = !DILocalVariable(name: "logger", scope: !3631, file: !20, line: 360, type: !3616)
!3631 = distinct !DILexicalBlock(scope: !3513, file: !20, line: 359, column: 9)
!3632 = !DILocation(line: 360, column: 19, scope: !3631)
!3633 = !DILocation(line: 360, column: 53, scope: !3631)
!3634 = !DILocation(line: 360, column: 28, scope: !3631)
!3635 = !DILocation(line: 361, column: 31, scope: !3631)
!3636 = !DILocation(line: 361, column: 20, scope: !3631)
!3637 = !DILocation(line: 362, column: 9, scope: !3631)
!3638 = !DILocalVariable(name: "logger", scope: !3513, file: !20, line: 364, type: !24)
!3639 = !DILocation(line: 364, column: 14, scope: !3513)
!3640 = !DILocation(line: 364, column: 30, scope: !3513)
!3641 = !DILocalVariable(name: "level", scope: !3513, file: !20, line: 366, type: !1245)
!3642 = !DILocation(line: 366, column: 27, scope: !3513)
!3643 = !DILocation(line: 366, column: 35, scope: !3513)
!3644 = !DILocation(line: 366, column: 44, scope: !3513)
!3645 = !DILocation(line: 366, column: 54, scope: !3513)
!3646 = !DILocation(line: 366, column: 77, scope: !3513)
!3647 = !DILocation(line: 367, column: 9, scope: !3513)
!3648 = !DILocation(line: 367, column: 17, scope: !3513)
!3649 = !DILocation(line: 368, column: 16, scope: !3513)
!3650 = !DILocalVariable(name: "t", scope: !3513, file: !20, line: 370, type: !1978)
!3651 = !DILocation(line: 370, column: 27, scope: !3513)
!3652 = !DILocation(line: 370, column: 31, scope: !3513)
!3653 = !DILocation(line: 371, column: 17, scope: !3513)
!3654 = !DILocation(line: 371, column: 13, scope: !3513)
!3655 = !DILocation(line: 371, column: 9, scope: !3513)
!3656 = !DILocation(line: 372, column: 9, scope: !3513)
!3657 = !DILocation(line: 372, column: 13, scope: !3513)
!3658 = !DILocation(line: 374, column: 13, scope: !3513)
!3659 = !DILocation(line: 374, column: 35, scope: !3513)
!3660 = !DILocation(line: 374, column: 32, scope: !3513)
!3661 = !DILocation(line: 374, column: 40, scope: !3513)
!3662 = !DILocalVariable(name: "buf", scope: !3513, file: !20, line: 377, type: !3663)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !3664)
!3664 = !{!3665}
!3665 = !DISubrange(count: 32)
!3666 = !DILocation(line: 377, column: 14, scope: !3513)
!3667 = !DILocation(line: 378, column: 22, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3513, file: !20, line: 378, column: 13)
!3669 = !DILocation(line: 378, column: 54, scope: !3668)
!3670 = !DILocation(line: 378, column: 13, scope: !3668)
!3671 = !DILocation(line: 378, column: 74, scope: !3668)
!3672 = !DILocation(line: 378, column: 13, scope: !3513)
!3673 = !DILocation(line: 380, column: 17, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3668, file: !20, line: 379, column: 9)
!3675 = !DILocation(line: 380, column: 39, scope: !3674)
!3676 = !DILocation(line: 380, column: 36, scope: !3674)
!3677 = !DILocation(line: 380, column: 43, scope: !3674)
!3678 = !DILocation(line: 381, column: 9, scope: !3674)
!3679 = !DILocation(line: 385, column: 5, scope: !3631)
!3680 = !DILocation(line: 383, column: 13, scope: !3513)
!3681 = !DILocation(line: 383, column: 38, scope: !3513)
!3682 = !DILocation(line: 383, column: 46, scope: !3513)
!3683 = !DILocation(line: 383, column: 35, scope: !3513)
!3684 = !DILocation(line: 383, column: 57, scope: !3513)
!3685 = !DILocation(line: 384, column: 9, scope: !3513)
!3686 = !DILocalVariable(name: "log_", scope: !3687, file: !20, line: 384, type: !3616)
!3687 = distinct !DILexicalBlock(scope: !3513, file: !20, line: 384, column: 9)
!3688 = !DILocation(line: 384, column: 9, scope: !3687)
!3689 = !DILocation(line: 384, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !20, line: 384, column: 9)
!3691 = !DILocalVariable(name: "b_", scope: !3692, file: !20, line: 384, type: !3489)
!3692 = distinct !DILexicalBlock(scope: !3690, file: !20, line: 384, column: 9)
!3693 = !DILocation(line: 384, column: 9, scope: !3692)
!3694 = !DILocalVariable(name: "oss_", scope: !3692, file: !20, line: 384, type: !3533)
!3695 = !DILocation(line: 384, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !20, line: 384, column: 9)
!3697 = distinct !DILexicalBlock(scope: !3692, file: !20, line: 384, column: 9)
!3698 = !DILocation(line: 384, column: 9, scope: !3697)
!3699 = !DILocation(line: 385, column: 5, scope: !3692)
!3700 = distinct !DISubprogram(name: "setName", linkageName: "_ZN3Log12StaticHelper7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 66, type: !1242, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1249, retainedNodes: !167)
!3701 = !DILocalVariable(name: "this", arg: 1, scope: !3700, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3702 = !DILocation(line: 0, scope: !3700)
!3703 = !DILocalVariable(name: "name", arg: 2, scope: !3700, file: !20, line: 66, type: !1244)
!3704 = !DILocation(line: 66, column: 41, scope: !3700)
!3705 = !DILocation(line: 66, column: 57, scope: !3700)
!3706 = !DILocation(line: 66, column: 49, scope: !3700)
!3707 = !DILocation(line: 66, column: 55, scope: !3700)
!3708 = !DILocation(line: 66, column: 63, scope: !3700)
!3709 = distinct !DISubprogram(name: "getName", linkageName: "_ZNK3Log12StaticHelper7getNameB5cxx11Ev", scope: !21, file: !20, line: 68, type: !1247, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1250, retainedNodes: !167)
!3710 = !DILocalVariable(name: "this", arg: 1, scope: !3709, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!3711 = !DILocation(line: 0, scope: !3709)
!3712 = !DILocation(line: 68, column: 53, scope: !3709)
!3713 = !DILocation(line: 68, column: 46, scope: !3709)
!3714 = distinct !DISubprogram(name: "setw", linkageName: "_ZSt4setwi", scope: !2, file: !3715, line: 225, type: !3716, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3715 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iomanip", directory: "")
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3718, !227}
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Setw", scope: !2, file: !3715, line: 215, size: 32, flags: DIFlagTypePassByValue, elements: !3719, identifier: "_ZTSSt5_Setw")
!3719 = !{!3720}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_M_n", scope: !3718, file: !3715, line: 215, baseType: !227, size: 32)
!3721 = !DILocalVariable(name: "__n", arg: 1, scope: !3714, file: !3715, line: 225, type: !227)
!3722 = !DILocation(line: 225, column: 12, scope: !3714)
!3723 = !DILocation(line: 226, column: 12, scope: !3714)
!3724 = !DILocation(line: 226, column: 14, scope: !3714)
!3725 = !DILocation(line: 226, column: 5, scope: !3714)
!3726 = distinct !DISubprogram(name: "setfill<char>", linkageName: "_ZSt7setfillIcESt8_SetfillIT_ES1_", scope: !2, file: !3715, line: 165, type: !3727, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !389, retainedNodes: !167)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!3729, !54}
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Setfill<char>", scope: !2, file: !3715, line: 154, size: 8, flags: DIFlagTypePassByValue, elements: !3730, templateParams: !389, identifier: "_ZTSSt8_SetfillIcE")
!3730 = !{!3731}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_M_c", scope: !3729, file: !3715, line: 154, baseType: !54, size: 8)
!3732 = !DILocalVariable(name: "__c", arg: 1, scope: !3726, file: !3715, line: 165, type: !54)
!3733 = !DILocation(line: 165, column: 20, scope: !3726)
!3734 = !DILocation(line: 166, column: 14, scope: !3726)
!3735 = !DILocation(line: 166, column: 16, scope: !3726)
!3736 = !DILocation(line: 166, column: 7, scope: !3726)
!3737 = distinct !DISubprogram(name: "setId", linkageName: "_ZN3Log12StaticHelper5setIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 62, type: !1242, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1241, retainedNodes: !167)
!3738 = !DILocalVariable(name: "this", arg: 1, scope: !3737, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3739 = !DILocation(line: 0, scope: !3737)
!3740 = !DILocalVariable(name: "id", arg: 2, scope: !3737, file: !20, line: 62, type: !1244)
!3741 = !DILocation(line: 62, column: 39, scope: !3737)
!3742 = !DILocation(line: 62, column: 51, scope: !3737)
!3743 = !DILocation(line: 62, column: 45, scope: !3737)
!3744 = !DILocation(line: 62, column: 49, scope: !3737)
!3745 = !DILocation(line: 62, column: 55, scope: !3737)
!3746 = distinct !DISubprogram(name: "AutoPtr", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEC2Ev", scope: !1586, file: !1587, line: 65, type: !1591, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1590, retainedNodes: !167)
!3747 = !DILocalVariable(name: "this", arg: 1, scope: !3746, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!3749 = !DILocation(line: 0, scope: !3746)
!3750 = !DILocation(line: 65, column: 13, scope: !3746)
!3751 = !DILocation(line: 67, column: 2, scope: !3746)
!3752 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_", scope: !32, file: !37, line: 533, type: !3753, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3756, declaration: !3755, retainedNodes: !167)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !393, !125, !86}
!3755 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !32, file: !37, line: 533, type: !3753, scopeLine: 533, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3756)
!3756 = !{!3757}
!3757 = !DITemplateTypeParameter(type: !57, defaulted: true)
!3758 = !DILocalVariable(name: "this", arg: 1, scope: !3752, type: !3759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!3760 = !DILocation(line: 0, scope: !3752)
!3761 = !DILocalVariable(name: "__s", arg: 2, scope: !3752, file: !37, line: 533, type: !125)
!3762 = !DILocation(line: 533, column: 34, scope: !3752)
!3763 = !DILocalVariable(name: "__a", arg: 3, scope: !3752, file: !37, line: 533, type: !86)
!3764 = !DILocation(line: 533, column: 53, scope: !3752)
!3765 = !DILocation(line: 534, column: 9, scope: !3752)
!3766 = !DILocation(line: 534, column: 21, scope: !3752)
!3767 = !DILocation(line: 534, column: 38, scope: !3752)
!3768 = !DILocalVariable(name: "__end", scope: !3769, file: !37, line: 536, type: !125)
!3769 = distinct !DILexicalBlock(scope: !3752, file: !37, line: 535, column: 7)
!3770 = !DILocation(line: 536, column: 16, scope: !3769)
!3771 = !DILocation(line: 536, column: 24, scope: !3769)
!3772 = !DILocation(line: 536, column: 30, scope: !3769)
!3773 = !DILocation(line: 536, column: 56, scope: !3769)
!3774 = !DILocation(line: 536, column: 36, scope: !3769)
!3775 = !DILocation(line: 536, column: 34, scope: !3769)
!3776 = !DILocation(line: 539, column: 15, scope: !3769)
!3777 = !DILocation(line: 539, column: 20, scope: !3769)
!3778 = !DILocation(line: 539, column: 2, scope: !3769)
!3779 = !DILocation(line: 540, column: 7, scope: !3752)
!3780 = !DILocation(line: 540, column: 7, scope: !3769)
!3781 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEaSEPS1_", scope: !1586, file: !1587, line: 173, type: !1611, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1624, retainedNodes: !167)
!3782 = !DILocalVariable(name: "this", arg: 1, scope: !3781, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!3783 = !DILocation(line: 0, scope: !3781)
!3784 = !DILocalVariable(name: "ptr", arg: 2, scope: !3781, file: !1587, line: 173, type: !1404)
!3785 = !DILocation(line: 173, column: 26, scope: !3781)
!3786 = !DILocation(line: 175, column: 17, scope: !3781)
!3787 = !DILocation(line: 175, column: 10, scope: !3781)
!3788 = !DILocation(line: 175, column: 3, scope: !3781)
!3789 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5beginEv", scope: !3518, file: !3519, line: 365, type: !3790, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3793, retainedNodes: !167)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3568, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3793 = !DISubprogram(name: "begin", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5beginEv", scope: !3518, file: !3519, line: 365, type: !3790, scopeLine: 365, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3794 = !DILocalVariable(name: "this", arg: 1, scope: !3789, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3796 = !DILocation(line: 0, scope: !3789)
!3797 = !DILocation(line: 366, column: 16, scope: !3789)
!3798 = !DILocation(line: 366, column: 21, scope: !3789)
!3799 = !DILocation(line: 366, column: 9, scope: !3789)
!3800 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv", scope: !3518, file: !3519, line: 383, type: !3790, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3801, retainedNodes: !167)
!3801 = !DISubprogram(name: "end", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv", scope: !3518, file: !3519, line: 383, type: !3790, scopeLine: 383, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3802 = !DILocalVariable(name: "this", arg: 1, scope: !3800, type: !3795, flags: DIFlagArtificial | DIFlagObjectPointer)
!3803 = !DILocation(line: 0, scope: !3800)
!3804 = !DILocation(line: 384, column: 16, scope: !3800)
!3805 = !DILocation(line: 384, column: 21, scope: !3800)
!3806 = !DILocation(line: 384, column: 9, scope: !3800)
!3807 = distinct !DISubprogram(name: "operator!=", linkageName: "_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_", scope: !2, file: !1399, line: 401, type: !3808, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!95, !3810, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!3812 = !DILocalVariable(name: "__x", arg: 1, scope: !3807, file: !1399, line: 401, type: !3810)
!3813 = !DILocation(line: 401, column: 31, scope: !3807)
!3814 = !DILocalVariable(name: "__y", arg: 2, scope: !3807, file: !1399, line: 401, type: !3810)
!3815 = !DILocation(line: 401, column: 49, scope: !3807)
!3816 = !DILocation(line: 402, column: 16, scope: !3807)
!3817 = !DILocation(line: 402, column: 20, scope: !3807)
!3818 = !DILocation(line: 402, column: 31, scope: !3807)
!3819 = !DILocation(line: 402, column: 35, scope: !3807)
!3820 = !DILocation(line: 402, column: 28, scope: !3807)
!3821 = !DILocation(line: 402, column: 9, scope: !3807)
!3822 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv", scope: !1409, file: !1399, line: 358, type: !1452, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1451, retainedNodes: !167)
!3823 = !DILocalVariable(name: "this", arg: 1, scope: !3822, type: !3824, flags: DIFlagArtificial | DIFlagObjectPointer)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!3825 = !DILocation(line: 0, scope: !3822)
!3826 = !DILocation(line: 359, column: 41, scope: !3822)
!3827 = !DILocation(line: 359, column: 51, scope: !3822)
!3828 = !DILocation(line: 359, column: 9, scope: !3822)
!3829 = distinct !DISubprogram(name: "operator->", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEptEv", scope: !1586, file: !1587, line: 227, type: !1633, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1632, retainedNodes: !167)
!3830 = !DILocalVariable(name: "this", arg: 1, scope: !3829, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!3831 = !DILocation(line: 0, scope: !3829)
!3832 = !DILocation(line: 229, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !1587, line: 229, column: 7)
!3834 = !DILocation(line: 229, column: 7, scope: !3829)
!3835 = !DILocation(line: 230, column: 11, scope: !3833)
!3836 = !DILocation(line: 230, column: 4, scope: !3833)
!3837 = !DILocation(line: 232, column: 4, scope: !3833)
!3838 = !DILocation(line: 232, column: 10, scope: !3833)
!3839 = !DILocation(line: 233, column: 2, scope: !3833)
!3840 = distinct !DISubprogram(name: "operator++", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv", scope: !1409, file: !1399, line: 366, type: !1525, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1524, retainedNodes: !167)
!3841 = !DILocalVariable(name: "this", arg: 1, scope: !3840, type: !3842, flags: DIFlagArtificial | DIFlagObjectPointer)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!3843 = !DILocation(line: 0, scope: !3840)
!3844 = !DILocation(line: 368, column: 31, scope: !3840)
!3845 = !DILocation(line: 368, column: 12, scope: !3840)
!3846 = !DILocation(line: 368, column: 2, scope: !3840)
!3847 = !DILocation(line: 368, column: 10, scope: !3840)
!3848 = !DILocation(line: 369, column: 2, scope: !3840)
!3849 = distinct !DISubprogram(name: "AutoPtr", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEEC2ERKS2_", scope: !1586, file: !1587, line: 78, type: !1601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1600, retainedNodes: !167)
!3850 = !DILocalVariable(name: "this", arg: 1, scope: !3849, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!3851 = !DILocation(line: 0, scope: !3849)
!3852 = !DILocalVariable(name: "ptr", arg: 2, scope: !3849, file: !1587, line: 78, type: !1603)
!3853 = !DILocation(line: 78, column: 25, scope: !3849)
!3854 = !DILocation(line: 78, column: 31, scope: !3849)
!3855 = !DILocation(line: 78, column: 36, scope: !3849)
!3856 = !DILocation(line: 78, column: 40, scope: !3849)
!3857 = !DILocation(line: 80, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !1587, line: 80, column: 7)
!3859 = distinct !DILexicalBlock(scope: !3849, file: !1587, line: 79, column: 2)
!3860 = !DILocation(line: 80, column: 7, scope: !3859)
!3861 = !DILocation(line: 80, column: 13, scope: !3858)
!3862 = !DILocation(line: 80, column: 19, scope: !3858)
!3863 = !DILocation(line: 81, column: 2, scope: !3849)
!3864 = distinct !DISubprogram(name: "~AutoPtr", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEED2Ev", scope: !1586, file: !1587, line: 94, type: !1591, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1609, retainedNodes: !167)
!3865 = !DILocalVariable(name: "this", arg: 1, scope: !3864, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!3866 = !DILocation(line: 0, scope: !3864)
!3867 = !DILocation(line: 96, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !1587, line: 96, column: 7)
!3869 = distinct !DILexicalBlock(scope: !3864, file: !1587, line: 95, column: 2)
!3870 = !DILocation(line: 96, column: 7, scope: !3869)
!3871 = !DILocation(line: 96, column: 13, scope: !3868)
!3872 = !DILocation(line: 96, column: 19, scope: !3868)
!3873 = !DILocation(line: 97, column: 2, scope: !3864)
!3874 = distinct !DISubprogram(name: "setLogger", linkageName: "_ZN3Log12StaticHelper9setLoggerEPN4Poco6LoggerE", scope: !21, file: !20, line: 74, type: !1254, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1253, retainedNodes: !167)
!3875 = !DILocalVariable(name: "this", arg: 1, scope: !3874, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3876 = !DILocation(line: 0, scope: !3874)
!3877 = !DILocalVariable(name: "logger", arg: 2, scope: !3874, file: !20, line: 74, type: !24)
!3878 = !DILocation(line: 74, column: 38, scope: !3874)
!3879 = !DILocation(line: 74, column: 58, scope: !3874)
!3880 = !DILocation(line: 74, column: 48, scope: !3874)
!3881 = !DILocation(line: 74, column: 56, scope: !3874)
!3882 = !DILocation(line: 74, column: 66, scope: !3874)
!3883 = distinct !DISubprogram(name: "getLogger", linkageName: "_ZNK3Log12StaticHelper9getLoggerEv", scope: !21, file: !20, line: 84, type: !1258, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1257, retainedNodes: !167)
!3884 = !DILocalVariable(name: "this", arg: 1, scope: !3883, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!3885 = !DILocation(line: 0, scope: !3883)
!3886 = !DILocation(line: 84, column: 50, scope: !3883)
!3887 = !DILocation(line: 84, column: 43, scope: !3883)
!3888 = distinct !DISubprogram(name: "setLevel", linkageName: "_ZN3Log12StaticHelper8setLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !21, file: !20, line: 70, type: !1242, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1251, retainedNodes: !167)
!3889 = !DILocalVariable(name: "this", arg: 1, scope: !3888, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3890 = !DILocation(line: 0, scope: !3888)
!3891 = !DILocalVariable(name: "logLevel", arg: 2, scope: !3888, file: !20, line: 70, type: !1244)
!3892 = !DILocation(line: 70, column: 42, scope: !3888)
!3893 = !DILocation(line: 70, column: 66, scope: !3888)
!3894 = !DILocation(line: 70, column: 54, scope: !3888)
!3895 = !DILocation(line: 70, column: 64, scope: !3888)
!3896 = !DILocation(line: 70, column: 76, scope: !3888)
!3897 = distinct !DISubprogram(name: "getLevel", linkageName: "_ZNK4Poco6Logger8getLevelEv", scope: !25, file: !26, line: 653, type: !3898, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3902, retainedNodes: !167)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!227, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3902 = !DISubprogram(name: "getLevel", linkageName: "_ZNK4Poco6Logger8getLevelEv", scope: !25, file: !26, line: 102, type: !3898, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3903 = !DILocalVariable(name: "this", arg: 1, scope: !3897, type: !3904, flags: DIFlagArtificial | DIFlagObjectPointer)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3905 = !DILocation(line: 0, scope: !3897)
!3906 = !DILocation(line: 655, column: 9, scope: !3897)
!3907 = !DILocation(line: 655, column: 2, scope: !3897)
!3908 = distinct !DISubprogram(name: "logger", linkageName: "_ZN3Log6loggerEv", scope: !9, file: !20, line: 387, type: !3909, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3616}
!3911 = !DILocalVariable(name: "pLogger", scope: !3908, file: !20, line: 389, type: !24)
!3912 = !DILocation(line: 389, column: 23, scope: !3908)
!3913 = !DILocation(line: 389, column: 40, scope: !3908)
!3914 = !DILocation(line: 390, column: 13, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3908, file: !20, line: 390, column: 13)
!3916 = !DILocation(line: 390, column: 21, scope: !3915)
!3917 = !DILocation(line: 390, column: 13, scope: !3908)
!3918 = !DILocation(line: 391, column: 21, scope: !3915)
!3919 = !DILocation(line: 391, column: 13, scope: !3915)
!3920 = !DILocation(line: 393, column: 26, scope: !3908)
!3921 = !DILocation(line: 393, column: 17, scope: !3908)
!3922 = !DILocation(line: 394, column: 16, scope: !3908)
!3923 = !DILocation(line: 394, column: 27, scope: !3908)
!3924 = !DILocation(line: 395, column: 51, scope: !3908)
!3925 = !DILocation(line: 395, column: 44, scope: !3908)
!3926 = !DILocation(line: 395, column: 72, scope: !3908)
!3927 = !DILocation(line: 395, column: 65, scope: !3908)
!3928 = !DILocation(line: 395, column: 84, scope: !3908)
!3929 = !DILocation(line: 395, column: 26, scope: !3908)
!3930 = !DILocation(line: 394, column: 9, scope: !3908)
!3931 = !DILocation(line: 396, column: 5, scope: !3908)
!3932 = distinct !DISubprogram(name: "isShutdownCalled", linkageName: "_ZN3Log16isShutdownCalledEv", scope: !9, file: !10, line: 80, type: !93, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3933 = !DILocation(line: 80, column: 45, scope: !3932)
!3934 = !DILocation(line: 80, column: 38, scope: !3932)
!3935 = distinct !DISubprogram(name: "information", linkageName: "_ZNK4Poco6Logger11informationEv", scope: !25, file: !26, line: 810, type: !3936, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3938, retainedNodes: !167)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!95, !3900}
!3938 = !DISubprogram(name: "information", linkageName: "_ZNK4Poco6Logger11informationEv", scope: !25, file: !26, line: 343, type: !3936, scopeLine: 343, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3939 = !DILocalVariable(name: "this", arg: 1, scope: !3935, type: !3904, flags: DIFlagArtificial | DIFlagObjectPointer)
!3940 = !DILocation(line: 0, scope: !3935)
!3941 = !DILocation(line: 812, column: 9, scope: !3935)
!3942 = !DILocation(line: 812, column: 16, scope: !3935)
!3943 = !DILocation(line: 812, column: 2, scope: !3935)
!3944 = distinct !DISubprogram(name: "boolalpha", linkageName: "_ZSt9boolalphaRSt8ios_base", scope: !2, file: !5, line: 908, type: !3945, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!3947, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!3948 = !DILocalVariable(name: "__base", arg: 1, scope: !3944, file: !5, line: 908, type: !3947)
!3949 = !DILocation(line: 908, column: 23, scope: !3944)
!3950 = !DILocation(line: 910, column: 5, scope: !3944)
!3951 = !DILocation(line: 910, column: 12, scope: !3944)
!3952 = !DILocation(line: 911, column: 12, scope: !3944)
!3953 = !DILocation(line: 911, column: 5, scope: !3944)
!3954 = distinct !DISubprogram(name: "name", linkageName: "_ZNK4Poco6Logger4nameB5cxx11Ev", scope: !25, file: !26, line: 647, type: !3955, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !3957, retainedNodes: !167)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!1244, !3900}
!3957 = !DISubprogram(name: "name", linkageName: "_ZNK4Poco6Logger4nameB5cxx11Ev", scope: !25, file: !26, line: 85, type: !3955, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3958 = !DILocalVariable(name: "this", arg: 1, scope: !3954, type: !3904, flags: DIFlagArtificial | DIFlagObjectPointer)
!3959 = !DILocation(line: 0, scope: !3954)
!3960 = !DILocation(line: 649, column: 9, scope: !3954)
!3961 = !DILocation(line: 649, column: 2, scope: !3954)
!3962 = distinct !DISubprogram(name: "getThreadLocalLogger", linkageName: "_ZNK3Log12StaticHelper20getThreadLocalLoggerEv", scope: !21, file: !20, line: 86, type: !1258, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1260, retainedNodes: !167)
!3963 = !DILocalVariable(name: "this", arg: 1, scope: !3962, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!3964 = !DILocation(line: 0, scope: !3962)
!3965 = !DILocation(line: 86, column: 61, scope: !3962)
!3966 = !DILocation(line: 86, column: 54, scope: !3962)
!3967 = distinct !DISubprogram(name: "shutdown", linkageName: "_ZN3Log8shutdownEv", scope: !9, file: !20, line: 398, type: !2420, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!3968 = !DILocation(line: 401, column: 20, scope: !3967)
!3969 = !DILocation(line: 403, column: 9, scope: !3967)
!3970 = !DILocation(line: 406, column: 9, scope: !3967)
!3971 = !DILocation(line: 407, column: 16, scope: !3967)
!3972 = !DILocation(line: 407, column: 9, scope: !3967)
!3973 = !DILocation(line: 408, column: 9, scope: !3967)
!3974 = !DILocation(line: 409, column: 16, scope: !3967)
!3975 = !DILocation(line: 409, column: 9, scope: !3967)
!3976 = !DILocation(line: 411, column: 5, scope: !3967)
!3977 = !DILocalVariable(name: "logLevel", arg: 1, scope: !1332, file: !20, line: 413, type: !1244)
!3978 = !DILocation(line: 413, column: 52, scope: !1332)
!3979 = !DILocation(line: 415, column: 21, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !1332, file: !20, line: 415, column: 13)
!3981 = !DILocation(line: 415, column: 14, scope: !3980)
!3982 = !DILocation(line: 415, column: 13, scope: !1332)
!3983 = !DILocation(line: 417, column: 13, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3980, file: !20, line: 416, column: 9)
!3985 = !DILocalVariable(name: "channel", scope: !1332, file: !20, line: 421, type: !3986)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ptr", scope: !1405, file: !1406, line: 42, baseType: !1586, flags: DIFlagPublic)
!3987 = !DILocation(line: 421, column: 14, scope: !1332)
!3988 = !DILocation(line: 421, column: 31, scope: !1332)
!3989 = !DILocation(line: 421, column: 44, scope: !1332)
!3990 = !DILocalVariable(name: "logger", scope: !1332, file: !20, line: 426, type: !3616)
!3991 = !DILocation(line: 426, column: 15, scope: !1332)
!3992 = !DILocation(line: 426, column: 52, scope: !1332)
!3993 = !DILocation(line: 426, column: 62, scope: !1332)
!3994 = !DILocation(line: 426, column: 92, scope: !1332)
!3995 = !DILocation(line: 426, column: 70, scope: !1332)
!3996 = !DILocation(line: 426, column: 68, scope: !1332)
!3997 = !DILocation(line: 427, column: 45, scope: !1332)
!3998 = !DILocation(line: 428, column: 70, scope: !1332)
!3999 = !DILocation(line: 428, column: 45, scope: !1332)
!4000 = !DILocation(line: 426, column: 24, scope: !1332)
!4001 = !DILocation(line: 429, column: 38, scope: !1332)
!4002 = !DILocation(line: 429, column: 16, scope: !1332)
!4003 = !DILocation(line: 430, column: 5, scope: !1332)
!4004 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_", scope: !2, file: !37, line: 6172, type: !4005, scopeLine: 6174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4007, retainedNodes: !167)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!32, !617, !617}
!4007 = !{!337, !4008, !82}
!4008 = !DITemplateTypeParameter(name: "_Traits", type: !339)
!4009 = !DILocalVariable(name: "__lhs", arg: 1, scope: !4004, file: !37, line: 6172, type: !617)
!4010 = !DILocation(line: 6172, column: 55, scope: !4004)
!4011 = !DILocalVariable(name: "__rhs", arg: 2, scope: !4004, file: !37, line: 6173, type: !617)
!4012 = !DILocation(line: 6173, column: 48, scope: !4004)
!4013 = !DILocalVariable(name: "__use_rhs", scope: !4004, file: !37, line: 6177, type: !95)
!4014 = !DILocation(line: 6177, column: 12, scope: !4004)
!4015 = !DILocation(line: 6179, column: 12, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4004, file: !37, line: 6178, column: 32)
!4017 = !DILocation(line: 6182, column: 11, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4004, file: !37, line: 6182, column: 11)
!4019 = !DILocation(line: 6182, column: 11, scope: !4004)
!4020 = !DILocalVariable(name: "__size", scope: !4021, file: !37, line: 6185, type: !38)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !37, line: 6184, column: 2)
!4022 = !DILocation(line: 6185, column: 15, scope: !4021)
!4023 = !DILocation(line: 6185, column: 24, scope: !4021)
!4024 = !DILocation(line: 6185, column: 30, scope: !4021)
!4025 = !DILocation(line: 6185, column: 39, scope: !4021)
!4026 = !DILocation(line: 6185, column: 45, scope: !4021)
!4027 = !DILocation(line: 6185, column: 37, scope: !4021)
!4028 = !DILocation(line: 6186, column: 8, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4021, file: !37, line: 6186, column: 8)
!4030 = !DILocation(line: 6186, column: 17, scope: !4029)
!4031 = !DILocation(line: 6186, column: 23, scope: !4029)
!4032 = !DILocation(line: 6186, column: 15, scope: !4029)
!4033 = !DILocation(line: 6186, column: 34, scope: !4029)
!4034 = !DILocation(line: 6186, column: 37, scope: !4029)
!4035 = !DILocation(line: 6186, column: 47, scope: !4029)
!4036 = !DILocation(line: 6186, column: 53, scope: !4029)
!4037 = !DILocation(line: 6186, column: 44, scope: !4029)
!4038 = !DILocation(line: 6186, column: 8, scope: !4021)
!4039 = !DILocation(line: 6187, column: 23, scope: !4029)
!4040 = !DILocation(line: 6187, column: 39, scope: !4029)
!4041 = !DILocation(line: 6187, column: 29, scope: !4029)
!4042 = !DILocation(line: 6187, column: 13, scope: !4029)
!4043 = !DILocation(line: 6187, column: 6, scope: !4029)
!4044 = !DILocation(line: 6188, column: 2, scope: !4021)
!4045 = !DILocation(line: 6189, column: 24, scope: !4004)
!4046 = !DILocation(line: 6189, column: 37, scope: !4004)
!4047 = !DILocation(line: 6189, column: 30, scope: !4004)
!4048 = !DILocation(line: 6189, column: 14, scope: !4004)
!4049 = !DILocation(line: 6189, column: 7, scope: !4004)
!4050 = !DILocation(line: 6190, column: 5, scope: !4004)
!4051 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_", scope: !2, file: !37, line: 6132, type: !4052, scopeLine: 6134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4007, retainedNodes: !167)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!32, !590, !125}
!4054 = !DILocalVariable(name: "__lhs", arg: 1, scope: !4051, file: !37, line: 6132, type: !590)
!4055 = !DILocation(line: 6132, column: 60, scope: !4051)
!4056 = !DILocalVariable(name: "__rhs", arg: 2, scope: !4051, file: !37, line: 6133, type: !125)
!4057 = !DILocation(line: 6133, column: 22, scope: !4051)
!4058 = !DILocation(line: 6135, column: 7, scope: !4051)
!4059 = !DILocalVariable(name: "__str", scope: !4051, file: !37, line: 6135, type: !32)
!4060 = !DILocation(line: 6135, column: 45, scope: !4051)
!4061 = !DILocation(line: 6135, column: 51, scope: !4051)
!4062 = !DILocation(line: 6136, column: 20, scope: !4051)
!4063 = !DILocation(line: 6136, column: 13, scope: !4051)
!4064 = !DILocation(line: 6137, column: 7, scope: !4051)
!4065 = !DILocation(line: 6138, column: 5, scope: !4051)
!4066 = distinct !DISubprogram(name: "to_string", linkageName: "_ZNSt7__cxx119to_stringEi", scope: !34, file: !37, line: 6660, type: !4067, scopeLine: 6661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!30, !227}
!4069 = !DILocalVariable(name: "__val", arg: 1, scope: !4066, file: !37, line: 6660, type: !227)
!4070 = !DILocation(line: 6660, column: 17, scope: !4066)
!4071 = !DILocalVariable(name: "__neg", scope: !4066, file: !37, line: 6662, type: !1154)
!4072 = !DILocation(line: 6662, column: 16, scope: !4066)
!4073 = !DILocation(line: 6662, column: 24, scope: !4066)
!4074 = !DILocation(line: 6662, column: 30, scope: !4066)
!4075 = !DILocalVariable(name: "__uval", scope: !4066, file: !37, line: 6663, type: !4076)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!4077 = !DILocation(line: 6663, column: 20, scope: !4066)
!4078 = !DILocation(line: 6663, column: 29, scope: !4066)
!4079 = !DILocation(line: 6663, column: 48, scope: !4066)
!4080 = !DILocation(line: 6663, column: 47, scope: !4066)
!4081 = !DILocation(line: 6663, column: 54, scope: !4066)
!4082 = !DILocation(line: 6663, column: 61, scope: !4066)
!4083 = !DILocalVariable(name: "__len", scope: !4066, file: !37, line: 6664, type: !4076)
!4084 = !DILocation(line: 6664, column: 16, scope: !4066)
!4085 = !DILocation(line: 6664, column: 49, scope: !4066)
!4086 = !DILocation(line: 6664, column: 24, scope: !4066)
!4087 = !DILocation(line: 6665, column: 5, scope: !4066)
!4088 = !DILocalVariable(name: "__str", scope: !4066, file: !37, line: 6665, type: !30)
!4089 = !DILocation(line: 6665, column: 12, scope: !4066)
!4090 = !DILocation(line: 6665, column: 18, scope: !4066)
!4091 = !DILocation(line: 6665, column: 26, scope: !4066)
!4092 = !DILocation(line: 6665, column: 24, scope: !4066)
!4093 = !DILocation(line: 6666, column: 41, scope: !4066)
!4094 = !DILocation(line: 6666, column: 35, scope: !4066)
!4095 = !DILocation(line: 6666, column: 49, scope: !4066)
!4096 = !DILocation(line: 6666, column: 56, scope: !4066)
!4097 = !DILocation(line: 6666, column: 5, scope: !4066)
!4098 = !DILocation(line: 6667, column: 5, scope: !4066)
!4099 = !DILocation(line: 6668, column: 3, scope: !4066)
!4100 = distinct !DISubprogram(name: "setThreadLocalLogger", linkageName: "_ZN3Log12StaticHelper20setThreadLocalLoggerEPN4Poco6LoggerE", scope: !21, file: !20, line: 76, type: !1254, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1256, retainedNodes: !167)
!4101 = !DILocalVariable(name: "this", arg: 1, scope: !4100, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!4102 = !DILocation(line: 0, scope: !4100)
!4103 = !DILocalVariable(name: "logger", arg: 2, scope: !4100, file: !20, line: 76, type: !24)
!4104 = !DILocation(line: 76, column: 49, scope: !4100)
!4105 = !DILocation(line: 81, column: 34, scope: !4100)
!4106 = !DILocation(line: 81, column: 13, scope: !4100)
!4107 = !DILocation(line: 81, column: 32, scope: !4100)
!4108 = !DILocation(line: 82, column: 9, scope: !4100)
!4109 = distinct !DISubprogram(name: "getLevel", linkageName: "_ZN3Log8getLevelB5cxx11Ev", scope: !9, file: !20, line: 432, type: !4110, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!1244}
!4112 = !DILocation(line: 434, column: 23, scope: !4109)
!4113 = !DILocation(line: 434, column: 9, scope: !4109)
!4114 = distinct !DISubprogram(name: "getLevel", linkageName: "_ZNK3Log12StaticHelper8getLevelB5cxx11Ev", scope: !21, file: !20, line: 72, type: !1247, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1252, retainedNodes: !167)
!4115 = !DILocalVariable(name: "this", arg: 1, scope: !4114, type: !3237, flags: DIFlagArtificial | DIFlagObjectPointer)
!4116 = !DILocation(line: 0, scope: !4114)
!4117 = !DILocation(line: 72, column: 54, scope: !4114)
!4118 = !DILocation(line: 72, column: 47, scope: !4114)
!4119 = distinct !DISubprogram(name: "atomic", linkageName: "_ZNSt6atomicIbEC2Eb", scope: !1016, file: !1017, line: 76, type: !1175, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1174, retainedNodes: !167)
!4120 = !DILocalVariable(name: "this", arg: 1, scope: !4119, type: !4121, flags: DIFlagArtificial | DIFlagObjectPointer)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!4122 = !DILocation(line: 0, scope: !4119)
!4123 = !DILocalVariable(name: "__i", arg: 2, scope: !4119, file: !1017, line: 76, type: !95)
!4124 = !DILocation(line: 76, column: 27, scope: !4119)
!4125 = !DILocation(line: 76, column: 43, scope: !4119)
!4126 = !DILocation(line: 76, column: 51, scope: !4119)
!4127 = !DILocation(line: 76, column: 58, scope: !4119)
!4128 = distinct !DISubprogram(name: "__atomic_base", linkageName: "_ZNSt13__atomic_baseIbEC2Eb", scope: !1020, file: !1021, line: 345, type: !1047, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1046, retainedNodes: !167)
!4129 = !DILocalVariable(name: "this", arg: 1, scope: !4128, type: !4130, flags: DIFlagArtificial | DIFlagObjectPointer)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!4131 = !DILocation(line: 0, scope: !4128)
!4132 = !DILocalVariable(name: "__i", arg: 2, scope: !4128, file: !1021, line: 345, type: !1026)
!4133 = !DILocation(line: 345, column: 42, scope: !4128)
!4134 = !DILocation(line: 345, column: 58, scope: !4128)
!4135 = !DILocation(line: 345, column: 64, scope: !4128)
!4136 = !DILocation(line: 345, column: 71, scope: !4128)
!4137 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt6atomicIbEaSEb", scope: !1016, file: !1017, line: 79, type: !1178, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1177, retainedNodes: !167)
!4138 = !DILocalVariable(name: "this", arg: 1, scope: !4137, type: !4121, flags: DIFlagArtificial | DIFlagObjectPointer)
!4139 = !DILocation(line: 0, scope: !4137)
!4140 = !DILocalVariable(name: "__i", arg: 2, scope: !4137, file: !1017, line: 79, type: !95)
!4141 = !DILocation(line: 79, column: 20, scope: !4137)
!4142 = !DILocation(line: 80, column: 14, scope: !4137)
!4143 = !DILocation(line: 80, column: 32, scope: !4137)
!4144 = !DILocation(line: 80, column: 22, scope: !4137)
!4145 = !DILocation(line: 80, column: 7, scope: !4137)
!4146 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt13__atomic_baseIbEaSEb", scope: !1020, file: !1021, line: 354, type: !1059, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1058, retainedNodes: !167)
!4147 = !DILocalVariable(name: "this", arg: 1, scope: !4146, type: !4130, flags: DIFlagArtificial | DIFlagObjectPointer)
!4148 = !DILocation(line: 0, scope: !4146)
!4149 = !DILocalVariable(name: "__i", arg: 2, scope: !4146, file: !1021, line: 354, type: !1026)
!4150 = !DILocation(line: 354, column: 28, scope: !4146)
!4151 = !DILocation(line: 356, column: 8, scope: !4146)
!4152 = !DILocalVariable(name: "this", arg: 1, scope: !4153, type: !4130, flags: DIFlagArtificial | DIFlagObjectPointer)
!4153 = distinct !DISubprogram(name: "store", linkageName: "_ZNSt13__atomic_baseIbE5storeEbSt12memory_order", scope: !1020, file: !1021, line: 456, type: !1097, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1096, retainedNodes: !167)
!4154 = !DILocation(line: 0, scope: !4153, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 356, column: 2, scope: !4146)
!4156 = !DILocalVariable(name: "__i", arg: 2, scope: !4153, file: !1021, line: 456, type: !1026)
!4157 = !DILocation(line: 456, column: 24, scope: !4153, inlinedAt: !4155)
!4158 = !DILocalVariable(name: "__m", arg: 3, scope: !4153, file: !1021, line: 456, type: !1099)
!4159 = !DILocation(line: 456, column: 42, scope: !4153, inlinedAt: !4155)
!4160 = !DILocalVariable(name: "__b", scope: !4153, file: !1021, line: 458, type: !1099)
!4161 = !DILocation(line: 458, column: 15, scope: !4153, inlinedAt: !4155)
!4162 = !DILocation(line: 459, column: 6, scope: !4153, inlinedAt: !4155)
!4163 = !DILocation(line: 459, column: 10, scope: !4153, inlinedAt: !4155)
!4164 = !DILocation(line: 464, column: 35, scope: !4153, inlinedAt: !4155)
!4165 = !DILocation(line: 464, column: 26, scope: !4153, inlinedAt: !4155)
!4166 = !DILocation(line: 464, column: 2, scope: !4153, inlinedAt: !4155)
!4167 = !DILocation(line: 357, column: 9, scope: !4146)
!4168 = !DILocation(line: 357, column: 2, scope: !4146)
!4169 = distinct !DISubprogram(name: "operator&", linkageName: "_ZStanSt12memory_orderSt23__memory_order_modifier", scope: !2, file: !1021, line: 104, type: !4170, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!1099, !1099, !1366}
!4172 = !DILocalVariable(name: "__m", arg: 1, scope: !4169, file: !1021, line: 104, type: !1099)
!4173 = !DILocation(line: 104, column: 26, scope: !4169)
!4174 = !DILocalVariable(name: "__mod", arg: 2, scope: !4169, file: !1021, line: 104, type: !1366)
!4175 = !DILocation(line: 104, column: 55, scope: !4169)
!4176 = !DILocation(line: 106, column: 29, scope: !4169)
!4177 = !DILocation(line: 106, column: 40, scope: !4169)
!4178 = !DILocation(line: 106, column: 34, scope: !4169)
!4179 = !DILocation(line: 106, column: 5, scope: !4169)
!4180 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNKSt6atomicIbEcvbEv", scope: !1016, file: !1017, line: 86, type: !1184, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1183, retainedNodes: !167)
!4181 = !DILocalVariable(name: "this", arg: 1, scope: !4180, type: !4182, flags: DIFlagArtificial | DIFlagObjectPointer)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!4183 = !DILocation(line: 0, scope: !4180)
!4184 = !DILocation(line: 87, column: 14, scope: !4180)
!4185 = !DILocalVariable(name: "this", arg: 1, scope: !4186, type: !4187, flags: DIFlagArtificial | DIFlagObjectPointer)
!4186 = distinct !DISubprogram(name: "load", linkageName: "_ZNKSt13__atomic_baseIbE4loadESt12memory_order", scope: !1020, file: !1021, line: 481, type: !1113, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1112, retainedNodes: !167)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!4188 = !DILocation(line: 0, scope: !4186, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 87, column: 22, scope: !4180)
!4190 = !DILocalVariable(name: "__m", arg: 2, scope: !4186, file: !1021, line: 481, type: !1099)
!4191 = !DILocation(line: 481, column: 25, scope: !4186, inlinedAt: !4189)
!4192 = !DILocalVariable(name: "__b", scope: !4186, file: !1021, line: 483, type: !1099)
!4193 = !DILocation(line: 483, column: 15, scope: !4186, inlinedAt: !4189)
!4194 = !DILocation(line: 484, column: 6, scope: !4186, inlinedAt: !4189)
!4195 = !DILocation(line: 484, column: 10, scope: !4186, inlinedAt: !4189)
!4196 = !DILocation(line: 488, column: 36, scope: !4186, inlinedAt: !4189)
!4197 = !DILocation(line: 488, column: 9, scope: !4186, inlinedAt: !4189)
!4198 = !DILocation(line: 87, column: 7, scope: !4180)
!4199 = distinct !DISubprogram(name: "year", linkageName: "_ZNK4Poco8DateTime4yearEv", scope: !4201, file: !4200, line: 321, type: !4202, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4206, retainedNodes: !167)
!4200 = !DIFile(filename: "/usr/include/Poco/DateTime.h", directory: "", checksumkind: CSK_MD5, checksum: "1f17d1d5bda25740bdabdcbdef902b60")
!4201 = !DICompositeType(tag: DW_TAG_class_type, name: "DateTime", scope: !27, file: !4200, line: 32, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco8DateTimeE")
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!227, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4206 = !DISubprogram(name: "year", linkageName: "_ZNK4Poco8DateTime4yearEv", scope: !4201, file: !4200, line: 155, type: !4202, scopeLine: 155, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4207 = !DILocalVariable(name: "this", arg: 1, scope: !4199, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4209 = !DILocation(line: 0, scope: !4199)
!4210 = !DILocation(line: 323, column: 9, scope: !4199)
!4211 = !DILocation(line: 323, column: 2, scope: !4199)
!4212 = distinct !DISubprogram(name: "month", linkageName: "_ZNK4Poco8DateTime5monthEv", scope: !4201, file: !4200, line: 327, type: !4202, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4213, retainedNodes: !167)
!4213 = !DISubprogram(name: "month", linkageName: "_ZNK4Poco8DateTime5monthEv", scope: !4201, file: !4200, line: 158, type: !4202, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4214 = !DILocalVariable(name: "this", arg: 1, scope: !4212, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4215 = !DILocation(line: 0, scope: !4212)
!4216 = !DILocation(line: 329, column: 9, scope: !4212)
!4217 = !DILocation(line: 329, column: 2, scope: !4212)
!4218 = distinct !DISubprogram(name: "day", linkageName: "_ZNK4Poco8DateTime3dayEv", scope: !4201, file: !4200, line: 333, type: !4202, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4219, retainedNodes: !167)
!4219 = !DISubprogram(name: "day", linkageName: "_ZNK4Poco8DateTime3dayEv", scope: !4201, file: !4200, line: 174, type: !4202, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4220 = !DILocalVariable(name: "this", arg: 1, scope: !4218, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4221 = !DILocation(line: 0, scope: !4218)
!4222 = !DILocation(line: 335, column: 9, scope: !4218)
!4223 = !DILocation(line: 335, column: 2, scope: !4218)
!4224 = distinct !DISubprogram(name: "hour", linkageName: "_ZNK4Poco8DateTime4hourEv", scope: !4201, file: !4200, line: 339, type: !4202, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4225, retainedNodes: !167)
!4225 = !DISubprogram(name: "hour", linkageName: "_ZNK4Poco8DateTime4hourEv", scope: !4201, file: !4200, line: 185, type: !4202, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4226 = !DILocalVariable(name: "this", arg: 1, scope: !4224, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4227 = !DILocation(line: 0, scope: !4224)
!4228 = !DILocation(line: 341, column: 9, scope: !4224)
!4229 = !DILocation(line: 341, column: 2, scope: !4224)
!4230 = distinct !DISubprogram(name: "minute", linkageName: "_ZNK4Poco8DateTime6minuteEv", scope: !4201, file: !4200, line: 368, type: !4202, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4231, retainedNodes: !167)
!4231 = !DISubprogram(name: "minute", linkageName: "_ZNK4Poco8DateTime6minuteEv", scope: !4201, file: !4200, line: 197, type: !4202, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4232 = !DILocalVariable(name: "this", arg: 1, scope: !4230, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4233 = !DILocation(line: 0, scope: !4230)
!4234 = !DILocation(line: 370, column: 9, scope: !4230)
!4235 = !DILocation(line: 370, column: 2, scope: !4230)
!4236 = distinct !DISubprogram(name: "second", linkageName: "_ZNK4Poco8DateTime6secondEv", scope: !4201, file: !4200, line: 374, type: !4202, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4237, retainedNodes: !167)
!4237 = !DISubprogram(name: "second", linkageName: "_ZNK4Poco8DateTime6secondEv", scope: !4201, file: !4200, line: 200, type: !4202, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4238 = !DILocalVariable(name: "this", arg: 1, scope: !4236, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4239 = !DILocation(line: 0, scope: !4236)
!4240 = !DILocation(line: 376, column: 9, scope: !4236)
!4241 = !DILocation(line: 376, column: 2, scope: !4236)
!4242 = distinct !DISubprogram(name: "millisecond", linkageName: "_ZNK4Poco8DateTime11millisecondEv", scope: !4201, file: !4200, line: 380, type: !4202, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4243, retainedNodes: !167)
!4243 = !DISubprogram(name: "millisecond", linkageName: "_ZNK4Poco8DateTime11millisecondEv", scope: !4201, file: !4200, line: 203, type: !4202, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4244 = !DILocalVariable(name: "this", arg: 1, scope: !4242, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4245 = !DILocation(line: 0, scope: !4242)
!4246 = !DILocation(line: 382, column: 9, scope: !4242)
!4247 = !DILocation(line: 382, column: 2, scope: !4242)
!4248 = distinct !DISubprogram(name: "microsecond", linkageName: "_ZNK4Poco8DateTime11microsecondEv", scope: !4201, file: !4200, line: 386, type: !4202, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4249, retainedNodes: !167)
!4249 = !DISubprogram(name: "microsecond", linkageName: "_ZNK4Poco8DateTime11microsecondEv", scope: !4201, file: !4200, line: 206, type: !4202, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4250 = !DILocalVariable(name: "this", arg: 1, scope: !4248, type: !4208, flags: DIFlagArtificial | DIFlagObjectPointer)
!4251 = !DILocation(line: 0, scope: !4248)
!4252 = !DILocation(line: 388, column: 9, scope: !4248)
!4253 = !DILocation(line: 388, column: 2, scope: !4248)
!4254 = distinct !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_Fmtflags", scope: !6, file: !5, line: 676, type: !4255, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4259, retainedNodes: !167)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!4257, !4258, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !6, file: !5, line: 341, baseType: !1372, flags: DIFlagPublic)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4259 = !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_Fmtflags", scope: !6, file: !5, line: 676, type: !4255, scopeLine: 676, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4260 = !DILocalVariable(name: "this", arg: 1, scope: !4254, type: !4261, flags: DIFlagArtificial | DIFlagObjectPointer)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!4262 = !DILocation(line: 0, scope: !4254)
!4263 = !DILocalVariable(name: "__fmtfl", arg: 2, scope: !4254, file: !5, line: 676, type: !4257)
!4264 = !DILocation(line: 676, column: 19, scope: !4254)
!4265 = !DILocalVariable(name: "__old", scope: !4254, file: !5, line: 678, type: !4257)
!4266 = !DILocation(line: 678, column: 16, scope: !4254)
!4267 = !DILocation(line: 678, column: 24, scope: !4254)
!4268 = !DILocation(line: 679, column: 19, scope: !4254)
!4269 = !DILocation(line: 679, column: 7, scope: !4254)
!4270 = !DILocation(line: 679, column: 16, scope: !4254)
!4271 = !DILocation(line: 680, column: 14, scope: !4254)
!4272 = !DILocation(line: 680, column: 7, scope: !4254)
!4273 = distinct !DISubprogram(name: "operator|=", linkageName: "_ZStoRRSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 99, type: !4274, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!4276, !4278, !1372}
!4276 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!4278 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1372, size: 64)
!4279 = !DILocalVariable(name: "__a", arg: 1, scope: !4273, file: !5, line: 99, type: !4278)
!4280 = !DILocation(line: 99, column: 29, scope: !4273)
!4281 = !DILocalVariable(name: "__b", arg: 2, scope: !4273, file: !5, line: 99, type: !1372)
!4282 = !DILocation(line: 99, column: 48, scope: !4273)
!4283 = !DILocation(line: 100, column: 18, scope: !4273)
!4284 = !DILocation(line: 100, column: 24, scope: !4273)
!4285 = !DILocation(line: 100, column: 22, scope: !4273)
!4286 = !DILocation(line: 100, column: 12, scope: !4273)
!4287 = !DILocation(line: 100, column: 16, scope: !4273)
!4288 = !DILocation(line: 100, column: 5, scope: !4273)
!4289 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 87, type: !4290, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!1372, !1372, !1372}
!4292 = !DILocalVariable(name: "__a", arg: 1, scope: !4289, file: !5, line: 87, type: !1372)
!4293 = !DILocation(line: 87, column: 27, scope: !4289)
!4294 = !DILocalVariable(name: "__b", arg: 2, scope: !4289, file: !5, line: 87, type: !1372)
!4295 = !DILocation(line: 87, column: 46, scope: !4289)
!4296 = !DILocation(line: 88, column: 43, scope: !4289)
!4297 = !DILocation(line: 88, column: 67, scope: !4289)
!4298 = !DILocation(line: 88, column: 48, scope: !4289)
!4299 = !DILocation(line: 88, column: 5, scope: !4289)
!4300 = distinct !DISubprogram(name: "__to_chars_len<unsigned int>", linkageName: "_ZNSt8__detail14__to_chars_lenIjEEjT_i", scope: !1819, file: !1818, line: 47, type: !4301, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !1822, retainedNodes: !167)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1101, !1101, !227}
!4303 = !DILocalVariable(name: "__value", arg: 1, scope: !4300, file: !1818, line: 47, type: !1101)
!4304 = !DILocation(line: 47, column: 24, scope: !4300)
!4305 = !DILocalVariable(name: "__base", arg: 2, scope: !4300, file: !1818, line: 47, type: !227)
!4306 = !DILocation(line: 47, column: 37, scope: !4300)
!4307 = !DILocalVariable(name: "__n", scope: !4300, file: !1818, line: 52, type: !1101)
!4308 = !DILocation(line: 52, column: 16, scope: !4300)
!4309 = !DILocalVariable(name: "__b2", scope: !4300, file: !1818, line: 53, type: !4076)
!4310 = !DILocation(line: 53, column: 22, scope: !4300)
!4311 = !DILocation(line: 53, column: 29, scope: !4300)
!4312 = !DILocation(line: 53, column: 39, scope: !4300)
!4313 = !DILocation(line: 53, column: 37, scope: !4300)
!4314 = !DILocalVariable(name: "__b3", scope: !4300, file: !1818, line: 54, type: !4076)
!4315 = !DILocation(line: 54, column: 22, scope: !4300)
!4316 = !DILocation(line: 54, column: 29, scope: !4300)
!4317 = !DILocation(line: 54, column: 36, scope: !4300)
!4318 = !DILocation(line: 54, column: 34, scope: !4300)
!4319 = !DILocalVariable(name: "__b4", scope: !4300, file: !1818, line: 55, type: !4320)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4321 = !DILocation(line: 55, column: 27, scope: !4300)
!4322 = !DILocation(line: 55, column: 34, scope: !4300)
!4323 = !DILocation(line: 55, column: 41, scope: !4300)
!4324 = !DILocation(line: 55, column: 39, scope: !4300)
!4325 = !DILocation(line: 56, column: 7, scope: !4300)
!4326 = !DILocation(line: 58, column: 8, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !1818, line: 58, column: 8)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !1818, line: 57, column: 2)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !1818, line: 56, column: 7)
!4330 = distinct !DILexicalBlock(scope: !4300, file: !1818, line: 56, column: 7)
!4331 = !DILocation(line: 58, column: 28, scope: !4327)
!4332 = !DILocation(line: 58, column: 16, scope: !4327)
!4333 = !DILocation(line: 58, column: 8, scope: !4328)
!4334 = !DILocation(line: 58, column: 43, scope: !4327)
!4335 = !DILocation(line: 58, column: 36, scope: !4327)
!4336 = !DILocation(line: 59, column: 8, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4328, file: !1818, line: 59, column: 8)
!4338 = !DILocation(line: 59, column: 18, scope: !4337)
!4339 = !DILocation(line: 59, column: 16, scope: !4337)
!4340 = !DILocation(line: 59, column: 8, scope: !4328)
!4341 = !DILocation(line: 59, column: 31, scope: !4337)
!4342 = !DILocation(line: 59, column: 35, scope: !4337)
!4343 = !DILocation(line: 59, column: 24, scope: !4337)
!4344 = !DILocation(line: 60, column: 8, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4328, file: !1818, line: 60, column: 8)
!4346 = !DILocation(line: 60, column: 18, scope: !4345)
!4347 = !DILocation(line: 60, column: 16, scope: !4345)
!4348 = !DILocation(line: 60, column: 8, scope: !4328)
!4349 = !DILocation(line: 60, column: 31, scope: !4345)
!4350 = !DILocation(line: 60, column: 35, scope: !4345)
!4351 = !DILocation(line: 60, column: 24, scope: !4345)
!4352 = !DILocation(line: 61, column: 8, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4328, file: !1818, line: 61, column: 8)
!4354 = !DILocation(line: 61, column: 18, scope: !4353)
!4355 = !DILocation(line: 61, column: 16, scope: !4353)
!4356 = !DILocation(line: 61, column: 8, scope: !4328)
!4357 = !DILocation(line: 61, column: 31, scope: !4353)
!4358 = !DILocation(line: 61, column: 35, scope: !4353)
!4359 = !DILocation(line: 61, column: 24, scope: !4353)
!4360 = !DILocation(line: 62, column: 15, scope: !4328)
!4361 = !DILocation(line: 62, column: 12, scope: !4328)
!4362 = !DILocation(line: 63, column: 8, scope: !4328)
!4363 = !DILocation(line: 56, column: 7, scope: !4329)
!4364 = distinct !{!4364, !4365, !4366, !2926}
!4365 = !DILocation(line: 56, column: 7, scope: !4330)
!4366 = !DILocation(line: 64, column: 2, scope: !4330)
!4367 = !DILocation(line: 65, column: 5, scope: !4300)
!4368 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_", scope: !32, file: !37, line: 553, type: !4369, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !3756, declaration: !4371, retainedNodes: !167)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !393, !39, !54, !86}
!4371 = !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !32, file: !37, line: 553, type: !4369, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3756)
!4372 = !DILocalVariable(name: "this", arg: 1, scope: !4368, type: !3759, flags: DIFlagArtificial | DIFlagObjectPointer)
!4373 = !DILocation(line: 0, scope: !4368)
!4374 = !DILocalVariable(name: "__n", arg: 2, scope: !4368, file: !37, line: 553, type: !39)
!4375 = !DILocation(line: 553, column: 30, scope: !4368)
!4376 = !DILocalVariable(name: "__c", arg: 3, scope: !4368, file: !37, line: 553, type: !54)
!4377 = !DILocation(line: 553, column: 42, scope: !4368)
!4378 = !DILocalVariable(name: "__a", arg: 4, scope: !4368, file: !37, line: 553, type: !86)
!4379 = !DILocation(line: 553, column: 61, scope: !4368)
!4380 = !DILocation(line: 554, column: 9, scope: !4368)
!4381 = !DILocation(line: 554, column: 21, scope: !4368)
!4382 = !DILocation(line: 554, column: 38, scope: !4368)
!4383 = !DILocation(line: 555, column: 22, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4368, file: !37, line: 555, column: 7)
!4385 = !DILocation(line: 555, column: 27, scope: !4384)
!4386 = !DILocation(line: 555, column: 9, scope: !4384)
!4387 = !DILocation(line: 555, column: 33, scope: !4368)
!4388 = !DILocation(line: 555, column: 33, scope: !4384)
!4389 = !DILocalVariable(name: "__first", arg: 1, scope: !1817, file: !1818, line: 72, type: !53)
!4390 = !DILocation(line: 72, column: 30, scope: !1817)
!4391 = !DILocalVariable(name: "__len", arg: 2, scope: !1817, file: !1818, line: 72, type: !1101)
!4392 = !DILocation(line: 72, column: 48, scope: !1817)
!4393 = !DILocalVariable(name: "__val", arg: 3, scope: !1817, file: !1818, line: 72, type: !1101)
!4394 = !DILocation(line: 72, column: 59, scope: !1817)
!4395 = !DILocalVariable(name: "__pos", scope: !1817, file: !1818, line: 83, type: !1101)
!4396 = !DILocation(line: 83, column: 16, scope: !1817)
!4397 = !DILocation(line: 83, column: 24, scope: !1817)
!4398 = !DILocation(line: 83, column: 30, scope: !1817)
!4399 = !DILocation(line: 84, column: 7, scope: !1817)
!4400 = !DILocation(line: 84, column: 14, scope: !1817)
!4401 = !DILocation(line: 84, column: 20, scope: !1817)
!4402 = !DILocalVariable(name: "__num", scope: !4403, file: !1818, line: 86, type: !4076)
!4403 = distinct !DILexicalBlock(scope: !1817, file: !1818, line: 85, column: 2)
!4404 = !DILocation(line: 86, column: 15, scope: !4403)
!4405 = !DILocation(line: 86, column: 24, scope: !4403)
!4406 = !DILocation(line: 86, column: 30, scope: !4403)
!4407 = !DILocation(line: 86, column: 37, scope: !4403)
!4408 = !DILocation(line: 87, column: 10, scope: !4403)
!4409 = !DILocation(line: 88, column: 30, scope: !4403)
!4410 = !DILocation(line: 88, column: 36, scope: !4403)
!4411 = !DILocation(line: 88, column: 21, scope: !4403)
!4412 = !DILocation(line: 88, column: 4, scope: !4403)
!4413 = !DILocation(line: 88, column: 12, scope: !4403)
!4414 = !DILocation(line: 88, column: 19, scope: !4403)
!4415 = !DILocation(line: 89, column: 34, scope: !4403)
!4416 = !DILocation(line: 89, column: 25, scope: !4403)
!4417 = !DILocation(line: 89, column: 4, scope: !4403)
!4418 = !DILocation(line: 89, column: 12, scope: !4403)
!4419 = !DILocation(line: 89, column: 18, scope: !4403)
!4420 = !DILocation(line: 89, column: 23, scope: !4403)
!4421 = !DILocation(line: 90, column: 10, scope: !4403)
!4422 = distinct !{!4422, !4399, !4423, !2926}
!4423 = !DILocation(line: 91, column: 2, scope: !1817)
!4424 = !DILocation(line: 92, column: 11, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !1817, file: !1818, line: 92, column: 11)
!4426 = !DILocation(line: 92, column: 17, scope: !4425)
!4427 = !DILocation(line: 92, column: 11, scope: !1817)
!4428 = !DILocalVariable(name: "__num", scope: !4429, file: !1818, line: 94, type: !4076)
!4429 = distinct !DILexicalBlock(scope: !4425, file: !1818, line: 93, column: 2)
!4430 = !DILocation(line: 94, column: 15, scope: !4429)
!4431 = !DILocation(line: 94, column: 23, scope: !4429)
!4432 = !DILocation(line: 94, column: 29, scope: !4429)
!4433 = !DILocation(line: 95, column: 26, scope: !4429)
!4434 = !DILocation(line: 95, column: 32, scope: !4429)
!4435 = !DILocation(line: 95, column: 17, scope: !4429)
!4436 = !DILocation(line: 95, column: 4, scope: !4429)
!4437 = !DILocation(line: 95, column: 15, scope: !4429)
!4438 = !DILocation(line: 96, column: 26, scope: !4429)
!4439 = !DILocation(line: 96, column: 17, scope: !4429)
!4440 = !DILocation(line: 96, column: 4, scope: !4429)
!4441 = !DILocation(line: 96, column: 15, scope: !4429)
!4442 = !DILocation(line: 97, column: 2, scope: !4429)
!4443 = !DILocation(line: 99, column: 21, scope: !4425)
!4444 = !DILocation(line: 99, column: 19, scope: !4425)
!4445 = !DILocation(line: 99, column: 15, scope: !4425)
!4446 = !DILocation(line: 99, column: 2, scope: !4425)
!4447 = !DILocation(line: 99, column: 13, scope: !4425)
!4448 = !DILocation(line: 100, column: 5, scope: !1817)
!4449 = distinct !DISubprogram(name: "~_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev", scope: !103, file: !37, line: 158, type: !4450, scopeLine: 158, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4453, retainedNodes: !167)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4452}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4453 = !DISubprogram(name: "~_Alloc_hider", scope: !103, type: !4450, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4454 = !DILocalVariable(name: "this", arg: 1, scope: !4449, type: !4455, flags: DIFlagArtificial | DIFlagObjectPointer)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!4456 = !DILocation(line: 0, scope: !4449)
!4457 = !DILocation(line: 158, column: 14, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4449, file: !37, line: 158, column: 14)
!4459 = !DILocation(line: 158, column: 14, scope: !4449)
!4460 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !339, file: !340, line: 393, type: !358, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !357, retainedNodes: !167)
!4461 = !DILocalVariable(name: "__s", arg: 1, scope: !4460, file: !340, line: 393, type: !356)
!4462 = !DILocation(line: 393, column: 31, scope: !4460)
!4463 = !DILocation(line: 396, column: 26, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !340, line: 396, column: 6)
!4465 = !DILocalVariable(name: "__s", arg: 1, scope: !4466, file: !340, line: 285, type: !125)
!4466 = distinct !DISubprogram(name: "__constant_string_p<char>", linkageName: "_ZSt19__constant_string_pIcEbPKT_", scope: !2, file: !340, line: 285, type: !4467, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !389, retainedNodes: !167)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!95, !125}
!4469 = !DILocation(line: 285, column: 39, scope: !4466, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 396, column: 6, scope: !4464)
!4471 = !DILocation(line: 396, column: 6, scope: !4460)
!4472 = !DILocation(line: 397, column: 53, scope: !4464)
!4473 = !DILocation(line: 397, column: 11, scope: !4464)
!4474 = !DILocation(line: 397, column: 4, scope: !4464)
!4475 = !DILocation(line: 399, column: 26, scope: !4460)
!4476 = !DILocation(line: 399, column: 9, scope: !4460)
!4477 = !DILocation(line: 399, column: 2, scope: !4460)
!4478 = !DILocation(line: 400, column: 7, scope: !4460)
!4479 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !33, line: 207, type: !4480, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4483, declaration: !4482, retainedNodes: !167)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !393, !125, !125, !176}
!4482 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !32, file: !37, line: 287, type: !4480, scopeLine: 287, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4483)
!4483 = !{!4484}
!4484 = !DITemplateTypeParameter(name: "_FwdIterator", type: !125)
!4485 = !DILocalVariable(name: "this", arg: 1, scope: !4479, type: !3759, flags: DIFlagArtificial | DIFlagObjectPointer)
!4486 = !DILocation(line: 0, scope: !4479)
!4487 = !DILocalVariable(name: "__beg", arg: 2, scope: !4479, file: !37, line: 287, type: !125)
!4488 = !DILocation(line: 287, column: 35, scope: !4479)
!4489 = !DILocalVariable(name: "__end", arg: 3, scope: !4479, file: !37, line: 287, type: !125)
!4490 = !DILocation(line: 287, column: 55, scope: !4479)
!4491 = !DILocalVariable(arg: 4, scope: !4479, file: !37, line: 288, type: !176)
!4492 = !DILocation(line: 288, column: 33, scope: !4479)
!4493 = !DILocation(line: 211, column: 35, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4479, file: !33, line: 211, column: 6)
!4495 = !DILocation(line: 211, column: 6, scope: !4494)
!4496 = !DILocation(line: 211, column: 42, scope: !4494)
!4497 = !DILocation(line: 211, column: 45, scope: !4494)
!4498 = !DILocation(line: 211, column: 54, scope: !4494)
!4499 = !DILocation(line: 211, column: 51, scope: !4494)
!4500 = !DILocation(line: 211, column: 6, scope: !4479)
!4501 = !DILocation(line: 212, column: 4, scope: !4494)
!4502 = !DILocalVariable(name: "__dnew", scope: !4479, file: !33, line: 215, type: !39)
!4503 = !DILocation(line: 215, column: 12, scope: !4479)
!4504 = !DILocation(line: 215, column: 58, scope: !4479)
!4505 = !DILocation(line: 215, column: 65, scope: !4479)
!4506 = !DILocation(line: 215, column: 44, scope: !4479)
!4507 = !DILocation(line: 217, column: 6, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4479, file: !33, line: 217, column: 6)
!4509 = !DILocation(line: 217, column: 13, scope: !4508)
!4510 = !DILocation(line: 217, column: 6, scope: !4479)
!4511 = !DILocation(line: 219, column: 14, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !33, line: 218, column: 4)
!4513 = !DILocation(line: 219, column: 6, scope: !4512)
!4514 = !DILocation(line: 220, column: 18, scope: !4512)
!4515 = !DILocation(line: 220, column: 6, scope: !4512)
!4516 = !DILocation(line: 221, column: 4, scope: !4512)
!4517 = !DILocation(line: 225, column: 26, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4479, file: !33, line: 225, column: 4)
!4519 = !DILocation(line: 225, column: 37, scope: !4518)
!4520 = !DILocation(line: 225, column: 44, scope: !4518)
!4521 = !DILocation(line: 225, column: 6, scope: !4518)
!4522 = !DILocation(line: 225, column: 52, scope: !4518)
!4523 = !DILocation(line: 233, column: 7, scope: !4518)
!4524 = !DILocation(line: 228, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4479, file: !33, line: 227, column: 4)
!4526 = !DILocation(line: 229, column: 6, scope: !4525)
!4527 = !DILocation(line: 233, column: 7, scope: !4525)
!4528 = !DILocation(line: 230, column: 4, scope: !4525)
!4529 = !DILocation(line: 232, column: 16, scope: !4479)
!4530 = !DILocation(line: 232, column: 2, scope: !4479)
!4531 = !DILocation(line: 233, column: 7, scope: !4479)
!4532 = distinct !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !4533, file: !340, line: 168, type: !4551, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4550, retainedNodes: !167)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !43, file: !340, line: 90, size: 8, flags: DIFlagTypePassByValue, elements: !4534, templateParams: !389, identifier: "_ZTSN9__gnu_cxx11char_traitsIcEE")
!4534 = !{!4535, !4542, !4545, !4546, !4550, !4553, !4556, !4560, !4561, !4564, !4572, !4575, !4578, !4581}
!4535 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignERcRKc", scope: !4533, file: !340, line: 102, type: !4536, scopeLine: 102, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !4538, !4540}
!4538 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !4533, file: !340, line: 92, baseType: !54)
!4540 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4541, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4539)
!4542 = !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !4533, file: !340, line: 106, type: !4543, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!95, !4540, !4540}
!4545 = !DISubprogram(name: "lt", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2ltERKcS3_", scope: !4533, file: !340, line: 110, type: !4543, scopeLine: 110, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4546 = !DISubprogram(name: "compare", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7compareEPKcS3_m", scope: !4533, file: !340, line: 114, type: !4547, scopeLine: 114, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!227, !4549, !4549, !60}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4550 = !DISubprogram(name: "length", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc", scope: !4533, file: !340, line: 117, type: !4551, scopeLine: 117, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!60, !4549}
!4553 = !DISubprogram(name: "find", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_", scope: !4533, file: !340, line: 120, type: !4554, scopeLine: 120, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4549, !4549, !60, !4540}
!4556 = !DISubprogram(name: "move", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm", scope: !4533, file: !340, line: 123, type: !4557, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4559, !4559, !4549, !60}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4560 = !DISubprogram(name: "copy", linkageName: "_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm", scope: !4533, file: !340, line: 126, type: !4557, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4561 = !DISubprogram(name: "assign", linkageName: "_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc", scope: !4533, file: !340, line: 129, type: !4562, scopeLine: 129, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!4559, !4559, !60, !4539}
!4564 = !DISubprogram(name: "to_char_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE12to_char_typeERKm", scope: !4533, file: !340, line: 132, type: !4565, scopeLine: 132, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!4539, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !4533, file: !340, line: 93, baseType: !4570)
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !4571, file: !340, line: 67, baseType: !62)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Char_types<char>", scope: !43, file: !340, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !167, templateParams: !389, identifier: "_ZTSN9__gnu_cxx11_Char_typesIcEE")
!4572 = !DISubprogram(name: "to_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11to_int_typeERKc", scope: !4533, file: !340, line: 136, type: !4573, scopeLine: 136, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!4569, !4540}
!4575 = !DISubprogram(name: "eq_int_type", linkageName: "_ZN9__gnu_cxx11char_traitsIcE11eq_int_typeERKmS3_", scope: !4533, file: !340, line: 140, type: !4576, scopeLine: 140, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!95, !4567, !4567}
!4578 = !DISubprogram(name: "eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE3eofEv", scope: !4533, file: !340, line: 144, type: !4579, scopeLine: 144, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!4569}
!4581 = !DISubprogram(name: "not_eof", linkageName: "_ZN9__gnu_cxx11char_traitsIcE7not_eofERKm", scope: !4533, file: !340, line: 148, type: !4582, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4569, !4567}
!4584 = !DILocalVariable(name: "__p", arg: 1, scope: !4532, file: !340, line: 117, type: !4549)
!4585 = !DILocation(line: 117, column: 31, scope: !4532)
!4586 = !DILocalVariable(name: "__i", scope: !4532, file: !340, line: 170, type: !60)
!4587 = !DILocation(line: 170, column: 19, scope: !4532)
!4588 = !DILocation(line: 171, column: 7, scope: !4532)
!4589 = !DILocation(line: 171, column: 18, scope: !4532)
!4590 = !DILocation(line: 171, column: 22, scope: !4532)
!4591 = !DILocation(line: 171, column: 28, scope: !4532)
!4592 = !DILocation(line: 171, column: 15, scope: !4532)
!4593 = !DILocation(line: 171, column: 14, scope: !4532)
!4594 = !DILocation(line: 172, column: 9, scope: !4532)
!4595 = distinct !{!4595, !4588, !4596, !2926}
!4596 = !DILocation(line: 172, column: 11, scope: !4532)
!4597 = !DILocation(line: 173, column: 14, scope: !4532)
!4598 = !DILocation(line: 173, column: 7, scope: !4532)
!4599 = distinct !DISubprogram(name: "eq", linkageName: "_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_", scope: !4533, file: !340, line: 106, type: !4543, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4542, retainedNodes: !167)
!4600 = !DILocalVariable(name: "__c1", arg: 1, scope: !4599, file: !340, line: 106, type: !4540)
!4601 = !DILocation(line: 106, column: 27, scope: !4599)
!4602 = !DILocalVariable(name: "__c2", arg: 2, scope: !4599, file: !340, line: 106, type: !4540)
!4603 = !DILocation(line: 106, column: 50, scope: !4599)
!4604 = !DILocation(line: 107, column: 16, scope: !4599)
!4605 = !DILocation(line: 107, column: 24, scope: !4599)
!4606 = !DILocation(line: 107, column: 21, scope: !4599)
!4607 = !DILocation(line: 107, column: 9, scope: !4599)
!4608 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !43, file: !4609, line: 152, type: !4467, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4610, retainedNodes: !167)
!4609 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!4610 = !{!4611}
!4611 = !DITemplateTypeParameter(name: "_Type", type: !126)
!4612 = !DILocalVariable(name: "__ptr", arg: 1, scope: !4608, file: !4609, line: 152, type: !125)
!4613 = !DILocation(line: 152, column: 30, scope: !4608)
!4614 = !DILocation(line: 153, column: 14, scope: !4608)
!4615 = !DILocation(line: 153, column: 20, scope: !4608)
!4616 = !DILocation(line: 153, column: 7, scope: !4608)
!4617 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !2, file: !4618, line: 138, type: !4619, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4621, retainedNodes: !167)
!4618 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_funcs.h", directory: "")
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!234, !125, !125}
!4621 = !{!4622}
!4622 = !DITemplateTypeParameter(name: "_InputIterator", type: !125)
!4623 = !DILocalVariable(name: "__first", arg: 1, scope: !4617, file: !4618, line: 138, type: !125)
!4624 = !DILocation(line: 138, column: 29, scope: !4617)
!4625 = !DILocalVariable(name: "__last", arg: 2, scope: !4617, file: !4618, line: 138, type: !125)
!4626 = !DILocation(line: 138, column: 53, scope: !4617)
!4627 = !DILocation(line: 141, column: 30, scope: !4617)
!4628 = !DILocation(line: 141, column: 39, scope: !4617)
!4629 = !DILocation(line: 142, column: 9, scope: !4617)
!4630 = !DILocation(line: 141, column: 14, scope: !4617)
!4631 = !DILocation(line: 141, column: 7, scope: !4617)
!4632 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !2, file: !4618, line: 98, type: !4633, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4635, retainedNodes: !167)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!234, !125, !125, !170}
!4635 = !{!4636}
!4636 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !125)
!4637 = !DILocalVariable(name: "__first", arg: 1, scope: !4632, file: !4618, line: 98, type: !125)
!4638 = !DILocation(line: 98, column: 38, scope: !4632)
!4639 = !DILocalVariable(name: "__last", arg: 2, scope: !4632, file: !4618, line: 98, type: !125)
!4640 = !DILocation(line: 98, column: 69, scope: !4632)
!4641 = !DILocalVariable(arg: 3, scope: !4632, file: !4618, line: 99, type: !170)
!4642 = !DILocation(line: 99, column: 42, scope: !4632)
!4643 = !DILocation(line: 104, column: 14, scope: !4632)
!4644 = !DILocation(line: 104, column: 23, scope: !4632)
!4645 = !DILocation(line: 104, column: 21, scope: !4632)
!4646 = !DILocation(line: 104, column: 7, scope: !4632)
!4647 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !2, file: !166, line: 238, type: !4648, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, templateParams: !4651, retainedNodes: !167)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!4650, !541}
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !213, file: !166, line: 223, baseType: !170)
!4651 = !{!4652}
!4652 = !DITemplateTypeParameter(name: "_Iter", type: !125)
!4653 = !DILocalVariable(arg: 1, scope: !4647, file: !166, line: 238, type: !541)
!4654 = !DILocation(line: 238, column: 37, scope: !4647)
!4655 = !DILocation(line: 239, column: 7, scope: !4647)
!4656 = distinct !DISubprogram(name: "release", linkageName: "_ZNK4Poco16RefCountedObject7releaseEv", scope: !4657, file: !1835, line: 78, type: !4658, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4662, retainedNodes: !167)
!4657 = !DICompositeType(tag: DW_TAG_class_type, name: "RefCountedObject", scope: !27, file: !1835, line: 28, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4657)
!4662 = !DISubprogram(name: "release", linkageName: "_ZNK4Poco16RefCountedObject7releaseEv", scope: !4657, file: !1835, line: 43, type: !4658, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4663 = !DILocalVariable(name: "this", arg: 1, scope: !4656, type: !4664, flags: DIFlagArtificial | DIFlagObjectPointer)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4665 = !DILocation(line: 0, scope: !4656)
!4666 = !DILocation(line: 82, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !1835, line: 82, column: 7)
!4668 = distinct !DILexicalBlock(scope: !4656, file: !1835, line: 81, column: 2)
!4669 = !DILocation(line: 82, column: 7, scope: !4667)
!4670 = !DILocation(line: 82, column: 18, scope: !4667)
!4671 = !DILocation(line: 82, column: 7, scope: !4668)
!4672 = !DILocation(line: 82, column: 24, scope: !4667)
!4673 = !DILocation(line: 88, column: 1, scope: !4667)
!4674 = !DILocation(line: 83, column: 2, scope: !4668)
!4675 = !DILocation(line: 86, column: 3, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4656, file: !1835, line: 85, column: 2)
!4677 = !DILocation(line: 87, column: 2, scope: !4676)
!4678 = !DILocation(line: 88, column: 1, scope: !4656)
!4679 = distinct !DISubprogram(name: "operator--", linkageName: "_ZN4Poco13AtomicCountermmEv", scope: !4681, file: !4680, line: 112, type: !4682, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4686, retainedNodes: !167)
!4680 = !DIFile(filename: "/usr/include/Poco/AtomicCounter.h", directory: "", checksumkind: CSK_MD5, checksum: "b3996cd98558943f821f9cb2c9ffc779")
!4681 = !DICompositeType(tag: DW_TAG_class_type, name: "AtomicCounter", scope: !27, file: !4680, line: 28, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4Poco13AtomicCounterE")
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!4684, !4685}
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ValueType", scope: !4681, file: !4680, line: 37, baseType: !227, flags: DIFlagPublic)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4686 = !DISubprogram(name: "operator--", linkageName: "_ZN4Poco13AtomicCountermmEv", scope: !4681, file: !4680, line: 70, type: !4682, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4687 = !DILocalVariable(name: "this", arg: 1, scope: !4679, type: !4688, flags: DIFlagArtificial | DIFlagObjectPointer)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4689 = !DILocation(line: 0, scope: !4679)
!4690 = !DILocation(line: 114, column: 11, scope: !4679)
!4691 = !DILocation(line: 114, column: 9, scope: !4679)
!4692 = !DILocation(line: 114, column: 2, scope: !4679)
!4693 = distinct !DISubprogram(name: "operator--", linkageName: "_ZNSt13__atomic_baseIiEmmEv", scope: !1688, file: !1021, line: 392, type: !1739, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1744, retainedNodes: !167)
!4694 = !DILocalVariable(name: "this", arg: 1, scope: !4693, type: !4695, flags: DIFlagArtificial | DIFlagObjectPointer)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!4696 = !DILocation(line: 0, scope: !4693)
!4697 = !DILocation(line: 393, column: 36, scope: !4693)
!4698 = !DILocation(line: 393, column: 16, scope: !4693)
!4699 = !DILocation(line: 393, column: 9, scope: !4693)
!4700 = distinct !DISubprogram(name: "assign", linkageName: "_ZN4Poco7AutoPtrINS_7ChannelEE6assignEPS1_", scope: !1586, file: !1587, line: 99, type: !1611, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1610, retainedNodes: !167)
!4701 = !DILocalVariable(name: "this", arg: 1, scope: !4700, type: !3748, flags: DIFlagArtificial | DIFlagObjectPointer)
!4702 = !DILocation(line: 0, scope: !4700)
!4703 = !DILocalVariable(name: "ptr", arg: 2, scope: !4700, file: !1587, line: 99, type: !1404)
!4704 = !DILocation(line: 99, column: 21, scope: !4700)
!4705 = !DILocation(line: 101, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4700, file: !1587, line: 101, column: 7)
!4707 = !DILocation(line: 101, column: 15, scope: !4706)
!4708 = !DILocation(line: 101, column: 12, scope: !4706)
!4709 = !DILocation(line: 101, column: 7, scope: !4700)
!4710 = !DILocation(line: 103, column: 8, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !1587, line: 103, column: 8)
!4712 = distinct !DILexicalBlock(scope: !4706, file: !1587, line: 102, column: 3)
!4713 = !DILocation(line: 103, column: 8, scope: !4712)
!4714 = !DILocation(line: 103, column: 14, scope: !4711)
!4715 = !DILocation(line: 103, column: 20, scope: !4711)
!4716 = !DILocation(line: 104, column: 11, scope: !4712)
!4717 = !DILocation(line: 104, column: 4, scope: !4712)
!4718 = !DILocation(line: 104, column: 9, scope: !4712)
!4719 = !DILocation(line: 105, column: 3, scope: !4712)
!4720 = !DILocation(line: 106, column: 3, scope: !4700)
!4721 = distinct !DISubprogram(name: "begin", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv", scope: !1408, file: !1399, line: 999, type: !4722, scopeLine: 1000, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4726, retainedNodes: !167)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!1407, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!4726 = !DISubprogram(name: "begin", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv", scope: !1408, file: !1399, line: 999, type: !4722, scopeLine: 999, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4727 = !DILocalVariable(name: "this", arg: 1, scope: !4721, type: !4728, flags: DIFlagArtificial | DIFlagObjectPointer)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4729 = !DILocation(line: 0, scope: !4721)
!4730 = !DILocation(line: 1000, column: 37, scope: !4721)
!4731 = !DILocation(line: 1000, column: 31, scope: !4721)
!4732 = !DILocation(line: 1000, column: 45, scope: !4721)
!4733 = !DILocation(line: 1000, column: 55, scope: !4721)
!4734 = !DILocation(line: 1000, column: 16, scope: !4721)
!4735 = !DILocation(line: 1000, column: 9, scope: !4721)
!4736 = distinct !DISubprogram(name: "_Rb_tree_const_iterator", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPKSt18_Rb_tree_node_base", scope: !1409, file: !1399, line: 347, type: !1437, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1436, retainedNodes: !167)
!4737 = !DILocalVariable(name: "this", arg: 1, scope: !4736, type: !3842, flags: DIFlagArtificial | DIFlagObjectPointer)
!4738 = !DILocation(line: 0, scope: !4736)
!4739 = !DILocalVariable(name: "__x", arg: 2, scope: !4736, file: !1399, line: 347, type: !1412)
!4740 = !DILocation(line: 347, column: 41, scope: !4736)
!4741 = !DILocation(line: 348, column: 9, scope: !4736)
!4742 = !DILocation(line: 348, column: 17, scope: !4736)
!4743 = !DILocation(line: 348, column: 24, scope: !4736)
!4744 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv", scope: !1408, file: !1399, line: 1007, type: !4722, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4745, retainedNodes: !167)
!4745 = !DISubprogram(name: "end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv", scope: !1408, file: !1399, line: 1007, type: !4722, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4746 = !DILocalVariable(name: "this", arg: 1, scope: !4744, type: !4728, flags: DIFlagArtificial | DIFlagObjectPointer)
!4747 = !DILocation(line: 0, scope: !4744)
!4748 = !DILocation(line: 1008, column: 38, scope: !4744)
!4749 = !DILocation(line: 1008, column: 32, scope: !4744)
!4750 = !DILocation(line: 1008, column: 46, scope: !4744)
!4751 = !DILocation(line: 1008, column: 16, scope: !4744)
!4752 = !DILocation(line: 1008, column: 9, scope: !4744)
!4753 = distinct !DISubprogram(name: "_M_valptr", linkageName: "_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv", scope: !1539, file: !1399, line: 238, type: !1581, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1580, retainedNodes: !167)
!4754 = !DILocalVariable(name: "this", arg: 1, scope: !4753, type: !1537, flags: DIFlagArtificial | DIFlagObjectPointer)
!4755 = !DILocation(line: 0, scope: !4753)
!4756 = !DILocation(line: 239, column: 16, scope: !4753)
!4757 = !DILocation(line: 239, column: 27, scope: !4753)
!4758 = !DILocation(line: 239, column: 9, scope: !4753)
!4759 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv", scope: !1543, file: !1544, line: 76, type: !1574, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1573, retainedNodes: !167)
!4760 = !DILocalVariable(name: "this", arg: 1, scope: !4759, type: !4761, flags: DIFlagArtificial | DIFlagObjectPointer)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!4762 = !DILocation(line: 0, scope: !4759)
!4763 = !DILocation(line: 77, column: 40, scope: !4759)
!4764 = !DILocation(line: 77, column: 9, scope: !4759)
!4765 = distinct !DISubprogram(name: "_M_addr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv", scope: !1543, file: !1544, line: 68, type: !1565, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1564, retainedNodes: !167)
!4766 = !DILocalVariable(name: "this", arg: 1, scope: !4765, type: !4761, flags: DIFlagArtificial | DIFlagObjectPointer)
!4767 = !DILocation(line: 0, scope: !4765)
!4768 = !DILocation(line: 69, column: 42, scope: !4765)
!4769 = !DILocation(line: 69, column: 9, scope: !4765)
!4770 = distinct !DISubprogram(name: "duplicate", linkageName: "_ZNK4Poco16RefCountedObject9duplicateEv", scope: !4657, file: !1835, line: 72, type: !4658, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4771, retainedNodes: !167)
!4771 = !DISubprogram(name: "duplicate", linkageName: "_ZNK4Poco16RefCountedObject9duplicateEv", scope: !4657, file: !1835, line: 40, type: !4658, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4772 = !DILocalVariable(name: "this", arg: 1, scope: !4770, type: !4664, flags: DIFlagArtificial | DIFlagObjectPointer)
!4773 = !DILocation(line: 0, scope: !4770)
!4774 = !DILocation(line: 74, column: 4, scope: !4770)
!4775 = !DILocation(line: 74, column: 2, scope: !4770)
!4776 = !DILocation(line: 75, column: 1, scope: !4770)
!4777 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN4Poco13AtomicCounterppEv", scope: !4681, file: !4680, line: 100, type: !4682, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !4778, retainedNodes: !167)
!4778 = !DISubprogram(name: "operator++", linkageName: "_ZN4Poco13AtomicCounterppEv", scope: !4681, file: !4680, line: 64, type: !4682, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4779 = !DILocalVariable(name: "this", arg: 1, scope: !4777, type: !4688, flags: DIFlagArtificial | DIFlagObjectPointer)
!4780 = !DILocation(line: 0, scope: !4777)
!4781 = !DILocation(line: 102, column: 11, scope: !4777)
!4782 = !DILocation(line: 102, column: 9, scope: !4777)
!4783 = !DILocation(line: 102, column: 2, scope: !4777)
!4784 = distinct !DISubprogram(name: "operator++", linkageName: "_ZNSt13__atomic_baseIiEppEv", scope: !1688, file: !1021, line: 384, type: !1739, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1335, declaration: !1738, retainedNodes: !167)
!4785 = !DILocalVariable(name: "this", arg: 1, scope: !4784, type: !4695, flags: DIFlagArtificial | DIFlagObjectPointer)
!4786 = !DILocation(line: 0, scope: !4784)
!4787 = !DILocation(line: 385, column: 36, scope: !4784)
!4788 = !DILocation(line: 385, column: 16, scope: !4784)
!4789 = !DILocation(line: 385, column: 9, scope: !4784)
!4790 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_Log.cpp", scope: !2116, file: !2116, type: !4791, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1335, retainedNodes: !167)
!4791 = !DISubroutineType(types: !167)
!4792 = !DILocation(line: 0, scope: !4790)
