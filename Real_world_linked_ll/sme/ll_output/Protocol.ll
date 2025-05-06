; ModuleID = 'common/Protocol.cpp'
source_filename = "common/Protocol.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.base", %"struct.std::_Head_base.3" }
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.1", %"struct.std::_Head_base.2" }>
%"struct.std::_Tuple_impl.1" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Head_base.2" = type { i32 }
%"struct.std::_Head_base.3" = type { i32 }
%class.StringVector = type { %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl" }
%"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl" = type { %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data" }
%"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.StringToken = type { i64, i64 }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::pair" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.std::integral_constant" = type { i8 }
%struct._Save_errno = type { i32 }
%"struct.std::is_same" = type { i8 }
%"class.std::allocator.4" = type { i8 }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }

$_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc = comdat any

$_ZNK12StringVector4sizeEv = comdat any

$_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi = comdat any

$_ZNK12StringVectorixB5cxx11Em = comdat any

$_ZN12StringVectorC2Ev = comdat any

$_ZN12StringVectoraSEOS_ = comdat any

$_ZN12StringVectorD2Ev = comdat any

$_ZSt10make_tupleIJRiS0_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_ = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4cendEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEptEv = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EEC2Ev = comdat any

$_ZN4Util8tokenizeEPKcmcRSt6vectorI11StringTokenSaIS3_EE = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EEC2EOS2_ = comdat any

$_ZN12StringVectorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI11StringTokenSaIS7_EE = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI11StringTokenEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2Ev = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE7reserveEm = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_ = comdat any

$_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI11StringTokenSaIS0_EE8capacityEv = comdat any

$_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK9__gnu_cxx13new_allocatorI11StringTokenE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenE8allocateEmPKv = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIP11StringTokenS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1I11StringTokenS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E = comdat any

$_ZSt12__niter_baseIP11StringTokenET_S2_ = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE17_M_realloc_insertIJllEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE4backEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenE9constructIS1_JllEEEvPT_DpOT0_ = comdat any

$_ZN11StringTokenC2Emm = comdat any

$_ZNKSt6vectorI11StringTokenSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP11StringTokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaI11StringTokenEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenE7destroyIS1_EEvPT_ = comdat any

$_ZSt8_DestroyIP11StringTokenEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2EOS2_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2EOS3_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2EOS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev = comdat any

$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_ = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE = comdat any

$_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev = comdat any

$_ZNKSt6vectorI11StringTokenSaIS0_EEixEm = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EEaSEOS2_ = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE13get_allocatorEv = comdat any

$_ZNSt6vectorI11StringTokenSaIS0_EEC2ERKS1_ = comdat any

$_ZNSaI11StringTokenED2Ev = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_ = comdat any

$_ZSt15__alloc_on_moveISaI11StringTokenEEvRT_S3_ = comdat any

$_ZNSaI11StringTokenEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_ = comdat any

$_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJRiS8_RS5_ELb1ELb1EEEDpOT_ = comdat any

$_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJS8_RS5_EvEEOT_DpOT0_ = comdat any

$_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJRS5_EvEEOT_DpOT0_ = comdat any

$_ZNSt10_Head_baseILm0EiLb0EEC2IRiEEOT_ = comdat any

$_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev = comdat any

$_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_ = comdat any

$_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_ = comdat any

$_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev = comdat any

$_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRS5_EEOT_ = comdat any

$_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERKS8_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c" \0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !dbg !14
@.str.3 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1, !dbg !19

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN12COOLProtocol12ParseVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noalias sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 !dbg !2236 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.StringVector, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %class.StringVector, align 8
  %13 = alloca %class.StringVector, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2240, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2242, metadata !DIExpression()), !dbg !2243
  store i32 -1, ptr %5, align 4, !dbg !2243
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2244, metadata !DIExpression()), !dbg !2245
  store i32 -1, ptr %6, align 4, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2246, metadata !DIExpression()), !dbg !2247
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2248, metadata !DIExpression()), !dbg !2249
  %17 = load ptr, ptr %4, align 8, !dbg !2250
  invoke void @_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr sret(%class.StringVector) align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %17, i8 noundef signext 46)
          to label %18 unwind label %33, !dbg !2251

18:                                               ; preds = %2
  %19 = invoke noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %20 unwind label %37, !dbg !2252

20:                                               ; preds = %18
  %21 = icmp ugt i64 %19, 0, !dbg !2254
  br i1 %21, label %22, label %74, !dbg !2255

22:                                               ; preds = %20
  invoke void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef 0)
          to label %23 unwind label %37, !dbg !2256

23:                                               ; preds = %22
  %24 = invoke noundef i32 @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null, i32 noundef 10)
          to label %25 unwind label %41, !dbg !2258

25:                                               ; preds = %23
  store i32 %24, ptr %5, align 4, !dbg !2259
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @_ZN12StringVectorC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #14, !dbg !2262
  %26 = invoke noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %27 unwind label %45, !dbg !2263

27:                                               ; preds = %25
  %28 = icmp ugt i64 %26, 1, !dbg !2265
  br i1 %28, label %29, label %53, !dbg !2266

29:                                               ; preds = %27
  invoke void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef 1)
          to label %30 unwind label %45, !dbg !2267

30:                                               ; preds = %29
  invoke void @_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr sret(%class.StringVector) align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext 45)
          to label %31 unwind label %49, !dbg !2269

31:                                               ; preds = %30
  %32 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN12StringVectoraSEOS_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %13) #14, !dbg !2270
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #14, !dbg !2271
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #14, !dbg !2271
  br label %53, !dbg !2272

33:                                               ; preds = %2
  %34 = landingpad { ptr, i32 }
          cleanup, !dbg !2273
  %35 = extractvalue { ptr, i32 } %34, 0, !dbg !2273
  store ptr %35, ptr %9, align 8, !dbg !2273
  %36 = extractvalue { ptr, i32 } %34, 1, !dbg !2273
  store i32 %36, ptr %10, align 4, !dbg !2273
  br label %77, !dbg !2273

37:                                               ; preds = %74, %22, %18
  %38 = landingpad { ptr, i32 }
          cleanup, !dbg !2274
  %39 = extractvalue { ptr, i32 } %38, 0, !dbg !2274
  store ptr %39, ptr %9, align 8, !dbg !2274
  %40 = extractvalue { ptr, i32 } %38, 1, !dbg !2274
  store i32 %40, ptr %10, align 4, !dbg !2274
  br label %76, !dbg !2274

41:                                               ; preds = %23
  %42 = landingpad { ptr, i32 }
          cleanup, !dbg !2275
  %43 = extractvalue { ptr, i32 } %42, 0, !dbg !2275
  store ptr %43, ptr %9, align 8, !dbg !2275
  %44 = extractvalue { ptr, i32 } %42, 1, !dbg !2275
  store i32 %44, ptr %10, align 4, !dbg !2275
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14, !dbg !2260
  br label %76, !dbg !2260

45:                                               ; preds = %69, %65, %57, %53, %29, %25
  %46 = landingpad { ptr, i32 }
          cleanup, !dbg !2276
  %47 = extractvalue { ptr, i32 } %46, 0, !dbg !2276
  store ptr %47, ptr %9, align 8, !dbg !2276
  %48 = extractvalue { ptr, i32 } %46, 1, !dbg !2276
  store i32 %48, ptr %10, align 4, !dbg !2276
  br label %73, !dbg !2276

49:                                               ; preds = %30
  %50 = landingpad { ptr, i32 }
          cleanup, !dbg !2277
  %51 = extractvalue { ptr, i32 } %50, 0, !dbg !2277
  store ptr %51, ptr %9, align 8, !dbg !2277
  %52 = extractvalue { ptr, i32 } %50, 1, !dbg !2277
  store i32 %52, ptr %10, align 4, !dbg !2277
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #14, !dbg !2271
  br label %73, !dbg !2271

53:                                               ; preds = %31, %27
  %54 = invoke noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %55 unwind label %45, !dbg !2278

55:                                               ; preds = %53
  %56 = icmp ugt i64 %54, 0, !dbg !2280
  br i1 %56, label %57, label %65, !dbg !2281

57:                                               ; preds = %55
  invoke void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef 0)
          to label %58 unwind label %45, !dbg !2282

58:                                               ; preds = %57
  %59 = invoke noundef i32 @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef null, i32 noundef 10)
          to label %60 unwind label %61, !dbg !2284

60:                                               ; preds = %58
  store i32 %59, ptr %6, align 4, !dbg !2285
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #14, !dbg !2286
  br label %65, !dbg !2287

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup, !dbg !2288
  %63 = extractvalue { ptr, i32 } %62, 0, !dbg !2288
  store ptr %63, ptr %9, align 8, !dbg !2288
  %64 = extractvalue { ptr, i32 } %62, 1, !dbg !2288
  store i32 %64, ptr %10, align 4, !dbg !2288
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #14, !dbg !2286
  br label %73, !dbg !2286

65:                                               ; preds = %60, %55
  %66 = invoke noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %67 unwind label %45, !dbg !2289

67:                                               ; preds = %65
  %68 = icmp ugt i64 %66, 1, !dbg !2291
  br i1 %68, label %69, label %72, !dbg !2292

69:                                               ; preds = %67
  invoke void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef 1)
          to label %70 unwind label %45, !dbg !2293

70:                                               ; preds = %69
  %71 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) #14, !dbg !2294
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #14, !dbg !2295
  br label %72, !dbg !2295

72:                                               ; preds = %70, %67
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #14, !dbg !2296
  br label %74, !dbg !2297

73:                                               ; preds = %61, %49, %45
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %12) #14, !dbg !2296
  br label %76, !dbg !2296

74:                                               ; preds = %72, %20
  invoke void @_ZSt10make_tupleIJRiS0_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_(ptr sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %75 unwind label %37, !dbg !2298

75:                                               ; preds = %74
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #14, !dbg !2273
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !dbg !2273
  ret void, !dbg !2273

76:                                               ; preds = %73, %41, %37
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #14, !dbg !2273
  br label %77, !dbg !2273

77:                                               ; preds = %76, %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !dbg !2273
  br label %78, !dbg !2273

78:                                               ; preds = %77
  %79 = load ptr, ptr %9, align 8, !dbg !2273
  %80 = load i32, ptr %10, align 4, !dbg !2273
  %81 = insertvalue { ptr, i32 } poison, ptr %79, 0, !dbg !2273
  %82 = insertvalue { ptr, i32 } %81, i32 %80, 1, !dbg !2273
  resume { ptr, i32 } %82, !dbg !2273
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noalias sret(%class.StringVector) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2) #0 comdat personality ptr @__gxx_personality_v0 !dbg !2299 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::vector", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !2305
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2306, metadata !DIExpression()), !dbg !2307
  %12 = load ptr, ptr %5, align 8, !dbg !2308
  %13 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2310
  br i1 %13, label %14, label %15, !dbg !2311

14:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 56, i1 false), !dbg !2312
  call void @_ZN12StringVectorC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #14, !dbg !2312
  br label %34, !dbg !2313

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @_ZNSt6vectorI11StringTokenSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !2315
  %16 = load ptr, ptr %5, align 8, !dbg !2316
  %17 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #14, !dbg !2317
  %18 = load ptr, ptr %5, align 8, !dbg !2318
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14, !dbg !2319
  %20 = load i8, ptr %6, align 1, !dbg !2320
  invoke void @_ZN4Util8tokenizeEPKcmcRSt6vectorI11StringTokenSaIS3_EE(ptr noundef %17, i64 noundef %19, i8 noundef signext %20, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %21 unwind label %25, !dbg !2321

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 8, !dbg !2322
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %23 unwind label %25, !dbg !2322

23:                                               ; preds = %21
  call void @_ZNSt6vectorI11StringTokenSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !2323
  invoke void @_ZN12StringVectorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI11StringTokenSaIS7_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %10, ptr noundef %11)
          to label %24 unwind label %29, !dbg !2324

24:                                               ; preds = %23
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #14, !dbg !2325
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2325
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !2326
  br label %34

25:                                               ; preds = %21, %15
  %26 = landingpad { ptr, i32 }
          cleanup, !dbg !2326
  %27 = extractvalue { ptr, i32 } %26, 0, !dbg !2326
  store ptr %27, ptr %8, align 8, !dbg !2326
  %28 = extractvalue { ptr, i32 } %26, 1, !dbg !2326
  store i32 %28, ptr %9, align 4, !dbg !2326
  br label %33, !dbg !2326

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup, !dbg !2326
  %31 = extractvalue { ptr, i32 } %30, 0, !dbg !2326
  store ptr %31, ptr %8, align 8, !dbg !2326
  %32 = extractvalue { ptr, i32 } %30, 1, !dbg !2326
  store i32 %32, ptr %9, align 4, !dbg !2326
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #14, !dbg !2325
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2325
  br label %33, !dbg !2325

33:                                               ; preds = %29, %25
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !2326
  br label %35, !dbg !2326

34:                                               ; preds = %24, %14
  ret void, !dbg !2326

35:                                               ; preds = %33
  %36 = load ptr, ptr %8, align 8, !dbg !2326
  %37 = load i32, ptr %9, align 4, !dbg !2326
  %38 = insertvalue { ptr, i32 } poison, ptr %36, 0, !dbg !2326
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1, !dbg !2326
  resume { ptr, i32 } %39, !dbg !2326
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #3 comdat align 2 !dbg !2327 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2330
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 1, !dbg !2331
  %5 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14, !dbg !2332
  ret i64 %5, !dbg !2333
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) #0 comdat !dbg !2334 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2337, metadata !DIExpression()), !dbg !2338
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2339, metadata !DIExpression()), !dbg !2340
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2341, metadata !DIExpression()), !dbg !2342
  %7 = load ptr, ptr %4, align 8, !dbg !2343
  %8 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #14, !dbg !2344
  %9 = load ptr, ptr %5, align 8, !dbg !2345
  %10 = load i32, ptr %6, align 4, !dbg !2346
  %11 = call noundef i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(ptr noundef @strtol, ptr noundef @.str.3, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !2347
  ret i32 %11, !dbg !2348
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK12StringVectorixB5cxx11Em(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) #0 comdat align 2 !dbg !2349 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2350, metadata !DIExpression()), !dbg !2351
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2352, metadata !DIExpression()), !dbg !2353
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8, !dbg !2354
  %10 = getelementptr inbounds %class.StringVector, ptr %8, i32 0, i32 1, !dbg !2356
  %11 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #14, !dbg !2357
  %12 = icmp uge i64 %9, %11, !dbg !2358
  br i1 %12, label %13, label %14, !dbg !2359

13:                                               ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14, !dbg !2360
  br label %25, !dbg !2362

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2363, metadata !DIExpression()), !dbg !2364
  %15 = getelementptr inbounds %class.StringVector, ptr %8, i32 0, i32 1, !dbg !2365
  %16 = load i64, ptr %6, align 8, !dbg !2366
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorI11StringTokenSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %16) #14, !dbg !2365
  store ptr %17, ptr %7, align 8, !dbg !2364
  %18 = getelementptr inbounds %class.StringVector, ptr %8, i32 0, i32 0, !dbg !2367
  %19 = load ptr, ptr %7, align 8, !dbg !2368
  %20 = getelementptr inbounds %struct.StringToken, ptr %19, i32 0, i32 0, !dbg !2369
  %21 = load i64, ptr %20, align 8, !dbg !2369
  %22 = load ptr, ptr %7, align 8, !dbg !2370
  %23 = getelementptr inbounds %struct.StringToken, ptr %22, i32 0, i32 1, !dbg !2371
  %24 = load i64, ptr %23, align 8, !dbg !2371
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %21, i64 noundef %24), !dbg !2372
  br label %25, !dbg !2373

25:                                               ; preds = %14, %13
  ret void, !dbg !2374
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN12StringVectorC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !dbg !2375 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2376, metadata !DIExpression()), !dbg !2378
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 0, !dbg !2379
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14, !dbg !2379
  %5 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 1, !dbg !2379
  call void @_ZNSt6vectorI11StringTokenSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !2379
  ret void, !dbg !2380
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN12StringVectoraSEOS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #4 comdat align 2 !dbg !2381 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2387, metadata !DIExpression()), !dbg !2388
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2388
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %class.StringVector, ptr %5, i32 0, i32 0, !dbg !2390
  %7 = load ptr, ptr %4, align 8, !dbg !2390
  %8 = getelementptr inbounds %class.StringVector, ptr %7, i32 0, i32 0, !dbg !2390
  %9 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #14, !dbg !2390
  %10 = getelementptr inbounds %class.StringVector, ptr %5, i32 0, i32 1, !dbg !2390
  %11 = load ptr, ptr %4, align 8, !dbg !2390
  %12 = getelementptr inbounds %class.StringVector, ptr %11, i32 0, i32 1, !dbg !2390
  %13 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11StringTokenSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12) #14, !dbg !2390
  ret ptr %5, !dbg !2390
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 !dbg !2392 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2394, metadata !DIExpression()), !dbg !2395
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 1, !dbg !2396
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14, !dbg !2396
  %5 = getelementptr inbounds %class.StringVector, ptr %3, i32 0, i32 0, !dbg !2396
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14, !dbg !2396
  ret void, !dbg !2398
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10make_tupleIJRiS0_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_(ptr noalias sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #0 comdat !dbg !2399 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2407, metadata !DIExpression()), !dbg !2408
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2409, metadata !DIExpression()), !dbg !2408
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2410, metadata !DIExpression()), !dbg !2408
  %9 = load ptr, ptr %6, align 8, !dbg !2411
  %10 = load ptr, ptr %7, align 8, !dbg !2411
  %11 = load ptr, ptr %8, align 8, !dbg !2411
  call void @_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJRiS8_RS5_ELb1ELb1EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(32) %11), !dbg !2412
  ret void, !dbg !2413
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol15getTokenIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 !dbg !2414 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2417, metadata !DIExpression()), !dbg !2418
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2419, metadata !DIExpression()), !dbg !2420
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2421, metadata !DIExpression()), !dbg !2422
  %10 = load ptr, ptr %5, align 8, !dbg !2423
  %11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2425
  %12 = load ptr, ptr %6, align 8, !dbg !2426
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2427
  %14 = add i64 %13, 1, !dbg !2428
  %15 = icmp ugt i64 %11, %14, !dbg !2429
  br i1 %15, label %16, label %45, !dbg !2430

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !2431
  %18 = load ptr, ptr %6, align 8, !dbg !2432
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14, !dbg !2433
  %20 = load ptr, ptr %6, align 8, !dbg !2434
  %21 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(32) %20), !dbg !2435
  %22 = icmp eq i32 %21, 0, !dbg !2436
  br i1 %22, label %23, label %45, !dbg !2437

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !dbg !2438
  %25 = load ptr, ptr %6, align 8, !dbg !2439
  %26 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #14, !dbg !2440
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %26) #14, !dbg !2438
  %28 = load i8, ptr %27, align 1, !dbg !2438
  %29 = sext i8 %28 to i32, !dbg !2438
  %30 = icmp eq i32 %29, 61, !dbg !2441
  br i1 %30, label %31, label %45, !dbg !2442

31:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2443, metadata !DIExpression()), !dbg !2445
  %32 = load ptr, ptr %5, align 8, !dbg !2446
  %33 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #14, !dbg !2447
  %34 = load ptr, ptr %6, align 8, !dbg !2448
  %35 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #14, !dbg !2449
  %36 = getelementptr inbounds i8, ptr %33, i64 %35, !dbg !2450
  %37 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2451
  store ptr %37, ptr %8, align 8, !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2452, metadata !DIExpression()), !dbg !2453
  store ptr null, ptr %9, align 8, !dbg !2453
  %38 = load ptr, ptr %8, align 8, !dbg !2454
  %39 = call i64 @strtol(ptr noundef %38, ptr noundef %9, i32 noundef 10) #14, !dbg !2455
  %40 = trunc i64 %39 to i32, !dbg !2455
  %41 = load ptr, ptr %7, align 8, !dbg !2456
  store i32 %40, ptr %41, align 4, !dbg !2457
  %42 = load ptr, ptr %9, align 8, !dbg !2458
  %43 = load ptr, ptr %8, align 8, !dbg !2459
  %44 = icmp ugt ptr %42, %43, !dbg !2460
  store i1 %44, ptr %4, align 1, !dbg !2461
  br label %46, !dbg !2461

45:                                               ; preds = %23, %16, %3
  store i1 false, ptr %4, align 1, !dbg !2462
  br label %46, !dbg !2462

46:                                               ; preds = %45, %31
  %47 = load i1, ptr %4, align 1, !dbg !2463
  ret i1 %47, !dbg !2463
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: nounwind
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #2

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol14getTokenUInt64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Rm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 !dbg !2464 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2468, metadata !DIExpression()), !dbg !2469
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2470, metadata !DIExpression()), !dbg !2471
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2472, metadata !DIExpression()), !dbg !2473
  %10 = load ptr, ptr %5, align 8, !dbg !2474
  %11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2476
  %12 = load ptr, ptr %6, align 8, !dbg !2477
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2478
  %14 = add i64 %13, 1, !dbg !2479
  %15 = icmp ugt i64 %11, %14, !dbg !2480
  br i1 %15, label %16, label %44, !dbg !2481

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !2482
  %18 = load ptr, ptr %6, align 8, !dbg !2483
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14, !dbg !2484
  %20 = load ptr, ptr %6, align 8, !dbg !2485
  %21 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(32) %20), !dbg !2486
  %22 = icmp eq i32 %21, 0, !dbg !2487
  br i1 %22, label %23, label %44, !dbg !2488

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !dbg !2489
  %25 = load ptr, ptr %6, align 8, !dbg !2490
  %26 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #14, !dbg !2491
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %26) #14, !dbg !2489
  %28 = load i8, ptr %27, align 1, !dbg !2489
  %29 = sext i8 %28 to i32, !dbg !2489
  %30 = icmp eq i32 %29, 61, !dbg !2492
  br i1 %30, label %31, label %44, !dbg !2493

31:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2494, metadata !DIExpression()), !dbg !2496
  %32 = load ptr, ptr %5, align 8, !dbg !2497
  %33 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #14, !dbg !2498
  %34 = load ptr, ptr %6, align 8, !dbg !2499
  %35 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #14, !dbg !2500
  %36 = getelementptr inbounds i8, ptr %33, i64 %35, !dbg !2501
  %37 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2502
  store ptr %37, ptr %8, align 8, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2503, metadata !DIExpression()), !dbg !2504
  store ptr null, ptr %9, align 8, !dbg !2504
  %38 = load ptr, ptr %8, align 8, !dbg !2505
  %39 = call i64 @strtoull(ptr noundef %38, ptr noundef %9, i32 noundef 10) #14, !dbg !2506
  %40 = load ptr, ptr %7, align 8, !dbg !2507
  store i64 %39, ptr %40, align 8, !dbg !2508
  %41 = load ptr, ptr %9, align 8, !dbg !2509
  %42 = load ptr, ptr %8, align 8, !dbg !2510
  %43 = icmp ugt ptr %41, %42, !dbg !2511
  store i1 %43, ptr %4, align 1, !dbg !2512
  br label %45, !dbg !2512

44:                                               ; preds = %23, %16, %3
  store i1 false, ptr %4, align 1, !dbg !2513
  br label %45, !dbg !2513

45:                                               ; preds = %44, %31
  %46 = load i1, ptr %4, align 1, !dbg !2514
  ret i1 %46, !dbg !2514
}

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol14getTokenUInt32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Rj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 !dbg !2515 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2518, metadata !DIExpression()), !dbg !2519
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2520, metadata !DIExpression()), !dbg !2521
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2522, metadata !DIExpression()), !dbg !2523
  %10 = load ptr, ptr %5, align 8, !dbg !2524
  %11 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2526
  %12 = load ptr, ptr %6, align 8, !dbg !2527
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2528
  %14 = add i64 %13, 1, !dbg !2529
  %15 = icmp ugt i64 %11, %14, !dbg !2530
  br i1 %15, label %16, label %45, !dbg !2531

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !2532
  %18 = load ptr, ptr %6, align 8, !dbg !2533
  %19 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #14, !dbg !2534
  %20 = load ptr, ptr %6, align 8, !dbg !2535
  %21 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(32) %20), !dbg !2536
  %22 = icmp eq i32 %21, 0, !dbg !2537
  br i1 %22, label %23, label %45, !dbg !2538

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !dbg !2539
  %25 = load ptr, ptr %6, align 8, !dbg !2540
  %26 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #14, !dbg !2541
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %26) #14, !dbg !2539
  %28 = load i8, ptr %27, align 1, !dbg !2539
  %29 = sext i8 %28 to i32, !dbg !2539
  %30 = icmp eq i32 %29, 61, !dbg !2542
  br i1 %30, label %31, label %45, !dbg !2543

31:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2544, metadata !DIExpression()), !dbg !2546
  %32 = load ptr, ptr %5, align 8, !dbg !2547
  %33 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #14, !dbg !2548
  %34 = load ptr, ptr %6, align 8, !dbg !2549
  %35 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #14, !dbg !2550
  %36 = getelementptr inbounds i8, ptr %33, i64 %35, !dbg !2551
  %37 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2552
  store ptr %37, ptr %8, align 8, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2553, metadata !DIExpression()), !dbg !2554
  store ptr null, ptr %9, align 8, !dbg !2554
  %38 = load ptr, ptr %8, align 8, !dbg !2555
  %39 = call i64 @strtoul(ptr noundef %38, ptr noundef %9, i32 noundef 10) #14, !dbg !2556
  %40 = trunc i64 %39 to i32, !dbg !2556
  %41 = load ptr, ptr %7, align 8, !dbg !2557
  store i32 %40, ptr %41, align 4, !dbg !2558
  %42 = load ptr, ptr %9, align 8, !dbg !2559
  %43 = load ptr, ptr %8, align 8, !dbg !2560
  %44 = icmp ugt ptr %42, %43, !dbg !2561
  store i1 %44, ptr %4, align 1, !dbg !2562
  br label %46, !dbg !2562

45:                                               ; preds = %23, %16, %3
  store i1 false, ptr %4, align 1, !dbg !2563
  br label %46, !dbg !2563

46:                                               ; preds = %45, %31
  %47 = load i1, ptr %4, align 1, !dbg !2564
  ret i1 %47, !dbg !2564
}

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol14getTokenStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 !dbg !2565 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2568, metadata !DIExpression()), !dbg !2569
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2570, metadata !DIExpression()), !dbg !2571
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2572, metadata !DIExpression()), !dbg !2573
  %9 = load ptr, ptr %5, align 8, !dbg !2574
  %10 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #14, !dbg !2576
  %11 = load ptr, ptr %6, align 8, !dbg !2577
  %12 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #14, !dbg !2578
  %13 = add i64 %12, 1, !dbg !2579
  %14 = icmp uge i64 %10, %13, !dbg !2580
  br i1 %14, label %15, label %37, !dbg !2581

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8, !dbg !2582
  %17 = load ptr, ptr %6, align 8, !dbg !2583
  %18 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #14, !dbg !2584
  %19 = load ptr, ptr %6, align 8, !dbg !2585
  %20 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef %18, ptr noundef nonnull align 8 dereferenceable(32) %19), !dbg !2586
  %21 = icmp eq i32 %20, 0, !dbg !2587
  br i1 %21, label %22, label %37, !dbg !2588

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 8, !dbg !2589
  %24 = load ptr, ptr %6, align 8, !dbg !2590
  %25 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #14, !dbg !2591
  %26 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %25) #14, !dbg !2589
  %27 = load i8, ptr %26, align 1, !dbg !2589
  %28 = sext i8 %27 to i32, !dbg !2589
  %29 = icmp eq i32 %28, 61, !dbg !2592
  br i1 %29, label %30, label %37, !dbg !2593

30:                                               ; preds = %22
  %31 = load ptr, ptr %5, align 8, !dbg !2594
  %32 = load ptr, ptr %6, align 8, !dbg !2596
  %33 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #14, !dbg !2597
  %34 = add i64 %33, 1, !dbg !2598
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %34, i64 noundef -1), !dbg !2599
  %35 = load ptr, ptr %7, align 8, !dbg !2600
  %36 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %8) #14, !dbg !2601
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #14, !dbg !2600
  store i1 true, ptr %4, align 1, !dbg !2602
  br label %38, !dbg !2602

37:                                               ; preds = %22, %15, %3
  store i1 false, ptr %4, align 1, !dbg !2603
  br label %38, !dbg !2603

38:                                               ; preds = %37, %30
  %39 = load i1, ptr %4, align 1, !dbg !2604
  ret i1 %39, !dbg !2604
}

declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) #5

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol15getTokenKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt3mapIS5_iSt4lessIS5_ESaISt4pairIS6_iEEERi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #0 personality ptr @__gxx_personality_v0 !dbg !2605 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %15 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2612, metadata !DIExpression()), !dbg !2613
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2614, metadata !DIExpression()), !dbg !2615
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2616, metadata !DIExpression()), !dbg !2617
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2621
  %17 = load ptr, ptr %6, align 8, !dbg !2622
  %18 = load ptr, ptr %7, align 8, !dbg !2624
  %19 = invoke noundef zeroext i1 @_ZN12COOLProtocol14getTokenStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %20 unwind label %40, !dbg !2625

20:                                               ; preds = %4
  br i1 %19, label %21, label %59, !dbg !2626

21:                                               ; preds = %20
  %22 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0)
          to label %23 unwind label %40, !dbg !2627

23:                                               ; preds = %21
  %24 = load i8, ptr %22, align 1, !dbg !2627
  %25 = sext i8 %24 to i32, !dbg !2627
  %26 = icmp eq i32 %25, 39, !dbg !2630
  br i1 %26, label %27, label %44, !dbg !2631

27:                                               ; preds = %23
  %28 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2632
  %29 = sub i64 %28, 1, !dbg !2633
  %30 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %29)
          to label %31 unwind label %40, !dbg !2634

31:                                               ; preds = %27
  %32 = load i8, ptr %30, align 1, !dbg !2634
  %33 = sext i8 %32 to i32, !dbg !2634
  %34 = icmp eq i32 %33, 39, !dbg !2635
  br i1 %34, label %35, label %44, !dbg !2636

35:                                               ; preds = %31
  %36 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2637
  %37 = sub i64 %36, 2, !dbg !2639
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, i64 noundef %37)
          to label %38 unwind label %40, !dbg !2640

38:                                               ; preds = %35
  %39 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %13) #14, !dbg !2641
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #14, !dbg !2642
  br label %44, !dbg !2643

40:                                               ; preds = %44, %35, %27, %21, %4
  %41 = landingpad { ptr, i32 }
          cleanup, !dbg !2644
  %42 = extractvalue { ptr, i32 } %41, 0, !dbg !2644
  store ptr %42, ptr %11, align 8, !dbg !2644
  %43 = extractvalue { ptr, i32 } %41, 1, !dbg !2644
  store i32 %43, ptr %12, align 4, !dbg !2644
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2645
  br label %62, !dbg !2645

44:                                               ; preds = %38, %31, %23
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2646, metadata !DIExpression()), !dbg !2649
  %45 = load ptr, ptr %8, align 8, !dbg !2650
  %46 = invoke ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %47 unwind label %40, !dbg !2651

47:                                               ; preds = %44
  %48 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %14, i32 0, i32 0, !dbg !2651
  store ptr %46, ptr %48, align 8, !dbg !2651
  %49 = load ptr, ptr %8, align 8, !dbg !2652
  %50 = call ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4cendEv(ptr noundef nonnull align 8 dereferenceable(48) %49) #14, !dbg !2654
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %15, i32 0, i32 0, !dbg !2654
  store ptr %50, ptr %51, align 8, !dbg !2654
  %52 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #14, !dbg !2655
  br i1 %52, label %53, label %58, !dbg !2656

53:                                               ; preds = %47
  %54 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #14, !dbg !2657
  %55 = getelementptr inbounds %"struct.std::pair", ptr %54, i32 0, i32 1, !dbg !2659
  %56 = load i32, ptr %55, align 8, !dbg !2659
  %57 = load ptr, ptr %9, align 8, !dbg !2660
  store i32 %56, ptr %57, align 4, !dbg !2661
  store i1 true, ptr %5, align 1, !dbg !2662
  store i32 1, ptr %16, align 4
  br label %60, !dbg !2662

58:                                               ; preds = %47
  br label %59, !dbg !2663

59:                                               ; preds = %58, %20
  store i1 false, ptr %5, align 1, !dbg !2664
  store i32 1, ptr %16, align 4
  br label %60, !dbg !2664

60:                                               ; preds = %59, %53
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14, !dbg !2645
  %61 = load i1, ptr %5, align 1, !dbg !2645
  ret i1 %61, !dbg !2645

62:                                               ; preds = %40
  %63 = load ptr, ptr %11, align 8, !dbg !2645
  %64 = load i32, ptr %12, align 4, !dbg !2645
  %65 = insertvalue { ptr, i32 } poison, ptr %63, 0, !dbg !2645
  %66 = insertvalue { ptr, i32 } %65, i32 %64, 1, !dbg !2645
  resume { ptr, i32 } %66, !dbg !2645
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 !dbg !2665 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2673, metadata !DIExpression()), !dbg !2675
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2676, metadata !DIExpression()), !dbg !2677
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::map", ptr %6, i32 0, i32 0, !dbg !2678
  %8 = load ptr, ptr %5, align 8, !dbg !2679
  %9 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %8), !dbg !2680
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !2680
  store ptr %9, ptr %10, align 8, !dbg !2680
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !2681
  %12 = load ptr, ptr %11, align 8, !dbg !2681
  ret ptr %12, !dbg !2681
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !2682 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2687, metadata !DIExpression()), !dbg !2688
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2689, metadata !DIExpression()), !dbg !2690
  %5 = load ptr, ptr %3, align 8, !dbg !2691
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !2692
  %7 = load ptr, ptr %6, align 8, !dbg !2692
  %8 = load ptr, ptr %4, align 8, !dbg !2693
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %8, i32 0, i32 0, !dbg !2694
  %10 = load ptr, ptr %9, align 8, !dbg !2694
  %11 = icmp ne ptr %7, %10, !dbg !2695
  ret i1 %11, !dbg !2696
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4cendEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #3 comdat align 2 !dbg !2697 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2701, metadata !DIExpression()), !dbg !2702
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::map", ptr %4, i32 0, i32 0, !dbg !2703
  %6 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #14, !dbg !2704
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !2704
  store ptr %6, ptr %7, align 8, !dbg !2704
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !2705
  %9 = load ptr, ptr %8, align 8, !dbg !2705
  ret ptr %9, !dbg !2705
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 !dbg !2706 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2709
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !2710
  %5 = load ptr, ptr %4, align 8, !dbg !2710
  %6 = call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %5), !dbg !2711
  ret ptr %6, !dbg !2712
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol15getTokenIntegerERK12StringVectorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 personality ptr @__gxx_personality_v0 !dbg !2713 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2716, metadata !DIExpression()), !dbg !2717
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2718, metadata !DIExpression()), !dbg !2719
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2720, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2722, metadata !DIExpression()), !dbg !2724
  store i64 0, ptr %8, align 8, !dbg !2724
  br label %12, !dbg !2725

12:                                               ; preds = %30, %3
  %13 = load i64, ptr %8, align 8, !dbg !2726
  %14 = load ptr, ptr %5, align 8, !dbg !2728
  %15 = call noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %14), !dbg !2729
  %16 = icmp ult i64 %13, %15, !dbg !2730
  br i1 %16, label %17, label %33, !dbg !2731

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !2732
  %19 = load i64, ptr %8, align 8, !dbg !2735
  call void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %18, i64 noundef %19), !dbg !2732
  %20 = load ptr, ptr %6, align 8, !dbg !2736
  %21 = load ptr, ptr %7, align 8, !dbg !2737
  %22 = invoke noundef zeroext i1 @_ZN12COOLProtocol15getTokenIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 4 dereferenceable(4) %21)
          to label %23 unwind label %25, !dbg !2738

23:                                               ; preds = %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14, !dbg !2738
  br i1 %22, label %24, label %29, !dbg !2739

24:                                               ; preds = %23
  store i1 true, ptr %4, align 1, !dbg !2740
  br label %34, !dbg !2740

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup, !dbg !2741
  %27 = extractvalue { ptr, i32 } %26, 0, !dbg !2741
  store ptr %27, ptr %10, align 8, !dbg !2741
  %28 = extractvalue { ptr, i32 } %26, 1, !dbg !2741
  store i32 %28, ptr %11, align 4, !dbg !2741
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14, !dbg !2738
  br label %36, !dbg !2738

29:                                               ; preds = %23
  br label %30, !dbg !2742

30:                                               ; preds = %29
  %31 = load i64, ptr %8, align 8, !dbg !2743
  %32 = add i64 %31, 1, !dbg !2743
  store i64 %32, ptr %8, align 8, !dbg !2743
  br label %12, !dbg !2744, !llvm.loop !2745

33:                                               ; preds = %12
  store i1 false, ptr %4, align 1, !dbg !2748
  br label %34, !dbg !2748

34:                                               ; preds = %33, %24
  %35 = load i1, ptr %4, align 1, !dbg !2749
  ret i1 %35, !dbg !2749

36:                                               ; preds = %25
  %37 = load ptr, ptr %10, align 8, !dbg !2738
  %38 = load i32, ptr %11, align 4, !dbg !2738
  %39 = insertvalue { ptr, i32 } poison, ptr %37, 0, !dbg !2738
  %40 = insertvalue { ptr, i32 } %39, i32 %38, 1, !dbg !2738
  resume { ptr, i32 } %40, !dbg !2738
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol15getTokenKeywordERK12StringVectorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS8_iSt4lessIS8_ESaISt4pairIS9_iEEERi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #0 personality ptr @__gxx_personality_v0 !dbg !2750 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2753, metadata !DIExpression()), !dbg !2754
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2755, metadata !DIExpression()), !dbg !2756
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2757, metadata !DIExpression()), !dbg !2758
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2761, metadata !DIExpression()), !dbg !2763
  store i64 0, ptr %10, align 8, !dbg !2763
  br label %14, !dbg !2764

14:                                               ; preds = %33, %4
  %15 = load i64, ptr %10, align 8, !dbg !2765
  %16 = load ptr, ptr %6, align 8, !dbg !2767
  %17 = call noundef i64 @_ZNK12StringVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %16), !dbg !2768
  %18 = icmp ult i64 %15, %17, !dbg !2769
  br i1 %18, label %19, label %36, !dbg !2770

19:                                               ; preds = %14
  %20 = load ptr, ptr %6, align 8, !dbg !2771
  %21 = load i64, ptr %10, align 8, !dbg !2774
  call void @_ZNK12StringVectorixB5cxx11Em(ptr sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %20, i64 noundef %21), !dbg !2771
  %22 = load ptr, ptr %7, align 8, !dbg !2775
  %23 = load ptr, ptr %8, align 8, !dbg !2776
  %24 = load ptr, ptr %9, align 8, !dbg !2777
  %25 = invoke noundef zeroext i1 @_ZN12COOLProtocol15getTokenKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt3mapIS5_iSt4lessIS5_ESaISt4pairIS6_iEEERi(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(4) %24)
          to label %26 unwind label %28, !dbg !2778

26:                                               ; preds = %19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14, !dbg !2778
  br i1 %25, label %27, label %32, !dbg !2779

27:                                               ; preds = %26
  store i1 true, ptr %5, align 1, !dbg !2780
  br label %37, !dbg !2780

28:                                               ; preds = %19
  %29 = landingpad { ptr, i32 }
          cleanup, !dbg !2781
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !2781
  store ptr %30, ptr %12, align 8, !dbg !2781
  %31 = extractvalue { ptr, i32 } %29, 1, !dbg !2781
  store i32 %31, ptr %13, align 4, !dbg !2781
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #14, !dbg !2778
  br label %39, !dbg !2778

32:                                               ; preds = %26
  br label %33, !dbg !2782

33:                                               ; preds = %32
  %34 = load i64, ptr %10, align 8, !dbg !2783
  %35 = add i64 %34, 1, !dbg !2783
  store i64 %35, ptr %10, align 8, !dbg !2783
  br label %14, !dbg !2784, !llvm.loop !2785

36:                                               ; preds = %14
  store i1 false, ptr %5, align 1, !dbg !2787
  br label %37, !dbg !2787

37:                                               ; preds = %36, %27
  %38 = load i1, ptr %5, align 1, !dbg !2788
  ret i1 %38, !dbg !2788

39:                                               ; preds = %28
  %40 = load ptr, ptr %12, align 8, !dbg !2778
  %41 = load i32, ptr %13, align 4, !dbg !2778
  %42 = insertvalue { ptr, i32 } poison, ptr %40, 0, !dbg !2778
  %43 = insertvalue { ptr, i32 } %42, i32 %41, 1, !dbg !2778
  resume { ptr, i32 } %43, !dbg !2778
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol25getTokenStringFromMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 !dbg !2789 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2790, metadata !DIExpression()), !dbg !2791
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2792, metadata !DIExpression()), !dbg !2793
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2794, metadata !DIExpression()), !dbg !2795
  %13 = load ptr, ptr %5, align 8, !dbg !2796
  %14 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #14, !dbg !2798
  %15 = load ptr, ptr %6, align 8, !dbg !2799
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #14, !dbg !2800
  %17 = add i64 %16, 1, !dbg !2801
  %18 = icmp ugt i64 %14, %17, !dbg !2802
  br i1 %18, label %19, label %75, !dbg !2803

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2804, metadata !DIExpression()), !dbg !2806
  %20 = load ptr, ptr %5, align 8, !dbg !2807
  %21 = load ptr, ptr %6, align 8, !dbg !2808
  %22 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0) #14, !dbg !2809
  store i64 %22, ptr %8, align 8, !dbg !2806
  br label %23, !dbg !2810

23:                                               ; preds = %66, %19
  %24 = load i64, ptr %8, align 8, !dbg !2811
  %25 = icmp ne i64 %24, -1, !dbg !2812
  br i1 %25, label %26, label %74, !dbg !2810

26:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2813, metadata !DIExpression()), !dbg !2815
  %27 = load i64, ptr %8, align 8, !dbg !2816
  %28 = icmp eq i64 %27, 0, !dbg !2817
  br i1 %28, label %37, label %29, !dbg !2818

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8, !dbg !2819
  %31 = load i64, ptr %8, align 8, !dbg !2820
  %32 = sub i64 %31, 1, !dbg !2821
  %33 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %32) #14, !dbg !2819
  %34 = load i8, ptr %33, align 1, !dbg !2819
  %35 = sext i8 %34 to i32, !dbg !2819
  %36 = icmp eq i32 %35, 32, !dbg !2822
  br label %37, !dbg !2818

37:                                               ; preds = %29, %26
  %38 = phi i1 [ true, %26 ], [ %36, %29 ]
  %39 = zext i1 %38 to i8, !dbg !2815
  store i8 %39, ptr %9, align 1, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2823, metadata !DIExpression()), !dbg !2825
  %40 = load i64, ptr %8, align 8, !dbg !2826
  %41 = load ptr, ptr %6, align 8, !dbg !2827
  %42 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %41) #14, !dbg !2828
  %43 = add i64 %40, %42, !dbg !2829
  store i64 %43, ptr %10, align 8, !dbg !2825
  %44 = load i8, ptr %9, align 1, !dbg !2830
  %45 = trunc i8 %44 to i1, !dbg !2830
  br i1 %45, label %46, label %66, !dbg !2832

46:                                               ; preds = %37
  %47 = load ptr, ptr %5, align 8, !dbg !2833
  %48 = load i64, ptr %10, align 8, !dbg !2834
  %49 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %47, i64 noundef %48) #14, !dbg !2833
  %50 = load i8, ptr %49, align 1, !dbg !2833
  %51 = sext i8 %50 to i32, !dbg !2833
  %52 = icmp eq i32 %51, 61, !dbg !2835
  br i1 %52, label %53, label %66, !dbg !2836

53:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2837, metadata !DIExpression()), !dbg !2839
  %54 = load ptr, ptr %5, align 8, !dbg !2840
  %55 = load i64, ptr %10, align 8, !dbg !2841
  %56 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef @.str, i64 noundef %55) #14, !dbg !2842
  store i64 %56, ptr %11, align 8, !dbg !2839
  %57 = load ptr, ptr %5, align 8, !dbg !2843
  %58 = load i64, ptr %10, align 8, !dbg !2844
  %59 = add i64 %58, 1, !dbg !2845
  %60 = load i64, ptr %11, align 8, !dbg !2846
  %61 = load i64, ptr %10, align 8, !dbg !2847
  %62 = sub i64 %60, %61, !dbg !2848
  %63 = sub i64 %62, 1, !dbg !2849
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %57, i64 noundef %59, i64 noundef %63), !dbg !2850
  %64 = load ptr, ptr %7, align 8, !dbg !2851
  %65 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2852
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !dbg !2851
  store i1 true, ptr %4, align 1, !dbg !2853
  br label %76, !dbg !2853

66:                                               ; preds = %46, %37
  %67 = load ptr, ptr %5, align 8, !dbg !2854
  %68 = load ptr, ptr %6, align 8, !dbg !2855
  %69 = load i64, ptr %8, align 8, !dbg !2856
  %70 = load ptr, ptr %6, align 8, !dbg !2857
  %71 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %70) #14, !dbg !2858
  %72 = add i64 %69, %71, !dbg !2859
  %73 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(32) %68, i64 noundef %72) #14, !dbg !2860
  store i64 %73, ptr %8, align 8, !dbg !2861
  br label %23, !dbg !2810, !llvm.loop !2862

74:                                               ; preds = %23
  br label %75, !dbg !2864

75:                                               ; preds = %74, %3
  store i1 false, ptr %4, align 1, !dbg !2865
  br label %76, !dbg !2865

76:                                               ; preds = %75, %53
  %77 = load i1, ptr %4, align 1, !dbg !2866
  ret i1 %77, !dbg !2866
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN12COOLProtocol26getTokenKeywordFromMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt3mapIS5_iSt4lessIS5_ESaISt4pairIS6_iEEERi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #0 personality ptr @__gxx_personality_v0 !dbg !2867 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.StringVector, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2868, metadata !DIExpression()), !dbg !2869
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2870, metadata !DIExpression()), !dbg !2871
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2872, metadata !DIExpression()), !dbg !2873
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2874, metadata !DIExpression()), !dbg !2875
  %12 = load ptr, ptr %5, align 8, !dbg !2876
  call void @_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr sret(%class.StringVector) align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef signext 32), !dbg !2877
  %13 = load ptr, ptr %6, align 8, !dbg !2878
  %14 = load ptr, ptr %7, align 8, !dbg !2879
  %15 = load ptr, ptr %8, align 8, !dbg !2880
  %16 = invoke noundef zeroext i1 @_ZN12COOLProtocol15getTokenKeywordERK12StringVectorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS8_iSt4lessIS8_ESaISt4pairIS9_iEEERi(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %17 unwind label %18, !dbg !2881

17:                                               ; preds = %4
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %9) #14, !dbg !2882
  ret i1 %16, !dbg !2882

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup, !dbg !2883
  %20 = extractvalue { ptr, i32 } %19, 0, !dbg !2883
  store ptr %20, ptr %10, align 8, !dbg !2883
  %21 = extractvalue { ptr, i32 } %19, 1, !dbg !2883
  store i32 %21, ptr %11, align 4, !dbg !2883
  call void @_ZN12StringVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %9) #14, !dbg !2882
  br label %22, !dbg !2882

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !dbg !2882
  %24 = load i32, ptr %11, align 4, !dbg !2882
  %25 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !2882
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1, !dbg !2882
  resume { ptr, i32 } %26, !dbg !2882
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !2884 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2885, metadata !DIExpression()), !dbg !2887
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !2888
  ret void, !dbg !2889
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4Util8tokenizeEPKcmcRSt6vectorI11StringTokenSaIS3_EE(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 comdat !dbg !2890 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2898, metadata !DIExpression()), !dbg !2899
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2900, metadata !DIExpression()), !dbg !2901
  %16 = load i64, ptr %6, align 8, !dbg !2902
  %17 = icmp eq i64 %16, 0, !dbg !2904
  br i1 %17, label %26, label %18, !dbg !2905

18:                                               ; preds = %4
  %19 = load ptr, ptr %5, align 8, !dbg !2906
  %20 = icmp eq ptr %19, null, !dbg !2907
  br i1 %20, label %26, label %21, !dbg !2908

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !dbg !2909
  %23 = load i8, ptr %22, align 1, !dbg !2910
  %24 = sext i8 %23 to i32, !dbg !2910
  %25 = icmp eq i32 %24, 0, !dbg !2911
  br i1 %25, label %26, label %27, !dbg !2912

26:                                               ; preds = %21, %18, %4
  br label %125, !dbg !2913

27:                                               ; preds = %21
  %28 = load ptr, ptr %8, align 8, !dbg !2914
  call void @_ZNSt6vectorI11StringTokenSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef 16), !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2916, metadata !DIExpression()), !dbg !2917
  %29 = load ptr, ptr %5, align 8, !dbg !2918
  store ptr %29, ptr %9, align 8, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2919, metadata !DIExpression()), !dbg !2920
  %30 = load ptr, ptr %5, align 8, !dbg !2921
  store ptr %30, ptr %10, align 8, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2922, metadata !DIExpression()), !dbg !2924
  store i64 0, ptr %11, align 8, !dbg !2924
  br label %31, !dbg !2925

31:                                               ; preds = %91, %27
  %32 = load i64, ptr %11, align 8, !dbg !2926
  %33 = load i64, ptr %6, align 8, !dbg !2928
  %34 = icmp ult i64 %32, %33, !dbg !2929
  br i1 %34, label %35, label %42, !dbg !2930

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !dbg !2931
  %37 = load i64, ptr %11, align 8, !dbg !2932
  %38 = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !2931
  %39 = load i8, ptr %38, align 1, !dbg !2931
  %40 = sext i8 %39 to i32, !dbg !2931
  %41 = icmp ne i32 %40, 10, !dbg !2933
  br label %42

42:                                               ; preds = %35, %31
  %43 = phi i1 [ false, %31 ], [ %41, %35 ], !dbg !2934
  br i1 %43, label %44, label %96, !dbg !2935

44:                                               ; preds = %42
  %45 = load ptr, ptr %5, align 8, !dbg !2936
  %46 = load i64, ptr %11, align 8, !dbg !2939
  %47 = getelementptr inbounds i8, ptr %45, i64 %46, !dbg !2936
  %48 = load i8, ptr %47, align 1, !dbg !2936
  %49 = sext i8 %48 to i32, !dbg !2936
  %50 = load i8, ptr %7, align 1, !dbg !2940
  %51 = sext i8 %50 to i32, !dbg !2940
  %52 = icmp eq i32 %49, %51, !dbg !2941
  br i1 %52, label %53, label %79, !dbg !2942

53:                                               ; preds = %44
  %54 = load ptr, ptr %9, align 8, !dbg !2943
  %55 = load ptr, ptr %10, align 8, !dbg !2946
  %56 = icmp ne ptr %54, %55, !dbg !2947
  br i1 %56, label %57, label %77, !dbg !2948

57:                                               ; preds = %53
  %58 = load ptr, ptr %9, align 8, !dbg !2949
  %59 = load i8, ptr %58, align 1, !dbg !2950
  %60 = sext i8 %59 to i32, !dbg !2950
  %61 = load i8, ptr %7, align 1, !dbg !2951
  %62 = sext i8 %61 to i32, !dbg !2951
  %63 = icmp ne i32 %60, %62, !dbg !2952
  br i1 %63, label %64, label %77, !dbg !2953

64:                                               ; preds = %57
  %65 = load ptr, ptr %8, align 8, !dbg !2954
  %66 = load ptr, ptr %9, align 8, !dbg !2955
  %67 = load ptr, ptr %5, align 8, !dbg !2956
  %68 = ptrtoint ptr %66 to i64, !dbg !2957
  %69 = ptrtoint ptr %67 to i64, !dbg !2957
  %70 = sub i64 %68, %69, !dbg !2957
  store i64 %70, ptr %12, align 8, !dbg !2955
  %71 = load ptr, ptr %10, align 8, !dbg !2958
  %72 = load ptr, ptr %9, align 8, !dbg !2959
  %73 = ptrtoint ptr %71 to i64, !dbg !2960
  %74 = ptrtoint ptr %72 to i64, !dbg !2960
  %75 = sub i64 %73, %74, !dbg !2960
  store i64 %75, ptr %13, align 8, !dbg !2958
  %76 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13), !dbg !2961
  br label %77, !dbg !2954

77:                                               ; preds = %64, %57, %53
  %78 = load ptr, ptr %10, align 8, !dbg !2962
  store ptr %78, ptr %9, align 8, !dbg !2963
  br label %90, !dbg !2964

79:                                               ; preds = %44
  %80 = load ptr, ptr %9, align 8, !dbg !2965
  %81 = load i8, ptr %80, align 1, !dbg !2967
  %82 = sext i8 %81 to i32, !dbg !2967
  %83 = load i8, ptr %7, align 1, !dbg !2968
  %84 = sext i8 %83 to i32, !dbg !2968
  %85 = icmp eq i32 %82, %84, !dbg !2969
  br i1 %85, label %86, label %89, !dbg !2970

86:                                               ; preds = %79
  %87 = load ptr, ptr %9, align 8, !dbg !2971
  %88 = getelementptr inbounds i8, ptr %87, i32 1, !dbg !2971
  store ptr %88, ptr %9, align 8, !dbg !2971
  br label %89, !dbg !2971

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89, %77
  br label %91, !dbg !2972

91:                                               ; preds = %90
  %92 = load i64, ptr %11, align 8, !dbg !2973
  %93 = add i64 %92, 1, !dbg !2973
  store i64 %93, ptr %11, align 8, !dbg !2973
  %94 = load ptr, ptr %10, align 8, !dbg !2974
  %95 = getelementptr inbounds i8, ptr %94, i32 1, !dbg !2974
  store ptr %95, ptr %10, align 8, !dbg !2974
  br label %31, !dbg !2975, !llvm.loop !2976

96:                                               ; preds = %42
  %97 = load ptr, ptr %9, align 8, !dbg !2978
  %98 = load ptr, ptr %10, align 8, !dbg !2980
  %99 = icmp ne ptr %97, %98, !dbg !2981
  br i1 %99, label %100, label %125, !dbg !2982

100:                                              ; preds = %96
  %101 = load ptr, ptr %9, align 8, !dbg !2983
  %102 = load i8, ptr %101, align 1, !dbg !2984
  %103 = sext i8 %102 to i32, !dbg !2984
  %104 = load i8, ptr %7, align 1, !dbg !2985
  %105 = sext i8 %104 to i32, !dbg !2985
  %106 = icmp ne i32 %103, %105, !dbg !2986
  br i1 %106, label %107, label %125, !dbg !2987

107:                                              ; preds = %100
  %108 = load ptr, ptr %9, align 8, !dbg !2988
  %109 = load i8, ptr %108, align 1, !dbg !2989
  %110 = sext i8 %109 to i32, !dbg !2989
  %111 = icmp ne i32 %110, 10, !dbg !2990
  br i1 %111, label %112, label %125, !dbg !2991

112:                                              ; preds = %107
  %113 = load ptr, ptr %8, align 8, !dbg !2992
  %114 = load ptr, ptr %9, align 8, !dbg !2993
  %115 = load ptr, ptr %5, align 8, !dbg !2994
  %116 = ptrtoint ptr %114 to i64, !dbg !2995
  %117 = ptrtoint ptr %115 to i64, !dbg !2995
  %118 = sub i64 %116, %117, !dbg !2995
  store i64 %118, ptr %14, align 8, !dbg !2993
  %119 = load ptr, ptr %10, align 8, !dbg !2996
  %120 = load ptr, ptr %9, align 8, !dbg !2997
  %121 = ptrtoint ptr %119 to i64, !dbg !2998
  %122 = ptrtoint ptr %120 to i64, !dbg !2998
  %123 = sub i64 %121, %122, !dbg !2998
  store i64 %123, ptr %15, align 8, !dbg !2996
  %124 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %113, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !2999
  br label %125, !dbg !2992

125:                                              ; preds = %26, %112, %107, %100, %96
  ret void, !dbg !3000
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 !dbg !3001 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3002, metadata !DIExpression()), !dbg !3003
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3004, metadata !DIExpression()), !dbg !3005
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3006
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14, !dbg !3006
  ret void, !dbg !3007
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN12StringVectorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI11StringTokenSaIS7_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !dbg !3008 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %class.StringVector, ptr %5, i32 0, i32 0, !dbg !3015
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #14, !dbg !3015
  %7 = getelementptr inbounds %class.StringVector, ptr %5, i32 0, i32 1, !dbg !3016
  call void @_ZNSt6vectorI11StringTokenSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #14, !dbg !3016
  ret void, !dbg !3017
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3018 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3019, metadata !DIExpression()), !dbg !3020
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3021
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3023
  %6 = load ptr, ptr %5, align 8, !dbg !3023
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3024
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !3025
  %9 = load ptr, ptr %8, align 8, !dbg !3025
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !3026
  invoke void @_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !3027

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !3028
  ret void, !dbg !3029

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3027
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !3027
  call void @__clang_call_terminate(ptr %14) #15, !dbg !3027
  unreachable, !dbg !3027
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !3030 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !3033
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3034
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14, !dbg !3034
  ret void, !dbg !3035
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !3036 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3037, metadata !DIExpression()), !dbg !3039
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaI11StringTokenEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3040
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !3041
  ret void, !dbg !3042
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI11StringTokenEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3043 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3044, metadata !DIExpression()), !dbg !3046
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3047
  ret void, !dbg !3048
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3049 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3052
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3053
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 !dbg !3054 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3055, metadata !DIExpression()), !dbg !3056
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3057, metadata !DIExpression()), !dbg !3058
  %7 = load ptr, ptr %3, align 8
  %8 = load i64, ptr %4, align 8, !dbg !3059
  %9 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3061
  %10 = icmp ugt i64 %8, %9, !dbg !3062
  br i1 %10, label %11, label %12, !dbg !3063

11:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.1) #16, !dbg !3064
  unreachable, !dbg !3064

12:                                               ; preds = %2
  %13 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3065
  %14 = load i64, ptr %4, align 8, !dbg !3067
  %15 = icmp ult i64 %13, %14, !dbg !3068
  br i1 %15, label %16, label %57, !dbg !3069

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3070, metadata !DIExpression()), !dbg !3073
  %17 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3074
  store i64 %17, ptr %5, align 8, !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3075, metadata !DIExpression()), !dbg !3076
  %18 = load i64, ptr %4, align 8, !dbg !3077
  %19 = call noundef ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %18), !dbg !3080
  store ptr %19, ptr %6, align 8, !dbg !3081
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3082
  %21 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %20, i32 0, i32 0, !dbg !3083
  %22 = load ptr, ptr %21, align 8, !dbg !3083
  %23 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3084
  %24 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %23, i32 0, i32 1, !dbg !3085
  %25 = load ptr, ptr %24, align 8, !dbg !3085
  %26 = load ptr, ptr %6, align 8, !dbg !3086
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3087
  %28 = call noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %22, ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %27) #14, !dbg !3088
  %29 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3089
  %30 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %29, i32 0, i32 0, !dbg !3090
  %31 = load ptr, ptr %30, align 8, !dbg !3090
  %32 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3091
  %33 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %32, i32 0, i32 2, !dbg !3092
  %34 = load ptr, ptr %33, align 8, !dbg !3092
  %35 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3093
  %36 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %35, i32 0, i32 0, !dbg !3094
  %37 = load ptr, ptr %36, align 8, !dbg !3094
  %38 = ptrtoint ptr %34 to i64, !dbg !3095
  %39 = ptrtoint ptr %37 to i64, !dbg !3095
  %40 = sub i64 %38, %39, !dbg !3095
  %41 = sdiv exact i64 %40, 16, !dbg !3095
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %31, i64 noundef %41), !dbg !3096
  %42 = load ptr, ptr %6, align 8, !dbg !3097
  %43 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3098
  %44 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %43, i32 0, i32 0, !dbg !3099
  store ptr %42, ptr %44, align 8, !dbg !3100
  %45 = load ptr, ptr %6, align 8, !dbg !3101
  %46 = load i64, ptr %5, align 8, !dbg !3102
  %47 = getelementptr inbounds %struct.StringToken, ptr %45, i64 %46, !dbg !3103
  %48 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3104
  %49 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %48, i32 0, i32 1, !dbg !3105
  store ptr %47, ptr %49, align 8, !dbg !3106
  %50 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3107
  %51 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %50, i32 0, i32 0, !dbg !3108
  %52 = load ptr, ptr %51, align 8, !dbg !3108
  %53 = load i64, ptr %4, align 8, !dbg !3109
  %54 = getelementptr inbounds %struct.StringToken, ptr %52, i64 %53, !dbg !3110
  %55 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3111
  %56 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %55, i32 0, i32 2, !dbg !3112
  store ptr %54, ptr %56, align 8, !dbg !3113
  br label %57, !dbg !3114

57:                                               ; preds = %16, %12
  ret void, !dbg !3115
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 !dbg !3116 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3125, metadata !DIExpression()), !dbg !3126
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3127, metadata !DIExpression()), !dbg !3128
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3129, metadata !DIExpression()), !dbg !3128
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3130
  %10 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %9, i32 0, i32 1, !dbg !3132
  %11 = load ptr, ptr %10, align 8, !dbg !3132
  %12 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3133
  %13 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %12, i32 0, i32 2, !dbg !3134
  %14 = load ptr, ptr %13, align 8, !dbg !3134
  %15 = icmp ne ptr %11, %14, !dbg !3135
  br i1 %15, label %16, label %27, !dbg !3136

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3137
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3139
  %19 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %18, i32 0, i32 1, !dbg !3140
  %20 = load ptr, ptr %19, align 8, !dbg !3140
  %21 = load ptr, ptr %5, align 8, !dbg !3141
  %22 = load ptr, ptr %6, align 8, !dbg !3141
  call void @_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %22), !dbg !3142
  %23 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3143
  %24 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %23, i32 0, i32 1, !dbg !3144
  %25 = load ptr, ptr %24, align 8, !dbg !3145
  %26 = getelementptr inbounds %struct.StringToken, ptr %25, i32 1, !dbg !3145
  store ptr %26, ptr %24, align 8, !dbg !3145
  br label %34, !dbg !3146

27:                                               ; preds = %3
  %28 = call ptr @_ZNSt6vectorI11StringTokenSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3147
  %29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3147
  store ptr %28, ptr %29, align 8, !dbg !3147
  %30 = load ptr, ptr %5, align 8, !dbg !3148
  %31 = load ptr, ptr %6, align 8, !dbg !3148
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3149
  %33 = load ptr, ptr %32, align 8, !dbg !3149
  call void @_ZNSt6vectorI11StringTokenSaIS0_EE17_M_realloc_insertIJllEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %33, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %31), !dbg !3149
  br label %34

34:                                               ; preds = %27, %16
  %35 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI11StringTokenSaIS0_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3150
  ret ptr %35, !dbg !3151
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3152 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3153, metadata !DIExpression()), !dbg !3155
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14, !dbg !3156
  %5 = call noundef i64 @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %4) #14, !dbg !3157
  ret i64 %5, !dbg !3158
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3159 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3161
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3162
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 2, !dbg !3163
  %6 = load ptr, ptr %5, align 8, !dbg !3163
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3164
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3165
  %9 = load ptr, ptr %8, align 8, !dbg !3165
  %10 = ptrtoint ptr %6 to i64, !dbg !3166
  %11 = ptrtoint ptr %9 to i64, !dbg !3166
  %12 = sub i64 %10, %11, !dbg !3166
  %13 = sdiv exact i64 %12, 16, !dbg !3166
  ret i64 %13, !dbg !3167
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3168 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3169, metadata !DIExpression()), !dbg !3170
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3171
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !3172
  %6 = load ptr, ptr %5, align 8, !dbg !3172
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3173
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3174
  %9 = load ptr, ptr %8, align 8, !dbg !3174
  %10 = ptrtoint ptr %6 to i64, !dbg !3175
  %11 = ptrtoint ptr %9 to i64, !dbg !3175
  %12 = sub i64 %10, %11, !dbg !3175
  %13 = sdiv exact i64 %12, 16, !dbg !3175
  ret i64 %13, !dbg !3176
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 !dbg !3177 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3178, metadata !DIExpression()), !dbg !3179
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3181
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3182
  %7 = icmp ne i64 %6, 0, !dbg !3183
  br i1 %7, label %8, label %12, !dbg !3182

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3184
  %10 = load i64, ptr %4, align 8, !dbg !3185
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !3186
  br label %13, !dbg !3182

12:                                               ; preds = %2
  br label %13, !dbg !3182

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !3182
  ret ptr %14, !dbg !3187
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #3 comdat align 2 !dbg !63 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3188, metadata !DIExpression()), !dbg !3189
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3190, metadata !DIExpression()), !dbg !3191
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3192, metadata !DIExpression()), !dbg !3193
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3194, metadata !DIExpression()), !dbg !3195
  %10 = load ptr, ptr %5, align 8, !dbg !3196
  %11 = load ptr, ptr %6, align 8, !dbg !3197
  %12 = load ptr, ptr %7, align 8, !dbg !3198
  %13 = load ptr, ptr %8, align 8, !dbg !3199
  %14 = call noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #14, !dbg !3200
  ret ptr %14, !dbg !3201
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3202 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3203, metadata !DIExpression()), !dbg !3204
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3205
  ret ptr %4, !dbg !3206
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !3207 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3208, metadata !DIExpression()), !dbg !3209
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3210, metadata !DIExpression()), !dbg !3211
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3212, metadata !DIExpression()), !dbg !3213
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3214
  %9 = icmp ne ptr %8, null, !dbg !3214
  br i1 %9, label %10, label %14, !dbg !3216

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3217
  %12 = load ptr, ptr %5, align 8, !dbg !3218
  %13 = load i64, ptr %6, align 8, !dbg !3219
  call void @_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3220
  br label %14, !dbg !3220

14:                                               ; preds = %10, %3
  ret void, !dbg !3221
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3222 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i64 576460752303423487, ptr %3, align 8, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3227, metadata !DIExpression()), !dbg !3228
  %5 = load ptr, ptr %2, align 8, !dbg !3229
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %5) #14, !dbg !3230
  store i64 %6, ptr %4, align 8, !dbg !3228
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !3231

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !3231
  ret i64 %9, !dbg !3232

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3231
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !3231
  call void @__clang_call_terminate(ptr %12) #15, !dbg !3231
  unreachable, !dbg !3231
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3233 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3234, metadata !DIExpression()), !dbg !3236
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3237
  ret ptr %4, !dbg !3238
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #3 comdat align 2 !dbg !3239 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3240, metadata !DIExpression()), !dbg !3241
  %3 = load ptr, ptr %2, align 8, !dbg !3242
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI11StringTokenE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3243
  ret i64 %4, !dbg !3244
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !3245 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3253, metadata !DIExpression()), !dbg !3254
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3255, metadata !DIExpression()), !dbg !3256
  %6 = load ptr, ptr %5, align 8, !dbg !3257
  %7 = load i64, ptr %6, align 8, !dbg !3257
  %8 = load ptr, ptr %4, align 8, !dbg !3259
  %9 = load i64, ptr %8, align 8, !dbg !3259
  %10 = icmp ult i64 %7, %9, !dbg !3260
  br i1 %10, label %11, label %13, !dbg !3261

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3262
  store ptr %12, ptr %3, align 8, !dbg !3263
  br label %15, !dbg !3263

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3264
  store ptr %14, ptr %3, align 8, !dbg !3265
  br label %15, !dbg !3265

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3266
  ret ptr %16, !dbg !3266
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #8 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI11StringTokenE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #3 comdat align 2 !dbg !3267 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3268, metadata !DIExpression()), !dbg !3270
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3271
  ret i64 %4, !dbg !3272
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #3 comdat align 2 !dbg !3273 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3274, metadata !DIExpression()), !dbg !3275
  %3 = load ptr, ptr %2, align 8
  ret i64 576460752303423487, !dbg !3276
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 comdat align 2 !dbg !3277 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3280, metadata !DIExpression()), !dbg !3281
  %5 = load ptr, ptr %3, align 8, !dbg !3282
  %6 = load i64, ptr %4, align 8, !dbg !3283
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorI11StringTokenE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !3284
  ret ptr %7, !dbg !3285
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorI11StringTokenE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 !dbg !3286 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3289, metadata !DIExpression()), !dbg !3290
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3291, metadata !DIExpression()), !dbg !3292
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !3293
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #14, !dbg !3295
  %10 = icmp ugt i64 %8, %9, !dbg !3296
  br i1 %10, label %11, label %16, !dbg !3297

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !3298
  %13 = icmp ugt i64 %12, 1152921504606846975, !dbg !3301
  br i1 %13, label %14, label %15, !dbg !3302

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #16, !dbg !3303
  unreachable, !dbg !3303

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #16, !dbg !3304
  unreachable, !dbg !3304

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !3305
  %18 = mul i64 %17, 16, !dbg !3306
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #17, !dbg !3307
  ret ptr %19, !dbg !3308
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #3 comdat align 2 !dbg !3309 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3310, metadata !DIExpression()), !dbg !3311
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3312, metadata !DIExpression()), !dbg !3313
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3314, metadata !DIExpression()), !dbg !3315
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3318, metadata !DIExpression()), !dbg !3319
  %10 = load ptr, ptr %6, align 8, !dbg !3320
  %11 = load ptr, ptr %7, align 8, !dbg !3321
  %12 = load ptr, ptr %8, align 8, !dbg !3322
  %13 = load ptr, ptr %9, align 8, !dbg !3323
  %14 = call noundef ptr @_ZSt12__relocate_aIP11StringTokenS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #14, !dbg !3324
  ret ptr %14, !dbg !3325
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP11StringTokenS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #3 comdat !dbg !3326 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3334, metadata !DIExpression()), !dbg !3335
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3336, metadata !DIExpression()), !dbg !3337
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3338, metadata !DIExpression()), !dbg !3339
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3340, metadata !DIExpression()), !dbg !3341
  %9 = load ptr, ptr %5, align 8, !dbg !3342
  %10 = call noundef ptr @_ZSt12__niter_baseIP11StringTokenET_S2_(ptr noundef %9) #14, !dbg !3343
  %11 = load ptr, ptr %6, align 8, !dbg !3344
  %12 = call noundef ptr @_ZSt12__niter_baseIP11StringTokenET_S2_(ptr noundef %11) #14, !dbg !3345
  %13 = load ptr, ptr %7, align 8, !dbg !3346
  %14 = call noundef ptr @_ZSt12__niter_baseIP11StringTokenET_S2_(ptr noundef %13) #14, !dbg !3347
  %15 = load ptr, ptr %8, align 8, !dbg !3348
  %16 = call noundef ptr @_ZSt14__relocate_a_1I11StringTokenS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #14, !dbg !3349
  ret ptr %16, !dbg !3350
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1I11StringTokenS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #3 comdat !dbg !3351 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3362, metadata !DIExpression()), !dbg !3363
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3364, metadata !DIExpression()), !dbg !3365
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3366, metadata !DIExpression()), !dbg !3367
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3370, metadata !DIExpression()), !dbg !3371
  %10 = load ptr, ptr %6, align 8, !dbg !3372
  %11 = load ptr, ptr %5, align 8, !dbg !3373
  %12 = ptrtoint ptr %10 to i64, !dbg !3374
  %13 = ptrtoint ptr %11 to i64, !dbg !3374
  %14 = sub i64 %12, %13, !dbg !3374
  %15 = sdiv exact i64 %14, 16, !dbg !3374
  store i64 %15, ptr %9, align 8, !dbg !3371
  %16 = load i64, ptr %9, align 8, !dbg !3375
  %17 = icmp sgt i64 %16, 0, !dbg !3377
  br i1 %17, label %18, label %23, !dbg !3378

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !3379
  %20 = load ptr, ptr %5, align 8, !dbg !3380
  %21 = load i64, ptr %9, align 8, !dbg !3381
  %22 = mul i64 %21, 16, !dbg !3382
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 %22, i1 false), !dbg !3383
  br label %23, !dbg !3383

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8, !dbg !3384
  %25 = load i64, ptr %9, align 8, !dbg !3385
  %26 = getelementptr inbounds %struct.StringToken, ptr %24, i64 %25, !dbg !3386
  ret ptr %26, !dbg !3387
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP11StringTokenET_S2_(ptr noundef %0) #3 comdat !dbg !3388 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3391, metadata !DIExpression()), !dbg !3392
  %3 = load ptr, ptr %2, align 8, !dbg !3393
  ret ptr %3, !dbg !3394
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !3395 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3396, metadata !DIExpression()), !dbg !3397
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3400, metadata !DIExpression()), !dbg !3401
  %7 = load ptr, ptr %4, align 8, !dbg !3402
  %8 = load ptr, ptr %5, align 8, !dbg !3403
  %9 = load i64, ptr %6, align 8, !dbg !3404
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3405
  ret void, !dbg !3406
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 !dbg !3407 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3409
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3410, metadata !DIExpression()), !dbg !3411
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3412, metadata !DIExpression()), !dbg !3413
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3414
  call void @_ZdlPv(ptr noundef %8) #14, !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 !dbg !3417 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3422, metadata !DIExpression()), !dbg !3423
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3424, metadata !DIExpression()), !dbg !3425
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3426, metadata !DIExpression()), !dbg !3427
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3428, metadata !DIExpression()), !dbg !3427
  %9 = load ptr, ptr %5, align 8, !dbg !3429
  %10 = load ptr, ptr %6, align 8, !dbg !3430
  %11 = load ptr, ptr %7, align 8, !dbg !3431
  %12 = load ptr, ptr %8, align 8, !dbg !3431
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE9constructIS1_JllEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12), !dbg !3432
  ret void, !dbg !3433
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EE17_M_realloc_insertIJllEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3434 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %1, ptr %18, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3440, metadata !DIExpression()), !dbg !3441
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3442, metadata !DIExpression()), !dbg !3443
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3444, metadata !DIExpression()), !dbg !3443
  %19 = load ptr, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3445, metadata !DIExpression()), !dbg !3446
  %20 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef 1, ptr noundef @.str.2), !dbg !3447
  store i64 %20, ptr %9, align 8, !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3448, metadata !DIExpression()), !dbg !3449
  %21 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3450
  %22 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %21, i32 0, i32 0, !dbg !3451
  %23 = load ptr, ptr %22, align 8, !dbg !3451
  store ptr %23, ptr %10, align 8, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3452, metadata !DIExpression()), !dbg !3453
  %24 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3454
  %25 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %24, i32 0, i32 1, !dbg !3455
  %26 = load ptr, ptr %25, align 8, !dbg !3455
  store ptr %26, ptr %11, align 8, !dbg !3453
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3456, metadata !DIExpression()), !dbg !3457
  %27 = call ptr @_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #14, !dbg !3458
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %13, i32 0, i32 0, !dbg !3458
  store ptr %27, ptr %28, align 8, !dbg !3458
  %29 = call noundef i64 @_ZN9__gnu_cxxmiIP11StringTokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %13) #14, !dbg !3459
  store i64 %29, ptr %12, align 8, !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3460, metadata !DIExpression()), !dbg !3461
  %30 = load i64, ptr %9, align 8, !dbg !3462
  %31 = call noundef ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %30), !dbg !3463
  store ptr %31, ptr %14, align 8, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3464, metadata !DIExpression()), !dbg !3465
  %32 = load ptr, ptr %14, align 8, !dbg !3466
  store ptr %32, ptr %15, align 8, !dbg !3465
  %33 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3467
  %34 = load ptr, ptr %14, align 8, !dbg !3469
  %35 = load i64, ptr %12, align 8, !dbg !3470
  %36 = getelementptr inbounds %struct.StringToken, ptr %34, i64 %35, !dbg !3471
  %37 = load ptr, ptr %7, align 8, !dbg !3472
  %38 = load ptr, ptr %8, align 8, !dbg !3472
  invoke void @_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %39 unwind label %54, !dbg !3473

39:                                               ; preds = %4
  store ptr null, ptr %15, align 8, !dbg !3474
  %40 = load ptr, ptr %10, align 8, !dbg !3475
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14, !dbg !3478
  %42 = load ptr, ptr %41, align 8, !dbg !3478
  %43 = load ptr, ptr %14, align 8, !dbg !3479
  %44 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #14, !dbg !3480
  %45 = call noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %40, ptr noundef %42, ptr noundef %43, ptr noundef nonnull align 1 dereferenceable(1) %44) #14, !dbg !3481
  store ptr %45, ptr %15, align 8, !dbg !3482
  %46 = load ptr, ptr %15, align 8, !dbg !3483
  %47 = getelementptr inbounds %struct.StringToken, ptr %46, i32 1, !dbg !3483
  store ptr %47, ptr %15, align 8, !dbg !3483
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14, !dbg !3484
  %49 = load ptr, ptr %48, align 8, !dbg !3484
  %50 = load ptr, ptr %11, align 8, !dbg !3485
  %51 = load ptr, ptr %15, align 8, !dbg !3486
  %52 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #14, !dbg !3487
  %53 = call noundef ptr @_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %52) #14, !dbg !3488
  store ptr %53, ptr %15, align 8, !dbg !3489
  br label %82, !dbg !3490

54:                                               ; preds = %4
  %55 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3491
  %56 = extractvalue { ptr, i32 } %55, 0, !dbg !3491
  store ptr %56, ptr %16, align 8, !dbg !3491
  %57 = extractvalue { ptr, i32 } %55, 1, !dbg !3491
  store i32 %57, ptr %17, align 4, !dbg !3491
  br label %58, !dbg !3491

58:                                               ; preds = %54
  %59 = load ptr, ptr %16, align 8, !dbg !3490
  %60 = call ptr @__cxa_begin_catch(ptr %59) #14, !dbg !3490
  %61 = load ptr, ptr %15, align 8, !dbg !3492
  %62 = icmp ne ptr %61, null, !dbg !3492
  br i1 %62, label %68, label %63, !dbg !3495

63:                                               ; preds = %58
  %64 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3496
  %65 = load ptr, ptr %14, align 8, !dbg !3497
  %66 = load i64, ptr %12, align 8, !dbg !3498
  %67 = getelementptr inbounds %struct.StringToken, ptr %65, i64 %66, !dbg !3499
  call void @_ZNSt16allocator_traitsISaI11StringTokenEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %64, ptr noundef %67) #14, !dbg !3500
  br label %77, !dbg !3500

68:                                               ; preds = %58
  %69 = load ptr, ptr %14, align 8, !dbg !3501
  %70 = load ptr, ptr %15, align 8, !dbg !3502
  %71 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #14, !dbg !3503
  invoke void @_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E(ptr noundef %69, ptr noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %72 unwind label %73, !dbg !3504

72:                                               ; preds = %68
  br label %77

73:                                               ; preds = %80, %77, %68
  %74 = landingpad { ptr, i32 }
          cleanup, !dbg !3505
  %75 = extractvalue { ptr, i32 } %74, 0, !dbg !3505
  store ptr %75, ptr %16, align 8, !dbg !3505
  %76 = extractvalue { ptr, i32 } %74, 1, !dbg !3505
  store i32 %76, ptr %17, align 4, !dbg !3505
  invoke void @__cxa_end_catch()
          to label %81 unwind label %108, !dbg !3506

77:                                               ; preds = %72, %63
  %78 = load ptr, ptr %14, align 8, !dbg !3507
  %79 = load i64, ptr %9, align 8, !dbg !3508
  invoke void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %78, i64 noundef %79)
          to label %80 unwind label %73, !dbg !3509

80:                                               ; preds = %77
  invoke void @__cxa_rethrow() #16
          to label %111 unwind label %73, !dbg !3510

81:                                               ; preds = %73
  br label %103, !dbg !3506

82:                                               ; preds = %39
  %83 = load ptr, ptr %10, align 8, !dbg !3511
  %84 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3512
  %85 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %84, i32 0, i32 2, !dbg !3513
  %86 = load ptr, ptr %85, align 8, !dbg !3513
  %87 = load ptr, ptr %10, align 8, !dbg !3514
  %88 = ptrtoint ptr %86 to i64, !dbg !3515
  %89 = ptrtoint ptr %87 to i64, !dbg !3515
  %90 = sub i64 %88, %89, !dbg !3515
  %91 = sdiv exact i64 %90, 16, !dbg !3515
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %83, i64 noundef %91), !dbg !3516
  %92 = load ptr, ptr %14, align 8, !dbg !3517
  %93 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3518
  %94 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %93, i32 0, i32 0, !dbg !3519
  store ptr %92, ptr %94, align 8, !dbg !3520
  %95 = load ptr, ptr %15, align 8, !dbg !3521
  %96 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3522
  %97 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %96, i32 0, i32 1, !dbg !3523
  store ptr %95, ptr %97, align 8, !dbg !3524
  %98 = load ptr, ptr %14, align 8, !dbg !3525
  %99 = load i64, ptr %9, align 8, !dbg !3526
  %100 = getelementptr inbounds %struct.StringToken, ptr %98, i64 %99, !dbg !3527
  %101 = getelementptr inbounds %"struct.std::_Vector_base", ptr %19, i32 0, i32 0, !dbg !3528
  %102 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %101, i32 0, i32 2, !dbg !3529
  store ptr %100, ptr %102, align 8, !dbg !3530
  ret void, !dbg !3531

103:                                              ; preds = %81
  %104 = load ptr, ptr %16, align 8, !dbg !3506
  %105 = load i32, ptr %17, align 4, !dbg !3506
  %106 = insertvalue { ptr, i32 } poison, ptr %104, 0, !dbg !3506
  %107 = insertvalue { ptr, i32 } %106, i32 %105, 1, !dbg !3506
  resume { ptr, i32 } %107, !dbg !3506

108:                                              ; preds = %73
  %109 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3506
  %110 = extractvalue { ptr, i32 } %109, 0, !dbg !3506
  call void @__clang_call_terminate(ptr %110) #15, !dbg !3506
  unreachable, !dbg !3506

111:                                              ; preds = %80
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI11StringTokenSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3532 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3533, metadata !DIExpression()), !dbg !3534
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !3535
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !3536
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #14, !dbg !3537
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !3538
  %8 = load ptr, ptr %7, align 8, !dbg !3538
  ret ptr %8, !dbg !3538
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI11StringTokenSaIS0_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3539 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3540, metadata !DIExpression()), !dbg !3541
  %5 = load ptr, ptr %2, align 8
  %6 = call ptr @_ZNSt6vectorI11StringTokenSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !3542
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !3542
  store ptr %6, ptr %7, align 8, !dbg !3542
  %8 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #14, !dbg !3543
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3543
  store ptr %8, ptr %9, align 8, !dbg !3543
  %10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14, !dbg !3544
  ret ptr %10, !dbg !3545
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE9constructIS1_JllEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 !dbg !3546 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3550, metadata !DIExpression()), !dbg !3551
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3552, metadata !DIExpression()), !dbg !3553
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3554, metadata !DIExpression()), !dbg !3555
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3556, metadata !DIExpression()), !dbg !3555
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8, !dbg !3557
  %11 = load ptr, ptr %7, align 8, !dbg !3558
  %12 = load i64, ptr %11, align 8, !dbg !3559
  %13 = load ptr, ptr %8, align 8, !dbg !3558
  %14 = load i64, ptr %13, align 8, !dbg !3559
  call void @_ZN11StringTokenC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %12, i64 noundef %14), !dbg !3560
  ret void, !dbg !3561
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN11StringTokenC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !dbg !3562 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3567, metadata !DIExpression()), !dbg !3568
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.StringToken, ptr %7, i32 0, i32 0, !dbg !3569
  %9 = load i64, ptr %5, align 8, !dbg !3570
  store i64 %9, ptr %8, align 8, !dbg !3569
  %10 = getelementptr inbounds %struct.StringToken, ptr %7, i32 0, i32 1, !dbg !3571
  %11 = load i64, ptr %6, align 8, !dbg !3572
  store i64 %11, ptr %10, align 8, !dbg !3571
  ret void, !dbg !3573
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 !dbg !3574 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3575, metadata !DIExpression()), !dbg !3576
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3577, metadata !DIExpression()), !dbg !3578
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3579, metadata !DIExpression()), !dbg !3580
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3581
  %11 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3583
  %12 = sub i64 %10, %11, !dbg !3584
  %13 = load i64, ptr %5, align 8, !dbg !3585
  %14 = icmp ult i64 %12, %13, !dbg !3586
  br i1 %14, label %15, label %17, !dbg !3587

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !3588
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #16, !dbg !3589
  unreachable, !dbg !3589

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3590, metadata !DIExpression()), !dbg !3591
  %18 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3592
  %19 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3593
  store i64 %19, ptr %8, align 8, !dbg !3593
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !3594
  %21 = load i64, ptr %20, align 8, !dbg !3594
  %22 = add i64 %18, %21, !dbg !3595
  store i64 %22, ptr %7, align 8, !dbg !3591
  %23 = load i64, ptr %7, align 8, !dbg !3596
  %24 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3597
  %25 = icmp ult i64 %23, %24, !dbg !3598
  br i1 %25, label %30, label %26, !dbg !3599

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !3600
  %28 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3601
  %29 = icmp ugt i64 %27, %28, !dbg !3602
  br i1 %29, label %30, label %32, !dbg !3603

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #14, !dbg !3604
  br label %34, !dbg !3603

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !3605
  br label %34, !dbg !3603

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !3603
  ret i64 %35, !dbg !3606
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP11StringTokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !3607 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3611, metadata !DIExpression()), !dbg !3612
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3613, metadata !DIExpression()), !dbg !3614
  %5 = load ptr, ptr %3, align 8, !dbg !3615
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #14, !dbg !3616
  %7 = load ptr, ptr %6, align 8, !dbg !3616
  %8 = load ptr, ptr %4, align 8, !dbg !3617
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #14, !dbg !3618
  %10 = load ptr, ptr %9, align 8, !dbg !3618
  %11 = ptrtoint ptr %7 to i64, !dbg !3619
  %12 = ptrtoint ptr %10 to i64, !dbg !3619
  %13 = sub i64 %11, %12, !dbg !3619
  %14 = sdiv exact i64 %13, 16, !dbg !3619
  ret i64 %14, !dbg !3620
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 comdat align 2 !dbg !3621 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3623
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !3624
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !3625
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #14, !dbg !3626
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !3627
  %8 = load ptr, ptr %7, align 8, !dbg !3627
  ret ptr %8, !dbg !3627
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 !dbg !3628 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3629, metadata !DIExpression()), !dbg !3631
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3632
  ret ptr %4, !dbg !3633
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI11StringTokenEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #3 comdat align 2 !dbg !3634 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3641, metadata !DIExpression()), !dbg !3642
  %5 = load ptr, ptr %3, align 8, !dbg !3643
  %6 = load ptr, ptr %4, align 8, !dbg !3644
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) #14, !dbg !3645
  ret void, !dbg !3646
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat !dbg !3647 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3651, metadata !DIExpression()), !dbg !3652
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3653, metadata !DIExpression()), !dbg !3654
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3655, metadata !DIExpression()), !dbg !3656
  %7 = load ptr, ptr %4, align 8, !dbg !3657
  %8 = load ptr, ptr %5, align 8, !dbg !3658
  call void @_ZSt8_DestroyIP11StringTokenEvT_S2_(ptr noundef %7, ptr noundef %8), !dbg !3659
  ret void, !dbg !3660
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !3661 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3662, metadata !DIExpression()), !dbg !3664
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3665, metadata !DIExpression()), !dbg !3666
  %6 = load ptr, ptr %4, align 8, !dbg !3667
  %7 = load i64, ptr %6, align 8, !dbg !3667
  %8 = load ptr, ptr %5, align 8, !dbg !3669
  %9 = load i64, ptr %8, align 8, !dbg !3669
  %10 = icmp ult i64 %7, %9, !dbg !3670
  br i1 %10, label %11, label %13, !dbg !3671

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3672
  store ptr %12, ptr %3, align 8, !dbg !3673
  br label %15, !dbg !3673

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3674
  store ptr %14, ptr %3, align 8, !dbg !3675
  br label %15, !dbg !3675

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3676
  ret ptr %16, !dbg !3676
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !3677 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3678, metadata !DIExpression()), !dbg !3680
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3681, metadata !DIExpression()), !dbg !3682
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !3683
  %7 = load ptr, ptr %4, align 8, !dbg !3684
  %8 = load ptr, ptr %7, align 8, !dbg !3684
  store ptr %8, ptr %6, align 8, !dbg !3683
  ret void, !dbg !3685
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #3 comdat align 2 !dbg !3686 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3690, metadata !DIExpression()), !dbg !3691
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3693
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3694
  ret void, !dbg !3695
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP11StringTokenEvT_S2_(ptr noundef %0, ptr noundef %1) #0 comdat !dbg !3696 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3702
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3703, metadata !DIExpression()), !dbg !3704
  %5 = load ptr, ptr %3, align 8, !dbg !3705
  %6 = load ptr, ptr %4, align 8, !dbg !3706
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_(ptr noundef %5, ptr noundef %6), !dbg !3707
  ret void, !dbg !3708
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 !dbg !3709 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3713, metadata !DIExpression()), !dbg !3714
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3715, metadata !DIExpression()), !dbg !3716
  ret void, !dbg !3717
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #3 comdat align 2 !dbg !3718 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3719, metadata !DIExpression()), !dbg !3720
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3721, metadata !DIExpression()), !dbg !3722
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3723
  %9 = load ptr, ptr %8, align 8, !dbg !3723
  %10 = load i64, ptr %5, align 8, !dbg !3724
  %11 = sub i64 0, %10, !dbg !3725
  %12 = getelementptr inbounds %struct.StringToken, ptr %9, i64 %11, !dbg !3725
  store ptr %12, ptr %6, align 8, !dbg !3723
  call void @_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #14, !dbg !3726
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3727
  %14 = load ptr, ptr %13, align 8, !dbg !3727
  ret ptr %14, !dbg !3727
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 !dbg !3728 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3729, metadata !DIExpression()), !dbg !3730
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3731
  %5 = load ptr, ptr %4, align 8, !dbg !3731
  ret ptr %5, !dbg !3732
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 !dbg !3733 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3734, metadata !DIExpression()), !dbg !3735
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3736, metadata !DIExpression()), !dbg !3737
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3738
  %7 = load ptr, ptr %4, align 8, !dbg !3738
  %8 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3738
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3738
  ret void, !dbg !3739
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 !dbg !3740 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3741, metadata !DIExpression()), !dbg !3742
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3743, metadata !DIExpression()), !dbg !3744
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3745
  call void @_ZNSaI11StringTokenEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14, !dbg !3746
  %7 = load ptr, ptr %4, align 8, !dbg !3747
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3748
  ret void, !dbg !3749
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 !dbg !3750 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3751, metadata !DIExpression()), !dbg !3753
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3754, metadata !DIExpression()), !dbg !3755
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !3756
  %7 = load ptr, ptr %4, align 8, !dbg !3757
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3758
  %9 = load ptr, ptr %8, align 8, !dbg !3758
  store ptr %9, ptr %6, align 8, !dbg !3756
  %10 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !3759
  %11 = load ptr, ptr %4, align 8, !dbg !3760
  %12 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %11, i32 0, i32 1, !dbg !3761
  %13 = load ptr, ptr %12, align 8, !dbg !3761
  store ptr %13, ptr %10, align 8, !dbg !3759
  %14 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 2, !dbg !3762
  %15 = load ptr, ptr %4, align 8, !dbg !3763
  %16 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %15, i32 0, i32 2, !dbg !3764
  %17 = load ptr, ptr %16, align 8, !dbg !3764
  store ptr %17, ptr %14, align 8, !dbg !3762
  %18 = load ptr, ptr %4, align 8, !dbg !3765
  %19 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %18, i32 0, i32 2, !dbg !3767
  store ptr null, ptr %19, align 8, !dbg !3768
  %20 = load ptr, ptr %4, align 8, !dbg !3769
  %21 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !3770
  store ptr null, ptr %21, align 8, !dbg !3771
  %22 = load ptr, ptr %4, align 8, !dbg !3772
  %23 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %22, i32 0, i32 0, !dbg !3773
  store ptr null, ptr %23, align 8, !dbg !3774
  ret void, !dbg !3775
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !dbg !3776 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3777, metadata !DIExpression()), !dbg !3778
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3779, metadata !DIExpression()), !dbg !3780
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !3781
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3782 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3785
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3787
  %6 = load ptr, ptr %5, align 8, !dbg !3787
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3788
  %8 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !3789
  %9 = load ptr, ptr %8, align 8, !dbg !3789
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3790
  %11 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !3791
  %12 = load ptr, ptr %11, align 8, !dbg !3791
  %13 = ptrtoint ptr %9 to i64, !dbg !3792
  %14 = ptrtoint ptr %12 to i64, !dbg !3792
  %15 = sub i64 %13, %14, !dbg !3792
  %16 = sdiv exact i64 %15, 16, !dbg !3792
  invoke void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !3793

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3794
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #14, !dbg !3794
  ret void, !dbg !3795

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3793
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !3793
  call void @__clang_call_terminate(ptr %21) #15, !dbg !3793
  unreachable, !dbg !3793
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !3796 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3798, metadata !DIExpression()), !dbg !3799
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3800
  ret void, !dbg !3802
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3803 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3804, metadata !DIExpression()), !dbg !3805
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3806
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 comdat personality ptr @__gxx_personality_v0 !dbg !1181 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct._Save_errno, align 4
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %"struct.std::integral_constant", align 1
  %18 = alloca %"struct.std::is_same", align 1
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3807, metadata !DIExpression()), !dbg !3808
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3809, metadata !DIExpression()), !dbg !3810
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3811, metadata !DIExpression()), !dbg !3812
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3813, metadata !DIExpression()), !dbg !3814
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3819, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %13), !dbg !3823
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3824, metadata !DIExpression()), !dbg !3826
  %19 = load ptr, ptr %6, align 8, !dbg !3827
  %20 = load ptr, ptr %8, align 8, !dbg !3828
  %21 = load i32, ptr %10, align 4, !dbg !3829
  %22 = invoke noundef i64 %19(ptr noundef %20, ptr noundef %12, i32 noundef %21)
          to label %23 unwind label %30, !dbg !3827

23:                                               ; preds = %5
  store i64 %22, ptr %14, align 8, !dbg !3826
  %24 = load ptr, ptr %12, align 8, !dbg !3830
  %25 = load ptr, ptr %8, align 8, !dbg !3832
  %26 = icmp eq ptr %24, %25, !dbg !3833
  br i1 %26, label %27, label %34, !dbg !3834

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !dbg !3835
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef %28) #16
          to label %29 unwind label %30, !dbg !3836

29:                                               ; preds = %27
  unreachable, !dbg !3836

30:                                               ; preds = %44, %38, %27, %5
  %31 = landingpad { ptr, i32 }
          cleanup, !dbg !3837
  %32 = extractvalue { ptr, i32 } %31, 0, !dbg !3837
  store ptr %32, ptr %15, align 8, !dbg !3837
  %33 = extractvalue { ptr, i32 } %31, 1, !dbg !3837
  store i32 %33, ptr %16, align 4, !dbg !3837
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %13) #14, !dbg !3837
  br label %63, !dbg !3837

34:                                               ; preds = %23
  %35 = call ptr @__errno_location() #18, !dbg !3838
  %36 = load i32, ptr %35, align 4, !dbg !3838
  %37 = icmp eq i32 %36, 34, !dbg !3840
  br i1 %37, label %42, label %38, !dbg !3841

38:                                               ; preds = %34
  %39 = load i64, ptr %14, align 8, !dbg !3842
  %40 = invoke noundef zeroext i1 @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE(i64 noundef %39)
          to label %41 unwind label %30, !dbg !3843

41:                                               ; preds = %38
  br label %42, !dbg !3841

42:                                               ; preds = %41, %34
  %43 = phi i1 [ true, %34 ], [ %40, %41 ]
  br i1 %43, label %44, label %47, !dbg !3844

44:                                               ; preds = %42
  %45 = load ptr, ptr %7, align 8, !dbg !3845
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef %45) #16
          to label %46 unwind label %30, !dbg !3846

46:                                               ; preds = %44
  unreachable, !dbg !3846

47:                                               ; preds = %42
  %48 = load i64, ptr %14, align 8, !dbg !3847
  %49 = trunc i64 %48 to i32, !dbg !3847
  store i32 %49, ptr %11, align 4, !dbg !3848
  br label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %9, align 8, !dbg !3849
  %53 = icmp ne ptr %52, null, !dbg !3849
  br i1 %53, label %54, label %61, !dbg !3851

54:                                               ; preds = %51
  %55 = load ptr, ptr %12, align 8, !dbg !3852
  %56 = load ptr, ptr %8, align 8, !dbg !3853
  %57 = ptrtoint ptr %55 to i64, !dbg !3854
  %58 = ptrtoint ptr %56 to i64, !dbg !3854
  %59 = sub i64 %57, %58, !dbg !3854
  %60 = load ptr, ptr %9, align 8, !dbg !3855
  store i64 %59, ptr %60, align 8, !dbg !3856
  br label %61, !dbg !3857

61:                                               ; preds = %54, %51
  %62 = load i32, ptr %11, align 4, !dbg !3858
  call void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %13) #14, !dbg !3837
  ret i32 %62, !dbg !3837

63:                                               ; preds = %30
  %64 = load ptr, ptr %15, align 8, !dbg !3837
  %65 = load i32, ptr %16, align 4, !dbg !3837
  %66 = insertvalue { ptr, i32 } poison, ptr %64, 0, !dbg !3837
  %67 = insertvalue { ptr, i32 } %66, i32 %65, 1, !dbg !3837
  resume { ptr, i32 } %67, !dbg !3837
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #4 comdat align 2 !dbg !3859 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3860, metadata !DIExpression()), !dbg !3862
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._Save_errno, ptr %3, i32 0, i32 0, !dbg !3863
  %5 = call ptr @__errno_location() #18, !dbg !3864
  %6 = load i32, ptr %5, align 4, !dbg !3864
  store i32 %6, ptr %4, align 4, !dbg !3863
  %7 = call ptr @__errno_location() #18, !dbg !3865
  store i32 0, ptr %7, align 4, !dbg !3867
  ret void, !dbg !3868
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE(i64 noundef %0) #3 comdat align 2 !dbg !3869 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3878, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3880, metadata !DIExpression()), !dbg !3881
  %4 = load i64, ptr %3, align 8, !dbg !3882
  %5 = icmp slt i64 %4, -2147483648, !dbg !3883
  br i1 %5, label %9, label %6, !dbg !3884

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8, !dbg !3885
  %8 = icmp sgt i64 %7, 2147483647, !dbg !3886
  br label %9, !dbg !3884

9:                                                ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10, !dbg !3887
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #4 comdat align 2 !dbg !3888 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3889, metadata !DIExpression()), !dbg !3890
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @__errno_location() #18, !dbg !3891
  %5 = load i32, ptr %4, align 4, !dbg !3891
  %6 = icmp eq i32 %5, 0, !dbg !3894
  br i1 %6, label %7, label %11, !dbg !3895

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Save_errno, ptr %3, i32 0, i32 0, !dbg !3896
  %9 = load i32, ptr %8, align 4, !dbg !3896
  %10 = call ptr @__errno_location() #18, !dbg !3897
  store i32 %9, ptr %10, align 4, !dbg !3898
  br label %11, !dbg !3897

11:                                               ; preds = %7, %1
  ret void, !dbg !3899
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorI11StringTokenSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 !dbg !3900 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3903, metadata !DIExpression()), !dbg !3904
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3905
  %7 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !3906
  %8 = load ptr, ptr %7, align 8, !dbg !3906
  %9 = load i64, ptr %4, align 8, !dbg !3907
  %10 = getelementptr inbounds %struct.StringToken, ptr %8, i64 %9, !dbg !3908
  ret ptr %10, !dbg !3909
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11StringTokenSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #3 comdat align 2 !dbg !3910 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3911, metadata !DIExpression()), !dbg !3912
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3913, metadata !DIExpression()), !dbg !3914
  %7 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3915, metadata !DIExpression()), !dbg !3916
  store i8 1, ptr %5, align 1, !dbg !3916
  %8 = load ptr, ptr %4, align 8, !dbg !3917
  call void @_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3918
  ret ptr %7, !dbg !3919
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #3 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3920 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::allocator.4", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3921, metadata !DIExpression()), !dbg !3922
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3925, metadata !DIExpression()), !dbg !3926
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE13get_allocatorEv(ptr sret(%"class.std::allocator.4") align 1 %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3929
  call void @_ZNSt6vectorI11StringTokenSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #14, !dbg !3928
  call void @_ZNSaI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #14, !dbg !3928
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %8, i32 0, i32 0, !dbg !3930
  %10 = load ptr, ptr %5, align 8, !dbg !3931
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %10, i32 0, i32 0, !dbg !3932
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11) #14, !dbg !3933
  %12 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !3934
  %13 = load ptr, ptr %5, align 8, !dbg !3935
  %14 = getelementptr inbounds %"struct.std::_Vector_base", ptr %13, i32 0, i32 0, !dbg !3936
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14) #14, !dbg !3937
  %15 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #14, !dbg !3938
  %16 = load ptr, ptr %5, align 8, !dbg !3939
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #14, !dbg !3940
  invoke void @_ZSt15__alloc_on_moveISaI11StringTokenEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %18 unwind label %19, !dbg !3941

18:                                               ; preds = %2
  call void @_ZNSt6vectorI11StringTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #14, !dbg !3942
  ret void, !dbg !3942

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3941
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !3941
  call void @__clang_call_terminate(ptr %21) #15, !dbg !3941
  unreachable, !dbg !3941
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE13get_allocatorEv(ptr noalias sret(%"class.std::allocator.4") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #3 comdat align 2 !dbg !3943 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3944, metadata !DIExpression()), !dbg !3945
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !3946
  call void @_ZNSaI11StringTokenEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %6) #14, !dbg !3947
  ret void, !dbg !3948
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI11StringTokenSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !dbg !3949 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !3951
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3952, metadata !DIExpression()), !dbg !3953
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3954
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14, !dbg !3955
  ret void, !dbg !3956
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !3957 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3958, metadata !DIExpression()), !dbg !3959
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14, !dbg !3960
  ret void, !dbg !3962
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #3 comdat align 2 !dbg !3963 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3964, metadata !DIExpression()), !dbg !3965
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3968, metadata !DIExpression()), !dbg !3969
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !3969
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14, !dbg !3970
  %7 = load ptr, ptr %4, align 8, !dbg !3971
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #14, !dbg !3972
  %8 = load ptr, ptr %4, align 8, !dbg !3973
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !3974
  ret void, !dbg !3975
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaI11StringTokenEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #3 comdat !dbg !3976 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3977, metadata !DIExpression()), !dbg !3978
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3979, metadata !DIExpression()), !dbg !3980
  %5 = load ptr, ptr %4, align 8, !dbg !3981
  %6 = load ptr, ptr %3, align 8, !dbg !3983
  ret void, !dbg !3984
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI11StringTokenEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !dbg !3985 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3986, metadata !DIExpression()), !dbg !3987
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3990
  call void @_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14, !dbg !3991
  ret void, !dbg !3992
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !dbg !3993 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3995
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !3997
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3998
  %7 = load ptr, ptr %4, align 8, !dbg !3999
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #14, !dbg !3998
  ret void, !dbg !4000
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !dbg !4001 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4002, metadata !DIExpression()), !dbg !4003
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4004, metadata !DIExpression()), !dbg !4005
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4006
  call void @_ZNSaI11StringTokenEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14, !dbg !4007
  call void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14, !dbg !4008
  ret void, !dbg !4009
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !dbg !4010 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !4013
  store ptr null, ptr %4, align 8, !dbg !4013
  %5 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !4014
  store ptr null, ptr %5, align 8, !dbg !4014
  %6 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !4015
  store ptr null, ptr %6, align 8, !dbg !4015
  ret void, !dbg !4016
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #3 comdat align 2 !dbg !4017 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4018, metadata !DIExpression()), !dbg !4019
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4020, metadata !DIExpression()), !dbg !4021
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4022
  %7 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !4023
  %8 = load ptr, ptr %7, align 8, !dbg !4023
  %9 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !4024
  store ptr %8, ptr %9, align 8, !dbg !4025
  %10 = load ptr, ptr %4, align 8, !dbg !4026
  %11 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %10, i32 0, i32 1, !dbg !4027
  %12 = load ptr, ptr %11, align 8, !dbg !4027
  %13 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !4028
  store ptr %12, ptr %13, align 8, !dbg !4029
  %14 = load ptr, ptr %4, align 8, !dbg !4030
  %15 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %14, i32 0, i32 2, !dbg !4031
  %16 = load ptr, ptr %15, align 8, !dbg !4031
  %17 = getelementptr inbounds %"struct.std::_Vector_base<StringToken, std::allocator<StringToken>>::_Vector_impl_data", ptr %5, i32 0, i32 2, !dbg !4032
  store ptr %16, ptr %17, align 8, !dbg !4033
  ret void, !dbg !4034
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJRiS8_RS5_ELb1ELb1EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #13 comdat align 2 !dbg !4035 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4043, metadata !DIExpression()), !dbg !4045
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4046, metadata !DIExpression()), !dbg !4047
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4048, metadata !DIExpression()), !dbg !4047
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4049, metadata !DIExpression()), !dbg !4047
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8, !dbg !4050
  %11 = load ptr, ptr %7, align 8, !dbg !4050
  %12 = load ptr, ptr %8, align 8, !dbg !4050
  call void @_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJS8_RS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 8 dereferenceable(32) %12), !dbg !4051
  ret void, !dbg !4052
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJS8_RS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4053 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4062, metadata !DIExpression()), !dbg !4064
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4065, metadata !DIExpression()), !dbg !4066
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4067, metadata !DIExpression()), !dbg !4068
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4069, metadata !DIExpression()), !dbg !4068
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %7, align 8, !dbg !4070
  %13 = load ptr, ptr %8, align 8, !dbg !4070
  call void @_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 8 dereferenceable(32) %13), !dbg !4071
  %14 = getelementptr inbounds i8, ptr %11, i64 36, !dbg !4072
  %15 = load ptr, ptr %6, align 8, !dbg !4073
  invoke void @_ZNSt10_Head_baseILm0EiLb0EEC2IRiEEOT_(ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %15)
          to label %16 unwind label %17, !dbg !4074

16:                                               ; preds = %4
  ret void, !dbg !4075

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !4075
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !4075
  store ptr %19, ptr %9, align 8, !dbg !4075
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !4075
  store i32 %20, ptr %10, align 4, !dbg !4075
  call void @_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %11) #14, !dbg !4076
  br label %21, !dbg !4076

21:                                               ; preds = %17
  %22 = load ptr, ptr %9, align 8, !dbg !4076
  %23 = load i32, ptr %10, align 4, !dbg !4076
  %24 = insertvalue { ptr, i32 } poison, ptr %22, 0, !dbg !4076
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1, !dbg !4076
  resume { ptr, i32 } %25, !dbg !4076
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !4078 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4085, metadata !DIExpression()), !dbg !4087
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4088, metadata !DIExpression()), !dbg !4089
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4090, metadata !DIExpression()), !dbg !4091
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8, !dbg !4092
  call void @_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10), !dbg !4093
  %11 = getelementptr inbounds i8, ptr %9, i64 32, !dbg !4094
  %12 = load ptr, ptr %5, align 8, !dbg !4095
  invoke void @_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %13 unwind label %14, !dbg !4096

13:                                               ; preds = %3
  ret void, !dbg !4097

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup, !dbg !4097
  %16 = extractvalue { ptr, i32 } %15, 0, !dbg !4097
  store ptr %16, ptr %7, align 8, !dbg !4097
  %17 = extractvalue { ptr, i32 } %15, 1, !dbg !4097
  store i32 %17, ptr %8, align 4, !dbg !4097
  call void @_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14, !dbg !4098
  br label %18, !dbg !4098

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !dbg !4098
  %20 = load i32, ptr %8, align 4, !dbg !4098
  %21 = insertvalue { ptr, i32 } poison, ptr %19, 0, !dbg !4098
  %22 = insertvalue { ptr, i32 } %21, i32 %20, 1, !dbg !4098
  resume { ptr, i32 } %22, !dbg !4098
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EiLb0EEC2IRiEEOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 comdat align 2 !dbg !4100 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4105, metadata !DIExpression()), !dbg !4107
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4108, metadata !DIExpression()), !dbg !4109
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base.3", ptr %5, i32 0, i32 0, !dbg !4110
  %7 = load ptr, ptr %4, align 8, !dbg !4111
  %8 = load i32, ptr %7, align 4, !dbg !4112
  store i32 %8, ptr %6, align 4, !dbg !4110
  ret void, !dbg !4113
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 !dbg !4114 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4117
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14, !dbg !4118
  ret void, !dbg !4120
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #13 comdat align 2 !dbg !4121 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4127, metadata !DIExpression()), !dbg !4129
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4130, metadata !DIExpression()), !dbg !4131
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4132
  call void @_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRS5_EEOT_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !dbg !4133
  ret void, !dbg !4134
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #4 comdat align 2 !dbg !4135 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4139, metadata !DIExpression()), !dbg !4141
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4142, metadata !DIExpression()), !dbg !4143
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base.2", ptr %5, i32 0, i32 0, !dbg !4144
  %7 = load ptr, ptr %4, align 8, !dbg !4145
  %8 = load i32, ptr %7, align 4, !dbg !4146
  store i32 %8, ptr %6, align 4, !dbg !4144
  ret void, !dbg !4147
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !dbg !4148 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4151
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14, !dbg !4152
  ret void, !dbg !4154
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRS5_EEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #13 comdat align 2 !dbg !4155 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4159, metadata !DIExpression()), !dbg !4161
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4162, metadata !DIExpression()), !dbg !4163
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base", ptr %5, i32 0, i32 0, !dbg !4164
  %7 = load ptr, ptr %4, align 8, !dbg !4165
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7), !dbg !4164
  ret void, !dbg !4166
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !dbg !4167 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4170
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base", ptr %3, i32 0, i32 0, !dbg !4171
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14, !dbg !4171
  ret void, !dbg !4173
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 !dbg !4174 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4183, metadata !DIExpression()), !dbg !4185
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4186, metadata !DIExpression()), !dbg !4187
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4188, metadata !DIExpression()), !dbg !4189
  %9 = call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14, !dbg !4190
  %10 = call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14, !dbg !4191
  %11 = load ptr, ptr %5, align 8, !dbg !4192
  %12 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(32) %11), !dbg !4193
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %6, i32 0, i32 0, !dbg !4193
  store ptr %12, ptr %13, align 8, !dbg !4193
  %14 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14, !dbg !4194
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %7, i32 0, i32 0, !dbg !4194
  store ptr %14, ptr %15, align 8, !dbg !4194
  %16 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #14, !dbg !4195
  br i1 %16, label %25, label %17, !dbg !4196

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::_Rb_tree", ptr %8, i32 0, i32 0, !dbg !4197
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", ptr %18, i32 0, i32 0, !dbg !4198
  %20 = load ptr, ptr %5, align 8, !dbg !4199
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %6, i32 0, i32 0, !dbg !4200
  %22 = load ptr, ptr %21, align 8, !dbg !4200
  %23 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %22), !dbg !4201
  %24 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %23), !dbg !4197
  br i1 %24, label %25, label %28, !dbg !4202

25:                                               ; preds = %17, %2
  %26 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14, !dbg !4203
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !4203
  store ptr %26, ptr %27, align 8, !dbg !4203
  br label %29, !dbg !4202

28:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 8, i1 false), !dbg !4204
  br label %29, !dbg !4202

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %3, i32 0, i32 0, !dbg !4205
  %31 = load ptr, ptr %30, align 8, !dbg !4205
  ret ptr %31, !dbg !4205
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #0 comdat align 2 !dbg !4206 {
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4211, metadata !DIExpression()), !dbg !4212
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4213, metadata !DIExpression()), !dbg !4214
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4215, metadata !DIExpression()), !dbg !4216
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4217, metadata !DIExpression()), !dbg !4218
  %10 = load ptr, ptr %6, align 8
  br label %11, !dbg !4219

11:                                               ; preds = %28, %4
  %12 = load ptr, ptr %7, align 8, !dbg !4220
  %13 = icmp ne ptr %12, null, !dbg !4221
  br i1 %13, label %14, label %29, !dbg !4219

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree", ptr %10, i32 0, i32 0, !dbg !4222
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", ptr %15, i32 0, i32 0, !dbg !4224
  %17 = load ptr, ptr %7, align 8, !dbg !4225
  %18 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %17), !dbg !4226
  %19 = load ptr, ptr %9, align 8, !dbg !4227
  %20 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19), !dbg !4222
  br i1 %20, label %25, label %21, !dbg !4228

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 8, !dbg !4229
  store ptr %22, ptr %8, align 8, !dbg !4230
  %23 = load ptr, ptr %7, align 8, !dbg !4231
  %24 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %23) #14, !dbg !4232
  store ptr %24, ptr %7, align 8, !dbg !4233
  br label %28, !dbg !4234

25:                                               ; preds = %14
  %26 = load ptr, ptr %7, align 8, !dbg !4235
  %27 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %26) #14, !dbg !4236
  store ptr %27, ptr %7, align 8, !dbg !4237
  br label %28

28:                                               ; preds = %25, %21
  br label %11, !dbg !4219, !llvm.loop !4238

29:                                               ; preds = %11
  %30 = load ptr, ptr %8, align 8, !dbg !4240
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %30) #14, !dbg !4241
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !4242
  %32 = load ptr, ptr %31, align 8, !dbg !4242
  ret ptr %32, !dbg !4242
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #3 comdat align 2 !dbg !4243 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4247, metadata !DIExpression()), !dbg !4248
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", ptr %3, i32 0, i32 0, !dbg !4249
  %5 = getelementptr inbounds i8, ptr %4, i64 8, !dbg !4250
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %5, i32 0, i32 0, !dbg !4251
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %6, i32 0, i32 1, !dbg !4252
  %8 = load ptr, ptr %7, align 8, !dbg !4252
  ret ptr %8, !dbg !4253
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #3 comdat align 2 !dbg !4254 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4258, metadata !DIExpression()), !dbg !4259
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", ptr %3, i32 0, i32 0, !dbg !4260
  %5 = getelementptr inbounds i8, ptr %4, i64 8, !dbg !4261
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %5, i32 0, i32 0, !dbg !4262
  ret ptr %6, !dbg !4263
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat !dbg !4264 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4265, metadata !DIExpression()), !dbg !4266
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4267, metadata !DIExpression()), !dbg !4268
  %5 = load ptr, ptr %3, align 8, !dbg !4269
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !4270
  %7 = load ptr, ptr %6, align 8, !dbg !4270
  %8 = load ptr, ptr %4, align 8, !dbg !4271
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %8, i32 0, i32 0, !dbg !4272
  %10 = load ptr, ptr %9, align 8, !dbg !4272
  %11 = icmp eq ptr %7, %10, !dbg !4273
  ret i1 %11, !dbg !4274
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #3 comdat align 2 !dbg !4275 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4279, metadata !DIExpression()), !dbg !4280
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", ptr %4, i32 0, i32 0, !dbg !4281
  %6 = getelementptr inbounds i8, ptr %5, i64 8, !dbg !4282
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %6, i32 0, i32 0, !dbg !4283
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %7) #14, !dbg !4284
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %2, i32 0, i32 0, !dbg !4285
  %9 = load ptr, ptr %8, align 8, !dbg !4285
  ret ptr %9, !dbg !4285
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #3 comdat align 2 !dbg !4286 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4303, metadata !DIExpression()), !dbg !4305
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4306, metadata !DIExpression()), !dbg !4307
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4308, metadata !DIExpression()), !dbg !4309
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !4310
  %9 = load ptr, ptr %6, align 8, !dbg !4311
  %10 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #14, !dbg !4312
  ret i1 %10, !dbg !4313
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) #0 comdat align 2 !dbg !4314 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4318, metadata !DIExpression()), !dbg !4319
  %3 = load ptr, ptr %2, align 8, !dbg !4320
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %3), !dbg !4321
  ret ptr %4, !dbg !4322
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %0) #0 comdat align 2 !dbg !4323 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Select1st", align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4327, metadata !DIExpression()), !dbg !4328
  %4 = load ptr, ptr %2, align 8, !dbg !4329
  %5 = call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %4), !dbg !4330
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(36) %5), !dbg !4331
  ret ptr %6, !dbg !4332
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %0) #3 comdat align 2 !dbg !4333 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4337, metadata !DIExpression()), !dbg !4338
  %3 = load ptr, ptr %2, align 8, !dbg !4339
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i32 0, i32 2, !dbg !4340
  %5 = load ptr, ptr %4, align 8, !dbg !4340
  ret ptr %5, !dbg !4341
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %0) #3 comdat align 2 !dbg !4342 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4344, metadata !DIExpression()), !dbg !4345
  %3 = load ptr, ptr %2, align 8, !dbg !4346
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i32 0, i32 3, !dbg !4347
  %5 = load ptr, ptr %4, align 8, !dbg !4347
  ret ptr %5, !dbg !4348
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !dbg !4349 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4350, metadata !DIExpression()), !dbg !4352
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4353, metadata !DIExpression()), !dbg !4354
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", ptr %5, i32 0, i32 0, !dbg !4355
  %7 = load ptr, ptr %4, align 8, !dbg !4356
  store ptr %7, ptr %6, align 8, !dbg !4355
  ret void, !dbg !4357
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #3 comdat align 2 !dbg !4358 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4380, metadata !DIExpression()), !dbg !4382
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4383, metadata !DIExpression()), !dbg !4384
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !4385
  %7 = getelementptr inbounds %"struct.std::pair", ptr %6, i32 0, i32 0, !dbg !4386
  ret ptr %7, !dbg !4387
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #3 comdat align 2 !dbg !4388 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4389, metadata !DIExpression()), !dbg !4390
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i32 0, i32 1, !dbg !4391
  %5 = call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14, !dbg !4392
  ret ptr %5, !dbg !4393
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 !dbg !4394 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4395, metadata !DIExpression()), !dbg !4397
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #14, !dbg !4398
  ret ptr %4, !dbg !4399
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 !dbg !4400 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4401, metadata !DIExpression()), !dbg !4402
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", ptr %3, i32 0, i32 0, !dbg !4403
  ret ptr %4, !dbg !4404
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #3 comdat personality ptr @__gxx_personality_v0 !dbg !4405 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4463, metadata !DIExpression()), !dbg !4464
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4465, metadata !DIExpression()), !dbg !4466
  %5 = load ptr, ptr %3, align 8, !dbg !4467
  %6 = load ptr, ptr %4, align 8, !dbg !4468
  %7 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %8 unwind label %10, !dbg !4469

8:                                                ; preds = %2
  %9 = icmp slt i32 %7, 0, !dbg !4470
  ret i1 %9, !dbg !4471

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !4469
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !4469
  call void @__clang_call_terminate(ptr %12) #15, !dbg !4469
  unreachable, !dbg !4469
}

declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!25}
!llvm.module.flags = !{!2228, !2229, !2230, !2231, !2232, !2233, !2234}
!llvm.ident = !{!2235}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/Protocol.cpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "a66bf462960b8024435d4007b86b705e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 3)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !10, line: 70, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 16)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !10, line: 436, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 26)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !21, line: 6620, type: !22, isLocal: true, isDefinition: true)
!21 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.h", directory: "")
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 5)
!25 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !41, globals: !1212, imports: !1213, splitDebugInlining: false, nameTableKind: None)
!26 = !{!27, !35}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !29, file: !28, line: 49, baseType: !30, size: 32, elements: !31, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!28 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/concurrence.h", directory: "")
!29 = !DINamespace(name: "__gnu_cxx", scope: null)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Rb_tree_color", scope: !37, file: !36, line: 99, baseType: !30, size: 32, elements: !38, identifier: "_ZTSSt14_Rb_tree_color")
!36 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_tree.h", directory: "")
!37 = !DINamespace(name: "std", scope: null)
!38 = !{!39, !40}
!39 = !DIEnumerator(name: "_S_red", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "_S_black", value: 1, isUnsigned: true)
!41 = !{!42, !45, !47, !49, !62, !652, !395, !396, !441, !245, !653, !772, !785, !834, !835, !859, !889, !925, !960, !1007, !1038, !1084, !726, !50, !64, !459, !67, !70, !89, !95, !188, !1117, !1179, !1203, !707, !703, !792, !655}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !37, file: !43, line: 280, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !46, line: 424, baseType: !42, flags: DIFlagPublic)
!46 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StringToken", file: !51, line: 17, size: 128, flags: DIFlagTypePassByValue, elements: !52, identifier: "_ZTS11StringToken")
!51 = !DIFile(filename: "./common/StringVector.hpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "5dbd2cdb2741bf0e62e923dbf85e8d86")
!52 = !{!53, !54, !55, !59}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !50, file: !51, line: 19, baseType: !42, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_length", scope: !50, file: !51, line: 20, baseType: !42, size: 64, offset: 64)
!55 = !DISubprogram(name: "StringToken", scope: !50, file: !51, line: 22, type: !56, scopeLine: 22, flags: DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DISubprogram(name: "StringToken", scope: !50, file: !51, line: 24, type: !60, scopeLine: 24, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !58, !42, !42}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !63, file: !46, line: 468, baseType: !651)
!63 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_", scope: !64, file: !46, line: 465, type: !328, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !327, retainedNodes: !185)
!64 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<StringToken, std::allocator<StringToken> >", scope: !37, file: !46, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !65, templateParams: !649, identifier: "_ZTSSt6vectorI11StringTokenSaIS0_EE")
!65 = !{!66, !282, !301, !317, !318, !324, !327, !330, !334, !340, !343, !349, !354, !358, !361, !364, !367, !370, !375, !376, !380, !383, !386, !389, !392, !455, !513, !514, !515, !520, !525, !526, !527, !528, !529, !530, !531, !534, !535, !538, !539, !540, !541, !544, !545, !553, !560, !563, !564, !565, !568, !571, !572, !573, !576, !579, !582, !586, !587, !590, !593, !596, !599, !602, !605, !608, !609, !610, !611, !612, !615, !616, !619, !620, !621, !626, !629, !634, !637, !640, !643, !646}
!66 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !64, baseType: !67, flags: DIFlagProtected, extraData: i32 0)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<StringToken, std::allocator<StringToken> >", scope: !37, file: !46, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !68, templateParams: !281, identifier: "_ZTSSt12_Vector_baseI11StringTokenSaIS0_EE")
!68 = !{!69, !232, !237, !242, !246, !249, !254, !257, !260, !264, !267, !270, !273, !274, !277, !280}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !67, file: !46, line: 340, baseType: !70, size: 192)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !67, file: !46, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !71, identifier: "_ZTSNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implE")
!71 = !{!72, !187, !212, !216, !221, !225, !229}
!72 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !70, baseType: !73, extraData: i32 0)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !67, file: !46, line: 87, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !76, file: !75, line: 120, baseType: !186)
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<StringToken>", scope: !77, file: !75, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !134, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E6rebindIS1_EE")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<StringToken>, StringToken>", scope: !29, file: !75, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !78, templateParams: !183, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_EE")
!78 = !{!79, !169, !172, !175, !179, !180, !181, !182}
!79 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !77, baseType: !80, extraData: i32 0)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<StringToken> >", scope: !37, file: !81, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !82, templateParams: !167, identifier: "_ZTSSt16allocator_traitsISaI11StringTokenEE")
!81 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!82 = !{!83, !151, !155, !158, !164}
!83 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m", scope: !80, file: !81, line: 463, type: !84, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !87, !150}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !80, file: !81, line: 420, baseType: !49)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !80, file: !81, line: 414, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<StringToken>", scope: !37, file: !90, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !91, templateParams: !134, identifier: "_ZTSSaI11StringTokenE")
!90 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!91 = !{!92, !136, !140, !145, !149}
!92 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !89, baseType: !93, flags: DIFlagPublic, extraData: i32 0)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<StringToken>", scope: !37, file: !94, line: 48, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!95 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<StringToken>", scope: !29, file: !96, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !97, templateParams: !134, identifier: "_ZTSN9__gnu_cxx13new_allocatorI11StringTokenEE")
!96 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!97 = !{!98, !102, !107, !108, !115, !123, !127, !130, !133}
!98 = !DISubprogram(name: "new_allocator", scope: !95, file: !96, line: 79, type: !99, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "new_allocator", scope: !95, file: !96, line: 82, type: !103, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !101, !105}
!105 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!107 = !DISubprogram(name: "~new_allocator", scope: !95, file: !96, line: 89, type: !99, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!108 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE7addressERS1_", scope: !95, file: !96, line: 92, type: !109, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !95, file: !96, line: 62, baseType: !49, flags: DIFlagPublic)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !95, file: !96, line: 64, baseType: !114, flags: DIFlagPublic)
!114 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 64)
!115 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE7addressERKS1_", scope: !95, file: !96, line: 96, type: !116, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !112, !121}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !95, file: !96, line: 63, baseType: !119, flags: DIFlagPublic)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !95, file: !96, line: 65, baseType: !122, flags: DIFlagPublic)
!122 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !120, size: 64)
!123 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE8allocateEmPKv", scope: !95, file: !96, line: 103, type: !124, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!49, !101, !126, !47}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !96, line: 59, baseType: !42, flags: DIFlagPublic)
!127 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m", scope: !95, file: !96, line: 132, type: !128, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !101, !49, !126}
!130 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE8max_sizeEv", scope: !95, file: !96, line: 154, type: !131, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!126, !112}
!133 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv", scope: !95, file: !96, line: 197, type: !131, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!134 = !{!135}
!135 = !DITemplateTypeParameter(name: "_Tp", type: !50)
!136 = !DISubprogram(name: "allocator", scope: !89, file: !90, line: 156, type: !137, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!140 = !DISubprogram(name: "allocator", scope: !89, file: !90, line: 159, type: !141, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !139, !143}
!143 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZNSaI11StringTokenEaSERKS0_", scope: !89, file: !90, line: 164, type: !146, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !139, !143}
!148 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !89, size: 64)
!149 = !DISubprogram(name: "~allocator", scope: !89, file: !90, line: 174, type: !137, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !81, line: 435, baseType: !42)
!151 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_mPKv", scope: !80, file: !81, line: 477, type: !152, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!86, !87, !150, !154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !81, line: 429, baseType: !47)
!155 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m", scope: !80, file: !81, line: 495, type: !156, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !87, !86, !150}
!158 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_", scope: !80, file: !81, line: 547, type: !159, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !80, file: !81, line: 435, baseType: !42)
!162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!164 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE37select_on_container_copy_constructionERKS1_", scope: !80, file: !81, line: 562, type: !165, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!88, !162}
!167 = !{!168}
!168 = !DITemplateTypeParameter(name: "_Alloc", type: !89)
!169 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E17_S_select_on_copyERKS2_", scope: !77, file: !75, line: 97, type: !170, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!89, !143}
!172 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E10_S_on_swapERS2_S4_", scope: !77, file: !75, line: 100, type: !173, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !148, !148}
!175 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E27_S_propagate_on_copy_assignEv", scope: !77, file: !75, line: 103, type: !176, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!178}
!178 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!179 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E27_S_propagate_on_move_assignEv", scope: !77, file: !75, line: 106, type: !176, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!180 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E20_S_propagate_on_swapEv", scope: !77, file: !75, line: 109, type: !176, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!181 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E15_S_always_equalEv", scope: !77, file: !75, line: 112, type: !176, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!182 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaI11StringTokenES1_E15_S_nothrow_moveEv", scope: !77, file: !75, line: 115, type: !176, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!183 = !{!168, !184}
!184 = !DITemplateTypeParameter(type: !50)
!185 = !{}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<StringToken>", scope: !80, file: !81, line: 450, baseType: !89)
!187 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !70, baseType: !188, extraData: i32 0)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !67, file: !46, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !189, identifier: "_ZTSNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataE")
!189 = !{!190, !193, !194, !195, !199, !203, !208}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !188, file: !46, line: 93, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !67, file: !46, line: 89, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !77, file: !75, line: 57, baseType: !86)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !188, file: !46, line: 94, baseType: !191, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !188, file: !46, line: 95, baseType: !191, size: 64, offset: 128)
!195 = !DISubprogram(name: "_Vector_impl_data", scope: !188, file: !46, line: 97, type: !196, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DISubprogram(name: "_Vector_impl_data", scope: !188, file: !46, line: 102, type: !200, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !198, !202}
!202 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !188, size: 64)
!203 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_", scope: !188, file: !46, line: 109, type: !204, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !198, !206}
!206 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!208 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_", scope: !188, file: !46, line: 117, type: !209, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !198, !211}
!211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !188, size: 64)
!212 = !DISubprogram(name: "_Vector_impl", scope: !70, file: !46, line: 131, type: !213, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!216 = !DISubprogram(name: "_Vector_impl", scope: !70, file: !46, line: 136, type: !217, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !215, !219}
!219 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!221 = !DISubprogram(name: "_Vector_impl", scope: !70, file: !46, line: 143, type: !222, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !215, !224}
!224 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !70, size: 64)
!225 = !DISubprogram(name: "_Vector_impl", scope: !70, file: !46, line: 147, type: !226, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !215, !228}
!228 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !73, size: 64)
!229 = !DISubprogram(name: "_Vector_impl", scope: !70, file: !46, line: 151, type: !230, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !215, !228, !224}
!232 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !67, file: !46, line: 276, type: !233, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !67, file: !46, line: 280, type: !238, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!219, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!242 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE13get_allocatorEv", scope: !67, file: !46, line: 284, type: !243, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !240}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !67, file: !46, line: 273, baseType: !89)
!246 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 288, type: !247, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !236}
!249 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 293, type: !250, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !236, !252}
!252 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!254 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 298, type: !255, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !236, !42}
!257 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 303, type: !258, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !236, !42, !252}
!260 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 308, type: !261, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !236, !263}
!263 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !67, size: 64)
!264 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 312, type: !265, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !236, !228}
!267 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 315, type: !268, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !236, !263, !252}
!270 = !DISubprogram(name: "_Vector_base", scope: !67, file: !46, line: 328, type: !271, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !236, !252, !263}
!273 = !DISubprogram(name: "~_Vector_base", scope: !67, file: !46, line: 333, type: !247, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm", scope: !67, file: !46, line: 343, type: !275, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!191, !236, !42}
!277 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m", scope: !67, file: !46, line: 350, type: !278, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !236, !191, !42}
!280 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_M_create_storageEm", scope: !67, file: !46, line: 359, type: !255, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!281 = !{!135, !168}
!282 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !64, file: !46, line: 431, type: !283, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{!178, !285}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !37, file: !286, line: 83, baseType: !287)
!286 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !37, file: !286, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !288, templateParams: !298, identifier: "_ZTSSt17integral_constantIbLb1EE")
!288 = !{!289, !291, !297}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !286, line: 67, baseType: !290, flags: DIFlagStaticMember, extraData: i1 true)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!291 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !287, file: !286, line: 70, type: !292, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !287, file: !286, line: 68, baseType: !178)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!297 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !287, file: !286, line: 75, type: !292, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!298 = !{!299, !300}
!299 = !DITemplateTypeParameter(name: "_Tp", type: !178)
!300 = !DITemplateValueParameter(name: "__v", type: !178, value: i1 true)
!301 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !64, file: !46, line: 440, type: !302, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!178, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !37, file: !286, line: 86, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !37, file: !286, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !306, templateParams: !315, identifier: "_ZTSSt17integral_constantIbLb0EE")
!306 = !{!307, !308, !314}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !286, line: 67, baseType: !290, flags: DIFlagStaticMember, extraData: i1 false)
!308 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !305, file: !286, line: 70, type: !309, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !305, file: !286, line: 68, baseType: !178)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!314 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !305, file: !286, line: 75, type: !309, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!315 = !{!299, !316}
!316 = !DITemplateValueParameter(name: "__v", type: !178, value: i1 false)
!317 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE15_S_use_relocateEv", scope: !64, file: !46, line: 444, type: !176, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!318 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE", scope: !64, file: !46, line: 453, type: !319, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !321, !321, !321, !322, !285}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !64, file: !46, line: 415, baseType: !191, flags: DIFlagPublic)
!322 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !64, file: !46, line: 410, baseType: !73)
!324 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb0EE", scope: !64, file: !46, line: 460, type: !325, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!321, !321, !321, !321, !322, !304}
!327 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_", scope: !64, file: !46, line: 465, type: !328, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!321, !321, !321, !321, !322}
!330 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 487, type: !331, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 497, type: !335, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !333, !337}
!337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !64, file: !46, line: 426, baseType: !89, flags: DIFlagPublic)
!340 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 510, type: !341, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !333, !45, !337}
!343 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 522, type: !344, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !333, !45, !346, !337}
!346 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !64, file: !46, line: 414, baseType: !50, flags: DIFlagPublic)
!349 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 553, type: !350, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !333, !352}
!352 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!354 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 572, type: !355, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !333, !357}
!357 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !64, size: 64)
!358 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 575, type: !359, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !333, !352, !337}
!361 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 585, type: !362, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !333, !357, !337, !285}
!364 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 589, type: !365, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !333, !357, !337, !304}
!367 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 607, type: !368, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !333, !357, !337}
!370 = !DISubprogram(name: "vector", scope: !64, file: !46, line: 625, type: !371, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !333, !373, !337}
!373 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<StringToken>", scope: !37, file: !374, line: 47, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listI11StringTokenE")
!374 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!375 = !DISubprogram(name: "~vector", scope: !64, file: !46, line: 678, type: !331, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!376 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEaSERKS2_", scope: !64, file: !46, line: 695, type: !377, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !333, !352}
!379 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !64, size: 64)
!380 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEaSEOS2_", scope: !64, file: !46, line: 709, type: !381, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!379, !333, !357}
!383 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEaSESt16initializer_listIS0_E", scope: !64, file: !46, line: 730, type: !384, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!379, !333, !373}
!386 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6assignEmRKS0_", scope: !64, file: !46, line: 749, type: !387, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !333, !45, !346}
!389 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6assignESt16initializer_listIS0_E", scope: !64, file: !46, line: 794, type: !390, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !333, !373}
!392 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv", scope: !64, file: !46, line: 811, type: !393, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !333}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !64, file: !46, line: 419, baseType: !396, flags: DIFlagPublic)
!396 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<StringToken *, std::vector<StringToken, std::allocator<StringToken> > >", scope: !29, file: !397, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !398, templateParams: !453, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEE")
!397 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!398 = !{!399, !400, !404, !409, !420, !425, !429, !433, !434, !435, !442, !445, !448, !449, !450}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !396, file: !397, line: 1007, baseType: !49, size: 64, flags: DIFlagProtected)
!400 = !DISubprogram(name: "__normal_iterator", scope: !396, file: !397, line: 1023, type: !401, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!404 = !DISubprogram(name: "__normal_iterator", scope: !396, file: !397, line: 1027, type: !405, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !403, !407}
!407 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!409 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv", scope: !396, file: !397, line: 1042, type: !410, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !418}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !396, file: !397, line: 1016, baseType: !413, flags: DIFlagPublic)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !415, file: !414, line: 216, baseType: !114)
!414 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<StringToken *>", scope: !37, file: !414, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !416, identifier: "_ZTSSt15iterator_traitsIP11StringTokenE")
!416 = !{!417}
!417 = !DITemplateTypeParameter(name: "_Iterator", type: !49)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!420 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEptEv", scope: !396, file: !397, line: 1047, type: !421, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !418}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !396, file: !397, line: 1017, baseType: !424, flags: DIFlagPublic)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !415, file: !414, line: 215, baseType: !49)
!425 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEv", scope: !396, file: !397, line: 1052, type: !426, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !403}
!428 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !396, size: 64)
!429 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEppEi", scope: !396, file: !397, line: 1060, type: !430, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!396, !403, !432}
!432 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!433 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmmEv", scope: !396, file: !397, line: 1066, type: !426, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!434 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmmEi", scope: !396, file: !397, line: 1074, type: !430, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEixEl", scope: !396, file: !397, line: 1080, type: !436, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{!412, !418, !438}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !396, file: !397, line: 1015, baseType: !439, flags: DIFlagPublic)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !415, file: !414, line: 214, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !37, file: !43, line: 281, baseType: !441)
!441 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!442 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEpLEl", scope: !396, file: !397, line: 1085, type: !443, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!428, !403, !438}
!445 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEplEl", scope: !396, file: !397, line: 1090, type: !446, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!396, !418, !438}
!448 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmIEl", scope: !396, file: !397, line: 1095, type: !443, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!449 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl", scope: !396, file: !397, line: 1100, type: !446, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!450 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv", scope: !396, file: !397, line: 1105, type: !451, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!407, !418}
!453 = !{!417, !454}
!454 = !DITemplateTypeParameter(name: "_Container", type: !64)
!455 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE5beginEv", scope: !64, file: !46, line: 820, type: !456, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !512}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !64, file: !46, line: 421, baseType: !459, flags: DIFlagPublic)
!459 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const StringToken *, std::vector<StringToken, std::allocator<StringToken> > >", scope: !29, file: !397, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !460, templateParams: !511, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEE")
!460 = !{!461, !462, !466, !471, !481, !486, !490, !493, !494, !495, !500, !503, !506, !507, !508}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !459, file: !397, line: 1007, baseType: !119, size: 64, flags: DIFlagProtected)
!462 = !DISubprogram(name: "__normal_iterator", scope: !459, file: !397, line: 1023, type: !463, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!466 = !DISubprogram(name: "__normal_iterator", scope: !459, file: !397, line: 1027, type: !467, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !465, !469}
!469 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!471 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEdeEv", scope: !459, file: !397, line: 1042, type: !472, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !479}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !459, file: !397, line: 1016, baseType: !475, flags: DIFlagPublic)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !476, file: !414, line: 227, baseType: !122)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const StringToken *>", scope: !37, file: !414, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !477, identifier: "_ZTSSt15iterator_traitsIPK11StringTokenE")
!477 = !{!478}
!478 = !DITemplateTypeParameter(name: "_Iterator", type: !119)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!481 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEptEv", scope: !459, file: !397, line: 1047, type: !482, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !479}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !459, file: !397, line: 1017, baseType: !485, flags: DIFlagPublic)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !476, file: !414, line: 226, baseType: !119)
!486 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEppEv", scope: !459, file: !397, line: 1052, type: !487, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !465}
!489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !459, size: 64)
!490 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEppEi", scope: !459, file: !397, line: 1060, type: !491, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!459, !465, !432}
!493 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEmmEv", scope: !459, file: !397, line: 1066, type: !487, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!494 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEmmEi", scope: !459, file: !397, line: 1074, type: !491, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!495 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEixEl", scope: !459, file: !397, line: 1080, type: !496, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!474, !479, !498}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !459, file: !397, line: 1015, baseType: !499, flags: DIFlagPublic)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !476, file: !414, line: 225, baseType: !440)
!500 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEpLEl", scope: !459, file: !397, line: 1085, type: !501, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!489, !465, !498}
!503 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEplEl", scope: !459, file: !397, line: 1090, type: !504, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!459, !479, !498}
!506 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEmIEl", scope: !459, file: !397, line: 1095, type: !501, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!507 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEEmiEl", scope: !459, file: !397, line: 1100, type: !504, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!508 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv", scope: !459, file: !397, line: 1105, type: !509, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!469, !479}
!511 = !{!478, !454}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!513 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE3endEv", scope: !64, file: !46, line: 829, type: !393, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!514 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE3endEv", scope: !64, file: !46, line: 838, type: !456, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!515 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6rbeginEv", scope: !64, file: !46, line: 847, type: !516, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !333}
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !64, file: !46, line: 423, baseType: !519, flags: DIFlagPublic)
!519 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<StringToken *, std::vector<StringToken, std::allocator<StringToken> > > >", scope: !37, file: !397, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS2_SaIS2_EEEEE")
!520 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE6rbeginEv", scope: !64, file: !46, line: 856, type: !521, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !512}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !64, file: !46, line: 422, baseType: !524, flags: DIFlagPublic)
!524 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const StringToken *, std::vector<StringToken, std::allocator<StringToken> > > >", scope: !37, file: !397, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS2_SaIS2_EEEEE")
!525 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE4rendEv", scope: !64, file: !46, line: 865, type: !516, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!526 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4rendEv", scope: !64, file: !46, line: 874, type: !521, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE6cbeginEv", scope: !64, file: !46, line: 884, type: !456, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4cendEv", scope: !64, file: !46, line: 893, type: !456, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!529 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE7crbeginEv", scope: !64, file: !46, line: 902, type: !521, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!530 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE5crendEv", scope: !64, file: !46, line: 911, type: !521, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!531 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv", scope: !64, file: !46, line: 918, type: !532, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!45, !512}
!534 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv", scope: !64, file: !46, line: 923, type: !532, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!535 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6resizeEm", scope: !64, file: !46, line: 937, type: !536, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !333, !45}
!538 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6resizeEmRKS0_", scope: !64, file: !46, line: 957, type: !387, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE13shrink_to_fitEv", scope: !64, file: !46, line: 989, type: !331, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE8capacityEv", scope: !64, file: !46, line: 998, type: !532, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE5emptyEv", scope: !64, file: !46, line: 1007, type: !542, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!178, !512}
!544 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE7reserveEm", scope: !64, file: !46, line: 1028, type: !536, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!545 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEixEm", scope: !64, file: !46, line: 1043, type: !546, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !333, !45}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !64, file: !46, line: 417, baseType: !549, flags: DIFlagPublic)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !77, file: !75, line: 62, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !77, file: !75, line: 56, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !80, file: !81, line: 417, baseType: !50)
!553 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EEixEm", scope: !64, file: !46, line: 1061, type: !554, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !512, !45}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !64, file: !46, line: 418, baseType: !557, flags: DIFlagPublic)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !77, file: !75, line: 63, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!560 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE14_M_range_checkEm", scope: !64, file: !46, line: 1070, type: !561, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !512, !45}
!563 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE2atEm", scope: !64, file: !46, line: 1092, type: !546, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!564 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE2atEm", scope: !64, file: !46, line: 1110, type: !554, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!565 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5frontEv", scope: !64, file: !46, line: 1121, type: !566, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{!548, !333}
!568 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE5frontEv", scope: !64, file: !46, line: 1132, type: !569, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!556, !512}
!571 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE4backEv", scope: !64, file: !46, line: 1143, type: !566, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!572 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4backEv", scope: !64, file: !46, line: 1154, type: !569, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!573 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE4dataEv", scope: !64, file: !46, line: 1168, type: !574, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!49, !333}
!576 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4dataEv", scope: !64, file: !46, line: 1172, type: !577, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!119, !512}
!579 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE9push_backERKS0_", scope: !64, file: !46, line: 1187, type: !580, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !333, !346}
!582 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE9push_backEOS0_", scope: !64, file: !46, line: 1203, type: !583, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !333, !585}
!585 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !348, size: 64)
!586 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE8pop_backEv", scope: !64, file: !46, line: 1225, type: !331, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!587 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_", scope: !64, file: !46, line: 1263, type: !588, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!395, !333, !458, !346}
!590 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !64, file: !46, line: 1293, type: !591, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{!395, !333, !458, !585}
!593 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EESt16initializer_listIS0_E", scope: !64, file: !46, line: 1310, type: !594, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{!395, !333, !458, !373}
!596 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEmRS5_", scope: !64, file: !46, line: 1335, type: !597, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!395, !333, !458, !45, !346}
!599 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE", scope: !64, file: !46, line: 1430, type: !600, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!395, !333, !458}
!602 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_", scope: !64, file: !46, line: 1457, type: !603, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!395, !333, !458, !458}
!605 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE4swapERS2_", scope: !64, file: !46, line: 1480, type: !606, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !333, !379}
!608 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5clearEv", scope: !64, file: !46, line: 1498, type: !331, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!609 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE18_M_fill_initializeEmRKS0_", scope: !64, file: !46, line: 1593, type: !387, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!610 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE21_M_default_initializeEm", scope: !64, file: !46, line: 1603, type: !536, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!611 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_fill_assignEmRKS0_", scope: !64, file: !46, line: 1645, type: !387, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!612 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EEmRKS0_", scope: !64, file: !46, line: 1684, type: !613, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !333, !395, !45, !346}
!615 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE17_M_default_appendEm", scope: !64, file: !46, line: 1689, type: !536, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!616 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE16_M_shrink_to_fitEv", scope: !64, file: !46, line: 1692, type: !617, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!617 = !DISubroutineType(types: !618)
!618 = !{!178, !333}
!619 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !64, file: !46, line: 1741, type: !591, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!620 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_", scope: !64, file: !46, line: 1750, type: !591, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!621 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE12_M_check_lenEmPKc", scope: !64, file: !46, line: 1756, type: !622, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !512, !45, !625}
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !64, file: !46, line: 424, baseType: !42, flags: DIFlagPublic)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!626 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE17_S_check_init_lenEmRKS1_", scope: !64, file: !46, line: 1767, type: !627, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!624, !45, !337}
!629 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE11_S_max_sizeERKS1_", scope: !64, file: !46, line: 1776, type: !630, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!624, !632}
!632 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!634 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE15_M_erase_at_endEPS0_", scope: !64, file: !46, line: 1792, type: !635, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !333, !321}
!637 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE", scope: !64, file: !46, line: 1804, type: !638, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!395, !333, !395}
!640 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EES6_", scope: !64, file: !46, line: 1807, type: !641, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!395, !333, !395, !395}
!643 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE", scope: !64, file: !46, line: 1815, type: !644, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !333, !357, !285}
!646 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb0EE", scope: !64, file: !46, line: 1826, type: !647, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !333, !357, !304}
!649 = !{!135, !650}
!650 = !DITemplateTypeParameter(name: "_Alloc", type: !89, defaulted: true)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !37, file: !286, line: 91, baseType: !287)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !654, file: !36, line: 816, baseType: !655, flags: DIFlagPublic)
!654 = !DICompositeType(tag: DW_TAG_class_type, name: "_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> > >", scope: !37, file: !36, line: 425, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >", scope: !37, file: !36, line: 328, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !656, templateParams: !783, identifier: "_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE")
!656 = !{!657, !678, !682, !685, !692, !697, !768, !773, !778, !781, !782}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_M_node", scope: !655, file: !36, line: 405, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", file: !36, line: 340, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", scope: !660, file: !36, line: 104, baseType: !676)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node_base", scope: !37, file: !36, line: 101, size: 256, flags: DIFlagTypePassByValue, elements: !661, identifier: "_ZTSSt18_Rb_tree_node_base")
!661 = !{!662, !663, !666, !667, !668, !671, !674, !675}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_M_color", scope: !660, file: !36, line: 106, baseType: !35, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_M_parent", scope: !660, file: !36, line: 107, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Base_ptr", scope: !660, file: !36, line: 103, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_M_left", scope: !660, file: !36, line: 108, baseType: !664, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_M_right", scope: !660, file: !36, line: 109, baseType: !664, size: 64, offset: 192)
!668 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPS_", scope: !660, file: !36, line: 112, type: !669, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!664, !664}
!671 = !DISubprogram(name: "_S_minimum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_minimumEPKS_", scope: !660, file: !36, line: 119, type: !672, scopeLine: 119, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!659, !659}
!674 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPS_", scope: !660, file: !36, line: 126, type: !669, scopeLine: 126, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!675 = !DISubprogram(name: "_S_maximum", linkageName: "_ZNSt18_Rb_tree_node_base10_S_maximumEPKS_", scope: !660, file: !36, line: 133, type: !672, scopeLine: 133, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!678 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !655, file: !36, line: 343, type: !679, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!682 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !655, file: !36, line: 347, type: !683, scopeLine: 347, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !681, !658}
!685 = !DISubprogram(name: "_Rb_tree_const_iterator", scope: !655, file: !36, line: 350, type: !686, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !681, !688}
!688 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !655, file: !36, line: 334, baseType: !691)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >", scope: !37, file: !36, line: 256, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE")
!692 = !DISubprogram(name: "_M_const_cast", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE13_M_const_castEv", scope: !655, file: !36, line: 354, type: !693, scopeLine: 354, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!690, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!697 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEdeEv", scope: !655, file: !36, line: 358, type: !698, scopeLine: 358, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !695}
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !655, file: !36, line: 331, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>", scope: !37, file: !704, line: 211, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !705, templateParams: !765, identifier: "_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE")
!704 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_pair.h", directory: "", checksumkind: CSK_MD5, checksum: "7f4523a2a9644730e7f1af988b6f398d")
!705 = !{!706, !730, !731, !732, !736, !740, !753, !762}
!706 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !703, baseType: !707, flags: DIFlagPrivate, extraData: i32 0)
!707 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>", scope: !37, file: !704, line: 189, size: 8, flags: DIFlagTypePassByValue, elements: !708, templateParams: !723, identifier: "_ZTSSt11__pair_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE")
!708 = !{!709, !713, !714, !719}
!709 = !DISubprogram(name: "__pair_base", scope: !707, file: !704, line: 193, type: !710, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!713 = !DISubprogram(name: "~__pair_base", scope: !707, file: !704, line: 194, type: !710, scopeLine: 194, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubprogram(name: "__pair_base", scope: !707, file: !704, line: 195, type: !715, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !712, !717}
!717 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!719 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11__pair_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSERKS7_", scope: !707, file: !704, line: 196, type: !720, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!720 = !DISubroutineType(types: !721)
!721 = !{!722, !712, !717}
!722 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !707, size: 64)
!723 = !{!724, !729}
!724 = !DITemplateTypeParameter(name: "_U1", type: !725)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !728, file: !727, line: 1627, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!727 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/basic_string.tcc", directory: "")
!728 = !DINamespace(name: "__cxx11", scope: !37, exportSymbols: true)
!729 = !DITemplateTypeParameter(name: "_U2", type: !432)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !704, line: 217, baseType: !725, size: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !703, file: !704, line: 218, baseType: !432, size: 32, offset: 256)
!732 = !DISubprogram(name: "pair", scope: !703, file: !704, line: 314, type: !733, scopeLine: 314, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735, !701}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!736 = !DISubprogram(name: "pair", scope: !703, file: !704, line: 315, type: !737, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !735, !739}
!739 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !703, size: 64)
!740 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSERKSt10__nonesuch", scope: !703, file: !704, line: 390, type: !741, scopeLine: 390, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!743, !735, !744}
!743 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !703, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !745, file: !286, line: 2226, baseType: !750)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, const std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> &, const std::__nonesuch &>", scope: !37, file: !286, line: 2225, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !746, identifier: "_ZTSSt11conditionalILb0ERKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiERKSt10__nonesuchE")
!746 = !{!747, !748, !749}
!747 = !DITemplateValueParameter(name: "_Cond", type: !178, value: i1 false)
!748 = !DITemplateTypeParameter(name: "_Iftrue", type: !701)
!749 = !DITemplateTypeParameter(name: "_Iffalse", type: !750)
!750 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "__nonesuch", scope: !37, file: !286, line: 2991, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt10__nonesuch")
!753 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOSt10__nonesuch", scope: !703, file: !704, line: 401, type: !754, scopeLine: 401, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DISubroutineType(types: !755)
!755 = !{!743, !735, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !757, file: !286, line: 2226, baseType: !761)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> &&, std::__nonesuch &&>", scope: !37, file: !286, line: 2225, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !758, identifier: "_ZTSSt11conditionalILb0EOSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEOSt10__nonesuchE")
!758 = !{!747, !759, !760}
!759 = !DITemplateTypeParameter(name: "_Iftrue", type: !739)
!760 = !DITemplateTypeParameter(name: "_Iffalse", type: !761)
!761 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !752, size: 64)
!762 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE4swapERS7_", scope: !703, file: !704, line: 439, type: !763, scopeLine: 439, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !735, !743}
!765 = !{!766, !767}
!766 = !DITemplateTypeParameter(name: "_T1", type: !725)
!767 = !DITemplateTypeParameter(name: "_T2", type: !432)
!768 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEptEv", scope: !655, file: !36, line: 362, type: !769, scopeLine: 362, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!771, !695}
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !655, file: !36, line: 332, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!773 = !DISubprogram(name: "operator++", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEppEv", scope: !655, file: !36, line: 366, type: !774, scopeLine: 366, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !681}
!776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Self", scope: !655, file: !36, line: 339, baseType: !655)
!778 = !DISubprogram(name: "operator++", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEppEi", scope: !655, file: !36, line: 373, type: !779, scopeLine: 373, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!777, !681, !432}
!781 = !DISubprogram(name: "operator--", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEmmEv", scope: !655, file: !36, line: 381, type: !774, scopeLine: 381, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DISubprogram(name: "operator--", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEmmEi", scope: !655, file: !36, line: 388, type: !779, scopeLine: 388, flags: DIFlagPrototyped, spFlags: 0)
!783 = !{!784}
!784 = !DITemplateTypeParameter(name: "_Tp", type: !703)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Link_type", scope: !654, file: !36, line: 436, baseType: !786, flags: DIFlagProtected)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >", scope: !37, file: !36, line: 216, size: 576, flags: DIFlagTypePassByValue, elements: !789, templateParams: !832, identifier: "_ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE")
!789 = !{!790, !791, !824, !828}
!790 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !788, baseType: !660, extraData: i32 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !788, file: !36, line: 231, baseType: !792, size: 320, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__aligned_membuf<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >", scope: !29, file: !793, line: 47, size: 320, flags: DIFlagTypePassByValue, elements: !794, templateParams: !783, identifier: "_ZTSN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEE")
!793 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/aligned_buffer.h", directory: "")
!794 = !{!795, !800, !804, !809, !812, !817, !821}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !792, file: !793, line: 56, baseType: !796, size: 320, align: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 320, elements: !798)
!797 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!798 = !{!799}
!799 = !DISubrange(count: 40)
!800 = !DISubprogram(name: "__aligned_membuf", scope: !792, file: !793, line: 58, type: !801, scopeLine: 58, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!804 = !DISubprogram(name: "__aligned_membuf", scope: !792, file: !793, line: 61, type: !805, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !803, !807}
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !37, file: !43, line: 284, baseType: !808)
!808 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!809 = !DISubprogram(name: "_M_addr", linkageName: "_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv", scope: !792, file: !793, line: 64, type: !810, scopeLine: 64, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!652, !803}
!812 = !DISubprogram(name: "_M_addr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv", scope: !792, file: !793, line: 68, type: !813, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!47, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!817 = !DISubprogram(name: "_M_ptr", linkageName: "_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv", scope: !792, file: !793, line: 72, type: !818, scopeLine: 72, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!820, !803}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!821 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv", scope: !792, file: !793, line: 76, type: !822, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!772, !815}
!824 = !DISubprogram(name: "_M_valptr", linkageName: "_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv", scope: !788, file: !36, line: 234, type: !825, scopeLine: 234, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DISubroutineType(types: !826)
!826 = !{!820, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!828 = !DISubprogram(name: "_M_valptr", linkageName: "_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv", scope: !788, file: !36, line: 238, type: !829, scopeLine: 238, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!772, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!832 = !{!833}
!833 = !DITemplateTypeParameter(name: "_Val", type: !703)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Link_type", scope: !655, file: !36, line: 341, baseType: !786)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<2UL, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, false>", scope: !37, file: !836, line: 187, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !837, templateParams: !885, identifier: "_ZTSSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE")
!836 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/tuple", directory: "")
!837 = !{!838, !839, !843, !847, !852, !856, !877, !882}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !835, file: !836, line: 238, baseType: !726, size: 256)
!839 = !DISubprogram(name: "_Head_base", scope: !835, file: !836, line: 189, type: !840, scopeLine: 189, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!843 = !DISubprogram(name: "_Head_base", scope: !835, file: !836, line: 192, type: !844, scopeLine: 192, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !842, !846}
!846 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !725, size: 64)
!847 = !DISubprogram(name: "_Head_base", scope: !835, file: !836, line: 195, type: !848, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !842, !850}
!850 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!852 = !DISubprogram(name: "_Head_base", scope: !835, file: !836, line: 196, type: !853, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !842, !855}
!855 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !835, size: 64)
!856 = !DISubprogram(name: "_Head_base", scope: !835, file: !836, line: 203, type: !857, scopeLine: 203, flags: DIFlagPrototyped, spFlags: 0)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !842, !859, !866}
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !37, file: !860, line: 51, size: 8, flags: DIFlagTypePassByValue, elements: !861, identifier: "_ZTSSt15allocator_arg_t")
!860 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/uses_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "3232586c3c5b827a38bfdd0f1cb692d3")
!861 = !{!862}
!862 = !DISubprogram(name: "allocator_arg_t", scope: !859, file: !860, line: 51, type: !863, scopeLine: 51, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !37, file: !860, line: 74, size: 8, flags: DIFlagTypePassByValue, elements: !867, identifier: "_ZTSSt13__uses_alloc0")
!867 = !{!868, !870}
!868 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !866, baseType: !869, extraData: i32 0)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !37, file: !860, line: 72, size: 8, flags: DIFlagTypePassByValue, elements: !185, identifier: "_ZTSSt17__uses_alloc_base")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_M_a", scope: !866, file: !860, line: 76, baseType: !871, size: 8)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !866, file: !860, line: 76, size: 8, flags: DIFlagTypePassByValue, elements: !872, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!872 = !{!873}
!873 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__uses_alloc05_SinkaSEPKv", scope: !871, file: !860, line: 76, type: !874, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !876, !47}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!877 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS6_", scope: !835, file: !836, line: 233, type: !878, scopeLine: 233, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !726, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !835, size: 64)
!882 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERKS6_", scope: !835, file: !836, line: 236, type: !883, scopeLine: 236, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!883 = !DISubroutineType(types: !884)
!884 = !{!846, !850}
!885 = !{!886, !887, !888}
!886 = !DITemplateValueParameter(name: "_Idx", type: !44, value: i64 2)
!887 = !DITemplateTypeParameter(name: "_Head", type: !726)
!888 = !DITemplateValueParameter(type: !178, value: i1 false)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<2UL, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !836, line: 416, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !890, templateParams: !921, identifier: "_ZTSSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!890 = !{!891, !892, !896, !901, !905, !908, !911, !914, !918}
!891 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !889, baseType: !835, flags: DIFlagPrivate, extraData: i32 0)
!892 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS6_", scope: !889, file: !836, line: 424, type: !893, scopeLine: 424, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{!880, !895}
!895 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !889, size: 64)
!896 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_", scope: !889, file: !836, line: 427, type: !897, scopeLine: 427, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!897 = !DISubroutineType(types: !898)
!898 = !{!846, !899}
!899 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!901 = !DISubprogram(name: "_Tuple_impl", scope: !889, file: !836, line: 430, type: !902, scopeLine: 430, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!905 = !DISubprogram(name: "_Tuple_impl", scope: !889, file: !836, line: 434, type: !906, scopeLine: 434, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !904, !846}
!908 = !DISubprogram(name: "_Tuple_impl", scope: !889, file: !836, line: 444, type: !909, scopeLine: 444, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !904, !899}
!911 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS6_", scope: !889, file: !836, line: 448, type: !912, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!912 = !DISubroutineType(types: !913)
!913 = !{!895, !904, !899}
!914 = !DISubprogram(name: "_Tuple_impl", scope: !889, file: !836, line: 454, type: !915, scopeLine: 454, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !904, !917}
!917 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !889, size: 64)
!918 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_swapERS6_", scope: !889, file: !836, line: 544, type: !919, scopeLine: 544, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !904, !895}
!921 = !{!886, !922}
!922 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !923)
!923 = !{!924}
!924 = !DITemplateTypeParameter(type: !726)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, int, false>", scope: !37, file: !836, line: 187, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !926, templateParams: !957, identifier: "_ZTSSt10_Head_baseILm1EiLb0EE")
!926 = !{!927, !928, !932, !937, !942, !946, !949, !954}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !925, file: !836, line: 238, baseType: !432, size: 32)
!928 = !DISubprogram(name: "_Head_base", scope: !925, file: !836, line: 189, type: !929, scopeLine: 189, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!932 = !DISubprogram(name: "_Head_base", scope: !925, file: !836, line: 192, type: !933, scopeLine: 192, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !931, !935}
!935 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!937 = !DISubprogram(name: "_Head_base", scope: !925, file: !836, line: 195, type: !938, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !931, !940}
!940 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!942 = !DISubprogram(name: "_Head_base", scope: !925, file: !836, line: 196, type: !943, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !931, !945}
!945 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !925, size: 64)
!946 = !DISubprogram(name: "_Head_base", scope: !925, file: !836, line: 203, type: !947, scopeLine: 203, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !931, !859, !866}
!949 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_", scope: !925, file: !836, line: 233, type: !950, scopeLine: 233, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!950 = !DISubroutineType(types: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !432, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !925, size: 64)
!954 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EiLb0EE7_M_headERKS0_", scope: !925, file: !836, line: 236, type: !955, scopeLine: 236, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!955 = !DISubroutineType(types: !956)
!956 = !{!935, !940}
!957 = !{!958, !959, !888}
!958 = !DITemplateValueParameter(name: "_Idx", type: !44, value: i64 1)
!959 = !DITemplateTypeParameter(name: "_Head", type: !432)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, int, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !836, line: 258, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !961, templateParams: !1003, identifier: "_ZTSSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!961 = !{!962, !963, !964, !968, !973, !978, !983, !987, !990, !993, !996, !1000}
!962 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !960, baseType: !889, extraData: i32 0)
!963 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !960, baseType: !925, offset: 256, flags: DIFlagPrivate, extraData: i32 0)
!964 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS6_", scope: !960, file: !836, line: 268, type: !965, scopeLine: 268, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!952, !967}
!967 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !960, size: 64)
!968 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_", scope: !960, file: !836, line: 271, type: !969, scopeLine: 271, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!935, !971}
!971 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!973 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_tailERS6_", scope: !960, file: !836, line: 274, type: !974, scopeLine: 274, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!974 = !DISubroutineType(types: !975)
!975 = !{!976, !967}
!976 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !960, file: !836, line: 264, baseType: !889)
!978 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_tailERKS6_", scope: !960, file: !836, line: 277, type: !979, scopeLine: 277, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!979 = !DISubroutineType(types: !980)
!980 = !{!981, !971}
!981 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!983 = !DISubprogram(name: "_Tuple_impl", scope: !960, file: !836, line: 279, type: !984, scopeLine: 279, flags: DIFlagPrototyped, spFlags: 0)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!987 = !DISubprogram(name: "_Tuple_impl", scope: !960, file: !836, line: 283, type: !988, scopeLine: 283, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !986, !935, !846}
!990 = !DISubprogram(name: "_Tuple_impl", scope: !960, file: !836, line: 295, type: !991, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !986, !971}
!993 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS6_", scope: !960, file: !836, line: 299, type: !994, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!994 = !DISubroutineType(types: !995)
!995 = !{!967, !986, !971}
!996 = !DISubprogram(name: "_Tuple_impl", scope: !960, file: !836, line: 301, type: !997, scopeLine: 301, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !986, !999}
!999 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !960, size: 64)
!1000 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_swapERS6_", scope: !960, file: !836, line: 406, type: !1001, scopeLine: 406, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !986, !967}
!1003 = !{!958, !1004}
!1004 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !1005)
!1005 = !{!1006, !924}
!1006 = !DITemplateTypeParameter(type: !432)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, int, false>", scope: !37, file: !836, line: 187, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1008, templateParams: !1036, identifier: "_ZTSSt10_Head_baseILm0EiLb0EE")
!1008 = !{!1009, !1010, !1014, !1017, !1022, !1026, !1029, !1033}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !1007, file: !836, line: 238, baseType: !432, size: 32)
!1010 = !DISubprogram(name: "_Head_base", scope: !1007, file: !836, line: 189, type: !1011, scopeLine: 189, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1014 = !DISubprogram(name: "_Head_base", scope: !1007, file: !836, line: 192, type: !1015, scopeLine: 192, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !1013, !935}
!1017 = !DISubprogram(name: "_Head_base", scope: !1007, file: !836, line: 195, type: !1018, scopeLine: 195, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1013, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1022 = !DISubprogram(name: "_Head_base", scope: !1007, file: !836, line: 196, type: !1023, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !1013, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1007, size: 64)
!1026 = !DISubprogram(name: "_Head_base", scope: !1007, file: !836, line: 203, type: !1027, scopeLine: 203, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1013, !859, !866}
!1029 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EiLb0EE7_M_headERS0_", scope: !1007, file: !836, line: 233, type: !1030, scopeLine: 233, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!952, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1007, size: 64)
!1033 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EiLb0EE7_M_headERKS0_", scope: !1007, file: !836, line: 236, type: !1034, scopeLine: 236, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!935, !1020}
!1036 = !{!1037, !959, !888}
!1037 = !DITemplateValueParameter(name: "_Idx", type: !44, value: i64 0)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, int, int, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !836, line: 258, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1039, templateParams: !1081, identifier: "_ZTSSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!1039 = !{!1040, !1041, !1042, !1046, !1051, !1056, !1061, !1065, !1068, !1071, !1074, !1078}
!1040 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1038, baseType: !960, extraData: i32 0)
!1041 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1038, baseType: !1007, offset: 288, flags: DIFlagPrivate, extraData: i32 0)
!1042 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS6_", scope: !1038, file: !836, line: 268, type: !1043, scopeLine: 268, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!952, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1038, size: 64)
!1046 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERKS6_", scope: !1038, file: !836, line: 271, type: !1047, scopeLine: 271, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!935, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1051 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_tailERS6_", scope: !1038, file: !836, line: 274, type: !1052, scopeLine: 274, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1054, !1045}
!1054 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !1038, file: !836, line: 264, baseType: !960)
!1056 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_tailERKS6_", scope: !1038, file: !836, line: 277, type: !1057, scopeLine: 277, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !1049}
!1059 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1061 = !DISubprogram(name: "_Tuple_impl", scope: !1038, file: !836, line: 279, type: !1062, scopeLine: 279, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1065 = !DISubprogram(name: "_Tuple_impl", scope: !1038, file: !836, line: 283, type: !1066, scopeLine: 283, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1064, !935, !935, !846}
!1068 = !DISubprogram(name: "_Tuple_impl", scope: !1038, file: !836, line: 295, type: !1069, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1064, !1049}
!1071 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS6_", scope: !1038, file: !836, line: 299, type: !1072, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1045, !1064, !1049}
!1074 = !DISubprogram(name: "_Tuple_impl", scope: !1038, file: !836, line: 301, type: !1075, scopeLine: 301, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1064, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1038, size: 64)
!1078 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_swapERS6_", scope: !1038, file: !836, line: 406, type: !1079, scopeLine: 406, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1064, !1045}
!1081 = !{!1037, !1082}
!1082 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !1083)
!1083 = !{!1006, !1006, !924}
!1084 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<int, int, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !836, line: 609, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1085, templateParams: !1116, identifier: "_ZTSSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!1085 = !{!1086, !1087, !1093, !1097, !1106, !1113}
!1086 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1084, baseType: !1038, flags: DIFlagPublic, extraData: i32 0)
!1087 = !DISubprogram(name: "tuple", scope: !1084, file: !836, line: 754, type: !1088, scopeLine: 754, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1091 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1093 = !DISubprogram(name: "tuple", scope: !1084, file: !836, line: 756, type: !1094, scopeLine: 756, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1090, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1084, size: 64)
!1097 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSERKS6_", scope: !1084, file: !836, line: 898, type: !1098, scopeLine: 898, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !1090, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1084, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1102, file: !286, line: 2221, baseType: !1091)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, const std::tuple<int, int, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &, const std::__nonesuch &>", scope: !37, file: !286, line: 2220, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !1103, identifier: "_ZTSSt11conditionalILb1ERKSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSt10__nonesuchE")
!1103 = !{!1104, !1105, !749}
!1104 = !DITemplateValueParameter(name: "_Cond", type: !178, value: i1 true)
!1105 = !DITemplateTypeParameter(name: "_Iftrue", type: !1091)
!1106 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOS6_", scope: !1084, file: !836, line: 909, type: !1107, scopeLine: 909, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1100, !1090, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1110, file: !286, line: 2221, baseType: !1096)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<true, std::tuple<int, int, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > &&, std::__nonesuch &&>", scope: !37, file: !286, line: 2220, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !1111, identifier: "_ZTSSt11conditionalILb1EOSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOSt10__nonesuchE")
!1111 = !{!1104, !1112, !760}
!1112 = !DITemplateTypeParameter(name: "_Iftrue", type: !1096)
!1113 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4swapERS6_", scope: !1084, file: !836, line: 941, type: !1114, scopeLine: 941, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !1090, !1100}
!1116 = !{!1082}
!1117 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StringVector", file: !51, line: 35, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1118, identifier: "_ZTS12StringVector")
!1118 = !{!1119, !1122, !1123, !1127, !1130, !1135, !1138, !1141, !1144, !1147, !1148, !1149, !1152, !1157, !1160, !1163, !1167, !1175}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_string", scope: !1117, file: !51, line: 38, baseType: !1120, size: 256)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !37, file: !1121, line: 79, baseType: !726)
!1121 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stringfwd.h", directory: "")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_tokens", scope: !1117, file: !51, line: 39, baseType: !64, size: 192, offset: 256)
!1123 = !DISubprogram(name: "StringVector", scope: !1117, file: !51, line: 42, type: !1124, scopeLine: 42, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1127 = !DISubprogram(name: "StringVector", scope: !1117, file: !51, line: 44, type: !1128, scopeLine: 44, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1126, !1120, !64}
!1130 = !DISubprogram(name: "operator[]", linkageName: "_ZNK12StringVectorixB5cxx11Em", scope: !1117, file: !51, line: 51, type: !1131, scopeLine: 51, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1120, !1133, !42}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1135 = !DISubprogram(name: "size", linkageName: "_ZNK12StringVector4sizeEv", scope: !1117, file: !51, line: 62, type: !1136, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!42, !1133}
!1138 = !DISubprogram(name: "empty", linkageName: "_ZNK12StringVector5emptyEv", scope: !1117, file: !51, line: 64, type: !1139, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!178, !1133}
!1141 = !DISubprogram(name: "begin", linkageName: "_ZNK12StringVector5beginEv", scope: !1117, file: !51, line: 66, type: !1142, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!458, !1133}
!1144 = !DISubprogram(name: "begin", linkageName: "_ZN12StringVector5beginEv", scope: !1117, file: !51, line: 68, type: !1145, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!395, !1126}
!1147 = !DISubprogram(name: "end", linkageName: "_ZNK12StringVector3endEv", scope: !1117, file: !51, line: 70, type: !1142, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1148 = !DISubprogram(name: "end", linkageName: "_ZN12StringVector3endEv", scope: !1117, file: !51, line: 72, type: !1145, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1149 = !DISubprogram(name: "erase", linkageName: "_ZN12StringVector5eraseEN9__gnu_cxx17__normal_iteratorIPK11StringTokenSt6vectorIS2_SaIS2_EEEE", scope: !1117, file: !51, line: 74, type: !1150, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!395, !1126, !458}
!1152 = !DISubprogram(name: "push_back", linkageName: "_ZN12StringVector9push_backERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !1117, file: !51, line: 79, type: !1153, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1126, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1157 = !DISubprogram(name: "getParam", linkageName: "_ZNK12StringVector8getParamB5cxx11ERK11StringToken", scope: !1117, file: !51, line: 86, type: !1158, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1120, !1133, !122}
!1160 = !DISubprogram(name: "equals", linkageName: "_ZNK12StringVector6equalsEmPKc", scope: !1117, file: !51, line: 115, type: !1161, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!178, !1133, !42, !625}
!1163 = !DISubprogram(name: "equals", linkageName: "_ZN12StringVector6equalsEmRKS_m", scope: !1117, file: !51, line: 167, type: !1164, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!178, !1126, !42, !1166, !42}
!1166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1134, size: 64)
!1167 = !DISubprogram(name: "getUInt32", linkageName: "_ZNK12StringVector9getUInt32EmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj", scope: !1117, file: !51, line: 169, type: !1168, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!178, !1133, !42, !1155, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1172, line: 26, baseType: !1173)
!1172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1174, line: 42, baseType: !30)
!1174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1175 = !DISubprogram(name: "getNameIntegerPair", linkageName: "_ZNK12StringVector18getNameIntegerPairEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi", scope: !1117, file: !51, line: 170, type: !1176, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!178, !1133, !42, !1178, !952}
!1178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1120, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Save_errno", scope: !1181, file: !1180, line: 62, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1196, identifier: "_ZTSZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_E11_Save_errno")
!1180 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/string_conversions.h", directory: "")
!1181 = distinct !DISubprogram(name: "__stoa<long, int, char, int>", linkageName: "_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_", scope: !29, file: !1180, line: 54, type: !1182, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !1190, retainedNodes: !185)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!432, !1184, !625, !625, !1189, !432}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!441, !625, !1187, !432}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DITemplateTypeParameter(name: "_TRet", type: !441)
!1192 = !DITemplateTypeParameter(name: "_Ret", type: !432)
!1193 = !DITemplateTypeParameter(name: "_CharT", type: !5)
!1194 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Base", value: !1195)
!1195 = !{!1006}
!1196 = !{!1197, !1198, !1202}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_M_errno", scope: !1179, file: !1180, line: 65, baseType: !432, size: 32)
!1198 = !DISubprogram(name: "_Save_errno", scope: !1179, file: !1180, line: 63, type: !1199, scopeLine: 63, flags: DIFlagPrototyped, spFlags: 0)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1202 = !DISubprogram(name: "~_Save_errno", scope: !1179, file: !1180, line: 64, type: !1199, scopeLine: 64, flags: DIFlagPrototyped, spFlags: 0)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__numeric_traits_integer<int>", scope: !29, file: !1204, line: 61, size: 8, flags: DIFlagTypePassByValue, elements: !1205, templateParams: !1210, identifier: "_ZTSN9__gnu_cxx24__numeric_traits_integerIiEE")
!1204 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/numeric_traits.h", directory: "")
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__is_signed", scope: !1203, file: !1204, line: 70, baseType: !290, flags: DIFlagStaticMember, extraData: i1 true)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__digits", scope: !1203, file: !1204, line: 71, baseType: !936, flags: DIFlagStaticMember, extraData: i32 31)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__max", scope: !1203, file: !1204, line: 75, baseType: !936, flags: DIFlagStaticMember, extraData: i32 2147483647)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__min", scope: !1203, file: !1204, line: 78, baseType: !936, flags: DIFlagStaticMember, extraData: i32 -2147483648)
!1210 = !{!1211}
!1211 = !DITemplateTypeParameter(name: "_Value", type: !432)
!1212 = !{!0, !8, !14, !19}
!1213 = !{!1214, !1220, !1224, !1227, !1230, !1233, !1235, !1237, !1239, !1242, !1245, !1248, !1251, !1254, !1256, !1259, !1263, !1264, !1267, !1269, !1271, !1273, !1275, !1278, !1281, !1284, !1287, !1290, !1292, !1298, !1302, !1308, !1312, !1318, !1323, !1325, !1330, !1334, !1338, !1346, !1348, !1352, !1356, !1360, !1364, !1368, !1372, !1376, !1380, !1388, !1392, !1396, !1398, !1402, !1406, !1410, !1415, !1419, !1423, !1425, !1433, !1437, !1444, !1446, !1450, !1454, !1458, !1462, !1467, !1472, !1477, !1478, !1479, !1480, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1494, !1498, !1504, !1508, !1512, !1516, !1520, !1522, !1524, !1528, !1532, !1536, !1540, !1544, !1546, !1548, !1550, !1554, !1558, !1562, !1564, !1566, !1583, !1586, !1591, !1599, !1604, !1608, !1612, !1616, !1620, !1622, !1624, !1628, !1634, !1638, !1644, !1650, !1652, !1656, !1660, !1664, !1668, !1680, !1682, !1686, !1690, !1694, !1696, !1700, !1704, !1708, !1710, !1712, !1716, !1737, !1741, !1745, !1749, !1751, !1757, !1759, !1765, !1769, !1773, !1777, !1781, !1785, !1789, !1791, !1793, !1797, !1801, !1805, !1807, !1811, !1815, !1817, !1819, !1823, !1827, !1831, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1849, !1853, !1858, !1862, !1864, !1866, !1868, !1870, !1872, !1874, !1876, !1878, !1880, !1882, !1884, !1886, !1888, !1892, !1896, !1902, !1907, !1911, !1913, !1915, !1917, !1919, !1926, !1930, !1934, !1938, !1942, !1946, !1950, !1954, !1956, !1960, !1966, !1970, !1974, !1976, !1978, !1982, !1986, !1988, !1990, !1992, !1994, !1996, !1998, !2000, !2004, !2008, !2012, !2016, !2020, !2024, !2026, !2030, !2034, !2038, !2042, !2044, !2046, !2050, !2054, !2055, !2056, !2057, !2058, !2059, !2063, !2067, !2073, !2076, !2077, !2079, !2081, !2083, !2085, !2089, !2091, !2093, !2095, !2097, !2099, !2101, !2103, !2105, !2109, !2113, !2115, !2119, !2123, !2128, !2132, !2133, !2138, !2142, !2147, !2152, !2156, !2162, !2166, !2168, !2172, !2179, !2184, !2186, !2189, !2194, !2198, !2202, !2206, !2210, !2214, !2218, !2223}
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1215, file: !1219, line: 47)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1216, line: 24, baseType: !1217)
!1216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1174, line: 37, baseType: !1218)
!1218 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1219 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1221, file: !1219, line: 48)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1216, line: 25, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1174, line: 39, baseType: !1223)
!1223 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1225, file: !1219, line: 49)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1216, line: 26, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1174, line: 41, baseType: !432)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1228, file: !1219, line: 50)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1216, line: 27, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1174, line: 44, baseType: !441)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1231, file: !1219, line: 52)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1232, line: 58, baseType: !1218)
!1232 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1234, file: !1219, line: 53)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1232, line: 60, baseType: !441)
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1236, file: !1219, line: 54)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1232, line: 61, baseType: !441)
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1238, file: !1219, line: 55)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1232, line: 62, baseType: !441)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1240, file: !1219, line: 57)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1232, line: 43, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1174, line: 52, baseType: !1217)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1243, file: !1219, line: 58)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1232, line: 44, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1174, line: 54, baseType: !1222)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1246, file: !1219, line: 59)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1232, line: 45, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1174, line: 56, baseType: !1226)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1249, file: !1219, line: 60)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1232, line: 46, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1174, line: 58, baseType: !1229)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1252, file: !1219, line: 62)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1232, line: 101, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1174, line: 72, baseType: !441)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1255, file: !1219, line: 63)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1232, line: 87, baseType: !441)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1257, file: !1219, line: 65)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1172, line: 24, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1174, line: 38, baseType: !797)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1260, file: !1219, line: 66)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1172, line: 25, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1174, line: 40, baseType: !1262)
!1262 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1171, file: !1219, line: 67)
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1265, file: !1219, line: 68)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1172, line: 27, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1174, line: 45, baseType: !44)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1268, file: !1219, line: 70)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1232, line: 71, baseType: !797)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1270, file: !1219, line: 71)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1232, line: 73, baseType: !44)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1272, file: !1219, line: 72)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1232, line: 74, baseType: !44)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1274, file: !1219, line: 73)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1232, line: 75, baseType: !44)
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1276, file: !1219, line: 75)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1232, line: 49, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1174, line: 53, baseType: !1258)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1279, file: !1219, line: 76)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1232, line: 50, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1174, line: 55, baseType: !1261)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1282, file: !1219, line: 77)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1232, line: 51, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1174, line: 57, baseType: !1173)
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1285, file: !1219, line: 78)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1232, line: 52, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1174, line: 59, baseType: !1266)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1288, file: !1219, line: 80)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1232, line: 102, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1174, line: 73, baseType: !44)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1291, file: !1219, line: 81)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1232, line: 90, baseType: !44)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1293, file: !1297, line: 52)
!1293 = !DISubprogram(name: "abs", scope: !1294, file: !1294, line: 848, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1294 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!432, !432}
!1297 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1299, file: !1301, line: 127)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1294, line: 63, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1301 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1303, file: !1301, line: 128)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1294, line: 71, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1305, identifier: "_ZTS6ldiv_t")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1304, file: !1294, line: 69, baseType: !441, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1304, file: !1294, line: 70, baseType: !441, size: 64, offset: 64)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1309, file: !1301, line: 130)
!1309 = !DISubprogram(name: "abort", scope: !1294, file: !1294, line: 598, type: !1310, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null}
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1313, file: !1301, line: 132)
!1313 = !DISubprogram(name: "aligned_alloc", scope: !1294, file: !1294, line: 592, type: !1314, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!652, !1316, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1317, line: 46, baseType: !44)
!1317 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1319, file: !1301, line: 134)
!1319 = !DISubprogram(name: "atexit", scope: !1294, file: !1294, line: 602, type: !1320, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!432, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1324, file: !1301, line: 137)
!1324 = !DISubprogram(name: "at_quick_exit", scope: !1294, file: !1294, line: 607, type: !1320, flags: DIFlagPrototyped, spFlags: 0)
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1326, file: !1301, line: 140)
!1326 = !DISubprogram(name: "atof", scope: !1294, file: !1294, line: 102, type: !1327, flags: DIFlagPrototyped, spFlags: 0)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329, !625}
!1329 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1331, file: !1301, line: 141)
!1331 = !DISubprogram(name: "atoi", scope: !1294, file: !1294, line: 105, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!432, !625}
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1335, file: !1301, line: 142)
!1335 = !DISubprogram(name: "atol", scope: !1294, file: !1294, line: 108, type: !1336, flags: DIFlagPrototyped, spFlags: 0)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!441, !625}
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1339, file: !1301, line: 143)
!1339 = !DISubprogram(name: "bsearch", scope: !1294, file: !1294, line: 828, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!652, !47, !47, !1316, !1316, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1294, line: 816, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!432, !47, !47}
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1347, file: !1301, line: 144)
!1347 = !DISubprogram(name: "calloc", scope: !1294, file: !1294, line: 543, type: !1314, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1349, file: !1301, line: 145)
!1349 = !DISubprogram(name: "div", scope: !1294, file: !1294, line: 860, type: !1350, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1299, !432, !432}
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1353, file: !1301, line: 146)
!1353 = !DISubprogram(name: "exit", scope: !1294, file: !1294, line: 624, type: !1354, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !432}
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1357, file: !1301, line: 147)
!1357 = !DISubprogram(name: "free", scope: !1294, file: !1294, line: 555, type: !1358, flags: DIFlagPrototyped, spFlags: 0)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !652}
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1361, file: !1301, line: 148)
!1361 = !DISubprogram(name: "getenv", scope: !1294, file: !1294, line: 641, type: !1362, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1188, !625}
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1365, file: !1301, line: 149)
!1365 = !DISubprogram(name: "labs", scope: !1294, file: !1294, line: 849, type: !1366, flags: DIFlagPrototyped, spFlags: 0)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!441, !441}
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1369, file: !1301, line: 150)
!1369 = !DISubprogram(name: "ldiv", scope: !1294, file: !1294, line: 862, type: !1370, flags: DIFlagPrototyped, spFlags: 0)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1303, !441, !441}
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1373, file: !1301, line: 151)
!1373 = !DISubprogram(name: "malloc", scope: !1294, file: !1294, line: 540, type: !1374, flags: DIFlagPrototyped, spFlags: 0)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!652, !1316}
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1377, file: !1301, line: 153)
!1377 = !DISubprogram(name: "mblen", scope: !1294, file: !1294, line: 930, type: !1378, flags: DIFlagPrototyped, spFlags: 0)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!432, !625, !1316}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1381, file: !1301, line: 154)
!1381 = !DISubprogram(name: "mbstowcs", scope: !1294, file: !1294, line: 941, type: !1382, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1316, !1384, !1387, !1316}
!1384 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !625)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1389, file: !1301, line: 155)
!1389 = !DISubprogram(name: "mbtowc", scope: !1294, file: !1294, line: 933, type: !1390, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!432, !1384, !1387, !1316}
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1393, file: !1301, line: 157)
!1393 = !DISubprogram(name: "qsort", scope: !1294, file: !1294, line: 838, type: !1394, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !652, !1316, !1316, !1342}
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1397, file: !1301, line: 160)
!1397 = !DISubprogram(name: "quick_exit", scope: !1294, file: !1294, line: 630, type: !1354, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1399, file: !1301, line: 163)
!1399 = !DISubprogram(name: "rand", scope: !1294, file: !1294, line: 454, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!432}
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1403, file: !1301, line: 164)
!1403 = !DISubprogram(name: "realloc", scope: !1294, file: !1294, line: 551, type: !1404, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!652, !652, !1316}
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1407, file: !1301, line: 165)
!1407 = !DISubprogram(name: "srand", scope: !1294, file: !1294, line: 456, type: !1408, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !30}
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1411, file: !1301, line: 166)
!1411 = !DISubprogram(name: "strtod", scope: !1294, file: !1294, line: 118, type: !1412, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1329, !1387, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1187)
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1416, file: !1301, line: 167)
!1416 = !DISubprogram(name: "strtol", scope: !1294, file: !1294, line: 177, type: !1417, flags: DIFlagPrototyped, spFlags: 0)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!441, !1387, !1414, !432}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1420, file: !1301, line: 168)
!1420 = !DISubprogram(name: "strtoul", scope: !1294, file: !1294, line: 181, type: !1421, flags: DIFlagPrototyped, spFlags: 0)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!44, !1387, !1414, !432}
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1424, file: !1301, line: 169)
!1424 = !DISubprogram(name: "system", scope: !1294, file: !1294, line: 791, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1426, file: !1301, line: 171)
!1426 = !DISubprogram(name: "wcstombs", scope: !1294, file: !1294, line: 945, type: !1427, flags: DIFlagPrototyped, spFlags: 0)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1316, !1429, !1430, !1316}
!1429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1188)
!1430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1434, file: !1301, line: 172)
!1434 = !DISubprogram(name: "wctomb", scope: !1294, file: !1294, line: 937, type: !1435, flags: DIFlagPrototyped, spFlags: 0)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!432, !1188, !1386}
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1438, file: !1301, line: 200)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1294, line: 81, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1440, identifier: "_ZTS7lldiv_t")
!1440 = !{!1441, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1439, file: !1294, line: 79, baseType: !1442, size: 64)
!1442 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1439, file: !1294, line: 80, baseType: !1442, size: 64, offset: 64)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1445, file: !1301, line: 206)
!1445 = !DISubprogram(name: "_Exit", scope: !1294, file: !1294, line: 636, type: !1354, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1447, file: !1301, line: 210)
!1447 = !DISubprogram(name: "llabs", scope: !1294, file: !1294, line: 852, type: !1448, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1442, !1442}
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1451, file: !1301, line: 216)
!1451 = !DISubprogram(name: "lldiv", scope: !1294, file: !1294, line: 866, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1438, !1442, !1442}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1455, file: !1301, line: 227)
!1455 = !DISubprogram(name: "atoll", scope: !1294, file: !1294, line: 113, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1442, !625}
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1459, file: !1301, line: 228)
!1459 = !DISubprogram(name: "strtoll", scope: !1294, file: !1294, line: 201, type: !1460, flags: DIFlagPrototyped, spFlags: 0)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1442, !1387, !1414, !432}
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1463, file: !1301, line: 229)
!1463 = !DISubprogram(name: "strtoull", scope: !1294, file: !1294, line: 206, type: !1464, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1466, !1387, !1414, !432}
!1466 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1468, file: !1301, line: 231)
!1468 = !DISubprogram(name: "strtof", scope: !1294, file: !1294, line: 124, type: !1469, flags: DIFlagPrototyped, spFlags: 0)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1471, !1387, !1414}
!1471 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1473, file: !1301, line: 232)
!1473 = !DISubprogram(name: "strtold", scope: !1294, file: !1294, line: 127, type: !1474, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !1387, !1414}
!1476 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1438, file: !1301, line: 240)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1445, file: !1301, line: 242)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1447, file: !1301, line: 244)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1481, file: !1301, line: 245)
!1481 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !29, file: !1301, line: 213, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1451, file: !1301, line: 246)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1455, file: !1301, line: 248)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1468, file: !1301, line: 249)
!1485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1459, file: !1301, line: 250)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1463, file: !1301, line: 251)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1473, file: !1301, line: 252)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1489, file: !1493, line: 77)
!1489 = !DISubprogram(name: "memchr", scope: !1490, file: !1490, line: 89, type: !1491, flags: DIFlagPrototyped, spFlags: 0)
!1490 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!47, !47, !432, !1316}
!1493 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1495, file: !1493, line: 78)
!1495 = !DISubprogram(name: "memcmp", scope: !1490, file: !1490, line: 64, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!432, !47, !47, !1316}
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1499, file: !1493, line: 79)
!1499 = !DISubprogram(name: "memcpy", scope: !1490, file: !1490, line: 43, type: !1500, flags: DIFlagPrototyped, spFlags: 0)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!652, !1502, !1503, !1316}
!1502 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !652)
!1503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1505, file: !1493, line: 80)
!1505 = !DISubprogram(name: "memmove", scope: !1490, file: !1490, line: 47, type: !1506, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!652, !652, !47, !1316}
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1509, file: !1493, line: 81)
!1509 = !DISubprogram(name: "memset", scope: !1490, file: !1490, line: 61, type: !1510, flags: DIFlagPrototyped, spFlags: 0)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!652, !652, !432, !1316}
!1512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1513, file: !1493, line: 82)
!1513 = !DISubprogram(name: "strcat", scope: !1490, file: !1490, line: 149, type: !1514, flags: DIFlagPrototyped, spFlags: 0)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1188, !1429, !1387}
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1517, file: !1493, line: 83)
!1517 = !DISubprogram(name: "strcmp", scope: !1490, file: !1490, line: 156, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!432, !625, !625}
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1521, file: !1493, line: 84)
!1521 = !DISubprogram(name: "strcoll", scope: !1490, file: !1490, line: 163, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1523, file: !1493, line: 85)
!1523 = !DISubprogram(name: "strcpy", scope: !1490, file: !1490, line: 141, type: !1514, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1525, file: !1493, line: 86)
!1525 = !DISubprogram(name: "strcspn", scope: !1490, file: !1490, line: 293, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1316, !625, !625}
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1529, file: !1493, line: 87)
!1529 = !DISubprogram(name: "strerror", scope: !1490, file: !1490, line: 419, type: !1530, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1188, !432}
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1533, file: !1493, line: 88)
!1533 = !DISubprogram(name: "strlen", scope: !1490, file: !1490, line: 407, type: !1534, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1316, !625}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1537, file: !1493, line: 89)
!1537 = !DISubprogram(name: "strncat", scope: !1490, file: !1490, line: 152, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1188, !1429, !1387, !1316}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1541, file: !1493, line: 90)
!1541 = !DISubprogram(name: "strncmp", scope: !1490, file: !1490, line: 159, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!432, !625, !625, !1316}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1545, file: !1493, line: 91)
!1545 = !DISubprogram(name: "strncpy", scope: !1490, file: !1490, line: 144, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1547, file: !1493, line: 92)
!1547 = !DISubprogram(name: "strspn", scope: !1490, file: !1490, line: 297, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1549, file: !1493, line: 93)
!1549 = !DISubprogram(name: "strtok", scope: !1490, file: !1490, line: 356, type: !1514, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1551, file: !1493, line: 94)
!1551 = !DISubprogram(name: "strxfrm", scope: !1490, file: !1490, line: 166, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1316, !1429, !1387, !1316}
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1555, file: !1493, line: 95)
!1555 = !DISubprogram(name: "strchr", scope: !1490, file: !1490, line: 228, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!625, !625, !432}
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1559, file: !1493, line: 96)
!1559 = !DISubprogram(name: "strpbrk", scope: !1490, file: !1490, line: 305, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!625, !625, !625}
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1563, file: !1493, line: 97)
!1563 = !DISubprogram(name: "strrchr", scope: !1490, file: !1490, line: 255, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1565, file: !1493, line: 98)
!1565 = !DISubprogram(name: "strstr", scope: !1490, file: !1490, line: 332, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1567, file: !1582, line: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1568, line: 6, baseType: !1569)
!1568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1570, line: 21, baseType: !1571)
!1570 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1570, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1572, identifier: "_ZTS11__mbstate_t")
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1571, file: !1570, line: 15, baseType: !432, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1571, file: !1570, line: 20, baseType: !1575, size: 32, offset: 32)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !1570, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1576, identifier: "_ZTSN11__mbstate_tUt_E")
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1575, file: !1570, line: 18, baseType: !30, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1575, file: !1570, line: 19, baseType: !1579, size: 32)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: 4)
!1582 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1584, file: !1582, line: 141)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1585, line: 20, baseType: !30)
!1585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1587, file: !1582, line: 143)
!1587 = !DISubprogram(name: "btowc", scope: !1588, file: !1588, line: 285, type: !1589, flags: DIFlagPrototyped, spFlags: 0)
!1588 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1584, !432}
!1591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1592, file: !1582, line: 144)
!1592 = !DISubprogram(name: "fgetwc", scope: !1588, file: !1588, line: 744, type: !1593, flags: DIFlagPrototyped, spFlags: 0)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1584, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1597, line: 5, baseType: !1598)
!1597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1597, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!1599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1600, file: !1582, line: 145)
!1600 = !DISubprogram(name: "fgetws", scope: !1588, file: !1588, line: 773, type: !1601, flags: DIFlagPrototyped, spFlags: 0)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1385, !1384, !432, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1595)
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1605, file: !1582, line: 146)
!1605 = !DISubprogram(name: "fputwc", scope: !1588, file: !1588, line: 758, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1584, !1386, !1595}
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1609, file: !1582, line: 147)
!1609 = !DISubprogram(name: "fputws", scope: !1588, file: !1588, line: 780, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!432, !1430, !1603}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1613, file: !1582, line: 148)
!1613 = !DISubprogram(name: "fwide", scope: !1588, file: !1588, line: 588, type: !1614, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!432, !1595, !432}
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1617, file: !1582, line: 149)
!1617 = !DISubprogram(name: "fwprintf", scope: !1588, file: !1588, line: 595, type: !1618, flags: DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!432, !1603, !1430, null}
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1621, file: !1582, line: 150)
!1621 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1588, file: !1588, line: 657, type: !1618, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1623, file: !1582, line: 151)
!1623 = !DISubprogram(name: "getwc", scope: !1588, file: !1588, line: 745, type: !1593, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1625, file: !1582, line: 152)
!1625 = !DISubprogram(name: "getwchar", scope: !1588, file: !1588, line: 751, type: !1626, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1584}
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1629, file: !1582, line: 153)
!1629 = !DISubprogram(name: "mbrlen", scope: !1588, file: !1588, line: 308, type: !1630, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1316, !1387, !1316, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1635, file: !1582, line: 154)
!1635 = !DISubprogram(name: "mbrtowc", scope: !1588, file: !1588, line: 297, type: !1636, flags: DIFlagPrototyped, spFlags: 0)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1316, !1384, !1387, !1316, !1632}
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1639, file: !1582, line: 155)
!1639 = !DISubprogram(name: "mbsinit", scope: !1588, file: !1588, line: 293, type: !1640, flags: DIFlagPrototyped, spFlags: 0)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!432, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1645, file: !1582, line: 156)
!1645 = !DISubprogram(name: "mbsrtowcs", scope: !1588, file: !1588, line: 338, type: !1646, flags: DIFlagPrototyped, spFlags: 0)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1316, !1384, !1648, !1316, !1632}
!1648 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1651, file: !1582, line: 157)
!1651 = !DISubprogram(name: "putwc", scope: !1588, file: !1588, line: 759, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1653, file: !1582, line: 158)
!1653 = !DISubprogram(name: "putwchar", scope: !1588, file: !1588, line: 765, type: !1654, flags: DIFlagPrototyped, spFlags: 0)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1584, !1386}
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1657, file: !1582, line: 160)
!1657 = !DISubprogram(name: "swprintf", scope: !1588, file: !1588, line: 605, type: !1658, flags: DIFlagPrototyped, spFlags: 0)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!432, !1384, !1316, !1430, null}
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1661, file: !1582, line: 162)
!1661 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1588, file: !1588, line: 664, type: !1662, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!432, !1430, !1430, null}
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1665, file: !1582, line: 163)
!1665 = !DISubprogram(name: "ungetwc", scope: !1588, file: !1588, line: 788, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1584, !1584, !1595}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1669, file: !1582, line: 164)
!1669 = !DISubprogram(name: "vfwprintf", scope: !1588, file: !1588, line: 613, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!432, !1603, !1430, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1674, identifier: "_ZTS13__va_list_tag")
!1674 = !{!1675, !1677, !1678, !1679}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1673, file: !1676, baseType: !30, size: 32)
!1676 = !DIFile(filename: "common/Protocol.cpp", directory: "/home/raj/sme2")
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1673, file: !1676, baseType: !30, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1673, file: !1676, baseType: !652, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1673, file: !1676, baseType: !652, size: 64, offset: 128)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1681, file: !1582, line: 166)
!1681 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1588, file: !1588, line: 711, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1683, file: !1582, line: 169)
!1683 = !DISubprogram(name: "vswprintf", scope: !1588, file: !1588, line: 626, type: !1684, flags: DIFlagPrototyped, spFlags: 0)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!432, !1384, !1316, !1430, !1672}
!1686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1687, file: !1582, line: 172)
!1687 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1588, file: !1588, line: 718, type: !1688, flags: DIFlagPrototyped, spFlags: 0)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!432, !1430, !1430, !1672}
!1690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1691, file: !1582, line: 174)
!1691 = !DISubprogram(name: "vwprintf", scope: !1588, file: !1588, line: 621, type: !1692, flags: DIFlagPrototyped, spFlags: 0)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!432, !1430, !1672}
!1694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1695, file: !1582, line: 176)
!1695 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1588, file: !1588, line: 715, type: !1692, flags: DIFlagPrototyped, spFlags: 0)
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1697, file: !1582, line: 178)
!1697 = !DISubprogram(name: "wcrtomb", scope: !1588, file: !1588, line: 302, type: !1698, flags: DIFlagPrototyped, spFlags: 0)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1316, !1429, !1386, !1632}
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1701, file: !1582, line: 179)
!1701 = !DISubprogram(name: "wcscat", scope: !1588, file: !1588, line: 97, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1385, !1384, !1430}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1705, file: !1582, line: 180)
!1705 = !DISubprogram(name: "wcscmp", scope: !1588, file: !1588, line: 106, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!432, !1431, !1431}
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1709, file: !1582, line: 181)
!1709 = !DISubprogram(name: "wcscoll", scope: !1588, file: !1588, line: 131, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1711, file: !1582, line: 182)
!1711 = !DISubprogram(name: "wcscpy", scope: !1588, file: !1588, line: 87, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1713, file: !1582, line: 183)
!1713 = !DISubprogram(name: "wcscspn", scope: !1588, file: !1588, line: 188, type: !1714, flags: DIFlagPrototyped, spFlags: 0)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1316, !1431, !1431}
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1717, file: !1582, line: 184)
!1717 = !DISubprogram(name: "wcsftime", scope: !1588, file: !1588, line: 852, type: !1718, flags: DIFlagPrototyped, spFlags: 0)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1316, !1384, !1316, !1430, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1724, line: 7, size: 448, flags: DIFlagTypePassByValue, elements: !1725, identifier: "_ZTS2tm")
!1724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1723, file: !1724, line: 9, baseType: !432, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1723, file: !1724, line: 10, baseType: !432, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1723, file: !1724, line: 11, baseType: !432, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1723, file: !1724, line: 12, baseType: !432, size: 32, offset: 96)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1723, file: !1724, line: 13, baseType: !432, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1723, file: !1724, line: 14, baseType: !432, size: 32, offset: 160)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1723, file: !1724, line: 15, baseType: !432, size: 32, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1723, file: !1724, line: 16, baseType: !432, size: 32, offset: 224)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1723, file: !1724, line: 17, baseType: !432, size: 32, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1723, file: !1724, line: 20, baseType: !441, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1723, file: !1724, line: 21, baseType: !625, size: 64, offset: 384)
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1738, file: !1582, line: 185)
!1738 = !DISubprogram(name: "wcslen", scope: !1588, file: !1588, line: 223, type: !1739, flags: DIFlagPrototyped, spFlags: 0)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1316, !1431}
!1741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1742, file: !1582, line: 186)
!1742 = !DISubprogram(name: "wcsncat", scope: !1588, file: !1588, line: 101, type: !1743, flags: DIFlagPrototyped, spFlags: 0)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1385, !1384, !1430, !1316}
!1745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1746, file: !1582, line: 187)
!1746 = !DISubprogram(name: "wcsncmp", scope: !1588, file: !1588, line: 109, type: !1747, flags: DIFlagPrototyped, spFlags: 0)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!432, !1431, !1431, !1316}
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1750, file: !1582, line: 188)
!1750 = !DISubprogram(name: "wcsncpy", scope: !1588, file: !1588, line: 92, type: !1743, flags: DIFlagPrototyped, spFlags: 0)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1752, file: !1582, line: 189)
!1752 = !DISubprogram(name: "wcsrtombs", scope: !1588, file: !1588, line: 344, type: !1753, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1316, !1429, !1755, !1316, !1632}
!1755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1758, file: !1582, line: 190)
!1758 = !DISubprogram(name: "wcsspn", scope: !1588, file: !1588, line: 192, type: !1714, flags: DIFlagPrototyped, spFlags: 0)
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1760, file: !1582, line: 191)
!1760 = !DISubprogram(name: "wcstod", scope: !1588, file: !1588, line: 378, type: !1761, flags: DIFlagPrototyped, spFlags: 0)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1329, !1430, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1766, file: !1582, line: 193)
!1766 = !DISubprogram(name: "wcstof", scope: !1588, file: !1588, line: 383, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1471, !1430, !1763}
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1770, file: !1582, line: 195)
!1770 = !DISubprogram(name: "wcstok", scope: !1588, file: !1588, line: 218, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1385, !1384, !1430, !1763}
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1774, file: !1582, line: 196)
!1774 = !DISubprogram(name: "wcstol", scope: !1588, file: !1588, line: 429, type: !1775, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!441, !1430, !1763, !432}
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1778, file: !1582, line: 197)
!1778 = !DISubprogram(name: "wcstoul", scope: !1588, file: !1588, line: 434, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!44, !1430, !1763, !432}
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1782, file: !1582, line: 198)
!1782 = !DISubprogram(name: "wcsxfrm", scope: !1588, file: !1588, line: 135, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1316, !1384, !1430, !1316}
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1786, file: !1582, line: 199)
!1786 = !DISubprogram(name: "wctob", scope: !1588, file: !1588, line: 289, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!432, !1584}
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1790, file: !1582, line: 200)
!1790 = !DISubprogram(name: "wmemcmp", scope: !1588, file: !1588, line: 259, type: !1747, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1792, file: !1582, line: 201)
!1792 = !DISubprogram(name: "wmemcpy", scope: !1588, file: !1588, line: 263, type: !1743, flags: DIFlagPrototyped, spFlags: 0)
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1794, file: !1582, line: 202)
!1794 = !DISubprogram(name: "wmemmove", scope: !1588, file: !1588, line: 268, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1385, !1385, !1431, !1316}
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1798, file: !1582, line: 203)
!1798 = !DISubprogram(name: "wmemset", scope: !1588, file: !1588, line: 272, type: !1799, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1385, !1385, !1386, !1316}
!1801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1802, file: !1582, line: 204)
!1802 = !DISubprogram(name: "wprintf", scope: !1588, file: !1588, line: 602, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!432, !1430, null}
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1806, file: !1582, line: 205)
!1806 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1588, file: !1588, line: 661, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1808, file: !1582, line: 206)
!1808 = !DISubprogram(name: "wcschr", scope: !1588, file: !1588, line: 165, type: !1809, flags: DIFlagPrototyped, spFlags: 0)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1385, !1431, !1386}
!1811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1812, file: !1582, line: 207)
!1812 = !DISubprogram(name: "wcspbrk", scope: !1588, file: !1588, line: 202, type: !1813, flags: DIFlagPrototyped, spFlags: 0)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!1385, !1431, !1431}
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1816, file: !1582, line: 208)
!1816 = !DISubprogram(name: "wcsrchr", scope: !1588, file: !1588, line: 175, type: !1809, flags: DIFlagPrototyped, spFlags: 0)
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1818, file: !1582, line: 209)
!1818 = !DISubprogram(name: "wcsstr", scope: !1588, file: !1588, line: 213, type: !1813, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1820, file: !1582, line: 210)
!1820 = !DISubprogram(name: "wmemchr", scope: !1588, file: !1588, line: 254, type: !1821, flags: DIFlagPrototyped, spFlags: 0)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1385, !1431, !1386, !1316}
!1823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1824, file: !1582, line: 251)
!1824 = !DISubprogram(name: "wcstold", scope: !1588, file: !1588, line: 385, type: !1825, flags: DIFlagPrototyped, spFlags: 0)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!1476, !1430, !1763}
!1827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1828, file: !1582, line: 260)
!1828 = !DISubprogram(name: "wcstoll", scope: !1588, file: !1588, line: 442, type: !1829, flags: DIFlagPrototyped, spFlags: 0)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1442, !1430, !1763, !432}
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !1832, file: !1582, line: 261)
!1832 = !DISubprogram(name: "wcstoull", scope: !1588, file: !1588, line: 449, type: !1833, flags: DIFlagPrototyped, spFlags: 0)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1466, !1430, !1763, !432}
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1824, file: !1582, line: 267)
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1828, file: !1582, line: 268)
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1832, file: !1582, line: 269)
!1838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1766, file: !1582, line: 283)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1681, file: !1582, line: 286)
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1687, file: !1582, line: 289)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1695, file: !1582, line: 292)
!1842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1824, file: !1582, line: 296)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1828, file: !1582, line: 297)
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1832, file: !1582, line: 298)
!1845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1846, file: !1848, line: 53)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1847, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1847 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1848 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1850, file: !1848, line: 54)
!1850 = !DISubprogram(name: "setlocale", scope: !1847, file: !1847, line: 122, type: !1851, flags: DIFlagPrototyped, spFlags: 0)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1188, !432, !625}
!1853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1854, file: !1848, line: 55)
!1854 = !DISubprogram(name: "localeconv", scope: !1847, file: !1847, line: 125, type: !1855, flags: DIFlagPrototyped, spFlags: 0)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1859, file: !1861, line: 64)
!1859 = !DISubprogram(name: "isalnum", scope: !1860, file: !1860, line: 108, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1860 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1861 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1863, file: !1861, line: 65)
!1863 = !DISubprogram(name: "isalpha", scope: !1860, file: !1860, line: 109, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1865, file: !1861, line: 66)
!1865 = !DISubprogram(name: "iscntrl", scope: !1860, file: !1860, line: 110, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1867, file: !1861, line: 67)
!1867 = !DISubprogram(name: "isdigit", scope: !1860, file: !1860, line: 111, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1869, file: !1861, line: 68)
!1869 = !DISubprogram(name: "isgraph", scope: !1860, file: !1860, line: 113, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1871, file: !1861, line: 69)
!1871 = !DISubprogram(name: "islower", scope: !1860, file: !1860, line: 112, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1873, file: !1861, line: 70)
!1873 = !DISubprogram(name: "isprint", scope: !1860, file: !1860, line: 114, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1875, file: !1861, line: 71)
!1875 = !DISubprogram(name: "ispunct", scope: !1860, file: !1860, line: 115, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1877, file: !1861, line: 72)
!1877 = !DISubprogram(name: "isspace", scope: !1860, file: !1860, line: 116, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1879, file: !1861, line: 73)
!1879 = !DISubprogram(name: "isupper", scope: !1860, file: !1860, line: 117, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1881, file: !1861, line: 74)
!1881 = !DISubprogram(name: "isxdigit", scope: !1860, file: !1860, line: 118, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1883, file: !1861, line: 75)
!1883 = !DISubprogram(name: "tolower", scope: !1860, file: !1860, line: 122, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1885, file: !1861, line: 76)
!1885 = !DISubprogram(name: "toupper", scope: !1860, file: !1860, line: 125, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1887, file: !1861, line: 87)
!1887 = !DISubprogram(name: "isblank", scope: !1860, file: !1860, line: 130, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1888 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1889, entity: !1890, file: !1891, line: 58)
!1889 = !DINamespace(name: "__gnu_debug", scope: null)
!1890 = !DINamespace(name: "__debug", scope: !37)
!1891 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1893, file: !1895, line: 98)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1894, line: 7, baseType: !1598)
!1894 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1895 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1897, file: !1895, line: 99)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1898, line: 84, baseType: !1899)
!1898 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1900, line: 14, baseType: !1901)
!1900 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1900, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1903, file: !1895, line: 101)
!1903 = !DISubprogram(name: "clearerr", scope: !1898, file: !1898, line: 786, type: !1904, flags: DIFlagPrototyped, spFlags: 0)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1908, file: !1895, line: 102)
!1908 = !DISubprogram(name: "fclose", scope: !1898, file: !1898, line: 178, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!432, !1906}
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1912, file: !1895, line: 103)
!1912 = !DISubprogram(name: "feof", scope: !1898, file: !1898, line: 788, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1914, file: !1895, line: 104)
!1914 = !DISubprogram(name: "ferror", scope: !1898, file: !1898, line: 790, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1916, file: !1895, line: 105)
!1916 = !DISubprogram(name: "fflush", scope: !1898, file: !1898, line: 230, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1918, file: !1895, line: 106)
!1918 = !DISubprogram(name: "fgetc", scope: !1898, file: !1898, line: 513, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1920, file: !1895, line: 107)
!1920 = !DISubprogram(name: "fgetpos", scope: !1898, file: !1898, line: 760, type: !1921, flags: DIFlagPrototyped, spFlags: 0)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!432, !1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1906)
!1924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1927, file: !1895, line: 108)
!1927 = !DISubprogram(name: "fgets", scope: !1898, file: !1898, line: 592, type: !1928, flags: DIFlagPrototyped, spFlags: 0)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1188, !1429, !432, !1923}
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1931, file: !1895, line: 109)
!1931 = !DISubprogram(name: "fopen", scope: !1898, file: !1898, line: 258, type: !1932, flags: DIFlagPrototyped, spFlags: 0)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1906, !1387, !1387}
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1935, file: !1895, line: 110)
!1935 = !DISubprogram(name: "fprintf", scope: !1898, file: !1898, line: 350, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!432, !1923, !1387, null}
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1939, file: !1895, line: 111)
!1939 = !DISubprogram(name: "fputc", scope: !1898, file: !1898, line: 549, type: !1940, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!432, !432, !1906}
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1943, file: !1895, line: 112)
!1943 = !DISubprogram(name: "fputs", scope: !1898, file: !1898, line: 655, type: !1944, flags: DIFlagPrototyped, spFlags: 0)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!432, !1387, !1923}
!1946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1947, file: !1895, line: 113)
!1947 = !DISubprogram(name: "fread", scope: !1898, file: !1898, line: 675, type: !1948, flags: DIFlagPrototyped, spFlags: 0)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1316, !1502, !1316, !1316, !1923}
!1950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1951, file: !1895, line: 114)
!1951 = !DISubprogram(name: "freopen", scope: !1898, file: !1898, line: 265, type: !1952, flags: DIFlagPrototyped, spFlags: 0)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1906, !1387, !1387, !1923}
!1954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1955, file: !1895, line: 115)
!1955 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1898, file: !1898, line: 434, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1957, file: !1895, line: 116)
!1957 = !DISubprogram(name: "fseek", scope: !1898, file: !1898, line: 713, type: !1958, flags: DIFlagPrototyped, spFlags: 0)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!432, !1906, !441, !432}
!1960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1961, file: !1895, line: 117)
!1961 = !DISubprogram(name: "fsetpos", scope: !1898, file: !1898, line: 765, type: !1962, flags: DIFlagPrototyped, spFlags: 0)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!432, !1906, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1967, file: !1895, line: 118)
!1967 = !DISubprogram(name: "ftell", scope: !1898, file: !1898, line: 718, type: !1968, flags: DIFlagPrototyped, spFlags: 0)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!441, !1906}
!1970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1971, file: !1895, line: 119)
!1971 = !DISubprogram(name: "fwrite", scope: !1898, file: !1898, line: 681, type: !1972, flags: DIFlagPrototyped, spFlags: 0)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1316, !1503, !1316, !1316, !1923}
!1974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1975, file: !1895, line: 120)
!1975 = !DISubprogram(name: "getc", scope: !1898, file: !1898, line: 514, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1977, file: !1895, line: 121)
!1977 = !DISubprogram(name: "getchar", scope: !1898, file: !1898, line: 520, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1979, file: !1895, line: 126)
!1979 = !DISubprogram(name: "perror", scope: !1898, file: !1898, line: 804, type: !1980, flags: DIFlagPrototyped, spFlags: 0)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !625}
!1982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1983, file: !1895, line: 127)
!1983 = !DISubprogram(name: "printf", scope: !1898, file: !1898, line: 356, type: !1984, flags: DIFlagPrototyped, spFlags: 0)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!432, !1387, null}
!1986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1987, file: !1895, line: 128)
!1987 = !DISubprogram(name: "putc", scope: !1898, file: !1898, line: 550, type: !1940, flags: DIFlagPrototyped, spFlags: 0)
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1989, file: !1895, line: 129)
!1989 = !DISubprogram(name: "putchar", scope: !1898, file: !1898, line: 556, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1991, file: !1895, line: 130)
!1991 = !DISubprogram(name: "puts", scope: !1898, file: !1898, line: 661, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1993, file: !1895, line: 131)
!1993 = !DISubprogram(name: "remove", scope: !1898, file: !1898, line: 152, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1995, file: !1895, line: 132)
!1995 = !DISubprogram(name: "rename", scope: !1898, file: !1898, line: 154, type: !1518, flags: DIFlagPrototyped, spFlags: 0)
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1997, file: !1895, line: 133)
!1997 = !DISubprogram(name: "rewind", scope: !1898, file: !1898, line: 723, type: !1904, flags: DIFlagPrototyped, spFlags: 0)
!1998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1999, file: !1895, line: 134)
!1999 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1898, file: !1898, line: 437, type: !1984, flags: DIFlagPrototyped, spFlags: 0)
!2000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2001, file: !1895, line: 135)
!2001 = !DISubprogram(name: "setbuf", scope: !1898, file: !1898, line: 328, type: !2002, flags: DIFlagPrototyped, spFlags: 0)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1923, !1429}
!2004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2005, file: !1895, line: 136)
!2005 = !DISubprogram(name: "setvbuf", scope: !1898, file: !1898, line: 332, type: !2006, flags: DIFlagPrototyped, spFlags: 0)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!432, !1923, !1429, !432, !1316}
!2008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2009, file: !1895, line: 137)
!2009 = !DISubprogram(name: "sprintf", scope: !1898, file: !1898, line: 358, type: !2010, flags: DIFlagPrototyped, spFlags: 0)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!432, !1429, !1387, null}
!2012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2013, file: !1895, line: 138)
!2013 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1898, file: !1898, line: 439, type: !2014, flags: DIFlagPrototyped, spFlags: 0)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!432, !1387, !1387, null}
!2016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2017, file: !1895, line: 139)
!2017 = !DISubprogram(name: "tmpfile", scope: !1898, file: !1898, line: 188, type: !2018, flags: DIFlagPrototyped, spFlags: 0)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!1906}
!2020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2021, file: !1895, line: 141)
!2021 = !DISubprogram(name: "tmpnam", scope: !1898, file: !1898, line: 205, type: !2022, flags: DIFlagPrototyped, spFlags: 0)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1188, !1188}
!2024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2025, file: !1895, line: 143)
!2025 = !DISubprogram(name: "ungetc", scope: !1898, file: !1898, line: 668, type: !1940, flags: DIFlagPrototyped, spFlags: 0)
!2026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2027, file: !1895, line: 144)
!2027 = !DISubprogram(name: "vfprintf", scope: !1898, file: !1898, line: 365, type: !2028, flags: DIFlagPrototyped, spFlags: 0)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!432, !1923, !1387, !1672}
!2030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2031, file: !1895, line: 145)
!2031 = !DISubprogram(name: "vprintf", scope: !1898, file: !1898, line: 371, type: !2032, flags: DIFlagPrototyped, spFlags: 0)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!432, !1387, !1672}
!2034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2035, file: !1895, line: 146)
!2035 = !DISubprogram(name: "vsprintf", scope: !1898, file: !1898, line: 373, type: !2036, flags: DIFlagPrototyped, spFlags: 0)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!432, !1429, !1387, !1672}
!2038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !2039, file: !1895, line: 175)
!2039 = !DISubprogram(name: "snprintf", scope: !1898, file: !1898, line: 378, type: !2040, flags: DIFlagPrototyped, spFlags: 0)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!432, !1429, !1316, !1387, null}
!2042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !2043, file: !1895, line: 176)
!2043 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1898, file: !1898, line: 479, type: !2028, flags: DIFlagPrototyped, spFlags: 0)
!2044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !2045, file: !1895, line: 177)
!2045 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1898, file: !1898, line: 484, type: !2032, flags: DIFlagPrototyped, spFlags: 0)
!2046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !2047, file: !1895, line: 178)
!2047 = !DISubprogram(name: "vsnprintf", scope: !1898, file: !1898, line: 382, type: !2048, flags: DIFlagPrototyped, spFlags: 0)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!432, !1429, !1316, !1387, !1672}
!2050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !2051, file: !1895, line: 179)
!2051 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1898, file: !1898, line: 487, type: !2052, flags: DIFlagPrototyped, spFlags: 0)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!432, !1387, !1387, !1672}
!2054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2039, file: !1895, line: 185)
!2055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2043, file: !1895, line: 186)
!2056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2045, file: !1895, line: 187)
!2057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2047, file: !1895, line: 188)
!2058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2051, file: !1895, line: 189)
!2059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2060, file: !2061, line: 68)
!2060 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !2062, file: !2061, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!2061 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!2062 = !DINamespace(name: "__exception_ptr", scope: !37)
!2063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2062, entity: !2064, file: !2061, line: 84)
!2064 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !37, file: !2061, line: 80, type: !2065, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !2060}
!2067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2068, file: !2072, line: 82)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2069, line: 48, baseType: !2070)
!2069 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!2072 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!2073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2074, file: !2072, line: 83)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2075, line: 38, baseType: !44)
!2075 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1584, file: !2072, line: 84)
!2077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2078, file: !2072, line: 86)
!2078 = !DISubprogram(name: "iswalnum", scope: !2075, file: !2075, line: 95, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2080, file: !2072, line: 87)
!2080 = !DISubprogram(name: "iswalpha", scope: !2075, file: !2075, line: 101, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2082, file: !2072, line: 89)
!2082 = !DISubprogram(name: "iswblank", scope: !2075, file: !2075, line: 146, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2084, file: !2072, line: 91)
!2084 = !DISubprogram(name: "iswcntrl", scope: !2075, file: !2075, line: 104, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2086, file: !2072, line: 92)
!2086 = !DISubprogram(name: "iswctype", scope: !2075, file: !2075, line: 159, type: !2087, flags: DIFlagPrototyped, spFlags: 0)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!432, !1584, !2074}
!2089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2090, file: !2072, line: 93)
!2090 = !DISubprogram(name: "iswdigit", scope: !2075, file: !2075, line: 108, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2092, file: !2072, line: 94)
!2092 = !DISubprogram(name: "iswgraph", scope: !2075, file: !2075, line: 112, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2094, file: !2072, line: 95)
!2094 = !DISubprogram(name: "iswlower", scope: !2075, file: !2075, line: 117, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2096, file: !2072, line: 96)
!2096 = !DISubprogram(name: "iswprint", scope: !2075, file: !2075, line: 120, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2098, file: !2072, line: 97)
!2098 = !DISubprogram(name: "iswpunct", scope: !2075, file: !2075, line: 125, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2100, file: !2072, line: 98)
!2100 = !DISubprogram(name: "iswspace", scope: !2075, file: !2075, line: 130, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2102, file: !2072, line: 99)
!2102 = !DISubprogram(name: "iswupper", scope: !2075, file: !2075, line: 135, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2104, file: !2072, line: 100)
!2104 = !DISubprogram(name: "iswxdigit", scope: !2075, file: !2075, line: 140, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!2105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2106, file: !2072, line: 101)
!2106 = !DISubprogram(name: "towctrans", scope: !2069, file: !2069, line: 55, type: !2107, flags: DIFlagPrototyped, spFlags: 0)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!1584, !1584, !2068}
!2109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2110, file: !2072, line: 102)
!2110 = !DISubprogram(name: "towlower", scope: !2075, file: !2075, line: 166, type: !2111, flags: DIFlagPrototyped, spFlags: 0)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!1584, !1584}
!2113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2114, file: !2072, line: 103)
!2114 = !DISubprogram(name: "towupper", scope: !2075, file: !2075, line: 169, type: !2111, flags: DIFlagPrototyped, spFlags: 0)
!2115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2116, file: !2072, line: 104)
!2116 = !DISubprogram(name: "wctrans", scope: !2069, file: !2069, line: 52, type: !2117, flags: DIFlagPrototyped, spFlags: 0)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2068, !625}
!2119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2120, file: !2072, line: 105)
!2120 = !DISubprogram(name: "wctype", scope: !2075, file: !2075, line: 155, type: !2121, flags: DIFlagPrototyped, spFlags: 0)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2074, !625}
!2123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2124, file: !2127, line: 60)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !2125, line: 7, baseType: !2126)
!2125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1174, line: 156, baseType: !441)
!2127 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ctime", directory: "")
!2128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2129, file: !2127, line: 61)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2130, line: 10, baseType: !2131)
!2130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1174, line: 160, baseType: !441)
!2132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !1723, file: !2127, line: 62)
!2133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2134, file: !2127, line: 64)
!2134 = !DISubprogram(name: "clock", scope: !2135, file: !2135, line: 72, type: !2136, flags: DIFlagPrototyped, spFlags: 0)
!2135 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!2124}
!2138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2139, file: !2127, line: 65)
!2139 = !DISubprogram(name: "difftime", scope: !2135, file: !2135, line: 79, type: !2140, flags: DIFlagPrototyped, spFlags: 0)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!1329, !2129, !2129}
!2142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2143, file: !2127, line: 66)
!2143 = !DISubprogram(name: "mktime", scope: !2135, file: !2135, line: 83, type: !2144, flags: DIFlagPrototyped, spFlags: 0)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2129, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!2147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2148, file: !2127, line: 67)
!2148 = !DISubprogram(name: "time", scope: !2135, file: !2135, line: 76, type: !2149, flags: DIFlagPrototyped, spFlags: 0)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2129, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2153, file: !2127, line: 68)
!2153 = !DISubprogram(name: "asctime", scope: !2135, file: !2135, line: 179, type: !2154, flags: DIFlagPrototyped, spFlags: 0)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1188, !1721}
!2156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2157, file: !2127, line: 69)
!2157 = !DISubprogram(name: "ctime", scope: !2135, file: !2135, line: 183, type: !2158, flags: DIFlagPrototyped, spFlags: 0)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1188, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2163, file: !2127, line: 70)
!2163 = !DISubprogram(name: "gmtime", scope: !2135, file: !2135, line: 132, type: !2164, flags: DIFlagPrototyped, spFlags: 0)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!2146, !2160}
!2166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2167, file: !2127, line: 71)
!2167 = !DISubprogram(name: "localtime", scope: !2135, file: !2135, line: 136, type: !2164, flags: DIFlagPrototyped, spFlags: 0)
!2168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2169, file: !2127, line: 72)
!2169 = !DISubprogram(name: "strftime", scope: !2135, file: !2135, line: 100, type: !2170, flags: DIFlagPrototyped, spFlags: 0)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!1316, !1429, !1316, !1387, !1720}
!2172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2173, file: !2127, line: 79)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2174, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !2175, identifier: "_ZTS8timespec")
!2174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2173, file: !2174, line: 16, baseType: !2131, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2173, file: !2174, line: 21, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1174, line: 197, baseType: !441)
!2179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2180, file: !2127, line: 80)
!2180 = !DISubprogram(name: "timespec_get", scope: !2135, file: !2135, line: 371, type: !2181, flags: DIFlagPrototyped, spFlags: 0)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!432, !2183, !432}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !27, file: !2185, line: 95)
!2185 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "8d23d9a03c9ca5773e092d05679e2362")
!2186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2187, file: !2185, line: 96)
!2187 = !DIGlobalVariable(name: "__default_lock_policy", linkageName: "_ZN9__gnu_cxxL21__default_lock_policyE", scope: !29, file: !28, line: 53, type: !2188, isLocal: true, isDefinition: false)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!2189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2190, file: !2193, line: 58)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "imaxdiv_t", file: !2191, line: 275, baseType: !2192)
!2191 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!2192 = !DICompositeType(tag: DW_TAG_structure_type, file: !2191, line: 271, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9imaxdiv_t")
!2193 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cinttypes", directory: "")
!2194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2195, file: !2193, line: 61)
!2195 = !DISubprogram(name: "imaxabs", scope: !2191, file: !2191, line: 290, type: !2196, flags: DIFlagPrototyped, spFlags: 0)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!1252, !1252}
!2198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2199, file: !2193, line: 62)
!2199 = !DISubprogram(name: "imaxdiv", scope: !2191, file: !2191, line: 293, type: !2200, flags: DIFlagPrototyped, spFlags: 0)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2190, !1252, !1252}
!2202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2203, file: !2193, line: 68)
!2203 = !DISubprogram(name: "strtoimax", scope: !2191, file: !2191, line: 297, type: !2204, flags: DIFlagPrototyped, spFlags: 0)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!1252, !1387, !1414, !432}
!2206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2207, file: !2193, line: 69)
!2207 = !DISubprogram(name: "strtoumax", scope: !2191, file: !2191, line: 301, type: !2208, flags: DIFlagPrototyped, spFlags: 0)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!1288, !1387, !1414, !432}
!2210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2211, file: !2193, line: 72)
!2211 = !DISubprogram(name: "wcstoimax", scope: !2191, file: !2191, line: 305, type: !2212, flags: DIFlagPrototyped, spFlags: 0)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!1252, !1430, !1763, !432}
!2214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2215, file: !2193, line: 73)
!2215 = !DISubprogram(name: "wcstoumax", scope: !2191, file: !2191, line: 310, type: !2216, flags: DIFlagPrototyped, spFlags: 0)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!1288, !1430, !1763, !432}
!2218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !2219, file: !2222, line: 58)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !2220, line: 24, baseType: !2221)
!2220 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!2221 = !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!2222 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!2223 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2224, entity: !2225, file: !2227, line: 3305)
!2224 = !DINamespace(name: "chrono", scope: !37)
!2225 = !DINamespace(name: "chrono_literals", scope: !2226, exportSymbols: true)
!2226 = !DINamespace(name: "literals", scope: !37, exportSymbols: true)
!2227 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/chrono", directory: "")
!2228 = !{i32 7, !"Dwarf Version", i32 5}
!2229 = !{i32 2, !"Debug Info Version", i32 3}
!2230 = !{i32 1, !"wchar_size", i32 4}
!2231 = !{i32 8, !"PIC Level", i32 2}
!2232 = !{i32 7, !"PIE Level", i32 2}
!2233 = !{i32 7, !"uwtable", i32 2}
!2234 = !{i32 7, !"frame-pointer", i32 2}
!2235 = !{!"clang version 16.0.0"}
!2236 = distinct !DISubprogram(name: "ParseVersion", linkageName: "_ZN12COOLProtocol12ParseVersionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !2237, file: !2, line: 22, type: !2238, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2237 = !DINamespace(name: "COOLProtocol", scope: null)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1084, !1155}
!2240 = !DILocalVariable(name: "version", arg: 1, scope: !2236, file: !2, line: 22, type: !1155)
!2241 = !DILocation(line: 22, column: 71, scope: !2236)
!2242 = !DILocalVariable(name: "major", scope: !2236, file: !2, line: 24, type: !432)
!2243 = !DILocation(line: 24, column: 13, scope: !2236)
!2244 = !DILocalVariable(name: "minor", scope: !2236, file: !2, line: 25, type: !432)
!2245 = !DILocation(line: 25, column: 13, scope: !2236)
!2246 = !DILocalVariable(name: "patch", scope: !2236, file: !2, line: 26, type: !1120)
!2247 = !DILocation(line: 26, column: 21, scope: !2236)
!2248 = !DILocalVariable(name: "firstTokens", scope: !2236, file: !2, line: 28, type: !1117)
!2249 = !DILocation(line: 28, column: 22, scope: !2236)
!2250 = !DILocation(line: 28, column: 49, scope: !2236)
!2251 = !DILocation(line: 28, column: 34, scope: !2236)
!2252 = !DILocation(line: 29, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 29, column: 13)
!2254 = !DILocation(line: 29, column: 32, scope: !2253)
!2255 = !DILocation(line: 29, column: 13, scope: !2236)
!2256 = !DILocation(line: 31, column: 31, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 30, column: 9)
!2258 = !DILocation(line: 31, column: 21, scope: !2257)
!2259 = !DILocation(line: 31, column: 19, scope: !2257)
!2260 = !DILocation(line: 31, column: 13, scope: !2257)
!2261 = !DILocalVariable(name: "secondTokens", scope: !2257, file: !2, line: 33, type: !1117)
!2262 = !DILocation(line: 33, column: 26, scope: !2257)
!2263 = !DILocation(line: 34, column: 29, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 34, column: 17)
!2265 = !DILocation(line: 34, column: 36, scope: !2264)
!2266 = !DILocation(line: 34, column: 17, scope: !2257)
!2267 = !DILocation(line: 36, column: 47, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 35, column: 13)
!2269 = !DILocation(line: 36, column: 32, scope: !2268)
!2270 = !DILocation(line: 36, column: 30, scope: !2268)
!2271 = !DILocation(line: 36, column: 17, scope: !2268)
!2272 = !DILocation(line: 37, column: 13, scope: !2268)
!2273 = !DILocation(line: 47, column: 5, scope: !2236)
!2274 = !DILocation(line: 47, column: 5, scope: !2253)
!2275 = !DILocation(line: 47, column: 5, scope: !2257)
!2276 = !DILocation(line: 47, column: 5, scope: !2264)
!2277 = !DILocation(line: 47, column: 5, scope: !2268)
!2278 = !DILocation(line: 38, column: 30, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 38, column: 17)
!2280 = !DILocation(line: 38, column: 37, scope: !2279)
!2281 = !DILocation(line: 38, column: 17, scope: !2257)
!2282 = !DILocation(line: 40, column: 35, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 39, column: 13)
!2284 = !DILocation(line: 40, column: 25, scope: !2283)
!2285 = !DILocation(line: 40, column: 23, scope: !2283)
!2286 = !DILocation(line: 40, column: 17, scope: !2283)
!2287 = !DILocation(line: 41, column: 13, scope: !2283)
!2288 = !DILocation(line: 47, column: 5, scope: !2283)
!2289 = !DILocation(line: 43, column: 30, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 43, column: 17)
!2291 = !DILocation(line: 43, column: 37, scope: !2290)
!2292 = !DILocation(line: 43, column: 17, scope: !2257)
!2293 = !DILocation(line: 44, column: 25, scope: !2290)
!2294 = !DILocation(line: 44, column: 23, scope: !2290)
!2295 = !DILocation(line: 44, column: 17, scope: !2290)
!2296 = !DILocation(line: 45, column: 9, scope: !2253)
!2297 = !DILocation(line: 45, column: 9, scope: !2257)
!2298 = !DILocation(line: 46, column: 16, scope: !2236)
!2299 = distinct !DISubprogram(name: "tokenize", linkageName: "_ZN4Util8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc", scope: !2301, file: !2300, line: 579, type: !2302, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2300 = !DIFile(filename: "./common/Util.hpp", directory: "/home/raj/sme2", checksumkind: CSK_MD5, checksum: "113fa78f8989611c653c45bebc6cc735")
!2301 = !DINamespace(name: "Util", scope: null)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!1117, !1155, !4}
!2304 = !DILocalVariable(name: "s", arg: 1, scope: !2299, file: !2300, line: 579, type: !1155)
!2305 = !DILocation(line: 579, column: 53, scope: !2299)
!2306 = !DILocalVariable(name: "delimiter", arg: 2, scope: !2299, file: !2300, line: 579, type: !4)
!2307 = !DILocation(line: 579, column: 67, scope: !2299)
!2308 = !DILocation(line: 581, column: 13, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2299, file: !2300, line: 581, column: 13)
!2310 = !DILocation(line: 581, column: 15, scope: !2309)
!2311 = !DILocation(line: 581, column: 13, scope: !2299)
!2312 = !DILocation(line: 582, column: 20, scope: !2309)
!2313 = !DILocation(line: 582, column: 13, scope: !2309)
!2314 = !DILocalVariable(name: "tokens", scope: !2299, file: !2300, line: 584, type: !64)
!2315 = !DILocation(line: 584, column: 34, scope: !2299)
!2316 = !DILocation(line: 585, column: 18, scope: !2299)
!2317 = !DILocation(line: 585, column: 20, scope: !2299)
!2318 = !DILocation(line: 585, column: 28, scope: !2299)
!2319 = !DILocation(line: 585, column: 30, scope: !2299)
!2320 = !DILocation(line: 585, column: 38, scope: !2299)
!2321 = !DILocation(line: 585, column: 9, scope: !2299)
!2322 = !DILocation(line: 586, column: 29, scope: !2299)
!2323 = !DILocation(line: 586, column: 32, scope: !2299)
!2324 = !DILocation(line: 586, column: 16, scope: !2299)
!2325 = !DILocation(line: 586, column: 9, scope: !2299)
!2326 = !DILocation(line: 587, column: 5, scope: !2299)
!2327 = distinct !DISubprogram(name: "size", linkageName: "_ZNK12StringVector4sizeEv", scope: !1117, file: !51, line: 62, type: !1136, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1135, retainedNodes: !185)
!2328 = !DILocalVariable(name: "this", arg: 1, scope: !2327, type: !2329, flags: DIFlagArtificial | DIFlagObjectPointer)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!2330 = !DILocation(line: 0, scope: !2327)
!2331 = !DILocation(line: 62, column: 39, scope: !2327)
!2332 = !DILocation(line: 62, column: 47, scope: !2327)
!2333 = !DILocation(line: 62, column: 32, scope: !2327)
!2334 = distinct !DISubprogram(name: "stoi", linkageName: "_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi", scope: !728, file: !21, line: 6619, type: !2335, scopeLine: 6620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!432, !1155, !1189, !432}
!2337 = !DILocalVariable(name: "__str", arg: 1, scope: !2334, file: !21, line: 6619, type: !1155)
!2338 = !DILocation(line: 6619, column: 22, scope: !2334)
!2339 = !DILocalVariable(name: "__idx", arg: 2, scope: !2334, file: !21, line: 6619, type: !1189)
!2340 = !DILocation(line: 6619, column: 37, scope: !2334)
!2341 = !DILocalVariable(name: "__base", arg: 3, scope: !2334, file: !21, line: 6619, type: !432)
!2342 = !DILocation(line: 6619, column: 52, scope: !2334)
!2343 = !DILocation(line: 6620, column: 63, scope: !2334)
!2344 = !DILocation(line: 6620, column: 69, scope: !2334)
!2345 = !DILocation(line: 6621, column: 6, scope: !2334)
!2346 = !DILocation(line: 6621, column: 13, scope: !2334)
!2347 = !DILocation(line: 6620, column: 12, scope: !2334)
!2348 = !DILocation(line: 6620, column: 5, scope: !2334)
!2349 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK12StringVectorixB5cxx11Em", scope: !1117, file: !51, line: 51, type: !1131, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1130, retainedNodes: !185)
!2350 = !DILocalVariable(name: "this", arg: 1, scope: !2349, type: !2329, flags: DIFlagArtificial | DIFlagObjectPointer)
!2351 = !DILocation(line: 0, scope: !2349)
!2352 = !DILocalVariable(name: "index", arg: 2, scope: !2349, file: !51, line: 51, type: !42)
!2353 = !DILocation(line: 51, column: 40, scope: !2349)
!2354 = !DILocation(line: 53, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !51, line: 53, column: 13)
!2356 = !DILocation(line: 53, column: 22, scope: !2355)
!2357 = !DILocation(line: 53, column: 30, scope: !2355)
!2358 = !DILocation(line: 53, column: 19, scope: !2355)
!2359 = !DILocation(line: 53, column: 13, scope: !2349)
!2360 = !DILocation(line: 55, column: 20, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !51, line: 54, column: 9)
!2362 = !DILocation(line: 55, column: 13, scope: !2361)
!2363 = !DILocalVariable(name: "token", scope: !2349, file: !51, line: 58, type: !122)
!2364 = !DILocation(line: 58, column: 28, scope: !2349)
!2365 = !DILocation(line: 58, column: 36, scope: !2349)
!2366 = !DILocation(line: 58, column: 44, scope: !2349)
!2367 = !DILocation(line: 59, column: 16, scope: !2349)
!2368 = !DILocation(line: 59, column: 31, scope: !2349)
!2369 = !DILocation(line: 59, column: 37, scope: !2349)
!2370 = !DILocation(line: 59, column: 45, scope: !2349)
!2371 = !DILocation(line: 59, column: 51, scope: !2349)
!2372 = !DILocation(line: 59, column: 24, scope: !2349)
!2373 = !DILocation(line: 59, column: 9, scope: !2349)
!2374 = !DILocation(line: 60, column: 5, scope: !2349)
!2375 = distinct !DISubprogram(name: "StringVector", linkageName: "_ZN12StringVectorC2Ev", scope: !1117, file: !51, line: 42, type: !1124, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1123, retainedNodes: !185)
!2376 = !DILocalVariable(name: "this", arg: 1, scope: !2375, type: !2377, flags: DIFlagArtificial | DIFlagObjectPointer)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!2378 = !DILocation(line: 0, scope: !2375)
!2379 = !DILocation(line: 42, column: 14, scope: !2375)
!2380 = !DILocation(line: 42, column: 37, scope: !2375)
!2381 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN12StringVectoraSEOS_", scope: !1117, file: !51, line: 35, type: !2382, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2386, retainedNodes: !185)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !1126, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1117, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1117, size: 64)
!2386 = !DISubprogram(name: "operator=", linkageName: "_ZN12StringVectoraSEOS_", scope: !1117, type: !2382, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2387 = !DILocalVariable(name: "this", arg: 1, scope: !2381, type: !2377, flags: DIFlagArtificial | DIFlagObjectPointer)
!2388 = !DILocation(line: 0, scope: !2381)
!2389 = !DILocalVariable(arg: 2, scope: !2381, type: !2385)
!2390 = !DILocation(line: 35, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2381, file: !51, line: 35, column: 7)
!2392 = distinct !DISubprogram(name: "~StringVector", linkageName: "_ZN12StringVectorD2Ev", scope: !1117, file: !51, line: 35, type: !1124, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2393, retainedNodes: !185)
!2393 = !DISubprogram(name: "~StringVector", scope: !1117, type: !1124, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2394 = !DILocalVariable(name: "this", arg: 1, scope: !2392, type: !2377, flags: DIFlagArtificial | DIFlagObjectPointer)
!2395 = !DILocation(line: 0, scope: !2392)
!2396 = !DILocation(line: 35, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !51, line: 35, column: 7)
!2398 = !DILocation(line: 35, column: 7, scope: !2392)
!2399 = distinct !DISubprogram(name: "make_tuple<int &, int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", linkageName: "_ZSt10make_tupleIJRiS0_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_", scope: !37, file: !836, line: 1605, type: !2400, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !2402, retainedNodes: !185)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!1084, !952, !952, !880}
!2402 = !{!2403}
!2403 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !2404)
!2404 = !{!2405, !2405, !2406}
!2405 = !DITemplateTypeParameter(type: !952)
!2406 = !DITemplateTypeParameter(type: !880)
!2407 = !DILocalVariable(name: "__args", arg: 1, scope: !2399, file: !836, line: 1605, type: !952)
!2408 = !DILocation(line: 1605, column: 31, scope: !2399)
!2409 = !DILocalVariable(name: "__args", arg: 2, scope: !2399, file: !836, line: 1605, type: !952)
!2410 = !DILocalVariable(name: "__args", arg: 3, scope: !2399, file: !836, line: 1605, type: !880)
!2411 = !DILocation(line: 1609, column: 52, scope: !2399)
!2412 = !DILocation(line: 1609, column: 14, scope: !2399)
!2413 = !DILocation(line: 1609, column: 7, scope: !2399)
!2414 = distinct !DISubprogram(name: "getTokenInteger", linkageName: "_ZN12COOLProtocol15getTokenIntegerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri", scope: !2237, file: !2, line: 49, type: !2415, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!178, !1155, !1155, !952}
!2417 = !DILocalVariable(name: "token", arg: 1, scope: !2414, file: !2, line: 49, type: !1155)
!2418 = !DILocation(line: 49, column: 45, scope: !2414)
!2419 = !DILocalVariable(name: "name", arg: 2, scope: !2414, file: !2, line: 49, type: !1155)
!2420 = !DILocation(line: 49, column: 71, scope: !2414)
!2421 = !DILocalVariable(name: "value", arg: 3, scope: !2414, file: !2, line: 49, type: !952)
!2422 = !DILocation(line: 49, column: 82, scope: !2414)
!2423 = !DILocation(line: 51, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 51, column: 13)
!2425 = !DILocation(line: 51, column: 19, scope: !2424)
!2426 = !DILocation(line: 51, column: 29, scope: !2424)
!2427 = !DILocation(line: 51, column: 34, scope: !2424)
!2428 = !DILocation(line: 51, column: 41, scope: !2424)
!2429 = !DILocation(line: 51, column: 26, scope: !2424)
!2430 = !DILocation(line: 51, column: 46, scope: !2424)
!2431 = !DILocation(line: 52, column: 13, scope: !2424)
!2432 = !DILocation(line: 52, column: 30, scope: !2424)
!2433 = !DILocation(line: 52, column: 35, scope: !2424)
!2434 = !DILocation(line: 52, column: 43, scope: !2424)
!2435 = !DILocation(line: 52, column: 19, scope: !2424)
!2436 = !DILocation(line: 52, column: 49, scope: !2424)
!2437 = !DILocation(line: 52, column: 54, scope: !2424)
!2438 = !DILocation(line: 53, column: 13, scope: !2424)
!2439 = !DILocation(line: 53, column: 19, scope: !2424)
!2440 = !DILocation(line: 53, column: 24, scope: !2424)
!2441 = !DILocation(line: 53, column: 32, scope: !2424)
!2442 = !DILocation(line: 51, column: 13, scope: !2414)
!2443 = !DILocalVariable(name: "str", scope: !2444, file: !2, line: 55, type: !625)
!2444 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 54, column: 9)
!2445 = !DILocation(line: 55, column: 25, scope: !2444)
!2446 = !DILocation(line: 55, column: 31, scope: !2444)
!2447 = !DILocation(line: 55, column: 37, scope: !2444)
!2448 = !DILocation(line: 55, column: 46, scope: !2444)
!2449 = !DILocation(line: 55, column: 51, scope: !2444)
!2450 = !DILocation(line: 55, column: 44, scope: !2444)
!2451 = !DILocation(line: 55, column: 58, scope: !2444)
!2452 = !DILocalVariable(name: "endptr", scope: !2444, file: !2, line: 56, type: !1188)
!2453 = !DILocation(line: 56, column: 19, scope: !2444)
!2454 = !DILocation(line: 57, column: 28, scope: !2444)
!2455 = !DILocation(line: 57, column: 21, scope: !2444)
!2456 = !DILocation(line: 57, column: 13, scope: !2444)
!2457 = !DILocation(line: 57, column: 19, scope: !2444)
!2458 = !DILocation(line: 58, column: 21, scope: !2444)
!2459 = !DILocation(line: 58, column: 30, scope: !2444)
!2460 = !DILocation(line: 58, column: 28, scope: !2444)
!2461 = !DILocation(line: 58, column: 13, scope: !2444)
!2462 = !DILocation(line: 61, column: 9, scope: !2414)
!2463 = !DILocation(line: 62, column: 5, scope: !2414)
!2464 = distinct !DISubprogram(name: "getTokenUInt64", linkageName: "_ZN12COOLProtocol14getTokenUInt64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Rm", scope: !2237, file: !2, line: 64, type: !2465, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!178, !1155, !1155, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1265, size: 64)
!2468 = !DILocalVariable(name: "token", arg: 1, scope: !2464, file: !2, line: 64, type: !1155)
!2469 = !DILocation(line: 64, column: 44, scope: !2464)
!2470 = !DILocalVariable(name: "name", arg: 2, scope: !2464, file: !2, line: 64, type: !1155)
!2471 = !DILocation(line: 64, column: 70, scope: !2464)
!2472 = !DILocalVariable(name: "value", arg: 3, scope: !2464, file: !2, line: 64, type: !2467)
!2473 = !DILocation(line: 64, column: 86, scope: !2464)
!2474 = !DILocation(line: 66, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 66, column: 13)
!2476 = !DILocation(line: 66, column: 19, scope: !2475)
!2477 = !DILocation(line: 66, column: 29, scope: !2475)
!2478 = !DILocation(line: 66, column: 34, scope: !2475)
!2479 = !DILocation(line: 66, column: 41, scope: !2475)
!2480 = !DILocation(line: 66, column: 26, scope: !2475)
!2481 = !DILocation(line: 66, column: 46, scope: !2475)
!2482 = !DILocation(line: 67, column: 13, scope: !2475)
!2483 = !DILocation(line: 67, column: 30, scope: !2475)
!2484 = !DILocation(line: 67, column: 35, scope: !2475)
!2485 = !DILocation(line: 67, column: 43, scope: !2475)
!2486 = !DILocation(line: 67, column: 19, scope: !2475)
!2487 = !DILocation(line: 67, column: 49, scope: !2475)
!2488 = !DILocation(line: 67, column: 54, scope: !2475)
!2489 = !DILocation(line: 68, column: 13, scope: !2475)
!2490 = !DILocation(line: 68, column: 19, scope: !2475)
!2491 = !DILocation(line: 68, column: 24, scope: !2475)
!2492 = !DILocation(line: 68, column: 32, scope: !2475)
!2493 = !DILocation(line: 66, column: 13, scope: !2464)
!2494 = !DILocalVariable(name: "str", scope: !2495, file: !2, line: 70, type: !625)
!2495 = distinct !DILexicalBlock(scope: !2475, file: !2, line: 69, column: 9)
!2496 = !DILocation(line: 70, column: 25, scope: !2495)
!2497 = !DILocation(line: 70, column: 31, scope: !2495)
!2498 = !DILocation(line: 70, column: 37, scope: !2495)
!2499 = !DILocation(line: 70, column: 46, scope: !2495)
!2500 = !DILocation(line: 70, column: 51, scope: !2495)
!2501 = !DILocation(line: 70, column: 44, scope: !2495)
!2502 = !DILocation(line: 70, column: 58, scope: !2495)
!2503 = !DILocalVariable(name: "endptr", scope: !2495, file: !2, line: 71, type: !1188)
!2504 = !DILocation(line: 71, column: 19, scope: !2495)
!2505 = !DILocation(line: 72, column: 30, scope: !2495)
!2506 = !DILocation(line: 72, column: 21, scope: !2495)
!2507 = !DILocation(line: 72, column: 13, scope: !2495)
!2508 = !DILocation(line: 72, column: 19, scope: !2495)
!2509 = !DILocation(line: 73, column: 21, scope: !2495)
!2510 = !DILocation(line: 73, column: 30, scope: !2495)
!2511 = !DILocation(line: 73, column: 28, scope: !2495)
!2512 = !DILocation(line: 73, column: 13, scope: !2495)
!2513 = !DILocation(line: 76, column: 9, scope: !2464)
!2514 = !DILocation(line: 77, column: 5, scope: !2464)
!2515 = distinct !DISubprogram(name: "getTokenUInt32", linkageName: "_ZN12COOLProtocol14getTokenUInt32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Rj", scope: !2237, file: !2, line: 79, type: !2516, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!178, !1155, !1155, !1170}
!2518 = !DILocalVariable(name: "token", arg: 1, scope: !2515, file: !2, line: 79, type: !1155)
!2519 = !DILocation(line: 79, column: 44, scope: !2515)
!2520 = !DILocalVariable(name: "name", arg: 2, scope: !2515, file: !2, line: 79, type: !1155)
!2521 = !DILocation(line: 79, column: 70, scope: !2515)
!2522 = !DILocalVariable(name: "value", arg: 3, scope: !2515, file: !2, line: 79, type: !1170)
!2523 = !DILocation(line: 79, column: 86, scope: !2515)
!2524 = !DILocation(line: 81, column: 13, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 81, column: 13)
!2526 = !DILocation(line: 81, column: 19, scope: !2525)
!2527 = !DILocation(line: 81, column: 29, scope: !2525)
!2528 = !DILocation(line: 81, column: 34, scope: !2525)
!2529 = !DILocation(line: 81, column: 41, scope: !2525)
!2530 = !DILocation(line: 81, column: 26, scope: !2525)
!2531 = !DILocation(line: 81, column: 46, scope: !2525)
!2532 = !DILocation(line: 82, column: 13, scope: !2525)
!2533 = !DILocation(line: 82, column: 30, scope: !2525)
!2534 = !DILocation(line: 82, column: 35, scope: !2525)
!2535 = !DILocation(line: 82, column: 43, scope: !2525)
!2536 = !DILocation(line: 82, column: 19, scope: !2525)
!2537 = !DILocation(line: 82, column: 49, scope: !2525)
!2538 = !DILocation(line: 82, column: 54, scope: !2525)
!2539 = !DILocation(line: 83, column: 13, scope: !2525)
!2540 = !DILocation(line: 83, column: 19, scope: !2525)
!2541 = !DILocation(line: 83, column: 24, scope: !2525)
!2542 = !DILocation(line: 83, column: 32, scope: !2525)
!2543 = !DILocation(line: 81, column: 13, scope: !2515)
!2544 = !DILocalVariable(name: "str", scope: !2545, file: !2, line: 85, type: !625)
!2545 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 84, column: 9)
!2546 = !DILocation(line: 85, column: 25, scope: !2545)
!2547 = !DILocation(line: 85, column: 31, scope: !2545)
!2548 = !DILocation(line: 85, column: 37, scope: !2545)
!2549 = !DILocation(line: 85, column: 46, scope: !2545)
!2550 = !DILocation(line: 85, column: 51, scope: !2545)
!2551 = !DILocation(line: 85, column: 44, scope: !2545)
!2552 = !DILocation(line: 85, column: 58, scope: !2545)
!2553 = !DILocalVariable(name: "endptr", scope: !2545, file: !2, line: 86, type: !1188)
!2554 = !DILocation(line: 86, column: 19, scope: !2545)
!2555 = !DILocation(line: 87, column: 29, scope: !2545)
!2556 = !DILocation(line: 87, column: 21, scope: !2545)
!2557 = !DILocation(line: 87, column: 13, scope: !2545)
!2558 = !DILocation(line: 87, column: 19, scope: !2545)
!2559 = !DILocation(line: 88, column: 21, scope: !2545)
!2560 = !DILocation(line: 88, column: 30, scope: !2545)
!2561 = !DILocation(line: 88, column: 28, scope: !2545)
!2562 = !DILocation(line: 88, column: 13, scope: !2545)
!2563 = !DILocation(line: 91, column: 9, scope: !2515)
!2564 = !DILocation(line: 92, column: 5, scope: !2515)
!2565 = distinct !DISubprogram(name: "getTokenString", linkageName: "_ZN12COOLProtocol14getTokenStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_", scope: !2237, file: !2, line: 94, type: !2566, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!178, !1155, !1155, !1178}
!2568 = !DILocalVariable(name: "token", arg: 1, scope: !2565, file: !2, line: 94, type: !1155)
!2569 = !DILocation(line: 94, column: 44, scope: !2565)
!2570 = !DILocalVariable(name: "name", arg: 2, scope: !2565, file: !2, line: 94, type: !1155)
!2571 = !DILocation(line: 94, column: 70, scope: !2565)
!2572 = !DILocalVariable(name: "value", arg: 3, scope: !2565, file: !2, line: 94, type: !1178)
!2573 = !DILocation(line: 94, column: 89, scope: !2565)
!2574 = !DILocation(line: 96, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 96, column: 13)
!2576 = !DILocation(line: 96, column: 19, scope: !2575)
!2577 = !DILocation(line: 96, column: 30, scope: !2575)
!2578 = !DILocation(line: 96, column: 35, scope: !2575)
!2579 = !DILocation(line: 96, column: 42, scope: !2575)
!2580 = !DILocation(line: 96, column: 26, scope: !2575)
!2581 = !DILocation(line: 96, column: 47, scope: !2575)
!2582 = !DILocation(line: 97, column: 13, scope: !2575)
!2583 = !DILocation(line: 97, column: 30, scope: !2575)
!2584 = !DILocation(line: 97, column: 35, scope: !2575)
!2585 = !DILocation(line: 97, column: 43, scope: !2575)
!2586 = !DILocation(line: 97, column: 19, scope: !2575)
!2587 = !DILocation(line: 97, column: 49, scope: !2575)
!2588 = !DILocation(line: 97, column: 54, scope: !2575)
!2589 = !DILocation(line: 98, column: 13, scope: !2575)
!2590 = !DILocation(line: 98, column: 19, scope: !2575)
!2591 = !DILocation(line: 98, column: 24, scope: !2575)
!2592 = !DILocation(line: 98, column: 32, scope: !2575)
!2593 = !DILocation(line: 96, column: 13, scope: !2565)
!2594 = !DILocation(line: 100, column: 21, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 99, column: 9)
!2596 = !DILocation(line: 100, column: 34, scope: !2595)
!2597 = !DILocation(line: 100, column: 39, scope: !2595)
!2598 = !DILocation(line: 100, column: 46, scope: !2595)
!2599 = !DILocation(line: 100, column: 27, scope: !2595)
!2600 = !DILocation(line: 100, column: 13, scope: !2595)
!2601 = !DILocation(line: 100, column: 19, scope: !2595)
!2602 = !DILocation(line: 101, column: 13, scope: !2595)
!2603 = !DILocation(line: 104, column: 9, scope: !2565)
!2604 = !DILocation(line: 105, column: 5, scope: !2565)
!2605 = distinct !DISubprogram(name: "getTokenKeyword", linkageName: "_ZN12COOLProtocol15getTokenKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt3mapIS5_iSt4lessIS5_ESaISt4pairIS6_iEEERi", scope: !2237, file: !2, line: 107, type: !2606, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!178, !1155, !1155, !2608, !952}
!2608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_class_type, name: "map<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> > >", scope: !37, file: !2611, line: 100, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE")
!2611 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_map.h", directory: "", checksumkind: CSK_MD5, checksum: "aee57a8661ec66bcbd3d049a16df390e")
!2612 = !DILocalVariable(name: "token", arg: 1, scope: !2605, file: !2, line: 107, type: !1155)
!2613 = !DILocation(line: 107, column: 45, scope: !2605)
!2614 = !DILocalVariable(name: "name", arg: 2, scope: !2605, file: !2, line: 107, type: !1155)
!2615 = !DILocation(line: 107, column: 71, scope: !2605)
!2616 = !DILocalVariable(name: "map", arg: 3, scope: !2605, file: !2, line: 108, type: !2608)
!2617 = !DILocation(line: 108, column: 60, scope: !2605)
!2618 = !DILocalVariable(name: "value", arg: 4, scope: !2605, file: !2, line: 108, type: !952)
!2619 = !DILocation(line: 108, column: 70, scope: !2605)
!2620 = !DILocalVariable(name: "t", scope: !2605, file: !2, line: 110, type: !1120)
!2621 = !DILocation(line: 110, column: 21, scope: !2605)
!2622 = !DILocation(line: 111, column: 28, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2605, file: !2, line: 111, column: 13)
!2624 = !DILocation(line: 111, column: 35, scope: !2623)
!2625 = !DILocation(line: 111, column: 13, scope: !2623)
!2626 = !DILocation(line: 111, column: 13, scope: !2605)
!2627 = !DILocation(line: 113, column: 17, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 113, column: 17)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 112, column: 9)
!2630 = !DILocation(line: 113, column: 22, scope: !2628)
!2631 = !DILocation(line: 113, column: 30, scope: !2628)
!2632 = !DILocation(line: 113, column: 37, scope: !2628)
!2633 = !DILocation(line: 113, column: 44, scope: !2628)
!2634 = !DILocation(line: 113, column: 33, scope: !2628)
!2635 = !DILocation(line: 113, column: 49, scope: !2628)
!2636 = !DILocation(line: 113, column: 17, scope: !2629)
!2637 = !DILocation(line: 115, column: 35, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 114, column: 13)
!2639 = !DILocation(line: 115, column: 42, scope: !2638)
!2640 = !DILocation(line: 115, column: 23, scope: !2638)
!2641 = !DILocation(line: 115, column: 19, scope: !2638)
!2642 = !DILocation(line: 115, column: 17, scope: !2638)
!2643 = !DILocation(line: 116, column: 13, scope: !2638)
!2644 = !DILocation(line: 127, column: 5, scope: !2623)
!2645 = !DILocation(line: 127, column: 5, scope: !2605)
!2646 = !DILocalVariable(name: "p", scope: !2629, file: !2, line: 118, type: !2647)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !2610, file: !2611, line: 165, baseType: !653, flags: DIFlagPublic)
!2649 = !DILocation(line: 118, column: 24, scope: !2629)
!2650 = !DILocation(line: 118, column: 28, scope: !2629)
!2651 = !DILocation(line: 118, column: 32, scope: !2629)
!2652 = !DILocation(line: 119, column: 22, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 119, column: 17)
!2654 = !DILocation(line: 119, column: 26, scope: !2653)
!2655 = !DILocation(line: 119, column: 19, scope: !2653)
!2656 = !DILocation(line: 119, column: 17, scope: !2629)
!2657 = !DILocation(line: 121, column: 25, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 120, column: 13)
!2659 = !DILocation(line: 121, column: 28, scope: !2658)
!2660 = !DILocation(line: 121, column: 17, scope: !2658)
!2661 = !DILocation(line: 121, column: 23, scope: !2658)
!2662 = !DILocation(line: 122, column: 17, scope: !2658)
!2663 = !DILocation(line: 124, column: 9, scope: !2629)
!2664 = !DILocation(line: 126, column: 9, scope: !2605)
!2665 = distinct !DISubprogram(name: "find", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_", scope: !2610, file: !2611, line: 1194, type: !2666, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2672, retainedNodes: !185)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!2648, !2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2669 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_type", scope: !2610, file: !2611, line: 103, baseType: !726, flags: DIFlagPublic)
!2672 = !DISubprogram(name: "find", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_", scope: !2610, file: !2611, line: 1194, type: !2666, scopeLine: 1194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2673 = !DILocalVariable(name: "this", arg: 1, scope: !2665, type: !2674, flags: DIFlagArtificial | DIFlagObjectPointer)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2675 = !DILocation(line: 0, scope: !2665)
!2676 = !DILocalVariable(name: "__x", arg: 2, scope: !2665, file: !2611, line: 1194, type: !2669)
!2677 = !DILocation(line: 1194, column: 28, scope: !2665)
!2678 = !DILocation(line: 1195, column: 16, scope: !2665)
!2679 = !DILocation(line: 1195, column: 26, scope: !2665)
!2680 = !DILocation(line: 1195, column: 21, scope: !2665)
!2681 = !DILocation(line: 1195, column: 9, scope: !2665)
!2682 = distinct !DISubprogram(name: "operator!=", linkageName: "_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_", scope: !37, file: !36, line: 401, type: !2683, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!178, !2685, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!2687 = !DILocalVariable(name: "__x", arg: 1, scope: !2682, file: !36, line: 401, type: !2685)
!2688 = !DILocation(line: 401, column: 31, scope: !2682)
!2689 = !DILocalVariable(name: "__y", arg: 2, scope: !2682, file: !36, line: 401, type: !2685)
!2690 = !DILocation(line: 401, column: 49, scope: !2682)
!2691 = !DILocation(line: 402, column: 16, scope: !2682)
!2692 = !DILocation(line: 402, column: 20, scope: !2682)
!2693 = !DILocation(line: 402, column: 31, scope: !2682)
!2694 = !DILocation(line: 402, column: 35, scope: !2682)
!2695 = !DILocation(line: 402, column: 28, scope: !2682)
!2696 = !DILocation(line: 402, column: 9, scope: !2682)
!2697 = distinct !DISubprogram(name: "cend", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4cendEv", scope: !2610, file: !2611, line: 438, type: !2698, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !2700, retainedNodes: !185)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!2648, !2668}
!2700 = !DISubprogram(name: "cend", linkageName: "_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4cendEv", scope: !2610, file: !2611, line: 438, type: !2698, scopeLine: 438, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2701 = !DILocalVariable(name: "this", arg: 1, scope: !2697, type: !2674, flags: DIFlagArtificial | DIFlagObjectPointer)
!2702 = !DILocation(line: 0, scope: !2697)
!2703 = !DILocation(line: 439, column: 16, scope: !2697)
!2704 = !DILocation(line: 439, column: 21, scope: !2697)
!2705 = !DILocation(line: 439, column: 9, scope: !2697)
!2706 = distinct !DISubprogram(name: "operator->", linkageName: "_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEptEv", scope: !655, file: !36, line: 362, type: !769, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !768, retainedNodes: !185)
!2707 = !DILocalVariable(name: "this", arg: 1, scope: !2706, type: !2708, flags: DIFlagArtificial | DIFlagObjectPointer)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!2709 = !DILocation(line: 0, scope: !2706)
!2710 = !DILocation(line: 363, column: 40, scope: !2706)
!2711 = !DILocation(line: 363, column: 50, scope: !2706)
!2712 = !DILocation(line: 363, column: 9, scope: !2706)
!2713 = distinct !DISubprogram(name: "getTokenInteger", linkageName: "_ZN12COOLProtocol15getTokenIntegerERK12StringVectorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi", scope: !2237, file: !2, line: 129, type: !2714, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!178, !1166, !1155, !952}
!2716 = !DILocalVariable(name: "tokens", arg: 1, scope: !2713, file: !2, line: 129, type: !1166)
!2717 = !DILocation(line: 129, column: 46, scope: !2713)
!2718 = !DILocalVariable(name: "name", arg: 2, scope: !2713, file: !2, line: 129, type: !1155)
!2719 = !DILocation(line: 129, column: 73, scope: !2713)
!2720 = !DILocalVariable(name: "value", arg: 3, scope: !2713, file: !2, line: 129, type: !952)
!2721 = !DILocation(line: 129, column: 84, scope: !2713)
!2722 = !DILocalVariable(name: "i", scope: !2723, file: !2, line: 131, type: !1316)
!2723 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 131, column: 9)
!2724 = !DILocation(line: 131, column: 21, scope: !2723)
!2725 = !DILocation(line: 131, column: 14, scope: !2723)
!2726 = !DILocation(line: 131, column: 28, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 131, column: 9)
!2728 = !DILocation(line: 131, column: 32, scope: !2727)
!2729 = !DILocation(line: 131, column: 39, scope: !2727)
!2730 = !DILocation(line: 131, column: 30, scope: !2727)
!2731 = !DILocation(line: 131, column: 9, scope: !2723)
!2732 = !DILocation(line: 133, column: 33, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 133, column: 17)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 132, column: 9)
!2735 = !DILocation(line: 133, column: 40, scope: !2733)
!2736 = !DILocation(line: 133, column: 44, scope: !2733)
!2737 = !DILocation(line: 133, column: 50, scope: !2733)
!2738 = !DILocation(line: 133, column: 17, scope: !2733)
!2739 = !DILocation(line: 133, column: 17, scope: !2734)
!2740 = !DILocation(line: 134, column: 17, scope: !2733)
!2741 = !DILocation(line: 137, column: 5, scope: !2733)
!2742 = !DILocation(line: 135, column: 9, scope: !2734)
!2743 = !DILocation(line: 131, column: 48, scope: !2727)
!2744 = !DILocation(line: 131, column: 9, scope: !2727)
!2745 = distinct !{!2745, !2731, !2746, !2747}
!2746 = !DILocation(line: 135, column: 9, scope: !2723)
!2747 = !{!"llvm.loop.mustprogress"}
!2748 = !DILocation(line: 136, column: 9, scope: !2713)
!2749 = !DILocation(line: 137, column: 5, scope: !2713)
!2750 = distinct !DISubprogram(name: "getTokenKeyword", linkageName: "_ZN12COOLProtocol15getTokenKeywordERK12StringVectorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS8_iSt4lessIS8_ESaISt4pairIS9_iEEERi", scope: !2237, file: !2, line: 139, type: !2751, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!178, !1166, !1155, !2608, !952}
!2753 = !DILocalVariable(name: "tokens", arg: 1, scope: !2750, file: !2, line: 139, type: !1166)
!2754 = !DILocation(line: 139, column: 46, scope: !2750)
!2755 = !DILocalVariable(name: "name", arg: 2, scope: !2750, file: !2, line: 139, type: !1155)
!2756 = !DILocation(line: 139, column: 73, scope: !2750)
!2757 = !DILocalVariable(name: "map", arg: 3, scope: !2750, file: !2, line: 139, type: !2608)
!2758 = !DILocation(line: 139, column: 113, scope: !2750)
!2759 = !DILocalVariable(name: "value", arg: 4, scope: !2750, file: !2, line: 139, type: !952)
!2760 = !DILocation(line: 139, column: 123, scope: !2750)
!2761 = !DILocalVariable(name: "i", scope: !2762, file: !2, line: 141, type: !1316)
!2762 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 141, column: 9)
!2763 = !DILocation(line: 141, column: 21, scope: !2762)
!2764 = !DILocation(line: 141, column: 14, scope: !2762)
!2765 = !DILocation(line: 141, column: 28, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !2, line: 141, column: 9)
!2767 = !DILocation(line: 141, column: 32, scope: !2766)
!2768 = !DILocation(line: 141, column: 39, scope: !2766)
!2769 = !DILocation(line: 141, column: 30, scope: !2766)
!2770 = !DILocation(line: 141, column: 9, scope: !2762)
!2771 = !DILocation(line: 143, column: 33, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 143, column: 17)
!2773 = distinct !DILexicalBlock(scope: !2766, file: !2, line: 142, column: 9)
!2774 = !DILocation(line: 143, column: 40, scope: !2772)
!2775 = !DILocation(line: 143, column: 44, scope: !2772)
!2776 = !DILocation(line: 143, column: 50, scope: !2772)
!2777 = !DILocation(line: 143, column: 55, scope: !2772)
!2778 = !DILocation(line: 143, column: 17, scope: !2772)
!2779 = !DILocation(line: 143, column: 17, scope: !2773)
!2780 = !DILocation(line: 144, column: 17, scope: !2772)
!2781 = !DILocation(line: 147, column: 5, scope: !2772)
!2782 = !DILocation(line: 145, column: 9, scope: !2773)
!2783 = !DILocation(line: 141, column: 48, scope: !2766)
!2784 = !DILocation(line: 141, column: 9, scope: !2766)
!2785 = distinct !{!2785, !2770, !2786, !2747}
!2786 = !DILocation(line: 145, column: 9, scope: !2762)
!2787 = !DILocation(line: 146, column: 9, scope: !2750)
!2788 = !DILocation(line: 147, column: 5, scope: !2750)
!2789 = distinct !DISubprogram(name: "getTokenStringFromMessage", linkageName: "_ZN12COOLProtocol25getTokenStringFromMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RS5_", scope: !2237, file: !2, line: 149, type: !2566, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2790 = !DILocalVariable(name: "message", arg: 1, scope: !2789, file: !2, line: 149, type: !1155)
!2791 = !DILocation(line: 149, column: 55, scope: !2789)
!2792 = !DILocalVariable(name: "name", arg: 2, scope: !2789, file: !2, line: 149, type: !1155)
!2793 = !DILocation(line: 149, column: 83, scope: !2789)
!2794 = !DILocalVariable(name: "value", arg: 3, scope: !2789, file: !2, line: 149, type: !1178)
!2795 = !DILocation(line: 149, column: 102, scope: !2789)
!2796 = !DILocation(line: 151, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 151, column: 13)
!2798 = !DILocation(line: 151, column: 21, scope: !2797)
!2799 = !DILocation(line: 151, column: 30, scope: !2797)
!2800 = !DILocation(line: 151, column: 35, scope: !2797)
!2801 = !DILocation(line: 151, column: 42, scope: !2797)
!2802 = !DILocation(line: 151, column: 28, scope: !2797)
!2803 = !DILocation(line: 151, column: 13, scope: !2789)
!2804 = !DILocalVariable(name: "pos", scope: !2805, file: !2, line: 153, type: !1316)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 152, column: 9)
!2806 = !DILocation(line: 153, column: 20, scope: !2805)
!2807 = !DILocation(line: 153, column: 26, scope: !2805)
!2808 = !DILocation(line: 153, column: 39, scope: !2805)
!2809 = !DILocation(line: 153, column: 34, scope: !2805)
!2810 = !DILocation(line: 154, column: 13, scope: !2805)
!2811 = !DILocation(line: 154, column: 20, scope: !2805)
!2812 = !DILocation(line: 154, column: 24, scope: !2805)
!2813 = !DILocalVariable(name: "spaceBefore", scope: !2814, file: !2, line: 156, type: !178)
!2814 = distinct !DILexicalBlock(scope: !2805, file: !2, line: 155, column: 13)
!2815 = !DILocation(line: 156, column: 22, scope: !2814)
!2816 = !DILocation(line: 156, column: 36, scope: !2814)
!2817 = !DILocation(line: 156, column: 40, scope: !2814)
!2818 = !DILocation(line: 156, column: 45, scope: !2814)
!2819 = !DILocation(line: 156, column: 48, scope: !2814)
!2820 = !DILocation(line: 156, column: 56, scope: !2814)
!2821 = !DILocation(line: 156, column: 59, scope: !2814)
!2822 = !DILocation(line: 156, column: 63, scope: !2814)
!2823 = !DILocalVariable(name: "beg", scope: !2814, file: !2, line: 157, type: !2824)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!2825 = !DILocation(line: 157, column: 30, scope: !2814)
!2826 = !DILocation(line: 157, column: 36, scope: !2814)
!2827 = !DILocation(line: 157, column: 42, scope: !2814)
!2828 = !DILocation(line: 157, column: 47, scope: !2814)
!2829 = !DILocation(line: 157, column: 40, scope: !2814)
!2830 = !DILocation(line: 158, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 158, column: 21)
!2832 = !DILocation(line: 158, column: 33, scope: !2831)
!2833 = !DILocation(line: 158, column: 36, scope: !2831)
!2834 = !DILocation(line: 158, column: 44, scope: !2831)
!2835 = !DILocation(line: 158, column: 49, scope: !2831)
!2836 = !DILocation(line: 158, column: 21, scope: !2814)
!2837 = !DILocalVariable(name: "end", scope: !2838, file: !2, line: 160, type: !2824)
!2838 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 159, column: 17)
!2839 = !DILocation(line: 160, column: 34, scope: !2838)
!2840 = !DILocation(line: 160, column: 40, scope: !2838)
!2841 = !DILocation(line: 160, column: 69, scope: !2838)
!2842 = !DILocation(line: 160, column: 48, scope: !2838)
!2843 = !DILocation(line: 161, column: 29, scope: !2838)
!2844 = !DILocation(line: 161, column: 44, scope: !2838)
!2845 = !DILocation(line: 161, column: 48, scope: !2838)
!2846 = !DILocation(line: 161, column: 53, scope: !2838)
!2847 = !DILocation(line: 161, column: 59, scope: !2838)
!2848 = !DILocation(line: 161, column: 57, scope: !2838)
!2849 = !DILocation(line: 161, column: 63, scope: !2838)
!2850 = !DILocation(line: 161, column: 37, scope: !2838)
!2851 = !DILocation(line: 161, column: 21, scope: !2838)
!2852 = !DILocation(line: 161, column: 27, scope: !2838)
!2853 = !DILocation(line: 162, column: 21, scope: !2838)
!2854 = !DILocation(line: 165, column: 23, scope: !2814)
!2855 = !DILocation(line: 165, column: 36, scope: !2814)
!2856 = !DILocation(line: 165, column: 42, scope: !2814)
!2857 = !DILocation(line: 165, column: 48, scope: !2814)
!2858 = !DILocation(line: 165, column: 53, scope: !2814)
!2859 = !DILocation(line: 165, column: 46, scope: !2814)
!2860 = !DILocation(line: 165, column: 31, scope: !2814)
!2861 = !DILocation(line: 165, column: 21, scope: !2814)
!2862 = distinct !{!2862, !2810, !2863, !2747}
!2863 = !DILocation(line: 166, column: 13, scope: !2805)
!2864 = !DILocation(line: 167, column: 9, scope: !2805)
!2865 = !DILocation(line: 169, column: 9, scope: !2789)
!2866 = !DILocation(line: 170, column: 5, scope: !2789)
!2867 = distinct !DISubprogram(name: "getTokenKeywordFromMessage", linkageName: "_ZN12COOLProtocol26getTokenKeywordFromMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt3mapIS5_iSt4lessIS5_ESaISt4pairIS6_iEEERi", scope: !2237, file: !2, line: 172, type: !2606, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2868 = !DILocalVariable(name: "message", arg: 1, scope: !2867, file: !2, line: 172, type: !1155)
!2869 = !DILocation(line: 172, column: 56, scope: !2867)
!2870 = !DILocalVariable(name: "name", arg: 2, scope: !2867, file: !2, line: 172, type: !1155)
!2871 = !DILocation(line: 172, column: 84, scope: !2867)
!2872 = !DILocalVariable(name: "map", arg: 3, scope: !2867, file: !2, line: 172, type: !2608)
!2873 = !DILocation(line: 172, column: 124, scope: !2867)
!2874 = !DILocalVariable(name: "value", arg: 4, scope: !2867, file: !2, line: 172, type: !952)
!2875 = !DILocation(line: 172, column: 134, scope: !2867)
!2876 = !DILocation(line: 174, column: 47, scope: !2867)
!2877 = !DILocation(line: 174, column: 32, scope: !2867)
!2878 = !DILocation(line: 174, column: 57, scope: !2867)
!2879 = !DILocation(line: 174, column: 63, scope: !2867)
!2880 = !DILocation(line: 174, column: 68, scope: !2867)
!2881 = !DILocation(line: 174, column: 16, scope: !2867)
!2882 = !DILocation(line: 174, column: 9, scope: !2867)
!2883 = !DILocation(line: 175, column: 5, scope: !2867)
!2884 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEC2Ev", scope: !64, file: !46, line: 487, type: !331, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !330, retainedNodes: !185)
!2885 = !DILocalVariable(name: "this", arg: 1, scope: !2884, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 487, column: 7, scope: !2884)
!2889 = !DILocation(line: 487, column: 24, scope: !2884)
!2890 = distinct !DISubprogram(name: "tokenize", linkageName: "_ZN4Util8tokenizeEPKcmcRSt6vectorI11StringTokenSaIS3_EE", scope: !2301, file: !2300, line: 539, type: !2891, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !625, !2893, !4, !379}
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2894 = !DILocalVariable(name: "data", arg: 1, scope: !2890, file: !2300, line: 539, type: !625)
!2895 = !DILocation(line: 539, column: 38, scope: !2890)
!2896 = !DILocalVariable(name: "size", arg: 2, scope: !2890, file: !2300, line: 539, type: !2893)
!2897 = !DILocation(line: 539, column: 62, scope: !2890)
!2898 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2890, file: !2300, line: 539, type: !4)
!2899 = !DILocation(line: 539, column: 79, scope: !2890)
!2900 = !DILocalVariable(name: "tokens", arg: 4, scope: !2890, file: !2300, line: 540, type: !379)
!2901 = !DILocation(line: 540, column: 52, scope: !2890)
!2902 = !DILocation(line: 542, column: 13, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2890, file: !2300, line: 542, column: 13)
!2904 = !DILocation(line: 542, column: 18, scope: !2903)
!2905 = !DILocation(line: 542, column: 23, scope: !2903)
!2906 = !DILocation(line: 542, column: 26, scope: !2903)
!2907 = !DILocation(line: 542, column: 31, scope: !2903)
!2908 = !DILocation(line: 542, column: 42, scope: !2903)
!2909 = !DILocation(line: 542, column: 46, scope: !2903)
!2910 = !DILocation(line: 542, column: 45, scope: !2903)
!2911 = !DILocation(line: 542, column: 51, scope: !2903)
!2912 = !DILocation(line: 542, column: 13, scope: !2890)
!2913 = !DILocation(line: 543, column: 13, scope: !2903)
!2914 = !DILocation(line: 545, column: 9, scope: !2890)
!2915 = !DILocation(line: 545, column: 16, scope: !2890)
!2916 = !DILocalVariable(name: "start", scope: !2890, file: !2300, line: 547, type: !625)
!2917 = !DILocation(line: 547, column: 21, scope: !2890)
!2918 = !DILocation(line: 547, column: 29, scope: !2890)
!2919 = !DILocalVariable(name: "end", scope: !2890, file: !2300, line: 548, type: !625)
!2920 = !DILocation(line: 548, column: 21, scope: !2890)
!2921 = !DILocation(line: 548, column: 27, scope: !2890)
!2922 = !DILocalVariable(name: "i", scope: !2923, file: !2300, line: 549, type: !42)
!2923 = distinct !DILexicalBlock(scope: !2890, file: !2300, line: 549, column: 9)
!2924 = !DILocation(line: 549, column: 26, scope: !2923)
!2925 = !DILocation(line: 549, column: 14, scope: !2923)
!2926 = !DILocation(line: 549, column: 33, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !2300, line: 549, column: 9)
!2928 = !DILocation(line: 549, column: 37, scope: !2927)
!2929 = !DILocation(line: 549, column: 35, scope: !2927)
!2930 = !DILocation(line: 549, column: 42, scope: !2927)
!2931 = !DILocation(line: 549, column: 45, scope: !2927)
!2932 = !DILocation(line: 549, column: 50, scope: !2927)
!2933 = !DILocation(line: 549, column: 53, scope: !2927)
!2934 = !DILocation(line: 0, scope: !2927)
!2935 = !DILocation(line: 549, column: 9, scope: !2923)
!2936 = !DILocation(line: 551, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !2300, line: 551, column: 17)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !2300, line: 550, column: 9)
!2939 = !DILocation(line: 551, column: 22, scope: !2937)
!2940 = !DILocation(line: 551, column: 28, scope: !2937)
!2941 = !DILocation(line: 551, column: 25, scope: !2937)
!2942 = !DILocation(line: 551, column: 17, scope: !2938)
!2943 = !DILocation(line: 553, column: 21, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !2300, line: 553, column: 21)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !2300, line: 552, column: 13)
!2946 = !DILocation(line: 553, column: 30, scope: !2944)
!2947 = !DILocation(line: 553, column: 27, scope: !2944)
!2948 = !DILocation(line: 553, column: 34, scope: !2944)
!2949 = !DILocation(line: 553, column: 38, scope: !2944)
!2950 = !DILocation(line: 553, column: 37, scope: !2944)
!2951 = !DILocation(line: 553, column: 47, scope: !2944)
!2952 = !DILocation(line: 553, column: 44, scope: !2944)
!2953 = !DILocation(line: 553, column: 21, scope: !2945)
!2954 = !DILocation(line: 554, column: 21, scope: !2944)
!2955 = !DILocation(line: 554, column: 41, scope: !2944)
!2956 = !DILocation(line: 554, column: 49, scope: !2944)
!2957 = !DILocation(line: 554, column: 47, scope: !2944)
!2958 = !DILocation(line: 554, column: 55, scope: !2944)
!2959 = !DILocation(line: 554, column: 61, scope: !2944)
!2960 = !DILocation(line: 554, column: 59, scope: !2944)
!2961 = !DILocation(line: 554, column: 28, scope: !2944)
!2962 = !DILocation(line: 556, column: 25, scope: !2945)
!2963 = !DILocation(line: 556, column: 23, scope: !2945)
!2964 = !DILocation(line: 557, column: 13, scope: !2945)
!2965 = !DILocation(line: 558, column: 23, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2937, file: !2300, line: 558, column: 22)
!2967 = !DILocation(line: 558, column: 22, scope: !2966)
!2968 = !DILocation(line: 558, column: 32, scope: !2966)
!2969 = !DILocation(line: 558, column: 29, scope: !2966)
!2970 = !DILocation(line: 558, column: 22, scope: !2937)
!2971 = !DILocation(line: 559, column: 17, scope: !2966)
!2972 = !DILocation(line: 560, column: 9, scope: !2938)
!2973 = !DILocation(line: 549, column: 62, scope: !2927)
!2974 = !DILocation(line: 549, column: 67, scope: !2927)
!2975 = !DILocation(line: 549, column: 9, scope: !2927)
!2976 = distinct !{!2976, !2935, !2977, !2747}
!2977 = !DILocation(line: 560, column: 9, scope: !2923)
!2978 = !DILocation(line: 562, column: 13, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2890, file: !2300, line: 562, column: 13)
!2980 = !DILocation(line: 562, column: 22, scope: !2979)
!2981 = !DILocation(line: 562, column: 19, scope: !2979)
!2982 = !DILocation(line: 562, column: 26, scope: !2979)
!2983 = !DILocation(line: 562, column: 30, scope: !2979)
!2984 = !DILocation(line: 562, column: 29, scope: !2979)
!2985 = !DILocation(line: 562, column: 39, scope: !2979)
!2986 = !DILocation(line: 562, column: 36, scope: !2979)
!2987 = !DILocation(line: 562, column: 49, scope: !2979)
!2988 = !DILocation(line: 562, column: 53, scope: !2979)
!2989 = !DILocation(line: 562, column: 52, scope: !2979)
!2990 = !DILocation(line: 562, column: 59, scope: !2979)
!2991 = !DILocation(line: 562, column: 13, scope: !2890)
!2992 = !DILocation(line: 563, column: 13, scope: !2979)
!2993 = !DILocation(line: 563, column: 33, scope: !2979)
!2994 = !DILocation(line: 563, column: 41, scope: !2979)
!2995 = !DILocation(line: 563, column: 39, scope: !2979)
!2996 = !DILocation(line: 563, column: 47, scope: !2979)
!2997 = !DILocation(line: 563, column: 53, scope: !2979)
!2998 = !DILocation(line: 563, column: 51, scope: !2979)
!2999 = !DILocation(line: 563, column: 20, scope: !2979)
!3000 = !DILocation(line: 564, column: 5, scope: !2890)
!3001 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEC2EOS2_", scope: !64, file: !46, line: 572, type: !355, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !354, retainedNodes: !185)
!3002 = !DILocalVariable(name: "this", arg: 1, scope: !3001, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3003 = !DILocation(line: 0, scope: !3001)
!3004 = !DILocalVariable(arg: 2, scope: !3001, file: !46, line: 572, type: !357)
!3005 = !DILocation(line: 572, column: 22, scope: !3001)
!3006 = !DILocation(line: 572, column: 7, scope: !3001)
!3007 = !DILocation(line: 572, column: 41, scope: !3001)
!3008 = distinct !DISubprogram(name: "StringVector", linkageName: "_ZN12StringVectorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI11StringTokenSaIS7_EE", scope: !1117, file: !51, line: 44, type: !1128, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1127, retainedNodes: !185)
!3009 = !DILocalVariable(name: "this", arg: 1, scope: !3008, type: !2377, flags: DIFlagArtificial | DIFlagObjectPointer)
!3010 = !DILocation(line: 0, scope: !3008)
!3011 = !DILocalVariable(name: "string", arg: 2, scope: !3008, file: !51, line: 44, type: !1120)
!3012 = !DILocation(line: 44, column: 39, scope: !3008)
!3013 = !DILocalVariable(name: "tokens", arg: 3, scope: !3008, file: !51, line: 44, type: !64)
!3014 = !DILocation(line: 44, column: 72, scope: !3008)
!3015 = !DILocation(line: 45, column: 11, scope: !3008)
!3016 = !DILocation(line: 46, column: 11, scope: !3008)
!3017 = !DILocation(line: 48, column: 5, scope: !3008)
!3018 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EED2Ev", scope: !64, file: !46, line: 678, type: !331, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !375, retainedNodes: !185)
!3019 = !DILocalVariable(name: "this", arg: 1, scope: !3018, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3020 = !DILocation(line: 0, scope: !3018)
!3021 = !DILocation(line: 680, column: 22, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !46, line: 679, column: 7)
!3023 = !DILocation(line: 680, column: 30, scope: !3022)
!3024 = !DILocation(line: 680, column: 46, scope: !3022)
!3025 = !DILocation(line: 680, column: 54, scope: !3022)
!3026 = !DILocation(line: 681, column: 9, scope: !3022)
!3027 = !DILocation(line: 680, column: 2, scope: !3022)
!3028 = !DILocation(line: 683, column: 7, scope: !3022)
!3029 = !DILocation(line: 683, column: 7, scope: !3018)
!3030 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2Ev", scope: !67, file: !46, line: 288, type: !247, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !246, retainedNodes: !185)
!3031 = !DILocalVariable(name: "this", arg: 1, scope: !3030, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!3033 = !DILocation(line: 0, scope: !3030)
!3034 = !DILocation(line: 288, column: 7, scope: !3030)
!3035 = !DILocation(line: 288, column: 30, scope: !3030)
!3036 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2Ev", scope: !70, file: !46, line: 131, type: !213, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !212, retainedNodes: !185)
!3037 = !DILocalVariable(name: "this", arg: 1, scope: !3036, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!3039 = !DILocation(line: 0, scope: !3036)
!3040 = !DILocation(line: 133, column: 4, scope: !3036)
!3041 = !DILocation(line: 131, column: 2, scope: !3036)
!3042 = !DILocation(line: 134, column: 4, scope: !3036)
!3043 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaI11StringTokenEC2Ev", scope: !89, file: !90, line: 156, type: !137, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !136, retainedNodes: !185)
!3044 = !DILocalVariable(name: "this", arg: 1, scope: !3043, type: !3045, flags: DIFlagArtificial | DIFlagObjectPointer)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!3046 = !DILocation(line: 0, scope: !3043)
!3047 = !DILocation(line: 156, column: 7, scope: !3043)
!3048 = !DILocation(line: 156, column: 38, scope: !3043)
!3049 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2Ev", scope: !95, file: !96, line: 79, type: !99, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !98, retainedNodes: !185)
!3050 = !DILocalVariable(name: "this", arg: 1, scope: !3049, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3052 = !DILocation(line: 0, scope: !3049)
!3053 = !DILocation(line: 79, column: 47, scope: !3049)
!3054 = distinct !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE7reserveEm", scope: !64, file: !10, line: 67, type: !536, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !544, retainedNodes: !185)
!3055 = !DILocalVariable(name: "this", arg: 1, scope: !3054, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3056 = !DILocation(line: 0, scope: !3054)
!3057 = !DILocalVariable(name: "__n", arg: 2, scope: !3054, file: !46, line: 1028, type: !45)
!3058 = !DILocation(line: 1028, column: 25, scope: !3054)
!3059 = !DILocation(line: 69, column: 11, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3054, file: !10, line: 69, column: 11)
!3061 = !DILocation(line: 69, column: 23, scope: !3060)
!3062 = !DILocation(line: 69, column: 15, scope: !3060)
!3063 = !DILocation(line: 69, column: 11, scope: !3054)
!3064 = !DILocation(line: 70, column: 2, scope: !3060)
!3065 = !DILocation(line: 71, column: 17, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3054, file: !10, line: 71, column: 11)
!3067 = !DILocation(line: 71, column: 30, scope: !3066)
!3068 = !DILocation(line: 71, column: 28, scope: !3066)
!3069 = !DILocation(line: 71, column: 11, scope: !3054)
!3070 = !DILocalVariable(name: "__old_size", scope: !3071, file: !10, line: 73, type: !3072)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !10, line: 72, column: 2)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!3073 = !DILocation(line: 73, column: 20, scope: !3071)
!3074 = !DILocation(line: 73, column: 33, scope: !3071)
!3075 = !DILocalVariable(name: "__tmp", scope: !3071, file: !10, line: 74, type: !321)
!3076 = !DILocation(line: 74, column: 12, scope: !3071)
!3077 = !DILocation(line: 78, column: 34, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !10, line: 77, column: 6)
!3079 = distinct !DILexicalBlock(scope: !3071, file: !10, line: 76, column: 29)
!3080 = !DILocation(line: 78, column: 22, scope: !3078)
!3081 = !DILocation(line: 78, column: 14, scope: !3078)
!3082 = !DILocation(line: 79, column: 26, scope: !3078)
!3083 = !DILocation(line: 79, column: 34, scope: !3078)
!3084 = !DILocation(line: 79, column: 50, scope: !3078)
!3085 = !DILocation(line: 79, column: 58, scope: !3078)
!3086 = !DILocation(line: 80, column: 6, scope: !3078)
!3087 = !DILocation(line: 80, column: 13, scope: !3078)
!3088 = !DILocation(line: 79, column: 8, scope: !3078)
!3089 = !DILocation(line: 92, column: 24, scope: !3071)
!3090 = !DILocation(line: 92, column: 32, scope: !3071)
!3091 = !DILocation(line: 93, column: 10, scope: !3071)
!3092 = !DILocation(line: 93, column: 18, scope: !3071)
!3093 = !DILocation(line: 94, column: 12, scope: !3071)
!3094 = !DILocation(line: 94, column: 20, scope: !3071)
!3095 = !DILocation(line: 94, column: 4, scope: !3071)
!3096 = !DILocation(line: 92, column: 4, scope: !3071)
!3097 = !DILocation(line: 95, column: 29, scope: !3071)
!3098 = !DILocation(line: 95, column: 10, scope: !3071)
!3099 = !DILocation(line: 95, column: 18, scope: !3071)
!3100 = !DILocation(line: 95, column: 27, scope: !3071)
!3101 = !DILocation(line: 96, column: 30, scope: !3071)
!3102 = !DILocation(line: 96, column: 38, scope: !3071)
!3103 = !DILocation(line: 96, column: 36, scope: !3071)
!3104 = !DILocation(line: 96, column: 10, scope: !3071)
!3105 = !DILocation(line: 96, column: 18, scope: !3071)
!3106 = !DILocation(line: 96, column: 28, scope: !3071)
!3107 = !DILocation(line: 97, column: 44, scope: !3071)
!3108 = !DILocation(line: 97, column: 52, scope: !3071)
!3109 = !DILocation(line: 97, column: 63, scope: !3071)
!3110 = !DILocation(line: 97, column: 61, scope: !3071)
!3111 = !DILocation(line: 97, column: 10, scope: !3071)
!3112 = !DILocation(line: 97, column: 18, scope: !3071)
!3113 = !DILocation(line: 97, column: 36, scope: !3071)
!3114 = !DILocation(line: 98, column: 2, scope: !3071)
!3115 = !DILocation(line: 99, column: 5, scope: !3054)
!3116 = distinct !DISubprogram(name: "emplace_back<long, long>", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_", scope: !64, file: !10, line: 110, type: !3117, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3121, declaration: !3120, retainedNodes: !185)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!548, !333, !3119, !3119}
!3119 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !441, size: 64)
!3120 = !DISubprogram(name: "emplace_back<long, long>", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE12emplace_backIJllEEERS0_DpOT_", scope: !64, file: !46, line: 1212, type: !3117, scopeLine: 1212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3121)
!3121 = !{!3122}
!3122 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !3123)
!3123 = !{!3124, !3124}
!3124 = !DITemplateTypeParameter(type: !441)
!3125 = !DILocalVariable(name: "this", arg: 1, scope: !3116, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3126 = !DILocation(line: 0, scope: !3116)
!3127 = !DILocalVariable(name: "__args", arg: 2, scope: !3116, file: !46, line: 1212, type: !3119)
!3128 = !DILocation(line: 1212, column: 26, scope: !3116)
!3129 = !DILocalVariable(name: "__args", arg: 3, scope: !3116, file: !46, line: 1212, type: !3119)
!3130 = !DILocation(line: 112, column: 12, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3116, file: !10, line: 112, column: 6)
!3132 = !DILocation(line: 112, column: 20, scope: !3131)
!3133 = !DILocation(line: 112, column: 39, scope: !3131)
!3134 = !DILocation(line: 112, column: 47, scope: !3131)
!3135 = !DILocation(line: 112, column: 30, scope: !3131)
!3136 = !DILocation(line: 112, column: 6, scope: !3116)
!3137 = !DILocation(line: 115, column: 37, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3131, file: !10, line: 113, column: 4)
!3139 = !DILocation(line: 115, column: 52, scope: !3138)
!3140 = !DILocation(line: 115, column: 60, scope: !3138)
!3141 = !DILocation(line: 116, column: 30, scope: !3138)
!3142 = !DILocation(line: 115, column: 6, scope: !3138)
!3143 = !DILocation(line: 117, column: 14, scope: !3138)
!3144 = !DILocation(line: 117, column: 22, scope: !3138)
!3145 = !DILocation(line: 117, column: 6, scope: !3138)
!3146 = !DILocation(line: 119, column: 4, scope: !3138)
!3147 = !DILocation(line: 121, column: 22, scope: !3131)
!3148 = !DILocation(line: 121, column: 49, scope: !3131)
!3149 = !DILocation(line: 121, column: 4, scope: !3131)
!3150 = !DILocation(line: 123, column: 9, scope: !3116)
!3151 = !DILocation(line: 123, column: 2, scope: !3116)
!3152 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE8max_sizeEv", scope: !64, file: !46, line: 923, type: !532, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !534, retainedNodes: !185)
!3153 = !DILocalVariable(name: "this", arg: 1, scope: !3152, type: !3154, flags: DIFlagArtificial | DIFlagObjectPointer)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3155 = !DILocation(line: 0, scope: !3152)
!3156 = !DILocation(line: 924, column: 28, scope: !3152)
!3157 = !DILocation(line: 924, column: 16, scope: !3152)
!3158 = !DILocation(line: 924, column: 9, scope: !3152)
!3159 = distinct !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE8capacityEv", scope: !64, file: !46, line: 998, type: !532, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !540, retainedNodes: !185)
!3160 = !DILocalVariable(name: "this", arg: 1, scope: !3159, type: !3154, flags: DIFlagArtificial | DIFlagObjectPointer)
!3161 = !DILocation(line: 0, scope: !3159)
!3162 = !DILocation(line: 999, column: 32, scope: !3159)
!3163 = !DILocation(line: 999, column: 40, scope: !3159)
!3164 = !DILocation(line: 1000, column: 13, scope: !3159)
!3165 = !DILocation(line: 1000, column: 21, scope: !3159)
!3166 = !DILocation(line: 1000, column: 5, scope: !3159)
!3167 = !DILocation(line: 999, column: 9, scope: !3159)
!3168 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE4sizeEv", scope: !64, file: !46, line: 918, type: !532, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !531, retainedNodes: !185)
!3169 = !DILocalVariable(name: "this", arg: 1, scope: !3168, type: !3154, flags: DIFlagArtificial | DIFlagObjectPointer)
!3170 = !DILocation(line: 0, scope: !3168)
!3171 = !DILocation(line: 919, column: 32, scope: !3168)
!3172 = !DILocation(line: 919, column: 40, scope: !3168)
!3173 = !DILocation(line: 919, column: 58, scope: !3168)
!3174 = !DILocation(line: 919, column: 66, scope: !3168)
!3175 = !DILocation(line: 919, column: 50, scope: !3168)
!3176 = !DILocation(line: 919, column: 9, scope: !3168)
!3177 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE11_M_allocateEm", scope: !67, file: !46, line: 343, type: !275, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !274, retainedNodes: !185)
!3178 = !DILocalVariable(name: "this", arg: 1, scope: !3177, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3179 = !DILocation(line: 0, scope: !3177)
!3180 = !DILocalVariable(name: "__n", arg: 2, scope: !3177, file: !46, line: 343, type: !42)
!3181 = !DILocation(line: 343, column: 26, scope: !3177)
!3182 = !DILocation(line: 346, column: 9, scope: !3177)
!3183 = !DILocation(line: 346, column: 13, scope: !3177)
!3184 = !DILocation(line: 346, column: 34, scope: !3177)
!3185 = !DILocation(line: 346, column: 43, scope: !3177)
!3186 = !DILocation(line: 346, column: 20, scope: !3177)
!3187 = !DILocation(line: 346, column: 2, scope: !3177)
!3188 = !DILocalVariable(name: "__first", arg: 1, scope: !63, file: !46, line: 465, type: !321)
!3189 = !DILocation(line: 465, column: 27, scope: !63)
!3190 = !DILocalVariable(name: "__last", arg: 2, scope: !63, file: !46, line: 465, type: !321)
!3191 = !DILocation(line: 465, column: 44, scope: !63)
!3192 = !DILocalVariable(name: "__result", arg: 3, scope: !63, file: !46, line: 465, type: !321)
!3193 = !DILocation(line: 465, column: 60, scope: !63)
!3194 = !DILocalVariable(name: "__alloc", arg: 4, scope: !63, file: !46, line: 466, type: !322)
!3195 = !DILocation(line: 466, column: 21, scope: !63)
!3196 = !DILocation(line: 469, column: 24, scope: !63)
!3197 = !DILocation(line: 469, column: 33, scope: !63)
!3198 = !DILocation(line: 469, column: 41, scope: !63)
!3199 = !DILocation(line: 469, column: 51, scope: !63)
!3200 = !DILocation(line: 469, column: 9, scope: !63)
!3201 = !DILocation(line: 469, column: 2, scope: !63)
!3202 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !67, file: !46, line: 276, type: !233, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !232, retainedNodes: !185)
!3203 = !DILocalVariable(name: "this", arg: 1, scope: !3202, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3204 = !DILocation(line: 0, scope: !3202)
!3205 = !DILocation(line: 277, column: 22, scope: !3202)
!3206 = !DILocation(line: 277, column: 9, scope: !3202)
!3207 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE13_M_deallocateEPS0_m", scope: !67, file: !46, line: 350, type: !278, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !277, retainedNodes: !185)
!3208 = !DILocalVariable(name: "this", arg: 1, scope: !3207, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3209 = !DILocation(line: 0, scope: !3207)
!3210 = !DILocalVariable(name: "__p", arg: 2, scope: !3207, file: !46, line: 350, type: !191)
!3211 = !DILocation(line: 350, column: 29, scope: !3207)
!3212 = !DILocalVariable(name: "__n", arg: 3, scope: !3207, file: !46, line: 350, type: !42)
!3213 = !DILocation(line: 350, column: 41, scope: !3207)
!3214 = !DILocation(line: 353, column: 6, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3207, file: !46, line: 353, column: 6)
!3216 = !DILocation(line: 353, column: 6, scope: !3207)
!3217 = !DILocation(line: 354, column: 20, scope: !3215)
!3218 = !DILocation(line: 354, column: 29, scope: !3215)
!3219 = !DILocation(line: 354, column: 34, scope: !3215)
!3220 = !DILocation(line: 354, column: 4, scope: !3215)
!3221 = !DILocation(line: 355, column: 7, scope: !3207)
!3222 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE11_S_max_sizeERKS1_", scope: !64, file: !46, line: 1776, type: !630, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !629, retainedNodes: !185)
!3223 = !DILocalVariable(name: "__a", arg: 1, scope: !3222, file: !46, line: 1776, type: !632)
!3224 = !DILocation(line: 1776, column: 41, scope: !3222)
!3225 = !DILocalVariable(name: "__diffmax", scope: !3222, file: !46, line: 1781, type: !2893)
!3226 = !DILocation(line: 1781, column: 15, scope: !3222)
!3227 = !DILocalVariable(name: "__allocmax", scope: !3222, file: !46, line: 1783, type: !2893)
!3228 = !DILocation(line: 1783, column: 15, scope: !3222)
!3229 = !DILocation(line: 1783, column: 52, scope: !3222)
!3230 = !DILocation(line: 1783, column: 28, scope: !3222)
!3231 = !DILocation(line: 1784, column: 9, scope: !3222)
!3232 = !DILocation(line: 1784, column: 2, scope: !3222)
!3233 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE19_M_get_Tp_allocatorEv", scope: !67, file: !46, line: 280, type: !238, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !237, retainedNodes: !185)
!3234 = !DILocalVariable(name: "this", arg: 1, scope: !3233, type: !3235, flags: DIFlagArtificial | DIFlagObjectPointer)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3236 = !DILocation(line: 0, scope: !3233)
!3237 = !DILocation(line: 281, column: 22, scope: !3233)
!3238 = !DILocation(line: 281, column: 9, scope: !3233)
!3239 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8max_sizeERKS1_", scope: !80, file: !81, line: 547, type: !159, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !158, retainedNodes: !185)
!3240 = !DILocalVariable(name: "__a", arg: 1, scope: !3239, file: !81, line: 547, type: !162)
!3241 = !DILocation(line: 547, column: 38, scope: !3239)
!3242 = !DILocation(line: 550, column: 9, scope: !3239)
!3243 = !DILocation(line: 550, column: 13, scope: !3239)
!3244 = !DILocation(line: 550, column: 2, scope: !3239)
!3245 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !37, file: !3246, line: 230, type: !3247, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3251, retainedNodes: !185)
!3246 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!3249, !3249, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3251 = !{!3252}
!3252 = !DITemplateTypeParameter(name: "_Tp", type: !44)
!3253 = !DILocalVariable(name: "__a", arg: 1, scope: !3245, file: !3246, line: 230, type: !3249)
!3254 = !DILocation(line: 230, column: 20, scope: !3245)
!3255 = !DILocalVariable(name: "__b", arg: 2, scope: !3245, file: !3246, line: 230, type: !3249)
!3256 = !DILocation(line: 230, column: 36, scope: !3245)
!3257 = !DILocation(line: 235, column: 11, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3245, file: !3246, line: 235, column: 11)
!3259 = !DILocation(line: 235, column: 17, scope: !3258)
!3260 = !DILocation(line: 235, column: 15, scope: !3258)
!3261 = !DILocation(line: 235, column: 11, scope: !3245)
!3262 = !DILocation(line: 236, column: 9, scope: !3258)
!3263 = !DILocation(line: 236, column: 2, scope: !3258)
!3264 = !DILocation(line: 237, column: 14, scope: !3245)
!3265 = !DILocation(line: 237, column: 7, scope: !3245)
!3266 = !DILocation(line: 238, column: 5, scope: !3245)
!3267 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE8max_sizeEv", scope: !95, file: !96, line: 154, type: !131, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !130, retainedNodes: !185)
!3268 = !DILocalVariable(name: "this", arg: 1, scope: !3267, type: !3269, flags: DIFlagArtificial | DIFlagObjectPointer)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!3270 = !DILocation(line: 0, scope: !3267)
!3271 = !DILocation(line: 155, column: 16, scope: !3267)
!3272 = !DILocation(line: 155, column: 9, scope: !3267)
!3273 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorI11StringTokenE11_M_max_sizeEv", scope: !95, file: !96, line: 197, type: !131, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !133, retainedNodes: !185)
!3274 = !DILocalVariable(name: "this", arg: 1, scope: !3273, type: !3269, flags: DIFlagArtificial | DIFlagObjectPointer)
!3275 = !DILocation(line: 0, scope: !3273)
!3276 = !DILocation(line: 200, column: 2, scope: !3273)
!3277 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE8allocateERS1_m", scope: !80, file: !81, line: 463, type: !84, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !83, retainedNodes: !185)
!3278 = !DILocalVariable(name: "__a", arg: 1, scope: !3277, file: !81, line: 463, type: !87)
!3279 = !DILocation(line: 463, column: 32, scope: !3277)
!3280 = !DILocalVariable(name: "__n", arg: 2, scope: !3277, file: !81, line: 463, type: !150)
!3281 = !DILocation(line: 463, column: 47, scope: !3277)
!3282 = !DILocation(line: 464, column: 16, scope: !3277)
!3283 = !DILocation(line: 464, column: 29, scope: !3277)
!3284 = !DILocation(line: 464, column: 20, scope: !3277)
!3285 = !DILocation(line: 464, column: 9, scope: !3277)
!3286 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE8allocateEmPKv", scope: !95, file: !96, line: 103, type: !124, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !123, retainedNodes: !185)
!3287 = !DILocalVariable(name: "this", arg: 1, scope: !3286, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3288 = !DILocation(line: 0, scope: !3286)
!3289 = !DILocalVariable(name: "__n", arg: 2, scope: !3286, file: !96, line: 103, type: !126)
!3290 = !DILocation(line: 103, column: 26, scope: !3286)
!3291 = !DILocalVariable(arg: 3, scope: !3286, file: !96, line: 103, type: !47)
!3292 = !DILocation(line: 103, column: 43, scope: !3286)
!3293 = !DILocation(line: 111, column: 23, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3286, file: !96, line: 111, column: 6)
!3295 = !DILocation(line: 111, column: 35, scope: !3294)
!3296 = !DILocation(line: 111, column: 27, scope: !3294)
!3297 = !DILocation(line: 111, column: 6, scope: !3286)
!3298 = !DILocation(line: 115, column: 10, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !96, line: 115, column: 10)
!3300 = distinct !DILexicalBlock(scope: !3294, file: !96, line: 112, column: 4)
!3301 = !DILocation(line: 115, column: 14, scope: !3299)
!3302 = !DILocation(line: 115, column: 10, scope: !3300)
!3303 = !DILocation(line: 116, column: 8, scope: !3299)
!3304 = !DILocation(line: 117, column: 6, scope: !3300)
!3305 = !DILocation(line: 127, column: 42, scope: !3286)
!3306 = !DILocation(line: 127, column: 46, scope: !3286)
!3307 = !DILocation(line: 127, column: 27, scope: !3286)
!3308 = !DILocation(line: 127, column: 2, scope: !3286)
!3309 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE", scope: !64, file: !46, line: 453, type: !319, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !318, retainedNodes: !185)
!3310 = !DILocalVariable(name: "__first", arg: 1, scope: !3309, file: !46, line: 453, type: !321)
!3311 = !DILocation(line: 453, column: 30, scope: !3309)
!3312 = !DILocalVariable(name: "__last", arg: 2, scope: !3309, file: !46, line: 453, type: !321)
!3313 = !DILocation(line: 453, column: 47, scope: !3309)
!3314 = !DILocalVariable(name: "__result", arg: 3, scope: !3309, file: !46, line: 453, type: !321)
!3315 = !DILocation(line: 453, column: 63, scope: !3309)
!3316 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3309, file: !46, line: 454, type: !322)
!3317 = !DILocation(line: 454, column: 24, scope: !3309)
!3318 = !DILocalVariable(arg: 5, scope: !3309, file: !46, line: 454, type: !285)
!3319 = !DILocation(line: 454, column: 42, scope: !3309)
!3320 = !DILocation(line: 456, column: 27, scope: !3309)
!3321 = !DILocation(line: 456, column: 36, scope: !3309)
!3322 = !DILocation(line: 456, column: 44, scope: !3309)
!3323 = !DILocation(line: 456, column: 54, scope: !3309)
!3324 = !DILocation(line: 456, column: 9, scope: !3309)
!3325 = !DILocation(line: 456, column: 2, scope: !3309)
!3326 = distinct !DISubprogram(name: "__relocate_a<StringToken *, StringToken *, std::allocator<StringToken> >", linkageName: "_ZSt12__relocate_aIP11StringTokenS1_SaIS0_EET0_T_S4_S3_RT1_", scope: !37, file: !3327, line: 1040, type: !3328, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3330, retainedNodes: !185)
!3327 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!49, !49, !49, !49, !148}
!3330 = !{!3331, !3332, !3333}
!3331 = !DITemplateTypeParameter(name: "_InputIterator", type: !49)
!3332 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !49)
!3333 = !DITemplateTypeParameter(name: "_Allocator", type: !89)
!3334 = !DILocalVariable(name: "__first", arg: 1, scope: !3326, file: !3327, line: 1040, type: !49)
!3335 = !DILocation(line: 1040, column: 33, scope: !3326)
!3336 = !DILocalVariable(name: "__last", arg: 2, scope: !3326, file: !3327, line: 1040, type: !49)
!3337 = !DILocation(line: 1040, column: 57, scope: !3326)
!3338 = !DILocalVariable(name: "__result", arg: 3, scope: !3326, file: !3327, line: 1041, type: !49)
!3339 = !DILocation(line: 1041, column: 21, scope: !3326)
!3340 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3326, file: !3327, line: 1041, type: !148)
!3341 = !DILocation(line: 1041, column: 43, scope: !3326)
!3342 = !DILocation(line: 1046, column: 47, scope: !3326)
!3343 = !DILocation(line: 1046, column: 29, scope: !3326)
!3344 = !DILocation(line: 1047, column: 26, scope: !3326)
!3345 = !DILocation(line: 1047, column: 8, scope: !3326)
!3346 = !DILocation(line: 1048, column: 26, scope: !3326)
!3347 = !DILocation(line: 1048, column: 8, scope: !3326)
!3348 = !DILocation(line: 1048, column: 37, scope: !3326)
!3349 = !DILocation(line: 1046, column: 14, scope: !3326)
!3350 = !DILocation(line: 1046, column: 7, scope: !3326)
!3351 = distinct !DISubprogram(name: "__relocate_a_1<StringToken, StringToken>", linkageName: "_ZSt14__relocate_a_1I11StringTokenS0_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS2_E4typeES3_S3_S3_RSaIT0_E", scope: !37, file: !3327, line: 1006, type: !3352, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3360, retainedNodes: !185)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!3354, !49, !49, !49, !148}
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<StringToken>::value, StringToken *>", scope: !37, file: !286, line: 2205, baseType: !3355)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3356, file: !286, line: 2199, baseType: !49)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, StringToken *>", scope: !37, file: !286, line: 2198, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !3357, identifier: "_ZTSSt9enable_ifILb1EP11StringTokenE")
!3357 = !{!3358, !3359}
!3358 = !DITemplateValueParameter(type: !178, value: i1 true)
!3359 = !DITemplateTypeParameter(name: "_Tp", type: !49)
!3360 = !{!135, !3361}
!3361 = !DITemplateTypeParameter(name: "_Up", type: !50)
!3362 = !DILocalVariable(name: "__first", arg: 1, scope: !3351, file: !3327, line: 1006, type: !49)
!3363 = !DILocation(line: 1006, column: 25, scope: !3351)
!3364 = !DILocalVariable(name: "__last", arg: 2, scope: !3351, file: !3327, line: 1006, type: !49)
!3365 = !DILocation(line: 1006, column: 39, scope: !3351)
!3366 = !DILocalVariable(name: "__result", arg: 3, scope: !3351, file: !3327, line: 1007, type: !49)
!3367 = !DILocation(line: 1007, column: 11, scope: !3351)
!3368 = !DILocalVariable(arg: 4, scope: !3351, file: !3327, line: 1007, type: !148)
!3369 = !DILocation(line: 1007, column: 36, scope: !3351)
!3370 = !DILocalVariable(name: "__count", scope: !3351, file: !3327, line: 1009, type: !440)
!3371 = !DILocation(line: 1009, column: 17, scope: !3351)
!3372 = !DILocation(line: 1009, column: 27, scope: !3351)
!3373 = !DILocation(line: 1009, column: 36, scope: !3351)
!3374 = !DILocation(line: 1009, column: 34, scope: !3351)
!3375 = !DILocation(line: 1010, column: 11, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3351, file: !3327, line: 1010, column: 11)
!3377 = !DILocation(line: 1010, column: 19, scope: !3376)
!3378 = !DILocation(line: 1010, column: 11, scope: !3351)
!3379 = !DILocation(line: 1011, column: 20, scope: !3376)
!3380 = !DILocation(line: 1011, column: 30, scope: !3376)
!3381 = !DILocation(line: 1011, column: 39, scope: !3376)
!3382 = !DILocation(line: 1011, column: 47, scope: !3376)
!3383 = !DILocation(line: 1011, column: 2, scope: !3376)
!3384 = !DILocation(line: 1012, column: 14, scope: !3351)
!3385 = !DILocation(line: 1012, column: 25, scope: !3351)
!3386 = !DILocation(line: 1012, column: 23, scope: !3351)
!3387 = !DILocation(line: 1012, column: 7, scope: !3351)
!3388 = distinct !DISubprogram(name: "__niter_base<StringToken *>", linkageName: "_ZSt12__niter_baseIP11StringTokenET_S2_", scope: !37, file: !3246, line: 313, type: !3389, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !416, retainedNodes: !185)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!49, !49}
!3391 = !DILocalVariable(name: "__it", arg: 1, scope: !3388, file: !3246, line: 313, type: !49)
!3392 = !DILocation(line: 313, column: 28, scope: !3388)
!3393 = !DILocation(line: 315, column: 14, scope: !3388)
!3394 = !DILocation(line: 315, column: 7, scope: !3388)
!3395 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE10deallocateERS1_PS0_m", scope: !80, file: !81, line: 495, type: !156, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !155, retainedNodes: !185)
!3396 = !DILocalVariable(name: "__a", arg: 1, scope: !3395, file: !81, line: 495, type: !87)
!3397 = !DILocation(line: 495, column: 34, scope: !3395)
!3398 = !DILocalVariable(name: "__p", arg: 2, scope: !3395, file: !81, line: 495, type: !86)
!3399 = !DILocation(line: 495, column: 47, scope: !3395)
!3400 = !DILocalVariable(name: "__n", arg: 3, scope: !3395, file: !81, line: 495, type: !150)
!3401 = !DILocation(line: 495, column: 62, scope: !3395)
!3402 = !DILocation(line: 496, column: 9, scope: !3395)
!3403 = !DILocation(line: 496, column: 24, scope: !3395)
!3404 = !DILocation(line: 496, column: 29, scope: !3395)
!3405 = !DILocation(line: 496, column: 13, scope: !3395)
!3406 = !DILocation(line: 496, column: 35, scope: !3395)
!3407 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE10deallocateEPS1_m", scope: !95, file: !96, line: 132, type: !128, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !127, retainedNodes: !185)
!3408 = !DILocalVariable(name: "this", arg: 1, scope: !3407, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3409 = !DILocation(line: 0, scope: !3407)
!3410 = !DILocalVariable(name: "__p", arg: 2, scope: !3407, file: !96, line: 132, type: !49)
!3411 = !DILocation(line: 132, column: 23, scope: !3407)
!3412 = !DILocalVariable(name: "__t", arg: 3, scope: !3407, file: !96, line: 132, type: !126)
!3413 = !DILocation(line: 132, column: 38, scope: !3407)
!3414 = !DILocation(line: 145, column: 20, scope: !3407)
!3415 = !DILocation(line: 145, column: 2, scope: !3407)
!3416 = !DILocation(line: 150, column: 7, scope: !3407)
!3417 = distinct !DISubprogram(name: "construct<StringToken, long, long>", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_", scope: !80, file: !81, line: 511, type: !3418, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3421, declaration: !3420, retainedNodes: !185)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !87, !49, !3119, !3119}
!3420 = !DISubprogram(name: "construct<StringToken, long, long>", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE9constructIS0_JllEEEvRS1_PT_DpOT0_", scope: !80, file: !81, line: 511, type: !3418, scopeLine: 511, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3421)
!3421 = !{!3361, !3122}
!3422 = !DILocalVariable(name: "__a", arg: 1, scope: !3417, file: !81, line: 511, type: !87)
!3423 = !DILocation(line: 511, column: 28, scope: !3417)
!3424 = !DILocalVariable(name: "__p", arg: 2, scope: !3417, file: !81, line: 511, type: !49)
!3425 = !DILocation(line: 511, column: 66, scope: !3417)
!3426 = !DILocalVariable(name: "__args", arg: 3, scope: !3417, file: !81, line: 512, type: !3119)
!3427 = !DILocation(line: 512, column: 16, scope: !3417)
!3428 = !DILocalVariable(name: "__args", arg: 4, scope: !3417, file: !81, line: 512, type: !3119)
!3429 = !DILocation(line: 516, column: 4, scope: !3417)
!3430 = !DILocation(line: 516, column: 18, scope: !3417)
!3431 = !DILocation(line: 516, column: 43, scope: !3417)
!3432 = !DILocation(line: 516, column: 8, scope: !3417)
!3433 = !DILocation(line: 520, column: 2, scope: !3417)
!3434 = distinct !DISubprogram(name: "_M_realloc_insert<long, long>", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE17_M_realloc_insertIJllEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_", scope: !64, file: !10, line: 427, type: !3435, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3121, declaration: !3437, retainedNodes: !185)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !333, !395, !3119, !3119}
!3437 = !DISubprogram(name: "_M_realloc_insert<long, long>", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE17_M_realloc_insertIJllEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_", scope: !64, file: !46, line: 1737, type: !3435, scopeLine: 1737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0, templateParams: !3121)
!3438 = !DILocalVariable(name: "this", arg: 1, scope: !3434, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3439 = !DILocation(line: 0, scope: !3434)
!3440 = !DILocalVariable(name: "__position", arg: 2, scope: !3434, file: !46, line: 1737, type: !395)
!3441 = !DILocation(line: 1737, column: 29, scope: !3434)
!3442 = !DILocalVariable(name: "__args", arg: 3, scope: !3434, file: !46, line: 1737, type: !3119)
!3443 = !DILocation(line: 1737, column: 52, scope: !3434)
!3444 = !DILocalVariable(name: "__args", arg: 4, scope: !3434, file: !46, line: 1737, type: !3119)
!3445 = !DILocalVariable(name: "__len", scope: !3434, file: !10, line: 435, type: !3072)
!3446 = !DILocation(line: 435, column: 23, scope: !3434)
!3447 = !DILocation(line: 436, column: 2, scope: !3434)
!3448 = !DILocalVariable(name: "__old_start", scope: !3434, file: !10, line: 437, type: !321)
!3449 = !DILocation(line: 437, column: 15, scope: !3434)
!3450 = !DILocation(line: 437, column: 35, scope: !3434)
!3451 = !DILocation(line: 437, column: 43, scope: !3434)
!3452 = !DILocalVariable(name: "__old_finish", scope: !3434, file: !10, line: 438, type: !321)
!3453 = !DILocation(line: 438, column: 15, scope: !3434)
!3454 = !DILocation(line: 438, column: 36, scope: !3434)
!3455 = !DILocation(line: 438, column: 44, scope: !3434)
!3456 = !DILocalVariable(name: "__elems_before", scope: !3434, file: !10, line: 439, type: !3072)
!3457 = !DILocation(line: 439, column: 23, scope: !3434)
!3458 = !DILocation(line: 439, column: 53, scope: !3434)
!3459 = !DILocation(line: 439, column: 51, scope: !3434)
!3460 = !DILocalVariable(name: "__new_start", scope: !3434, file: !10, line: 440, type: !321)
!3461 = !DILocation(line: 440, column: 15, scope: !3434)
!3462 = !DILocation(line: 440, column: 45, scope: !3434)
!3463 = !DILocation(line: 440, column: 33, scope: !3434)
!3464 = !DILocalVariable(name: "__new_finish", scope: !3434, file: !10, line: 441, type: !321)
!3465 = !DILocation(line: 441, column: 15, scope: !3434)
!3466 = !DILocation(line: 441, column: 28, scope: !3434)
!3467 = !DILocation(line: 449, column: 35, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3434, file: !10, line: 443, column: 2)
!3469 = !DILocation(line: 450, column: 8, scope: !3468)
!3470 = !DILocation(line: 450, column: 22, scope: !3468)
!3471 = !DILocation(line: 450, column: 20, scope: !3468)
!3472 = !DILocation(line: 452, column: 28, scope: !3468)
!3473 = !DILocation(line: 449, column: 4, scope: !3468)
!3474 = !DILocation(line: 456, column: 17, scope: !3468)
!3475 = !DILocation(line: 461, column: 35, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !10, line: 460, column: 6)
!3477 = distinct !DILexicalBlock(scope: !3468, file: !10, line: 459, column: 29)
!3478 = !DILocation(line: 461, column: 59, scope: !3476)
!3479 = !DILocation(line: 462, column: 7, scope: !3476)
!3480 = !DILocation(line: 462, column: 20, scope: !3476)
!3481 = !DILocation(line: 461, column: 23, scope: !3476)
!3482 = !DILocation(line: 461, column: 21, scope: !3476)
!3483 = !DILocation(line: 464, column: 8, scope: !3476)
!3484 = !DILocation(line: 466, column: 46, scope: !3476)
!3485 = !DILocation(line: 466, column: 54, scope: !3476)
!3486 = !DILocation(line: 467, column: 7, scope: !3476)
!3487 = !DILocation(line: 467, column: 21, scope: !3476)
!3488 = !DILocation(line: 466, column: 23, scope: !3476)
!3489 = !DILocation(line: 466, column: 21, scope: !3476)
!3490 = !DILocation(line: 484, column: 2, scope: !3468)
!3491 = !DILocation(line: 505, column: 5, scope: !3468)
!3492 = !DILocation(line: 487, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !10, line: 487, column: 8)
!3494 = distinct !DILexicalBlock(scope: !3434, file: !10, line: 486, column: 2)
!3495 = !DILocation(line: 487, column: 8, scope: !3494)
!3496 = !DILocation(line: 488, column: 35, scope: !3493)
!3497 = !DILocation(line: 489, column: 8, scope: !3493)
!3498 = !DILocation(line: 489, column: 22, scope: !3493)
!3499 = !DILocation(line: 489, column: 20, scope: !3493)
!3500 = !DILocation(line: 488, column: 6, scope: !3493)
!3501 = !DILocation(line: 491, column: 20, scope: !3493)
!3502 = !DILocation(line: 491, column: 33, scope: !3493)
!3503 = !DILocation(line: 491, column: 47, scope: !3493)
!3504 = !DILocation(line: 491, column: 6, scope: !3493)
!3505 = !DILocation(line: 505, column: 5, scope: !3493)
!3506 = !DILocation(line: 494, column: 2, scope: !3494)
!3507 = !DILocation(line: 492, column: 18, scope: !3494)
!3508 = !DILocation(line: 492, column: 31, scope: !3494)
!3509 = !DILocation(line: 492, column: 4, scope: !3494)
!3510 = !DILocation(line: 493, column: 4, scope: !3494)
!3511 = !DILocation(line: 500, column: 21, scope: !3434)
!3512 = !DILocation(line: 501, column: 13, scope: !3434)
!3513 = !DILocation(line: 501, column: 21, scope: !3434)
!3514 = !DILocation(line: 501, column: 41, scope: !3434)
!3515 = !DILocation(line: 501, column: 39, scope: !3434)
!3516 = !DILocation(line: 500, column: 7, scope: !3434)
!3517 = !DILocation(line: 502, column: 32, scope: !3434)
!3518 = !DILocation(line: 502, column: 13, scope: !3434)
!3519 = !DILocation(line: 502, column: 21, scope: !3434)
!3520 = !DILocation(line: 502, column: 30, scope: !3434)
!3521 = !DILocation(line: 503, column: 33, scope: !3434)
!3522 = !DILocation(line: 503, column: 13, scope: !3434)
!3523 = !DILocation(line: 503, column: 21, scope: !3434)
!3524 = !DILocation(line: 503, column: 31, scope: !3434)
!3525 = !DILocation(line: 504, column: 41, scope: !3434)
!3526 = !DILocation(line: 504, column: 55, scope: !3434)
!3527 = !DILocation(line: 504, column: 53, scope: !3434)
!3528 = !DILocation(line: 504, column: 13, scope: !3434)
!3529 = !DILocation(line: 504, column: 21, scope: !3434)
!3530 = !DILocation(line: 504, column: 39, scope: !3434)
!3531 = !DILocation(line: 505, column: 5, scope: !3434)
!3532 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE3endEv", scope: !64, file: !46, line: 829, type: !393, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !513, retainedNodes: !185)
!3533 = !DILocalVariable(name: "this", arg: 1, scope: !3532, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3534 = !DILocation(line: 0, scope: !3532)
!3535 = !DILocation(line: 830, column: 31, scope: !3532)
!3536 = !DILocation(line: 830, column: 39, scope: !3532)
!3537 = !DILocation(line: 830, column: 16, scope: !3532)
!3538 = !DILocation(line: 830, column: 9, scope: !3532)
!3539 = distinct !DISubprogram(name: "back", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE4backEv", scope: !64, file: !46, line: 1143, type: !566, scopeLine: 1144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !571, retainedNodes: !185)
!3540 = !DILocalVariable(name: "this", arg: 1, scope: !3539, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3541 = !DILocation(line: 0, scope: !3539)
!3542 = !DILocation(line: 1146, column: 11, scope: !3539)
!3543 = !DILocation(line: 1146, column: 17, scope: !3539)
!3544 = !DILocation(line: 1146, column: 9, scope: !3539)
!3545 = !DILocation(line: 1146, column: 2, scope: !3539)
!3546 = distinct !DISubprogram(name: "construct<StringToken, long, long>", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE9constructIS1_JllEEEvPT_DpOT0_", scope: !95, file: !96, line: 160, type: !3547, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3421, declaration: !3549, retainedNodes: !185)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !101, !49, !3119, !3119}
!3549 = !DISubprogram(name: "construct<StringToken, long, long>", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE9constructIS1_JllEEEvPT_DpOT0_", scope: !95, file: !96, line: 160, type: !3547, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3421)
!3550 = !DILocalVariable(name: "this", arg: 1, scope: !3546, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocalVariable(name: "__p", arg: 2, scope: !3546, file: !96, line: 160, type: !49)
!3553 = !DILocation(line: 160, column: 17, scope: !3546)
!3554 = !DILocalVariable(name: "__args", arg: 3, scope: !3546, file: !96, line: 160, type: !3119)
!3555 = !DILocation(line: 160, column: 33, scope: !3546)
!3556 = !DILocalVariable(name: "__args", arg: 4, scope: !3546, file: !96, line: 160, type: !3119)
!3557 = !DILocation(line: 162, column: 18, scope: !3546)
!3558 = !DILocation(line: 162, column: 47, scope: !3546)
!3559 = !DILocation(line: 162, column: 27, scope: !3546)
!3560 = !DILocation(line: 162, column: 23, scope: !3546)
!3561 = !DILocation(line: 162, column: 60, scope: !3546)
!3562 = distinct !DISubprogram(name: "StringToken", linkageName: "_ZN11StringTokenC2Emm", scope: !50, file: !51, line: 24, type: !60, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !59, retainedNodes: !185)
!3563 = !DILocalVariable(name: "this", arg: 1, scope: !3562, type: !49, flags: DIFlagArtificial | DIFlagObjectPointer)
!3564 = !DILocation(line: 0, scope: !3562)
!3565 = !DILocalVariable(name: "index", arg: 2, scope: !3562, file: !51, line: 24, type: !42)
!3566 = !DILocation(line: 24, column: 29, scope: !3562)
!3567 = !DILocalVariable(name: "length", arg: 3, scope: !3562, file: !51, line: 24, type: !42)
!3568 = !DILocation(line: 24, column: 48, scope: !3562)
!3569 = !DILocation(line: 25, column: 11, scope: !3562)
!3570 = !DILocation(line: 25, column: 18, scope: !3562)
!3571 = !DILocation(line: 26, column: 9, scope: !3562)
!3572 = !DILocation(line: 26, column: 17, scope: !3562)
!3573 = !DILocation(line: 28, column: 5, scope: !3562)
!3574 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EE12_M_check_lenEmPKc", scope: !64, file: !46, line: 1756, type: !622, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !621, retainedNodes: !185)
!3575 = !DILocalVariable(name: "this", arg: 1, scope: !3574, type: !3154, flags: DIFlagArtificial | DIFlagObjectPointer)
!3576 = !DILocation(line: 0, scope: !3574)
!3577 = !DILocalVariable(name: "__n", arg: 2, scope: !3574, file: !46, line: 1756, type: !45)
!3578 = !DILocation(line: 1756, column: 30, scope: !3574)
!3579 = !DILocalVariable(name: "__s", arg: 3, scope: !3574, file: !46, line: 1756, type: !625)
!3580 = !DILocation(line: 1756, column: 47, scope: !3574)
!3581 = !DILocation(line: 1758, column: 6, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !46, line: 1758, column: 6)
!3583 = !DILocation(line: 1758, column: 19, scope: !3582)
!3584 = !DILocation(line: 1758, column: 17, scope: !3582)
!3585 = !DILocation(line: 1758, column: 28, scope: !3582)
!3586 = !DILocation(line: 1758, column: 26, scope: !3582)
!3587 = !DILocation(line: 1758, column: 6, scope: !3574)
!3588 = !DILocation(line: 1759, column: 25, scope: !3582)
!3589 = !DILocation(line: 1759, column: 4, scope: !3582)
!3590 = !DILocalVariable(name: "__len", scope: !3574, file: !46, line: 1761, type: !3072)
!3591 = !DILocation(line: 1761, column: 18, scope: !3574)
!3592 = !DILocation(line: 1761, column: 26, scope: !3574)
!3593 = !DILocation(line: 1761, column: 46, scope: !3574)
!3594 = !DILocation(line: 1761, column: 35, scope: !3574)
!3595 = !DILocation(line: 1761, column: 33, scope: !3574)
!3596 = !DILocation(line: 1762, column: 10, scope: !3574)
!3597 = !DILocation(line: 1762, column: 18, scope: !3574)
!3598 = !DILocation(line: 1762, column: 16, scope: !3574)
!3599 = !DILocation(line: 1762, column: 25, scope: !3574)
!3600 = !DILocation(line: 1762, column: 28, scope: !3574)
!3601 = !DILocation(line: 1762, column: 36, scope: !3574)
!3602 = !DILocation(line: 1762, column: 34, scope: !3574)
!3603 = !DILocation(line: 1762, column: 9, scope: !3574)
!3604 = !DILocation(line: 1762, column: 50, scope: !3574)
!3605 = !DILocation(line: 1762, column: 63, scope: !3574)
!3606 = !DILocation(line: 1762, column: 2, scope: !3574)
!3607 = distinct !DISubprogram(name: "operator-<StringToken *, std::vector<StringToken, std::allocator<StringToken> > >", linkageName: "_ZN9__gnu_cxxmiIP11StringTokenSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_", scope: !29, file: !397, line: 1268, type: !3608, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !453, retainedNodes: !185)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!438, !3610, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !419, size: 64)
!3611 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3607, file: !397, line: 1268, type: !3610)
!3612 = !DILocation(line: 1268, column: 63, scope: !3607)
!3613 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3607, file: !397, line: 1269, type: !3610)
!3614 = !DILocation(line: 1269, column: 56, scope: !3607)
!3615 = !DILocation(line: 1271, column: 14, scope: !3607)
!3616 = !DILocation(line: 1271, column: 20, scope: !3607)
!3617 = !DILocation(line: 1271, column: 29, scope: !3607)
!3618 = !DILocation(line: 1271, column: 35, scope: !3607)
!3619 = !DILocation(line: 1271, column: 27, scope: !3607)
!3620 = !DILocation(line: 1271, column: 7, scope: !3607)
!3621 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE5beginEv", scope: !64, file: !46, line: 811, type: !393, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !392, retainedNodes: !185)
!3622 = !DILocalVariable(name: "this", arg: 1, scope: !3621, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3623 = !DILocation(line: 0, scope: !3621)
!3624 = !DILocation(line: 812, column: 31, scope: !3621)
!3625 = !DILocation(line: 812, column: 39, scope: !3621)
!3626 = !DILocation(line: 812, column: 16, scope: !3621)
!3627 = !DILocation(line: 812, column: 9, scope: !3621)
!3628 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEE4baseEv", scope: !396, file: !397, line: 1105, type: !451, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !450, retainedNodes: !185)
!3629 = !DILocalVariable(name: "this", arg: 1, scope: !3628, type: !3630, flags: DIFlagArtificial | DIFlagObjectPointer)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3631 = !DILocation(line: 0, scope: !3628)
!3632 = !DILocation(line: 1106, column: 16, scope: !3628)
!3633 = !DILocation(line: 1106, column: 9, scope: !3628)
!3634 = distinct !DISubprogram(name: "destroy<StringToken>", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE7destroyIS0_EEvRS1_PT_", scope: !80, file: !81, line: 531, type: !3635, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3638, declaration: !3637, retainedNodes: !185)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !87, !49}
!3637 = !DISubprogram(name: "destroy<StringToken>", linkageName: "_ZNSt16allocator_traitsISaI11StringTokenEE7destroyIS0_EEvRS1_PT_", scope: !80, file: !81, line: 531, type: !3635, scopeLine: 531, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3638)
!3638 = !{!3361}
!3639 = !DILocalVariable(name: "__a", arg: 1, scope: !3634, file: !81, line: 531, type: !87)
!3640 = !DILocation(line: 531, column: 26, scope: !3634)
!3641 = !DILocalVariable(name: "__p", arg: 2, scope: !3634, file: !81, line: 531, type: !49)
!3642 = !DILocation(line: 531, column: 64, scope: !3634)
!3643 = !DILocation(line: 535, column: 4, scope: !3634)
!3644 = !DILocation(line: 535, column: 16, scope: !3634)
!3645 = !DILocation(line: 535, column: 8, scope: !3634)
!3646 = !DILocation(line: 539, column: 2, scope: !3634)
!3647 = distinct !DISubprogram(name: "_Destroy<StringToken *, StringToken>", linkageName: "_ZSt8_DestroyIP11StringTokenS0_EvT_S2_RSaIT0_E", scope: !37, file: !81, line: 845, type: !3648, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3650, retainedNodes: !185)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !49, !49, !148}
!3650 = !{!3332, !135}
!3651 = !DILocalVariable(name: "__first", arg: 1, scope: !3647, file: !81, line: 845, type: !49)
!3652 = !DILocation(line: 845, column: 31, scope: !3647)
!3653 = !DILocalVariable(name: "__last", arg: 2, scope: !3647, file: !81, line: 845, type: !49)
!3654 = !DILocation(line: 845, column: 57, scope: !3647)
!3655 = !DILocalVariable(arg: 3, scope: !3647, file: !81, line: 846, type: !148)
!3656 = !DILocation(line: 846, column: 22, scope: !3647)
!3657 = !DILocation(line: 848, column: 16, scope: !3647)
!3658 = !DILocation(line: 848, column: 25, scope: !3647)
!3659 = !DILocation(line: 848, column: 7, scope: !3647)
!3660 = !DILocation(line: 849, column: 5, scope: !3647)
!3661 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !37, file: !3246, line: 254, type: !3247, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3251, retainedNodes: !185)
!3662 = !DILocalVariable(name: "__a", arg: 1, scope: !3661, file: !3663, line: 407, type: !3249)
!3663 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!3664 = !DILocation(line: 407, column: 19, scope: !3661)
!3665 = !DILocalVariable(name: "__b", arg: 2, scope: !3661, file: !3663, line: 407, type: !3249)
!3666 = !DILocation(line: 407, column: 31, scope: !3661)
!3667 = !DILocation(line: 259, column: 11, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3661, file: !3246, line: 259, column: 11)
!3669 = !DILocation(line: 259, column: 17, scope: !3668)
!3670 = !DILocation(line: 259, column: 15, scope: !3668)
!3671 = !DILocation(line: 259, column: 11, scope: !3661)
!3672 = !DILocation(line: 260, column: 9, scope: !3668)
!3673 = !DILocation(line: 260, column: 2, scope: !3668)
!3674 = !DILocation(line: 261, column: 14, scope: !3661)
!3675 = !DILocation(line: 261, column: 7, scope: !3661)
!3676 = !DILocation(line: 262, column: 5, scope: !3661)
!3677 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEC2ERKS2_", scope: !396, file: !397, line: 1027, type: !405, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !404, retainedNodes: !185)
!3678 = !DILocalVariable(name: "this", arg: 1, scope: !3677, type: !3679, flags: DIFlagArtificial | DIFlagObjectPointer)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3680 = !DILocation(line: 0, scope: !3677)
!3681 = !DILocalVariable(name: "__i", arg: 2, scope: !3677, file: !397, line: 1027, type: !407)
!3682 = !DILocation(line: 1027, column: 42, scope: !3677)
!3683 = !DILocation(line: 1028, column: 9, scope: !3677)
!3684 = !DILocation(line: 1028, column: 20, scope: !3677)
!3685 = !DILocation(line: 1028, column: 27, scope: !3677)
!3686 = distinct !DISubprogram(name: "destroy<StringToken>", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE7destroyIS1_EEvPT_", scope: !95, file: !96, line: 166, type: !3687, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3638, declaration: !3689, retainedNodes: !185)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !101, !49}
!3689 = !DISubprogram(name: "destroy<StringToken>", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenE7destroyIS1_EEvPT_", scope: !95, file: !96, line: 166, type: !3687, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3638)
!3690 = !DILocalVariable(name: "this", arg: 1, scope: !3686, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3691 = !DILocation(line: 0, scope: !3686)
!3692 = !DILocalVariable(name: "__p", arg: 2, scope: !3686, file: !96, line: 166, type: !49)
!3693 = !DILocation(line: 166, column: 15, scope: !3686)
!3694 = !DILocation(line: 168, column: 4, scope: !3686)
!3695 = !DILocation(line: 168, column: 17, scope: !3686)
!3696 = distinct !DISubprogram(name: "_Destroy<StringToken *>", linkageName: "_ZSt8_DestroyIP11StringTokenEvT_S2_", scope: !37, file: !3697, line: 182, type: !3698, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3700, retainedNodes: !185)
!3697 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !49, !49}
!3700 = !{!3332}
!3701 = !DILocalVariable(name: "__first", arg: 1, scope: !3696, file: !3697, line: 182, type: !49)
!3702 = !DILocation(line: 182, column: 31, scope: !3696)
!3703 = !DILocalVariable(name: "__last", arg: 2, scope: !3696, file: !3697, line: 182, type: !49)
!3704 = !DILocation(line: 182, column: 57, scope: !3696)
!3705 = !DILocation(line: 196, column: 12, scope: !3696)
!3706 = !DILocation(line: 196, column: 21, scope: !3696)
!3707 = !DILocation(line: 195, column: 7, scope: !3696)
!3708 = !DILocation(line: 197, column: 5, scope: !3696)
!3709 = distinct !DISubprogram(name: "__destroy<StringToken *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_", scope: !3710, file: !3697, line: 172, type: !3698, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !3700, declaration: !3712, retainedNodes: !185)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !37, file: !3697, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !3711, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3711 = !{!3358}
!3712 = !DISubprogram(name: "__destroy<StringToken *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIP11StringTokenEEvT_S4_", scope: !3710, file: !3697, line: 172, type: !3698, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3700)
!3713 = !DILocalVariable(arg: 1, scope: !3709, file: !3697, line: 172, type: !49)
!3714 = !DILocation(line: 172, column: 35, scope: !3709)
!3715 = !DILocalVariable(arg: 2, scope: !3709, file: !3697, line: 172, type: !49)
!3716 = !DILocation(line: 172, column: 53, scope: !3709)
!3717 = !DILocation(line: 172, column: 57, scope: !3709)
!3718 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEmiEl", scope: !396, file: !397, line: 1100, type: !446, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !449, retainedNodes: !185)
!3719 = !DILocalVariable(name: "this", arg: 1, scope: !3718, type: !3630, flags: DIFlagArtificial | DIFlagObjectPointer)
!3720 = !DILocation(line: 0, scope: !3718)
!3721 = !DILocalVariable(name: "__n", arg: 2, scope: !3718, file: !397, line: 1100, type: !438)
!3722 = !DILocation(line: 1100, column: 33, scope: !3718)
!3723 = !DILocation(line: 1101, column: 34, scope: !3718)
!3724 = !DILocation(line: 1101, column: 47, scope: !3718)
!3725 = !DILocation(line: 1101, column: 45, scope: !3718)
!3726 = !DILocation(line: 1101, column: 16, scope: !3718)
!3727 = !DILocation(line: 1101, column: 9, scope: !3718)
!3728 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIP11StringTokenSt6vectorIS1_SaIS1_EEEdeEv", scope: !396, file: !397, line: 1042, type: !410, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !409, retainedNodes: !185)
!3729 = !DILocalVariable(name: "this", arg: 1, scope: !3728, type: !3630, flags: DIFlagArtificial | DIFlagObjectPointer)
!3730 = !DILocation(line: 0, scope: !3728)
!3731 = !DILocation(line: 1043, column: 17, scope: !3728)
!3732 = !DILocation(line: 1043, column: 9, scope: !3728)
!3733 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2EOS2_", scope: !67, file: !46, line: 308, type: !261, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !260, retainedNodes: !185)
!3734 = !DILocalVariable(name: "this", arg: 1, scope: !3733, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3735 = !DILocation(line: 0, scope: !3733)
!3736 = !DILocalVariable(arg: 2, scope: !3733, file: !46, line: 308, type: !263)
!3737 = !DILocation(line: 308, column: 34, scope: !3733)
!3738 = !DILocation(line: 308, column: 7, scope: !3733)
!3739 = !DILocation(line: 308, column: 44, scope: !3733)
!3740 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2EOS3_", scope: !70, file: !46, line: 143, type: !222, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !221, retainedNodes: !185)
!3741 = !DILocalVariable(name: "this", arg: 1, scope: !3740, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3742 = !DILocation(line: 0, scope: !3740)
!3743 = !DILocalVariable(name: "__x", arg: 2, scope: !3740, file: !46, line: 143, type: !224)
!3744 = !DILocation(line: 143, column: 30, scope: !3740)
!3745 = !DILocation(line: 144, column: 29, scope: !3740)
!3746 = !DILocation(line: 144, column: 4, scope: !3740)
!3747 = !DILocation(line: 144, column: 64, scope: !3740)
!3748 = !DILocation(line: 144, column: 36, scope: !3740)
!3749 = !DILocation(line: 145, column: 4, scope: !3740)
!3750 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2EOS3_", scope: !188, file: !46, line: 102, type: !200, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !199, retainedNodes: !185)
!3751 = !DILocalVariable(name: "this", arg: 1, scope: !3750, type: !3752, flags: DIFlagArtificial | DIFlagObjectPointer)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3753 = !DILocation(line: 0, scope: !3750)
!3754 = !DILocalVariable(name: "__x", arg: 2, scope: !3750, file: !46, line: 102, type: !202)
!3755 = !DILocation(line: 102, column: 40, scope: !3750)
!3756 = !DILocation(line: 103, column: 4, scope: !3750)
!3757 = !DILocation(line: 103, column: 13, scope: !3750)
!3758 = !DILocation(line: 103, column: 17, scope: !3750)
!3759 = !DILocation(line: 103, column: 28, scope: !3750)
!3760 = !DILocation(line: 103, column: 38, scope: !3750)
!3761 = !DILocation(line: 103, column: 42, scope: !3750)
!3762 = !DILocation(line: 104, column: 4, scope: !3750)
!3763 = !DILocation(line: 104, column: 22, scope: !3750)
!3764 = !DILocation(line: 104, column: 26, scope: !3750)
!3765 = !DILocation(line: 105, column: 35, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3750, file: !46, line: 105, column: 2)
!3767 = !DILocation(line: 105, column: 39, scope: !3766)
!3768 = !DILocation(line: 105, column: 57, scope: !3766)
!3769 = !DILocation(line: 105, column: 19, scope: !3766)
!3770 = !DILocation(line: 105, column: 23, scope: !3766)
!3771 = !DILocation(line: 105, column: 33, scope: !3766)
!3772 = !DILocation(line: 105, column: 4, scope: !3766)
!3773 = !DILocation(line: 105, column: 8, scope: !3766)
!3774 = !DILocation(line: 105, column: 17, scope: !3766)
!3775 = !DILocation(line: 105, column: 70, scope: !3750)
!3776 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenEC2ERKS2_", scope: !95, file: !96, line: 82, type: !103, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !102, retainedNodes: !185)
!3777 = !DILocalVariable(name: "this", arg: 1, scope: !3776, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3778 = !DILocation(line: 0, scope: !3776)
!3779 = !DILocalVariable(arg: 2, scope: !3776, file: !96, line: 82, type: !105)
!3780 = !DILocation(line: 82, column: 41, scope: !3776)
!3781 = !DILocation(line: 82, column: 67, scope: !3776)
!3782 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EED2Ev", scope: !67, file: !46, line: 333, type: !247, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !273, retainedNodes: !185)
!3783 = !DILocalVariable(name: "this", arg: 1, scope: !3782, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3784 = !DILocation(line: 0, scope: !3782)
!3785 = !DILocation(line: 335, column: 16, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !46, line: 334, column: 7)
!3787 = !DILocation(line: 335, column: 24, scope: !3786)
!3788 = !DILocation(line: 336, column: 9, scope: !3786)
!3789 = !DILocation(line: 336, column: 17, scope: !3786)
!3790 = !DILocation(line: 336, column: 37, scope: !3786)
!3791 = !DILocation(line: 336, column: 45, scope: !3786)
!3792 = !DILocation(line: 336, column: 35, scope: !3786)
!3793 = !DILocation(line: 335, column: 2, scope: !3786)
!3794 = !DILocation(line: 337, column: 7, scope: !3786)
!3795 = !DILocation(line: 337, column: 7, scope: !3782)
!3796 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implD2Ev", scope: !70, file: !46, line: 128, type: !213, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3797, retainedNodes: !185)
!3797 = !DISubprogram(name: "~_Vector_impl", scope: !70, type: !213, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3798 = !DILocalVariable(name: "this", arg: 1, scope: !3796, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3799 = !DILocation(line: 0, scope: !3796)
!3800 = !DILocation(line: 128, column: 14, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3796, file: !46, line: 128, column: 14)
!3802 = !DILocation(line: 128, column: 14, scope: !3796)
!3803 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorI11StringTokenED2Ev", scope: !95, file: !96, line: 89, type: !99, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !107, retainedNodes: !185)
!3804 = !DILocalVariable(name: "this", arg: 1, scope: !3803, type: !3051, flags: DIFlagArtificial | DIFlagObjectPointer)
!3805 = !DILocation(line: 0, scope: !3803)
!3806 = !DILocation(line: 89, column: 48, scope: !3803)
!3807 = !DILocalVariable(name: "__convf", arg: 1, scope: !1181, file: !1180, line: 54, type: !1184)
!3808 = !DILocation(line: 54, column: 20, scope: !1181)
!3809 = !DILocalVariable(name: "__name", arg: 2, scope: !1181, file: !1180, line: 55, type: !625)
!3810 = !DILocation(line: 55, column: 17, scope: !1181)
!3811 = !DILocalVariable(name: "__str", arg: 3, scope: !1181, file: !1180, line: 55, type: !625)
!3812 = !DILocation(line: 55, column: 39, scope: !1181)
!3813 = !DILocalVariable(name: "__idx", arg: 4, scope: !1181, file: !1180, line: 55, type: !1189)
!3814 = !DILocation(line: 55, column: 59, scope: !1181)
!3815 = !DILocalVariable(name: "__base", arg: 5, scope: !1181, file: !1180, line: 56, type: !432)
!3816 = !DILocation(line: 56, column: 14, scope: !1181)
!3817 = !DILocalVariable(name: "__ret", scope: !1181, file: !1180, line: 58, type: !432)
!3818 = !DILocation(line: 58, column: 12, scope: !1181)
!3819 = !DILocalVariable(name: "__endptr", scope: !1181, file: !1180, line: 60, type: !1188)
!3820 = !DILocation(line: 60, column: 15, scope: !1181)
!3821 = !DILocalVariable(name: "__save_errno", scope: !1181, file: !1180, line: 66, type: !3822)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!3823 = !DILocation(line: 66, column: 15, scope: !1181)
!3824 = !DILocalVariable(name: "__tmp", scope: !1181, file: !1180, line: 80, type: !3825)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!3826 = !DILocation(line: 80, column: 19, scope: !1181)
!3827 = !DILocation(line: 80, column: 27, scope: !1181)
!3828 = !DILocation(line: 80, column: 35, scope: !1181)
!3829 = !DILocation(line: 80, column: 53, scope: !1181)
!3830 = !DILocation(line: 82, column: 11, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !1181, file: !1180, line: 82, column: 11)
!3832 = !DILocation(line: 82, column: 23, scope: !3831)
!3833 = !DILocation(line: 82, column: 20, scope: !3831)
!3834 = !DILocation(line: 82, column: 11, scope: !1181)
!3835 = !DILocation(line: 83, column: 32, scope: !3831)
!3836 = !DILocation(line: 83, column: 2, scope: !3831)
!3837 = !DILocation(line: 94, column: 5, scope: !1181)
!3838 = !DILocation(line: 84, column: 16, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3831, file: !1180, line: 84, column: 16)
!3840 = !DILocation(line: 84, column: 22, scope: !3839)
!3841 = !DILocation(line: 85, column: 4, scope: !3839)
!3842 = !DILocation(line: 85, column: 26, scope: !3839)
!3843 = !DILocation(line: 85, column: 7, scope: !3839)
!3844 = !DILocation(line: 84, column: 16, scope: !3831)
!3845 = !DILocation(line: 86, column: 28, scope: !3839)
!3846 = !DILocation(line: 86, column: 2, scope: !3839)
!3847 = !DILocation(line: 88, column: 10, scope: !3839)
!3848 = !DILocation(line: 88, column: 8, scope: !3839)
!3849 = !DILocation(line: 90, column: 11, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !1181, file: !1180, line: 90, column: 11)
!3851 = !DILocation(line: 90, column: 11, scope: !1181)
!3852 = !DILocation(line: 91, column: 11, scope: !3850)
!3853 = !DILocation(line: 91, column: 22, scope: !3850)
!3854 = !DILocation(line: 91, column: 20, scope: !3850)
!3855 = !DILocation(line: 91, column: 3, scope: !3850)
!3856 = !DILocation(line: 91, column: 9, scope: !3850)
!3857 = !DILocation(line: 91, column: 2, scope: !3850)
!3858 = !DILocation(line: 93, column: 14, scope: !1181)
!3859 = distinct !DISubprogram(name: "_Save_errno", linkageName: "_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev", scope: !1179, file: !1180, line: 63, type: !1199, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1198, retainedNodes: !185)
!3860 = !DILocalVariable(name: "this", arg: 1, scope: !3859, type: !3861, flags: DIFlagArtificial | DIFlagObjectPointer)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!3862 = !DILocation(line: 0, scope: !3859)
!3863 = !DILocation(line: 63, column: 18, scope: !3859)
!3864 = !DILocation(line: 63, column: 27, scope: !3859)
!3865 = !DILocation(line: 63, column: 36, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3859, file: !1180, line: 63, column: 34)
!3867 = !DILocation(line: 63, column: 42, scope: !3866)
!3868 = !DILocation(line: 63, column: 47, scope: !3859)
!3869 = distinct !DISubprogram(name: "_S_chk", linkageName: "_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE", scope: !3870, file: !1180, line: 73, type: !3876, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !3875, retainedNodes: !185)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Range_chk", scope: !1181, file: !1180, line: 68, size: 8, flags: DIFlagTypePassByValue, elements: !3871, identifier: "_ZTSZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_E10_Range_chk")
!3871 = !{!3872, !3875}
!3872 = !DISubprogram(name: "_S_chk", scope: !3870, file: !1180, line: 70, type: !3873, scopeLine: 70, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!178, !441, !304}
!3875 = !DISubprogram(name: "_S_chk", scope: !3870, file: !1180, line: 73, type: !3876, scopeLine: 73, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!178, !441, !285}
!3878 = !DILocalVariable(name: "__val", arg: 1, scope: !3869, file: !1180, line: 73, type: !441)
!3879 = !DILocation(line: 73, column: 17, scope: !3869)
!3880 = !DILocalVariable(arg: 2, scope: !3869, file: !1180, line: 73, type: !285)
!3881 = !DILocation(line: 73, column: 38, scope: !3869)
!3882 = !DILocation(line: 75, column: 13, scope: !3869)
!3883 = !DILocation(line: 75, column: 19, scope: !3869)
!3884 = !DILocation(line: 76, column: 8, scope: !3869)
!3885 = !DILocation(line: 76, column: 11, scope: !3869)
!3886 = !DILocation(line: 76, column: 17, scope: !3869)
!3887 = !DILocation(line: 75, column: 6, scope: !3869)
!3888 = distinct !DISubprogram(name: "~_Save_errno", linkageName: "_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev", scope: !1179, file: !1180, line: 64, type: !1199, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !1202, retainedNodes: !185)
!3889 = !DILocalVariable(name: "this", arg: 1, scope: !3888, type: !3861, flags: DIFlagArtificial | DIFlagObjectPointer)
!3890 = !DILocation(line: 0, scope: !3888)
!3891 = !DILocation(line: 64, column: 23, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !1180, line: 64, column: 23)
!3893 = distinct !DILexicalBlock(scope: !3888, file: !1180, line: 64, column: 17)
!3894 = !DILocation(line: 64, column: 29, scope: !3892)
!3895 = !DILocation(line: 64, column: 23, scope: !3893)
!3896 = !DILocation(line: 64, column: 43, scope: !3892)
!3897 = !DILocation(line: 64, column: 35, scope: !3892)
!3898 = !DILocation(line: 64, column: 41, scope: !3892)
!3899 = !DILocation(line: 64, column: 53, scope: !3888)
!3900 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorI11StringTokenSaIS0_EEixEm", scope: !64, file: !46, line: 1061, type: !554, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !553, retainedNodes: !185)
!3901 = !DILocalVariable(name: "this", arg: 1, scope: !3900, type: !3154, flags: DIFlagArtificial | DIFlagObjectPointer)
!3902 = !DILocation(line: 0, scope: !3900)
!3903 = !DILocalVariable(name: "__n", arg: 2, scope: !3900, file: !46, line: 1061, type: !45)
!3904 = !DILocation(line: 1061, column: 28, scope: !3900)
!3905 = !DILocation(line: 1064, column: 17, scope: !3900)
!3906 = !DILocation(line: 1064, column: 25, scope: !3900)
!3907 = !DILocation(line: 1064, column: 36, scope: !3900)
!3908 = !DILocation(line: 1064, column: 34, scope: !3900)
!3909 = !DILocation(line: 1064, column: 2, scope: !3900)
!3910 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEaSEOS2_", scope: !64, file: !46, line: 709, type: !381, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !380, retainedNodes: !185)
!3911 = !DILocalVariable(name: "this", arg: 1, scope: !3910, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3912 = !DILocation(line: 0, scope: !3910)
!3913 = !DILocalVariable(name: "__x", arg: 2, scope: !3910, file: !46, line: 709, type: !357)
!3914 = !DILocation(line: 709, column: 26, scope: !3910)
!3915 = !DILocalVariable(name: "__move_storage", scope: !3910, file: !46, line: 711, type: !290)
!3916 = !DILocation(line: 711, column: 17, scope: !3910)
!3917 = !DILocation(line: 714, column: 27, scope: !3910)
!3918 = !DILocation(line: 714, column: 2, scope: !3910)
!3919 = !DILocation(line: 715, column: 2, scope: !3910)
!3920 = distinct !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE", scope: !64, file: !46, line: 1815, type: !644, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !643, retainedNodes: !185)
!3921 = !DILocalVariable(name: "this", arg: 1, scope: !3920, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3922 = !DILocation(line: 0, scope: !3920)
!3923 = !DILocalVariable(name: "__x", arg: 2, scope: !3920, file: !46, line: 1815, type: !357)
!3924 = !DILocation(line: 1815, column: 31, scope: !3920)
!3925 = !DILocalVariable(arg: 3, scope: !3920, file: !46, line: 1815, type: !285)
!3926 = !DILocation(line: 1815, column: 45, scope: !3920)
!3927 = !DILocalVariable(name: "__tmp", scope: !3920, file: !46, line: 1817, type: !64)
!3928 = !DILocation(line: 1817, column: 9, scope: !3920)
!3929 = !DILocation(line: 1817, column: 15, scope: !3920)
!3930 = !DILocation(line: 1818, column: 8, scope: !3920)
!3931 = !DILocation(line: 1818, column: 29, scope: !3920)
!3932 = !DILocation(line: 1818, column: 33, scope: !3920)
!3933 = !DILocation(line: 1818, column: 16, scope: !3920)
!3934 = !DILocation(line: 1819, column: 8, scope: !3920)
!3935 = !DILocation(line: 1819, column: 29, scope: !3920)
!3936 = !DILocation(line: 1819, column: 33, scope: !3920)
!3937 = !DILocation(line: 1819, column: 16, scope: !3920)
!3938 = !DILocation(line: 1820, column: 23, scope: !3920)
!3939 = !DILocation(line: 1820, column: 46, scope: !3920)
!3940 = !DILocation(line: 1820, column: 50, scope: !3920)
!3941 = !DILocation(line: 1820, column: 2, scope: !3920)
!3942 = !DILocation(line: 1821, column: 7, scope: !3920)
!3943 = distinct !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseI11StringTokenSaIS0_EE13get_allocatorEv", scope: !67, file: !46, line: 284, type: !243, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !242, retainedNodes: !185)
!3944 = !DILocalVariable(name: "this", arg: 1, scope: !3943, type: !3235, flags: DIFlagArtificial | DIFlagObjectPointer)
!3945 = !DILocation(line: 0, scope: !3943)
!3946 = !DILocation(line: 285, column: 31, scope: !3943)
!3947 = !DILocation(line: 285, column: 16, scope: !3943)
!3948 = !DILocation(line: 285, column: 9, scope: !3943)
!3949 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorI11StringTokenSaIS0_EEC2ERKS1_", scope: !64, file: !46, line: 497, type: !335, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !334, retainedNodes: !185)
!3950 = !DILocalVariable(name: "this", arg: 1, scope: !3949, type: !2886, flags: DIFlagArtificial | DIFlagObjectPointer)
!3951 = !DILocation(line: 0, scope: !3949)
!3952 = !DILocalVariable(name: "__a", arg: 2, scope: !3949, file: !46, line: 497, type: !337)
!3953 = !DILocation(line: 497, column: 36, scope: !3949)
!3954 = !DILocation(line: 498, column: 15, scope: !3949)
!3955 = !DILocation(line: 498, column: 9, scope: !3949)
!3956 = !DILocation(line: 498, column: 22, scope: !3949)
!3957 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaI11StringTokenED2Ev", scope: !89, file: !90, line: 174, type: !137, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !149, retainedNodes: !185)
!3958 = !DILocalVariable(name: "this", arg: 1, scope: !3957, type: !3045, flags: DIFlagArtificial | DIFlagObjectPointer)
!3959 = !DILocation(line: 0, scope: !3957)
!3960 = !DILocation(line: 174, column: 39, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3957, file: !90, line: 174, column: 37)
!3962 = !DILocation(line: 174, column: 39, scope: !3957)
!3963 = distinct !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_", scope: !188, file: !46, line: 117, type: !209, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !208, retainedNodes: !185)
!3964 = !DILocalVariable(name: "this", arg: 1, scope: !3963, type: !3752, flags: DIFlagArtificial | DIFlagObjectPointer)
!3965 = !DILocation(line: 0, scope: !3963)
!3966 = !DILocalVariable(name: "__x", arg: 2, scope: !3963, file: !46, line: 117, type: !211)
!3967 = !DILocation(line: 117, column: 34, scope: !3963)
!3968 = !DILocalVariable(name: "__tmp", scope: !3963, file: !46, line: 121, type: !188)
!3969 = !DILocation(line: 121, column: 22, scope: !3963)
!3970 = !DILocation(line: 122, column: 10, scope: !3963)
!3971 = !DILocation(line: 123, column: 17, scope: !3963)
!3972 = !DILocation(line: 123, column: 4, scope: !3963)
!3973 = !DILocation(line: 124, column: 4, scope: !3963)
!3974 = !DILocation(line: 124, column: 8, scope: !3963)
!3975 = !DILocation(line: 125, column: 2, scope: !3963)
!3976 = distinct !DISubprogram(name: "__alloc_on_move<std::allocator<StringToken> >", linkageName: "_ZSt15__alloc_on_moveISaI11StringTokenEEvRT_S3_", scope: !37, file: !81, line: 710, type: !173, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !167, retainedNodes: !185)
!3977 = !DILocalVariable(name: "__one", arg: 1, scope: !3976, file: !81, line: 710, type: !148)
!3978 = !DILocation(line: 710, column: 29, scope: !3976)
!3979 = !DILocalVariable(name: "__two", arg: 2, scope: !3976, file: !81, line: 710, type: !148)
!3980 = !DILocation(line: 710, column: 44, scope: !3976)
!3981 = !DILocation(line: 716, column: 20, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3976, file: !81, line: 715, column: 21)
!3983 = !DILocation(line: 716, column: 2, scope: !3982)
!3984 = !DILocation(line: 720, column: 5, scope: !3976)
!3985 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaI11StringTokenEC2ERKS0_", scope: !89, file: !90, line: 159, type: !141, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !140, retainedNodes: !185)
!3986 = !DILocalVariable(name: "this", arg: 1, scope: !3985, type: !3045, flags: DIFlagArtificial | DIFlagObjectPointer)
!3987 = !DILocation(line: 0, scope: !3985)
!3988 = !DILocalVariable(name: "__a", arg: 2, scope: !3985, file: !90, line: 159, type: !143)
!3989 = !DILocation(line: 159, column: 34, scope: !3985)
!3990 = !DILocation(line: 160, column: 31, scope: !3985)
!3991 = !DILocation(line: 160, column: 9, scope: !3985)
!3992 = !DILocation(line: 160, column: 38, scope: !3985)
!3993 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EEC2ERKS1_", scope: !67, file: !46, line: 293, type: !250, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !249, retainedNodes: !185)
!3994 = !DILocalVariable(name: "this", arg: 1, scope: !3993, type: !3032, flags: DIFlagArtificial | DIFlagObjectPointer)
!3995 = !DILocation(line: 0, scope: !3993)
!3996 = !DILocalVariable(name: "__a", arg: 2, scope: !3993, file: !46, line: 293, type: !252)
!3997 = !DILocation(line: 293, column: 42, scope: !3993)
!3998 = !DILocation(line: 294, column: 9, scope: !3993)
!3999 = !DILocation(line: 294, column: 17, scope: !3993)
!4000 = !DILocation(line: 294, column: 24, scope: !3993)
!4001 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE12_Vector_implC2ERKS1_", scope: !70, file: !46, line: 136, type: !217, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !216, retainedNodes: !185)
!4002 = !DILocalVariable(name: "this", arg: 1, scope: !4001, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!4003 = !DILocation(line: 0, scope: !4001)
!4004 = !DILocalVariable(name: "__a", arg: 2, scope: !4001, file: !46, line: 136, type: !219)
!4005 = !DILocation(line: 136, column: 37, scope: !4001)
!4006 = !DILocation(line: 137, column: 19, scope: !4001)
!4007 = !DILocation(line: 137, column: 4, scope: !4001)
!4008 = !DILocation(line: 136, column: 2, scope: !4001)
!4009 = !DILocation(line: 138, column: 4, scope: !4001)
!4010 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_dataC2Ev", scope: !188, file: !46, line: 97, type: !196, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !195, retainedNodes: !185)
!4011 = !DILocalVariable(name: "this", arg: 1, scope: !4010, type: !3752, flags: DIFlagArtificial | DIFlagObjectPointer)
!4012 = !DILocation(line: 0, scope: !4010)
!4013 = !DILocation(line: 98, column: 4, scope: !4010)
!4014 = !DILocation(line: 98, column: 16, scope: !4010)
!4015 = !DILocation(line: 98, column: 29, scope: !4010)
!4016 = !DILocation(line: 99, column: 4, scope: !4010)
!4017 = distinct !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseI11StringTokenSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_", scope: !188, file: !46, line: 109, type: !204, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !203, retainedNodes: !185)
!4018 = !DILocalVariable(name: "this", arg: 1, scope: !4017, type: !3752, flags: DIFlagArtificial | DIFlagObjectPointer)
!4019 = !DILocation(line: 0, scope: !4017)
!4020 = !DILocalVariable(name: "__x", arg: 2, scope: !4017, file: !46, line: 109, type: !206)
!4021 = !DILocation(line: 109, column: 40, scope: !4017)
!4022 = !DILocation(line: 111, column: 15, scope: !4017)
!4023 = !DILocation(line: 111, column: 19, scope: !4017)
!4024 = !DILocation(line: 111, column: 4, scope: !4017)
!4025 = !DILocation(line: 111, column: 13, scope: !4017)
!4026 = !DILocation(line: 112, column: 16, scope: !4017)
!4027 = !DILocation(line: 112, column: 20, scope: !4017)
!4028 = !DILocation(line: 112, column: 4, scope: !4017)
!4029 = !DILocation(line: 112, column: 14, scope: !4017)
!4030 = !DILocation(line: 113, column: 24, scope: !4017)
!4031 = !DILocation(line: 113, column: 28, scope: !4017)
!4032 = !DILocation(line: 113, column: 4, scope: !4017)
!4033 = !DILocation(line: 113, column: 22, scope: !4017)
!4034 = !DILocation(line: 114, column: 2, scope: !4017)
!4035 = distinct !DISubprogram(name: "tuple<int &, int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, true, true>", linkageName: "_ZNSt5tupleIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJRiS8_RS5_ELb1ELb1EEEDpOT_", scope: !1084, file: !836, line: 742, type: !4036, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4039, declaration: !4038, retainedNodes: !185)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !1090, !952, !952, !880}
!4038 = !DISubprogram(name: "tuple<int &, int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, true, true>", scope: !1084, file: !836, line: 742, type: !4036, scopeLine: 742, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !4039)
!4039 = !{!4040, !4041, !4042}
!4040 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UElements", value: !2404)
!4041 = !DITemplateValueParameter(name: "_Valid", type: !178, value: i1 true)
!4042 = !DITemplateValueParameter(type: !178, defaulted: true, value: i1 true)
!4043 = !DILocalVariable(name: "this", arg: 1, scope: !4035, type: !4044, flags: DIFlagArtificial | DIFlagObjectPointer)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!4045 = !DILocation(line: 0, scope: !4035)
!4046 = !DILocalVariable(name: "__elements", arg: 2, scope: !4035, file: !836, line: 742, type: !952)
!4047 = !DILocation(line: 742, column: 24, scope: !4035)
!4048 = !DILocalVariable(name: "__elements", arg: 3, scope: !4035, file: !836, line: 742, type: !952)
!4049 = !DILocalVariable(name: "__elements", arg: 4, scope: !4035, file: !836, line: 742, type: !880)
!4050 = !DILocation(line: 744, column: 40, scope: !4035)
!4051 = !DILocation(line: 744, column: 4, scope: !4035)
!4052 = !DILocation(line: 744, column: 58, scope: !4035)
!4053 = distinct !DISubprogram(name: "_Tuple_impl<int &, int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, void>", linkageName: "_ZNSt11_Tuple_implILm0EJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJS8_RS5_EvEEOT_DpOT0_", scope: !1038, file: !836, line: 290, type: !4054, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4057, declaration: !4056, retainedNodes: !185)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !1064, !952, !952, !880}
!4056 = !DISubprogram(name: "_Tuple_impl<int &, int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, void>", scope: !1038, file: !836, line: 290, type: !4054, scopeLine: 290, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !4057)
!4057 = !{!4058, !4059, !4061}
!4058 = !DITemplateTypeParameter(name: "_UHead", type: !952)
!4059 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UTail", value: !4060)
!4060 = !{!2405, !2406}
!4061 = !DITemplateTypeParameter(type: null)
!4062 = !DILocalVariable(name: "this", arg: 1, scope: !4053, type: !4063, flags: DIFlagArtificial | DIFlagObjectPointer)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!4064 = !DILocation(line: 0, scope: !4053)
!4065 = !DILocalVariable(name: "__head", arg: 2, scope: !4053, file: !836, line: 290, type: !952)
!4066 = !DILocation(line: 290, column: 23, scope: !4053)
!4067 = !DILocalVariable(name: "__tail", arg: 3, scope: !4053, file: !836, line: 290, type: !952)
!4068 = !DILocation(line: 290, column: 43, scope: !4053)
!4069 = !DILocalVariable(name: "__tail", arg: 4, scope: !4053, file: !836, line: 290, type: !880)
!4070 = !DILocation(line: 291, column: 36, scope: !4053)
!4071 = !DILocation(line: 291, column: 4, scope: !4053)
!4072 = !DILocation(line: 293, column: 2, scope: !4053)
!4073 = !DILocation(line: 292, column: 31, scope: !4053)
!4074 = !DILocation(line: 292, column: 4, scope: !4053)
!4075 = !DILocation(line: 293, column: 4, scope: !4053)
!4076 = !DILocation(line: 293, column: 4, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4053, file: !836, line: 293, column: 2)
!4078 = distinct !DISubprogram(name: "_Tuple_impl<int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, void>", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRiJRS5_EvEEOT_DpOT0_", scope: !960, file: !836, line: 290, type: !4079, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4082, declaration: !4081, retainedNodes: !185)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !986, !952, !880}
!4081 = !DISubprogram(name: "_Tuple_impl<int &, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &, void>", scope: !960, file: !836, line: 290, type: !4079, scopeLine: 290, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !4082)
!4082 = !{!4058, !4083, !4061}
!4083 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UTail", value: !4084)
!4084 = !{!2406}
!4085 = !DILocalVariable(name: "this", arg: 1, scope: !4078, type: !4086, flags: DIFlagArtificial | DIFlagObjectPointer)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!4087 = !DILocation(line: 0, scope: !4078)
!4088 = !DILocalVariable(name: "__head", arg: 2, scope: !4078, file: !836, line: 290, type: !952)
!4089 = !DILocation(line: 290, column: 23, scope: !4078)
!4090 = !DILocalVariable(name: "__tail", arg: 3, scope: !4078, file: !836, line: 290, type: !880)
!4091 = !DILocation(line: 290, column: 43, scope: !4078)
!4092 = !DILocation(line: 291, column: 36, scope: !4078)
!4093 = !DILocation(line: 291, column: 4, scope: !4078)
!4094 = !DILocation(line: 293, column: 2, scope: !4078)
!4095 = !DILocation(line: 292, column: 31, scope: !4078)
!4096 = !DILocation(line: 292, column: 4, scope: !4078)
!4097 = !DILocation(line: 293, column: 4, scope: !4078)
!4098 = !DILocation(line: 293, column: 4, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4078, file: !836, line: 293, column: 2)
!4100 = distinct !DISubprogram(name: "_Head_base<int &>", linkageName: "_ZNSt10_Head_baseILm0EiLb0EEC2IRiEEOT_", scope: !1007, file: !836, line: 199, type: !4101, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4104, declaration: !4103, retainedNodes: !185)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !1013, !952}
!4103 = !DISubprogram(name: "_Head_base<int &>", scope: !1007, file: !836, line: 199, type: !4101, scopeLine: 199, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4104)
!4104 = !{!4058}
!4105 = !DILocalVariable(name: "this", arg: 1, scope: !4100, type: !4106, flags: DIFlagArtificial | DIFlagObjectPointer)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!4107 = !DILocation(line: 0, scope: !4100)
!4108 = !DILocalVariable(name: "__h", arg: 2, scope: !4100, file: !836, line: 199, type: !952)
!4109 = !DILocation(line: 199, column: 39, scope: !4100)
!4110 = !DILocation(line: 200, column: 4, scope: !4100)
!4111 = !DILocation(line: 200, column: 38, scope: !4100)
!4112 = !DILocation(line: 200, column: 17, scope: !4100)
!4113 = !DILocation(line: 200, column: 46, scope: !4100)
!4114 = distinct !DISubprogram(name: "~_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev", scope: !960, file: !836, line: 258, type: !984, scopeLine: 258, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4115, retainedNodes: !185)
!4115 = !DISubprogram(name: "~_Tuple_impl", scope: !960, type: !984, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4116 = !DILocalVariable(name: "this", arg: 1, scope: !4114, type: !4086, flags: DIFlagArtificial | DIFlagObjectPointer)
!4117 = !DILocation(line: 0, scope: !4114)
!4118 = !DILocation(line: 258, column: 12, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4114, file: !836, line: 258, column: 12)
!4120 = !DILocation(line: 258, column: 12, scope: !4114)
!4121 = distinct !DISubprogram(name: "_Tuple_impl<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_", scope: !889, file: !836, line: 440, type: !4122, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4125, declaration: !4124, retainedNodes: !185)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !904, !880}
!4124 = !DISubprogram(name: "_Tuple_impl<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !889, file: !836, line: 440, type: !4122, scopeLine: 440, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !4125)
!4125 = !{!4126}
!4126 = !DITemplateTypeParameter(name: "_UHead", type: !880)
!4127 = !DILocalVariable(name: "this", arg: 1, scope: !4121, type: !4128, flags: DIFlagArtificial | DIFlagObjectPointer)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!4129 = !DILocation(line: 0, scope: !4121)
!4130 = !DILocalVariable(name: "__head", arg: 2, scope: !4121, file: !836, line: 440, type: !880)
!4131 = !DILocation(line: 440, column: 23, scope: !4121)
!4132 = !DILocation(line: 441, column: 31, scope: !4121)
!4133 = !DILocation(line: 441, column: 4, scope: !4121)
!4134 = !DILocation(line: 442, column: 4, scope: !4121)
!4135 = distinct !DISubprogram(name: "_Head_base<int &>", linkageName: "_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_", scope: !925, file: !836, line: 199, type: !4136, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4104, declaration: !4138, retainedNodes: !185)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !931, !952}
!4138 = !DISubprogram(name: "_Head_base<int &>", scope: !925, file: !836, line: 199, type: !4136, scopeLine: 199, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4104)
!4139 = !DILocalVariable(name: "this", arg: 1, scope: !4135, type: !4140, flags: DIFlagArtificial | DIFlagObjectPointer)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!4141 = !DILocation(line: 0, scope: !4135)
!4142 = !DILocalVariable(name: "__h", arg: 2, scope: !4135, file: !836, line: 199, type: !952)
!4143 = !DILocation(line: 199, column: 39, scope: !4135)
!4144 = !DILocation(line: 200, column: 4, scope: !4135)
!4145 = !DILocation(line: 200, column: 38, scope: !4135)
!4146 = !DILocation(line: 200, column: 17, scope: !4135)
!4147 = !DILocation(line: 200, column: 46, scope: !4135)
!4148 = distinct !DISubprogram(name: "~_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm2EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev", scope: !889, file: !836, line: 416, type: !902, scopeLine: 416, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4149, retainedNodes: !185)
!4149 = !DISubprogram(name: "~_Tuple_impl", scope: !889, type: !902, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4150 = !DILocalVariable(name: "this", arg: 1, scope: !4148, type: !4128, flags: DIFlagArtificial | DIFlagObjectPointer)
!4151 = !DILocation(line: 0, scope: !4148)
!4152 = !DILocation(line: 416, column: 12, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !836, line: 416, column: 12)
!4154 = !DILocation(line: 416, column: 12, scope: !4148)
!4155 = distinct !DISubprogram(name: "_Head_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", linkageName: "_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IRS5_EEOT_", scope: !835, file: !836, line: 199, type: !4156, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4125, declaration: !4158, retainedNodes: !185)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !842, !880}
!4158 = !DISubprogram(name: "_Head_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > &>", scope: !835, file: !836, line: 199, type: !4156, scopeLine: 199, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4125)
!4159 = !DILocalVariable(name: "this", arg: 1, scope: !4155, type: !4160, flags: DIFlagArtificial | DIFlagObjectPointer)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!4161 = !DILocation(line: 0, scope: !4155)
!4162 = !DILocalVariable(name: "__h", arg: 2, scope: !4155, file: !836, line: 199, type: !880)
!4163 = !DILocation(line: 199, column: 39, scope: !4155)
!4164 = !DILocation(line: 200, column: 4, scope: !4155)
!4165 = !DILocation(line: 200, column: 38, scope: !4155)
!4166 = !DILocation(line: 200, column: 46, scope: !4155)
!4167 = distinct !DISubprogram(name: "~_Head_base", linkageName: "_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev", scope: !835, file: !836, line: 74, type: !840, scopeLine: 74, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4168, retainedNodes: !185)
!4168 = !DISubprogram(name: "~_Head_base", scope: !835, type: !840, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4169 = !DILocalVariable(name: "this", arg: 1, scope: !4167, type: !4160, flags: DIFlagArtificial | DIFlagObjectPointer)
!4170 = !DILocation(line: 0, scope: !4167)
!4171 = !DILocation(line: 74, column: 12, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4167, file: !836, line: 74, column: 12)
!4173 = !DILocation(line: 74, column: 12, scope: !4167)
!4174 = distinct !DISubprogram(name: "find", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_", scope: !654, file: !36, line: 2534, type: !4175, scopeLine: 2535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4182, retainedNodes: !185)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!653, !4177, !4179}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!4179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4181)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_type", scope: !654, file: !36, line: 536, baseType: !726, flags: DIFlagPublic)
!4182 = !DISubprogram(name: "find", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_", scope: !654, file: !36, line: 1263, type: !4175, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4183 = !DILocalVariable(name: "this", arg: 1, scope: !4174, type: !4184, flags: DIFlagArtificial | DIFlagObjectPointer)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4185 = !DILocation(line: 0, scope: !4174)
!4186 = !DILocalVariable(name: "__k", arg: 2, scope: !4174, file: !36, line: 1263, type: !4179)
!4187 = !DILocation(line: 1263, column: 28, scope: !4174)
!4188 = !DILocalVariable(name: "__j", scope: !4174, file: !36, line: 2536, type: !653)
!4189 = !DILocation(line: 2536, column: 22, scope: !4174)
!4190 = !DILocation(line: 2536, column: 43, scope: !4174)
!4191 = !DILocation(line: 2536, column: 55, scope: !4174)
!4192 = !DILocation(line: 2536, column: 65, scope: !4174)
!4193 = !DILocation(line: 2536, column: 28, scope: !4174)
!4194 = !DILocation(line: 2537, column: 22, scope: !4174)
!4195 = !DILocation(line: 2537, column: 19, scope: !4174)
!4196 = !DILocation(line: 2538, column: 8, scope: !4174)
!4197 = !DILocation(line: 2538, column: 11, scope: !4174)
!4198 = !DILocation(line: 2538, column: 19, scope: !4174)
!4199 = !DILocation(line: 2538, column: 34, scope: !4174)
!4200 = !DILocation(line: 2539, column: 17, scope: !4174)
!4201 = !DILocation(line: 2539, column: 6, scope: !4174)
!4202 = !DILocation(line: 2537, column: 14, scope: !4174)
!4203 = !DILocation(line: 2539, column: 30, scope: !4174)
!4204 = !DILocation(line: 2539, column: 38, scope: !4174)
!4205 = !DILocation(line: 2537, column: 7, scope: !4174)
!4206 = distinct !DISubprogram(name: "_M_lower_bound", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_", scope: !654, file: !36, line: 1917, type: !4207, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4210, retainedNodes: !185)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!653, !4177, !785, !4209, !846}
!4209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Const_Base_ptr", file: !36, line: 434, baseType: !676, flags: DIFlagProtected)
!4210 = !DISubprogram(name: "_M_lower_bound", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_", scope: !654, file: !36, line: 912, type: !4207, scopeLine: 912, flags: DIFlagPrototyped, spFlags: 0)
!4211 = !DILocalVariable(name: "this", arg: 1, scope: !4206, type: !4184, flags: DIFlagArtificial | DIFlagObjectPointer)
!4212 = !DILocation(line: 0, scope: !4206)
!4213 = !DILocalVariable(name: "__x", arg: 2, scope: !4206, file: !36, line: 912, type: !785)
!4214 = !DILocation(line: 912, column: 39, scope: !4206)
!4215 = !DILocalVariable(name: "__y", arg: 3, scope: !4206, file: !36, line: 912, type: !4209)
!4216 = !DILocation(line: 912, column: 60, scope: !4206)
!4217 = !DILocalVariable(name: "__k", arg: 4, scope: !4206, file: !36, line: 913, type: !846)
!4218 = !DILocation(line: 913, column: 20, scope: !4206)
!4219 = !DILocation(line: 1920, column: 7, scope: !4206)
!4220 = !DILocation(line: 1920, column: 14, scope: !4206)
!4221 = !DILocation(line: 1920, column: 18, scope: !4206)
!4222 = !DILocation(line: 1921, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4206, file: !36, line: 1921, column: 6)
!4224 = !DILocation(line: 1921, column: 15, scope: !4223)
!4225 = !DILocation(line: 1921, column: 37, scope: !4223)
!4226 = !DILocation(line: 1921, column: 30, scope: !4223)
!4227 = !DILocation(line: 1921, column: 43, scope: !4223)
!4228 = !DILocation(line: 1921, column: 6, scope: !4206)
!4229 = !DILocation(line: 1922, column: 10, scope: !4223)
!4230 = !DILocation(line: 1922, column: 8, scope: !4223)
!4231 = !DILocation(line: 1922, column: 29, scope: !4223)
!4232 = !DILocation(line: 1922, column: 21, scope: !4223)
!4233 = !DILocation(line: 1922, column: 19, scope: !4223)
!4234 = !DILocation(line: 1922, column: 4, scope: !4223)
!4235 = !DILocation(line: 1924, column: 19, scope: !4223)
!4236 = !DILocation(line: 1924, column: 10, scope: !4223)
!4237 = !DILocation(line: 1924, column: 8, scope: !4223)
!4238 = distinct !{!4238, !4219, !4239, !2747}
!4239 = !DILocation(line: 1924, column: 22, scope: !4206)
!4240 = !DILocation(line: 1925, column: 29, scope: !4206)
!4241 = !DILocation(line: 1925, column: 14, scope: !4206)
!4242 = !DILocation(line: 1925, column: 7, scope: !4206)
!4243 = distinct !DISubprogram(name: "_M_begin", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv", scope: !654, file: !36, line: 742, type: !4244, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4246, retainedNodes: !185)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!785, !4177}
!4246 = !DISubprogram(name: "_M_begin", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv", scope: !654, file: !36, line: 742, type: !4244, scopeLine: 742, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!4247 = !DILocalVariable(name: "this", arg: 1, scope: !4243, type: !4184, flags: DIFlagArtificial | DIFlagObjectPointer)
!4248 = !DILocation(line: 0, scope: !4243)
!4249 = !DILocation(line: 745, column: 11, scope: !4243)
!4250 = !DILocation(line: 745, column: 5, scope: !4243)
!4251 = !DILocation(line: 745, column: 19, scope: !4243)
!4252 = !DILocation(line: 745, column: 29, scope: !4243)
!4253 = !DILocation(line: 744, column: 2, scope: !4243)
!4254 = distinct !DISubprogram(name: "_M_end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv", scope: !654, file: !36, line: 753, type: !4255, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4257, retainedNodes: !185)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!4209, !4177}
!4257 = !DISubprogram(name: "_M_end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv", scope: !654, file: !36, line: 753, type: !4255, scopeLine: 753, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!4258 = !DILocalVariable(name: "this", arg: 1, scope: !4254, type: !4184, flags: DIFlagArtificial | DIFlagObjectPointer)
!4259 = !DILocation(line: 0, scope: !4254)
!4260 = !DILocation(line: 754, column: 23, scope: !4254)
!4261 = !DILocation(line: 754, column: 17, scope: !4254)
!4262 = !DILocation(line: 754, column: 31, scope: !4254)
!4263 = !DILocation(line: 754, column: 9, scope: !4254)
!4264 = distinct !DISubprogram(name: "operator==", linkageName: "_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEESB_", scope: !37, file: !36, line: 396, type: !2683, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !185)
!4265 = !DILocalVariable(name: "__x", arg: 1, scope: !4264, file: !36, line: 396, type: !2685)
!4266 = !DILocation(line: 396, column: 31, scope: !4264)
!4267 = !DILocalVariable(name: "__y", arg: 2, scope: !4264, file: !36, line: 396, type: !2685)
!4268 = !DILocation(line: 396, column: 49, scope: !4264)
!4269 = !DILocation(line: 397, column: 16, scope: !4264)
!4270 = !DILocation(line: 397, column: 20, scope: !4264)
!4271 = !DILocation(line: 397, column: 31, scope: !4264)
!4272 = !DILocation(line: 397, column: 35, scope: !4264)
!4273 = !DILocation(line: 397, column: 28, scope: !4264)
!4274 = !DILocation(line: 397, column: 9, scope: !4264)
!4275 = distinct !DISubprogram(name: "end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv", scope: !654, file: !36, line: 1007, type: !4276, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4278, retainedNodes: !185)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!653, !4177}
!4278 = !DISubprogram(name: "end", linkageName: "_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv", scope: !654, file: !36, line: 1007, type: !4276, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4279 = !DILocalVariable(name: "this", arg: 1, scope: !4275, type: !4184, flags: DIFlagArtificial | DIFlagObjectPointer)
!4280 = !DILocation(line: 0, scope: !4275)
!4281 = !DILocation(line: 1008, column: 38, scope: !4275)
!4282 = !DILocation(line: 1008, column: 32, scope: !4275)
!4283 = !DILocation(line: 1008, column: 46, scope: !4275)
!4284 = !DILocation(line: 1008, column: 16, scope: !4275)
!4285 = !DILocation(line: 1008, column: 9, scope: !4275)
!4286 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_", scope: !4288, file: !4287, line: 399, type: !4297, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4296, retainedNodes: !185)
!4287 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_function.h", directory: "", checksumkind: CSK_MD5, checksum: "42c8c895e947368df44a306d292f341c")
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "less<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !4287, line: 395, size: 8, flags: DIFlagTypePassByValue, elements: !4289, templateParams: !4301, identifier: "_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE")
!4289 = !{!4290, !4296}
!4290 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4288, baseType: !4291, extraData: i32 0)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "binary_function<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool>", scope: !37, file: !4287, line: 131, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !4292, identifier: "_ZTSSt15binary_functionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_bE")
!4292 = !{!4293, !4294, !4295}
!4293 = !DITemplateTypeParameter(name: "_Arg1", type: !726)
!4294 = !DITemplateTypeParameter(name: "_Arg2", type: !726)
!4295 = !DITemplateTypeParameter(name: "_Result", type: !178)
!4296 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_", scope: !4288, file: !4287, line: 399, type: !4297, scopeLine: 399, flags: DIFlagPrototyped, spFlags: 0)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!178, !4299, !846, !846}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4301 = !{!4302}
!4302 = !DITemplateTypeParameter(name: "_Tp", type: !726)
!4303 = !DILocalVariable(name: "this", arg: 1, scope: !4286, type: !4304, flags: DIFlagArtificial | DIFlagObjectPointer)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4305 = !DILocation(line: 0, scope: !4286)
!4306 = !DILocalVariable(name: "__x", arg: 2, scope: !4286, file: !4287, line: 399, type: !846)
!4307 = !DILocation(line: 399, column: 29, scope: !4286)
!4308 = !DILocalVariable(name: "__y", arg: 3, scope: !4286, file: !4287, line: 399, type: !846)
!4309 = !DILocation(line: 399, column: 45, scope: !4286)
!4310 = !DILocation(line: 400, column: 16, scope: !4286)
!4311 = !DILocation(line: 400, column: 22, scope: !4286)
!4312 = !DILocation(line: 400, column: 20, scope: !4286)
!4313 = !DILocation(line: 400, column: 9, scope: !4286)
!4314 = distinct !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 795, type: !4315, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4317, retainedNodes: !185)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!846, !4209}
!4317 = !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 795, type: !4315, scopeLine: 795, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4318 = !DILocalVariable(name: "__x", arg: 1, scope: !4314, file: !36, line: 795, type: !4209)
!4319 = !DILocation(line: 795, column: 30, scope: !4314)
!4320 = !DILocation(line: 796, column: 53, scope: !4314)
!4321 = !DILocation(line: 796, column: 16, scope: !4314)
!4322 = !DILocation(line: 796, column: 9, scope: !4314)
!4323 = distinct !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E", scope: !654, file: !36, line: 757, type: !4324, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4326, retainedNodes: !185)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!846, !785}
!4326 = !DISubprogram(name: "_S_key", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E", scope: !654, file: !36, line: 757, type: !4324, scopeLine: 757, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4327 = !DILocalVariable(name: "__x", arg: 1, scope: !4323, file: !36, line: 757, type: !785)
!4328 = !DILocation(line: 757, column: 31, scope: !4323)
!4329 = !DILocation(line: 775, column: 24, scope: !4323)
!4330 = !DILocation(line: 775, column: 29, scope: !4323)
!4331 = !DILocation(line: 775, column: 9, scope: !4323)
!4332 = !DILocation(line: 775, column: 2, scope: !4323)
!4333 = distinct !DISubprogram(name: "_S_left", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 783, type: !4334, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4336, retainedNodes: !185)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!785, !4209}
!4336 = !DISubprogram(name: "_S_left", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 783, type: !4334, scopeLine: 783, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4337 = !DILocalVariable(name: "__x", arg: 1, scope: !4333, file: !36, line: 783, type: !4209)
!4338 = !DILocation(line: 783, column: 31, scope: !4333)
!4339 = !DILocation(line: 784, column: 46, scope: !4333)
!4340 = !DILocation(line: 784, column: 51, scope: !4333)
!4341 = !DILocation(line: 784, column: 9, scope: !4333)
!4342 = distinct !DISubprogram(name: "_S_right", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 791, type: !4334, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4343, retainedNodes: !185)
!4343 = !DISubprogram(name: "_S_right", linkageName: "_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base", scope: !654, file: !36, line: 791, type: !4334, scopeLine: 791, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4344 = !DILocalVariable(name: "__x", arg: 1, scope: !4342, file: !36, line: 791, type: !4209)
!4345 = !DILocation(line: 791, column: 32, scope: !4342)
!4346 = !DILocation(line: 792, column: 46, scope: !4342)
!4347 = !DILocation(line: 792, column: 51, scope: !4342)
!4348 = !DILocation(line: 792, column: 9, scope: !4342)
!4349 = distinct !DISubprogram(name: "_Rb_tree_const_iterator", linkageName: "_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC2EPKSt18_Rb_tree_node_base", scope: !655, file: !36, line: 347, type: !683, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !682, retainedNodes: !185)
!4350 = !DILocalVariable(name: "this", arg: 1, scope: !4349, type: !4351, flags: DIFlagArtificial | DIFlagObjectPointer)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!4352 = !DILocation(line: 0, scope: !4349)
!4353 = !DILocalVariable(name: "__x", arg: 2, scope: !4349, file: !36, line: 347, type: !658)
!4354 = !DILocation(line: 347, column: 41, scope: !4349)
!4355 = !DILocation(line: 348, column: 9, scope: !4349)
!4356 = !DILocation(line: 348, column: 17, scope: !4349)
!4357 = !DILocation(line: 348, column: 24, scope: !4349)
!4358 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERKS8_", scope: !4359, file: !4287, line: 1174, type: !4374, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !4373, retainedNodes: !185)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Select1st<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >", scope: !37, file: !4287, line: 1166, size: 8, flags: DIFlagTypePassByValue, elements: !4360, templateParams: !4378, identifier: "_ZTSSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE")
!4360 = !{!4361, !4366, !4373}
!4361 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !4359, baseType: !4362, extraData: i32 0)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unary_function<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !37, file: !4287, line: 117, size: 8, flags: DIFlagTypePassByValue, elements: !185, templateParams: !4363, identifier: "_ZTSSt14unary_functionISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_E")
!4363 = !{!4364, !4365}
!4364 = !DITemplateTypeParameter(name: "_Arg", type: !703)
!4365 = !DITemplateTypeParameter(name: "_Result", type: !725)
!4366 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERS8_", scope: !4359, file: !4287, line: 1170, type: !4367, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: 0)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!4369, !4371, !743}
!4369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "first_type", scope: !703, file: !704, line: 214, baseType: !725)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4359)
!4373 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEclERKS8_", scope: !4359, file: !4287, line: 1174, type: !4374, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: 0)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!4376, !4371, !701}
!4376 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4378 = !{!4379}
!4379 = !DITemplateTypeParameter(name: "_Pair", type: !703)
!4380 = !DILocalVariable(name: "this", arg: 1, scope: !4358, type: !4381, flags: DIFlagArtificial | DIFlagObjectPointer)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4382 = !DILocation(line: 0, scope: !4358)
!4383 = !DILocalVariable(name: "__x", arg: 2, scope: !4358, file: !4287, line: 1174, type: !701)
!4384 = !DILocation(line: 1174, column: 31, scope: !4358)
!4385 = !DILocation(line: 1175, column: 16, scope: !4358)
!4386 = !DILocation(line: 1175, column: 20, scope: !4358)
!4387 = !DILocation(line: 1175, column: 9, scope: !4358)
!4388 = distinct !DISubprogram(name: "_M_valptr", linkageName: "_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE9_M_valptrEv", scope: !788, file: !36, line: 238, type: !829, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !828, retainedNodes: !185)
!4389 = !DILocalVariable(name: "this", arg: 1, scope: !4388, type: !786, flags: DIFlagArtificial | DIFlagObjectPointer)
!4390 = !DILocation(line: 0, scope: !4388)
!4391 = !DILocation(line: 239, column: 16, scope: !4388)
!4392 = !DILocation(line: 239, column: 27, scope: !4388)
!4393 = !DILocation(line: 239, column: 9, scope: !4388)
!4394 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE6_M_ptrEv", scope: !792, file: !793, line: 76, type: !822, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !821, retainedNodes: !185)
!4395 = !DILocalVariable(name: "this", arg: 1, scope: !4394, type: !4396, flags: DIFlagArtificial | DIFlagObjectPointer)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!4397 = !DILocation(line: 0, scope: !4394)
!4398 = !DILocation(line: 77, column: 40, scope: !4394)
!4399 = !DILocation(line: 77, column: 9, scope: !4394)
!4400 = distinct !DISubprogram(name: "_M_addr", linkageName: "_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE7_M_addrEv", scope: !792, file: !793, line: 68, type: !813, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, declaration: !812, retainedNodes: !185)
!4401 = !DILocalVariable(name: "this", arg: 1, scope: !4400, type: !4396, flags: DIFlagArtificial | DIFlagObjectPointer)
!4402 = !DILocation(line: 0, scope: !4400)
!4403 = !DILocation(line: 69, column: 42, scope: !4400)
!4404 = !DILocation(line: 69, column: 9, scope: !4400)
!4405 = distinct !DISubprogram(name: "operator<<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_", scope: !37, file: !21, line: 6340, type: !4406, scopeLine: 6343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, templateParams: !4408, retainedNodes: !185)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!178, !846, !846}
!4408 = !{!1193, !4409, !4461}
!4409 = !DITemplateTypeParameter(name: "_Traits", type: !4410)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !37, file: !4411, line: 344, size: 8, flags: DIFlagTypePassByValue, elements: !4412, templateParams: !4460, identifier: "_ZTSSt11char_traitsIcE")
!4411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/char_traits.h", directory: "")
!4412 = !{!4413, !4420, !4423, !4424, !4428, !4431, !4434, !4438, !4439, !4442, !4448, !4451, !4454, !4457}
!4413 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !4410, file: !4411, line: 356, type: !4414, scopeLine: 356, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4416, !4418}
!4416 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !4410, file: !4411, line: 346, baseType: !5)
!4418 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4417)
!4420 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !4410, file: !4411, line: 360, type: !4421, scopeLine: 360, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!178, !4418, !4418}
!4423 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !4410, file: !4411, line: 364, type: !4421, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4424 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !4410, file: !4411, line: 372, type: !4425, scopeLine: 372, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!432, !4427, !4427, !42}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4428 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !4410, file: !4411, line: 393, type: !4429, scopeLine: 393, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!42, !4427}
!4431 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !4410, file: !4411, line: 403, type: !4432, scopeLine: 403, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!4427, !4427, !42, !4418}
!4434 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !4410, file: !4411, line: 417, type: !4435, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!4437, !4437, !4427, !42}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4438 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !4410, file: !4411, line: 429, type: !4435, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4439 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !4410, file: !4411, line: 441, type: !4440, scopeLine: 441, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!4437, !4437, !42, !4417}
!4442 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !4410, file: !4411, line: 453, type: !4443, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4417, !4445}
!4445 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4447)
!4447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !4410, file: !4411, line: 347, baseType: !432)
!4448 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !4410, file: !4411, line: 459, type: !4449, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4447, !4418}
!4451 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !4410, file: !4411, line: 463, type: !4452, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!178, !4445, !4445}
!4454 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !4410, file: !4411, line: 467, type: !4455, scopeLine: 467, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!4447}
!4457 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !4410, file: !4411, line: 471, type: !4458, scopeLine: 471, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!4447, !4445}
!4460 = !{!1193}
!4461 = !DITemplateTypeParameter(name: "_Alloc", type: !4462)
!4462 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !37, file: !90, line: 261, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIcE")
!4463 = !DILocalVariable(name: "__lhs", arg: 1, scope: !4405, file: !21, line: 6340, type: !846)
!4464 = !DILocation(line: 6340, column: 60, scope: !4405)
!4465 = !DILocalVariable(name: "__rhs", arg: 2, scope: !4405, file: !21, line: 6341, type: !846)
!4466 = !DILocation(line: 6341, column: 53, scope: !4405)
!4467 = !DILocation(line: 6343, column: 14, scope: !4405)
!4468 = !DILocation(line: 6343, column: 28, scope: !4405)
!4469 = !DILocation(line: 6343, column: 20, scope: !4405)
!4470 = !DILocation(line: 6343, column: 35, scope: !4405)
!4471 = !DILocation(line: 6343, column: 7, scope: !4405)
