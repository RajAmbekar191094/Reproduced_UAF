; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/test/api_static_cube/static_cube.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/test/api_static_cube/static_cube.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.ISG::BaseMesh" = type <{ %"class.ISG::Node", ptr, ptr, ptr, i32, [4 x i8] }>
%"class.ISG::Node" = type { ptr, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ISG::GroupNode" = type { %"class.ISG::Node", %"class.std::vector" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"struct.ISG::DataArray" = type <{ %"class.ISG::Node", i32, i32, i32, i32, ptr, i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator.0" = type { ptr }
%"class.RTTL::RTVec_t" = type { float, float, float, float }
%"class.RTTL::RTVec_t.1" = type { float, float, float }

$_Z14rtTriangleMeshPN3ISG4NodeE = comdat any

$_Z15rtNewCoordArrayPN3ISG4NodeENS_10DataFormatE = comdat any

$_Z11rtValidDataPN3ISG9DataArrayE = comdat any

$_Z10rtCoords3fPN3ISG9DataArrayEPKfi14DataArrayFlags = comdat any

$_Z15rtNewIndexArrayPN3ISG4NodeENS_10DataFormatE = comdat any

$_Z11rtIndices3iPN3ISG9DataArrayEPKii14DataArrayFlags = comdat any

$_Z6rtInitPiPPc = comdat any

$_Z9rtNewRoot15newroot_flags_t = comdat any

$_Z13rtEndGeometryv = comdat any

$__clang_call_terminate = comdat any

$_ZN5sse_fC2Ev = comdat any

$_Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE = comdat any

$_ZN3ISG8BaseMeshC2EPNS_4NodeENS_8MeshTypeE = comdat any

$_ZN3ISG9GroupNode8addChildEPNS_4NodeE = comdat any

$_ZN3ISG4NodeC2EPS0_ = comdat any

$_ZN3ISG8BaseMeshD2Ev = comdat any

$_ZN3ISG8BaseMeshD0Ev = comdat any

$_ZN3ISG4Node15childWasChangedEPS0_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev = comdat any

$_ZN3ISG4Node9addParentEPS0_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev = comdat any

$_ZN3ISG4NodeD2Ev = comdat any

$_ZN3ISG4NodeD0Ev = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIPN3ISG4NodeEEC2Ev = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEEC2Ev = comdat any

$_ZN9__gnu_cxxeqIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_ = comdat any

$_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN3ISG4NodeEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_ = comdat any

$_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEC2ERS5_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_ = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8allocateEmPKv = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPPN3ISG4NodeES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN3ISG4NodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE10deallocateEPS3_m = comdat any

$_ZSt8_DestroyIPPN3ISG4NodeES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPPN3ISG4NodeEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ISG4NodeEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implD2Ev = comdat any

$_ZNSaIPN3ISG4NodeEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEED2Ev = comdat any

$_ZN3ISG4Node11markAsDirtyEv = comdat any

$_ZN3ISG4Node13markedAsDirtyEv = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EEixEm = comdat any

$_ZN3ISG9DataArrayC2EPNS_4NodeENS_12SemanticTypeENS_10DataFormatE = comdat any

$_ZN3ISG8BaseMesh9setCoordsEPNS_9DataArrayE = comdat any

$_ZN3ISG9DataArrayD2Ev = comdat any

$_ZN3ISG9DataArrayD0Ev = comdat any

$_ZN3ISG9DataArray5clearEv = comdat any

$_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_ = comdat any

$_ZN3ISG4Node12removeParentEPS0_ = comdat any

$_ZN9__gnu_cxxneIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_ = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2IPS3_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISC_SB_EE7__valueES8_E6__typeEEE = comdat any

$_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl = comdat any

$_ZN9__gnu_cxxmiIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6cbeginEv = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_ = comdat any

$_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE7destroyIS2_EEvRS3_PT_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET1_T0_SB_SA_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEET_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES5_ET_SA_T0_ = comdat any

$_ZSt14__copy_move_a1ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ISG4NodeEEEPT_PKS6_S9_S7_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7destroyIS3_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS5_ = comdat any

$_Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags = comdat any

$_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE = comdat any

$_ZN4RTTL7RTVec_tILi3EfLi0EEcvRNS_8RTData_tILi3EfLi0EEEEv = comdat any

$_ZNK4RTTL7RTVec_tILi3EfLi0EEcvRKNS_8RTData_tILi3EfLi0EEEEv = comdat any

$_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv = comdat any

$_ZN3ISG8BaseMesh10setIndicesEPNS_9DataArrayE = comdat any

$_ZN3ISG8RootNodeC2Ev = comdat any

$_ZN3ISG9GroupNodeC2Ev = comdat any

$_ZN3ISG8RootNodeD2Ev = comdat any

$_ZN3ISG8RootNodeD0Ev = comdat any

$_ZN3ISG4NodeC2Ev = comdat any

$_ZN3ISG9GroupNodeD2Ev = comdat any

$_ZN3ISG9GroupNodeD0Ev = comdat any

$_ZTSN3ISG4NodeE = comdat any

$_ZTIN3ISG4NodeE = comdat any

$_ZTSN3ISG9GroupNodeE = comdat any

$_ZTIN3ISG9GroupNodeE = comdat any

$_ZTVN3ISG8BaseMeshE = comdat any

$_ZTSN3ISG8BaseMeshE = comdat any

$_ZTIN3ISG8BaseMeshE = comdat any

$_ZTVN3ISG4NodeE = comdat any

$_ZTVN3ISG9DataArrayE = comdat any

$_ZTSN3ISG9DataArrayE = comdat any

$_ZTIN3ISG9DataArrayE = comdat any

$_ZTVN3ISG8RootNodeE = comdat any

$_ZTSN3ISG8RootNodeE = comdat any

$_ZTIN3ISG8RootNodeE = comdat any

$_ZTVN3ISG9GroupNodeE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@frameBuffer = dso_local global ptr null, align 8, !dbg !850
@camera = dso_local global ptr null, align 8, !dbg !855
@context = dso_local global ptr null, align 8, !dbg !858
@cube_vertex = dso_local global [8 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16, !dbg !861
@cube_tris = dso_local global [12 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 3], [3 x i32] [i32 0, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 7], [3 x i32] [i32 4, i32 6, i32 7], [3 x i32] [i32 0, i32 1, i32 5], [3 x i32] [i32 0, i32 4, i32 5], [3 x i32] [i32 2, i32 3, i32 7], [3 x i32] [i32 2, i32 6, i32 7], [3 x i32] [i32 0, i32 2, i32 6], [3 x i32] [i32 0, i32 4, i32 6], [3 x i32] [i32 1, i32 3, i32 7], [3 x i32] [i32 1, i32 5, i32 7]], align 16, !dbg !866
@.str = private unnamed_addr constant [26 x i8] c"rtValidData(vertex_array)\00", align 1, !dbg !871
@.str.2 = private unnamed_addr constant [106 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/test/api_static_cube/static_cube.cxx\00", align 1, !dbg !876
@__PRETTY_FUNCTION__._Z10createCubePN3ISG4NodeE = private unnamed_addr constant [26 x i8] c"mesh_t createCube(node_t)\00", align 1, !dbg !881
@.str.3 = private unnamed_addr constant [25 x i8] c"rtValidData(index_array)\00", align 1, !dbg !883
@.str.4 = private unnamed_addr constant [29 x i8] c"static cube in a glut window\00", align 1, !dbg !888
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"entering glut main loop \00", align 1, !dbg !893
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"ERROR: some kind of error has occurred in testing code '\00", align 1, !dbg !895
@.str.7 = private unnamed_addr constant [7 x i8] c"parent\00", align 1, !dbg !900
@.str.8 = private unnamed_addr constant [79 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/API/rt.h\00", align 1, !dbg !905
@__PRETTY_FUNCTION__._Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE = private unnamed_addr constant [35 x i8] c"mesh_t rtNewMesh(node_t, MeshType)\00", align 1, !dbg !910
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN3ISG4NodeE = linkonce_odr dso_local constant [12 x i8] c"N3ISG4NodeE\00", comdat, align 1
@_ZTIN3ISG4NodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3ISG4NodeE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN3ISG9GroupNodeE = linkonce_odr dso_local constant [17 x i8] c"N3ISG9GroupNodeE\00", comdat, align 1
@_ZTIN3ISG9GroupNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3ISG9GroupNodeE, ptr @_ZTIN3ISG4NodeE }, comdat, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"FATAL: \00", align 1, !dbg !915
@.str.10 = private unnamed_addr constant [63 x i8] c"can only add meshes to group nodes ... at least right now ... \00", align 1, !dbg !919
@.str.11 = private unnamed_addr constant [5 x i8] c"(in \00", align 1, !dbg !924
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !929
@_ZTVN3ISG8BaseMeshE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3ISG8BaseMeshE, ptr @_ZN3ISG8BaseMeshD2Ev, ptr @_ZN3ISG8BaseMeshD0Ev, ptr @_ZN3ISG4Node15childWasChangedEPS0_] }, comdat, align 8
@_ZTSN3ISG8BaseMeshE = linkonce_odr dso_local constant [16 x i8] c"N3ISG8BaseMeshE\00", comdat, align 1
@_ZTIN3ISG8BaseMeshE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3ISG8BaseMeshE, ptr @_ZTIN3ISG4NodeE }, comdat, align 8
@_ZTVN3ISG4NodeE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3ISG4NodeE, ptr @_ZN3ISG4NodeD2Ev, ptr @_ZN3ISG4NodeD0Ev, ptr @_ZN3ISG4Node15childWasChangedEPS0_] }, comdat, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !dbg !934
@_ZN3ISG17current_timestampE = external global i32, align 4
@_ZTVN3ISG9DataArrayE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3ISG9DataArrayE, ptr @_ZN3ISG9DataArrayD2Ev, ptr @_ZN3ISG9DataArrayD0Ev, ptr @_ZN3ISG4Node15childWasChangedEPS0_] }, comdat, align 8
@_ZTSN3ISG9DataArrayE = linkonce_odr dso_local constant [17 x i8] c"N3ISG9DataArrayE\00", comdat, align 1
@_ZTIN3ISG9DataArrayE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3ISG9DataArrayE, ptr @_ZTIN3ISG4NodeE }, comdat, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"where != parent.end()\00", align 1, !dbg !937
@.str.15 = private unnamed_addr constant [82 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/API/ISG.hxx\00", align 1, !dbg !942
@__PRETTY_FUNCTION__._ZN3ISG4Node12removeParentEPS0_ = private unnamed_addr constant [37 x i8] c"void ISG::Node::removeParent(Node *)\00", align 1, !dbg !947
@.str.16 = private unnamed_addr constant [7 x i8] c"target\00", align 1, !dbg !952
@__PRETTY_FUNCTION__._Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags = private unnamed_addr constant [97 x i8] c"void rtWriteToArray(data_t, SemanticType, DataFormat, unsigned char *const, int, DataArrayFlags)\00", align 1, !dbg !954
@.str.17 = private unnamed_addr constant [6 x i8] c"array\00", align 1, !dbg !959
@.str.18 = private unnamed_addr constant [52 x i8] c"writing data of incompatible format to a data array\00", align 1, !dbg !964
@__PRETTY_FUNCTION__._ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE = private unnamed_addr constant [75 x i8] c"void ISG::DataArray::set(SemanticType, DataFormat, void *, int, OwnerType)\00", align 1, !dbg !969
@_ZN3ISGL12RTDataSizeOfE = internal constant [11 x i32] [i32 1, i32 1, i32 1, i32 4, i32 8, i32 12, i32 16, i32 4, i32 8, i32 12, i32 16], align 16, !dbg !984
@.str.19 = private unnamed_addr constant [71 x i8] c"data conversion from this source format to FLOAT4 not implemented, yet\00", align 1, !dbg !974
@.str.20 = private unnamed_addr constant [61 x i8] c"data conversion to this internal format not implemented, yet\00", align 1, !dbg !979
@.str.21 = private unnamed_addr constant [29 x i8] c"nElements() <= v.nElements()\00", align 1, !dbg !990
@.str.22 = private unnamed_addr constant [88 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTData.hxx\00", align 1, !dbg !992
@__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi3EfLi0EE6assignILi3EfLi0EEEvRKNS0_IXT_ET0_XT1_EEE = private unnamed_addr constant [191 x i8] c"void RTTL::RTData_t<3, float>::assign(const RTData_t<AnotherN, AnotherDataType, AnotherAlign> &) [N = 3, DataType = float, align = 0, AnotherN = 3, AnotherDataType = float, AnotherAlign = 0]\00", align 1, !dbg !997
@.str.23 = private unnamed_addr constant [32 x i8] c"initializing LRT ray tracer ...\00", align 1, !dbg !1002
@_ZTVN3ISG8RootNodeE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3ISG8RootNodeE, ptr @_ZN3ISG8RootNodeD2Ev, ptr @_ZN3ISG8RootNodeD0Ev, ptr @_ZN3ISG4Node15childWasChangedEPS0_] }, comdat, align 8
@_ZTSN3ISG8RootNodeE = linkonce_odr dso_local constant [16 x i8] c"N3ISG8RootNodeE\00", comdat, align 1
@_ZTIN3ISG8RootNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3ISG8RootNodeE, ptr @_ZTIN3ISG9GroupNodeE }, comdat, align 8
@_ZTVN3ISG9GroupNodeE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3ISG9GroupNodeE, ptr @_ZN3ISG9GroupNodeD2Ev, ptr @_ZN3ISG9GroupNodeD0Ev, ptr @_ZN3ISG4Node15childWasChangedEPS0_] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_static_cube.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !2324 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !2325
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !2327
  ret void, !dbg !2325
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !2328 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2329, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2336, metadata !DIExpression()), !dbg !2337
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !2337
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2338, metadata !DIExpression()), !dbg !2340
  store i32 0, ptr %3, align 4, !dbg !2340
  br label %4, !dbg !2341

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !2342
  %6 = icmp slt i32 %5, 4, !dbg !2344
  br i1 %6, label %7, label %14, !dbg !2345

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !2346
  %9 = load i32, ptr %3, align 4, !dbg !2347
  %10 = sext i32 %9 to i64, !dbg !2348
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !2348
  store float %8, ptr %11, align 4, !dbg !2349
  %12 = load i32, ptr %3, align 4, !dbg !2350
  %13 = add nsw i32 %12, 1, !dbg !2350
  store i32 %13, ptr %3, align 4, !dbg !2350
  br label %4, !dbg !2351, !llvm.loop !2352

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !2355
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !2356
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !2356
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !2356
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !2356
  ret void, !dbg !2357
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4idlev() #5 !dbg !2358 {
  call void @glutPostRedisplay(), !dbg !2359
  ret void, !dbg !2360
}

declare void @glutPostRedisplay() #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7displayv() #5 !dbg !2361 {
  %1 = load ptr, ptr @frameBuffer, align 8, !dbg !2362
  %2 = load ptr, ptr @context, align 8, !dbg !2363
  %3 = load ptr, ptr @camera, align 8, !dbg !2364
  call void @lrtRenderFrame(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2365
  %4 = load ptr, ptr @frameBuffer, align 8, !dbg !2366
  call void @lrtDisplayFB(ptr noundef %4), !dbg !2367
  call void @glutSwapBuffers(), !dbg !2368
  call void @glutPostRedisplay(), !dbg !2369
  ret void, !dbg !2370
}

declare void @lrtRenderFrame(ptr noundef, ptr noundef, ptr noundef) #1

declare void @lrtDisplayFB(ptr noundef) #1

declare void @glutSwapBuffers() #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10createCubePN3ISG4NodeE(ptr noundef %0) #5 !dbg !2371 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2378, metadata !DIExpression()), !dbg !2379
  %6 = load ptr, ptr %2, align 8, !dbg !2380
  %7 = call noundef ptr @_Z14rtTriangleMeshPN3ISG4NodeE(ptr noundef %6), !dbg !2381
  store ptr %7, ptr %3, align 8, !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2382, metadata !DIExpression()), !dbg !2384
  %8 = load ptr, ptr %3, align 8, !dbg !2385
  %9 = call noundef ptr @_Z15rtNewCoordArrayPN3ISG4NodeENS_10DataFormatE(ptr noundef %8, i32 noundef 9), !dbg !2386
  store ptr %9, ptr %4, align 8, !dbg !2384
  %10 = load ptr, ptr %4, align 8, !dbg !2387
  %11 = call noundef zeroext i1 @_Z11rtValidDataPN3ISG9DataArrayE(ptr noundef %10), !dbg !2387
  br i1 %11, label %12, label %13, !dbg !2387

12:                                               ; preds = %1
  br label %15, !dbg !2387

13:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.2, i32 noundef 75, ptr noundef @__PRETTY_FUNCTION__._Z10createCubePN3ISG4NodeE) #19, !dbg !2387
  unreachable, !dbg !2387

14:                                               ; No predecessors!
  br label %15, !dbg !2387

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %4, align 8, !dbg !2388
  call void @_Z10rtCoords3fPN3ISG9DataArrayEPKfi14DataArrayFlags(ptr noundef %16, ptr noundef @cube_vertex, i32 noundef 8, i32 noundef 0), !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2390, metadata !DIExpression()), !dbg !2391
  %17 = load ptr, ptr %3, align 8, !dbg !2392
  %18 = call noundef ptr @_Z15rtNewIndexArrayPN3ISG4NodeENS_10DataFormatE(ptr noundef %17, i32 noundef 5), !dbg !2393
  store ptr %18, ptr %5, align 8, !dbg !2391
  %19 = load ptr, ptr %5, align 8, !dbg !2394
  %20 = call noundef zeroext i1 @_Z11rtValidDataPN3ISG9DataArrayE(ptr noundef %19), !dbg !2394
  br i1 %20, label %21, label %22, !dbg !2394

21:                                               ; preds = %15
  br label %24, !dbg !2394

22:                                               ; preds = %15
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 84, ptr noundef @__PRETTY_FUNCTION__._Z10createCubePN3ISG4NodeE) #19, !dbg !2394
  unreachable, !dbg !2394

23:                                               ; No predecessors!
  br label %24, !dbg !2394

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr %5, align 8, !dbg !2395
  call void @_Z11rtIndices3iPN3ISG9DataArrayEPKii14DataArrayFlags(ptr noundef %25, ptr noundef @cube_tris, i32 noundef 12, i32 noundef 0), !dbg !2396
  %26 = load ptr, ptr %3, align 8, !dbg !2397
  ret ptr %26, !dbg !2398
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z14rtTriangleMeshPN3ISG4NodeE(ptr noundef %0) #5 comdat !dbg !2399 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2400, metadata !DIExpression()), !dbg !2401
  %3 = load ptr, ptr %2, align 8, !dbg !2402
  %4 = call noundef ptr @_Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE(ptr noundef %3, i32 noundef 0), !dbg !2403
  ret ptr %4, !dbg !2404
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z15rtNewCoordArrayPN3ISG4NodeENS_10DataFormatE(ptr noundef %0, i32 noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2405 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2408, metadata !DIExpression()), !dbg !2409
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2412, metadata !DIExpression()), !dbg !2413
  %9 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 72) #20, !dbg !2414, !heapallocsite !57
  %10 = load ptr, ptr %3, align 8, !dbg !2415
  %11 = load i32, ptr %4, align 4, !dbg !2416
  invoke void @_ZN3ISG9DataArrayC2EPNS_4NodeENS_12SemanticTypeENS_10DataFormatE(ptr noundef nonnull align 8 dereferenceable(68) %9, ptr noundef %10, i32 noundef 1, i32 noundef %11)
          to label %12 unwind label %17, !dbg !2417

12:                                               ; preds = %2
  store ptr %9, ptr %5, align 8, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2418, metadata !DIExpression()), !dbg !2419
  %13 = load ptr, ptr %3, align 8, !dbg !2420
  %14 = icmp eq ptr %13, null, !dbg !2421
  br i1 %14, label %21, label %15, !dbg !2421

15:                                               ; preds = %12
  %16 = call ptr @__dynamic_cast(ptr %13, ptr @_ZTIN3ISG4NodeE, ptr @_ZTIN3ISG8BaseMeshE, i64 0) #3, !dbg !2421
  br label %22, !dbg !2421

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !2422
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !2422
  store ptr %19, ptr %6, align 8, !dbg !2422
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !2422
  store i32 %20, ptr %7, align 4, !dbg !2422
  call void @_ZdlPv(ptr noundef %9) #21, !dbg !2414
  br label %31, !dbg !2414

21:                                               ; preds = %12
  br label %22, !dbg !2421

22:                                               ; preds = %21, %15
  %23 = phi ptr [ %16, %15 ], [ null, %21 ], !dbg !2421
  store ptr %23, ptr %8, align 8, !dbg !2419
  %24 = load ptr, ptr %8, align 8, !dbg !2423
  %25 = icmp ne ptr %24, null, !dbg !2423
  br i1 %25, label %26, label %29, !dbg !2425

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8, !dbg !2426
  %28 = load ptr, ptr %5, align 8, !dbg !2427
  call void @_ZN3ISG8BaseMesh9setCoordsEPNS_9DataArrayE(ptr noundef nonnull align 8 dereferenceable(68) %27, ptr noundef %28), !dbg !2428
  br label %29, !dbg !2426

29:                                               ; preds = %26, %22
  %30 = load ptr, ptr %5, align 8, !dbg !2429
  ret ptr %30, !dbg !2430

31:                                               ; preds = %17
  %32 = load ptr, ptr %6, align 8, !dbg !2414
  %33 = load i32, ptr %7, align 4, !dbg !2414
  %34 = insertvalue { ptr, i32 } poison, ptr %32, 0, !dbg !2414
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1, !dbg !2414
  resume { ptr, i32 } %35, !dbg !2414
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11rtValidDataPN3ISG9DataArrayE(ptr noundef %0) #7 comdat !dbg !2431 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2434, metadata !DIExpression()), !dbg !2435
  %3 = load ptr, ptr %2, align 8, !dbg !2436
  %4 = icmp ne ptr %3, null, !dbg !2437
  ret i1 %4, !dbg !2438
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z10rtCoords3fPN3ISG9DataArrayEPKfi14DataArrayFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #5 comdat !dbg !2439 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2444, metadata !DIExpression()), !dbg !2445
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2446, metadata !DIExpression()), !dbg !2447
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2448, metadata !DIExpression()), !dbg !2449
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2450, metadata !DIExpression()), !dbg !2451
  %9 = load ptr, ptr %5, align 8, !dbg !2452
  %10 = load ptr, ptr %6, align 8, !dbg !2453
  %11 = load i32, ptr %7, align 4, !dbg !2454
  %12 = load i32, ptr %8, align 4, !dbg !2455
  call void @_Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags(ptr noundef %9, i32 noundef 1, i32 noundef 9, ptr noundef %10, i32 noundef %11, i32 noundef %12), !dbg !2456
  ret void, !dbg !2457
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z15rtNewIndexArrayPN3ISG4NodeENS_10DataFormatE(ptr noundef %0, i32 noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2458 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2463, metadata !DIExpression()), !dbg !2464
  %9 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 72) #20, !dbg !2465, !heapallocsite !57
  %10 = load ptr, ptr %3, align 8, !dbg !2466
  %11 = load i32, ptr %4, align 4, !dbg !2467
  invoke void @_ZN3ISG9DataArrayC2EPNS_4NodeENS_12SemanticTypeENS_10DataFormatE(ptr noundef nonnull align 8 dereferenceable(68) %9, ptr noundef %10, i32 noundef 5, i32 noundef %11)
          to label %12 unwind label %17, !dbg !2468

12:                                               ; preds = %2
  store ptr %9, ptr %5, align 8, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2469, metadata !DIExpression()), !dbg !2470
  %13 = load ptr, ptr %3, align 8, !dbg !2471
  %14 = icmp eq ptr %13, null, !dbg !2472
  br i1 %14, label %21, label %15, !dbg !2472

15:                                               ; preds = %12
  %16 = call ptr @__dynamic_cast(ptr %13, ptr @_ZTIN3ISG4NodeE, ptr @_ZTIN3ISG8BaseMeshE, i64 0) #3, !dbg !2472
  br label %22, !dbg !2472

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !2473
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !2473
  store ptr %19, ptr %6, align 8, !dbg !2473
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !2473
  store i32 %20, ptr %7, align 4, !dbg !2473
  call void @_ZdlPv(ptr noundef %9) #21, !dbg !2465
  br label %31, !dbg !2465

21:                                               ; preds = %12
  br label %22, !dbg !2472

22:                                               ; preds = %21, %15
  %23 = phi ptr [ %16, %15 ], [ null, %21 ], !dbg !2472
  store ptr %23, ptr %8, align 8, !dbg !2470
  %24 = load ptr, ptr %8, align 8, !dbg !2474
  %25 = icmp ne ptr %24, null, !dbg !2474
  br i1 %25, label %26, label %29, !dbg !2476

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8, !dbg !2477
  %28 = load ptr, ptr %5, align 8, !dbg !2478
  call void @_ZN3ISG8BaseMesh10setIndicesEPNS_9DataArrayE(ptr noundef nonnull align 8 dereferenceable(68) %27, ptr noundef %28), !dbg !2479
  br label %29, !dbg !2477

29:                                               ; preds = %26, %22
  %30 = load ptr, ptr %5, align 8, !dbg !2480
  ret ptr %30, !dbg !2481

31:                                               ; preds = %17
  %32 = load ptr, ptr %6, align 8, !dbg !2465
  %33 = load i32, ptr %7, align 4, !dbg !2465
  %34 = insertvalue { ptr, i32 } poison, ptr %32, 0, !dbg !2465
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1, !dbg !2465
  resume { ptr, i32 } %35, !dbg !2465
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z11rtIndices3iPN3ISG9DataArrayEPKii14DataArrayFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #5 comdat !dbg !2482 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2487, metadata !DIExpression()), !dbg !2488
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2493, metadata !DIExpression()), !dbg !2494
  %9 = load ptr, ptr %5, align 8, !dbg !2495
  %10 = load ptr, ptr %6, align 8, !dbg !2496
  %11 = load i32, ptr %7, align 4, !dbg !2497
  %12 = load i32, ptr %8, align 4, !dbg !2498
  call void @_Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags(ptr noundef %9, i32 noundef 5, i32 noundef 5, ptr noundef %10, i32 noundef %11, i32 noundef %12), !dbg !2499
  ret void, !dbg !2500
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #9 personality ptr @__gxx_personality_v0 !dbg !2501 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2504, metadata !DIExpression()), !dbg !2505
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2506, metadata !DIExpression()), !dbg !2507
  %10 = load ptr, ptr %5, align 8, !dbg !2508
  invoke void @glutInit(ptr noundef %4, ptr noundef %10)
          to label %11 unwind label %41, !dbg !2510

11:                                               ; preds = %2
  invoke void @glutInitDisplayMode(i32 noundef 2)
          to label %12 unwind label %41, !dbg !2511

12:                                               ; preds = %11
  invoke void @glutInitWindowSize(i32 noundef 512, i32 noundef 512)
          to label %13 unwind label %41, !dbg !2512

13:                                               ; preds = %12
  invoke void @glutInitWindowPosition(i32 noundef 0, i32 noundef 0)
          to label %14 unwind label %41, !dbg !2513

14:                                               ; preds = %13
  %15 = invoke i32 @glutCreateWindow(ptr noundef @.str.4)
          to label %16 unwind label %41, !dbg !2514

16:                                               ; preds = %14
  invoke void @glutDisplayFunc(ptr noundef @_Z7displayv)
          to label %17 unwind label %41, !dbg !2515

17:                                               ; preds = %16
  %18 = load ptr, ptr %5, align 8, !dbg !2516
  invoke void @_Z6rtInitPiPPc(ptr noundef %4, ptr noundef %18)
          to label %19 unwind label %41, !dbg !2517

19:                                               ; preds = %17
  %20 = invoke ptr @lrtCreateTextureFB(i32 noundef 512, i32 noundef 512)
          to label %21 unwind label %41, !dbg !2518

21:                                               ; preds = %19
  store ptr %20, ptr @frameBuffer, align 8, !dbg !2519
  %22 = invoke ptr @lrtCreateCamera()
          to label %23 unwind label %41, !dbg !2520

23:                                               ; preds = %21
  store ptr %22, ptr @camera, align 8, !dbg !2521
  %24 = invoke ptr @lrtCreateContext()
          to label %25 unwind label %41, !dbg !2522

25:                                               ; preds = %23
  store ptr %24, ptr @context, align 8, !dbg !2523
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2524, metadata !DIExpression()), !dbg !2525
  %26 = invoke noundef ptr @_Z9rtNewRoot15newroot_flags_t(i32 noundef 1)
          to label %27 unwind label %41, !dbg !2526

27:                                               ; preds = %25
  store ptr %26, ptr %8, align 8, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2527, metadata !DIExpression()), !dbg !2528
  %28 = load ptr, ptr %8, align 8, !dbg !2529
  %29 = invoke noundef ptr @_Z10createCubePN3ISG4NodeE(ptr noundef %28)
          to label %30 unwind label %41, !dbg !2530

30:                                               ; preds = %27
  store ptr %29, ptr %9, align 8, !dbg !2528
  invoke void @_Z13rtEndGeometryv()
          to label %31 unwind label %41, !dbg !2531

31:                                               ; preds = %30
  %32 = load ptr, ptr @camera, align 8, !dbg !2532
  invoke void @lrtLookAt(ptr noundef %32, float noundef -4.000000e+00, float noundef -3.000000e+00, float noundef -2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 6.400000e+01, float noundef 1.000000e+00)
          to label %33 unwind label %41, !dbg !2533

33:                                               ; preds = %31
  %34 = load ptr, ptr @context, align 8, !dbg !2534
  invoke void @lrtBuildContext(ptr noundef %34)
          to label %35 unwind label %41, !dbg !2535

35:                                               ; preds = %33
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5)
          to label %37 unwind label %41, !dbg !2536

37:                                               ; preds = %35
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %39 unwind label %41, !dbg !2537

39:                                               ; preds = %37
  invoke void @glutMainLoop()
          to label %40 unwind label %41, !dbg !2538

40:                                               ; preds = %39
  br label %59, !dbg !2539

41:                                               ; preds = %39, %37, %35, %33, %31, %30, %27, %25, %23, %21, %19, %17, %16, %14, %13, %12, %11, %2
  %42 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2540
  %43 = extractvalue { ptr, i32 } %42, 0, !dbg !2540
  store ptr %43, ptr %6, align 8, !dbg !2540
  %44 = extractvalue { ptr, i32 } %42, 1, !dbg !2540
  store i32 %44, ptr %7, align 4, !dbg !2540
  br label %45, !dbg !2540

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 8, !dbg !2539
  %47 = call ptr @__cxa_begin_catch(ptr %46) #3, !dbg !2539
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.6)
          to label %49 unwind label %54, !dbg !2541

49:                                               ; preds = %45
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef @.str.2)
          to label %51 unwind label %54, !dbg !2543

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %53 unwind label %54, !dbg !2544

53:                                               ; preds = %51
  store i32 1, ptr %3, align 4, !dbg !2545
  call void @__cxa_end_catch(), !dbg !2546
  br label %60

54:                                               ; preds = %51, %49, %45
  %55 = landingpad { ptr, i32 }
          cleanup, !dbg !2547
  %56 = extractvalue { ptr, i32 } %55, 0, !dbg !2547
  store ptr %56, ptr %6, align 8, !dbg !2547
  %57 = extractvalue { ptr, i32 } %55, 1, !dbg !2547
  store i32 %57, ptr %7, align 4, !dbg !2547
  invoke void @__cxa_end_catch()
          to label %58 unwind label %67, !dbg !2546

58:                                               ; preds = %54
  br label %62, !dbg !2546

59:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !2548
  br label %60, !dbg !2548

60:                                               ; preds = %59, %53
  %61 = load i32, ptr %3, align 4, !dbg !2549
  ret i32 %61, !dbg !2549

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 8, !dbg !2546
  %64 = load i32, ptr %7, align 4, !dbg !2546
  %65 = insertvalue { ptr, i32 } poison, ptr %63, 0, !dbg !2546
  %66 = insertvalue { ptr, i32 } %65, i32 %64, 1, !dbg !2546
  resume { ptr, i32 } %66, !dbg !2546

67:                                               ; preds = %54
  %68 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2546
  %69 = extractvalue { ptr, i32 } %68, 0, !dbg !2546
  call void @__clang_call_terminate(ptr %69) #19, !dbg !2546
  unreachable, !dbg !2546
}

declare void @glutInit(ptr noundef, ptr noundef) #1

declare i32 @__gxx_personality_v0(...)

declare void @glutInitDisplayMode(i32 noundef) #1

declare void @glutInitWindowSize(i32 noundef, i32 noundef) #1

declare void @glutInitWindowPosition(i32 noundef, i32 noundef) #1

declare i32 @glutCreateWindow(ptr noundef) #1

declare void @glutDisplayFunc(ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z6rtInitPiPPc(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !2550 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2553, metadata !DIExpression()), !dbg !2554
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2556
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.23), !dbg !2557
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2558
  ret void, !dbg !2559
}

declare ptr @lrtCreateTextureFB(i32 noundef, i32 noundef) #1

declare ptr @lrtCreateCamera() #1

declare ptr @lrtCreateContext() #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z9rtNewRoot15newroot_flags_t(i32 noundef %0) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2560 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2566, metadata !DIExpression()), !dbg !2567
  %6 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 64) #20, !dbg !2568, !heapallocsite !2569
  invoke void @_ZN3ISG8RootNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %7 unwind label %13, !dbg !2576

7:                                                ; preds = %1
  store ptr %6, ptr %3, align 8, !dbg !2567
  %8 = load i32, ptr %2, align 4, !dbg !2577
  %9 = and i32 %8, 1, !dbg !2579
  %10 = icmp ne i32 %9, 0, !dbg !2577
  br i1 %10, label %11, label %17, !dbg !2580

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !dbg !2581
  call void @_Z6rtShowPN3ISG4NodeE(ptr noundef %12), !dbg !2582
  br label %17, !dbg !2582

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup, !dbg !2583
  %15 = extractvalue { ptr, i32 } %14, 0, !dbg !2583
  store ptr %15, ptr %4, align 8, !dbg !2583
  %16 = extractvalue { ptr, i32 } %14, 1, !dbg !2583
  store i32 %16, ptr %5, align 4, !dbg !2583
  call void @_ZdlPv(ptr noundef %6) #21, !dbg !2568
  br label %19, !dbg !2568

17:                                               ; preds = %11, %7
  %18 = load ptr, ptr %3, align 8, !dbg !2584
  ret ptr %18, !dbg !2585

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 8, !dbg !2568
  %21 = load i32, ptr %5, align 4, !dbg !2568
  %22 = insertvalue { ptr, i32 } poison, ptr %20, 0, !dbg !2568
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1, !dbg !2568
  resume { ptr, i32 } %23, !dbg !2568
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z13rtEndGeometryv() #7 comdat !dbg !2586 {
  ret void, !dbg !2587
}

declare void @lrtLookAt(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) #1

declare void @lrtBuildContext(ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare void @glutMainLoop() #1

declare ptr @__cxa_begin_catch(ptr)

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #10 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 !dbg !2588 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2589, metadata !DIExpression()), !dbg !2591
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2592
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE(ptr noundef %0, i32 noundef %1) #5 comdat personality ptr @__gxx_personality_v0 !dbg !2593 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2596, metadata !DIExpression()), !dbg !2597
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2598, metadata !DIExpression()), !dbg !2599
  %9 = load ptr, ptr %3, align 8, !dbg !2600
  %10 = icmp ne ptr %9, null, !dbg !2600
  br i1 %10, label %11, label %12, !dbg !2600

11:                                               ; preds = %2
  br label %14, !dbg !2600

12:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 82, ptr noundef @__PRETTY_FUNCTION__._Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE) #19, !dbg !2600
  unreachable, !dbg !2600

13:                                               ; No predecessors!
  br label %14, !dbg !2600

14:                                               ; preds = %13, %11
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2601, metadata !DIExpression()), !dbg !2602
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 72) #20, !dbg !2603, !heapallocsite !743
  %16 = load ptr, ptr %3, align 8, !dbg !2604
  %17 = load i32, ptr %4, align 4, !dbg !2605
  invoke void @_ZN3ISG8BaseMeshC2EPNS_4NodeENS_8MeshTypeE(ptr noundef nonnull align 8 dereferenceable(68) %15, ptr noundef %16, i32 noundef %17)
          to label %18 unwind label %23, !dbg !2606

18:                                               ; preds = %14
  store ptr %15, ptr %5, align 8, !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2607, metadata !DIExpression()), !dbg !2608
  %19 = load ptr, ptr %3, align 8, !dbg !2609
  %20 = icmp eq ptr %19, null, !dbg !2610
  br i1 %20, label %27, label %21, !dbg !2610

21:                                               ; preds = %18
  %22 = call ptr @__dynamic_cast(ptr %19, ptr @_ZTIN3ISG4NodeE, ptr @_ZTIN3ISG9GroupNodeE, i64 0) #3, !dbg !2610
  br label %28, !dbg !2610

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup, !dbg !2611
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !2611
  store ptr %25, ptr %6, align 8, !dbg !2611
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !2611
  store i32 %26, ptr %7, align 4, !dbg !2611
  call void @_ZdlPv(ptr noundef %15) #21, !dbg !2603
  br label %43, !dbg !2603

27:                                               ; preds = %18
  br label %28, !dbg !2610

28:                                               ; preds = %27, %21
  %29 = phi ptr [ %22, %21 ], [ null, %27 ], !dbg !2610
  store ptr %29, ptr %8, align 8, !dbg !2608
  %30 = load ptr, ptr %8, align 8, !dbg !2612
  %31 = icmp ne ptr %30, null, !dbg !2612
  br i1 %31, label %39, label %32, !dbg !2614

32:                                               ; preds = %28
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.9), !dbg !2615
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef @.str.10), !dbg !2615
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef @.str.11), !dbg !2615
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef @__PRETTY_FUNCTION__._Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE), !dbg !2615
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef @.str.12), !dbg !2615
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2615
  call void @exit(i32 noundef 1) #19, !dbg !2615
  unreachable, !dbg !2615

39:                                               ; preds = %28
  %40 = load ptr, ptr %8, align 8, !dbg !2617
  %41 = load ptr, ptr %5, align 8, !dbg !2618
  call void @_ZN3ISG9GroupNode8addChildEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %40, ptr noundef %41), !dbg !2619
  %42 = load ptr, ptr %5, align 8, !dbg !2620
  ret ptr %42, !dbg !2621

43:                                               ; preds = %23
  %44 = load ptr, ptr %6, align 8, !dbg !2603
  %45 = load i32, ptr %7, align 4, !dbg !2603
  %46 = insertvalue { ptr, i32 } poison, ptr %44, 0, !dbg !2603
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1, !dbg !2603
  resume { ptr, i32 } %47, !dbg !2603
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #12

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8BaseMeshC2EPNS_4NodeENS_8MeshTypeE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #13 comdat align 2 !dbg !2622 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2623, metadata !DIExpression()), !dbg !2624
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2627, metadata !DIExpression()), !dbg !2628
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2629
  call void @_ZN3ISG4NodeC2EPS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %8), !dbg !2630
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG8BaseMeshE, i32 0, inrange i32 0, i32 2), ptr %7, align 8, !dbg !2631
  %9 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %7, i32 0, i32 1, !dbg !2632
  store ptr null, ptr %9, align 8, !dbg !2632
  %10 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %7, i32 0, i32 2, !dbg !2633
  store ptr null, ptr %10, align 8, !dbg !2633
  %11 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %7, i32 0, i32 3, !dbg !2634
  store ptr null, ptr %11, align 8, !dbg !2634
  %12 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %7, i32 0, i32 4, !dbg !2635
  %13 = load i32, ptr %6, align 4, !dbg !2636
  store i32 %13, ptr %12, align 8, !dbg !2635
  ret void, !dbg !2637
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #14

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #15

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9GroupNode8addChildEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) #5 comdat align 2 !dbg !2638 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2639, metadata !DIExpression()), !dbg !2640
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2641, metadata !DIExpression()), !dbg !2642
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.ISG::GroupNode", ptr %5, i32 0, i32 1, !dbg !2643
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !2644
  %7 = load ptr, ptr %4, align 8, !dbg !2645
  call void @_ZN3ISG4Node9addParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %5), !dbg !2646
  ret void, !dbg !2647
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4NodeC2EPS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2648 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2649, metadata !DIExpression()), !dbg !2650
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2651, metadata !DIExpression()), !dbg !2652
  %7 = load ptr, ptr %3, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG4NodeE, i32 0, inrange i32 0, i32 2), ptr %7, align 8, !dbg !2653
  %8 = getelementptr inbounds %"class.ISG::Node", ptr %7, i32 0, i32 2, !dbg !2654
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #3, !dbg !2654
  %9 = load ptr, ptr %4, align 8, !dbg !2655
  invoke void @_ZN3ISG4Node9addParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %9)
          to label %10 unwind label %11, !dbg !2657

10:                                               ; preds = %2
  ret void, !dbg !2658

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup, !dbg !2659
  %13 = extractvalue { ptr, i32 } %12, 0, !dbg !2659
  store ptr %13, ptr %5, align 8, !dbg !2659
  %14 = extractvalue { ptr, i32 } %12, 1, !dbg !2659
  store i32 %14, ptr %6, align 4, !dbg !2659
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #3, !dbg !2659
  br label %15, !dbg !2659

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !2659
  %17 = load i32, ptr %6, align 4, !dbg !2659
  %18 = insertvalue { ptr, i32 } poison, ptr %16, 0, !dbg !2659
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1, !dbg !2659
  resume { ptr, i32 } %19, !dbg !2659
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8BaseMeshD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #11 comdat align 2 !dbg !2660 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2665
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG4NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #3, !dbg !2666
  ret void, !dbg !2668
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8BaseMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #11 comdat align 2 !dbg !2669 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2670, metadata !DIExpression()), !dbg !2671
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG8BaseMeshD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %3) #3, !dbg !2672
  call void @_ZdlPv(ptr noundef %3) #21, !dbg !2672
  ret void, !dbg !2672
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4Node15childWasChangedEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !dbg !2673 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2674, metadata !DIExpression()), !dbg !2675
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2676, metadata !DIExpression()), !dbg !2677
  %5 = load ptr, ptr %3, align 8
  call void @_ZN3ISG4Node11markAsDirtyEv(ptr noundef nonnull align 8 dereferenceable(40) %5), !dbg !2678
  ret void, !dbg !2679
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2680 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2681, metadata !DIExpression()), !dbg !2683
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2684
  ret void, !dbg !2685
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4Node9addParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5 comdat align 2 !dbg !2686 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2687, metadata !DIExpression()), !dbg !2688
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2689, metadata !DIExpression()), !dbg !2690
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %"class.ISG::Node", ptr %9, i32 0, i32 2, !dbg !2691
  %11 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !2693
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !2693
  store ptr %11, ptr %12, align 8, !dbg !2693
  %13 = getelementptr inbounds %"class.ISG::Node", ptr %9, i32 0, i32 2, !dbg !2694
  %14 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #3, !dbg !2695
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !2695
  store ptr %14, ptr %15, align 8, !dbg !2695
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !2696
  %17 = load ptr, ptr %16, align 8, !dbg !2696
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !2696
  %19 = load ptr, ptr %18, align 8, !dbg !2696
  %20 = call ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_(ptr %17, ptr %19, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !2696
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2696
  store ptr %20, ptr %21, align 8, !dbg !2696
  %22 = getelementptr inbounds %"class.ISG::Node", ptr %9, i32 0, i32 2, !dbg !2697
  %23 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #3, !dbg !2698
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !2698
  store ptr %23, ptr %24, align 8, !dbg !2698
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2699
  br i1 %25, label %26, label %28, !dbg !2700

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"class.ISG::Node", ptr %9, i32 0, i32 2, !dbg !2701
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !2703
  br label %28, !dbg !2704

28:                                               ; preds = %26, %2
  ret void, !dbg !2705
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2706 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2708
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2709
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !2711
  %6 = load ptr, ptr %5, align 8, !dbg !2711
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2712
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !2713
  %9 = load ptr, ptr %8, align 8, !dbg !2713
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2714
  invoke void @_ZSt8_DestroyIPPN3ISG4NodeES2_EvT_S4_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !2715

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2716
  ret void, !dbg !2717

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2715
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !2715
  call void @__clang_call_terminate(ptr %14) #19, !dbg !2715
  unreachable, !dbg !2715
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !dbg !2718 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2719, metadata !DIExpression()), !dbg !2720
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG4NodeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !2721
  %4 = getelementptr inbounds %"class.ISG::Node", ptr %3, i32 0, i32 2, !dbg !2722
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2722
  ret void, !dbg !2724
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4NodeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !dbg !2725 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2726, metadata !DIExpression()), !dbg !2727
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG4NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #3, !dbg !2728
  call void @_ZdlPv(ptr noundef %3) #21, !dbg !2728
  ret void, !dbg !2729
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2730 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2733
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2734
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !2734
  ret void, !dbg !2735
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2736 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2737, metadata !DIExpression()), !dbg !2739
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIPN3ISG4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2740
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !2741
  ret void, !dbg !2742
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIPN3ISG4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #11 comdat align 2 !dbg !2743 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2744, metadata !DIExpression()), !dbg !2746
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !2747
  ret void, !dbg !2748
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2749 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2750, metadata !DIExpression()), !dbg !2752
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !2753
  store ptr null, ptr %4, align 8, !dbg !2753
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !2754
  store ptr null, ptr %5, align 8, !dbg !2754
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !2755
  store ptr null, ptr %6, align 8, !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #11 comdat align 2 !dbg !2757 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2758, metadata !DIExpression()), !dbg !2760
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2761
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !2762 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2766, metadata !DIExpression()), !dbg !2767
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2768, metadata !DIExpression()), !dbg !2769
  %5 = load ptr, ptr %3, align 8, !dbg !2770
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2771
  %7 = load ptr, ptr %6, align 8, !dbg !2771
  %8 = load ptr, ptr %4, align 8, !dbg !2772
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2773
  %10 = load ptr, ptr %9, align 8, !dbg !2773
  %11 = icmp eq ptr %7, %10, !dbg !2774
  ret i1 %11, !dbg !2775
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat !dbg !2776 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2784, metadata !DIExpression()), !dbg !2785
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false), !dbg !2788
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 8, i1 false), !dbg !2789
  %13 = load ptr, ptr %7, align 8, !dbg !2790
  %14 = call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN3ISG4NodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %13), !dbg !2791
  %15 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %10, i32 0, i32 0, !dbg !2791
  store ptr %14, ptr %15, align 8, !dbg !2791
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !2792
  %17 = load ptr, ptr %16, align 8, !dbg !2792
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !2792
  %19 = load ptr, ptr %18, align 8, !dbg !2792
  %20 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %10, i32 0, i32 0, !dbg !2792
  %21 = load ptr, ptr %20, align 8, !dbg !2792
  %22 = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_(ptr %17, ptr %19, ptr %21), !dbg !2792
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2792
  store ptr %22, ptr %23, align 8, !dbg !2792
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2793
  %25 = load ptr, ptr %24, align 8, !dbg !2793
  ret ptr %25, !dbg !2793
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2794 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2795, metadata !DIExpression()), !dbg !2796
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2797
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !2798
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2799
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2800
  %8 = load ptr, ptr %7, align 8, !dbg !2800
  ret ptr %8, !dbg !2800
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !2801 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2802, metadata !DIExpression()), !dbg !2803
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2804
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !2805
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !2806
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !2807
  %8 = load ptr, ptr %7, align 8, !dbg !2807
  ret ptr %8, !dbg !2807
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 comdat align 2 !dbg !2808 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2809, metadata !DIExpression()), !dbg !2810
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2811, metadata !DIExpression()), !dbg !2812
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2813
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !2815
  %9 = load ptr, ptr %8, align 8, !dbg !2815
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2816
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %10, i32 0, i32 2, !dbg !2817
  %12 = load ptr, ptr %11, align 8, !dbg !2817
  %13 = icmp ne ptr %9, %12, !dbg !2818
  br i1 %13, label %14, label %24, !dbg !2819

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2820
  %16 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2822
  %17 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %16, i32 0, i32 1, !dbg !2823
  %18 = load ptr, ptr %17, align 8, !dbg !2823
  %19 = load ptr, ptr %4, align 8, !dbg !2824
  call void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %19) #3, !dbg !2825
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !2826
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !2827
  %22 = load ptr, ptr %21, align 8, !dbg !2828
  %23 = getelementptr inbounds ptr, ptr %22, i32 1, !dbg !2828
  store ptr %23, ptr %21, align 8, !dbg !2828
  br label %30, !dbg !2829

24:                                               ; preds = %2
  %25 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #3, !dbg !2830
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2830
  store ptr %25, ptr %26, align 8, !dbg !2830
  %27 = load ptr, ptr %4, align 8, !dbg !2831
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !2832
  %29 = load ptr, ptr %28, align 8, !dbg !2832
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %29, ptr noundef nonnull align 8 dereferenceable(8) %27), !dbg !2832
  br label %30

30:                                               ; preds = %24, %14
  ret void, !dbg !2833
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !2834 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2835, metadata !DIExpression()), !dbg !2837
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !2838
  ret ptr %4, !dbg !2839
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_(ptr %0, ptr %1, ptr %2) #5 comdat !dbg !2840 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %11 = alloca %"struct.std::random_access_iterator_tag", align 1
  %12 = alloca %"struct.std::random_access_iterator_tag", align 1
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %14, align 8
  %15 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %7, i32 0, i32 0
  store ptr %2, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2851, metadata !DIExpression()), !dbg !2852
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 8, i1 false), !dbg !2853
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 8, i1 false), !dbg !2854
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 8, i1 false), !dbg !2855
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !2856
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !2857
  %17 = load ptr, ptr %16, align 8, !dbg !2857
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !2857
  %19 = load ptr, ptr %18, align 8, !dbg !2857
  %20 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %10, i32 0, i32 0, !dbg !2857
  %21 = load ptr, ptr %20, align 8, !dbg !2857
  %22 = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %17, ptr %19, ptr %21), !dbg !2857
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2857
  store ptr %22, ptr %23, align 8, !dbg !2857
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2858
  %25 = load ptr, ptr %24, align 8, !dbg !2858
  ret ptr %25, !dbg !2858
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN3ISG4NodeEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) #5 comdat !dbg !2859 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2862, metadata !DIExpression()), !dbg !2863
  %4 = load ptr, ptr %3, align 8, !dbg !2864
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !2865
  %5 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %2, i32 0, i32 0, !dbg !2866
  %6 = load ptr, ptr %5, align 8, !dbg !2866
  ret ptr %6, !dbg !2866
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) #5 comdat !dbg !2867 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %8 = alloca %"struct.std::random_access_iterator_tag", align 1
  %9 = alloca i64, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %7, i32 0, i32 0
  store ptr %2, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2884, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2890, metadata !DIExpression()), !dbg !2895
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2896
  %21 = ashr i64 %20, 2, !dbg !2897
  store i64 %21, ptr %9, align 8, !dbg !2895
  br label %22, !dbg !2898

22:                                               ; preds = %50, %3
  %23 = load i64, ptr %9, align 8, !dbg !2899
  %24 = icmp sgt i64 %23, 0, !dbg !2902
  br i1 %24, label %25, label %53, !dbg !2903

25:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %5, i64 8, i1 false), !dbg !2904
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !2907
  %27 = load ptr, ptr %26, align 8, !dbg !2907
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %27), !dbg !2907
  br i1 %28, label %29, label %30, !dbg !2908

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2909
  br label %78, !dbg !2910

30:                                               ; preds = %25
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2911
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %5, i64 8, i1 false), !dbg !2912
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !2914
  %33 = load ptr, ptr %32, align 8, !dbg !2914
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %33), !dbg !2914
  br i1 %34, label %35, label %36, !dbg !2915

35:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2916
  br label %78, !dbg !2917

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2918
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %5, i64 8, i1 false), !dbg !2919
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %12, i32 0, i32 0, !dbg !2921
  %39 = load ptr, ptr %38, align 8, !dbg !2921
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %39), !dbg !2921
  br i1 %40, label %41, label %42, !dbg !2922

41:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2923
  br label %78, !dbg !2924

42:                                               ; preds = %36
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2925
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %5, i64 8, i1 false), !dbg !2926
  %44 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %13, i32 0, i32 0, !dbg !2928
  %45 = load ptr, ptr %44, align 8, !dbg !2928
  %46 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %45), !dbg !2928
  br i1 %46, label %47, label %48, !dbg !2929

47:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2930
  br label %78, !dbg !2931

48:                                               ; preds = %42
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2932
  br label %50, !dbg !2933

50:                                               ; preds = %48
  %51 = load i64, ptr %9, align 8, !dbg !2934
  %52 = add nsw i64 %51, -1, !dbg !2934
  store i64 %52, ptr %9, align 8, !dbg !2934
  br label %22, !dbg !2935, !llvm.loop !2936

53:                                               ; preds = %22
  %54 = call noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2938
  switch i64 %54, label %77 [
    i64 3, label %55
    i64 2, label %62
    i64 1, label %69
    i64 0, label %76
  ], !dbg !2939

55:                                               ; preds = %53
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %5, i64 8, i1 false), !dbg !2940
  %56 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %14, i32 0, i32 0, !dbg !2943
  %57 = load ptr, ptr %56, align 8, !dbg !2943
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %57), !dbg !2943
  br i1 %58, label %59, label %60, !dbg !2944

59:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2945
  br label %78, !dbg !2946

60:                                               ; preds = %55
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2947
  br label %62, !dbg !2947

62:                                               ; preds = %53, %60
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %5, i64 8, i1 false), !dbg !2948
  %63 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %15, i32 0, i32 0, !dbg !2950
  %64 = load ptr, ptr %63, align 8, !dbg !2950
  %65 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %64), !dbg !2950
  br i1 %65, label %66, label %67, !dbg !2951

66:                                               ; preds = %62
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2952
  br label %78, !dbg !2953

67:                                               ; preds = %62
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2954
  br label %69, !dbg !2954

69:                                               ; preds = %53, %67
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %5, i64 8, i1 false), !dbg !2955
  %70 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %16, i32 0, i32 0, !dbg !2957
  %71 = load ptr, ptr %70, align 8, !dbg !2957
  %72 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %71), !dbg !2957
  br i1 %72, label %73, label %74, !dbg !2958

73:                                               ; preds = %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %5, i64 8, i1 false), !dbg !2959
  br label %78, !dbg !2960

74:                                               ; preds = %69
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2961
  br label %76, !dbg !2961

76:                                               ; preds = %53, %74
  br label %77, !dbg !2962

77:                                               ; preds = %53, %76
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %6, i64 8, i1 false), !dbg !2963
  br label %78, !dbg !2964

78:                                               ; preds = %77, %73, %66, %59, %47, %41, %35, %29
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !2965
  %80 = load ptr, ptr %79, align 8, !dbg !2965
  ret ptr %80, !dbg !2965
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat !dbg !2966 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2974, metadata !DIExpression()), !dbg !2975
  ret void, !dbg !2976
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !2977 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2980, metadata !DIExpression()), !dbg !2981
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2982, metadata !DIExpression()), !dbg !2983
  %5 = load ptr, ptr %3, align 8, !dbg !2984
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !2985
  %7 = load ptr, ptr %6, align 8, !dbg !2985
  %8 = load ptr, ptr %4, align 8, !dbg !2986
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !2987
  %10 = load ptr, ptr %9, align 8, !dbg !2987
  %11 = ptrtoint ptr %7 to i64, !dbg !2988
  %12 = ptrtoint ptr %10 to i64, !dbg !2988
  %13 = sub i64 %11, %12, !dbg !2988
  %14 = sdiv exact i64 %13, 8, !dbg !2988
  ret i64 %14, !dbg !2989
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) #7 comdat align 2 !dbg !2990 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2998, metadata !DIExpression()), !dbg !2999
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #3, !dbg !3000
  %8 = load ptr, ptr %7, align 8, !dbg !3000
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %6, i32 0, i32 0, !dbg !3001
  %10 = load ptr, ptr %9, align 8, !dbg !3001
  %11 = load ptr, ptr %10, align 8, !dbg !3001
  %12 = icmp eq ptr %8, %11, !dbg !3002
  ret i1 %12, !dbg !3003
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !3004 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3007
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3008
  %5 = load ptr, ptr %4, align 8, !dbg !3009
  %6 = getelementptr inbounds ptr, ptr %5, i32 1, !dbg !3009
  store ptr %6, ptr %4, align 8, !dbg !3009
  ret ptr %3, !dbg !3010
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !3011 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3012, metadata !DIExpression()), !dbg !3013
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3014
  %5 = load ptr, ptr %4, align 8, !dbg !3014
  ret ptr %5, !dbg !3015
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 !dbg !3016 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3017, metadata !DIExpression()), !dbg !3018
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3019, metadata !DIExpression()), !dbg !3020
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_equals_val", ptr %5, i32 0, i32 0, !dbg !3021
  %7 = load ptr, ptr %4, align 8, !dbg !3022
  store ptr %7, ptr %6, align 8, !dbg !3021
  ret void, !dbg !3023
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 !dbg !3024 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3025, metadata !DIExpression()), !dbg !3026
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3027, metadata !DIExpression()), !dbg !3028
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !3029
  %7 = load ptr, ptr %4, align 8, !dbg !3030
  %8 = load ptr, ptr %7, align 8, !dbg !3030
  store ptr %8, ptr %6, align 8, !dbg !3029
  ret void, !dbg !3031
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 !dbg !3032 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3041, metadata !DIExpression()), !dbg !3042
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3043, metadata !DIExpression()), !dbg !3044
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3045, metadata !DIExpression()), !dbg !3046
  %7 = load ptr, ptr %4, align 8, !dbg !3047
  %8 = load ptr, ptr %5, align 8, !dbg !3048
  %9 = load ptr, ptr %6, align 8, !dbg !3049
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #3, !dbg !3050
  ret void, !dbg !3051
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 comdat align 2 !dbg !3052 {
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
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3059, metadata !DIExpression()), !dbg !3060
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3061, metadata !DIExpression()), !dbg !3062
  %15 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3063, metadata !DIExpression()), !dbg !3065
  %16 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 1, ptr noundef @.str.13), !dbg !3066
  store i64 %16, ptr %7, align 8, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3067, metadata !DIExpression()), !dbg !3068
  %17 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3069
  %18 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %17, i32 0, i32 0, !dbg !3070
  %19 = load ptr, ptr %18, align 8, !dbg !3070
  store ptr %19, ptr %8, align 8, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3071, metadata !DIExpression()), !dbg !3072
  %20 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3073
  %21 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %20, i32 0, i32 1, !dbg !3074
  %22 = load ptr, ptr %21, align 8, !dbg !3074
  store ptr %22, ptr %9, align 8, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3075, metadata !DIExpression()), !dbg !3076
  %23 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !3077
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !3077
  store ptr %23, ptr %24, align 8, !dbg !3077
  %25 = call noundef i64 @_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #3, !dbg !3078
  store i64 %25, ptr %10, align 8, !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3079, metadata !DIExpression()), !dbg !3080
  %26 = load i64, ptr %7, align 8, !dbg !3081
  %27 = call noundef ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %26), !dbg !3082
  store ptr %27, ptr %12, align 8, !dbg !3080
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3083, metadata !DIExpression()), !dbg !3084
  %28 = load ptr, ptr %12, align 8, !dbg !3085
  store ptr %28, ptr %13, align 8, !dbg !3084
  %29 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3086
  %30 = load ptr, ptr %12, align 8, !dbg !3088
  %31 = load i64, ptr %10, align 8, !dbg !3089
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31, !dbg !3090
  %33 = load ptr, ptr %6, align 8, !dbg !3091
  call void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(8) %33) #3, !dbg !3092
  store ptr null, ptr %13, align 8, !dbg !3093
  %34 = load ptr, ptr %8, align 8, !dbg !3094
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !3097
  %36 = load ptr, ptr %35, align 8, !dbg !3097
  %37 = load ptr, ptr %12, align 8, !dbg !3098
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !3099
  %39 = call noundef ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %34, ptr noundef %36, ptr noundef %37, ptr noundef nonnull align 1 dereferenceable(1) %38) #3, !dbg !3100
  store ptr %39, ptr %13, align 8, !dbg !3101
  %40 = load ptr, ptr %13, align 8, !dbg !3102
  %41 = getelementptr inbounds ptr, ptr %40, i32 1, !dbg !3102
  store ptr %41, ptr %13, align 8, !dbg !3102
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #3, !dbg !3103
  %43 = load ptr, ptr %42, align 8, !dbg !3103
  %44 = load ptr, ptr %9, align 8, !dbg !3104
  %45 = load ptr, ptr %13, align 8, !dbg !3105
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !3106
  %47 = call noundef ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #3, !dbg !3107
  store ptr %47, ptr %13, align 8, !dbg !3108
  %48 = load ptr, ptr %8, align 8, !dbg !3109
  %49 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3110
  %50 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %49, i32 0, i32 2, !dbg !3111
  %51 = load ptr, ptr %50, align 8, !dbg !3111
  %52 = load ptr, ptr %8, align 8, !dbg !3112
  %53 = ptrtoint ptr %51 to i64, !dbg !3113
  %54 = ptrtoint ptr %52 to i64, !dbg !3113
  %55 = sub i64 %53, %54, !dbg !3113
  %56 = sdiv exact i64 %55, 8, !dbg !3113
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %48, i64 noundef %56), !dbg !3114
  %57 = load ptr, ptr %12, align 8, !dbg !3115
  %58 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3116
  %59 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %58, i32 0, i32 0, !dbg !3117
  store ptr %57, ptr %59, align 8, !dbg !3118
  %60 = load ptr, ptr %13, align 8, !dbg !3119
  %61 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3120
  %62 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %61, i32 0, i32 1, !dbg !3121
  store ptr %60, ptr %62, align 8, !dbg !3122
  %63 = load ptr, ptr %12, align 8, !dbg !3123
  %64 = load i64, ptr %7, align 8, !dbg !3124
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64, !dbg !3125
  %66 = getelementptr inbounds %"struct.std::_Vector_base", ptr %15, i32 0, i32 0, !dbg !3126
  %67 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %66, i32 0, i32 2, !dbg !3127
  store ptr %65, ptr %67, align 8, !dbg !3128
  ret void, !dbg !3129
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 !dbg !3130 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3134, metadata !DIExpression()), !dbg !3135
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3136, metadata !DIExpression()), !dbg !3137
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3138, metadata !DIExpression()), !dbg !3139
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3140
  %9 = load ptr, ptr %6, align 8, !dbg !3141
  %10 = load ptr, ptr %9, align 8, !dbg !3142
  store ptr %10, ptr %8, align 8, !dbg !3143
  ret void, !dbg !3144
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #5 comdat align 2 !dbg !3145 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3146, metadata !DIExpression()), !dbg !3148
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3149, metadata !DIExpression()), !dbg !3150
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3151, metadata !DIExpression()), !dbg !3152
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3153
  %11 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3155
  %12 = sub i64 %10, %11, !dbg !3156
  %13 = load i64, ptr %5, align 8, !dbg !3157
  %14 = icmp ult i64 %12, %13, !dbg !3158
  br i1 %14, label %15, label %17, !dbg !3159

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !3160
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #22, !dbg !3161
  unreachable, !dbg !3161

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3162, metadata !DIExpression()), !dbg !3163
  %18 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3164
  %19 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3165
  store i64 %19, ptr %8, align 8, !dbg !3165
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !3166
  %21 = load i64, ptr %20, align 8, !dbg !3166
  %22 = add i64 %18, %21, !dbg !3167
  store i64 %22, ptr %7, align 8, !dbg !3163
  %23 = load i64, ptr %7, align 8, !dbg !3168
  %24 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3169
  %25 = icmp ult i64 %23, %24, !dbg !3170
  br i1 %25, label %30, label %26, !dbg !3171

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !3172
  %28 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3173
  %29 = icmp ugt i64 %27, %28, !dbg !3174
  br i1 %29, label %30, label %32, !dbg !3175

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #3, !dbg !3176
  br label %34, !dbg !3175

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !3177
  br label %34, !dbg !3175

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !3175
  ret i64 %35, !dbg !3178
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #5 comdat align 2 !dbg !3179 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3181
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3182, metadata !DIExpression()), !dbg !3183
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !3184
  %7 = icmp ne i64 %6, 0, !dbg !3185
  br i1 %7, label %8, label %12, !dbg !3184

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3186
  %10 = load i64, ptr %4, align 8, !dbg !3187
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !3188
  br label %13, !dbg !3184

12:                                               ; preds = %2
  br label %13, !dbg !3184

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !3184
  ret ptr %14, !dbg !3189
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat align 2 !dbg !740 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3190, metadata !DIExpression()), !dbg !3191
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3192, metadata !DIExpression()), !dbg !3193
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3194, metadata !DIExpression()), !dbg !3195
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3196, metadata !DIExpression()), !dbg !3197
  %10 = load ptr, ptr %5, align 8, !dbg !3198
  %11 = load ptr, ptr %6, align 8, !dbg !3199
  %12 = load ptr, ptr %7, align 8, !dbg !3200
  %13 = load ptr, ptr %8, align 8, !dbg !3201
  %14 = call noundef ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3202
  ret ptr %14, !dbg !3203
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3204 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3205, metadata !DIExpression()), !dbg !3206
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3207
  ret ptr %4, !dbg !3208
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3209 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3210, metadata !DIExpression()), !dbg !3211
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3212, metadata !DIExpression()), !dbg !3213
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3214, metadata !DIExpression()), !dbg !3215
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3216
  %9 = icmp ne ptr %8, null, !dbg !3216
  br i1 %9, label %10, label %14, !dbg !3218

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !3219
  %12 = load ptr, ptr %5, align 8, !dbg !3220
  %13 = load i64, ptr %6, align 8, !dbg !3221
  call void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !3222
  br label %14, !dbg !3222

14:                                               ; preds = %10, %3
  ret void, !dbg !3223
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3224 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3225, metadata !DIExpression()), !dbg !3226
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #3, !dbg !3227
  %5 = call noundef i64 @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3, !dbg !3228
  ret i64 %5, !dbg !3229
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3231, metadata !DIExpression()), !dbg !3232
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3233
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !3234
  %6 = load ptr, ptr %5, align 8, !dbg !3234
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3235
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !3236
  %9 = load ptr, ptr %8, align 8, !dbg !3236
  %10 = ptrtoint ptr %6 to i64, !dbg !3237
  %11 = ptrtoint ptr %9 to i64, !dbg !3237
  %12 = sub i64 %10, %11, !dbg !3237
  %13 = sdiv exact i64 %12, 8, !dbg !3237
  ret i64 %13, !dbg !3238
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #17

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3239 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3246, metadata !DIExpression()), !dbg !3248
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3249, metadata !DIExpression()), !dbg !3250
  %6 = load ptr, ptr %4, align 8, !dbg !3251
  %7 = load i64, ptr %6, align 8, !dbg !3251
  %8 = load ptr, ptr %5, align 8, !dbg !3253
  %9 = load i64, ptr %8, align 8, !dbg !3253
  %10 = icmp ult i64 %7, %9, !dbg !3254
  br i1 %10, label %11, label %13, !dbg !3255

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3256
  store ptr %12, ptr %3, align 8, !dbg !3257
  br label %15, !dbg !3257

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3258
  store ptr %14, ptr %3, align 8, !dbg !3259
  br label %15, !dbg !3259

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3260
  ret ptr %16, !dbg !3260
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3261 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3264, metadata !DIExpression()), !dbg !3266
  store i64 1152921504606846975, ptr %3, align 8, !dbg !3266
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3267, metadata !DIExpression()), !dbg !3268
  %5 = load ptr, ptr %2, align 8, !dbg !3269
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3, !dbg !3270
  store i64 %6, ptr %4, align 8, !dbg !3268
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !3271

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !3271
  ret i64 %9, !dbg !3272

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3271
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !3271
  call void @__clang_call_terminate(ptr %12) #19, !dbg !3271
  unreachable, !dbg !3271
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3273 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3274, metadata !DIExpression()), !dbg !3276
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3277
  ret ptr %4, !dbg !3278
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3279 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3280, metadata !DIExpression()), !dbg !3281
  %3 = load ptr, ptr %2, align 8, !dbg !3282
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3283
  ret i64 %4, !dbg !3284
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3285 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3286, metadata !DIExpression()), !dbg !3287
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3288, metadata !DIExpression()), !dbg !3289
  %6 = load ptr, ptr %5, align 8, !dbg !3290
  %7 = load i64, ptr %6, align 8, !dbg !3290
  %8 = load ptr, ptr %4, align 8, !dbg !3292
  %9 = load i64, ptr %8, align 8, !dbg !3292
  %10 = icmp ult i64 %7, %9, !dbg !3293
  br i1 %10, label %11, label %13, !dbg !3294

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !3295
  store ptr %12, ptr %3, align 8, !dbg !3296
  br label %15, !dbg !3296

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !3297
  store ptr %14, ptr %3, align 8, !dbg !3298
  br label %15, !dbg !3298

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !3299
  ret ptr %16, !dbg !3299
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3300 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3303
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3304
  ret i64 %4, !dbg !3305
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 !dbg !3306 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3307, metadata !DIExpression()), !dbg !3308
  %3 = load ptr, ptr %2, align 8
  ret i64 1152921504606846975, !dbg !3309
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #5 comdat align 2 !dbg !3310 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3311, metadata !DIExpression()), !dbg !3312
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3314
  %5 = load ptr, ptr %3, align 8, !dbg !3315
  %6 = load i64, ptr %4, align 8, !dbg !3316
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !3317
  ret ptr %7, !dbg !3318
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #5 comdat align 2 !dbg !3319 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3322, metadata !DIExpression()), !dbg !3323
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3324, metadata !DIExpression()), !dbg !3325
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !3326
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3, !dbg !3328
  %10 = icmp ugt i64 %8, %9, !dbg !3329
  br i1 %10, label %11, label %16, !dbg !3330

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !3331
  %13 = icmp ugt i64 %12, 2305843009213693951, !dbg !3334
  br i1 %13, label %14, label %15, !dbg !3335

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #22, !dbg !3336
  unreachable, !dbg !3336

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #22, !dbg !3337
  unreachable, !dbg !3337

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !3338
  %18 = mul i64 %17, 8, !dbg !3339
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #23, !dbg !3340
  ret ptr %19, !dbg !3341
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #17

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat align 2 !dbg !3342 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3343, metadata !DIExpression()), !dbg !3344
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3345, metadata !DIExpression()), !dbg !3346
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3347, metadata !DIExpression()), !dbg !3348
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3351, metadata !DIExpression()), !dbg !3352
  %10 = load ptr, ptr %6, align 8, !dbg !3353
  %11 = load ptr, ptr %7, align 8, !dbg !3354
  %12 = load ptr, ptr %8, align 8, !dbg !3355
  %13 = load ptr, ptr %9, align 8, !dbg !3356
  %14 = call noundef ptr @_ZSt12__relocate_aIPPN3ISG4NodeES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #3, !dbg !3357
  ret ptr %14, !dbg !3358
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPPN3ISG4NodeES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat !dbg !3359 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3367, metadata !DIExpression()), !dbg !3368
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3369, metadata !DIExpression()), !dbg !3370
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3371, metadata !DIExpression()), !dbg !3372
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3373, metadata !DIExpression()), !dbg !3374
  %9 = load ptr, ptr %5, align 8, !dbg !3375
  %10 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_(ptr noundef %9) #3, !dbg !3376
  %11 = load ptr, ptr %6, align 8, !dbg !3377
  %12 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_(ptr noundef %11) #3, !dbg !3378
  %13 = load ptr, ptr %7, align 8, !dbg !3379
  %14 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_(ptr noundef %13) #3, !dbg !3380
  %15 = load ptr, ptr %8, align 8, !dbg !3381
  %16 = call noundef ptr @_ZSt14__relocate_a_1IPN3ISG4NodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #3, !dbg !3382
  ret ptr %16, !dbg !3383
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN3ISG4NodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #7 comdat !dbg !3384 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3394, metadata !DIExpression()), !dbg !3395
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3396, metadata !DIExpression()), !dbg !3397
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3398, metadata !DIExpression()), !dbg !3399
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3402, metadata !DIExpression()), !dbg !3403
  %10 = load ptr, ptr %6, align 8, !dbg !3404
  %11 = load ptr, ptr %5, align 8, !dbg !3405
  %12 = ptrtoint ptr %10 to i64, !dbg !3406
  %13 = ptrtoint ptr %11 to i64, !dbg !3406
  %14 = sub i64 %12, %13, !dbg !3406
  %15 = sdiv exact i64 %14, 8, !dbg !3406
  store i64 %15, ptr %9, align 8, !dbg !3403
  %16 = load i64, ptr %9, align 8, !dbg !3407
  %17 = icmp sgt i64 %16, 0, !dbg !3409
  br i1 %17, label %18, label %23, !dbg !3410

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !3411
  %20 = load ptr, ptr %5, align 8, !dbg !3412
  %21 = load i64, ptr %9, align 8, !dbg !3413
  %22 = mul i64 %21, 8, !dbg !3414
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 %22, i1 false), !dbg !3415
  br label %23, !dbg !3415

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8, !dbg !3416
  %25 = load i64, ptr %9, align 8, !dbg !3417
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !3418
  ret ptr %26, !dbg !3419
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_(ptr noundef %0) #7 comdat !dbg !3420 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3423, metadata !DIExpression()), !dbg !3424
  %3 = load ptr, ptr %2, align 8, !dbg !3425
  ret ptr %3, !dbg !3426
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 comdat align 2 !dbg !3427 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3428, metadata !DIExpression()), !dbg !3429
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3430, metadata !DIExpression()), !dbg !3431
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3432, metadata !DIExpression()), !dbg !3433
  %7 = load ptr, ptr %4, align 8, !dbg !3434
  %8 = load ptr, ptr %5, align 8, !dbg !3435
  %9 = load i64, ptr %6, align 8, !dbg !3436
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !3437
  ret void, !dbg !3438
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #7 comdat align 2 !dbg !3439 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3440, metadata !DIExpression()), !dbg !3441
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3442, metadata !DIExpression()), !dbg !3443
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3444, metadata !DIExpression()), !dbg !3445
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3446
  call void @_ZdlPv(ptr noundef %8) #3, !dbg !3447
  ret void, !dbg !3448
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPN3ISG4NodeES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #5 comdat !dbg !3449 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3453, metadata !DIExpression()), !dbg !3454
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3455, metadata !DIExpression()), !dbg !3456
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3457, metadata !DIExpression()), !dbg !3458
  %7 = load ptr, ptr %4, align 8, !dbg !3459
  %8 = load ptr, ptr %5, align 8, !dbg !3460
  call void @_ZSt8_DestroyIPPN3ISG4NodeEEvT_S4_(ptr noundef %7, ptr noundef %8), !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3463 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3464, metadata !DIExpression()), !dbg !3465
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3466
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !3468
  %6 = load ptr, ptr %5, align 8, !dbg !3468
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3469
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !3470
  %9 = load ptr, ptr %8, align 8, !dbg !3470
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3471
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !3472
  %12 = load ptr, ptr %11, align 8, !dbg !3472
  %13 = ptrtoint ptr %9 to i64, !dbg !3473
  %14 = ptrtoint ptr %12 to i64, !dbg !3473
  %15 = sub i64 %13, %14, !dbg !3473
  %16 = sdiv exact i64 %15, 8, !dbg !3473
  invoke void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !3474

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !3475
  call void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #3, !dbg !3475
  ret void, !dbg !3476

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3474
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !3474
  call void @__clang_call_terminate(ptr %21) #19, !dbg !3474
  unreachable, !dbg !3474
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPN3ISG4NodeEEvT_S4_(ptr noundef %0, ptr noundef %1) #5 comdat !dbg !3477 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3482, metadata !DIExpression()), !dbg !3483
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3484, metadata !DIExpression()), !dbg !3485
  %5 = load ptr, ptr %3, align 8, !dbg !3486
  %6 = load ptr, ptr %4, align 8, !dbg !3487
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ISG4NodeEEEvT_S6_(ptr noundef %5, ptr noundef %6), !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ISG4NodeEEEvT_S6_(ptr noundef %0, ptr noundef %1) #7 comdat align 2 !dbg !3490 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3494, metadata !DIExpression()), !dbg !3495
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3496, metadata !DIExpression()), !dbg !3497
  ret void, !dbg !3498
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !3499 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3501, metadata !DIExpression()), !dbg !3502
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIPN3ISG4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3503
  ret void, !dbg !3505
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIPN3ISG4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #11 comdat align 2 !dbg !3506 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3507, metadata !DIExpression()), !dbg !3508
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3, !dbg !3509
  ret void, !dbg !3511
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #11 comdat align 2 !dbg !3512 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3513, metadata !DIExpression()), !dbg !3514
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3515
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4Node11markAsDirtyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #5 comdat align 2 !dbg !3516 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3517, metadata !DIExpression()), !dbg !3518
  %4 = load ptr, ptr %2, align 8
  %5 = call noundef zeroext i1 @_ZN3ISG4Node13markedAsDirtyEv(ptr noundef nonnull align 8 dereferenceable(40) %4), !dbg !3519
  br i1 %5, label %28, label %6, !dbg !3521

6:                                                ; preds = %1
  %7 = load i32, ptr @_ZN3ISG17current_timestampE, align 4, !dbg !3522
  %8 = getelementptr inbounds %"class.ISG::Node", ptr %4, i32 0, i32 1, !dbg !3524
  store i32 %7, ptr %8, align 8, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3528
  store i32 0, ptr %3, align 4, !dbg !3528
  br label %9, !dbg !3529

9:                                                ; preds = %24, %6
  %10 = load i32, ptr %3, align 4, !dbg !3530
  %11 = sext i32 %10 to i64, !dbg !3530
  %12 = getelementptr inbounds %"class.ISG::Node", ptr %4, i32 0, i32 2, !dbg !3532
  %13 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3533
  %14 = icmp ult i64 %11, %13, !dbg !3534
  br i1 %14, label %15, label %27, !dbg !3535

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.ISG::Node", ptr %4, i32 0, i32 2, !dbg !3536
  %17 = load i32, ptr %3, align 4, !dbg !3537
  %18 = sext i32 %17 to i64, !dbg !3537
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %18) #3, !dbg !3536
  %20 = load ptr, ptr %19, align 8, !dbg !3536
  %21 = load ptr, ptr %20, align 8, !dbg !3538
  %22 = getelementptr inbounds ptr, ptr %21, i64 2, !dbg !3538
  %23 = load ptr, ptr %22, align 8, !dbg !3538
  call void %23(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef %4), !dbg !3538
  br label %24, !dbg !3536

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 4, !dbg !3539
  %26 = add nsw i32 %25, 1, !dbg !3539
  store i32 %26, ptr %3, align 4, !dbg !3539
  br label %9, !dbg !3540, !llvm.loop !3541

27:                                               ; preds = %9
  br label %28, !dbg !3543

28:                                               ; preds = %27, %1
  ret void, !dbg !3544
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ISG4Node13markedAsDirtyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7 comdat align 2 !dbg !3545 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3546, metadata !DIExpression()), !dbg !3547
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.ISG::Node", ptr %3, i32 0, i32 1, !dbg !3548
  %5 = load i32, ptr %4, align 8, !dbg !3548
  %6 = load i32, ptr @_ZN3ISG17current_timestampE, align 4, !dbg !3549
  %7 = icmp sge i32 %5, %6, !dbg !3550
  ret i1 %7, !dbg !3551
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #7 comdat align 2 !dbg !3552 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3553, metadata !DIExpression()), !dbg !3554
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3555, metadata !DIExpression()), !dbg !3556
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !3557
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !3558
  %8 = load ptr, ptr %7, align 8, !dbg !3558
  %9 = load i64, ptr %4, align 8, !dbg !3559
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9, !dbg !3560
  ret ptr %10, !dbg !3561
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9DataArrayC2EPNS_4NodeENS_12SemanticTypeENS_10DataFormatE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 comdat align 2 !dbg !3562 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3563, metadata !DIExpression()), !dbg !3564
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3567, metadata !DIExpression()), !dbg !3568
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3569, metadata !DIExpression()), !dbg !3570
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8, !dbg !3571
  call void @_ZN3ISG4NodeC2EPS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %10), !dbg !3572
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG9DataArrayE, i32 0, inrange i32 0, i32 2), ptr %9, align 8, !dbg !3573
  %11 = getelementptr inbounds %"struct.ISG::DataArray", ptr %9, i32 0, i32 1, !dbg !3574
  %12 = load i32, ptr %7, align 4, !dbg !3575
  store i32 %12, ptr %11, align 8, !dbg !3574
  %13 = getelementptr inbounds %"struct.ISG::DataArray", ptr %9, i32 0, i32 2, !dbg !3576
  %14 = load i32, ptr %8, align 4, !dbg !3577
  store i32 %14, ptr %13, align 4, !dbg !3576
  %15 = getelementptr inbounds %"struct.ISG::DataArray", ptr %9, i32 0, i32 3, !dbg !3578
  store i32 0, ptr %15, align 8, !dbg !3578
  %16 = getelementptr inbounds %"struct.ISG::DataArray", ptr %9, i32 0, i32 5, !dbg !3579
  store ptr null, ptr %16, align 8, !dbg !3579
  %17 = getelementptr inbounds %"struct.ISG::DataArray", ptr %9, i32 0, i32 6, !dbg !3580
  store i32 2, ptr %17, align 8, !dbg !3580
  ret void, !dbg !3581
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8BaseMesh9setCoordsEPNS_9DataArrayE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1) #5 comdat align 2 !dbg !3582 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3583, metadata !DIExpression()), !dbg !3584
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3585, metadata !DIExpression()), !dbg !3586
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 2, !dbg !3587
  call void @_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %5), !dbg !3588
  %7 = load ptr, ptr %4, align 8, !dbg !3589
  %8 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 2, !dbg !3590
  store ptr %7, ptr %8, align 8, !dbg !3591
  %9 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 2, !dbg !3592
  %10 = load ptr, ptr %9, align 8, !dbg !3592
  call void @_ZN3ISG4Node9addParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %5), !dbg !3593
  ret void, !dbg !3594
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9DataArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !3595 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3596, metadata !DIExpression()), !dbg !3597
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG9DataArrayE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !3598
  invoke void @_ZN3ISG9DataArray5clearEv(ptr noundef nonnull align 8 dereferenceable(68) %3)
          to label %4 unwind label %5, !dbg !3599

4:                                                ; preds = %1
  call void @_ZN3ISG4NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #3, !dbg !3601
  ret void, !dbg !3602

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null, !dbg !3599
  %7 = extractvalue { ptr, i32 } %6, 0, !dbg !3599
  call void @__clang_call_terminate(ptr %7) #19, !dbg !3599
  unreachable, !dbg !3599
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9DataArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #11 comdat align 2 !dbg !3603 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3604, metadata !DIExpression()), !dbg !3605
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG9DataArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %3) #3, !dbg !3606
  call void @_ZdlPv(ptr noundef %3) #21, !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9DataArray5clearEv(ptr noundef nonnull align 8 dereferenceable(68) %0) #7 comdat align 2 !dbg !3608 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3609, metadata !DIExpression()), !dbg !3610
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 6, !dbg !3611
  %5 = load i32, ptr %4, align 8, !dbg !3611
  %6 = icmp eq i32 %5, 1, !dbg !3613
  br i1 %6, label %7, label %14, !dbg !3614

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 5, !dbg !3615
  %9 = load ptr, ptr %8, align 8, !dbg !3615
  %10 = icmp ne ptr %9, null, !dbg !3616
  br i1 %10, label %11, label %14, !dbg !3617

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 5, !dbg !3618
  %13 = load ptr, ptr %12, align 8, !dbg !3618
  call void @free(ptr noundef %13) #3, !dbg !3619
  br label %14, !dbg !3619

14:                                               ; preds = %11, %7, %1
  %15 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 5, !dbg !3620
  store ptr null, ptr %15, align 8, !dbg !3621
  %16 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 3, !dbg !3622
  store i32 0, ptr %16, align 8, !dbg !3623
  %17 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 4, !dbg !3624
  store i32 0, ptr %17, align 4, !dbg !3625
  %18 = getelementptr inbounds %"struct.ISG::DataArray", ptr %3, i32 0, i32 6, !dbg !3626
  store i32 2, ptr %18, align 8, !dbg !3627
  ret void, !dbg !3628
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #5 comdat align 2 !dbg !3629 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3636, metadata !DIExpression()), !dbg !3637
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3638, metadata !DIExpression()), !dbg !3639
  %5 = load ptr, ptr %3, align 8, !dbg !3640
  %6 = load ptr, ptr %5, align 8, !dbg !3640
  %7 = icmp eq ptr %6, null, !dbg !3642
  br i1 %7, label %8, label %9, !dbg !3643

8:                                                ; preds = %2
  br label %28, !dbg !3644

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !3645
  %11 = load ptr, ptr %10, align 8, !dbg !3645
  %12 = load ptr, ptr %4, align 8, !dbg !3646
  call void @_ZN3ISG4Node12removeParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %12), !dbg !3647
  %13 = load ptr, ptr %3, align 8, !dbg !3648
  %14 = load ptr, ptr %13, align 8, !dbg !3648
  %15 = getelementptr inbounds %"class.ISG::Node", ptr %14, i32 0, i32 2, !dbg !3650
  %16 = call noundef i64 @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !3651
  %17 = icmp eq i64 %16, 0, !dbg !3652
  br i1 %17, label %18, label %28, !dbg !3653

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8, !dbg !3654
  %20 = load ptr, ptr %19, align 8, !dbg !3654
  %21 = icmp eq ptr %20, null, !dbg !3656
  br i1 %21, label %26, label %22, !dbg !3656

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !dbg !3656
  %24 = getelementptr inbounds ptr, ptr %23, i64 1, !dbg !3656
  %25 = load ptr, ptr %24, align 8, !dbg !3656
  call void %25(ptr noundef nonnull align 8 dereferenceable(68) %20) #3, !dbg !3656
  br label %26, !dbg !3656

26:                                               ; preds = %22, %18
  %27 = load ptr, ptr %3, align 8, !dbg !3657
  store ptr null, ptr %27, align 8, !dbg !3658
  br label %28, !dbg !3659

28:                                               ; preds = %8, %26, %9
  ret void, !dbg !3660
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4Node12removeParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5 comdat align 2 !dbg !3661 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3662, metadata !DIExpression()), !dbg !3663
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3664, metadata !DIExpression()), !dbg !3665
  %11 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3666, metadata !DIExpression()), !dbg !3667
  %12 = getelementptr inbounds %"class.ISG::Node", ptr %11, i32 0, i32 2, !dbg !3668
  %13 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #3, !dbg !3669
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3669
  store ptr %13, ptr %14, align 8, !dbg !3669
  %15 = getelementptr inbounds %"class.ISG::Node", ptr %11, i32 0, i32 2, !dbg !3670
  %16 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #3, !dbg !3671
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3671
  store ptr %16, ptr %17, align 8, !dbg !3671
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3672
  %19 = load ptr, ptr %18, align 8, !dbg !3672
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3672
  %21 = load ptr, ptr %20, align 8, !dbg !3672
  %22 = call ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_(ptr %19, ptr %21, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !3672
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0, !dbg !3672
  store ptr %22, ptr %23, align 8, !dbg !3672
  %24 = getelementptr inbounds %"class.ISG::Node", ptr %11, i32 0, i32 2, !dbg !3673
  %25 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %24) #3, !dbg !3673
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3673
  store ptr %25, ptr %26, align 8, !dbg !3673
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !3673
  br i1 %27, label %28, label %29, !dbg !3673

28:                                               ; preds = %2
  br label %31, !dbg !3673

29:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.15, i32 noundef 65, ptr noundef @__PRETTY_FUNCTION__._ZN3ISG4Node12removeParentEPS0_) #19, !dbg !3673
  unreachable, !dbg !3673

30:                                               ; No predecessors!
  br label %31, !dbg !3673

31:                                               ; preds = %30, %28
  %32 = getelementptr inbounds %"class.ISG::Node", ptr %11, i32 0, i32 2, !dbg !3674
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2IPS3_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISC_SB_EE7__valueES8_E6__typeEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !3675
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %9, i32 0, i32 0, !dbg !3676
  %34 = load ptr, ptr %33, align 8, !dbg !3676
  %35 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr %34), !dbg !3676
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !3676
  store ptr %35, ptr %36, align 8, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3678 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3679, metadata !DIExpression()), !dbg !3680
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3681, metadata !DIExpression()), !dbg !3682
  %5 = load ptr, ptr %3, align 8, !dbg !3683
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !3684
  %7 = load ptr, ptr %6, align 8, !dbg !3684
  %8 = load ptr, ptr %4, align 8, !dbg !3685
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !3686
  %10 = load ptr, ptr %9, align 8, !dbg !3686
  %11 = icmp ne ptr %7, %10, !dbg !3687
  ret i1 %11, !dbg !3688
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) #5 comdat align 2 !dbg !3689 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %4, i32 0, i32 0
  store ptr %1, ptr %9, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3692, metadata !DIExpression()), !dbg !3693
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !3694
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3694
  store ptr %11, ptr %12, align 8, !dbg !3694
  %13 = call ptr @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #3, !dbg !3695
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %8, i32 0, i32 0, !dbg !3695
  store ptr %13, ptr %14, align 8, !dbg !3695
  %15 = call noundef i64 @_ZN9__gnu_cxxmiIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !3696
  %16 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %15) #3, !dbg !3697
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3697
  store ptr %16, ptr %17, align 8, !dbg !3697
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3698
  %19 = load ptr, ptr %18, align 8, !dbg !3698
  %20 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %19), !dbg !3698
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3698
  store ptr %20, ptr %21, align 8, !dbg !3698
  %22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3699
  %23 = load ptr, ptr %22, align 8, !dbg !3699
  ret ptr %23, !dbg !3699
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2IPS3_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISC_SB_EE7__valueES8_E6__typeEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 !dbg !3700 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3708
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3709, metadata !DIExpression()), !dbg !3710
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %5, i32 0, i32 0, !dbg !3711
  %7 = load ptr, ptr %4, align 8, !dbg !3712
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #3, !dbg !3713
  %9 = load ptr, ptr %8, align 8, !dbg !3713
  store ptr %9, ptr %6, align 8, !dbg !3711
  ret void, !dbg !3714
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) #5 comdat align 2 !dbg !3715 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0
  store ptr %1, ptr %12, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3718, metadata !DIExpression()), !dbg !3719
  %13 = load ptr, ptr %5, align 8
  %14 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #3, !dbg !3720
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3720
  store ptr %14, ptr %15, align 8, !dbg !3720
  %16 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #3, !dbg !3722
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3722
  store ptr %16, ptr %17, align 8, !dbg !3722
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #3, !dbg !3723
  br i1 %18, label %19, label %32, !dbg !3724

19:                                               ; preds = %2
  %20 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #3, !dbg !3725
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3725
  store ptr %20, ptr %21, align 8, !dbg !3725
  %22 = call ptr @_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #3, !dbg !3725
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !3725
  store ptr %22, ptr %23, align 8, !dbg !3725
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %4, i64 8, i1 false), !dbg !3725
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3725
  %25 = load ptr, ptr %24, align 8, !dbg !3725
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !3725
  %27 = load ptr, ptr %26, align 8, !dbg !3725
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !3725
  %29 = load ptr, ptr %28, align 8, !dbg !3725
  %30 = call ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_(ptr %25, ptr %27, ptr %29), !dbg !3725
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !3725
  store ptr %30, ptr %31, align 8, !dbg !3725
  br label %32, !dbg !3725

32:                                               ; preds = %19, %2
  %33 = getelementptr inbounds %"struct.std::_Vector_base", ptr %13, i32 0, i32 0, !dbg !3726
  %34 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %33, i32 0, i32 1, !dbg !3727
  %35 = load ptr, ptr %34, align 8, !dbg !3728
  %36 = getelementptr inbounds ptr, ptr %35, i32 -1, !dbg !3728
  store ptr %36, ptr %34, align 8, !dbg !3728
  %37 = getelementptr inbounds %"struct.std::_Vector_base", ptr %13, i32 0, i32 0, !dbg !3729
  %38 = getelementptr inbounds %"struct.std::_Vector_base", ptr %13, i32 0, i32 0, !dbg !3730
  %39 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %38, i32 0, i32 1, !dbg !3731
  %40 = load ptr, ptr %39, align 8, !dbg !3731
  call void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE7destroyIS2_EEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef %40) #3, !dbg !3732
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 8, i1 false), !dbg !3733
  %41 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3734
  %42 = load ptr, ptr %41, align 8, !dbg !3734
  ret ptr %42, !dbg !3734
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #7 comdat align 2 !dbg !3735 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3736, metadata !DIExpression()), !dbg !3737
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3738, metadata !DIExpression()), !dbg !3739
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0, !dbg !3740
  %9 = load ptr, ptr %8, align 8, !dbg !3740
  %10 = load i64, ptr %5, align 8, !dbg !3741
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !3742
  store ptr %11, ptr %6, align 8, !dbg !3740
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !3743
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3744
  %13 = load ptr, ptr %12, align 8, !dbg !3744
  ret ptr %13, !dbg !3744
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat !dbg !3745 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3749, metadata !DIExpression()), !dbg !3750
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3751, metadata !DIExpression()), !dbg !3752
  %5 = load ptr, ptr %3, align 8, !dbg !3753
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #3, !dbg !3754
  %7 = load ptr, ptr %6, align 8, !dbg !3754
  %8 = load ptr, ptr %4, align 8, !dbg !3755
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #3, !dbg !3756
  %10 = load ptr, ptr %9, align 8, !dbg !3756
  %11 = ptrtoint ptr %7 to i64, !dbg !3757
  %12 = ptrtoint ptr %10 to i64, !dbg !3757
  %13 = sub i64 %11, %12, !dbg !3757
  %14 = sdiv exact i64 %13, 8, !dbg !3757
  ret i64 %14, !dbg !3758
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7 comdat align 2 !dbg !3759 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3760, metadata !DIExpression()), !dbg !3761
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !3762
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ISG::Node *, std::allocator<ISG::Node *>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !3763
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #3, !dbg !3764
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %2, i32 0, i32 0, !dbg !3765
  %8 = load ptr, ptr %7, align 8, !dbg !3765
  ret ptr %8, !dbg !3765
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) #5 comdat !dbg !3766 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %14, align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0
  store ptr %2, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false), !dbg !3778
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !3779
  %17 = load ptr, ptr %16, align 8, !dbg !3779
  %18 = call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEET_SA_(ptr %17), !dbg !3779
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3779
  store ptr %18, ptr %19, align 8, !dbg !3779
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %6, i64 8, i1 false), !dbg !3780
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !3781
  %21 = load ptr, ptr %20, align 8, !dbg !3781
  %22 = call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEET_SA_(ptr %21), !dbg !3781
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !3781
  store ptr %22, ptr %23, align 8, !dbg !3781
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %7, i64 8, i1 false), !dbg !3782
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3783
  %25 = load ptr, ptr %24, align 8, !dbg !3783
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !3783
  %27 = load ptr, ptr %26, align 8, !dbg !3783
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %12, i32 0, i32 0, !dbg !3783
  %29 = load ptr, ptr %28, align 8, !dbg !3783
  %30 = call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET1_T0_SB_SA_(ptr %25, ptr %27, ptr %29), !dbg !3783
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !3783
  store ptr %30, ptr %31, align 8, !dbg !3783
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !3784
  %33 = load ptr, ptr %32, align 8, !dbg !3784
  ret ptr %33, !dbg !3784
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE7destroyIS2_EEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #7 comdat align 2 !dbg !3785 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3790, metadata !DIExpression()), !dbg !3791
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3792, metadata !DIExpression()), !dbg !3793
  %5 = load ptr, ptr %3, align 8, !dbg !3794
  %6 = load ptr, ptr %4, align 8, !dbg !3795
  call void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) #3, !dbg !3796
  ret void, !dbg !3797
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) #5 comdat !dbg !3798 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %5, i32 0, i32 0
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %7, i32 0, i32 0
  store ptr %2, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3801, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3803, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3805, metadata !DIExpression()), !dbg !3806
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %7, i64 8, i1 false), !dbg !3807
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false), !dbg !3808
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %9, i32 0, i32 0, !dbg !3809
  %16 = load ptr, ptr %15, align 8, !dbg !3809
  %17 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %16) #3, !dbg !3809
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 8, i1 false), !dbg !3810
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %10, i32 0, i32 0, !dbg !3811
  %19 = load ptr, ptr %18, align 8, !dbg !3811
  %20 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %19) #3, !dbg !3811
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 8, i1 false), !dbg !3812
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %11, i32 0, i32 0, !dbg !3813
  %22 = load ptr, ptr %21, align 8, !dbg !3813
  %23 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %22) #3, !dbg !3813
  %24 = call noundef ptr @_ZSt14__copy_move_a1ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_(ptr noundef %17, ptr noundef %20, ptr noundef %23), !dbg !3814
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %8, i32 0, i32 0, !dbg !3815
  %26 = load ptr, ptr %25, align 8, !dbg !3815
  %27 = call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES5_ET_SA_T0_(ptr %26, ptr noundef %24), !dbg !3815
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !3815
  store ptr %27, ptr %28, align 8, !dbg !3815
  %29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0, !dbg !3816
  %30 = load ptr, ptr %29, align 8, !dbg !3816
  ret ptr %30, !dbg !3816
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEET_SA_(ptr %0) #7 comdat !dbg !3817 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3821, metadata !DIExpression()), !dbg !3822
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 8, i1 false), !dbg !3823
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0, !dbg !3824
  %6 = load ptr, ptr %5, align 8, !dbg !3824
  ret ptr %6, !dbg !3824
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES5_ET_SA_T0_(ptr %0, ptr noundef %1) #7 comdat !dbg !3825 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %4, i32 0, i32 0
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3831, metadata !DIExpression()), !dbg !3832
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3833, metadata !DIExpression()), !dbg !3834
  %8 = load ptr, ptr %5, align 8, !dbg !3835
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false), !dbg !3836
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %6, i32 0, i32 0, !dbg !3837
  %10 = load ptr, ptr %9, align 8, !dbg !3837
  %11 = call noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %10) #3, !dbg !3837
  %12 = ptrtoint ptr %8 to i64, !dbg !3838
  %13 = ptrtoint ptr %11 to i64, !dbg !3838
  %14 = sub i64 %12, %13, !dbg !3838
  %15 = sdiv exact i64 %14, 8, !dbg !3838
  %16 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %15) #3, !dbg !3839
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3839
  store ptr %16, ptr %17, align 8, !dbg !3839
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %3, i32 0, i32 0, !dbg !3840
  %19 = load ptr, ptr %18, align 8, !dbg !3840
  ret ptr %19, !dbg !3840
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 comdat !dbg !3841 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3847, metadata !DIExpression()), !dbg !3848
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3849, metadata !DIExpression()), !dbg !3850
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3851, metadata !DIExpression()), !dbg !3852
  %7 = load ptr, ptr %4, align 8, !dbg !3853
  %8 = load ptr, ptr %5, align 8, !dbg !3854
  %9 = load ptr, ptr %6, align 8, !dbg !3855
  %10 = call noundef ptr @_ZSt14__copy_move_a2ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_(ptr noundef %7, ptr noundef %8, ptr noundef %9), !dbg !3856
  ret ptr %10, !dbg !3857
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) #7 comdat !dbg !3858 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %2, i32 0, i32 0
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3861, metadata !DIExpression()), !dbg !3862
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #3, !dbg !3863
  %5 = load ptr, ptr %4, align 8, !dbg !3863
  ret ptr %5, !dbg !3864
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 comdat !dbg !3865 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3866, metadata !DIExpression()), !dbg !3867
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3868, metadata !DIExpression()), !dbg !3869
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3870, metadata !DIExpression()), !dbg !3871
  %7 = load ptr, ptr %4, align 8, !dbg !3872
  %8 = load ptr, ptr %5, align 8, !dbg !3873
  %9 = load ptr, ptr %6, align 8, !dbg !3874
  %10 = call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ISG4NodeEEEPT_PKS6_S9_S7_(ptr noundef %7, ptr noundef %8, ptr noundef %9), !dbg !3875
  ret ptr %10, !dbg !3876
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ISG4NodeEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7 comdat align 2 !dbg !3877 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3885, metadata !DIExpression()), !dbg !3886
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3887, metadata !DIExpression()), !dbg !3888
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3889, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3891, metadata !DIExpression()), !dbg !3893
  %8 = load ptr, ptr %5, align 8, !dbg !3894
  %9 = load ptr, ptr %4, align 8, !dbg !3895
  %10 = ptrtoint ptr %8 to i64, !dbg !3896
  %11 = ptrtoint ptr %9 to i64, !dbg !3896
  %12 = sub i64 %10, %11, !dbg !3896
  %13 = sdiv exact i64 %12, 8, !dbg !3896
  store i64 %13, ptr %7, align 8, !dbg !3893
  %14 = load i64, ptr %7, align 8, !dbg !3897
  %15 = icmp ne i64 %14, 0, !dbg !3897
  br i1 %15, label %16, label %21, !dbg !3899

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !dbg !3900
  %18 = load ptr, ptr %4, align 8, !dbg !3901
  %19 = load i64, ptr %7, align 8, !dbg !3902
  %20 = mul i64 8, %19, !dbg !3903
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %17, ptr align 8 %18, i64 %20, i1 false), !dbg !3904
  br label %21, !dbg !3904

21:                                               ; preds = %16, %3
  %22 = load ptr, ptr %6, align 8, !dbg !3905
  %23 = load i64, ptr %7, align 8, !dbg !3906
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23, !dbg !3907
  ret ptr %24, !dbg !3908
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #7 comdat align 2 !dbg !3909 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3913, metadata !DIExpression()), !dbg !3914
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3915, metadata !DIExpression()), !dbg !3916
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !3917
  ret void, !dbg !3918
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat align 2 !dbg !3919 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3920, metadata !DIExpression()), !dbg !3922
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %3, i32 0, i32 0, !dbg !3923
  ret ptr %4, !dbg !3924
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 !dbg !3925 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3926, metadata !DIExpression()), !dbg !3927
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3928, metadata !DIExpression()), !dbg !3929
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", ptr %5, i32 0, i32 0, !dbg !3930
  %7 = load ptr, ptr %4, align 8, !dbg !3931
  %8 = load ptr, ptr %7, align 8, !dbg !3931
  store ptr %8, ptr %6, align 8, !dbg !3930
  ret void, !dbg !3932
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #5 comdat !dbg !3933 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3937, metadata !DIExpression()), !dbg !3938
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3939, metadata !DIExpression()), !dbg !3940
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3941, metadata !DIExpression()), !dbg !3942
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3943, metadata !DIExpression()), !dbg !3944
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i32 %5, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3947, metadata !DIExpression()), !dbg !3948
  %14 = load ptr, ptr %7, align 8, !dbg !3949
  %15 = icmp ne ptr %14, null, !dbg !3949
  br i1 %15, label %16, label %17, !dbg !3949

16:                                               ; preds = %6
  br label %19, !dbg !3949

17:                                               ; preds = %6
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.8, i32 noundef 204, ptr noundef @__PRETTY_FUNCTION__._Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags) #19, !dbg !3949
  unreachable, !dbg !3949

18:                                               ; No predecessors!
  br label %19, !dbg !3949

19:                                               ; preds = %18, %16
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3950, metadata !DIExpression()), !dbg !3951
  %20 = load ptr, ptr %7, align 8, !dbg !3952
  store ptr %20, ptr %13, align 8, !dbg !3951
  %21 = load ptr, ptr %13, align 8, !dbg !3953
  %22 = icmp ne ptr %21, null, !dbg !3953
  br i1 %22, label %23, label %24, !dbg !3953

23:                                               ; preds = %19
  br label %26, !dbg !3953

24:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.8, i32 noundef 206, ptr noundef @__PRETTY_FUNCTION__._Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags) #19, !dbg !3953
  unreachable, !dbg !3953

25:                                               ; No predecessors!
  br label %26, !dbg !3953

26:                                               ; preds = %25, %23
  %27 = load i32, ptr %12, align 4, !dbg !3954
  %28 = and i32 %27, 1, !dbg !3956
  %29 = icmp eq i32 %28, 1, !dbg !3957
  br i1 %29, label %30, label %36, !dbg !3958

30:                                               ; preds = %26
  %31 = load ptr, ptr %13, align 8, !dbg !3959
  %32 = load i32, ptr %8, align 4, !dbg !3961
  %33 = load i32, ptr %9, align 4, !dbg !3962
  %34 = load ptr, ptr %10, align 8, !dbg !3963
  %35 = load i32, ptr %11, align 4, !dbg !3964
  call void @_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE(ptr noundef nonnull align 8 dereferenceable(68) %31, i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef 0), !dbg !3965
  br label %42, !dbg !3966

36:                                               ; preds = %26
  %37 = load ptr, ptr %13, align 8, !dbg !3967
  %38 = load i32, ptr %8, align 4, !dbg !3969
  %39 = load i32, ptr %9, align 4, !dbg !3970
  %40 = load ptr, ptr %10, align 8, !dbg !3971
  %41 = load i32, ptr %11, align 4, !dbg !3972
  call void @_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE(ptr noundef nonnull align 8 dereferenceable(68) %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef 1), !dbg !3973
  br label %42

42:                                               ; preds = %36, %30
  ret void, !dbg !3974
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #5 comdat align 2 !dbg !3975 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca i64, align 8
  store ptr %0, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3976, metadata !DIExpression()), !dbg !3977
  store i32 %1, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3978, metadata !DIExpression()), !dbg !3979
  store i32 %2, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !3980, metadata !DIExpression()), !dbg !3981
  store ptr %3, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i32 %4, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i32 %5, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !3986, metadata !DIExpression()), !dbg !3987
  %30 = load ptr, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !3988, metadata !DIExpression()), !dbg !3992
  %31 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 2, !dbg !3993
  store ptr %31, ptr %28, align 8, !dbg !3992
  %32 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 1, !dbg !3994
  %33 = load i32, ptr %32, align 8, !dbg !3994
  %34 = load i32, ptr %23, align 4, !dbg !3996
  %35 = icmp ne i32 %33, %34, !dbg !3997
  br i1 %35, label %36, label %51, !dbg !3998

36:                                               ; preds = %6
  %37 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 1, !dbg !3999
  %38 = load i32, ptr %37, align 8, !dbg !3999
  %39 = icmp eq i32 %38, 0, !dbg !4002
  br i1 %39, label %40, label %43, !dbg !4003

40:                                               ; preds = %36
  %41 = load i32, ptr %23, align 4, !dbg !4004
  %42 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 1, !dbg !4005
  store i32 %41, ptr %42, align 8, !dbg !4006
  br label %50, !dbg !4007

43:                                               ; preds = %36
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.9), !dbg !4008
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef @.str.18), !dbg !4008
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef @.str.11), !dbg !4008
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef @__PRETTY_FUNCTION__._ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE), !dbg !4008
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @.str.12), !dbg !4008
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !4008
  call void @exit(i32 noundef 1) #19, !dbg !4008
  unreachable, !dbg !4008

50:                                               ; preds = %40
  br label %51, !dbg !4010

51:                                               ; preds = %50, %6
  %52 = load ptr, ptr %28, align 8, !dbg !4011
  %53 = load i32, ptr %52, align 4, !dbg !4011
  %54 = icmp eq i32 %53, 0, !dbg !4013
  br i1 %54, label %55, label %58, !dbg !4014

55:                                               ; preds = %51
  %56 = load i32, ptr %24, align 4, !dbg !4015
  %57 = load ptr, ptr %28, align 8, !dbg !4016
  store i32 %56, ptr %57, align 4, !dbg !4017
  br label %58, !dbg !4016

58:                                               ; preds = %55, %51
  call void @llvm.dbg.declare(metadata ptr %29, metadata !4018, metadata !DIExpression()), !dbg !4019
  %59 = load i32, ptr %26, align 4, !dbg !4020
  %60 = load ptr, ptr %28, align 8, !dbg !4021
  %61 = load i32, ptr %60, align 4, !dbg !4021
  %62 = zext i32 %61 to i64, !dbg !4022
  %63 = getelementptr inbounds [11 x i32], ptr @_ZN3ISGL12RTDataSizeOfE, i64 0, i64 %62, !dbg !4022
  %64 = load i32, ptr %63, align 4, !dbg !4022
  %65 = mul nsw i32 %59, %64, !dbg !4023
  %66 = sext i32 %65 to i64, !dbg !4020
  store i64 %66, ptr %29, align 8, !dbg !4019
  %67 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 5, !dbg !4024
  %68 = load ptr, ptr %67, align 8, !dbg !4024
  %69 = load i64, ptr %29, align 8, !dbg !4025
  %70 = call ptr @realloc(ptr noundef %68, i64 noundef %69) #24, !dbg !4026
  %71 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 5, !dbg !4027
  store ptr %70, ptr %71, align 8, !dbg !4028
  %72 = load i64, ptr %29, align 8, !dbg !4029
  %73 = trunc i64 %72 to i32, !dbg !4029
  %74 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 4, !dbg !4030
  store i32 %73, ptr %74, align 4, !dbg !4031
  %75 = load i32, ptr %26, align 4, !dbg !4032
  %76 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 3, !dbg !4033
  store i32 %75, ptr %76, align 8, !dbg !4034
  %77 = load ptr, ptr %28, align 8, !dbg !4035
  %78 = load i32, ptr %77, align 4, !dbg !4035
  %79 = load i32, ptr %24, align 4, !dbg !4037
  %80 = icmp eq i32 %78, %79, !dbg !4038
  br i1 %80, label %81, label %86, !dbg !4039

81:                                               ; preds = %58
  %82 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 5, !dbg !4040
  %83 = load ptr, ptr %82, align 8, !dbg !4040
  %84 = load ptr, ptr %25, align 8, !dbg !4041
  %85 = load i64, ptr %29, align 8, !dbg !4042
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %84, i64 %85, i1 false), !dbg !4043
  br label %160, !dbg !4043

86:                                               ; preds = %58
  %87 = load ptr, ptr %28, align 8, !dbg !4044
  %88 = load i32, ptr %87, align 4, !dbg !4044
  switch i32 %88, label %152 [
    i32 10, label %89
  ], !dbg !4045

89:                                               ; preds = %86
  %90 = load i32, ptr %24, align 4, !dbg !4046
  switch i32 %90, label %144 [
    i32 9, label %91
  ], !dbg !4048

91:                                               ; preds = %89
  %92 = getelementptr inbounds %"struct.ISG::DataArray", ptr %30, i32 0, i32 5, !dbg !4049
  %93 = load ptr, ptr %92, align 8, !dbg !4049
  %94 = load ptr, ptr %25, align 8, !dbg !4051
  %95 = load i32, ptr %26, align 4, !dbg !4052
  store ptr %93, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !4053, metadata !DIExpression()), !dbg !4062
  store ptr %94, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i32 %95, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.declare(metadata ptr %21, metadata !4068, metadata !DIExpression()), !dbg !4070
  store i32 0, ptr %21, align 4, !dbg !4070
  br label %96, !dbg !4071

96:                                               ; preds = %140, %91
  %97 = load i32, ptr %21, align 4, !dbg !4072
  %98 = load i32, ptr %20, align 4, !dbg !4074
  %99 = icmp slt i32 %97, %98, !dbg !4075
  br i1 %99, label %100, label %143, !dbg !4076

100:                                              ; preds = %96
  %101 = load ptr, ptr %18, align 8, !dbg !4077
  %102 = load i32, ptr %21, align 4, !dbg !4078
  %103 = sext i32 %102 to i64, !dbg !4077
  %104 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %101, i64 %103, !dbg !4077
  %105 = load ptr, ptr %19, align 8, !dbg !4079
  %106 = load i32, ptr %21, align 4, !dbg !4080
  %107 = sext i32 %106 to i64, !dbg !4079
  %108 = getelementptr inbounds %"class.RTTL::RTVec_t.1", ptr %105, i64 %107, !dbg !4079
  store ptr %104, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4081, metadata !DIExpression()), !dbg !4087
  store ptr %108, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4089, metadata !DIExpression()), !dbg !4090
  %109 = load ptr, ptr %17, align 8, !dbg !4091
  %110 = load ptr, ptr %16, align 8, !dbg !4092
  store ptr %110, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4093, metadata !DIExpression()), !dbg !4101
  store ptr %109, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4103, metadata !DIExpression()), !dbg !4104
  %111 = load ptr, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4105, metadata !DIExpression()), !dbg !4107
  %112 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4RTTL7RTVec_tILi3EfLi0EEcvRNS_8RTData_tILi3EfLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(12) %111), !dbg !4108
  store ptr %112, ptr %14, align 8, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4109, metadata !DIExpression()), !dbg !4112
  %113 = load ptr, ptr %13, align 8, !dbg !4113
  %114 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK4RTTL7RTVec_tILi3EfLi0EEcvRKNS_8RTData_tILi3EfLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(12) %113), !dbg !4113
  store ptr %114, ptr %15, align 8, !dbg !4112
  %115 = load ptr, ptr %14, align 8, !dbg !4114
  %116 = load ptr, ptr %15, align 8, !dbg !4115
  store ptr %115, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4116, metadata !DIExpression()), !dbg !4124
  store ptr %116, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4126, metadata !DIExpression()), !dbg !4127
  %117 = load ptr, ptr %9, align 8
  %118 = call noundef i32 @_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv(), !dbg !4128
  %119 = load ptr, ptr %10, align 8, !dbg !4128
  %120 = call noundef i32 @_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv(), !dbg !4128
  %121 = icmp sle i32 %118, %120, !dbg !4128
  br i1 %121, label %122, label %123, !dbg !4128

122:                                              ; preds = %100
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4129, metadata !DIExpression()), !dbg !4131
  store i32 0, ptr %11, align 4, !dbg !4131
  br label %124, !dbg !4132

123:                                              ; preds = %100
  call void @__assert_fail(ptr noundef @.str.21, ptr noundef @.str.22, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi3EfLi0EE6assignILi3EfLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #19, !dbg !4128
  unreachable, !dbg !4128

124:                                              ; preds = %127, %122
  %125 = load i32, ptr %11, align 4, !dbg !4133
  %126 = icmp slt i32 %125, 3, !dbg !4135
  br i1 %126, label %127, label %140, !dbg !4136

127:                                              ; preds = %124
  %128 = load ptr, ptr %10, align 8, !dbg !4137
  %129 = load i32, ptr %11, align 4, !dbg !4138
  store ptr %128, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4139, metadata !DIExpression()), !dbg !4142
  store i32 %129, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4144, metadata !DIExpression()), !dbg !4145
  %130 = load ptr, ptr %7, align 8
  %131 = load i32, ptr %8, align 4, !dbg !4146
  %132 = sext i32 %131 to i64, !dbg !4147
  %133 = getelementptr inbounds [3 x float], ptr %130, i64 0, i64 %132, !dbg !4147
  %134 = load float, ptr %133, align 4, !dbg !4147
  %135 = load i32, ptr %11, align 4, !dbg !4148
  %136 = sext i32 %135 to i64, !dbg !4149
  %137 = getelementptr inbounds [3 x float], ptr %117, i64 0, i64 %136, !dbg !4149
  store float %134, ptr %137, align 4, !dbg !4150
  %138 = load i32, ptr %11, align 4, !dbg !4151
  %139 = add nsw i32 %138, 1, !dbg !4151
  store i32 %139, ptr %11, align 4, !dbg !4151
  br label %124, !dbg !4152, !llvm.loop !4153

140:                                              ; preds = %124
  %141 = load i32, ptr %21, align 4, !dbg !4155
  %142 = add nsw i32 %141, 1, !dbg !4155
  store i32 %142, ptr %21, align 4, !dbg !4155
  br label %96, !dbg !4156, !llvm.loop !4157

143:                                              ; preds = %96
  br label %151, !dbg !4159

144:                                              ; preds = %89
  %145 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.9), !dbg !4160
  %146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef @.str.19), !dbg !4160
  %147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %146, ptr noundef @.str.11), !dbg !4160
  %148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef @__PRETTY_FUNCTION__._ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE), !dbg !4160
  %149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef @.str.12), !dbg !4160
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !4160
  call void @exit(i32 noundef 1) #19, !dbg !4160
  unreachable, !dbg !4160

151:                                              ; preds = %143
  br label %159, !dbg !4162

152:                                              ; preds = %86
  %153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.9), !dbg !4163
  %154 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef @.str.20), !dbg !4163
  %155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef @.str.11), !dbg !4163
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %155, ptr noundef @__PRETTY_FUNCTION__._ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE), !dbg !4163
  %157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %156, ptr noundef @.str.12), !dbg !4163
  %158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !4163
  call void @exit(i32 noundef 1) #19, !dbg !4163
  unreachable, !dbg !4163

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %81
  ret void, !dbg !4165
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #18

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN4RTTL7RTVec_tILi3EfLi0EEcvRNS_8RTData_tILi3EfLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #7 comdat align 2 !dbg !4166 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4170, metadata !DIExpression()), !dbg !4171
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t.1", ptr %3, i32 0, i32 0, !dbg !4172
  ret ptr %4, !dbg !4173
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZNK4RTTL7RTVec_tILi3EfLi0EEcvRKNS_8RTData_tILi3EfLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #7 comdat align 2 !dbg !4174 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4179, metadata !DIExpression()), !dbg !4181
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t.1", ptr %3, i32 0, i32 0, !dbg !4182
  ret ptr %4, !dbg !4183
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv() #7 comdat align 2 !dbg !4184 {
  ret i32 3, !dbg !4185
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8BaseMesh10setIndicesEPNS_9DataArrayE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1) #5 comdat align 2 !dbg !4186 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4187, metadata !DIExpression()), !dbg !4188
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4190
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 1, !dbg !4191
  call void @_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %5), !dbg !4192
  %7 = load ptr, ptr %4, align 8, !dbg !4193
  %8 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 1, !dbg !4194
  store ptr %7, ptr %8, align 8, !dbg !4195
  %9 = getelementptr inbounds %"struct.ISG::BaseMesh", ptr %5, i32 0, i32 1, !dbg !4196
  %10 = load ptr, ptr %9, align 8, !dbg !4196
  call void @_ZN3ISG4Node9addParentEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %5), !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8RootNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #13 comdat align 2 !dbg !4199 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4200, metadata !DIExpression()), !dbg !4202
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG9GroupNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3), !dbg !4203
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG8RootNodeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !4204
  ret void, !dbg !4205
}

declare void @_Z6rtShowPN3ISG4NodeE(ptr noundef) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9GroupNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #13 comdat align 2 !dbg !4206 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4210, metadata !DIExpression()), !dbg !4211
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3), !dbg !4212
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG9GroupNodeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !4212
  %4 = getelementptr inbounds %"struct.ISG::GroupNode", ptr %3, i32 0, i32 1, !dbg !4212
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4212
  ret void, !dbg !4212
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8RootNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 !dbg !4213 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4215, metadata !DIExpression()), !dbg !4216
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG9GroupNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #3, !dbg !4217
  ret void, !dbg !4219
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG8RootNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 !dbg !4220 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4222
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG8RootNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #3, !dbg !4223
  call void @_ZdlPv(ptr noundef %3) #21, !dbg !4223
  ret void, !dbg !4223
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !dbg !4224 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4225, metadata !DIExpression()), !dbg !4226
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG4NodeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !4227
  %4 = getelementptr inbounds %"class.ISG::Node", ptr %3, i32 0, i32 2, !dbg !4228
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9GroupNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 !dbg !4230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4232, metadata !DIExpression()), !dbg !4233
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN3ISG9GroupNodeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !4234
  %4 = getelementptr inbounds %"struct.ISG::GroupNode", ptr %3, i32 0, i32 1, !dbg !4235
  call void @_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #3, !dbg !4235
  call void @_ZN3ISG4NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #3, !dbg !4235
  ret void, !dbg !4234
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3ISG9GroupNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 !dbg !4237 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4238, metadata !DIExpression()), !dbg !4239
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3ISG9GroupNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #3, !dbg !4240
  call void @_ZdlPv(ptr noundef %3) #21, !dbg !4240
  ret void, !dbg !4240
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_static_cube.cxx() #0 section ".text.startup" !dbg !4241 {
  call void @__cxx_global_var_init(), !dbg !4243
  call void @__cxx_global_var_init.1(), !dbg !4243
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(read) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { allocsize(0) }
attributes #24 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322}
!llvm.ident = !{!2323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !2313, line: 38, type: !2314, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !706, globals: !849, imports: !1007, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/test/api_static_cube/static_cube.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/LRT", checksumkind: CSK_MD5, checksum: "df49e1cb67cac61faaee48b2e8371f59")
!11 = !{!12, !28, !38, !42, !46, !56}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 282, baseType: !15, size: 32, elements: !16, identifier: "_ZTSN3ISG10DataFormatE")
!13 = !DIFile(filename: "RTTL/API/ISG.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bd8d965ee637ae20cb7fa2e028035776")
!14 = !DINamespace(name: "ISG", scope: null)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "RT_ANY_FORMAT", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "RT_UCHAR", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "RT_BYTE", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "RT_INT", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "RT_INT2", value: 4, isUnsigned: true)
!22 = !DIEnumerator(name: "RT_INT3", value: 5, isUnsigned: true)
!23 = !DIEnumerator(name: "RT_INT4", value: 6, isUnsigned: true)
!24 = !DIEnumerator(name: "RT_FLOAT", value: 7, isUnsigned: true)
!25 = !DIEnumerator(name: "RT_FLOAT2", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "RT_FLOAT3", value: 9, isUnsigned: true)
!27 = !DIEnumerator(name: "RT_FLOAT4", value: 10, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 123, baseType: !15, size: 32, elements: !30, identifier: "_ZTS14DataArrayFlags")
!29 = !DIFile(filename: "RTTL/API/rt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bf9a68cd91e3dd436b53dbb783d36fdf")
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DIEnumerator(name: "RT_PRIVATE", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "RT_PERSISTENT", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "RT_PERSISTENT_BIT", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "RT_FORCE_OVERWRITE", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "RT_NEW_ARRAY", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "RT_NEW_ARRAY_BIT", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "RT_FORCE_OVERWRITE_BIT", value: 2, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 45, baseType: !15, size: 32, elements: !39, identifier: "_ZTS15newroot_flags_t")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "RT_HIDDEN", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "RT_VISIBLE", value: 1, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 276, baseType: !15, size: 32, elements: !43, identifier: "_ZTSN3ISG8MeshTypeE")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "RT_TRIANGLE_MESH", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RT_QUAD_MESH", value: 1, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !13, line: 313, baseType: !15, size: 32, elements: !47, identifier: "_ZTSN3ISG12SemanticTypeE")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "RT_RAW_DATA", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "RT_COORDINATE", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "RT_COORDS", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "RT_VECTOR", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "RT_NORMAL", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "RT_TEXCOORD", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "RT_INDEX", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "RT_INDICES", value: 5, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !57, file: !13, line: 357, baseType: !15, size: 32, elements: !702, identifier: "_ZTSN3ISG9DataArray9OwnerTypeE")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DataArray", scope: !14, file: !13, line: 355, size: 576, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !58, vtableHolder: !60, identifier: "_ZTSN3ISG9DataArrayE")
!58 = !{!59, !681, !683, !685, !686, !687, !689, !691, !695, !698, !699}
!59 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !57, baseType: !60, extraData: i32 0)
!60 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Node", scope: !14, file: !13, line: 32, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !61, vtableHolder: !60, identifier: "_ZTSN3ISG4NodeE")
!61 = !{!62, !68, !69, !666, !670, !673, !674, !675, !676, !677, !680}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Node", scope: !13, file: !13, baseType: !63, size: 64, flags: DIFlagArtificial)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !60, file: !13, line: 34, baseType: !67, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !60, file: !13, line: 98, baseType: !70, size: 192, offset: 128, flags: DIFlagProtected)
!70 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<ISG::Node *, std::allocator<ISG::Node *> >", scope: !2, file: !71, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !72, templateParams: !664, identifier: "_ZTSSt6vectorIPN3ISG4NodeESaIS2_EE")
!71 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!72 = !{!73, !297, !315, !330, !331, !337, !340, !343, !347, !353, !357, !363, !368, !372, !375, !378, !381, !384, !389, !390, !394, !397, !400, !403, !406, !468, !526, !527, !528, !533, !538, !539, !540, !541, !542, !543, !544, !547, !548, !551, !552, !553, !554, !557, !558, !566, !573, !576, !577, !578, !581, !584, !585, !586, !589, !592, !595, !599, !600, !603, !606, !609, !612, !615, !618, !621, !622, !623, !624, !625, !628, !629, !632, !633, !634, !641, !644, !649, !652, !655, !658, !661}
!73 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !70, baseType: !74, flags: DIFlagProtected, extraData: i32 0)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<ISG::Node *, std::allocator<ISG::Node *> >", scope: !2, file: !71, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !75, templateParams: !296, identifier: "_ZTSSt12_Vector_baseIPN3ISG4NodeESaIS2_EE")
!75 = !{!76, !247, !252, !257, !261, !264, !269, !272, !275, !279, !282, !285, !288, !289, !292, !295}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !74, file: !71, line: 340, baseType: !77, size: 192)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !74, file: !71, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !78, identifier: "_ZTSNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implE")
!78 = !{!79, !202, !227, !231, !236, !240, !244}
!79 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !77, baseType: !80, extraData: i32 0)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !74, file: !71, line: 87, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !83, file: !82, line: 120, baseType: !201)
!82 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<ISG::Node *>", scope: !84, file: !82, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !149, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E6rebindIS3_EE")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<ISG::Node *>, ISG::Node *>", scope: !85, file: !82, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !86, templateParams: !198, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_EE")
!85 = !DINamespace(name: "__gnu_cxx", scope: null)
!86 = !{!87, !184, !187, !190, !194, !195, !196, !197}
!87 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !84, baseType: !88, extraData: i32 0)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<ISG::Node *> >", scope: !2, file: !89, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !90, templateParams: !182, identifier: "_ZTSSt16allocator_traitsISaIPN3ISG4NodeEEE")
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!90 = !{!91, !166, !170, !173, !179}
!91 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_m", scope: !88, file: !89, line: 463, type: !92, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !97, !165}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !88, file: !89, line: 420, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !88, file: !89, line: 414, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<ISG::Node *>", scope: !2, file: !100, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !101, templateParams: !149, identifier: "_ZTSSaIPN3ISG4NodeEE")
!100 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!101 = !{!102, !151, !155, !160, !164}
!102 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !99, baseType: !103, flags: DIFlagPublic, extraData: i32 0)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<ISG::Node *>", scope: !2, file: !104, line: 48, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!105 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<ISG::Node *>", scope: !85, file: !106, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !107, templateParams: !149, identifier: "_ZTSN9__gnu_cxx13new_allocatorIPN3ISG4NodeEEE")
!106 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!107 = !{!108, !112, !117, !118, !125, !133, !142, !145, !148}
!108 = !DISubprogram(name: "new_allocator", scope: !105, file: !106, line: 79, type: !109, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DISubprogram(name: "new_allocator", scope: !105, file: !106, line: 82, type: !113, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !111, !115}
!115 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!117 = !DISubprogram(name: "~new_allocator", scope: !105, file: !106, line: 89, type: !109, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!118 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7addressERS3_", scope: !105, file: !106, line: 92, type: !119, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !122, !123}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !105, file: !106, line: 62, baseType: !95, flags: DIFlagPublic)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !105, file: !106, line: 64, baseType: !124, flags: DIFlagPublic)
!124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !96, size: 64)
!125 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7addressERKS3_", scope: !105, file: !106, line: 96, type: !126, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !122, !131}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !105, file: !106, line: 63, baseType: !129, flags: DIFlagPublic)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !105, file: !106, line: 65, baseType: !132, flags: DIFlagPublic)
!132 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !130, size: 64)
!133 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8allocateEmPKv", scope: !105, file: !106, line: 103, type: !134, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{!95, !111, !136, !140}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !106, line: 59, baseType: !137, flags: DIFlagPublic)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !138, line: 280, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE10deallocateEPS3_m", scope: !105, file: !106, line: 132, type: !143, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !111, !95, !136}
!145 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8max_sizeEv", scope: !105, file: !106, line: 154, type: !146, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!136, !122}
!148 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv", scope: !105, file: !106, line: 197, type: !146, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!149 = !{!150}
!150 = !DITemplateTypeParameter(name: "_Tp", type: !96)
!151 = !DISubprogram(name: "allocator", scope: !99, file: !100, line: 156, type: !152, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!155 = !DISubprogram(name: "allocator", scope: !99, file: !100, line: 159, type: !156, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !154, !158}
!158 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!160 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIPN3ISG4NodeEEaSERKS2_", scope: !99, file: !100, line: 164, type: !161, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !154, !158}
!163 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !99, size: 64)
!164 = !DISubprogram(name: "~allocator", scope: !99, file: !100, line: 174, type: !152, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !89, line: 435, baseType: !137)
!166 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_mPKv", scope: !88, file: !89, line: 477, type: !167, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!94, !97, !165, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !89, line: 429, baseType: !140)
!170 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE10deallocateERS3_PS2_m", scope: !88, file: !89, line: 495, type: !171, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !97, !94, !165}
!173 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8max_sizeERKS3_", scope: !88, file: !89, line: 547, type: !174, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !88, file: !89, line: 435, baseType: !137)
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!179 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE37select_on_container_copy_constructionERKS3_", scope: !88, file: !89, line: 562, type: !180, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!98, !177}
!182 = !{!183}
!183 = !DITemplateTypeParameter(name: "_Alloc", type: !99)
!184 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E17_S_select_on_copyERKS4_", scope: !84, file: !82, line: 97, type: !185, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{!99, !158}
!187 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E10_S_on_swapERS4_S6_", scope: !84, file: !82, line: 100, type: !188, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !163, !163}
!190 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E27_S_propagate_on_copy_assignEv", scope: !84, file: !82, line: 103, type: !191, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!193}
!193 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!194 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E27_S_propagate_on_move_assignEv", scope: !84, file: !82, line: 106, type: !191, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!195 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E20_S_propagate_on_swapEv", scope: !84, file: !82, line: 109, type: !191, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!196 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E15_S_always_equalEv", scope: !84, file: !82, line: 112, type: !191, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!197 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIPN3ISG4NodeEES3_E15_S_nothrow_moveEv", scope: !84, file: !82, line: 115, type: !191, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!198 = !{!183, !199}
!199 = !DITemplateTypeParameter(type: !96)
!200 = !{}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<ISG::Node *>", scope: !88, file: !89, line: 450, baseType: !99)
!202 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !77, baseType: !203, extraData: i32 0)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !74, file: !71, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !204, identifier: "_ZTSNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_dataE")
!204 = !{!205, !208, !209, !210, !214, !218, !223}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !203, file: !71, line: 93, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !74, file: !71, line: 89, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !84, file: !82, line: 57, baseType: !94)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !203, file: !71, line: 94, baseType: !206, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !203, file: !71, line: 95, baseType: !206, size: 64, offset: 128)
!210 = !DISubprogram(name: "_Vector_impl_data", scope: !203, file: !71, line: 97, type: !211, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!214 = !DISubprogram(name: "_Vector_impl_data", scope: !203, file: !71, line: 102, type: !215, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !213, !217}
!217 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !203, size: 64)
!218 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_data12_M_copy_dataERKS5_", scope: !203, file: !71, line: 109, type: !219, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !213, !221}
!221 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!223 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_data12_M_swap_dataERS5_", scope: !203, file: !71, line: 117, type: !224, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !213, !226}
!226 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !203, size: 64)
!227 = !DISubprogram(name: "_Vector_impl", scope: !77, file: !71, line: 131, type: !228, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!231 = !DISubprogram(name: "_Vector_impl", scope: !77, file: !71, line: 136, type: !232, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !230, !234}
!234 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!236 = !DISubprogram(name: "_Vector_impl", scope: !77, file: !71, line: 143, type: !237, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !230, !239}
!239 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !77, size: 64)
!240 = !DISubprogram(name: "_Vector_impl", scope: !77, file: !71, line: 147, type: !241, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !230, !243}
!243 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !80, size: 64)
!244 = !DISubprogram(name: "_Vector_impl", scope: !77, file: !71, line: 151, type: !245, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !230, !243, !239}
!247 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !74, file: !71, line: 276, type: !248, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !80, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!252 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !74, file: !71, line: 280, type: !253, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!234, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!257 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13get_allocatorEv", scope: !74, file: !71, line: 284, type: !258, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !255}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !74, file: !71, line: 273, baseType: !99)
!261 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 288, type: !262, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !251}
!264 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 293, type: !265, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !251, !267}
!267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!269 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 298, type: !270, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !251, !137}
!272 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 303, type: !273, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !251, !137, !267}
!275 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 308, type: !276, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !251, !278}
!278 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !74, size: 64)
!279 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 312, type: !280, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !251, !243}
!282 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 315, type: !283, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !251, !278, !267}
!285 = !DISubprogram(name: "_Vector_base", scope: !74, file: !71, line: 328, type: !286, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !251, !267, !278}
!288 = !DISubprogram(name: "~_Vector_base", scope: !74, file: !71, line: 333, type: !262, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE11_M_allocateEm", scope: !74, file: !71, line: 343, type: !290, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!206, !251, !137}
!292 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m", scope: !74, file: !71, line: 350, type: !293, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !251, !206, !137}
!295 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_M_create_storageEm", scope: !74, file: !71, line: 359, type: !270, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!296 = !{!150, !183}
!297 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !70, file: !71, line: 431, type: !298, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!193, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !2, file: !301, line: 83, baseType: !302)
!301 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !2, file: !301, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !303, templateParams: !312, identifier: "_ZTSSt17integral_constantIbLb1EE")
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !301, line: 67, baseType: !305, flags: DIFlagStaticMember, extraData: i1 true)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!306 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !302, file: !301, line: 70, type: !307, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !302, file: !301, line: 68, baseType: !193)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!312 = !{!313, !314}
!313 = !DITemplateTypeParameter(name: "_Tp", type: !193)
!314 = !DITemplateValueParameter(name: "__v", type: !193, value: i8 1)
!315 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !70, file: !71, line: 440, type: !316, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{!193, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !2, file: !301, line: 86, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !2, file: !301, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !320, templateParams: !328, identifier: "_ZTSSt17integral_constantIbLb0EE")
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !301, line: 67, baseType: !305, flags: DIFlagStaticMember, extraData: i1 false)
!322 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !319, file: !301, line: 70, type: !323, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !319, file: !301, line: 68, baseType: !193)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!328 = !{!313, !329}
!329 = !DITemplateValueParameter(name: "__v", type: !193, value: i8 0)
!330 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE15_S_use_relocateEv", scope: !70, file: !71, line: 444, type: !191, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!331 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE", scope: !70, file: !71, line: 453, type: !332, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !334, !334, !334, !335, !300}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !70, file: !71, line: 415, baseType: !206, flags: DIFlagPublic)
!335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !70, file: !71, line: 410, baseType: !80)
!337 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb0EE", scope: !70, file: !71, line: 460, type: !338, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!334, !334, !334, !334, !335, !318}
!340 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_", scope: !70, file: !71, line: 465, type: !341, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!334, !334, !334, !334, !335}
!343 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 487, type: !344, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!347 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 497, type: !348, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !346, !350}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !70, file: !71, line: 426, baseType: !99, flags: DIFlagPublic)
!353 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 510, type: !354, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !346, !356, !350}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !71, line: 424, baseType: !137, flags: DIFlagPublic)
!357 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 522, type: !358, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !346, !356, !360, !350}
!360 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !70, file: !71, line: 414, baseType: !96, flags: DIFlagPublic)
!363 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 553, type: !364, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !346, !366}
!366 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!368 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 572, type: !369, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !346, !371}
!371 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !70, size: 64)
!372 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 575, type: !373, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !346, !366, !350}
!375 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 585, type: !376, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !346, !371, !350, !300}
!378 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 589, type: !379, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !346, !371, !350, !318}
!381 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 607, type: !382, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !346, !371, !350}
!384 = !DISubprogram(name: "vector", scope: !70, file: !71, line: 625, type: !385, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !346, !387, !350}
!387 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<ISG::Node *>", scope: !2, file: !388, line: 47, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIPN3ISG4NodeEE")
!388 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!389 = !DISubprogram(name: "~vector", scope: !70, file: !71, line: 678, type: !344, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!390 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEaSERKS4_", scope: !70, file: !71, line: 695, type: !391, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !346, !366}
!393 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !70, size: 64)
!394 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEaSEOS4_", scope: !70, file: !71, line: 709, type: !395, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!393, !346, !371}
!397 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEaSESt16initializer_listIS2_E", scope: !70, file: !71, line: 730, type: !398, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubroutineType(types: !399)
!399 = !{!393, !346, !387}
!400 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6assignEmRKS2_", scope: !70, file: !71, line: 749, type: !401, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !346, !356, !360}
!403 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6assignESt16initializer_listIS2_E", scope: !70, file: !71, line: 794, type: !404, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !346, !387}
!406 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv", scope: !70, file: !71, line: 811, type: !407, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !346}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !70, file: !71, line: 419, baseType: !410, flags: DIFlagPublic)
!410 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", scope: !85, file: !411, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !412, templateParams: !466, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEE")
!411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!412 = !{!413, !414, !418, !423, !434, !439, !443, !446, !447, !448, !455, !458, !461, !462, !463}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !410, file: !411, line: 1007, baseType: !95, size: 64, flags: DIFlagProtected)
!414 = !DISubprogram(name: "__normal_iterator", scope: !410, file: !411, line: 1023, type: !415, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!418 = !DISubprogram(name: "__normal_iterator", scope: !410, file: !411, line: 1027, type: !419, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !417, !421}
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!423 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv", scope: !410, file: !411, line: 1042, type: !424, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !432}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !410, file: !411, line: 1016, baseType: !427, flags: DIFlagPublic)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !429, file: !428, line: 216, baseType: !124)
!428 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<ISG::Node **>", scope: !2, file: !428, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !430, identifier: "_ZTSSt15iterator_traitsIPPN3ISG4NodeEE")
!430 = !{!431}
!431 = !DITemplateTypeParameter(name: "_Iterator", type: !95)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!434 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEptEv", scope: !410, file: !411, line: 1047, type: !435, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !432}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !410, file: !411, line: 1017, baseType: !438, flags: DIFlagPublic)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !429, file: !428, line: 215, baseType: !95)
!439 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv", scope: !410, file: !411, line: 1052, type: !440, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !417}
!442 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !410, size: 64)
!443 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEi", scope: !410, file: !411, line: 1060, type: !444, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!410, !417, !67}
!446 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmmEv", scope: !410, file: !411, line: 1066, type: !440, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!447 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmmEi", scope: !410, file: !411, line: 1074, type: !444, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!448 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEixEl", scope: !410, file: !411, line: 1080, type: !449, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!426, !432, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !410, file: !411, line: 1015, baseType: !452, flags: DIFlagPublic)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !429, file: !428, line: 214, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !138, line: 281, baseType: !454)
!454 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!455 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEpLEl", scope: !410, file: !411, line: 1085, type: !456, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!442, !417, !451}
!458 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl", scope: !410, file: !411, line: 1090, type: !459, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!410, !432, !451}
!461 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmIEl", scope: !410, file: !411, line: 1095, type: !456, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!462 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmiEl", scope: !410, file: !411, line: 1100, type: !459, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!463 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !410, file: !411, line: 1105, type: !464, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!421, !432}
!466 = !{!431, !467}
!467 = !DITemplateTypeParameter(name: "_Container", type: !70)
!468 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv", scope: !70, file: !71, line: 820, type: !469, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !525}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !70, file: !71, line: 421, baseType: !472, flags: DIFlagPublic)
!472 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<ISG::Node *const *, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", scope: !85, file: !411, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !473, templateParams: !524, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEE")
!473 = !{!474, !475, !479, !484, !494, !499, !503, !506, !507, !508, !513, !516, !519, !520, !521}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !472, file: !411, line: 1007, baseType: !129, size: 64, flags: DIFlagProtected)
!475 = !DISubprogram(name: "__normal_iterator", scope: !472, file: !411, line: 1023, type: !476, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DISubprogram(name: "__normal_iterator", scope: !472, file: !411, line: 1027, type: !480, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !478, !482}
!482 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!484 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv", scope: !472, file: !411, line: 1042, type: !485, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !492}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !472, file: !411, line: 1016, baseType: !488, flags: DIFlagPublic)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !489, file: !428, line: 227, baseType: !132)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<ISG::Node *const *>", scope: !2, file: !428, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !490, identifier: "_ZTSSt15iterator_traitsIPKPN3ISG4NodeEE")
!490 = !{!491}
!491 = !DITemplateTypeParameter(name: "_Iterator", type: !129)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!494 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEptEv", scope: !472, file: !411, line: 1047, type: !495, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !492}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !472, file: !411, line: 1017, baseType: !498, flags: DIFlagPublic)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !489, file: !428, line: 226, baseType: !129)
!499 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv", scope: !472, file: !411, line: 1052, type: !500, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !478}
!502 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !472, size: 64)
!503 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEi", scope: !472, file: !411, line: 1060, type: !504, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!472, !478, !67}
!506 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmmEv", scope: !472, file: !411, line: 1066, type: !500, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!507 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmmEi", scope: !472, file: !411, line: 1074, type: !504, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!508 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEixEl", scope: !472, file: !411, line: 1080, type: !509, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!487, !492, !511}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !472, file: !411, line: 1015, baseType: !512, flags: DIFlagPublic)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !489, file: !428, line: 225, baseType: !453)
!513 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEpLEl", scope: !472, file: !411, line: 1085, type: !514, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!502, !478, !511}
!516 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl", scope: !472, file: !411, line: 1090, type: !517, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!472, !492, !511}
!519 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmIEl", scope: !472, file: !411, line: 1095, type: !514, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!520 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEmiEl", scope: !472, file: !411, line: 1100, type: !517, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !472, file: !411, line: 1105, type: !522, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!482, !492}
!524 = !{!491, !467}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv", scope: !70, file: !71, line: 829, type: !407, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE3endEv", scope: !70, file: !71, line: 838, type: !469, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!528 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6rbeginEv", scope: !70, file: !71, line: 847, type: !529, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !346}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !70, file: !71, line: 423, baseType: !532, flags: DIFlagPublic)
!532 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", scope: !2, file: !411, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEE")
!533 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6rbeginEv", scope: !70, file: !71, line: 856, type: !534, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !525}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !70, file: !71, line: 422, baseType: !537, flags: DIFlagPublic)
!537 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<ISG::Node *const *, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", scope: !2, file: !411, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEE")
!538 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE4rendEv", scope: !70, file: !71, line: 865, type: !529, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!539 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4rendEv", scope: !70, file: !71, line: 874, type: !534, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!540 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6cbeginEv", scope: !70, file: !71, line: 884, type: !469, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4cendEv", scope: !70, file: !71, line: 893, type: !469, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!542 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE7crbeginEv", scope: !70, file: !71, line: 902, type: !534, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!543 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE5crendEv", scope: !70, file: !71, line: 911, type: !534, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!544 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv", scope: !70, file: !71, line: 918, type: !545, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!356, !525}
!547 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv", scope: !70, file: !71, line: 923, type: !545, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!548 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6resizeEm", scope: !70, file: !71, line: 937, type: !549, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !346, !356}
!551 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6resizeEmRKS2_", scope: !70, file: !71, line: 957, type: !401, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!552 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE13shrink_to_fitEv", scope: !70, file: !71, line: 989, type: !344, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!553 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8capacityEv", scope: !70, file: !71, line: 998, type: !545, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!554 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE5emptyEv", scope: !70, file: !71, line: 1007, type: !555, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!193, !525}
!557 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE7reserveEm", scope: !70, file: !71, line: 1028, type: !549, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!558 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEixEm", scope: !70, file: !71, line: 1043, type: !559, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !346, !356}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !70, file: !71, line: 417, baseType: !562, flags: DIFlagPublic)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !84, file: !82, line: 62, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !84, file: !82, line: 56, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !88, file: !89, line: 417, baseType: !96)
!566 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EEixEm", scope: !70, file: !71, line: 1061, type: !567, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !525, !356}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !70, file: !71, line: 418, baseType: !570, flags: DIFlagPublic)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !84, file: !82, line: 63, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!573 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE14_M_range_checkEm", scope: !70, file: !71, line: 1070, type: !574, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !525, !356}
!576 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE2atEm", scope: !70, file: !71, line: 1092, type: !559, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!577 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE2atEm", scope: !70, file: !71, line: 1110, type: !567, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!578 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5frontEv", scope: !70, file: !71, line: 1121, type: !579, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!561, !346}
!581 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE5frontEv", scope: !70, file: !71, line: 1132, type: !582, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{!569, !525}
!584 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE4backEv", scope: !70, file: !71, line: 1143, type: !579, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!585 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4backEv", scope: !70, file: !71, line: 1154, type: !582, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!586 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE4dataEv", scope: !70, file: !71, line: 1168, type: !587, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!95, !346}
!589 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4dataEv", scope: !70, file: !71, line: 1172, type: !590, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{!129, !525}
!592 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_", scope: !70, file: !71, line: 1187, type: !593, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !346, !360}
!595 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backEOS2_", scope: !70, file: !71, line: 1203, type: !596, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !346, !598}
!598 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !362, size: 64)
!599 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8pop_backEv", scope: !70, file: !71, line: 1225, type: !344, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!600 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_", scope: !70, file: !71, line: 1263, type: !601, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!409, !346, !471, !360}
!603 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !70, file: !71, line: 1293, type: !604, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{!409, !346, !471, !598}
!606 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EESt16initializer_listIS2_E", scope: !70, file: !71, line: 1310, type: !607, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!409, !346, !471, !387}
!609 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEmRS7_", scope: !70, file: !71, line: 1335, type: !610, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!409, !346, !471, !356, !360}
!612 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE", scope: !70, file: !71, line: 1430, type: !613, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!409, !346, !471}
!615 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_", scope: !70, file: !71, line: 1457, type: !616, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!409, !346, !471, !471}
!618 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE4swapERS4_", scope: !70, file: !71, line: 1480, type: !619, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !346, !393}
!621 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5clearEv", scope: !70, file: !71, line: 1498, type: !344, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!622 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE18_M_fill_initializeEmRKS2_", scope: !70, file: !71, line: 1593, type: !401, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!623 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE21_M_default_initializeEm", scope: !70, file: !71, line: 1603, type: !549, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!624 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_fill_assignEmRKS2_", scope: !70, file: !71, line: 1645, type: !401, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!625 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_", scope: !70, file: !71, line: 1684, type: !626, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !346, !409, !356, !360}
!628 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_default_appendEm", scope: !70, file: !71, line: 1689, type: !549, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!629 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE16_M_shrink_to_fitEv", scope: !70, file: !71, line: 1692, type: !630, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!193, !346}
!632 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !70, file: !71, line: 1741, type: !604, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!633 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_", scope: !70, file: !71, line: 1750, type: !604, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!634 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE12_M_check_lenEmPKc", scope: !70, file: !71, line: 1756, type: !635, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !525, !356, !638}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !70, file: !71, line: 424, baseType: !137, flags: DIFlagPublic)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!641 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_S_check_init_lenEmRKS3_", scope: !70, file: !71, line: 1767, type: !642, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!637, !356, !350}
!644 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_max_sizeERKS3_", scope: !70, file: !71, line: 1776, type: !645, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!637, !647}
!647 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!649 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE15_M_erase_at_endEPS2_", scope: !70, file: !71, line: 1792, type: !650, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !346, !334}
!652 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE", scope: !70, file: !71, line: 1804, type: !653, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!409, !346, !409}
!655 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_", scope: !70, file: !71, line: 1807, type: !656, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!409, !346, !409, !409}
!658 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE", scope: !70, file: !71, line: 1815, type: !659, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !346, !371, !300}
!661 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb0EE", scope: !70, file: !71, line: 1826, type: !662, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !346, !371, !318}
!664 = !{!150, !665}
!665 = !DITemplateTypeParameter(name: "_Alloc", type: !99, defaulted: true)
!666 = !DISubprogram(name: "Node", scope: !60, file: !13, line: 36, type: !667, scopeLine: 36, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!670 = !DISubprogram(name: "Node", scope: !60, file: !13, line: 37, type: !671, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !669, !96}
!673 = !DISubprogram(name: "~Node", scope: !60, file: !13, line: 40, type: !667, scopeLine: 40, containingType: !60, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!674 = !DISubprogram(name: "addParent", linkageName: "_ZN3ISG4Node9addParentEPS0_", scope: !60, file: !13, line: 54, type: !671, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!675 = !DISubprogram(name: "removeParent", linkageName: "_ZN3ISG4Node12removeParentEPS0_", scope: !60, file: !13, line: 62, type: !671, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!676 = !DISubprogram(name: "childWasChanged", linkageName: "_ZN3ISG4Node15childWasChangedEPS0_", scope: !60, file: !13, line: 76, type: !671, scopeLine: 76, containingType: !60, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!677 = !DISubprogram(name: "markedAsDirty", linkageName: "_ZN3ISG4Node13markedAsDirtyEv", scope: !60, file: !13, line: 81, type: !678, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!193, !669}
!680 = !DISubprogram(name: "markAsDirty", linkageName: "_ZN3ISG4Node11markAsDirtyEv", scope: !60, file: !13, line: 88, type: !667, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !13, line: 363, baseType: !682, size: 32, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemanticType", scope: !14, file: !13, line: 322, baseType: !46)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !57, file: !13, line: 364, baseType: !684, size: 32, offset: 352)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataFormat", scope: !14, file: !13, line: 294, baseType: !12)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !57, file: !13, line: 365, baseType: !67, size: 32, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "size_in_bytes", scope: !57, file: !13, line: 366, baseType: !67, size: 32, offset: 416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "m_ptr", scope: !57, file: !13, line: 368, baseType: !688, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !57, file: !13, line: 370, baseType: !690, size: 32, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "OwnerType", scope: !57, file: !13, line: 361, baseType: !56)
!691 = !DISubprogram(name: "DataArray", scope: !57, file: !13, line: 372, type: !692, scopeLine: 372, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !694, !96, !682, !684}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!695 = !DISubprogram(name: "~DataArray", scope: !57, file: !13, line: 380, type: !696, scopeLine: 380, containingType: !57, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !694}
!698 = !DISubprogram(name: "clear", linkageName: "_ZN3ISG9DataArray5clearEv", scope: !57, file: !13, line: 382, type: !696, scopeLine: 382, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubprogram(name: "set", linkageName: "_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE", scope: !57, file: !13, line: 404, type: !700, scopeLine: 404, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !694, !682, !684, !688, !67, !690}
!702 = !{!703, !704, !705}
!703 = !DIEnumerator(name: "APP_IS_OWNER", value: 0, isUnsigned: true)
!704 = !DIEnumerator(name: "I_AM_OWNER", value: 1, isUnsigned: true)
!705 = !DIEnumerator(name: "NO_DATA_TO_OWN", value: 2, isUnsigned: true)
!706 = !{!193, !707, !728, !409, !688, !356, !137, !140, !95, !739, !742, !410, !471, !760, !747, !762, !768, !769, !772, !838, !70, !472, !74, !77, !99, !105, !203}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GroupNode", scope: !14, file: !13, line: 148, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !709, vtableHolder: !60, identifier: "_ZTSN3ISG9GroupNodeE")
!709 = !{!710, !711, !712, !716, !717, !722, !725}
!710 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !708, baseType: !60, extraData: i32 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !708, file: !13, line: 191, baseType: !70, size: 192, offset: 320, flags: DIFlagProtected)
!712 = !DISubprogram(name: "addChild", linkageName: "_ZN3ISG9GroupNode8addChildEPNS_4NodeE", scope: !708, file: !13, line: 151, type: !713, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !715, !96}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!716 = !DISubprogram(name: "removeChild", linkageName: "_ZN3ISG9GroupNode11removeChildEPNS_4NodeE", scope: !708, file: !13, line: 157, type: !713, scopeLine: 157, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DISubprogram(name: "attachTransformTo", linkageName: "_ZN3ISG9GroupNode17attachTransformToEPNS_4NodeE", scope: !708, file: !13, line: 168, type: !718, scopeLine: 168, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!720, !715, !96}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "TransformNode", scope: !14, file: !13, line: 118, size: 960, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3ISG13TransformNodeE")
!722 = !DISubprogram(name: "getNumChildren", linkageName: "_ZN3ISG9GroupNode14getNumChildrenEv", scope: !708, file: !13, line: 184, type: !723, scopeLine: 184, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!67, !715}
!725 = !DISubprogram(name: "getChild", linkageName: "_ZN3ISG9GroupNode8getChildEi", scope: !708, file: !13, line: 185, type: !726, scopeLine: 185, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!96, !715, !67}
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Iter_equals_val<ISG::Node *const>", scope: !730, file: !729, line: 256, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !731, templateParams: !737, identifier: "_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEE")
!729 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/predefined_ops.h", directory: "", checksumkind: CSK_MD5, checksum: "1aa21e383abff8b98908de39896ac74d")
!730 = !DINamespace(name: "__ops", scope: !85)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_M_value", scope: !728, file: !729, line: 258, baseType: !132, size: 64)
!733 = !DISubprogram(name: "_Iter_equals_val", scope: !728, file: !729, line: 262, type: !734, scopeLine: 262, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !736, !132}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!737 = !{!738}
!738 = !DITemplateTypeParameter(name: "_Value", type: !130)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !740, file: !71, line: 468, baseType: !741)
!740 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_", scope: !70, file: !71, line: 465, type: !341, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !340, retainedNodes: !200)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !2, file: !301, line: 91, baseType: !302)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BaseMesh", scope: !14, file: !13, line: 494, size: 576, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !744, vtableHolder: !60, identifier: "_ZTSN3ISG8BaseMeshE")
!744 = !{!745, !746, !748, !749, !750, !752, !756, !757}
!745 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !743, baseType: !60, extraData: i32 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !743, file: !13, line: 549, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !743, file: !13, line: 556, baseType: !747, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "shaderList", scope: !743, file: !13, line: 564, baseType: !747, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !13, line: 581, baseType: !751, size: 32, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "MeshType", scope: !14, file: !13, line: 279, baseType: !42)
!752 = !DISubprogram(name: "setCoords", linkageName: "_ZN3ISG8BaseMesh9setCoordsEPNS_9DataArrayE", scope: !743, file: !13, line: 566, type: !753, scopeLine: 566, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !755, !747}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!756 = !DISubprogram(name: "setIndices", linkageName: "_ZN3ISG8BaseMesh10setIndicesEPNS_9DataArrayE", scope: !743, file: !13, line: 573, type: !753, scopeLine: 573, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubprogram(name: "BaseMesh", scope: !743, file: !13, line: 583, type: !758, scopeLine: 583, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !755, !96, !751}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec4f", scope: !14, file: !13, line: 28, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec4f", scope: !766, file: !765, line: 270, baseType: !767)
!765 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!766 = !DINamespace(name: "RTTL", scope: null)
!767 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<4, float, 0>", scope: !766, file: !765, line: 53, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi4EfLi0EEE")
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec3f", scope: !14, file: !13, line: 26, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec3f", scope: !766, file: !765, line: 269, baseType: !771)
!771 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<3, float, 0>", scope: !766, file: !765, line: 48, size: 96, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi3EfLi0EEE")
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !771, file: !773, line: 26, baseType: !774, flags: DIFlagPublic)
!773 = !DIFile(filename: "RTTL/common/RTVecBody.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b80a89a3623c8e3d3f09e41d609e754a")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<3, float, 0>", scope: !766, file: !775, line: 22, size: 96, flags: DIFlagTypePassByValue, elements: !776, templateParams: !834, identifier: "_ZTSN4RTTL8RTData_tILi3EfLi0EEE")
!775 = !DIFile(filename: "RTTL/common/RTData.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4e0c70e47861859820b913e006060bd")
!776 = !{!777, !782, !787, !793, !797, !801, !804, !808, !809, !810, !811, !812, !813, !814, !815, !818, !819, !820, !821, !824, !825, !826, !827, !830, !831, !832, !833}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !774, file: !775, line: 178, baseType: !778, size: 96, flags: DIFlagProtected)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 96, elements: !780)
!779 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!780 = !{!781}
!781 = !DISubrange(count: 3)
!782 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi3EfLi0EE9alignmentEv", scope: !774, file: !775, line: 25, type: !783, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!67, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!787 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE19assignDataTypeValueERKf", scope: !774, file: !775, line: 28, type: !788, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790, !791}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!791 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!793 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE19assignDataTypeArrayEPKf", scope: !774, file: !775, line: 32, type: !794, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !790, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!797 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEixEi", scope: !774, file: !775, line: 49, type: !798, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{!800, !790, !67}
!800 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !779, size: 64)
!801 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi3EfLi0EEixEi", scope: !774, file: !775, line: 52, type: !802, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!779, !785, !67}
!804 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEpLERKS1_", scope: !774, file: !775, line: 56, type: !805, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !790, !807}
!807 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !786, size: 64)
!808 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEmIERKS1_", scope: !774, file: !775, line: 61, type: !805, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEmLERKS1_", scope: !774, file: !775, line: 66, type: !805, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEdVERKS1_", scope: !774, file: !775, line: 71, type: !805, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEpLERKf", scope: !774, file: !775, line: 76, type: !788, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEmIERKf", scope: !774, file: !775, line: 81, type: !788, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEmLERKf", scope: !774, file: !775, line: 86, type: !788, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EEdVERKf", scope: !774, file: !775, line: 91, type: !788, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE3addERKS1_S3_", scope: !774, file: !775, line: 96, type: !816, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !790, !807, !807}
!818 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8subtractERKS1_S3_", scope: !774, file: !775, line: 100, type: !816, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8multiplyERKS1_S3_", scope: !774, file: !775, line: 104, type: !816, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE6divideERKS1_S3_", scope: !774, file: !775, line: 108, type: !816, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE3addERKS1_PKf", scope: !774, file: !775, line: 113, type: !822, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !790, !807, !796}
!824 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8subtractERKS1_PKf", scope: !774, file: !775, line: 117, type: !822, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8multiplyERKS1_PKf", scope: !774, file: !775, line: 121, type: !822, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE6divideERKS1_PKf", scope: !774, file: !775, line: 125, type: !822, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE3addEPKfRKS1_", scope: !774, file: !775, line: 130, type: !828, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !790, !796, !807}
!830 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8subtractEPKfRKS1_", scope: !774, file: !775, line: 133, type: !828, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE8multiplyEPKfRKS1_", scope: !774, file: !775, line: 136, type: !828, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE6divideEPKfRKS1_", scope: !774, file: !775, line: 139, type: !828, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv", scope: !774, file: !775, line: 175, type: !65, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!834 = !{!835, !836, !837}
!835 = !DITemplateValueParameter(name: "N", type: !67, value: i32 3)
!836 = !DITemplateTypeParameter(name: "DataType", type: !779)
!837 = !DITemplateValueParameter(name: "align", type: !67, defaulted: true, value: i32 0)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !839, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !840, identifier: "_ZTS5sse_f")
!839 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!840 = !{!841, !845}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !838, file: !839, line: 23, baseType: !842, size: 128)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 128, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 4)
!845 = !DISubprogram(name: "sse_f", scope: !838, file: !839, line: 21, type: !846, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!849 = !{!0, !7, !850, !855, !858, !861, !866, !871, !876, !881, !883, !888, !893, !895, !900, !905, !910, !915, !919, !924, !929, !934, !937, !942, !947, !952, !954, !959, !964, !969, !974, !979, !984, !990, !992, !997, !1002}
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "frameBuffer", scope: !9, file: !852, line: 17, type: !853, isLocal: false, isDefinition: true)
!852 = !DIFile(filename: "LRT/test/api_static_cube/static_cube.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "df49e1cb67cac61faaee48b2e8371f59")
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTFrameBufferHandle", file: !854, line: 23, baseType: !688)
!854 = !DIFile(filename: "LRT/include/lrt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "97e0c94c5756d29b1aac8380d8daf831")
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "camera", scope: !9, file: !852, line: 18, type: !857, isLocal: false, isDefinition: true)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTCamera", file: !854, line: 24, baseType: !688)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "context", scope: !9, file: !852, line: 19, type: !860, isLocal: false, isDefinition: true)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTContext", file: !854, line: 29, baseType: !688)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(name: "cube_vertex", scope: !9, file: !852, line: 24, type: !863, isLocal: false, isDefinition: true)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 768, elements: !864)
!864 = !{!865, !781}
!865 = !DISubrange(count: 8)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "cube_tris", scope: !9, file: !852, line: 34, type: !868, isLocal: false, isDefinition: true)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1152, elements: !869)
!869 = !{!870, !781}
!870 = !DISubrange(count: 12)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !852, line: 75, type: !873, isLocal: true, isDefinition: true)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 208, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 26)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !852, line: 75, type: !878, isLocal: true, isDefinition: true)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 848, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 106)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !852, line: 75, type: !873, isLocal: true, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !852, line: 84, type: !885, isLocal: true, isDefinition: true)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 200, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 25)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !852, line: 98, type: !890, isLocal: true, isDefinition: true)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 232, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 29)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !852, line: 125, type: !885, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !852, line: 128, type: !897, isLocal: true, isDefinition: true)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 456, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 57)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !29, line: 82, type: !902, isLocal: true, isDefinition: true)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 56, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 7)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !29, line: 82, type: !907, isLocal: true, isDefinition: true)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 632, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 79)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !29, line: 82, type: !912, isLocal: true, isDefinition: true)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 280, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 35)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(scope: null, file: !29, line: 86, type: !917, isLocal: true, isDefinition: true)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 64, elements: !918)
!918 = !{!865}
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(scope: null, file: !29, line: 86, type: !921, isLocal: true, isDefinition: true)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 504, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 63)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !29, line: 86, type: !926, isLocal: true, isDefinition: true)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 40, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 5)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !29, line: 86, type: !931, isLocal: true, isDefinition: true)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 16, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 2)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !936, line: 436, type: !873, isLocal: true, isDefinition: true)
!936 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !13, line: 65, type: !939, isLocal: true, isDefinition: true)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 176, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 22)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !13, line: 65, type: !944, isLocal: true, isDefinition: true)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 656, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 82)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !13, line: 65, type: !949, isLocal: true, isDefinition: true)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 296, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 37)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !29, line: 204, type: !902, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !29, line: 204, type: !956, isLocal: true, isDefinition: true)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 776, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 97)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !29, line: 206, type: !961, isLocal: true, isDefinition: true)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 48, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 6)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !13, line: 414, type: !966, isLocal: true, isDefinition: true)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 416, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 52)
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression())
!970 = distinct !DIGlobalVariable(scope: null, file: !13, line: 414, type: !971, isLocal: true, isDefinition: true)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 600, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 75)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !13, line: 438, type: !976, isLocal: true, isDefinition: true)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 568, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 71)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !13, line: 442, type: !981, isLocal: true, isDefinition: true)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 488, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 61)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "RTDataSizeOf", linkageName: "_ZN3ISGL12RTDataSizeOfE", scope: !14, file: !13, line: 297, type: !986, isLocal: true, isDefinition: true)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 352, elements: !988)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!988 = !{!989}
!989 = !DISubrange(count: 11)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !775, line: 44, type: !890, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !775, line: 44, type: !994, isLocal: true, isDefinition: true)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 704, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 88)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !775, line: 44, type: !999, isLocal: true, isDefinition: true)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 1528, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 191)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !29, line: 168, type: !1004, isLocal: true, isDefinition: true)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 32)
!1007 = !{!1008, !1014, !1018, !1024, !1028, !1033, !1035, !1040, !1044, !1048, !1058, !1062, !1066, !1070, !1074, !1079, !1083, !1087, !1091, !1095, !1103, !1107, !1111, !1113, !1115, !1119, !1123, !1129, !1133, !1137, !1139, !1147, !1151, !1158, !1160, !1164, !1168, !1172, !1176, !1181, !1185, !1190, !1191, !1192, !1193, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1243, !1245, !1247, !1251, !1253, !1255, !1257, !1259, !1261, !1263, !1265, !1270, !1274, !1276, !1278, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1298, !1300, !1302, !1306, !1308, !1310, !1312, !1314, !1316, !1318, !1320, !1322, !1324, !1326, !1328, !1332, !1336, !1338, !1340, !1342, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1360, !1362, !1364, !1366, !1370, !1374, !1378, !1380, !1382, !1384, !1386, !1388, !1390, !1392, !1394, !1396, !1400, !1404, !1408, !1410, !1412, !1414, !1418, !1422, !1426, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1444, !1446, !1448, !1450, !1454, !1458, !1462, !1464, !1466, !1468, !1470, !1474, !1478, !1480, !1482, !1484, !1486, !1488, !1490, !1494, !1498, !1500, !1502, !1504, !1506, !1510, !1514, !1518, !1520, !1522, !1524, !1526, !1528, !1530, !1534, !1538, !1542, !1544, !1548, !1552, !1554, !1556, !1558, !1560, !1562, !1564, !1566, !1571, !1586, !1589, !1594, !1603, !1608, !1612, !1616, !1620, !1624, !1626, !1628, !1632, !1638, !1642, !1648, !1654, !1656, !1660, !1664, !1668, !1672, !1684, !1686, !1690, !1694, !1698, !1700, !1704, !1708, !1712, !1714, !1716, !1720, !1728, !1732, !1736, !1740, !1742, !1748, !1750, !1756, !1760, !1764, !1768, !1772, !1776, !1780, !1782, !1784, !1788, !1792, !1796, !1798, !1802, !1806, !1808, !1810, !1814, !1818, !1822, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1840, !1844, !1848, !1855, !1859, !1862, !1865, !1868, !1870, !1872, !1874, !1877, !1880, !1883, !1886, !1889, !1891, !1895, !1899, !1902, !1905, !1907, !1909, !1911, !1913, !1916, !1919, !1922, !1925, !1928, !1930, !1934, !1938, !1943, !1947, !1949, !1951, !1953, !1955, !1957, !1959, !1961, !1963, !1965, !1967, !1969, !1971, !1973, !1977, !1983, !1988, !1992, !1994, !1996, !1998, !2000, !2007, !2011, !2015, !2019, !2023, !2027, !2032, !2036, !2038, !2042, !2048, !2052, !2057, !2059, !2061, !2065, !2069, !2073, !2075, !2077, !2079, !2081, !2085, !2087, !2089, !2093, !2097, !2101, !2105, !2109, !2111, !2113, !2117, !2121, !2125, !2129, !2131, !2133, !2137, !2141, !2142, !2143, !2144, !2145, !2146, !2152, !2155, !2156, !2158, !2160, !2162, !2164, !2168, !2170, !2172, !2174, !2176, !2178, !2180, !2182, !2184, !2188, !2192, !2194, !2198, !2202, !2204, !2205, !2211, !2215, !2219, !2223, !2227, !2231, !2233, !2235, !2237, !2241, !2245, !2249, !2253, !2257, !2259, !2261, !2263, !2267, !2271, !2275, !2277, !2279, !2310, !2311, !2312}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !1013, line: 52)
!1009 = !DISubprogram(name: "abs", scope: !1010, file: !1010, line: 848, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!67, !67}
!1013 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !1017, line: 127)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1010, line: 63, baseType: !1016)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1017 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !1017, line: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1010, line: 71, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !1021, identifier: "_ZTS6ldiv_t")
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1020, file: !1010, line: 69, baseType: !454, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1020, file: !1010, line: 70, baseType: !454, size: 64, offset: 64)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !1017, line: 130)
!1025 = !DISubprogram(name: "abort", scope: !1010, file: !1010, line: 598, type: !1026, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !1017, line: 134)
!1029 = !DISubprogram(name: "atexit", scope: !1010, file: !1010, line: 602, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!67, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !1017, line: 137)
!1034 = !DISubprogram(name: "at_quick_exit", scope: !1010, file: !1010, line: 607, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !1017, line: 140)
!1036 = !DISubprogram(name: "atof", scope: !1010, file: !1010, line: 102, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!1039, !638}
!1039 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !1017, line: 141)
!1041 = !DISubprogram(name: "atoi", scope: !1010, file: !1010, line: 105, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!67, !638}
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !1017, line: 142)
!1045 = !DISubprogram(name: "atol", scope: !1010, file: !1010, line: 108, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!454, !638}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !1017, line: 143)
!1049 = !DISubprogram(name: "bsearch", scope: !1010, file: !1010, line: 828, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!688, !140, !140, !1052, !1052, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1053, line: 46, baseType: !139)
!1053 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1010, line: 816, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!67, !140, !140}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !1017, line: 144)
!1059 = !DISubprogram(name: "calloc", scope: !1010, file: !1010, line: 543, type: !1060, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!688, !1052, !1052}
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1063, file: !1017, line: 145)
!1063 = !DISubprogram(name: "div", scope: !1010, file: !1010, line: 860, type: !1064, flags: DIFlagPrototyped, spFlags: 0)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1015, !67, !67}
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !1017, line: 146)
!1067 = !DISubprogram(name: "exit", scope: !1010, file: !1010, line: 624, type: !1068, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !67}
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !1017, line: 147)
!1071 = !DISubprogram(name: "free", scope: !1010, file: !1010, line: 555, type: !1072, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !688}
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !1017, line: 148)
!1075 = !DISubprogram(name: "getenv", scope: !1010, file: !1010, line: 641, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078, !638}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1080, file: !1017, line: 149)
!1080 = !DISubprogram(name: "labs", scope: !1010, file: !1010, line: 849, type: !1081, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!454, !454}
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1084, file: !1017, line: 150)
!1084 = !DISubprogram(name: "ldiv", scope: !1010, file: !1010, line: 862, type: !1085, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1019, !454, !454}
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1088, file: !1017, line: 151)
!1088 = !DISubprogram(name: "malloc", scope: !1010, file: !1010, line: 540, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!688, !1052}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1092, file: !1017, line: 153)
!1092 = !DISubprogram(name: "mblen", scope: !1010, file: !1010, line: 930, type: !1093, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!67, !638, !1052}
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1096, file: !1017, line: 154)
!1096 = !DISubprogram(name: "mbstowcs", scope: !1010, file: !1010, line: 941, type: !1097, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1052, !1099, !1102, !1052}
!1099 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!1102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1104, file: !1017, line: 155)
!1104 = !DISubprogram(name: "mbtowc", scope: !1010, file: !1010, line: 933, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!67, !1099, !1102, !1052}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1108, file: !1017, line: 157)
!1108 = !DISubprogram(name: "qsort", scope: !1010, file: !1010, line: 838, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !688, !1052, !1052, !1054}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1112, file: !1017, line: 160)
!1112 = !DISubprogram(name: "quick_exit", scope: !1010, file: !1010, line: 630, type: !1068, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1114, file: !1017, line: 163)
!1114 = !DISubprogram(name: "rand", scope: !1010, file: !1010, line: 454, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1116, file: !1017, line: 164)
!1116 = !DISubprogram(name: "realloc", scope: !1010, file: !1010, line: 551, type: !1117, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!688, !688, !1052}
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !1017, line: 165)
!1120 = !DISubprogram(name: "srand", scope: !1010, file: !1010, line: 456, type: !1121, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !15}
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1124, file: !1017, line: 166)
!1124 = !DISubprogram(name: "strtod", scope: !1010, file: !1010, line: 118, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1039, !1102, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1130, file: !1017, line: 167)
!1130 = !DISubprogram(name: "strtol", scope: !1010, file: !1010, line: 177, type: !1131, flags: DIFlagPrototyped, spFlags: 0)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!454, !1102, !1127, !67}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1134, file: !1017, line: 168)
!1134 = !DISubprogram(name: "strtoul", scope: !1010, file: !1010, line: 181, type: !1135, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!139, !1102, !1127, !67}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1138, file: !1017, line: 169)
!1138 = !DISubprogram(name: "system", scope: !1010, file: !1010, line: 791, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !1017, line: 171)
!1140 = !DISubprogram(name: "wcstombs", scope: !1010, file: !1010, line: 945, type: !1141, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1052, !1143, !1144, !1052}
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1078)
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1148, file: !1017, line: 172)
!1148 = !DISubprogram(name: "wctomb", scope: !1010, file: !1010, line: 937, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!67, !1078, !1101}
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1152, file: !1017, line: 200)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1010, line: 81, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !1154, identifier: "_ZTS7lldiv_t")
!1154 = !{!1155, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1153, file: !1010, line: 79, baseType: !1156, size: 64)
!1156 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1153, file: !1010, line: 80, baseType: !1156, size: 64, offset: 64)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1159, file: !1017, line: 206)
!1159 = !DISubprogram(name: "_Exit", scope: !1010, file: !1010, line: 636, type: !1068, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1161, file: !1017, line: 210)
!1161 = !DISubprogram(name: "llabs", scope: !1010, file: !1010, line: 852, type: !1162, flags: DIFlagPrototyped, spFlags: 0)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1156, !1156}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1165, file: !1017, line: 216)
!1165 = !DISubprogram(name: "lldiv", scope: !1010, file: !1010, line: 866, type: !1166, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1152, !1156, !1156}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1169, file: !1017, line: 227)
!1169 = !DISubprogram(name: "atoll", scope: !1010, file: !1010, line: 113, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1156, !638}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1173, file: !1017, line: 228)
!1173 = !DISubprogram(name: "strtoll", scope: !1010, file: !1010, line: 201, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1156, !1102, !1127, !67}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1177, file: !1017, line: 229)
!1177 = !DISubprogram(name: "strtoull", scope: !1010, file: !1010, line: 206, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !1102, !1127, !67}
!1180 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1182, file: !1017, line: 231)
!1182 = !DISubprogram(name: "strtof", scope: !1010, file: !1010, line: 124, type: !1183, flags: DIFlagPrototyped, spFlags: 0)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!779, !1102, !1127}
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1186, file: !1017, line: 232)
!1186 = !DISubprogram(name: "strtold", scope: !1010, file: !1010, line: 127, type: !1187, flags: DIFlagPrototyped, spFlags: 0)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !1102, !1127}
!1189 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1152, file: !1017, line: 240)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !1017, line: 242)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1161, file: !1017, line: 244)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !1017, line: 245)
!1194 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !85, file: !1017, line: 213, type: !1166, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1165, file: !1017, line: 246)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1169, file: !1017, line: 248)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1182, file: !1017, line: 249)
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1173, file: !1017, line: 250)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1177, file: !1017, line: 251)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !1017, line: 252)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1025, file: !1202, line: 38)
!1202 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1029, file: !1202, line: 39)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1067, file: !1202, line: 40)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1034, file: !1202, line: 43)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1112, file: !1202, line: 46)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1015, file: !1202, line: 51)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1019, file: !1202, line: 52)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1210, file: !1202, line: 54)
!1210 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !1013, line: 79, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1189, !1189}
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1036, file: !1202, line: 55)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1041, file: !1202, line: 56)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1045, file: !1202, line: 57)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1049, file: !1202, line: 58)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1059, file: !1202, line: 59)
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1194, file: !1202, line: 60)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1071, file: !1202, line: 61)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1075, file: !1202, line: 62)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1080, file: !1202, line: 63)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1084, file: !1202, line: 64)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1088, file: !1202, line: 65)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1092, file: !1202, line: 67)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1096, file: !1202, line: 68)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1104, file: !1202, line: 69)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1108, file: !1202, line: 71)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1114, file: !1202, line: 72)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1116, file: !1202, line: 73)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1120, file: !1202, line: 74)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1124, file: !1202, line: 75)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1130, file: !1202, line: 76)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1134, file: !1202, line: 77)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1138, file: !1202, line: 78)
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1140, file: !1202, line: 80)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1148, file: !1202, line: 81)
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1238, file: !1242, line: 83)
!1238 = !DISubprogram(name: "acos", scope: !1239, file: !1239, line: 53, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1039, !1039}
!1242 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1244, file: !1242, line: 102)
!1244 = !DISubprogram(name: "asin", scope: !1239, file: !1239, line: 55, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1246, file: !1242, line: 121)
!1246 = !DISubprogram(name: "atan", scope: !1239, file: !1239, line: 57, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1248, file: !1242, line: 140)
!1248 = !DISubprogram(name: "atan2", scope: !1239, file: !1239, line: 59, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1039, !1039, !1039}
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1252, file: !1242, line: 161)
!1252 = !DISubprogram(name: "ceil", scope: !1239, file: !1239, line: 159, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1254, file: !1242, line: 180)
!1254 = !DISubprogram(name: "cos", scope: !1239, file: !1239, line: 62, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1256, file: !1242, line: 199)
!1256 = !DISubprogram(name: "cosh", scope: !1239, file: !1239, line: 71, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1258, file: !1242, line: 218)
!1258 = !DISubprogram(name: "exp", scope: !1239, file: !1239, line: 95, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1260, file: !1242, line: 237)
!1260 = !DISubprogram(name: "fabs", scope: !1239, file: !1239, line: 162, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1262, file: !1242, line: 256)
!1262 = !DISubprogram(name: "floor", scope: !1239, file: !1239, line: 165, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1264, file: !1242, line: 275)
!1264 = !DISubprogram(name: "fmod", scope: !1239, file: !1239, line: 168, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1266, file: !1242, line: 296)
!1266 = !DISubprogram(name: "frexp", scope: !1239, file: !1239, line: 98, type: !1267, flags: DIFlagPrototyped, spFlags: 0)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1039, !1039, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1271, file: !1242, line: 315)
!1271 = !DISubprogram(name: "ldexp", scope: !1239, file: !1239, line: 101, type: !1272, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1039, !1039, !67}
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1275, file: !1242, line: 334)
!1275 = !DISubprogram(name: "log", scope: !1239, file: !1239, line: 104, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1277, file: !1242, line: 353)
!1277 = !DISubprogram(name: "log10", scope: !1239, file: !1239, line: 107, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1242, line: 372)
!1279 = !DISubprogram(name: "modf", scope: !1239, file: !1239, line: 110, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1039, !1039, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1284, file: !1242, line: 384)
!1284 = !DISubprogram(name: "pow", scope: !1239, file: !1239, line: 140, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1286, file: !1242, line: 421)
!1286 = !DISubprogram(name: "sin", scope: !1239, file: !1239, line: 64, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1288, file: !1242, line: 440)
!1288 = !DISubprogram(name: "sinh", scope: !1239, file: !1239, line: 73, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1290, file: !1242, line: 459)
!1290 = !DISubprogram(name: "sqrt", scope: !1239, file: !1239, line: 143, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1292, file: !1242, line: 478)
!1292 = !DISubprogram(name: "tan", scope: !1239, file: !1239, line: 66, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1294, file: !1242, line: 497)
!1294 = !DISubprogram(name: "tanh", scope: !1239, file: !1239, line: 75, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1296, file: !1242, line: 1065)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1297, line: 164, baseType: !1039)
!1297 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1299, file: !1242, line: 1066)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1297, line: 163, baseType: !779)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1301, file: !1242, line: 1069)
!1301 = !DISubprogram(name: "acosh", scope: !1239, file: !1239, line: 85, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1303, file: !1242, line: 1070)
!1303 = !DISubprogram(name: "acoshf", scope: !1239, file: !1239, line: 85, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!779, !779}
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1307, file: !1242, line: 1071)
!1307 = !DISubprogram(name: "acoshl", scope: !1239, file: !1239, line: 85, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1309, file: !1242, line: 1073)
!1309 = !DISubprogram(name: "asinh", scope: !1239, file: !1239, line: 87, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1242, line: 1074)
!1311 = !DISubprogram(name: "asinhf", scope: !1239, file: !1239, line: 87, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1313, file: !1242, line: 1075)
!1313 = !DISubprogram(name: "asinhl", scope: !1239, file: !1239, line: 87, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1242, line: 1077)
!1315 = !DISubprogram(name: "atanh", scope: !1239, file: !1239, line: 89, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1317, file: !1242, line: 1078)
!1317 = !DISubprogram(name: "atanhf", scope: !1239, file: !1239, line: 89, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1242, line: 1079)
!1319 = !DISubprogram(name: "atanhl", scope: !1239, file: !1239, line: 89, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1321, file: !1242, line: 1081)
!1321 = !DISubprogram(name: "cbrt", scope: !1239, file: !1239, line: 152, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1242, line: 1082)
!1323 = !DISubprogram(name: "cbrtf", scope: !1239, file: !1239, line: 152, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1242, line: 1083)
!1325 = !DISubprogram(name: "cbrtl", scope: !1239, file: !1239, line: 152, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1327, file: !1242, line: 1085)
!1327 = !DISubprogram(name: "copysign", scope: !1239, file: !1239, line: 198, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1242, line: 1086)
!1329 = !DISubprogram(name: "copysignf", scope: !1239, file: !1239, line: 198, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!779, !779, !779}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1242, line: 1087)
!1333 = !DISubprogram(name: "copysignl", scope: !1239, file: !1239, line: 198, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1189, !1189, !1189}
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1242, line: 1089)
!1337 = !DISubprogram(name: "erf", scope: !1239, file: !1239, line: 231, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1242, line: 1090)
!1339 = !DISubprogram(name: "erff", scope: !1239, file: !1239, line: 231, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1341, file: !1242, line: 1091)
!1341 = !DISubprogram(name: "erfl", scope: !1239, file: !1239, line: 231, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1343, file: !1242, line: 1093)
!1343 = !DISubprogram(name: "erfc", scope: !1239, file: !1239, line: 232, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1242, line: 1094)
!1345 = !DISubprogram(name: "erfcf", scope: !1239, file: !1239, line: 232, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1242, line: 1095)
!1347 = !DISubprogram(name: "erfcl", scope: !1239, file: !1239, line: 232, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1242, line: 1097)
!1349 = !DISubprogram(name: "exp2", scope: !1239, file: !1239, line: 130, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1242, line: 1098)
!1351 = !DISubprogram(name: "exp2f", scope: !1239, file: !1239, line: 130, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1353, file: !1242, line: 1099)
!1353 = !DISubprogram(name: "exp2l", scope: !1239, file: !1239, line: 130, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1355, file: !1242, line: 1101)
!1355 = !DISubprogram(name: "expm1", scope: !1239, file: !1239, line: 119, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1357, file: !1242, line: 1102)
!1357 = !DISubprogram(name: "expm1f", scope: !1239, file: !1239, line: 119, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1359, file: !1242, line: 1103)
!1359 = !DISubprogram(name: "expm1l", scope: !1239, file: !1239, line: 119, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1361, file: !1242, line: 1105)
!1361 = !DISubprogram(name: "fdim", scope: !1239, file: !1239, line: 329, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1363, file: !1242, line: 1106)
!1363 = !DISubprogram(name: "fdimf", scope: !1239, file: !1239, line: 329, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1365, file: !1242, line: 1107)
!1365 = !DISubprogram(name: "fdiml", scope: !1239, file: !1239, line: 329, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1242, line: 1109)
!1367 = !DISubprogram(name: "fma", scope: !1239, file: !1239, line: 340, type: !1368, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1039, !1039, !1039, !1039}
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1371, file: !1242, line: 1110)
!1371 = !DISubprogram(name: "fmaf", scope: !1239, file: !1239, line: 340, type: !1372, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!779, !779, !779, !779}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1242, line: 1111)
!1375 = !DISubprogram(name: "fmal", scope: !1239, file: !1239, line: 340, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1189, !1189, !1189, !1189}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1242, line: 1113)
!1379 = !DISubprogram(name: "fmax", scope: !1239, file: !1239, line: 333, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1381, file: !1242, line: 1114)
!1381 = !DISubprogram(name: "fmaxf", scope: !1239, file: !1239, line: 333, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1383, file: !1242, line: 1115)
!1383 = !DISubprogram(name: "fmaxl", scope: !1239, file: !1239, line: 333, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1385, file: !1242, line: 1117)
!1385 = !DISubprogram(name: "fmin", scope: !1239, file: !1239, line: 336, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1387, file: !1242, line: 1118)
!1387 = !DISubprogram(name: "fminf", scope: !1239, file: !1239, line: 336, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1389, file: !1242, line: 1119)
!1389 = !DISubprogram(name: "fminl", scope: !1239, file: !1239, line: 336, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1391, file: !1242, line: 1121)
!1391 = !DISubprogram(name: "hypot", scope: !1239, file: !1239, line: 147, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1393, file: !1242, line: 1122)
!1393 = !DISubprogram(name: "hypotf", scope: !1239, file: !1239, line: 147, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1395, file: !1242, line: 1123)
!1395 = !DISubprogram(name: "hypotl", scope: !1239, file: !1239, line: 147, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1397, file: !1242, line: 1125)
!1397 = !DISubprogram(name: "ilogb", scope: !1239, file: !1239, line: 283, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!67, !1039}
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1401, file: !1242, line: 1126)
!1401 = !DISubprogram(name: "ilogbf", scope: !1239, file: !1239, line: 283, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!67, !779}
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1405, file: !1242, line: 1127)
!1405 = !DISubprogram(name: "ilogbl", scope: !1239, file: !1239, line: 283, type: !1406, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!67, !1189}
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1409, file: !1242, line: 1129)
!1409 = !DISubprogram(name: "lgamma", scope: !1239, file: !1239, line: 233, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1411, file: !1242, line: 1130)
!1411 = !DISubprogram(name: "lgammaf", scope: !1239, file: !1239, line: 233, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1413, file: !1242, line: 1131)
!1413 = !DISubprogram(name: "lgammal", scope: !1239, file: !1239, line: 233, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1415, file: !1242, line: 1134)
!1415 = !DISubprogram(name: "llrint", scope: !1239, file: !1239, line: 319, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1156, !1039}
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1419, file: !1242, line: 1135)
!1419 = !DISubprogram(name: "llrintf", scope: !1239, file: !1239, line: 319, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1156, !779}
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1423, file: !1242, line: 1136)
!1423 = !DISubprogram(name: "llrintl", scope: !1239, file: !1239, line: 319, type: !1424, flags: DIFlagPrototyped, spFlags: 0)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1156, !1189}
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1427, file: !1242, line: 1138)
!1427 = !DISubprogram(name: "llround", scope: !1239, file: !1239, line: 325, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1429, file: !1242, line: 1139)
!1429 = !DISubprogram(name: "llroundf", scope: !1239, file: !1239, line: 325, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1431, file: !1242, line: 1140)
!1431 = !DISubprogram(name: "llroundl", scope: !1239, file: !1239, line: 325, type: !1424, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1242, line: 1143)
!1433 = !DISubprogram(name: "log1p", scope: !1239, file: !1239, line: 122, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1435, file: !1242, line: 1144)
!1435 = !DISubprogram(name: "log1pf", scope: !1239, file: !1239, line: 122, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1437, file: !1242, line: 1145)
!1437 = !DISubprogram(name: "log1pl", scope: !1239, file: !1239, line: 122, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1439, file: !1242, line: 1147)
!1439 = !DISubprogram(name: "log2", scope: !1239, file: !1239, line: 133, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1441, file: !1242, line: 1148)
!1441 = !DISubprogram(name: "log2f", scope: !1239, file: !1239, line: 133, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1443, file: !1242, line: 1149)
!1443 = !DISubprogram(name: "log2l", scope: !1239, file: !1239, line: 133, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1445, file: !1242, line: 1151)
!1445 = !DISubprogram(name: "logb", scope: !1239, file: !1239, line: 125, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1242, line: 1152)
!1447 = !DISubprogram(name: "logbf", scope: !1239, file: !1239, line: 125, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1449, file: !1242, line: 1153)
!1449 = !DISubprogram(name: "logbl", scope: !1239, file: !1239, line: 125, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1451, file: !1242, line: 1155)
!1451 = !DISubprogram(name: "lrint", scope: !1239, file: !1239, line: 317, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!454, !1039}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1455, file: !1242, line: 1156)
!1455 = !DISubprogram(name: "lrintf", scope: !1239, file: !1239, line: 317, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!454, !779}
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1459, file: !1242, line: 1157)
!1459 = !DISubprogram(name: "lrintl", scope: !1239, file: !1239, line: 317, type: !1460, flags: DIFlagPrototyped, spFlags: 0)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!454, !1189}
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1463, file: !1242, line: 1159)
!1463 = !DISubprogram(name: "lround", scope: !1239, file: !1239, line: 323, type: !1452, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1465, file: !1242, line: 1160)
!1465 = !DISubprogram(name: "lroundf", scope: !1239, file: !1239, line: 323, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1467, file: !1242, line: 1161)
!1467 = !DISubprogram(name: "lroundl", scope: !1239, file: !1239, line: 323, type: !1460, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1242, line: 1163)
!1469 = !DISubprogram(name: "nan", scope: !1239, file: !1239, line: 203, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1471, file: !1242, line: 1164)
!1471 = !DISubprogram(name: "nanf", scope: !1239, file: !1239, line: 203, type: !1472, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!779, !638}
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1242, line: 1165)
!1475 = !DISubprogram(name: "nanl", scope: !1239, file: !1239, line: 203, type: !1476, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1189, !638}
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1242, line: 1167)
!1479 = !DISubprogram(name: "nearbyint", scope: !1239, file: !1239, line: 297, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1481, file: !1242, line: 1168)
!1481 = !DISubprogram(name: "nearbyintf", scope: !1239, file: !1239, line: 297, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1483, file: !1242, line: 1169)
!1483 = !DISubprogram(name: "nearbyintl", scope: !1239, file: !1239, line: 297, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1485, file: !1242, line: 1171)
!1485 = !DISubprogram(name: "nextafter", scope: !1239, file: !1239, line: 262, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1487, file: !1242, line: 1172)
!1487 = !DISubprogram(name: "nextafterf", scope: !1239, file: !1239, line: 262, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1489, file: !1242, line: 1173)
!1489 = !DISubprogram(name: "nextafterl", scope: !1239, file: !1239, line: 262, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1491, file: !1242, line: 1175)
!1491 = !DISubprogram(name: "nexttoward", scope: !1239, file: !1239, line: 264, type: !1492, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1039, !1039, !1189}
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1495, file: !1242, line: 1176)
!1495 = !DISubprogram(name: "nexttowardf", scope: !1239, file: !1239, line: 264, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!779, !779, !1189}
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1499, file: !1242, line: 1177)
!1499 = !DISubprogram(name: "nexttowardl", scope: !1239, file: !1239, line: 264, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1501, file: !1242, line: 1179)
!1501 = !DISubprogram(name: "remainder", scope: !1239, file: !1239, line: 275, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1503, file: !1242, line: 1180)
!1503 = !DISubprogram(name: "remainderf", scope: !1239, file: !1239, line: 275, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1505, file: !1242, line: 1181)
!1505 = !DISubprogram(name: "remainderl", scope: !1239, file: !1239, line: 275, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1507, file: !1242, line: 1183)
!1507 = !DISubprogram(name: "remquo", scope: !1239, file: !1239, line: 310, type: !1508, flags: DIFlagPrototyped, spFlags: 0)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1039, !1039, !1039, !1269}
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1511, file: !1242, line: 1184)
!1511 = !DISubprogram(name: "remquof", scope: !1239, file: !1239, line: 310, type: !1512, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!779, !779, !779, !1269}
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1515, file: !1242, line: 1185)
!1515 = !DISubprogram(name: "remquol", scope: !1239, file: !1239, line: 310, type: !1516, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1189, !1189, !1189, !1269}
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1519, file: !1242, line: 1187)
!1519 = !DISubprogram(name: "rint", scope: !1239, file: !1239, line: 259, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1521, file: !1242, line: 1188)
!1521 = !DISubprogram(name: "rintf", scope: !1239, file: !1239, line: 259, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1523, file: !1242, line: 1189)
!1523 = !DISubprogram(name: "rintl", scope: !1239, file: !1239, line: 259, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1525, file: !1242, line: 1191)
!1525 = !DISubprogram(name: "round", scope: !1239, file: !1239, line: 301, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1242, line: 1192)
!1527 = !DISubprogram(name: "roundf", scope: !1239, file: !1239, line: 301, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1529, file: !1242, line: 1193)
!1529 = !DISubprogram(name: "roundl", scope: !1239, file: !1239, line: 301, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1531, file: !1242, line: 1195)
!1531 = !DISubprogram(name: "scalbln", scope: !1239, file: !1239, line: 293, type: !1532, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1039, !1039, !454}
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1535, file: !1242, line: 1196)
!1535 = !DISubprogram(name: "scalblnf", scope: !1239, file: !1239, line: 293, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!779, !779, !454}
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1539, file: !1242, line: 1197)
!1539 = !DISubprogram(name: "scalblnl", scope: !1239, file: !1239, line: 293, type: !1540, flags: DIFlagPrototyped, spFlags: 0)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1189, !1189, !454}
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1543, file: !1242, line: 1199)
!1543 = !DISubprogram(name: "scalbn", scope: !1239, file: !1239, line: 279, type: !1272, flags: DIFlagPrototyped, spFlags: 0)
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1545, file: !1242, line: 1200)
!1545 = !DISubprogram(name: "scalbnf", scope: !1239, file: !1239, line: 279, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!779, !779, !67}
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1549, file: !1242, line: 1201)
!1549 = !DISubprogram(name: "scalbnl", scope: !1239, file: !1239, line: 279, type: !1550, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1189, !1189, !67}
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1553, file: !1242, line: 1203)
!1553 = !DISubprogram(name: "tgamma", scope: !1239, file: !1239, line: 238, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1555, file: !1242, line: 1204)
!1555 = !DISubprogram(name: "tgammaf", scope: !1239, file: !1239, line: 238, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1557, file: !1242, line: 1205)
!1557 = !DISubprogram(name: "tgammal", scope: !1239, file: !1239, line: 238, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1242, line: 1207)
!1559 = !DISubprogram(name: "trunc", scope: !1239, file: !1239, line: 305, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1561, file: !1242, line: 1208)
!1561 = !DISubprogram(name: "truncf", scope: !1239, file: !1239, line: 305, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1563, file: !1242, line: 1209)
!1563 = !DISubprogram(name: "truncl", scope: !1239, file: !1239, line: 305, type: !1211, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1210, file: !1565, line: 38)
!1565 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1567, file: !1565, line: 54)
!1567 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !1242, line: 380, type: !1568, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1189, !1189, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1572, file: !1585, line: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1573, line: 6, baseType: !1574)
!1573 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1575, line: 21, baseType: !1576)
!1575 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1575, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1577, identifier: "_ZTS11__mbstate_t")
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1576, file: !1575, line: 15, baseType: !67, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1576, file: !1575, line: 20, baseType: !1580, size: 32, offset: 32)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1575, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1581, identifier: "_ZTSN11__mbstate_tUt_E")
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1580, file: !1575, line: 18, baseType: !15, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1580, file: !1575, line: 19, baseType: !1584, size: 32)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 32, elements: !843)
!1585 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1587, file: !1585, line: 141)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1588, line: 20, baseType: !15)
!1588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1590, file: !1585, line: 143)
!1590 = !DISubprogram(name: "btowc", scope: !1591, file: !1591, line: 285, type: !1592, flags: DIFlagPrototyped, spFlags: 0)
!1591 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1587, !67}
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1595, file: !1585, line: 144)
!1595 = !DISubprogram(name: "fgetwc", scope: !1591, file: !1591, line: 744, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1587, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1600, line: 5, baseType: !1601)
!1600 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1602, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1604, file: !1585, line: 145)
!1604 = !DISubprogram(name: "fgetws", scope: !1591, file: !1591, line: 773, type: !1605, flags: DIFlagPrototyped, spFlags: 0)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1100, !1099, !67, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1598)
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1609, file: !1585, line: 146)
!1609 = !DISubprogram(name: "fputwc", scope: !1591, file: !1591, line: 758, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1587, !1101, !1598}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1613, file: !1585, line: 147)
!1613 = !DISubprogram(name: "fputws", scope: !1591, file: !1591, line: 780, type: !1614, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!67, !1144, !1607}
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1617, file: !1585, line: 148)
!1617 = !DISubprogram(name: "fwide", scope: !1591, file: !1591, line: 588, type: !1618, flags: DIFlagPrototyped, spFlags: 0)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!67, !1598, !67}
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1621, file: !1585, line: 149)
!1621 = !DISubprogram(name: "fwprintf", scope: !1591, file: !1591, line: 595, type: !1622, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!67, !1607, !1144, null}
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1625, file: !1585, line: 150)
!1625 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1591, file: !1591, line: 657, type: !1622, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1627, file: !1585, line: 151)
!1627 = !DISubprogram(name: "getwc", scope: !1591, file: !1591, line: 745, type: !1596, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1629, file: !1585, line: 152)
!1629 = !DISubprogram(name: "getwchar", scope: !1591, file: !1591, line: 751, type: !1630, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1587}
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1633, file: !1585, line: 153)
!1633 = !DISubprogram(name: "mbrlen", scope: !1591, file: !1591, line: 308, type: !1634, flags: DIFlagPrototyped, spFlags: 0)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1052, !1102, !1052, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1639, file: !1585, line: 154)
!1639 = !DISubprogram(name: "mbrtowc", scope: !1591, file: !1591, line: 297, type: !1640, flags: DIFlagPrototyped, spFlags: 0)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1052, !1099, !1102, !1052, !1636}
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1643, file: !1585, line: 155)
!1643 = !DISubprogram(name: "mbsinit", scope: !1591, file: !1591, line: 293, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!67, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1649, file: !1585, line: 156)
!1649 = !DISubprogram(name: "mbsrtowcs", scope: !1591, file: !1591, line: 338, type: !1650, flags: DIFlagPrototyped, spFlags: 0)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1052, !1099, !1652, !1052, !1636}
!1652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1655, file: !1585, line: 157)
!1655 = !DISubprogram(name: "putwc", scope: !1591, file: !1591, line: 759, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1657, file: !1585, line: 158)
!1657 = !DISubprogram(name: "putwchar", scope: !1591, file: !1591, line: 765, type: !1658, flags: DIFlagPrototyped, spFlags: 0)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1587, !1101}
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1661, file: !1585, line: 160)
!1661 = !DISubprogram(name: "swprintf", scope: !1591, file: !1591, line: 605, type: !1662, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!67, !1099, !1052, !1144, null}
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1665, file: !1585, line: 162)
!1665 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1591, file: !1591, line: 664, type: !1666, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!67, !1144, !1144, null}
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1669, file: !1585, line: 163)
!1669 = !DISubprogram(name: "ungetwc", scope: !1591, file: !1591, line: 788, type: !1670, flags: DIFlagPrototyped, spFlags: 0)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1587, !1587, !1598}
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1673, file: !1585, line: 164)
!1673 = !DISubprogram(name: "vfwprintf", scope: !1591, file: !1591, line: 613, type: !1674, flags: DIFlagPrototyped, spFlags: 0)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!67, !1607, !1144, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1678, identifier: "_ZTS13__va_list_tag")
!1678 = !{!1679, !1681, !1682, !1683}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1677, file: !1680, baseType: !15, size: 32)
!1680 = !DIFile(filename: "LRT/test/api_static_cube/static_cube.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1677, file: !1680, baseType: !15, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1677, file: !1680, baseType: !688, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1677, file: !1680, baseType: !688, size: 64, offset: 128)
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1685, file: !1585, line: 166)
!1685 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1591, file: !1591, line: 711, type: !1674, flags: DIFlagPrototyped, spFlags: 0)
!1686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1687, file: !1585, line: 169)
!1687 = !DISubprogram(name: "vswprintf", scope: !1591, file: !1591, line: 626, type: !1688, flags: DIFlagPrototyped, spFlags: 0)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!67, !1099, !1052, !1144, !1676}
!1690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1585, line: 172)
!1691 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1591, file: !1591, line: 718, type: !1692, flags: DIFlagPrototyped, spFlags: 0)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!67, !1144, !1144, !1676}
!1694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1695, file: !1585, line: 174)
!1695 = !DISubprogram(name: "vwprintf", scope: !1591, file: !1591, line: 621, type: !1696, flags: DIFlagPrototyped, spFlags: 0)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!67, !1144, !1676}
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1699, file: !1585, line: 176)
!1699 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1591, file: !1591, line: 715, type: !1696, flags: DIFlagPrototyped, spFlags: 0)
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1701, file: !1585, line: 178)
!1701 = !DISubprogram(name: "wcrtomb", scope: !1591, file: !1591, line: 302, type: !1702, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1052, !1143, !1101, !1636}
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1705, file: !1585, line: 179)
!1705 = !DISubprogram(name: "wcscat", scope: !1591, file: !1591, line: 97, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1100, !1099, !1144}
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1709, file: !1585, line: 180)
!1709 = !DISubprogram(name: "wcscmp", scope: !1591, file: !1591, line: 106, type: !1710, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!67, !1145, !1145}
!1712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1713, file: !1585, line: 181)
!1713 = !DISubprogram(name: "wcscoll", scope: !1591, file: !1591, line: 131, type: !1710, flags: DIFlagPrototyped, spFlags: 0)
!1714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1715, file: !1585, line: 182)
!1715 = !DISubprogram(name: "wcscpy", scope: !1591, file: !1591, line: 87, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1717, file: !1585, line: 183)
!1717 = !DISubprogram(name: "wcscspn", scope: !1591, file: !1591, line: 188, type: !1718, flags: DIFlagPrototyped, spFlags: 0)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1052, !1145, !1145}
!1720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1721, file: !1585, line: 184)
!1721 = !DISubprogram(name: "wcsftime", scope: !1591, file: !1591, line: 852, type: !1722, flags: DIFlagPrototyped, spFlags: 0)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1052, !1099, !1052, !1144, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1591, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1729, file: !1585, line: 185)
!1729 = !DISubprogram(name: "wcslen", scope: !1591, file: !1591, line: 223, type: !1730, flags: DIFlagPrototyped, spFlags: 0)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1052, !1145}
!1732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1733, file: !1585, line: 186)
!1733 = !DISubprogram(name: "wcsncat", scope: !1591, file: !1591, line: 101, type: !1734, flags: DIFlagPrototyped, spFlags: 0)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1100, !1099, !1144, !1052}
!1736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1737, file: !1585, line: 187)
!1737 = !DISubprogram(name: "wcsncmp", scope: !1591, file: !1591, line: 109, type: !1738, flags: DIFlagPrototyped, spFlags: 0)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!67, !1145, !1145, !1052}
!1740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1741, file: !1585, line: 188)
!1741 = !DISubprogram(name: "wcsncpy", scope: !1591, file: !1591, line: 92, type: !1734, flags: DIFlagPrototyped, spFlags: 0)
!1742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1743, file: !1585, line: 189)
!1743 = !DISubprogram(name: "wcsrtombs", scope: !1591, file: !1591, line: 344, type: !1744, flags: DIFlagPrototyped, spFlags: 0)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1052, !1143, !1746, !1052, !1636}
!1746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1749, file: !1585, line: 190)
!1749 = !DISubprogram(name: "wcsspn", scope: !1591, file: !1591, line: 192, type: !1718, flags: DIFlagPrototyped, spFlags: 0)
!1750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1751, file: !1585, line: 191)
!1751 = !DISubprogram(name: "wcstod", scope: !1591, file: !1591, line: 378, type: !1752, flags: DIFlagPrototyped, spFlags: 0)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1039, !1144, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1757, file: !1585, line: 193)
!1757 = !DISubprogram(name: "wcstof", scope: !1591, file: !1591, line: 383, type: !1758, flags: DIFlagPrototyped, spFlags: 0)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!779, !1144, !1754}
!1760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1761, file: !1585, line: 195)
!1761 = !DISubprogram(name: "wcstok", scope: !1591, file: !1591, line: 218, type: !1762, flags: DIFlagPrototyped, spFlags: 0)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1100, !1099, !1144, !1754}
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1765, file: !1585, line: 196)
!1765 = !DISubprogram(name: "wcstol", scope: !1591, file: !1591, line: 429, type: !1766, flags: DIFlagPrototyped, spFlags: 0)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!454, !1144, !1754, !67}
!1768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1769, file: !1585, line: 197)
!1769 = !DISubprogram(name: "wcstoul", scope: !1591, file: !1591, line: 434, type: !1770, flags: DIFlagPrototyped, spFlags: 0)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!139, !1144, !1754, !67}
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1773, file: !1585, line: 198)
!1773 = !DISubprogram(name: "wcsxfrm", scope: !1591, file: !1591, line: 135, type: !1774, flags: DIFlagPrototyped, spFlags: 0)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1052, !1099, !1144, !1052}
!1776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1777, file: !1585, line: 199)
!1777 = !DISubprogram(name: "wctob", scope: !1591, file: !1591, line: 289, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!67, !1587}
!1780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1781, file: !1585, line: 200)
!1781 = !DISubprogram(name: "wmemcmp", scope: !1591, file: !1591, line: 259, type: !1738, flags: DIFlagPrototyped, spFlags: 0)
!1782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1783, file: !1585, line: 201)
!1783 = !DISubprogram(name: "wmemcpy", scope: !1591, file: !1591, line: 263, type: !1734, flags: DIFlagPrototyped, spFlags: 0)
!1784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1785, file: !1585, line: 202)
!1785 = !DISubprogram(name: "wmemmove", scope: !1591, file: !1591, line: 268, type: !1786, flags: DIFlagPrototyped, spFlags: 0)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1100, !1100, !1145, !1052}
!1788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1789, file: !1585, line: 203)
!1789 = !DISubprogram(name: "wmemset", scope: !1591, file: !1591, line: 272, type: !1790, flags: DIFlagPrototyped, spFlags: 0)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1100, !1100, !1101, !1052}
!1792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1793, file: !1585, line: 204)
!1793 = !DISubprogram(name: "wprintf", scope: !1591, file: !1591, line: 602, type: !1794, flags: DIFlagPrototyped, spFlags: 0)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!67, !1144, null}
!1796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1797, file: !1585, line: 205)
!1797 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1591, file: !1591, line: 661, type: !1794, flags: DIFlagPrototyped, spFlags: 0)
!1798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1799, file: !1585, line: 206)
!1799 = !DISubprogram(name: "wcschr", scope: !1591, file: !1591, line: 165, type: !1800, flags: DIFlagPrototyped, spFlags: 0)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!1100, !1145, !1101}
!1802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1803, file: !1585, line: 207)
!1803 = !DISubprogram(name: "wcspbrk", scope: !1591, file: !1591, line: 202, type: !1804, flags: DIFlagPrototyped, spFlags: 0)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1100, !1145, !1145}
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1807, file: !1585, line: 208)
!1807 = !DISubprogram(name: "wcsrchr", scope: !1591, file: !1591, line: 175, type: !1800, flags: DIFlagPrototyped, spFlags: 0)
!1808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1809, file: !1585, line: 209)
!1809 = !DISubprogram(name: "wcsstr", scope: !1591, file: !1591, line: 213, type: !1804, flags: DIFlagPrototyped, spFlags: 0)
!1810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1811, file: !1585, line: 210)
!1811 = !DISubprogram(name: "wmemchr", scope: !1591, file: !1591, line: 254, type: !1812, flags: DIFlagPrototyped, spFlags: 0)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1100, !1145, !1101, !1052}
!1814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1815, file: !1585, line: 251)
!1815 = !DISubprogram(name: "wcstold", scope: !1591, file: !1591, line: 385, type: !1816, flags: DIFlagPrototyped, spFlags: 0)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1189, !1144, !1754}
!1818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1819, file: !1585, line: 260)
!1819 = !DISubprogram(name: "wcstoll", scope: !1591, file: !1591, line: 442, type: !1820, flags: DIFlagPrototyped, spFlags: 0)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1156, !1144, !1754, !67}
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !1823, file: !1585, line: 261)
!1823 = !DISubprogram(name: "wcstoull", scope: !1591, file: !1591, line: 449, type: !1824, flags: DIFlagPrototyped, spFlags: 0)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1180, !1144, !1754, !67}
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1815, file: !1585, line: 267)
!1827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1819, file: !1585, line: 268)
!1828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1823, file: !1585, line: 269)
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1757, file: !1585, line: 283)
!1830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1685, file: !1585, line: 286)
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1585, line: 289)
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1699, file: !1585, line: 292)
!1833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1815, file: !1585, line: 296)
!1834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1819, file: !1585, line: 297)
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1823, file: !1585, line: 298)
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1837, file: !1838, line: 68)
!1837 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1839, file: !1838, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1838 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1839 = !DINamespace(name: "__exception_ptr", scope: !2)
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1839, entity: !1841, file: !1838, line: 84)
!1841 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1838, line: 80, type: !1842, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1837}
!1844 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1845, entity: !1846, file: !1847, line: 58)
!1845 = !DINamespace(name: "__gnu_debug", scope: null)
!1846 = !DINamespace(name: "__debug", scope: !2)
!1847 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1849, file: !1854, line: 47)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1850, line: 24, baseType: !1851)
!1850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1852, line: 37, baseType: !1853)
!1852 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1853 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1854 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1856, file: !1854, line: 48)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1850, line: 25, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1852, line: 39, baseType: !1858)
!1858 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1860, file: !1854, line: 49)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1850, line: 26, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1852, line: 41, baseType: !67)
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1863, file: !1854, line: 50)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1850, line: 27, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1852, line: 44, baseType: !454)
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1866, file: !1854, line: 52)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1867, line: 58, baseType: !1853)
!1867 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1869, file: !1854, line: 53)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1867, line: 60, baseType: !454)
!1870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1871, file: !1854, line: 54)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1867, line: 61, baseType: !454)
!1872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1873, file: !1854, line: 55)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1867, line: 62, baseType: !454)
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1875, file: !1854, line: 57)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1867, line: 43, baseType: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1852, line: 52, baseType: !1851)
!1877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1878, file: !1854, line: 58)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1867, line: 44, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1852, line: 54, baseType: !1857)
!1880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1881, file: !1854, line: 59)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1867, line: 45, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1852, line: 56, baseType: !1861)
!1883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1884, file: !1854, line: 60)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1867, line: 46, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1852, line: 58, baseType: !1864)
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1887, file: !1854, line: 62)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1867, line: 101, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1852, line: 72, baseType: !454)
!1889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1890, file: !1854, line: 63)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1867, line: 87, baseType: !454)
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1892, file: !1854, line: 65)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1893, line: 24, baseType: !1894)
!1893 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1852, line: 38, baseType: !761)
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1896, file: !1854, line: 66)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1893, line: 25, baseType: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1852, line: 40, baseType: !1898)
!1898 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1900, file: !1854, line: 67)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1893, line: 26, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1852, line: 42, baseType: !15)
!1902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1903, file: !1854, line: 68)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1893, line: 27, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1852, line: 45, baseType: !139)
!1905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1906, file: !1854, line: 70)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1867, line: 71, baseType: !761)
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1908, file: !1854, line: 71)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1867, line: 73, baseType: !139)
!1909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1910, file: !1854, line: 72)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1867, line: 74, baseType: !139)
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1912, file: !1854, line: 73)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1867, line: 75, baseType: !139)
!1913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1914, file: !1854, line: 75)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1867, line: 49, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1852, line: 53, baseType: !1894)
!1916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1917, file: !1854, line: 76)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1867, line: 50, baseType: !1918)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1852, line: 55, baseType: !1897)
!1919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1920, file: !1854, line: 77)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1867, line: 51, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1852, line: 57, baseType: !1901)
!1922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1923, file: !1854, line: 78)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1867, line: 52, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1852, line: 59, baseType: !1904)
!1925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1926, file: !1854, line: 80)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1867, line: 102, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1852, line: 73, baseType: !139)
!1928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1929, file: !1854, line: 81)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1867, line: 90, baseType: !139)
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1931, file: !1933, line: 53)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1932, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1932 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1933 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1935, file: !1933, line: 54)
!1935 = !DISubprogram(name: "setlocale", scope: !1932, file: !1932, line: 122, type: !1936, flags: DIFlagPrototyped, spFlags: 0)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1078, !67, !638}
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1939, file: !1933, line: 55)
!1939 = !DISubprogram(name: "localeconv", scope: !1932, file: !1932, line: 125, type: !1940, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1944, file: !1946, line: 64)
!1944 = !DISubprogram(name: "isalnum", scope: !1945, file: !1945, line: 108, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1945 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1946 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1948, file: !1946, line: 65)
!1948 = !DISubprogram(name: "isalpha", scope: !1945, file: !1945, line: 109, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1950, file: !1946, line: 66)
!1950 = !DISubprogram(name: "iscntrl", scope: !1945, file: !1945, line: 110, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1952, file: !1946, line: 67)
!1952 = !DISubprogram(name: "isdigit", scope: !1945, file: !1945, line: 111, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1954, file: !1946, line: 68)
!1954 = !DISubprogram(name: "isgraph", scope: !1945, file: !1945, line: 113, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1956, file: !1946, line: 69)
!1956 = !DISubprogram(name: "islower", scope: !1945, file: !1945, line: 112, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1958, file: !1946, line: 70)
!1958 = !DISubprogram(name: "isprint", scope: !1945, file: !1945, line: 114, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1960, file: !1946, line: 71)
!1960 = !DISubprogram(name: "ispunct", scope: !1945, file: !1945, line: 115, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1962, file: !1946, line: 72)
!1962 = !DISubprogram(name: "isspace", scope: !1945, file: !1945, line: 116, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1964, file: !1946, line: 73)
!1964 = !DISubprogram(name: "isupper", scope: !1945, file: !1945, line: 117, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1966, file: !1946, line: 74)
!1966 = !DISubprogram(name: "isxdigit", scope: !1945, file: !1945, line: 118, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1968, file: !1946, line: 75)
!1968 = !DISubprogram(name: "tolower", scope: !1945, file: !1945, line: 122, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1970, file: !1946, line: 76)
!1970 = !DISubprogram(name: "toupper", scope: !1945, file: !1945, line: 125, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1972, file: !1946, line: 87)
!1972 = !DISubprogram(name: "isblank", scope: !1945, file: !1945, line: 130, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1974, file: !1976, line: 98)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1975, line: 7, baseType: !1601)
!1975 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1976 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1978, file: !1976, line: 99)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1979, line: 84, baseType: !1980)
!1979 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1981, line: 14, baseType: !1982)
!1981 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1981, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1984, file: !1976, line: 101)
!1984 = !DISubprogram(name: "clearerr", scope: !1979, file: !1979, line: 786, type: !1985, flags: DIFlagPrototyped, spFlags: 0)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1989, file: !1976, line: 102)
!1989 = !DISubprogram(name: "fclose", scope: !1979, file: !1979, line: 178, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!67, !1987}
!1992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1993, file: !1976, line: 103)
!1993 = !DISubprogram(name: "feof", scope: !1979, file: !1979, line: 788, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1995, file: !1976, line: 104)
!1995 = !DISubprogram(name: "ferror", scope: !1979, file: !1979, line: 790, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1997, file: !1976, line: 105)
!1997 = !DISubprogram(name: "fflush", scope: !1979, file: !1979, line: 230, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!1998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1999, file: !1976, line: 106)
!1999 = !DISubprogram(name: "fgetc", scope: !1979, file: !1979, line: 513, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!2000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2001, file: !1976, line: 107)
!2001 = !DISubprogram(name: "fgetpos", scope: !1979, file: !1979, line: 760, type: !2002, flags: DIFlagPrototyped, spFlags: 0)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!67, !2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1987)
!2005 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2006)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!2007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2008, file: !1976, line: 108)
!2008 = !DISubprogram(name: "fgets", scope: !1979, file: !1979, line: 592, type: !2009, flags: DIFlagPrototyped, spFlags: 0)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1078, !1143, !67, !2004}
!2011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2012, file: !1976, line: 109)
!2012 = !DISubprogram(name: "fopen", scope: !1979, file: !1979, line: 258, type: !2013, flags: DIFlagPrototyped, spFlags: 0)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1987, !1102, !1102}
!2015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2016, file: !1976, line: 110)
!2016 = !DISubprogram(name: "fprintf", scope: !1979, file: !1979, line: 350, type: !2017, flags: DIFlagPrototyped, spFlags: 0)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!67, !2004, !1102, null}
!2019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2020, file: !1976, line: 111)
!2020 = !DISubprogram(name: "fputc", scope: !1979, file: !1979, line: 549, type: !2021, flags: DIFlagPrototyped, spFlags: 0)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!67, !67, !1987}
!2023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2024, file: !1976, line: 112)
!2024 = !DISubprogram(name: "fputs", scope: !1979, file: !1979, line: 655, type: !2025, flags: DIFlagPrototyped, spFlags: 0)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!67, !1102, !2004}
!2027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2028, file: !1976, line: 113)
!2028 = !DISubprogram(name: "fread", scope: !1979, file: !1979, line: 675, type: !2029, flags: DIFlagPrototyped, spFlags: 0)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!1052, !2031, !1052, !1052, !2004}
!2031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !688)
!2032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2033, file: !1976, line: 114)
!2033 = !DISubprogram(name: "freopen", scope: !1979, file: !1979, line: 265, type: !2034, flags: DIFlagPrototyped, spFlags: 0)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!1987, !1102, !1102, !2004}
!2036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2037, file: !1976, line: 115)
!2037 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1979, file: !1979, line: 434, type: !2017, flags: DIFlagPrototyped, spFlags: 0)
!2038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2039, file: !1976, line: 116)
!2039 = !DISubprogram(name: "fseek", scope: !1979, file: !1979, line: 713, type: !2040, flags: DIFlagPrototyped, spFlags: 0)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!67, !1987, !454, !67}
!2042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2043, file: !1976, line: 117)
!2043 = !DISubprogram(name: "fsetpos", scope: !1979, file: !1979, line: 765, type: !2044, flags: DIFlagPrototyped, spFlags: 0)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!67, !1987, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!2048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2049, file: !1976, line: 118)
!2049 = !DISubprogram(name: "ftell", scope: !1979, file: !1979, line: 718, type: !2050, flags: DIFlagPrototyped, spFlags: 0)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!454, !1987}
!2052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2053, file: !1976, line: 119)
!2053 = !DISubprogram(name: "fwrite", scope: !1979, file: !1979, line: 681, type: !2054, flags: DIFlagPrototyped, spFlags: 0)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!1052, !2056, !1052, !1052, !2004}
!2056 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!2057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2058, file: !1976, line: 120)
!2058 = !DISubprogram(name: "getc", scope: !1979, file: !1979, line: 514, type: !1990, flags: DIFlagPrototyped, spFlags: 0)
!2059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2060, file: !1976, line: 121)
!2060 = !DISubprogram(name: "getchar", scope: !1979, file: !1979, line: 520, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!2061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2062, file: !1976, line: 124)
!2062 = !DISubprogram(name: "gets", scope: !1979, file: !1979, line: 605, type: !2063, flags: DIFlagPrototyped, spFlags: 0)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!1078, !1078}
!2065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2066, file: !1976, line: 126)
!2066 = !DISubprogram(name: "perror", scope: !1979, file: !1979, line: 804, type: !2067, flags: DIFlagPrototyped, spFlags: 0)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !638}
!2069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2070, file: !1976, line: 127)
!2070 = !DISubprogram(name: "printf", scope: !1979, file: !1979, line: 356, type: !2071, flags: DIFlagPrototyped, spFlags: 0)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!67, !1102, null}
!2073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2074, file: !1976, line: 128)
!2074 = !DISubprogram(name: "putc", scope: !1979, file: !1979, line: 550, type: !2021, flags: DIFlagPrototyped, spFlags: 0)
!2075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2076, file: !1976, line: 129)
!2076 = !DISubprogram(name: "putchar", scope: !1979, file: !1979, line: 556, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!2077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2078, file: !1976, line: 130)
!2078 = !DISubprogram(name: "puts", scope: !1979, file: !1979, line: 661, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!2079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2080, file: !1976, line: 131)
!2080 = !DISubprogram(name: "remove", scope: !1979, file: !1979, line: 152, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!2081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2082, file: !1976, line: 132)
!2082 = !DISubprogram(name: "rename", scope: !1979, file: !1979, line: 154, type: !2083, flags: DIFlagPrototyped, spFlags: 0)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!67, !638, !638}
!2085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2086, file: !1976, line: 133)
!2086 = !DISubprogram(name: "rewind", scope: !1979, file: !1979, line: 723, type: !1985, flags: DIFlagPrototyped, spFlags: 0)
!2087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2088, file: !1976, line: 134)
!2088 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1979, file: !1979, line: 437, type: !2071, flags: DIFlagPrototyped, spFlags: 0)
!2089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2090, file: !1976, line: 135)
!2090 = !DISubprogram(name: "setbuf", scope: !1979, file: !1979, line: 328, type: !2091, flags: DIFlagPrototyped, spFlags: 0)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2004, !1143}
!2093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2094, file: !1976, line: 136)
!2094 = !DISubprogram(name: "setvbuf", scope: !1979, file: !1979, line: 332, type: !2095, flags: DIFlagPrototyped, spFlags: 0)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!67, !2004, !1143, !67, !1052}
!2097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2098, file: !1976, line: 137)
!2098 = !DISubprogram(name: "sprintf", scope: !1979, file: !1979, line: 358, type: !2099, flags: DIFlagPrototyped, spFlags: 0)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!67, !1143, !1102, null}
!2101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2102, file: !1976, line: 138)
!2102 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1979, file: !1979, line: 439, type: !2103, flags: DIFlagPrototyped, spFlags: 0)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!67, !1102, !1102, null}
!2105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2106, file: !1976, line: 139)
!2106 = !DISubprogram(name: "tmpfile", scope: !1979, file: !1979, line: 188, type: !2107, flags: DIFlagPrototyped, spFlags: 0)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!1987}
!2109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2110, file: !1976, line: 141)
!2110 = !DISubprogram(name: "tmpnam", scope: !1979, file: !1979, line: 205, type: !2063, flags: DIFlagPrototyped, spFlags: 0)
!2111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2112, file: !1976, line: 143)
!2112 = !DISubprogram(name: "ungetc", scope: !1979, file: !1979, line: 668, type: !2021, flags: DIFlagPrototyped, spFlags: 0)
!2113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2114, file: !1976, line: 144)
!2114 = !DISubprogram(name: "vfprintf", scope: !1979, file: !1979, line: 365, type: !2115, flags: DIFlagPrototyped, spFlags: 0)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!67, !2004, !1102, !1676}
!2117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2118, file: !1976, line: 145)
!2118 = !DISubprogram(name: "vprintf", scope: !1979, file: !1979, line: 371, type: !2119, flags: DIFlagPrototyped, spFlags: 0)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!67, !1102, !1676}
!2121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2122, file: !1976, line: 146)
!2122 = !DISubprogram(name: "vsprintf", scope: !1979, file: !1979, line: 373, type: !2123, flags: DIFlagPrototyped, spFlags: 0)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!67, !1143, !1102, !1676}
!2125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !2126, file: !1976, line: 175)
!2126 = !DISubprogram(name: "snprintf", scope: !1979, file: !1979, line: 378, type: !2127, flags: DIFlagPrototyped, spFlags: 0)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!67, !1143, !1052, !1102, null}
!2129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !2130, file: !1976, line: 176)
!2130 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1979, file: !1979, line: 479, type: !2115, flags: DIFlagPrototyped, spFlags: 0)
!2131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !2132, file: !1976, line: 177)
!2132 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1979, file: !1979, line: 484, type: !2119, flags: DIFlagPrototyped, spFlags: 0)
!2133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !2134, file: !1976, line: 178)
!2134 = !DISubprogram(name: "vsnprintf", scope: !1979, file: !1979, line: 382, type: !2135, flags: DIFlagPrototyped, spFlags: 0)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!67, !1143, !1052, !1102, !1676}
!2137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !85, entity: !2138, file: !1976, line: 179)
!2138 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1979, file: !1979, line: 487, type: !2139, flags: DIFlagPrototyped, spFlags: 0)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!67, !1102, !1102, !1676}
!2141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2126, file: !1976, line: 185)
!2142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2130, file: !1976, line: 186)
!2143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2132, file: !1976, line: 187)
!2144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2134, file: !1976, line: 188)
!2145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2138, file: !1976, line: 189)
!2146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2147, file: !2151, line: 82)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !2148, line: 48, baseType: !2149)
!2148 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!2151 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!2152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2153, file: !2151, line: 83)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !2154, line: 38, baseType: !139)
!2154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1587, file: !2151, line: 84)
!2156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2157, file: !2151, line: 86)
!2157 = !DISubprogram(name: "iswalnum", scope: !2154, file: !2154, line: 95, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2159, file: !2151, line: 87)
!2159 = !DISubprogram(name: "iswalpha", scope: !2154, file: !2154, line: 101, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2161, file: !2151, line: 89)
!2161 = !DISubprogram(name: "iswblank", scope: !2154, file: !2154, line: 146, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2163, file: !2151, line: 91)
!2163 = !DISubprogram(name: "iswcntrl", scope: !2154, file: !2154, line: 104, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2165, file: !2151, line: 92)
!2165 = !DISubprogram(name: "iswctype", scope: !2154, file: !2154, line: 159, type: !2166, flags: DIFlagPrototyped, spFlags: 0)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!67, !1587, !2153}
!2168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2169, file: !2151, line: 93)
!2169 = !DISubprogram(name: "iswdigit", scope: !2154, file: !2154, line: 108, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2171, file: !2151, line: 94)
!2171 = !DISubprogram(name: "iswgraph", scope: !2154, file: !2154, line: 112, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2173, file: !2151, line: 95)
!2173 = !DISubprogram(name: "iswlower", scope: !2154, file: !2154, line: 117, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2175, file: !2151, line: 96)
!2175 = !DISubprogram(name: "iswprint", scope: !2154, file: !2154, line: 120, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2177, file: !2151, line: 97)
!2177 = !DISubprogram(name: "iswpunct", scope: !2154, file: !2154, line: 125, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2179, file: !2151, line: 98)
!2179 = !DISubprogram(name: "iswspace", scope: !2154, file: !2154, line: 130, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2181, file: !2151, line: 99)
!2181 = !DISubprogram(name: "iswupper", scope: !2154, file: !2154, line: 135, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2183, file: !2151, line: 100)
!2183 = !DISubprogram(name: "iswxdigit", scope: !2154, file: !2154, line: 140, type: !1778, flags: DIFlagPrototyped, spFlags: 0)
!2184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2185, file: !2151, line: 101)
!2185 = !DISubprogram(name: "towctrans", scope: !2148, file: !2148, line: 55, type: !2186, flags: DIFlagPrototyped, spFlags: 0)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!1587, !1587, !2147}
!2188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2189, file: !2151, line: 102)
!2189 = !DISubprogram(name: "towlower", scope: !2154, file: !2154, line: 166, type: !2190, flags: DIFlagPrototyped, spFlags: 0)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!1587, !1587}
!2192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2193, file: !2151, line: 103)
!2193 = !DISubprogram(name: "towupper", scope: !2154, file: !2154, line: 169, type: !2190, flags: DIFlagPrototyped, spFlags: 0)
!2194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2195, file: !2151, line: 104)
!2195 = !DISubprogram(name: "wctrans", scope: !2148, file: !2148, line: 52, type: !2196, flags: DIFlagPrototyped, spFlags: 0)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2147, !638}
!2198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2199, file: !2151, line: 105)
!2199 = !DISubprogram(name: "wctype", scope: !2154, file: !2154, line: 155, type: !2200, flags: DIFlagPrototyped, spFlags: 0)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2153, !638}
!2202 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !2203, line: 70)
!2203 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!2204 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !765, line: 7)
!2205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2206, file: !2210, line: 77)
!2206 = !DISubprogram(name: "memchr", scope: !2207, file: !2207, line: 89, type: !2208, flags: DIFlagPrototyped, spFlags: 0)
!2207 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!140, !140, !67, !1052}
!2210 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!2211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2212, file: !2210, line: 78)
!2212 = !DISubprogram(name: "memcmp", scope: !2207, file: !2207, line: 64, type: !2213, flags: DIFlagPrototyped, spFlags: 0)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!67, !140, !140, !1052}
!2215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2216, file: !2210, line: 79)
!2216 = !DISubprogram(name: "memcpy", scope: !2207, file: !2207, line: 43, type: !2217, flags: DIFlagPrototyped, spFlags: 0)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!688, !2031, !2056, !1052}
!2219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2220, file: !2210, line: 80)
!2220 = !DISubprogram(name: "memmove", scope: !2207, file: !2207, line: 47, type: !2221, flags: DIFlagPrototyped, spFlags: 0)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!688, !688, !140, !1052}
!2223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2224, file: !2210, line: 81)
!2224 = !DISubprogram(name: "memset", scope: !2207, file: !2207, line: 61, type: !2225, flags: DIFlagPrototyped, spFlags: 0)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!688, !688, !67, !1052}
!2227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2228, file: !2210, line: 82)
!2228 = !DISubprogram(name: "strcat", scope: !2207, file: !2207, line: 149, type: !2229, flags: DIFlagPrototyped, spFlags: 0)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!1078, !1143, !1102}
!2231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2232, file: !2210, line: 83)
!2232 = !DISubprogram(name: "strcmp", scope: !2207, file: !2207, line: 156, type: !2083, flags: DIFlagPrototyped, spFlags: 0)
!2233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2234, file: !2210, line: 84)
!2234 = !DISubprogram(name: "strcoll", scope: !2207, file: !2207, line: 163, type: !2083, flags: DIFlagPrototyped, spFlags: 0)
!2235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2236, file: !2210, line: 85)
!2236 = !DISubprogram(name: "strcpy", scope: !2207, file: !2207, line: 141, type: !2229, flags: DIFlagPrototyped, spFlags: 0)
!2237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2238, file: !2210, line: 86)
!2238 = !DISubprogram(name: "strcspn", scope: !2207, file: !2207, line: 293, type: !2239, flags: DIFlagPrototyped, spFlags: 0)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1052, !638, !638}
!2241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2242, file: !2210, line: 87)
!2242 = !DISubprogram(name: "strerror", scope: !2207, file: !2207, line: 419, type: !2243, flags: DIFlagPrototyped, spFlags: 0)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!1078, !67}
!2245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2246, file: !2210, line: 88)
!2246 = !DISubprogram(name: "strlen", scope: !2207, file: !2207, line: 407, type: !2247, flags: DIFlagPrototyped, spFlags: 0)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!1052, !638}
!2249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2250, file: !2210, line: 89)
!2250 = !DISubprogram(name: "strncat", scope: !2207, file: !2207, line: 152, type: !2251, flags: DIFlagPrototyped, spFlags: 0)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!1078, !1143, !1102, !1052}
!2253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2254, file: !2210, line: 90)
!2254 = !DISubprogram(name: "strncmp", scope: !2207, file: !2207, line: 159, type: !2255, flags: DIFlagPrototyped, spFlags: 0)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!67, !638, !638, !1052}
!2257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2258, file: !2210, line: 91)
!2258 = !DISubprogram(name: "strncpy", scope: !2207, file: !2207, line: 144, type: !2251, flags: DIFlagPrototyped, spFlags: 0)
!2259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2260, file: !2210, line: 92)
!2260 = !DISubprogram(name: "strspn", scope: !2207, file: !2207, line: 297, type: !2239, flags: DIFlagPrototyped, spFlags: 0)
!2261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2262, file: !2210, line: 93)
!2262 = !DISubprogram(name: "strtok", scope: !2207, file: !2207, line: 356, type: !2229, flags: DIFlagPrototyped, spFlags: 0)
!2263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2264, file: !2210, line: 94)
!2264 = !DISubprogram(name: "strxfrm", scope: !2207, file: !2207, line: 166, type: !2265, flags: DIFlagPrototyped, spFlags: 0)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!1052, !1143, !1102, !1052}
!2267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2268, file: !2210, line: 95)
!2268 = !DISubprogram(name: "strchr", scope: !2207, file: !2207, line: 228, type: !2269, flags: DIFlagPrototyped, spFlags: 0)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!638, !638, !67}
!2271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2272, file: !2210, line: 96)
!2272 = !DISubprogram(name: "strpbrk", scope: !2207, file: !2207, line: 305, type: !2273, flags: DIFlagPrototyped, spFlags: 0)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!638, !638, !638}
!2275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2276, file: !2210, line: 97)
!2276 = !DISubprogram(name: "strrchr", scope: !2207, file: !2207, line: 255, type: !2269, flags: DIFlagPrototyped, spFlags: 0)
!2277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !2278, file: !2210, line: 98)
!2278 = !DISubprogram(name: "strstr", scope: !2207, file: !2207, line: 332, type: !2273, flags: DIFlagPrototyped, spFlags: 0)
!2279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !2280, file: !13, line: 23)
!2280 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matrix4x4", scope: !766, file: !2281, line: 9, size: 512, flags: DIFlagTypePassByValue, elements: !2282, identifier: "_ZTSN4RTTL9Matrix4x4E")
!2281 = !DIFile(filename: "RTTL/common/RTMatrix.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "7f520098e4175181190b8a9ccd06dffd")
!2282 = !{!2283, !2286, !2290, !2293, !2296, !2301, !2304, !2307}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !2280, file: !2281, line: 12, baseType: !2284, size: 512, flags: DIFlagPublic)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 512, elements: !2285)
!2285 = !{!844, !844}
!2286 = !DISubprogram(name: "operator()", linkageName: "_ZN4RTTL9Matrix4x4clEii", scope: !2280, file: !2281, line: 14, type: !2287, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!800, !2289, !987, !987}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2290 = !DISubprogram(name: "getRow", linkageName: "_ZN4RTTL9Matrix4x46getRowEi", scope: !2280, file: !2281, line: 17, type: !2291, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!764, !2289, !67}
!2293 = !DISubprogram(name: "getCol", linkageName: "_ZN4RTTL9Matrix4x46getColEi", scope: !2280, file: !2281, line: 26, type: !2294, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!770, !2289, !67}
!2296 = !DISubprogram(name: "setCol", linkageName: "_ZN4RTTL9Matrix4x46setColEiRKNS_7RTVec_tILi3EfLi0EEE", scope: !2280, file: !2281, line: 34, type: !2297, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2289, !67, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!2301 = !DISubprogram(name: "setIdentity", linkageName: "_ZN4RTTL9Matrix4x411setIdentityEv", scope: !2280, file: !2281, line: 40, type: !2302, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2289}
!2304 = !DISubprogram(name: "setTranslationPart", linkageName: "_ZN4RTTL9Matrix4x418setTranslationPartERKNS_7RTVec_tILi3EfLi0EEE", scope: !2280, file: !2281, line: 47, type: !2305, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !2289, !2299}
!2307 = !DISubprogram(name: "setRotationPart", linkageName: "_ZN4RTTL9Matrix4x415setRotationPartERKNS_7RTVec_tILi3EfLi0EEEf", scope: !2280, file: !2281, line: 54, type: !2308, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2289, !2299, !792}
!2310 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !766, file: !29, line: 13)
!2311 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !14, file: !29, line: 14)
!2312 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !852, line: 10)
!2313 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !839, line: 24, baseType: !838)
!2316 = !{i32 7, !"Dwarf Version", i32 5}
!2317 = !{i32 2, !"Debug Info Version", i32 3}
!2318 = !{i32 1, !"wchar_size", i32 4}
!2319 = !{i32 8, !"PIC Level", i32 2}
!2320 = !{i32 7, !"PIE Level", i32 2}
!2321 = !{i32 7, !"uwtable", i32 2}
!2322 = !{i32 7, !"frame-pointer", i32 2}
!2323 = !{!"clang version 16.0.0"}
!2324 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1680, file: !1680, type: !1026, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2325 = !DILocation(line: 74, column: 25, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2324, file: !3, discriminator: 0)
!2327 = !DILocation(line: 0, scope: !2324)
!2328 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1680, file: !1680, type: !1026, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2329 = !DILocalVariable(name: "a", arg: 1, scope: !2330, file: !839, line: 622, type: !779)
!2330 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !839, file: !839, line: 622, type: !2331, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!2315, !779}
!2333 = !DILocation(line: 622, column: 40, scope: !2330, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 38, column: 31, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2328, file: !2313, discriminator: 0)
!2336 = !DILocalVariable(name: "result", scope: !2330, file: !839, line: 623, type: !2315)
!2337 = !DILocation(line: 623, column: 11, scope: !2330, inlinedAt: !2334)
!2338 = !DILocalVariable(name: "i", scope: !2339, file: !839, line: 626, type: !67)
!2339 = distinct !DILexicalBlock(scope: !2330, file: !839, line: 626, column: 5)
!2340 = !DILocation(line: 626, column: 14, scope: !2339, inlinedAt: !2334)
!2341 = !DILocation(line: 626, column: 10, scope: !2339, inlinedAt: !2334)
!2342 = !DILocation(line: 626, column: 21, scope: !2343, inlinedAt: !2334)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !839, line: 626, column: 5)
!2344 = !DILocation(line: 626, column: 23, scope: !2343, inlinedAt: !2334)
!2345 = !DILocation(line: 626, column: 5, scope: !2339, inlinedAt: !2334)
!2346 = !DILocation(line: 627, column: 23, scope: !2343, inlinedAt: !2334)
!2347 = !DILocation(line: 627, column: 18, scope: !2343, inlinedAt: !2334)
!2348 = !DILocation(line: 627, column: 9, scope: !2343, inlinedAt: !2334)
!2349 = !DILocation(line: 627, column: 21, scope: !2343, inlinedAt: !2334)
!2350 = !DILocation(line: 626, column: 39, scope: !2343, inlinedAt: !2334)
!2351 = !DILocation(line: 626, column: 5, scope: !2343, inlinedAt: !2334)
!2352 = distinct !{!2352, !2345, !2353, !2354}
!2353 = !DILocation(line: 627, column: 23, scope: !2339, inlinedAt: !2334)
!2354 = !{!"llvm.loop.mustprogress"}
!2355 = !DILocation(line: 629, column: 5, scope: !2330, inlinedAt: !2334)
!2356 = !DILocation(line: 38, column: 31, scope: !2335)
!2357 = !DILocation(line: 38, column: 43, scope: !2335)
!2358 = distinct !DISubprogram(name: "idle", linkageName: "_Z4idlev", scope: !852, file: !852, line: 54, type: !1026, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2359 = !DILocation(line: 56, column: 3, scope: !2358)
!2360 = !DILocation(line: 57, column: 1, scope: !2358)
!2361 = distinct !DISubprogram(name: "display", linkageName: "_Z7displayv", scope: !852, file: !852, line: 59, type: !1026, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2362 = !DILocation(line: 61, column: 18, scope: !2361)
!2363 = !DILocation(line: 61, column: 30, scope: !2361)
!2364 = !DILocation(line: 61, column: 38, scope: !2361)
!2365 = !DILocation(line: 61, column: 3, scope: !2361)
!2366 = !DILocation(line: 62, column: 16, scope: !2361)
!2367 = !DILocation(line: 62, column: 3, scope: !2361)
!2368 = !DILocation(line: 63, column: 3, scope: !2361)
!2369 = !DILocation(line: 64, column: 3, scope: !2361)
!2370 = !DILocation(line: 65, column: 1, scope: !2361)
!2371 = distinct !DISubprogram(name: "createCube", linkageName: "_Z10createCubePN3ISG4NodeE", scope: !852, file: !852, line: 67, type: !2372, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "mesh_t", file: !29, line: 30, baseType: !742)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !29, line: 25, baseType: !96)
!2376 = !DILocalVariable(name: "root", arg: 1, scope: !2371, file: !852, line: 67, type: !2375)
!2377 = !DILocation(line: 67, column: 26, scope: !2371)
!2378 = !DILocalVariable(name: "mesh", scope: !2371, file: !852, line: 70, type: !2374)
!2379 = !DILocation(line: 70, column: 10, scope: !2371)
!2380 = !DILocation(line: 70, column: 32, scope: !2371)
!2381 = !DILocation(line: 70, column: 17, scope: !2371)
!2382 = !DILocalVariable(name: "vertex_array", scope: !2371, file: !852, line: 74, type: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_t", file: !29, line: 28, baseType: !747)
!2384 = !DILocation(line: 74, column: 10, scope: !2371)
!2385 = !DILocation(line: 74, column: 41, scope: !2371)
!2386 = !DILocation(line: 74, column: 25, scope: !2371)
!2387 = !DILocation(line: 75, column: 3, scope: !2371)
!2388 = !DILocation(line: 80, column: 14, scope: !2371)
!2389 = !DILocation(line: 80, column: 3, scope: !2371)
!2390 = !DILocalVariable(name: "index_array", scope: !2371, file: !852, line: 83, type: !2383)
!2391 = !DILocation(line: 83, column: 10, scope: !2371)
!2392 = !DILocation(line: 83, column: 40, scope: !2371)
!2393 = !DILocation(line: 83, column: 24, scope: !2371)
!2394 = !DILocation(line: 84, column: 3, scope: !2371)
!2395 = !DILocation(line: 85, column: 15, scope: !2371)
!2396 = !DILocation(line: 85, column: 3, scope: !2371)
!2397 = !DILocation(line: 87, column: 10, scope: !2371)
!2398 = !DILocation(line: 87, column: 3, scope: !2371)
!2399 = distinct !DISubprogram(name: "rtTriangleMesh", linkageName: "_Z14rtTriangleMeshPN3ISG4NodeE", scope: !29, file: !29, line: 102, type: !2372, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2400 = !DILocalVariable(name: "parent", arg: 1, scope: !2399, file: !29, line: 102, type: !2375)
!2401 = !DILocation(line: 102, column: 45, scope: !2399)
!2402 = !DILocation(line: 104, column: 20, scope: !2399)
!2403 = !DILocation(line: 104, column: 10, scope: !2399)
!2404 = !DILocation(line: 104, column: 3, scope: !2399)
!2405 = distinct !DISubprogram(name: "rtNewCoordArray", linkageName: "_Z15rtNewCoordArrayPN3ISG4NodeENS_10DataFormatE", scope: !29, file: !29, line: 291, type: !2406, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2383, !2375, !684}
!2408 = !DILocalVariable(name: "parent", arg: 1, scope: !2405, file: !29, line: 291, type: !2375)
!2409 = !DILocation(line: 291, column: 46, scope: !2405)
!2410 = !DILocalVariable(name: "internalFormat", arg: 2, scope: !2405, file: !29, line: 291, type: !684)
!2411 = !DILocation(line: 291, column: 65, scope: !2405)
!2412 = !DILocalVariable(name: "data", scope: !2405, file: !29, line: 293, type: !2383)
!2413 = !DILocation(line: 293, column: 10, scope: !2405)
!2414 = !DILocation(line: 293, column: 17, scope: !2405)
!2415 = !DILocation(line: 293, column: 31, scope: !2405)
!2416 = !DILocation(line: 293, column: 50, scope: !2405)
!2417 = !DILocation(line: 293, column: 21, scope: !2405)
!2418 = !DILocalVariable(name: "mesh", scope: !2405, file: !29, line: 294, type: !2374)
!2419 = !DILocation(line: 294, column: 10, scope: !2405)
!2420 = !DILocation(line: 294, column: 41, scope: !2405)
!2421 = !DILocation(line: 294, column: 17, scope: !2405)
!2422 = !DILocation(line: 298, column: 1, scope: !2405)
!2423 = !DILocation(line: 295, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2405, file: !29, line: 295, column: 7)
!2425 = !DILocation(line: 295, column: 7, scope: !2405)
!2426 = !DILocation(line: 296, column: 5, scope: !2424)
!2427 = !DILocation(line: 296, column: 21, scope: !2424)
!2428 = !DILocation(line: 296, column: 11, scope: !2424)
!2429 = !DILocation(line: 297, column: 10, scope: !2405)
!2430 = !DILocation(line: 297, column: 3, scope: !2405)
!2431 = distinct !DISubprogram(name: "rtValidData", linkageName: "_Z11rtValidDataPN3ISG9DataArrayE", scope: !29, file: !29, line: 312, type: !2432, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!193, !2383}
!2434 = !DILocalVariable(name: "data", arg: 1, scope: !2431, file: !29, line: 312, type: !2383)
!2435 = !DILocation(line: 312, column: 40, scope: !2431)
!2436 = !DILocation(line: 314, column: 10, scope: !2431)
!2437 = !DILocation(line: 314, column: 15, scope: !2431)
!2438 = !DILocation(line: 314, column: 3, scope: !2431)
!2439 = distinct !DISubprogram(name: "rtCoords3f", linkageName: "_Z10rtCoords3fPN3ISG9DataArrayEPKfi14DataArrayFlags", scope: !29, file: !29, line: 223, type: !2440, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2383, !2442, !67, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArrayFlags", file: !29, line: 154, baseType: !28)
!2444 = !DILocalVariable(name: "target", arg: 1, scope: !2439, file: !29, line: 223, type: !2383)
!2445 = !DILocation(line: 223, column: 39, scope: !2439)
!2446 = !DILocalVariable(name: "coord", arg: 2, scope: !2439, file: !29, line: 223, type: !2442)
!2447 = !DILocation(line: 223, column: 66, scope: !2439)
!2448 = !DILocalVariable(name: "coords", arg: 3, scope: !2439, file: !29, line: 223, type: !67)
!2449 = !DILocation(line: 223, column: 77, scope: !2439)
!2450 = !DILocalVariable(name: "flags", arg: 4, scope: !2439, file: !29, line: 223, type: !2443)
!2451 = !DILocation(line: 223, column: 100, scope: !2439)
!2452 = !DILocation(line: 225, column: 18, scope: !2439)
!2453 = !DILocation(line: 225, column: 62, scope: !2439)
!2454 = !DILocation(line: 225, column: 68, scope: !2439)
!2455 = !DILocation(line: 225, column: 75, scope: !2439)
!2456 = !DILocation(line: 225, column: 3, scope: !2439)
!2457 = !DILocation(line: 227, column: 1, scope: !2439)
!2458 = distinct !DISubprogram(name: "rtNewIndexArray", linkageName: "_Z15rtNewIndexArrayPN3ISG4NodeENS_10DataFormatE", scope: !29, file: !29, line: 299, type: !2406, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2459 = !DILocalVariable(name: "parent", arg: 1, scope: !2458, file: !29, line: 299, type: !2375)
!2460 = !DILocation(line: 299, column: 46, scope: !2458)
!2461 = !DILocalVariable(name: "internalFormat", arg: 2, scope: !2458, file: !29, line: 299, type: !684)
!2462 = !DILocation(line: 299, column: 65, scope: !2458)
!2463 = !DILocalVariable(name: "data", scope: !2458, file: !29, line: 301, type: !2383)
!2464 = !DILocation(line: 301, column: 10, scope: !2458)
!2465 = !DILocation(line: 301, column: 17, scope: !2458)
!2466 = !DILocation(line: 301, column: 31, scope: !2458)
!2467 = !DILocation(line: 301, column: 51, scope: !2458)
!2468 = !DILocation(line: 301, column: 21, scope: !2458)
!2469 = !DILocalVariable(name: "mesh", scope: !2458, file: !29, line: 302, type: !2374)
!2470 = !DILocation(line: 302, column: 10, scope: !2458)
!2471 = !DILocation(line: 302, column: 41, scope: !2458)
!2472 = !DILocation(line: 302, column: 17, scope: !2458)
!2473 = !DILocation(line: 306, column: 1, scope: !2458)
!2474 = !DILocation(line: 303, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2458, file: !29, line: 303, column: 7)
!2476 = !DILocation(line: 303, column: 7, scope: !2458)
!2477 = !DILocation(line: 304, column: 5, scope: !2475)
!2478 = !DILocation(line: 304, column: 22, scope: !2475)
!2479 = !DILocation(line: 304, column: 11, scope: !2475)
!2480 = !DILocation(line: 305, column: 10, scope: !2458)
!2481 = !DILocation(line: 305, column: 3, scope: !2458)
!2482 = distinct !DISubprogram(name: "rtIndices3i", linkageName: "_Z11rtIndices3iPN3ISG9DataArrayEPKii14DataArrayFlags", scope: !29, file: !29, line: 228, type: !2483, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2383, !2485, !67, !2443}
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!2487 = !DILocalVariable(name: "target", arg: 1, scope: !2482, file: !29, line: 228, type: !2383)
!2488 = !DILocation(line: 228, column: 40, scope: !2482)
!2489 = !DILocalVariable(name: "coord", arg: 2, scope: !2482, file: !29, line: 228, type: !2485)
!2490 = !DILocation(line: 228, column: 65, scope: !2482)
!2491 = !DILocalVariable(name: "coords", arg: 3, scope: !2482, file: !29, line: 228, type: !67)
!2492 = !DILocation(line: 228, column: 76, scope: !2482)
!2493 = !DILocalVariable(name: "flags", arg: 4, scope: !2482, file: !29, line: 228, type: !2443)
!2494 = !DILocation(line: 228, column: 99, scope: !2482)
!2495 = !DILocation(line: 230, column: 18, scope: !2482)
!2496 = !DILocation(line: 230, column: 61, scope: !2482)
!2497 = !DILocation(line: 230, column: 67, scope: !2482)
!2498 = !DILocation(line: 230, column: 74, scope: !2482)
!2499 = !DILocation(line: 230, column: 3, scope: !2482)
!2500 = !DILocation(line: 231, column: 1, scope: !2482)
!2501 = distinct !DISubprogram(name: "main", scope: !852, file: !852, line: 90, type: !2502, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!67, !67, !1128}
!2504 = !DILocalVariable(name: "ac", arg: 1, scope: !2501, file: !852, line: 90, type: !67)
!2505 = !DILocation(line: 90, column: 14, scope: !2501)
!2506 = !DILocalVariable(name: "av", arg: 2, scope: !2501, file: !852, line: 90, type: !1128)
!2507 = !DILocation(line: 90, column: 25, scope: !2501)
!2508 = !DILocation(line: 93, column: 18, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2501, file: !852, line: 92, column: 7)
!2510 = !DILocation(line: 93, column: 5, scope: !2509)
!2511 = !DILocation(line: 94, column: 5, scope: !2509)
!2512 = !DILocation(line: 95, column: 5, scope: !2509)
!2513 = !DILocation(line: 96, column: 5, scope: !2509)
!2514 = !DILocation(line: 98, column: 5, scope: !2509)
!2515 = !DILocation(line: 100, column: 5, scope: !2509)
!2516 = !DILocation(line: 104, column: 16, scope: !2509)
!2517 = !DILocation(line: 104, column: 5, scope: !2509)
!2518 = !DILocation(line: 105, column: 19, scope: !2509)
!2519 = !DILocation(line: 105, column: 17, scope: !2509)
!2520 = !DILocation(line: 106, column: 14, scope: !2509)
!2521 = !DILocation(line: 106, column: 12, scope: !2509)
!2522 = !DILocation(line: 107, column: 15, scope: !2509)
!2523 = !DILocation(line: 107, column: 13, scope: !2509)
!2524 = !DILocalVariable(name: "root", scope: !2509, file: !852, line: 109, type: !2375)
!2525 = !DILocation(line: 109, column: 12, scope: !2509)
!2526 = !DILocation(line: 109, column: 19, scope: !2509)
!2527 = !DILocalVariable(name: "cube", scope: !2509, file: !852, line: 110, type: !2374)
!2528 = !DILocation(line: 110, column: 12, scope: !2509)
!2529 = !DILocation(line: 110, column: 30, scope: !2509)
!2530 = !DILocation(line: 110, column: 19, scope: !2509)
!2531 = !DILocation(line: 112, column: 5, scope: !2509)
!2532 = !DILocation(line: 114, column: 15, scope: !2509)
!2533 = !DILocation(line: 114, column: 5, scope: !2509)
!2534 = !DILocation(line: 122, column: 21, scope: !2509)
!2535 = !DILocation(line: 122, column: 5, scope: !2509)
!2536 = !DILocation(line: 125, column: 10, scope: !2509)
!2537 = !DILocation(line: 125, column: 40, scope: !2509)
!2538 = !DILocation(line: 126, column: 5, scope: !2509)
!2539 = !DILocation(line: 127, column: 3, scope: !2509)
!2540 = !DILocation(line: 132, column: 1, scope: !2509)
!2541 = !DILocation(line: 128, column: 10, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2501, file: !852, line: 127, column: 17)
!2543 = !DILocation(line: 128, column: 72, scope: !2542)
!2544 = !DILocation(line: 128, column: 83, scope: !2542)
!2545 = !DILocation(line: 129, column: 5, scope: !2542)
!2546 = !DILocation(line: 130, column: 3, scope: !2542)
!2547 = !DILocation(line: 132, column: 1, scope: !2542)
!2548 = !DILocation(line: 131, column: 3, scope: !2501)
!2549 = !DILocation(line: 132, column: 1, scope: !2501)
!2550 = distinct !DISubprogram(name: "rtInit", linkageName: "_Z6rtInitPiPPc", scope: !29, file: !29, line: 166, type: !2551, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !1269, !1128}
!2553 = !DILocalVariable(name: "acptr", arg: 1, scope: !2550, file: !29, line: 166, type: !1269)
!2554 = !DILocation(line: 166, column: 33, scope: !2550)
!2555 = !DILocalVariable(name: "avptr", arg: 2, scope: !2550, file: !29, line: 166, type: !1128)
!2556 = !DILocation(line: 166, column: 47, scope: !2550)
!2557 = !DILocation(line: 168, column: 8, scope: !2550)
!2558 = !DILocation(line: 168, column: 45, scope: !2550)
!2559 = !DILocation(line: 169, column: 1, scope: !2550)
!2560 = distinct !DISubprogram(name: "rtNewRoot", linkageName: "_Z9rtNewRoot15newroot_flags_t", scope: !29, file: !29, line: 71, type: !2561, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!2375, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "newroot_flags_t", file: !29, line: 48, baseType: !38)
!2564 = !DILocalVariable(name: "flags", arg: 1, scope: !2560, file: !29, line: 71, type: !2563)
!2565 = !DILocation(line: 71, column: 49, scope: !2560)
!2566 = !DILocalVariable(name: "root", scope: !2560, file: !29, line: 73, type: !2375)
!2567 = !DILocation(line: 73, column: 10, scope: !2560)
!2568 = !DILocation(line: 73, column: 17, scope: !2560)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RootNode", scope: !14, file: !13, line: 207, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2570, vtableHolder: !60, identifier: "_ZTSN3ISG8RootNodeE")
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2569, baseType: !708, extraData: i32 0)
!2572 = !DISubprogram(name: "RootNode", scope: !2569, file: !13, line: 210, type: !2573, scopeLine: 210, flags: DIFlagPrototyped, spFlags: 0)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2576 = !DILocation(line: 73, column: 21, scope: !2560)
!2577 = !DILocation(line: 74, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2560, file: !29, line: 74, column: 7)
!2579 = !DILocation(line: 74, column: 13, scope: !2578)
!2580 = !DILocation(line: 74, column: 7, scope: !2560)
!2581 = !DILocation(line: 75, column: 12, scope: !2578)
!2582 = !DILocation(line: 75, column: 5, scope: !2578)
!2583 = !DILocation(line: 77, column: 1, scope: !2560)
!2584 = !DILocation(line: 76, column: 10, scope: !2560)
!2585 = !DILocation(line: 76, column: 3, scope: !2560)
!2586 = distinct !DISubprogram(name: "rtEndGeometry", linkageName: "_Z13rtEndGeometryv", scope: !29, file: !29, line: 349, type: !1026, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2587 = !DILocation(line: 351, column: 75, scope: !2586)
!2588 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !838, file: !839, line: 21, type: !846, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !845, retainedNodes: !200)
!2589 = !DILocalVariable(name: "this", arg: 1, scope: !2588, type: !2590, flags: DIFlagArtificial | DIFlagObjectPointer)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!2591 = !DILocation(line: 0, scope: !2588)
!2592 = !DILocation(line: 21, column: 11, scope: !2588)
!2593 = distinct !DISubprogram(name: "rtNewMesh", linkageName: "_Z9rtNewMeshPN3ISG4NodeENS_8MeshTypeE", scope: !29, file: !29, line: 80, type: !2594, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2374, !2375, !751}
!2596 = !DILocalVariable(name: "parent", arg: 1, scope: !2593, file: !29, line: 80, type: !2375)
!2597 = !DILocation(line: 80, column: 40, scope: !2593)
!2598 = !DILocalVariable(name: "type", arg: 2, scope: !2593, file: !29, line: 80, type: !751)
!2599 = !DILocation(line: 80, column: 57, scope: !2593)
!2600 = !DILocation(line: 82, column: 3, scope: !2593)
!2601 = !DILocalVariable(name: "mesh", scope: !2593, file: !29, line: 83, type: !2374)
!2602 = !DILocation(line: 83, column: 10, scope: !2593)
!2603 = !DILocation(line: 83, column: 17, scope: !2593)
!2604 = !DILocation(line: 83, column: 30, scope: !2593)
!2605 = !DILocation(line: 83, column: 37, scope: !2593)
!2606 = !DILocation(line: 83, column: 21, scope: !2593)
!2607 = !DILocalVariable(name: "group", scope: !2593, file: !29, line: 84, type: !707)
!2608 = !DILocation(line: 84, column: 14, scope: !2593)
!2609 = !DILocation(line: 84, column: 47, scope: !2593)
!2610 = !DILocation(line: 84, column: 22, scope: !2593)
!2611 = !DILocation(line: 96, column: 1, scope: !2593)
!2612 = !DILocation(line: 85, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2593, file: !29, line: 85, column: 7)
!2614 = !DILocation(line: 85, column: 7, scope: !2593)
!2615 = !DILocation(line: 86, column: 5, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !29, line: 86, column: 5)
!2617 = !DILocation(line: 87, column: 3, scope: !2593)
!2618 = !DILocation(line: 87, column: 19, scope: !2593)
!2619 = !DILocation(line: 87, column: 10, scope: !2593)
!2620 = !DILocation(line: 95, column: 10, scope: !2593)
!2621 = !DILocation(line: 95, column: 3, scope: !2593)
!2622 = distinct !DISubprogram(name: "BaseMesh", linkageName: "_ZN3ISG8BaseMeshC2EPNS_4NodeENS_8MeshTypeE", scope: !743, file: !13, line: 583, type: !758, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !757, retainedNodes: !200)
!2623 = !DILocalVariable(name: "this", arg: 1, scope: !2622, type: !742, flags: DIFlagArtificial | DIFlagObjectPointer)
!2624 = !DILocation(line: 0, scope: !2622)
!2625 = !DILocalVariable(name: "parent", arg: 2, scope: !2622, file: !13, line: 583, type: !96)
!2626 = !DILocation(line: 583, column: 20, scope: !2622)
!2627 = !DILocalVariable(name: "type", arg: 3, scope: !2622, file: !13, line: 583, type: !751)
!2628 = !DILocation(line: 583, column: 37, scope: !2622)
!2629 = !DILocation(line: 584, column: 14, scope: !2622)
!2630 = !DILocation(line: 584, column: 9, scope: !2622)
!2631 = !DILocation(line: 585, column: 5, scope: !2622)
!2632 = !DILocation(line: 584, column: 35, scope: !2622)
!2633 = !DILocation(line: 584, column: 47, scope: !2622)
!2634 = !DILocation(line: 584, column: 59, scope: !2622)
!2635 = !DILocation(line: 584, column: 23, scope: !2622)
!2636 = !DILocation(line: 584, column: 28, scope: !2622)
!2637 = !DILocation(line: 585, column: 6, scope: !2622)
!2638 = distinct !DISubprogram(name: "addChild", linkageName: "_ZN3ISG9GroupNode8addChildEPNS_4NodeE", scope: !708, file: !13, line: 151, type: !713, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !712, retainedNodes: !200)
!2639 = !DILocalVariable(name: "this", arg: 1, scope: !2638, type: !707, flags: DIFlagArtificial | DIFlagObjectPointer)
!2640 = !DILocation(line: 0, scope: !2638)
!2641 = !DILocalVariable(name: "node", arg: 2, scope: !2638, file: !13, line: 151, type: !96)
!2642 = !DILocation(line: 151, column: 25, scope: !2638)
!2643 = !DILocation(line: 153, column: 7, scope: !2638)
!2644 = !DILocation(line: 153, column: 16, scope: !2638)
!2645 = !DILocation(line: 154, column: 7, scope: !2638)
!2646 = !DILocation(line: 154, column: 13, scope: !2638)
!2647 = !DILocation(line: 155, column: 5, scope: !2638)
!2648 = distinct !DISubprogram(name: "Node", linkageName: "_ZN3ISG4NodeC2EPS0_", scope: !60, file: !13, line: 37, type: !671, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !670, retainedNodes: !200)
!2649 = !DILocalVariable(name: "this", arg: 1, scope: !2648, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!2650 = !DILocation(line: 0, scope: !2648)
!2651 = !DILocalVariable(name: "parent", arg: 2, scope: !2648, file: !13, line: 37, type: !96)
!2652 = !DILocation(line: 37, column: 16, scope: !2648)
!2653 = !DILocation(line: 37, column: 24, scope: !2648)
!2654 = !DILocation(line: 37, column: 5, scope: !2648)
!2655 = !DILocation(line: 38, column: 17, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2648, file: !13, line: 37, column: 24)
!2657 = !DILocation(line: 38, column: 7, scope: !2656)
!2658 = !DILocation(line: 39, column: 5, scope: !2648)
!2659 = !DILocation(line: 39, column: 5, scope: !2656)
!2660 = distinct !DISubprogram(name: "~BaseMesh", linkageName: "_ZN3ISG8BaseMeshD2Ev", scope: !743, file: !13, line: 494, type: !2661, scopeLine: 494, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2663, retainedNodes: !200)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !755}
!2663 = !DISubprogram(name: "~BaseMesh", scope: !743, type: !2661, containingType: !743, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2664 = !DILocalVariable(name: "this", arg: 1, scope: !2660, type: !742, flags: DIFlagArtificial | DIFlagObjectPointer)
!2665 = !DILocation(line: 0, scope: !2660)
!2666 = !DILocation(line: 494, column: 10, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !13, line: 494, column: 10)
!2668 = !DILocation(line: 494, column: 10, scope: !2660)
!2669 = distinct !DISubprogram(name: "~BaseMesh", linkageName: "_ZN3ISG8BaseMeshD0Ev", scope: !743, file: !13, line: 494, type: !2661, scopeLine: 494, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2663, retainedNodes: !200)
!2670 = !DILocalVariable(name: "this", arg: 1, scope: !2669, type: !742, flags: DIFlagArtificial | DIFlagObjectPointer)
!2671 = !DILocation(line: 0, scope: !2669)
!2672 = !DILocation(line: 494, column: 10, scope: !2669)
!2673 = distinct !DISubprogram(name: "childWasChanged", linkageName: "_ZN3ISG4Node15childWasChangedEPS0_", scope: !60, file: !13, line: 76, type: !671, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !676, retainedNodes: !200)
!2674 = !DILocalVariable(name: "this", arg: 1, scope: !2673, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!2675 = !DILocation(line: 0, scope: !2673)
!2676 = !DILocalVariable(name: "value", arg: 2, scope: !2673, file: !13, line: 76, type: !96)
!2677 = !DILocation(line: 76, column: 40, scope: !2673)
!2678 = !DILocation(line: 78, column: 7, scope: !2673)
!2679 = !DILocation(line: 79, column: 5, scope: !2673)
!2680 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEC2Ev", scope: !70, file: !71, line: 487, type: !344, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !343, retainedNodes: !200)
!2681 = !DILocalVariable(name: "this", arg: 1, scope: !2680, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2683 = !DILocation(line: 0, scope: !2680)
!2684 = !DILocation(line: 487, column: 7, scope: !2680)
!2685 = !DILocation(line: 487, column: 24, scope: !2680)
!2686 = distinct !DISubprogram(name: "addParent", linkageName: "_ZN3ISG4Node9addParentEPS0_", scope: !60, file: !13, line: 54, type: !671, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !674, retainedNodes: !200)
!2687 = !DILocalVariable(name: "this", arg: 1, scope: !2686, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!2688 = !DILocation(line: 0, scope: !2686)
!2689 = !DILocalVariable(name: "node", arg: 2, scope: !2686, file: !13, line: 54, type: !96)
!2690 = !DILocation(line: 54, column: 26, scope: !2686)
!2691 = !DILocation(line: 56, column: 16, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2686, file: !13, line: 56, column: 11)
!2693 = !DILocation(line: 56, column: 23, scope: !2692)
!2694 = !DILocation(line: 56, column: 31, scope: !2692)
!2695 = !DILocation(line: 56, column: 38, scope: !2692)
!2696 = !DILocation(line: 56, column: 11, scope: !2692)
!2697 = !DILocation(line: 56, column: 53, scope: !2692)
!2698 = !DILocation(line: 56, column: 60, scope: !2692)
!2699 = !DILocation(line: 56, column: 50, scope: !2692)
!2700 = !DILocation(line: 56, column: 11, scope: !2686)
!2701 = !DILocation(line: 58, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2692, file: !13, line: 57, column: 9)
!2703 = !DILocation(line: 58, column: 18, scope: !2702)
!2704 = !DILocation(line: 59, column: 9, scope: !2702)
!2705 = !DILocation(line: 60, column: 5, scope: !2686)
!2706 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EED2Ev", scope: !70, file: !71, line: 678, type: !344, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !389, retainedNodes: !200)
!2707 = !DILocalVariable(name: "this", arg: 1, scope: !2706, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!2708 = !DILocation(line: 0, scope: !2706)
!2709 = !DILocation(line: 680, column: 22, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !71, line: 679, column: 7)
!2711 = !DILocation(line: 680, column: 30, scope: !2710)
!2712 = !DILocation(line: 680, column: 46, scope: !2710)
!2713 = !DILocation(line: 680, column: 54, scope: !2710)
!2714 = !DILocation(line: 681, column: 9, scope: !2710)
!2715 = !DILocation(line: 680, column: 2, scope: !2710)
!2716 = !DILocation(line: 683, column: 7, scope: !2710)
!2717 = !DILocation(line: 683, column: 7, scope: !2706)
!2718 = distinct !DISubprogram(name: "~Node", linkageName: "_ZN3ISG4NodeD2Ev", scope: !60, file: !13, line: 40, type: !667, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !673, retainedNodes: !200)
!2719 = !DILocalVariable(name: "this", arg: 1, scope: !2718, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!2720 = !DILocation(line: 0, scope: !2718)
!2721 = !DILocation(line: 41, column: 5, scope: !2718)
!2722 = !DILocation(line: 41, column: 6, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !13, line: 41, column: 5)
!2724 = !DILocation(line: 41, column: 6, scope: !2718)
!2725 = distinct !DISubprogram(name: "~Node", linkageName: "_ZN3ISG4NodeD0Ev", scope: !60, file: !13, line: 40, type: !667, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !673, retainedNodes: !200)
!2726 = !DILocalVariable(name: "this", arg: 1, scope: !2725, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!2727 = !DILocation(line: 0, scope: !2725)
!2728 = !DILocation(line: 41, column: 5, scope: !2725)
!2729 = !DILocation(line: 41, column: 6, scope: !2725)
!2730 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EEC2Ev", scope: !74, file: !71, line: 288, type: !262, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !261, retainedNodes: !200)
!2731 = !DILocalVariable(name: "this", arg: 1, scope: !2730, type: !2732, flags: DIFlagArtificial | DIFlagObjectPointer)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2733 = !DILocation(line: 0, scope: !2730)
!2734 = !DILocation(line: 288, column: 7, scope: !2730)
!2735 = !DILocation(line: 288, column: 30, scope: !2730)
!2736 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implC2Ev", scope: !77, file: !71, line: 131, type: !228, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !227, retainedNodes: !200)
!2737 = !DILocalVariable(name: "this", arg: 1, scope: !2736, type: !2738, flags: DIFlagArtificial | DIFlagObjectPointer)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2739 = !DILocation(line: 0, scope: !2736)
!2740 = !DILocation(line: 133, column: 4, scope: !2736)
!2741 = !DILocation(line: 131, column: 2, scope: !2736)
!2742 = !DILocation(line: 134, column: 4, scope: !2736)
!2743 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIPN3ISG4NodeEEC2Ev", scope: !99, file: !100, line: 156, type: !152, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !151, retainedNodes: !200)
!2744 = !DILocalVariable(name: "this", arg: 1, scope: !2743, type: !2745, flags: DIFlagArtificial | DIFlagObjectPointer)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2746 = !DILocation(line: 0, scope: !2743)
!2747 = !DILocation(line: 156, column: 7, scope: !2743)
!2748 = !DILocation(line: 156, column: 38, scope: !2743)
!2749 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE17_Vector_impl_dataC2Ev", scope: !203, file: !71, line: 97, type: !211, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !210, retainedNodes: !200)
!2750 = !DILocalVariable(name: "this", arg: 1, scope: !2749, type: !2751, flags: DIFlagArtificial | DIFlagObjectPointer)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2752 = !DILocation(line: 0, scope: !2749)
!2753 = !DILocation(line: 98, column: 4, scope: !2749)
!2754 = !DILocation(line: 98, column: 16, scope: !2749)
!2755 = !DILocation(line: 98, column: 29, scope: !2749)
!2756 = !DILocation(line: 99, column: 4, scope: !2749)
!2757 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEEC2Ev", scope: !105, file: !106, line: 79, type: !109, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !108, retainedNodes: !200)
!2758 = !DILocalVariable(name: "this", arg: 1, scope: !2757, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2760 = !DILocation(line: 0, scope: !2757)
!2761 = !DILocation(line: 79, column: 47, scope: !2757)
!2762 = distinct !DISubprogram(name: "operator==<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", linkageName: "_ZN9__gnu_cxxeqIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_", scope: !85, file: !411, line: 1163, type: !2763, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !466, retainedNodes: !200)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!193, !2765, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !433, size: 64)
!2766 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2762, file: !411, line: 1163, type: !2765)
!2767 = !DILocation(line: 1163, column: 64, scope: !2762)
!2768 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2762, file: !411, line: 1164, type: !2765)
!2769 = !DILocation(line: 1164, column: 57, scope: !2762)
!2770 = !DILocation(line: 1166, column: 14, scope: !2762)
!2771 = !DILocation(line: 1166, column: 20, scope: !2762)
!2772 = !DILocation(line: 1166, column: 30, scope: !2762)
!2773 = !DILocation(line: 1166, column: 36, scope: !2762)
!2774 = !DILocation(line: 1166, column: 27, scope: !2762)
!2775 = !DILocation(line: 1166, column: 7, scope: !2762)
!2776 = distinct !DISubprogram(name: "find<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, ISG::Node *>", linkageName: "_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_", scope: !2, file: !2777, line: 3876, type: !2778, scopeLine: 3878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2780, retainedNodes: !200)
!2777 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algo.h", directory: "", checksumkind: CSK_MD5, checksum: "c661d981a881e8628863fac1295c261c")
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!410, !410, !410, !132}
!2780 = !{!2781, !150}
!2781 = !DITemplateTypeParameter(name: "_InputIterator", type: !410)
!2782 = !DILocalVariable(name: "__first", arg: 1, scope: !2776, file: !2777, line: 3876, type: !410)
!2783 = !DILocation(line: 3876, column: 25, scope: !2776)
!2784 = !DILocalVariable(name: "__last", arg: 2, scope: !2776, file: !2777, line: 3876, type: !410)
!2785 = !DILocation(line: 3876, column: 49, scope: !2776)
!2786 = !DILocalVariable(name: "__val", arg: 3, scope: !2776, file: !2777, line: 3877, type: !132)
!2787 = !DILocation(line: 3877, column: 14, scope: !2776)
!2788 = !DILocation(line: 3884, column: 29, scope: !2776)
!2789 = !DILocation(line: 3884, column: 38, scope: !2776)
!2790 = !DILocation(line: 3885, column: 44, scope: !2776)
!2791 = !DILocation(line: 3885, column: 8, scope: !2776)
!2792 = !DILocation(line: 3884, column: 14, scope: !2776)
!2793 = !DILocation(line: 3884, column: 7, scope: !2776)
!2794 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5beginEv", scope: !70, file: !71, line: 811, type: !407, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !406, retainedNodes: !200)
!2795 = !DILocalVariable(name: "this", arg: 1, scope: !2794, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!2796 = !DILocation(line: 0, scope: !2794)
!2797 = !DILocation(line: 812, column: 31, scope: !2794)
!2798 = !DILocation(line: 812, column: 39, scope: !2794)
!2799 = !DILocation(line: 812, column: 16, scope: !2794)
!2800 = !DILocation(line: 812, column: 9, scope: !2794)
!2801 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE3endEv", scope: !70, file: !71, line: 829, type: !407, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !526, retainedNodes: !200)
!2802 = !DILocalVariable(name: "this", arg: 1, scope: !2801, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!2803 = !DILocation(line: 0, scope: !2801)
!2804 = !DILocation(line: 830, column: 31, scope: !2801)
!2805 = !DILocation(line: 830, column: 39, scope: !2801)
!2806 = !DILocation(line: 830, column: 16, scope: !2801)
!2807 = !DILocation(line: 830, column: 9, scope: !2801)
!2808 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE9push_backERKS2_", scope: !70, file: !71, line: 1187, type: !593, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !592, retainedNodes: !200)
!2809 = !DILocalVariable(name: "this", arg: 1, scope: !2808, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!2810 = !DILocation(line: 0, scope: !2808)
!2811 = !DILocalVariable(name: "__x", arg: 2, scope: !2808, file: !71, line: 1187, type: !360)
!2812 = !DILocation(line: 1187, column: 35, scope: !2808)
!2813 = !DILocation(line: 1189, column: 12, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !71, line: 1189, column: 6)
!2815 = !DILocation(line: 1189, column: 20, scope: !2814)
!2816 = !DILocation(line: 1189, column: 39, scope: !2814)
!2817 = !DILocation(line: 1189, column: 47, scope: !2814)
!2818 = !DILocation(line: 1189, column: 30, scope: !2814)
!2819 = !DILocation(line: 1189, column: 6, scope: !2808)
!2820 = !DILocation(line: 1192, column: 37, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2814, file: !71, line: 1190, column: 4)
!2822 = !DILocation(line: 1192, column: 52, scope: !2821)
!2823 = !DILocation(line: 1192, column: 60, scope: !2821)
!2824 = !DILocation(line: 1193, column: 10, scope: !2821)
!2825 = !DILocation(line: 1192, column: 6, scope: !2821)
!2826 = !DILocation(line: 1194, column: 14, scope: !2821)
!2827 = !DILocation(line: 1194, column: 22, scope: !2821)
!2828 = !DILocation(line: 1194, column: 6, scope: !2821)
!2829 = !DILocation(line: 1196, column: 4, scope: !2821)
!2830 = !DILocation(line: 1198, column: 22, scope: !2814)
!2831 = !DILocation(line: 1198, column: 29, scope: !2814)
!2832 = !DILocation(line: 1198, column: 4, scope: !2814)
!2833 = !DILocation(line: 1199, column: 7, scope: !2808)
!2834 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !410, file: !411, line: 1105, type: !464, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !463, retainedNodes: !200)
!2835 = !DILocalVariable(name: "this", arg: 1, scope: !2834, type: !2836, flags: DIFlagArtificial | DIFlagObjectPointer)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2837 = !DILocation(line: 0, scope: !2834)
!2838 = !DILocation(line: 1106, column: 16, scope: !2834)
!2839 = !DILocation(line: 1106, column: 9, scope: !2834)
!2840 = distinct !DISubprogram(name: "__find_if<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, __gnu_cxx::__ops::_Iter_equals_val<ISG::Node *const> >", linkageName: "_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_", scope: !2, file: !2841, line: 2112, type: !2842, scopeLine: 2113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2844, retainedNodes: !200)
!2841 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!410, !410, !410, !728}
!2844 = !{!2845, !2846}
!2845 = !DITemplateTypeParameter(name: "_Iterator", type: !410)
!2846 = !DITemplateTypeParameter(name: "_Predicate", type: !728)
!2847 = !DILocalVariable(name: "__first", arg: 1, scope: !2840, file: !2841, line: 2112, type: !410)
!2848 = !DILocation(line: 2112, column: 25, scope: !2840)
!2849 = !DILocalVariable(name: "__last", arg: 2, scope: !2840, file: !2841, line: 2112, type: !410)
!2850 = !DILocation(line: 2112, column: 44, scope: !2840)
!2851 = !DILocalVariable(name: "__pred", arg: 3, scope: !2840, file: !2841, line: 2112, type: !728)
!2852 = !DILocation(line: 2112, column: 63, scope: !2840)
!2853 = !DILocation(line: 2114, column: 24, scope: !2840)
!2854 = !DILocation(line: 2114, column: 33, scope: !2840)
!2855 = !DILocation(line: 2114, column: 41, scope: !2840)
!2856 = !DILocation(line: 2115, column: 10, scope: !2840)
!2857 = !DILocation(line: 2114, column: 14, scope: !2840)
!2858 = !DILocation(line: 2114, column: 7, scope: !2840)
!2859 = distinct !DISubprogram(name: "__iter_equals_val<ISG::Node *const>", linkageName: "_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN3ISG4NodeEEENS0_16_Iter_equals_valIT_EERS7_", scope: !730, file: !729, line: 276, type: !2860, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !737, retainedNodes: !200)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!728, !132}
!2862 = !DILocalVariable(name: "__val", arg: 1, scope: !2859, file: !729, line: 276, type: !132)
!2863 = !DILocation(line: 276, column: 31, scope: !2859)
!2864 = !DILocation(line: 277, column: 39, scope: !2859)
!2865 = !DILocation(line: 277, column: 14, scope: !2859)
!2866 = !DILocation(line: 277, column: 7, scope: !2859)
!2867 = distinct !DISubprogram(name: "__find_if<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, __gnu_cxx::__ops::_Iter_equals_val<ISG::Node *const> >", linkageName: "_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag", scope: !2, file: !2841, line: 2061, type: !2868, scopeLine: 2063, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2880, retainedNodes: !200)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!410, !410, !410, !728, !2870}
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !428, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !2871, identifier: "_ZTSSt26random_access_iterator_tag")
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2870, baseType: !2873, extraData: i32 0)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !428, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !2874, identifier: "_ZTSSt26bidirectional_iterator_tag")
!2874 = !{!2875}
!2875 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2873, baseType: !2876, extraData: i32 0)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !428, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !2877, identifier: "_ZTSSt20forward_iterator_tag")
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2876, baseType: !2879, extraData: i32 0)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !428, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !200, identifier: "_ZTSSt18input_iterator_tag")
!2880 = !{!2881, !2846}
!2881 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !410)
!2882 = !DILocalVariable(name: "__first", arg: 1, scope: !2867, file: !2841, line: 2061, type: !410)
!2883 = !DILocation(line: 2061, column: 37, scope: !2867)
!2884 = !DILocalVariable(name: "__last", arg: 2, scope: !2867, file: !2841, line: 2061, type: !410)
!2885 = !DILocation(line: 2061, column: 68, scope: !2867)
!2886 = !DILocalVariable(name: "__pred", arg: 3, scope: !2867, file: !2841, line: 2062, type: !728)
!2887 = !DILocation(line: 2062, column: 19, scope: !2867)
!2888 = !DILocalVariable(arg: 4, scope: !2867, file: !2841, line: 2062, type: !2870)
!2889 = !DILocation(line: 2062, column: 53, scope: !2867)
!2890 = !DILocalVariable(name: "__trip_count", scope: !2867, file: !2841, line: 2065, type: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2892, file: !428, line: 170, baseType: !451)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__iterator_traits<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, void>", scope: !2, file: !428, line: 161, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !2893, identifier: "_ZTSSt17__iterator_traitsIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEvE")
!2893 = !{!2845, !2894}
!2894 = !DITemplateTypeParameter(type: null, defaulted: true)
!2895 = !DILocation(line: 2065, column: 2, scope: !2867)
!2896 = !DILocation(line: 2065, column: 25, scope: !2867)
!2897 = !DILocation(line: 2065, column: 36, scope: !2867)
!2898 = !DILocation(line: 2067, column: 7, scope: !2867)
!2899 = !DILocation(line: 2067, column: 14, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !2841, line: 2067, column: 7)
!2901 = distinct !DILexicalBlock(scope: !2867, file: !2841, line: 2067, column: 7)
!2902 = !DILocation(line: 2067, column: 27, scope: !2900)
!2903 = !DILocation(line: 2067, column: 7, scope: !2901)
!2904 = !DILocation(line: 2069, column: 15, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !2841, line: 2069, column: 8)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !2841, line: 2068, column: 2)
!2907 = !DILocation(line: 2069, column: 8, scope: !2905)
!2908 = !DILocation(line: 2069, column: 8, scope: !2906)
!2909 = !DILocation(line: 2070, column: 13, scope: !2905)
!2910 = !DILocation(line: 2070, column: 6, scope: !2905)
!2911 = !DILocation(line: 2071, column: 4, scope: !2906)
!2912 = !DILocation(line: 2073, column: 15, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2906, file: !2841, line: 2073, column: 8)
!2914 = !DILocation(line: 2073, column: 8, scope: !2913)
!2915 = !DILocation(line: 2073, column: 8, scope: !2906)
!2916 = !DILocation(line: 2074, column: 13, scope: !2913)
!2917 = !DILocation(line: 2074, column: 6, scope: !2913)
!2918 = !DILocation(line: 2075, column: 4, scope: !2906)
!2919 = !DILocation(line: 2077, column: 15, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2906, file: !2841, line: 2077, column: 8)
!2921 = !DILocation(line: 2077, column: 8, scope: !2920)
!2922 = !DILocation(line: 2077, column: 8, scope: !2906)
!2923 = !DILocation(line: 2078, column: 13, scope: !2920)
!2924 = !DILocation(line: 2078, column: 6, scope: !2920)
!2925 = !DILocation(line: 2079, column: 4, scope: !2906)
!2926 = !DILocation(line: 2081, column: 15, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2906, file: !2841, line: 2081, column: 8)
!2928 = !DILocation(line: 2081, column: 8, scope: !2927)
!2929 = !DILocation(line: 2081, column: 8, scope: !2906)
!2930 = !DILocation(line: 2082, column: 13, scope: !2927)
!2931 = !DILocation(line: 2082, column: 6, scope: !2927)
!2932 = !DILocation(line: 2083, column: 4, scope: !2906)
!2933 = !DILocation(line: 2084, column: 2, scope: !2906)
!2934 = !DILocation(line: 2067, column: 32, scope: !2900)
!2935 = !DILocation(line: 2067, column: 7, scope: !2900)
!2936 = distinct !{!2936, !2903, !2937, !2354}
!2937 = !DILocation(line: 2084, column: 2, scope: !2901)
!2938 = !DILocation(line: 2086, column: 22, scope: !2867)
!2939 = !DILocation(line: 2086, column: 7, scope: !2867)
!2940 = !DILocation(line: 2089, column: 15, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !2841, line: 2089, column: 8)
!2942 = distinct !DILexicalBlock(scope: !2867, file: !2841, line: 2087, column: 2)
!2943 = !DILocation(line: 2089, column: 8, scope: !2941)
!2944 = !DILocation(line: 2089, column: 8, scope: !2942)
!2945 = !DILocation(line: 2090, column: 13, scope: !2941)
!2946 = !DILocation(line: 2090, column: 6, scope: !2941)
!2947 = !DILocation(line: 2091, column: 4, scope: !2942)
!2948 = !DILocation(line: 2094, column: 15, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !2841, line: 2094, column: 8)
!2950 = !DILocation(line: 2094, column: 8, scope: !2949)
!2951 = !DILocation(line: 2094, column: 8, scope: !2942)
!2952 = !DILocation(line: 2095, column: 13, scope: !2949)
!2953 = !DILocation(line: 2095, column: 6, scope: !2949)
!2954 = !DILocation(line: 2096, column: 4, scope: !2942)
!2955 = !DILocation(line: 2099, column: 15, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2942, file: !2841, line: 2099, column: 8)
!2957 = !DILocation(line: 2099, column: 8, scope: !2956)
!2958 = !DILocation(line: 2099, column: 8, scope: !2942)
!2959 = !DILocation(line: 2100, column: 13, scope: !2956)
!2960 = !DILocation(line: 2100, column: 6, scope: !2956)
!2961 = !DILocation(line: 2101, column: 4, scope: !2942)
!2962 = !DILocation(line: 2103, column: 2, scope: !2942)
!2963 = !DILocation(line: 2105, column: 11, scope: !2942)
!2964 = !DILocation(line: 2105, column: 4, scope: !2942)
!2965 = !DILocation(line: 2107, column: 5, scope: !2867)
!2966 = distinct !DISubprogram(name: "__iterator_category<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_", scope: !2, file: !428, line: 238, type: !2967, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2972, retainedNodes: !200)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2969, !2765}
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2892, file: !428, line: 168, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !410, file: !411, line: 1013, baseType: !2971, flags: DIFlagPublic)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !429, file: !428, line: 212, baseType: !2870)
!2972 = !{!2973}
!2973 = !DITemplateTypeParameter(name: "_Iter", type: !410)
!2974 = !DILocalVariable(arg: 1, scope: !2966, file: !428, line: 238, type: !2765)
!2975 = !DILocation(line: 238, column: 37, scope: !2966)
!2976 = !DILocation(line: 239, column: 7, scope: !2966)
!2977 = distinct !DISubprogram(name: "operator-<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", linkageName: "_ZN9__gnu_cxxmiIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_", scope: !85, file: !411, line: 1268, type: !2978, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !466, retainedNodes: !200)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!451, !2765, !2765}
!2980 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2977, file: !411, line: 1268, type: !2765)
!2981 = !DILocation(line: 1268, column: 63, scope: !2977)
!2982 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2977, file: !411, line: 1269, type: !2765)
!2983 = !DILocation(line: 1269, column: 56, scope: !2977)
!2984 = !DILocation(line: 1271, column: 14, scope: !2977)
!2985 = !DILocation(line: 1271, column: 20, scope: !2977)
!2986 = !DILocation(line: 1271, column: 29, scope: !2977)
!2987 = !DILocation(line: 1271, column: 35, scope: !2977)
!2988 = !DILocation(line: 1271, column: 27, scope: !2977)
!2989 = !DILocation(line: 1271, column: 7, scope: !2977)
!2990 = distinct !DISubprogram(name: "operator()<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_", scope: !728, file: !729, line: 269, type: !2991, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2994, declaration: !2993, retainedNodes: !200)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!193, !736, !410}
!2993 = !DISubprogram(name: "operator()<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbT_", scope: !728, file: !729, line: 269, type: !2991, scopeLine: 269, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2994)
!2994 = !{!2845}
!2995 = !DILocalVariable(name: "this", arg: 1, scope: !2990, type: !2996, flags: DIFlagArtificial | DIFlagObjectPointer)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocalVariable(name: "__it", arg: 2, scope: !2990, file: !729, line: 269, type: !410)
!2999 = !DILocation(line: 269, column: 23, scope: !2990)
!3000 = !DILocation(line: 270, column: 11, scope: !2990)
!3001 = !DILocation(line: 270, column: 20, scope: !2990)
!3002 = !DILocation(line: 270, column: 17, scope: !2990)
!3003 = !DILocation(line: 270, column: 4, scope: !2990)
!3004 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEppEv", scope: !410, file: !411, line: 1052, type: !440, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !439, retainedNodes: !200)
!3005 = !DILocalVariable(name: "this", arg: 1, scope: !3004, type: !3006, flags: DIFlagArtificial | DIFlagObjectPointer)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3007 = !DILocation(line: 0, scope: !3004)
!3008 = !DILocation(line: 1054, column: 4, scope: !3004)
!3009 = !DILocation(line: 1054, column: 2, scope: !3004)
!3010 = !DILocation(line: 1055, column: 2, scope: !3004)
!3011 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEdeEv", scope: !410, file: !411, line: 1042, type: !424, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !423, retainedNodes: !200)
!3012 = !DILocalVariable(name: "this", arg: 1, scope: !3011, type: !2836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3013 = !DILocation(line: 0, scope: !3011)
!3014 = !DILocation(line: 1043, column: 17, scope: !3011)
!3015 = !DILocation(line: 1043, column: 9, scope: !3011)
!3016 = distinct !DISubprogram(name: "_Iter_equals_val", linkageName: "_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN3ISG4NodeEEC2ERS5_", scope: !728, file: !729, line: 262, type: !734, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !733, retainedNodes: !200)
!3017 = !DILocalVariable(name: "this", arg: 1, scope: !3016, type: !2996, flags: DIFlagArtificial | DIFlagObjectPointer)
!3018 = !DILocation(line: 0, scope: !3016)
!3019 = !DILocalVariable(name: "__value", arg: 2, scope: !3016, file: !729, line: 262, type: !132)
!3020 = !DILocation(line: 262, column: 32, scope: !3016)
!3021 = !DILocation(line: 263, column: 4, scope: !3016)
!3022 = !DILocation(line: 263, column: 13, scope: !3016)
!3023 = !DILocation(line: 264, column: 9, scope: !3016)
!3024 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS4_", scope: !410, file: !411, line: 1027, type: !419, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !418, retainedNodes: !200)
!3025 = !DILocalVariable(name: "this", arg: 1, scope: !3024, type: !3006, flags: DIFlagArtificial | DIFlagObjectPointer)
!3026 = !DILocation(line: 0, scope: !3024)
!3027 = !DILocalVariable(name: "__i", arg: 2, scope: !3024, file: !411, line: 1027, type: !421)
!3028 = !DILocation(line: 1027, column: 42, scope: !3024)
!3029 = !DILocation(line: 1028, column: 9, scope: !3024)
!3030 = !DILocation(line: 1028, column: 20, scope: !3024)
!3031 = !DILocation(line: 1028, column: 27, scope: !3024)
!3032 = distinct !DISubprogram(name: "construct<ISG::Node *, ISG::Node *const &>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_", scope: !88, file: !89, line: 511, type: !3033, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3036, declaration: !3035, retainedNodes: !200)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !97, !95, !132}
!3035 = !DISubprogram(name: "construct<ISG::Node *, ISG::Node *const &>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_", scope: !88, file: !89, line: 511, type: !3033, scopeLine: 511, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3036)
!3036 = !{!3037, !3038}
!3037 = !DITemplateTypeParameter(name: "_Up", type: !96)
!3038 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !3039)
!3039 = !{!3040}
!3040 = !DITemplateTypeParameter(type: !132)
!3041 = !DILocalVariable(name: "__a", arg: 1, scope: !3032, file: !89, line: 511, type: !97)
!3042 = !DILocation(line: 511, column: 28, scope: !3032)
!3043 = !DILocalVariable(name: "__p", arg: 2, scope: !3032, file: !89, line: 511, type: !95)
!3044 = !DILocation(line: 511, column: 66, scope: !3032)
!3045 = !DILocalVariable(name: "__args", arg: 3, scope: !3032, file: !89, line: 512, type: !132)
!3046 = !DILocation(line: 512, column: 16, scope: !3032)
!3047 = !DILocation(line: 516, column: 4, scope: !3032)
!3048 = !DILocation(line: 516, column: 18, scope: !3032)
!3049 = !DILocation(line: 516, column: 43, scope: !3032)
!3050 = !DILocation(line: 516, column: 8, scope: !3032)
!3051 = !DILocation(line: 520, column: 2, scope: !3032)
!3052 = distinct !DISubprogram(name: "_M_realloc_insert<ISG::Node *const &>", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_", scope: !70, file: !936, line: 427, type: !3053, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3056, declaration: !3055, retainedNodes: !200)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !346, !409, !132}
!3055 = !DISubprogram(name: "_M_realloc_insert<ISG::Node *const &>", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_", scope: !70, file: !71, line: 1737, type: !3053, scopeLine: 1737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0, templateParams: !3056)
!3056 = !{!3038}
!3057 = !DILocalVariable(name: "this", arg: 1, scope: !3052, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!3058 = !DILocation(line: 0, scope: !3052)
!3059 = !DILocalVariable(name: "__position", arg: 2, scope: !3052, file: !71, line: 1737, type: !409)
!3060 = !DILocation(line: 1737, column: 29, scope: !3052)
!3061 = !DILocalVariable(name: "__args", arg: 3, scope: !3052, file: !71, line: 1737, type: !132)
!3062 = !DILocation(line: 1737, column: 52, scope: !3052)
!3063 = !DILocalVariable(name: "__len", scope: !3052, file: !936, line: 435, type: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!3065 = !DILocation(line: 435, column: 23, scope: !3052)
!3066 = !DILocation(line: 436, column: 2, scope: !3052)
!3067 = !DILocalVariable(name: "__old_start", scope: !3052, file: !936, line: 437, type: !334)
!3068 = !DILocation(line: 437, column: 15, scope: !3052)
!3069 = !DILocation(line: 437, column: 35, scope: !3052)
!3070 = !DILocation(line: 437, column: 43, scope: !3052)
!3071 = !DILocalVariable(name: "__old_finish", scope: !3052, file: !936, line: 438, type: !334)
!3072 = !DILocation(line: 438, column: 15, scope: !3052)
!3073 = !DILocation(line: 438, column: 36, scope: !3052)
!3074 = !DILocation(line: 438, column: 44, scope: !3052)
!3075 = !DILocalVariable(name: "__elems_before", scope: !3052, file: !936, line: 439, type: !3064)
!3076 = !DILocation(line: 439, column: 23, scope: !3052)
!3077 = !DILocation(line: 439, column: 53, scope: !3052)
!3078 = !DILocation(line: 439, column: 51, scope: !3052)
!3079 = !DILocalVariable(name: "__new_start", scope: !3052, file: !936, line: 440, type: !334)
!3080 = !DILocation(line: 440, column: 15, scope: !3052)
!3081 = !DILocation(line: 440, column: 45, scope: !3052)
!3082 = !DILocation(line: 440, column: 33, scope: !3052)
!3083 = !DILocalVariable(name: "__new_finish", scope: !3052, file: !936, line: 441, type: !334)
!3084 = !DILocation(line: 441, column: 15, scope: !3052)
!3085 = !DILocation(line: 441, column: 28, scope: !3052)
!3086 = !DILocation(line: 449, column: 35, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3052, file: !936, line: 443, column: 2)
!3088 = !DILocation(line: 450, column: 8, scope: !3087)
!3089 = !DILocation(line: 450, column: 22, scope: !3087)
!3090 = !DILocation(line: 450, column: 20, scope: !3087)
!3091 = !DILocation(line: 452, column: 28, scope: !3087)
!3092 = !DILocation(line: 449, column: 4, scope: !3087)
!3093 = !DILocation(line: 456, column: 17, scope: !3087)
!3094 = !DILocation(line: 461, column: 35, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !936, line: 460, column: 6)
!3096 = distinct !DILexicalBlock(scope: !3087, file: !936, line: 459, column: 29)
!3097 = !DILocation(line: 461, column: 59, scope: !3095)
!3098 = !DILocation(line: 462, column: 7, scope: !3095)
!3099 = !DILocation(line: 462, column: 20, scope: !3095)
!3100 = !DILocation(line: 461, column: 23, scope: !3095)
!3101 = !DILocation(line: 461, column: 21, scope: !3095)
!3102 = !DILocation(line: 464, column: 8, scope: !3095)
!3103 = !DILocation(line: 466, column: 46, scope: !3095)
!3104 = !DILocation(line: 466, column: 54, scope: !3095)
!3105 = !DILocation(line: 467, column: 7, scope: !3095)
!3106 = !DILocation(line: 467, column: 21, scope: !3095)
!3107 = !DILocation(line: 466, column: 23, scope: !3095)
!3108 = !DILocation(line: 466, column: 21, scope: !3095)
!3109 = !DILocation(line: 500, column: 21, scope: !3052)
!3110 = !DILocation(line: 501, column: 13, scope: !3052)
!3111 = !DILocation(line: 501, column: 21, scope: !3052)
!3112 = !DILocation(line: 501, column: 41, scope: !3052)
!3113 = !DILocation(line: 501, column: 39, scope: !3052)
!3114 = !DILocation(line: 500, column: 7, scope: !3052)
!3115 = !DILocation(line: 502, column: 32, scope: !3052)
!3116 = !DILocation(line: 502, column: 13, scope: !3052)
!3117 = !DILocation(line: 502, column: 21, scope: !3052)
!3118 = !DILocation(line: 502, column: 30, scope: !3052)
!3119 = !DILocation(line: 503, column: 33, scope: !3052)
!3120 = !DILocation(line: 503, column: 13, scope: !3052)
!3121 = !DILocation(line: 503, column: 21, scope: !3052)
!3122 = !DILocation(line: 503, column: 31, scope: !3052)
!3123 = !DILocation(line: 504, column: 41, scope: !3052)
!3124 = !DILocation(line: 504, column: 55, scope: !3052)
!3125 = !DILocation(line: 504, column: 53, scope: !3052)
!3126 = !DILocation(line: 504, column: 13, scope: !3052)
!3127 = !DILocation(line: 504, column: 21, scope: !3052)
!3128 = !DILocation(line: 504, column: 39, scope: !3052)
!3129 = !DILocation(line: 505, column: 5, scope: !3052)
!3130 = distinct !DISubprogram(name: "construct<ISG::Node *, ISG::Node *const &>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_", scope: !105, file: !106, line: 160, type: !3131, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3036, declaration: !3133, retainedNodes: !200)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !111, !95, !132}
!3133 = !DISubprogram(name: "construct<ISG::Node *, ISG::Node *const &>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_", scope: !105, file: !106, line: 160, type: !3131, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3036)
!3134 = !DILocalVariable(name: "this", arg: 1, scope: !3130, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3135 = !DILocation(line: 0, scope: !3130)
!3136 = !DILocalVariable(name: "__p", arg: 2, scope: !3130, file: !106, line: 160, type: !95)
!3137 = !DILocation(line: 160, column: 17, scope: !3130)
!3138 = !DILocalVariable(name: "__args", arg: 3, scope: !3130, file: !106, line: 160, type: !132)
!3139 = !DILocation(line: 160, column: 33, scope: !3130)
!3140 = !DILocation(line: 162, column: 18, scope: !3130)
!3141 = !DILocation(line: 162, column: 47, scope: !3130)
!3142 = !DILocation(line: 162, column: 27, scope: !3130)
!3143 = !DILocation(line: 162, column: 4, scope: !3130)
!3144 = !DILocation(line: 162, column: 60, scope: !3130)
!3145 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE12_M_check_lenEmPKc", scope: !70, file: !71, line: 1756, type: !635, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !634, retainedNodes: !200)
!3146 = !DILocalVariable(name: "this", arg: 1, scope: !3145, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!3148 = !DILocation(line: 0, scope: !3145)
!3149 = !DILocalVariable(name: "__n", arg: 2, scope: !3145, file: !71, line: 1756, type: !356)
!3150 = !DILocation(line: 1756, column: 30, scope: !3145)
!3151 = !DILocalVariable(name: "__s", arg: 3, scope: !3145, file: !71, line: 1756, type: !638)
!3152 = !DILocation(line: 1756, column: 47, scope: !3145)
!3153 = !DILocation(line: 1758, column: 6, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3145, file: !71, line: 1758, column: 6)
!3155 = !DILocation(line: 1758, column: 19, scope: !3154)
!3156 = !DILocation(line: 1758, column: 17, scope: !3154)
!3157 = !DILocation(line: 1758, column: 28, scope: !3154)
!3158 = !DILocation(line: 1758, column: 26, scope: !3154)
!3159 = !DILocation(line: 1758, column: 6, scope: !3145)
!3160 = !DILocation(line: 1759, column: 25, scope: !3154)
!3161 = !DILocation(line: 1759, column: 4, scope: !3154)
!3162 = !DILocalVariable(name: "__len", scope: !3145, file: !71, line: 1761, type: !3064)
!3163 = !DILocation(line: 1761, column: 18, scope: !3145)
!3164 = !DILocation(line: 1761, column: 26, scope: !3145)
!3165 = !DILocation(line: 1761, column: 46, scope: !3145)
!3166 = !DILocation(line: 1761, column: 35, scope: !3145)
!3167 = !DILocation(line: 1761, column: 33, scope: !3145)
!3168 = !DILocation(line: 1762, column: 10, scope: !3145)
!3169 = !DILocation(line: 1762, column: 18, scope: !3145)
!3170 = !DILocation(line: 1762, column: 16, scope: !3145)
!3171 = !DILocation(line: 1762, column: 25, scope: !3145)
!3172 = !DILocation(line: 1762, column: 28, scope: !3145)
!3173 = !DILocation(line: 1762, column: 36, scope: !3145)
!3174 = !DILocation(line: 1762, column: 34, scope: !3145)
!3175 = !DILocation(line: 1762, column: 9, scope: !3145)
!3176 = !DILocation(line: 1762, column: 50, scope: !3145)
!3177 = !DILocation(line: 1762, column: 63, scope: !3145)
!3178 = !DILocation(line: 1762, column: 2, scope: !3145)
!3179 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE11_M_allocateEm", scope: !74, file: !71, line: 343, type: !290, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !289, retainedNodes: !200)
!3180 = !DILocalVariable(name: "this", arg: 1, scope: !3179, type: !2732, flags: DIFlagArtificial | DIFlagObjectPointer)
!3181 = !DILocation(line: 0, scope: !3179)
!3182 = !DILocalVariable(name: "__n", arg: 2, scope: !3179, file: !71, line: 343, type: !137)
!3183 = !DILocation(line: 343, column: 26, scope: !3179)
!3184 = !DILocation(line: 346, column: 9, scope: !3179)
!3185 = !DILocation(line: 346, column: 13, scope: !3179)
!3186 = !DILocation(line: 346, column: 34, scope: !3179)
!3187 = !DILocation(line: 346, column: 43, scope: !3179)
!3188 = !DILocation(line: 346, column: 20, scope: !3179)
!3189 = !DILocation(line: 346, column: 2, scope: !3179)
!3190 = !DILocalVariable(name: "__first", arg: 1, scope: !740, file: !71, line: 465, type: !334)
!3191 = !DILocation(line: 465, column: 27, scope: !740)
!3192 = !DILocalVariable(name: "__last", arg: 2, scope: !740, file: !71, line: 465, type: !334)
!3193 = !DILocation(line: 465, column: 44, scope: !740)
!3194 = !DILocalVariable(name: "__result", arg: 3, scope: !740, file: !71, line: 465, type: !334)
!3195 = !DILocation(line: 465, column: 60, scope: !740)
!3196 = !DILocalVariable(name: "__alloc", arg: 4, scope: !740, file: !71, line: 466, type: !335)
!3197 = !DILocation(line: 466, column: 21, scope: !740)
!3198 = !DILocation(line: 469, column: 24, scope: !740)
!3199 = !DILocation(line: 469, column: 33, scope: !740)
!3200 = !DILocation(line: 469, column: 41, scope: !740)
!3201 = !DILocation(line: 469, column: 51, scope: !740)
!3202 = !DILocation(line: 469, column: 9, scope: !740)
!3203 = !DILocation(line: 469, column: 2, scope: !740)
!3204 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !74, file: !71, line: 276, type: !248, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !247, retainedNodes: !200)
!3205 = !DILocalVariable(name: "this", arg: 1, scope: !3204, type: !2732, flags: DIFlagArtificial | DIFlagObjectPointer)
!3206 = !DILocation(line: 0, scope: !3204)
!3207 = !DILocation(line: 277, column: 22, scope: !3204)
!3208 = !DILocation(line: 277, column: 9, scope: !3204)
!3209 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE13_M_deallocateEPS2_m", scope: !74, file: !71, line: 350, type: !293, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !292, retainedNodes: !200)
!3210 = !DILocalVariable(name: "this", arg: 1, scope: !3209, type: !2732, flags: DIFlagArtificial | DIFlagObjectPointer)
!3211 = !DILocation(line: 0, scope: !3209)
!3212 = !DILocalVariable(name: "__p", arg: 2, scope: !3209, file: !71, line: 350, type: !206)
!3213 = !DILocation(line: 350, column: 29, scope: !3209)
!3214 = !DILocalVariable(name: "__n", arg: 3, scope: !3209, file: !71, line: 350, type: !137)
!3215 = !DILocation(line: 350, column: 41, scope: !3209)
!3216 = !DILocation(line: 353, column: 6, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !71, line: 353, column: 6)
!3218 = !DILocation(line: 353, column: 6, scope: !3209)
!3219 = !DILocation(line: 354, column: 20, scope: !3217)
!3220 = !DILocation(line: 354, column: 29, scope: !3217)
!3221 = !DILocation(line: 354, column: 34, scope: !3217)
!3222 = !DILocation(line: 354, column: 4, scope: !3217)
!3223 = !DILocation(line: 355, column: 7, scope: !3209)
!3224 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE8max_sizeEv", scope: !70, file: !71, line: 923, type: !545, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !547, retainedNodes: !200)
!3225 = !DILocalVariable(name: "this", arg: 1, scope: !3224, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3226 = !DILocation(line: 0, scope: !3224)
!3227 = !DILocation(line: 924, column: 28, scope: !3224)
!3228 = !DILocation(line: 924, column: 16, scope: !3224)
!3229 = !DILocation(line: 924, column: 9, scope: !3224)
!3230 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE4sizeEv", scope: !70, file: !71, line: 918, type: !545, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !544, retainedNodes: !200)
!3231 = !DILocalVariable(name: "this", arg: 1, scope: !3230, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3232 = !DILocation(line: 0, scope: !3230)
!3233 = !DILocation(line: 919, column: 32, scope: !3230)
!3234 = !DILocation(line: 919, column: 40, scope: !3230)
!3235 = !DILocation(line: 919, column: 58, scope: !3230)
!3236 = !DILocation(line: 919, column: 66, scope: !3230)
!3237 = !DILocation(line: 919, column: 50, scope: !3230)
!3238 = !DILocation(line: 919, column: 9, scope: !3230)
!3239 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !2, file: !2841, line: 254, type: !3240, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3244, retainedNodes: !200)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!3242, !3242, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!3244 = !{!3245}
!3245 = !DITemplateTypeParameter(name: "_Tp", type: !139)
!3246 = !DILocalVariable(name: "__a", arg: 1, scope: !3239, file: !3247, line: 407, type: !3242)
!3247 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!3248 = !DILocation(line: 407, column: 19, scope: !3239)
!3249 = !DILocalVariable(name: "__b", arg: 2, scope: !3239, file: !3247, line: 407, type: !3242)
!3250 = !DILocation(line: 407, column: 31, scope: !3239)
!3251 = !DILocation(line: 259, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3239, file: !2841, line: 259, column: 11)
!3253 = !DILocation(line: 259, column: 17, scope: !3252)
!3254 = !DILocation(line: 259, column: 15, scope: !3252)
!3255 = !DILocation(line: 259, column: 11, scope: !3239)
!3256 = !DILocation(line: 260, column: 9, scope: !3252)
!3257 = !DILocation(line: 260, column: 2, scope: !3252)
!3258 = !DILocation(line: 261, column: 14, scope: !3239)
!3259 = !DILocation(line: 261, column: 7, scope: !3239)
!3260 = !DILocation(line: 262, column: 5, scope: !3239)
!3261 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE11_S_max_sizeERKS3_", scope: !70, file: !71, line: 1776, type: !645, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !644, retainedNodes: !200)
!3262 = !DILocalVariable(name: "__a", arg: 1, scope: !3261, file: !71, line: 1776, type: !647)
!3263 = !DILocation(line: 1776, column: 41, scope: !3261)
!3264 = !DILocalVariable(name: "__diffmax", scope: !3261, file: !71, line: 1781, type: !3265)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!3266 = !DILocation(line: 1781, column: 15, scope: !3261)
!3267 = !DILocalVariable(name: "__allocmax", scope: !3261, file: !71, line: 1783, type: !3265)
!3268 = !DILocation(line: 1783, column: 15, scope: !3261)
!3269 = !DILocation(line: 1783, column: 52, scope: !3261)
!3270 = !DILocation(line: 1783, column: 28, scope: !3261)
!3271 = !DILocation(line: 1784, column: 9, scope: !3261)
!3272 = !DILocation(line: 1784, column: 2, scope: !3261)
!3273 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIPN3ISG4NodeESaIS2_EE19_M_get_Tp_allocatorEv", scope: !74, file: !71, line: 280, type: !253, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !252, retainedNodes: !200)
!3274 = !DILocalVariable(name: "this", arg: 1, scope: !3273, type: !3275, flags: DIFlagArtificial | DIFlagObjectPointer)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!3276 = !DILocation(line: 0, scope: !3273)
!3277 = !DILocation(line: 281, column: 22, scope: !3273)
!3278 = !DILocation(line: 281, column: 9, scope: !3273)
!3279 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8max_sizeERKS3_", scope: !88, file: !89, line: 547, type: !174, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !173, retainedNodes: !200)
!3280 = !DILocalVariable(name: "__a", arg: 1, scope: !3279, file: !89, line: 547, type: !177)
!3281 = !DILocation(line: 547, column: 38, scope: !3279)
!3282 = !DILocation(line: 550, column: 9, scope: !3279)
!3283 = !DILocation(line: 550, column: 13, scope: !3279)
!3284 = !DILocation(line: 550, column: 2, scope: !3279)
!3285 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !2, file: !2841, line: 230, type: !3240, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3244, retainedNodes: !200)
!3286 = !DILocalVariable(name: "__a", arg: 1, scope: !3285, file: !2841, line: 230, type: !3242)
!3287 = !DILocation(line: 230, column: 20, scope: !3285)
!3288 = !DILocalVariable(name: "__b", arg: 2, scope: !3285, file: !2841, line: 230, type: !3242)
!3289 = !DILocation(line: 230, column: 36, scope: !3285)
!3290 = !DILocation(line: 235, column: 11, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3285, file: !2841, line: 235, column: 11)
!3292 = !DILocation(line: 235, column: 17, scope: !3291)
!3293 = !DILocation(line: 235, column: 15, scope: !3291)
!3294 = !DILocation(line: 235, column: 11, scope: !3285)
!3295 = !DILocation(line: 236, column: 9, scope: !3291)
!3296 = !DILocation(line: 236, column: 2, scope: !3291)
!3297 = !DILocation(line: 237, column: 14, scope: !3285)
!3298 = !DILocation(line: 237, column: 7, scope: !3285)
!3299 = !DILocation(line: 238, column: 5, scope: !3285)
!3300 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8max_sizeEv", scope: !105, file: !106, line: 154, type: !146, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !145, retainedNodes: !200)
!3301 = !DILocalVariable(name: "this", arg: 1, scope: !3300, type: !3302, flags: DIFlagArtificial | DIFlagObjectPointer)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!3303 = !DILocation(line: 0, scope: !3300)
!3304 = !DILocation(line: 155, column: 16, scope: !3300)
!3305 = !DILocation(line: 155, column: 9, scope: !3300)
!3306 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIPN3ISG4NodeEE11_M_max_sizeEv", scope: !105, file: !106, line: 197, type: !146, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !148, retainedNodes: !200)
!3307 = !DILocalVariable(name: "this", arg: 1, scope: !3306, type: !3302, flags: DIFlagArtificial | DIFlagObjectPointer)
!3308 = !DILocation(line: 0, scope: !3306)
!3309 = !DILocation(line: 200, column: 2, scope: !3306)
!3310 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE8allocateERS3_m", scope: !88, file: !89, line: 463, type: !92, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !91, retainedNodes: !200)
!3311 = !DILocalVariable(name: "__a", arg: 1, scope: !3310, file: !89, line: 463, type: !97)
!3312 = !DILocation(line: 463, column: 32, scope: !3310)
!3313 = !DILocalVariable(name: "__n", arg: 2, scope: !3310, file: !89, line: 463, type: !165)
!3314 = !DILocation(line: 463, column: 47, scope: !3310)
!3315 = !DILocation(line: 464, column: 16, scope: !3310)
!3316 = !DILocation(line: 464, column: 29, scope: !3310)
!3317 = !DILocation(line: 464, column: 20, scope: !3310)
!3318 = !DILocation(line: 464, column: 9, scope: !3310)
!3319 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE8allocateEmPKv", scope: !105, file: !106, line: 103, type: !134, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !133, retainedNodes: !200)
!3320 = !DILocalVariable(name: "this", arg: 1, scope: !3319, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3321 = !DILocation(line: 0, scope: !3319)
!3322 = !DILocalVariable(name: "__n", arg: 2, scope: !3319, file: !106, line: 103, type: !136)
!3323 = !DILocation(line: 103, column: 26, scope: !3319)
!3324 = !DILocalVariable(arg: 3, scope: !3319, file: !106, line: 103, type: !140)
!3325 = !DILocation(line: 103, column: 43, scope: !3319)
!3326 = !DILocation(line: 111, column: 23, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3319, file: !106, line: 111, column: 6)
!3328 = !DILocation(line: 111, column: 35, scope: !3327)
!3329 = !DILocation(line: 111, column: 27, scope: !3327)
!3330 = !DILocation(line: 111, column: 6, scope: !3319)
!3331 = !DILocation(line: 115, column: 10, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !106, line: 115, column: 10)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !106, line: 112, column: 4)
!3334 = !DILocation(line: 115, column: 14, scope: !3332)
!3335 = !DILocation(line: 115, column: 10, scope: !3333)
!3336 = !DILocation(line: 116, column: 8, scope: !3332)
!3337 = !DILocation(line: 117, column: 6, scope: !3333)
!3338 = !DILocation(line: 127, column: 42, scope: !3319)
!3339 = !DILocation(line: 127, column: 46, scope: !3319)
!3340 = !DILocation(line: 127, column: 27, scope: !3319)
!3341 = !DILocation(line: 127, column: 2, scope: !3319)
!3342 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE", scope: !70, file: !71, line: 453, type: !332, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !331, retainedNodes: !200)
!3343 = !DILocalVariable(name: "__first", arg: 1, scope: !3342, file: !71, line: 453, type: !334)
!3344 = !DILocation(line: 453, column: 30, scope: !3342)
!3345 = !DILocalVariable(name: "__last", arg: 2, scope: !3342, file: !71, line: 453, type: !334)
!3346 = !DILocation(line: 453, column: 47, scope: !3342)
!3347 = !DILocalVariable(name: "__result", arg: 3, scope: !3342, file: !71, line: 453, type: !334)
!3348 = !DILocation(line: 453, column: 63, scope: !3342)
!3349 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3342, file: !71, line: 454, type: !335)
!3350 = !DILocation(line: 454, column: 24, scope: !3342)
!3351 = !DILocalVariable(arg: 5, scope: !3342, file: !71, line: 454, type: !300)
!3352 = !DILocation(line: 454, column: 42, scope: !3342)
!3353 = !DILocation(line: 456, column: 27, scope: !3342)
!3354 = !DILocation(line: 456, column: 36, scope: !3342)
!3355 = !DILocation(line: 456, column: 44, scope: !3342)
!3356 = !DILocation(line: 456, column: 54, scope: !3342)
!3357 = !DILocation(line: 456, column: 9, scope: !3342)
!3358 = !DILocation(line: 456, column: 2, scope: !3342)
!3359 = distinct !DISubprogram(name: "__relocate_a<ISG::Node **, ISG::Node **, std::allocator<ISG::Node *> >", linkageName: "_ZSt12__relocate_aIPPN3ISG4NodeES3_SaIS2_EET0_T_S6_S5_RT1_", scope: !2, file: !3360, line: 1040, type: !3361, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3363, retainedNodes: !200)
!3360 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!95, !95, !95, !95, !163}
!3363 = !{!3364, !3365, !3366}
!3364 = !DITemplateTypeParameter(name: "_InputIterator", type: !95)
!3365 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !95)
!3366 = !DITemplateTypeParameter(name: "_Allocator", type: !99)
!3367 = !DILocalVariable(name: "__first", arg: 1, scope: !3359, file: !3360, line: 1040, type: !95)
!3368 = !DILocation(line: 1040, column: 33, scope: !3359)
!3369 = !DILocalVariable(name: "__last", arg: 2, scope: !3359, file: !3360, line: 1040, type: !95)
!3370 = !DILocation(line: 1040, column: 57, scope: !3359)
!3371 = !DILocalVariable(name: "__result", arg: 3, scope: !3359, file: !3360, line: 1041, type: !95)
!3372 = !DILocation(line: 1041, column: 21, scope: !3359)
!3373 = !DILocalVariable(name: "__alloc", arg: 4, scope: !3359, file: !3360, line: 1041, type: !163)
!3374 = !DILocation(line: 1041, column: 43, scope: !3359)
!3375 = !DILocation(line: 1046, column: 47, scope: !3359)
!3376 = !DILocation(line: 1046, column: 29, scope: !3359)
!3377 = !DILocation(line: 1047, column: 26, scope: !3359)
!3378 = !DILocation(line: 1047, column: 8, scope: !3359)
!3379 = !DILocation(line: 1048, column: 26, scope: !3359)
!3380 = !DILocation(line: 1048, column: 8, scope: !3359)
!3381 = !DILocation(line: 1048, column: 37, scope: !3359)
!3382 = !DILocation(line: 1046, column: 14, scope: !3359)
!3383 = !DILocation(line: 1046, column: 7, scope: !3359)
!3384 = distinct !DISubprogram(name: "__relocate_a_1<ISG::Node *, ISG::Node *>", linkageName: "_ZSt14__relocate_a_1IPN3ISG4NodeES2_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS4_E4typeES5_S5_S5_RSaIT0_E", scope: !2, file: !3360, line: 1006, type: !3385, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3393, retainedNodes: !200)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!3387, !95, !95, !95, !163}
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<Node *>::value, ISG::Node **>", scope: !2, file: !301, line: 2205, baseType: !3388)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3389, file: !301, line: 2199, baseType: !95)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, ISG::Node **>", scope: !2, file: !301, line: 2198, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !3390, identifier: "_ZTSSt9enable_ifILb1EPPN3ISG4NodeEE")
!3390 = !{!3391, !3392}
!3391 = !DITemplateValueParameter(type: !193, value: i8 1)
!3392 = !DITemplateTypeParameter(name: "_Tp", type: !95)
!3393 = !{!150, !3037}
!3394 = !DILocalVariable(name: "__first", arg: 1, scope: !3384, file: !3360, line: 1006, type: !95)
!3395 = !DILocation(line: 1006, column: 25, scope: !3384)
!3396 = !DILocalVariable(name: "__last", arg: 2, scope: !3384, file: !3360, line: 1006, type: !95)
!3397 = !DILocation(line: 1006, column: 39, scope: !3384)
!3398 = !DILocalVariable(name: "__result", arg: 3, scope: !3384, file: !3360, line: 1007, type: !95)
!3399 = !DILocation(line: 1007, column: 11, scope: !3384)
!3400 = !DILocalVariable(arg: 4, scope: !3384, file: !3360, line: 1007, type: !163)
!3401 = !DILocation(line: 1007, column: 36, scope: !3384)
!3402 = !DILocalVariable(name: "__count", scope: !3384, file: !3360, line: 1009, type: !453)
!3403 = !DILocation(line: 1009, column: 17, scope: !3384)
!3404 = !DILocation(line: 1009, column: 27, scope: !3384)
!3405 = !DILocation(line: 1009, column: 36, scope: !3384)
!3406 = !DILocation(line: 1009, column: 34, scope: !3384)
!3407 = !DILocation(line: 1010, column: 11, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3384, file: !3360, line: 1010, column: 11)
!3409 = !DILocation(line: 1010, column: 19, scope: !3408)
!3410 = !DILocation(line: 1010, column: 11, scope: !3384)
!3411 = !DILocation(line: 1011, column: 20, scope: !3408)
!3412 = !DILocation(line: 1011, column: 30, scope: !3408)
!3413 = !DILocation(line: 1011, column: 39, scope: !3408)
!3414 = !DILocation(line: 1011, column: 47, scope: !3408)
!3415 = !DILocation(line: 1011, column: 2, scope: !3408)
!3416 = !DILocation(line: 1012, column: 14, scope: !3384)
!3417 = !DILocation(line: 1012, column: 25, scope: !3384)
!3418 = !DILocation(line: 1012, column: 23, scope: !3384)
!3419 = !DILocation(line: 1012, column: 7, scope: !3384)
!3420 = distinct !DISubprogram(name: "__niter_base<ISG::Node **>", linkageName: "_ZSt12__niter_baseIPPN3ISG4NodeEET_S4_", scope: !2, file: !2841, line: 313, type: !3421, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !430, retainedNodes: !200)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!95, !95}
!3423 = !DILocalVariable(name: "__it", arg: 1, scope: !3420, file: !2841, line: 313, type: !95)
!3424 = !DILocation(line: 313, column: 28, scope: !3420)
!3425 = !DILocation(line: 315, column: 14, scope: !3420)
!3426 = !DILocation(line: 315, column: 7, scope: !3420)
!3427 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE10deallocateERS3_PS2_m", scope: !88, file: !89, line: 495, type: !171, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !170, retainedNodes: !200)
!3428 = !DILocalVariable(name: "__a", arg: 1, scope: !3427, file: !89, line: 495, type: !97)
!3429 = !DILocation(line: 495, column: 34, scope: !3427)
!3430 = !DILocalVariable(name: "__p", arg: 2, scope: !3427, file: !89, line: 495, type: !94)
!3431 = !DILocation(line: 495, column: 47, scope: !3427)
!3432 = !DILocalVariable(name: "__n", arg: 3, scope: !3427, file: !89, line: 495, type: !165)
!3433 = !DILocation(line: 495, column: 62, scope: !3427)
!3434 = !DILocation(line: 496, column: 9, scope: !3427)
!3435 = !DILocation(line: 496, column: 24, scope: !3427)
!3436 = !DILocation(line: 496, column: 29, scope: !3427)
!3437 = !DILocation(line: 496, column: 13, scope: !3427)
!3438 = !DILocation(line: 496, column: 35, scope: !3427)
!3439 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE10deallocateEPS3_m", scope: !105, file: !106, line: 132, type: !143, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !142, retainedNodes: !200)
!3440 = !DILocalVariable(name: "this", arg: 1, scope: !3439, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3441 = !DILocation(line: 0, scope: !3439)
!3442 = !DILocalVariable(name: "__p", arg: 2, scope: !3439, file: !106, line: 132, type: !95)
!3443 = !DILocation(line: 132, column: 23, scope: !3439)
!3444 = !DILocalVariable(name: "__t", arg: 3, scope: !3439, file: !106, line: 132, type: !136)
!3445 = !DILocation(line: 132, column: 38, scope: !3439)
!3446 = !DILocation(line: 145, column: 20, scope: !3439)
!3447 = !DILocation(line: 145, column: 2, scope: !3439)
!3448 = !DILocation(line: 150, column: 7, scope: !3439)
!3449 = distinct !DISubprogram(name: "_Destroy<ISG::Node **, ISG::Node *>", linkageName: "_ZSt8_DestroyIPPN3ISG4NodeES2_EvT_S4_RSaIT0_E", scope: !2, file: !89, line: 845, type: !3450, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3452, retainedNodes: !200)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !95, !95, !163}
!3452 = !{!3365, !150}
!3453 = !DILocalVariable(name: "__first", arg: 1, scope: !3449, file: !89, line: 845, type: !95)
!3454 = !DILocation(line: 845, column: 31, scope: !3449)
!3455 = !DILocalVariable(name: "__last", arg: 2, scope: !3449, file: !89, line: 845, type: !95)
!3456 = !DILocation(line: 845, column: 57, scope: !3449)
!3457 = !DILocalVariable(arg: 3, scope: !3449, file: !89, line: 846, type: !163)
!3458 = !DILocation(line: 846, column: 22, scope: !3449)
!3459 = !DILocation(line: 848, column: 16, scope: !3449)
!3460 = !DILocation(line: 848, column: 25, scope: !3449)
!3461 = !DILocation(line: 848, column: 7, scope: !3449)
!3462 = !DILocation(line: 849, column: 5, scope: !3449)
!3463 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EED2Ev", scope: !74, file: !71, line: 333, type: !262, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !288, retainedNodes: !200)
!3464 = !DILocalVariable(name: "this", arg: 1, scope: !3463, type: !2732, flags: DIFlagArtificial | DIFlagObjectPointer)
!3465 = !DILocation(line: 0, scope: !3463)
!3466 = !DILocation(line: 335, column: 16, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !71, line: 334, column: 7)
!3468 = !DILocation(line: 335, column: 24, scope: !3467)
!3469 = !DILocation(line: 336, column: 9, scope: !3467)
!3470 = !DILocation(line: 336, column: 17, scope: !3467)
!3471 = !DILocation(line: 336, column: 37, scope: !3467)
!3472 = !DILocation(line: 336, column: 45, scope: !3467)
!3473 = !DILocation(line: 336, column: 35, scope: !3467)
!3474 = !DILocation(line: 335, column: 2, scope: !3467)
!3475 = !DILocation(line: 337, column: 7, scope: !3467)
!3476 = !DILocation(line: 337, column: 7, scope: !3463)
!3477 = distinct !DISubprogram(name: "_Destroy<ISG::Node **>", linkageName: "_ZSt8_DestroyIPPN3ISG4NodeEEvT_S4_", scope: !2, file: !3478, line: 182, type: !3479, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3481, retainedNodes: !200)
!3478 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !95, !95}
!3481 = !{!3365}
!3482 = !DILocalVariable(name: "__first", arg: 1, scope: !3477, file: !3478, line: 182, type: !95)
!3483 = !DILocation(line: 182, column: 31, scope: !3477)
!3484 = !DILocalVariable(name: "__last", arg: 2, scope: !3477, file: !3478, line: 182, type: !95)
!3485 = !DILocation(line: 182, column: 57, scope: !3477)
!3486 = !DILocation(line: 196, column: 12, scope: !3477)
!3487 = !DILocation(line: 196, column: 21, scope: !3477)
!3488 = !DILocation(line: 195, column: 7, scope: !3477)
!3489 = !DILocation(line: 197, column: 5, scope: !3477)
!3490 = distinct !DISubprogram(name: "__destroy<ISG::Node **>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ISG4NodeEEEvT_S6_", scope: !3491, file: !3478, line: 172, type: !3479, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3481, declaration: !3493, retainedNodes: !200)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !2, file: !3478, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !3492, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!3492 = !{!3391}
!3493 = !DISubprogram(name: "__destroy<ISG::Node **>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPPN3ISG4NodeEEEvT_S6_", scope: !3491, file: !3478, line: 172, type: !3479, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3481)
!3494 = !DILocalVariable(arg: 1, scope: !3490, file: !3478, line: 172, type: !95)
!3495 = !DILocation(line: 172, column: 35, scope: !3490)
!3496 = !DILocalVariable(arg: 2, scope: !3490, file: !3478, line: 172, type: !95)
!3497 = !DILocation(line: 172, column: 53, scope: !3490)
!3498 = !DILocation(line: 172, column: 57, scope: !3490)
!3499 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIPN3ISG4NodeESaIS2_EE12_Vector_implD2Ev", scope: !77, file: !71, line: 128, type: !228, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !3500, retainedNodes: !200)
!3500 = !DISubprogram(name: "~_Vector_impl", scope: !77, type: !228, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3501 = !DILocalVariable(name: "this", arg: 1, scope: !3499, type: !2738, flags: DIFlagArtificial | DIFlagObjectPointer)
!3502 = !DILocation(line: 0, scope: !3499)
!3503 = !DILocation(line: 128, column: 14, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3499, file: !71, line: 128, column: 14)
!3505 = !DILocation(line: 128, column: 14, scope: !3499)
!3506 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIPN3ISG4NodeEED2Ev", scope: !99, file: !100, line: 174, type: !152, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !164, retainedNodes: !200)
!3507 = !DILocalVariable(name: "this", arg: 1, scope: !3506, type: !2745, flags: DIFlagArtificial | DIFlagObjectPointer)
!3508 = !DILocation(line: 0, scope: !3506)
!3509 = !DILocation(line: 174, column: 39, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !100, line: 174, column: 37)
!3511 = !DILocation(line: 174, column: 39, scope: !3506)
!3512 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEED2Ev", scope: !105, file: !106, line: 89, type: !109, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !117, retainedNodes: !200)
!3513 = !DILocalVariable(name: "this", arg: 1, scope: !3512, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3514 = !DILocation(line: 0, scope: !3512)
!3515 = !DILocation(line: 89, column: 48, scope: !3512)
!3516 = distinct !DISubprogram(name: "markAsDirty", linkageName: "_ZN3ISG4Node11markAsDirtyEv", scope: !60, file: !13, line: 88, type: !667, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !680, retainedNodes: !200)
!3517 = !DILocalVariable(name: "this", arg: 1, scope: !3516, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!3518 = !DILocation(line: 0, scope: !3516)
!3519 = !DILocation(line: 90, column: 12, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !13, line: 90, column: 11)
!3521 = !DILocation(line: 90, column: 11, scope: !3516)
!3522 = !DILocation(line: 92, column: 25, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !13, line: 90, column: 29)
!3524 = !DILocation(line: 92, column: 9, scope: !3523)
!3525 = !DILocation(line: 92, column: 23, scope: !3523)
!3526 = !DILocalVariable(name: "i", scope: !3527, file: !13, line: 93, type: !67)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !13, line: 93, column: 9)
!3528 = !DILocation(line: 93, column: 18, scope: !3527)
!3529 = !DILocation(line: 93, column: 14, scope: !3527)
!3530 = !DILocation(line: 93, column: 23, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !13, line: 93, column: 9)
!3532 = !DILocation(line: 93, column: 25, scope: !3531)
!3533 = !DILocation(line: 93, column: 32, scope: !3531)
!3534 = !DILocation(line: 93, column: 24, scope: !3531)
!3535 = !DILocation(line: 93, column: 9, scope: !3527)
!3536 = !DILocation(line: 94, column: 11, scope: !3531)
!3537 = !DILocation(line: 94, column: 18, scope: !3531)
!3538 = !DILocation(line: 94, column: 22, scope: !3531)
!3539 = !DILocation(line: 93, column: 40, scope: !3531)
!3540 = !DILocation(line: 93, column: 9, scope: !3531)
!3541 = distinct !{!3541, !3535, !3542, !2354}
!3542 = !DILocation(line: 94, column: 42, scope: !3527)
!3543 = !DILocation(line: 95, column: 7, scope: !3523)
!3544 = !DILocation(line: 96, column: 5, scope: !3516)
!3545 = distinct !DISubprogram(name: "markedAsDirty", linkageName: "_ZN3ISG4Node13markedAsDirtyEv", scope: !60, file: !13, line: 81, type: !678, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !677, retainedNodes: !200)
!3546 = !DILocalVariable(name: "this", arg: 1, scope: !3545, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!3547 = !DILocation(line: 0, scope: !3545)
!3548 = !DILocation(line: 83, column: 14, scope: !3545)
!3549 = !DILocation(line: 83, column: 31, scope: !3545)
!3550 = !DILocation(line: 83, column: 28, scope: !3545)
!3551 = !DILocation(line: 83, column: 7, scope: !3545)
!3552 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EEixEm", scope: !70, file: !71, line: 1043, type: !559, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !558, retainedNodes: !200)
!3553 = !DILocalVariable(name: "this", arg: 1, scope: !3552, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!3554 = !DILocation(line: 0, scope: !3552)
!3555 = !DILocalVariable(name: "__n", arg: 2, scope: !3552, file: !71, line: 1043, type: !356)
!3556 = !DILocation(line: 1043, column: 28, scope: !3552)
!3557 = !DILocation(line: 1046, column: 17, scope: !3552)
!3558 = !DILocation(line: 1046, column: 25, scope: !3552)
!3559 = !DILocation(line: 1046, column: 36, scope: !3552)
!3560 = !DILocation(line: 1046, column: 34, scope: !3552)
!3561 = !DILocation(line: 1046, column: 2, scope: !3552)
!3562 = distinct !DISubprogram(name: "DataArray", linkageName: "_ZN3ISG9DataArrayC2EPNS_4NodeENS_12SemanticTypeENS_10DataFormatE", scope: !57, file: !13, line: 372, type: !692, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !691, retainedNodes: !200)
!3563 = !DILocalVariable(name: "this", arg: 1, scope: !3562, type: !747, flags: DIFlagArtificial | DIFlagObjectPointer)
!3564 = !DILocation(line: 0, scope: !3562)
!3565 = !DILocalVariable(name: "parent", arg: 2, scope: !3562, file: !13, line: 372, type: !96)
!3566 = !DILocation(line: 372, column: 21, scope: !3562)
!3567 = !DILocalVariable(name: "type", arg: 3, scope: !3562, file: !13, line: 372, type: !682)
!3568 = !DILocation(line: 372, column: 42, scope: !3562)
!3569 = !DILocalVariable(name: "format", arg: 4, scope: !3562, file: !13, line: 372, type: !684)
!3570 = !DILocation(line: 372, column: 59, scope: !3562)
!3571 = !DILocation(line: 373, column: 14, scope: !3562)
!3572 = !DILocation(line: 373, column: 9, scope: !3562)
!3573 = !DILocation(line: 379, column: 5, scope: !3562)
!3574 = !DILocation(line: 374, column: 9, scope: !3562)
!3575 = !DILocation(line: 374, column: 14, scope: !3562)
!3576 = !DILocation(line: 375, column: 9, scope: !3562)
!3577 = !DILocation(line: 375, column: 16, scope: !3562)
!3578 = !DILocation(line: 376, column: 9, scope: !3562)
!3579 = !DILocation(line: 377, column: 9, scope: !3562)
!3580 = !DILocation(line: 378, column: 9, scope: !3562)
!3581 = !DILocation(line: 379, column: 6, scope: !3562)
!3582 = distinct !DISubprogram(name: "setCoords", linkageName: "_ZN3ISG8BaseMesh9setCoordsEPNS_9DataArrayE", scope: !743, file: !13, line: 566, type: !753, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !752, retainedNodes: !200)
!3583 = !DILocalVariable(name: "this", arg: 1, scope: !3582, type: !742, flags: DIFlagArtificial | DIFlagObjectPointer)
!3584 = !DILocation(line: 0, scope: !3582)
!3585 = !DILocalVariable(name: "c", arg: 2, scope: !3582, file: !13, line: 566, type: !747)
!3586 = !DILocation(line: 566, column: 31, scope: !3582)
!3587 = !DILocation(line: 568, column: 20, scope: !3582)
!3588 = !DILocation(line: 568, column: 7, scope: !3582)
!3589 = !DILocation(line: 569, column: 15, scope: !3582)
!3590 = !DILocation(line: 569, column: 7, scope: !3582)
!3591 = !DILocation(line: 569, column: 13, scope: !3582)
!3592 = !DILocation(line: 570, column: 7, scope: !3582)
!3593 = !DILocation(line: 570, column: 14, scope: !3582)
!3594 = !DILocation(line: 572, column: 5, scope: !3582)
!3595 = distinct !DISubprogram(name: "~DataArray", linkageName: "_ZN3ISG9DataArrayD2Ev", scope: !57, file: !13, line: 380, type: !696, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !695, retainedNodes: !200)
!3596 = !DILocalVariable(name: "this", arg: 1, scope: !3595, type: !747, flags: DIFlagArtificial | DIFlagObjectPointer)
!3597 = !DILocation(line: 0, scope: !3595)
!3598 = !DILocation(line: 380, column: 18, scope: !3595)
!3599 = !DILocation(line: 380, column: 20, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !13, line: 380, column: 18)
!3601 = !DILocation(line: 380, column: 29, scope: !3600)
!3602 = !DILocation(line: 380, column: 29, scope: !3595)
!3603 = distinct !DISubprogram(name: "~DataArray", linkageName: "_ZN3ISG9DataArrayD0Ev", scope: !57, file: !13, line: 380, type: !696, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !695, retainedNodes: !200)
!3604 = !DILocalVariable(name: "this", arg: 1, scope: !3603, type: !747, flags: DIFlagArtificial | DIFlagObjectPointer)
!3605 = !DILocation(line: 0, scope: !3603)
!3606 = !DILocation(line: 380, column: 18, scope: !3603)
!3607 = !DILocation(line: 380, column: 29, scope: !3603)
!3608 = distinct !DISubprogram(name: "clear", linkageName: "_ZN3ISG9DataArray5clearEv", scope: !57, file: !13, line: 382, type: !696, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !698, retainedNodes: !200)
!3609 = !DILocalVariable(name: "this", arg: 1, scope: !3608, type: !747, flags: DIFlagArtificial | DIFlagObjectPointer)
!3610 = !DILocation(line: 0, scope: !3608)
!3611 = !DILocation(line: 384, column: 11, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3608, file: !13, line: 384, column: 11)
!3613 = !DILocation(line: 384, column: 17, scope: !3612)
!3614 = !DILocation(line: 385, column: 11, scope: !3612)
!3615 = !DILocation(line: 386, column: 11, scope: !3612)
!3616 = !DILocation(line: 386, column: 17, scope: !3612)
!3617 = !DILocation(line: 384, column: 11, scope: !3608)
!3618 = !DILocation(line: 387, column: 14, scope: !3612)
!3619 = !DILocation(line: 387, column: 9, scope: !3612)
!3620 = !DILocation(line: 388, column: 7, scope: !3608)
!3621 = !DILocation(line: 388, column: 13, scope: !3608)
!3622 = !DILocation(line: 389, column: 7, scope: !3608)
!3623 = !DILocation(line: 389, column: 13, scope: !3608)
!3624 = !DILocation(line: 390, column: 7, scope: !3608)
!3625 = !DILocation(line: 390, column: 21, scope: !3608)
!3626 = !DILocation(line: 391, column: 7, scope: !3608)
!3627 = !DILocation(line: 391, column: 13, scope: !3608)
!3628 = !DILocation(line: 392, column: 5, scope: !3608)
!3629 = distinct !DISubprogram(name: "removeParent<ISG::DataArray>", linkageName: "_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_", scope: !60, file: !13, line: 44, type: !3630, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3634, declaration: !3633, retainedNodes: !200)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3632, !96}
!3632 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !747, size: 64)
!3633 = !DISubprogram(name: "removeParent<ISG::DataArray>", linkageName: "_ZN3ISG4Node12removeParentINS_9DataArrayEEEvRPT_PS0_", scope: !60, file: !13, line: 44, type: !3630, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3634)
!3634 = !{!3635}
!3635 = !DITemplateTypeParameter(name: "nodetype", type: !57)
!3636 = !DILocalVariable(name: "from", arg: 1, scope: !3629, file: !13, line: 44, type: !3632)
!3637 = !DILocation(line: 44, column: 41, scope: !3629)
!3638 = !DILocalVariable(name: "what", arg: 2, scope: !3629, file: !13, line: 44, type: !96)
!3639 = !DILocation(line: 44, column: 53, scope: !3629)
!3640 = !DILocation(line: 46, column: 11, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3629, file: !13, line: 46, column: 11)
!3642 = !DILocation(line: 46, column: 16, scope: !3641)
!3643 = !DILocation(line: 46, column: 11, scope: !3629)
!3644 = !DILocation(line: 47, column: 9, scope: !3641)
!3645 = !DILocation(line: 48, column: 7, scope: !3629)
!3646 = !DILocation(line: 48, column: 26, scope: !3629)
!3647 = !DILocation(line: 48, column: 13, scope: !3629)
!3648 = !DILocation(line: 49, column: 11, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3629, file: !13, line: 49, column: 11)
!3650 = !DILocation(line: 49, column: 17, scope: !3649)
!3651 = !DILocation(line: 49, column: 24, scope: !3649)
!3652 = !DILocation(line: 49, column: 31, scope: !3649)
!3653 = !DILocation(line: 49, column: 11, scope: !3629)
!3654 = !DILocation(line: 50, column: 16, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3649, file: !13, line: 49, column: 37)
!3656 = !DILocation(line: 50, column: 9, scope: !3655)
!3657 = !DILocation(line: 51, column: 9, scope: !3655)
!3658 = !DILocation(line: 51, column: 14, scope: !3655)
!3659 = !DILocation(line: 52, column: 7, scope: !3655)
!3660 = !DILocation(line: 53, column: 5, scope: !3629)
!3661 = distinct !DISubprogram(name: "removeParent", linkageName: "_ZN3ISG4Node12removeParentEPS0_", scope: !60, file: !13, line: 62, type: !671, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !675, retainedNodes: !200)
!3662 = !DILocalVariable(name: "this", arg: 1, scope: !3661, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!3663 = !DILocation(line: 0, scope: !3661)
!3664 = !DILocalVariable(name: "node", arg: 2, scope: !3661, file: !13, line: 62, type: !96)
!3665 = !DILocation(line: 62, column: 29, scope: !3661)
!3666 = !DILocalVariable(name: "where", scope: !3661, file: !13, line: 64, type: !409)
!3667 = !DILocation(line: 64, column: 31, scope: !3661)
!3668 = !DILocation(line: 64, column: 44, scope: !3661)
!3669 = !DILocation(line: 64, column: 51, scope: !3661)
!3670 = !DILocation(line: 64, column: 59, scope: !3661)
!3671 = !DILocation(line: 64, column: 66, scope: !3661)
!3672 = !DILocation(line: 64, column: 39, scope: !3661)
!3673 = !DILocation(line: 65, column: 7, scope: !3661)
!3674 = !DILocation(line: 66, column: 7, scope: !3661)
!3675 = !DILocation(line: 66, column: 20, scope: !3661)
!3676 = !DILocation(line: 66, column: 14, scope: !3661)
!3677 = !DILocation(line: 67, column: 5, scope: !3661)
!3678 = distinct !DISubprogram(name: "operator!=<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", linkageName: "_ZN9__gnu_cxxneIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_", scope: !85, file: !411, line: 1179, type: !2763, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !466, retainedNodes: !200)
!3679 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3678, file: !411, line: 1179, type: !2765)
!3680 = !DILocation(line: 1179, column: 64, scope: !3678)
!3681 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3678, file: !411, line: 1180, type: !2765)
!3682 = !DILocation(line: 1180, column: 57, scope: !3678)
!3683 = !DILocation(line: 1182, column: 14, scope: !3678)
!3684 = !DILocation(line: 1182, column: 20, scope: !3678)
!3685 = !DILocation(line: 1182, column: 30, scope: !3678)
!3686 = !DILocation(line: 1182, column: 36, scope: !3678)
!3687 = !DILocation(line: 1182, column: 27, scope: !3678)
!3688 = !DILocation(line: 1182, column: 7, scope: !3678)
!3689 = distinct !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE", scope: !70, file: !71, line: 1430, type: !613, scopeLine: 1431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !612, retainedNodes: !200)
!3690 = !DILocalVariable(name: "this", arg: 1, scope: !3689, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!3691 = !DILocation(line: 0, scope: !3689)
!3692 = !DILocalVariable(name: "__position", arg: 2, scope: !3689, file: !71, line: 1430, type: !471)
!3693 = !DILocation(line: 1430, column: 28, scope: !3689)
!3694 = !DILocation(line: 1431, column: 25, scope: !3689)
!3695 = !DILocation(line: 1431, column: 49, scope: !3689)
!3696 = !DILocation(line: 1431, column: 47, scope: !3689)
!3697 = !DILocation(line: 1431, column: 33, scope: !3689)
!3698 = !DILocation(line: 1431, column: 16, scope: !3689)
!3699 = !DILocation(line: 1431, column: 9, scope: !3689)
!3700 = distinct !DISubprogram(name: "__normal_iterator<ISG::Node **>", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2IPS3_EERKNS0_IT_NS_11__enable_ifIXsr3std10__are_sameISC_SB_EE7__valueES8_E6__typeEEE", scope: !472, file: !411, line: 1033, type: !3701, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3704, declaration: !3703, retainedNodes: !200)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !478, !2765}
!3703 = !DISubprogram(name: "__normal_iterator<ISG::Node **>", scope: !472, file: !411, line: 1033, type: !3701, scopeLine: 1033, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3704)
!3704 = !{!3705}
!3705 = !DITemplateTypeParameter(name: "_Iter", type: !95)
!3706 = !DILocalVariable(name: "this", arg: 1, scope: !3700, type: !3707, flags: DIFlagArtificial | DIFlagObjectPointer)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!3708 = !DILocation(line: 0, scope: !3700)
!3709 = !DILocalVariable(name: "__i", arg: 2, scope: !3700, file: !411, line: 1036, type: !2765)
!3710 = !DILocation(line: 1036, column: 31, scope: !3700)
!3711 = !DILocation(line: 1037, column: 11, scope: !3700)
!3712 = !DILocation(line: 1037, column: 22, scope: !3700)
!3713 = !DILocation(line: 1037, column: 26, scope: !3700)
!3714 = !DILocation(line: 1037, column: 36, scope: !3700)
!3715 = distinct !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIPN3ISG4NodeESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE", scope: !70, file: !936, line: 172, type: !653, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !652, retainedNodes: !200)
!3716 = !DILocalVariable(name: "this", arg: 1, scope: !3715, type: !2682, flags: DIFlagArtificial | DIFlagObjectPointer)
!3717 = !DILocation(line: 0, scope: !3715)
!3718 = !DILocalVariable(name: "__position", arg: 2, scope: !3715, file: !71, line: 1804, type: !409)
!3719 = !DILocation(line: 1804, column: 25, scope: !3715)
!3720 = !DILocation(line: 174, column: 22, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3715, file: !936, line: 174, column: 11)
!3722 = !DILocation(line: 174, column: 29, scope: !3721)
!3723 = !DILocation(line: 174, column: 26, scope: !3721)
!3724 = !DILocation(line: 174, column: 11, scope: !3715)
!3725 = !DILocation(line: 175, column: 2, scope: !3721)
!3726 = !DILocation(line: 176, column: 15, scope: !3715)
!3727 = !DILocation(line: 176, column: 23, scope: !3715)
!3728 = !DILocation(line: 176, column: 7, scope: !3715)
!3729 = !DILocation(line: 177, column: 36, scope: !3715)
!3730 = !DILocation(line: 177, column: 51, scope: !3715)
!3731 = !DILocation(line: 177, column: 59, scope: !3715)
!3732 = !DILocation(line: 177, column: 7, scope: !3715)
!3733 = !DILocation(line: 179, column: 14, scope: !3715)
!3734 = !DILocation(line: 179, column: 7, scope: !3715)
!3735 = distinct !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS3_SaIS3_EEEplEl", scope: !410, file: !411, line: 1090, type: !459, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !458, retainedNodes: !200)
!3736 = !DILocalVariable(name: "this", arg: 1, scope: !3735, type: !2836, flags: DIFlagArtificial | DIFlagObjectPointer)
!3737 = !DILocation(line: 0, scope: !3735)
!3738 = !DILocalVariable(name: "__n", arg: 2, scope: !3735, file: !411, line: 1090, type: !451)
!3739 = !DILocation(line: 1090, column: 33, scope: !3735)
!3740 = !DILocation(line: 1091, column: 34, scope: !3735)
!3741 = !DILocation(line: 1091, column: 47, scope: !3735)
!3742 = !DILocation(line: 1091, column: 45, scope: !3735)
!3743 = !DILocation(line: 1091, column: 16, scope: !3735)
!3744 = !DILocation(line: 1091, column: 9, scope: !3735)
!3745 = distinct !DISubprogram(name: "operator-<ISG::Node *const *, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", linkageName: "_ZN9__gnu_cxxmiIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_", scope: !85, file: !411, line: 1268, type: !3746, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !524, retainedNodes: !200)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!511, !3748, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !493, size: 64)
!3749 = !DILocalVariable(name: "__lhs", arg: 1, scope: !3745, file: !411, line: 1268, type: !3748)
!3750 = !DILocation(line: 1268, column: 63, scope: !3745)
!3751 = !DILocalVariable(name: "__rhs", arg: 2, scope: !3745, file: !411, line: 1269, type: !3748)
!3752 = !DILocation(line: 1269, column: 56, scope: !3745)
!3753 = !DILocation(line: 1271, column: 14, scope: !3745)
!3754 = !DILocation(line: 1271, column: 20, scope: !3745)
!3755 = !DILocation(line: 1271, column: 29, scope: !3745)
!3756 = !DILocation(line: 1271, column: 35, scope: !3745)
!3757 = !DILocation(line: 1271, column: 27, scope: !3745)
!3758 = !DILocation(line: 1271, column: 7, scope: !3745)
!3759 = distinct !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIPN3ISG4NodeESaIS2_EE6cbeginEv", scope: !70, file: !71, line: 884, type: !469, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !540, retainedNodes: !200)
!3760 = !DILocalVariable(name: "this", arg: 1, scope: !3759, type: !3147, flags: DIFlagArtificial | DIFlagObjectPointer)
!3761 = !DILocation(line: 0, scope: !3759)
!3762 = !DILocation(line: 885, column: 37, scope: !3759)
!3763 = !DILocation(line: 885, column: 45, scope: !3759)
!3764 = !DILocation(line: 885, column: 16, scope: !3759)
!3765 = !DILocation(line: 885, column: 9, scope: !3759)
!3766 = distinct !DISubprogram(name: "move<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, __gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_", scope: !2, file: !2841, line: 644, type: !3767, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3769, retainedNodes: !200)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!410, !410, !410, !410}
!3769 = !{!3770, !3771}
!3770 = !DITemplateTypeParameter(name: "_II", type: !410)
!3771 = !DITemplateTypeParameter(name: "_OI", type: !410)
!3772 = !DILocalVariable(name: "__first", arg: 1, scope: !3766, file: !2841, line: 644, type: !410)
!3773 = !DILocation(line: 644, column: 14, scope: !3766)
!3774 = !DILocalVariable(name: "__last", arg: 2, scope: !3766, file: !2841, line: 644, type: !410)
!3775 = !DILocation(line: 644, column: 27, scope: !3766)
!3776 = !DILocalVariable(name: "__result", arg: 3, scope: !3766, file: !2841, line: 644, type: !410)
!3777 = !DILocation(line: 644, column: 39, scope: !3766)
!3778 = !DILocation(line: 652, column: 57, scope: !3766)
!3779 = !DILocation(line: 652, column: 39, scope: !3766)
!3780 = !DILocation(line: 653, column: 29, scope: !3766)
!3781 = !DILocation(line: 653, column: 11, scope: !3766)
!3782 = !DILocation(line: 653, column: 38, scope: !3766)
!3783 = !DILocation(line: 652, column: 14, scope: !3766)
!3784 = !DILocation(line: 652, column: 7, scope: !3766)
!3785 = distinct !DISubprogram(name: "destroy<ISG::Node *>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE7destroyIS2_EEvRS3_PT_", scope: !88, file: !89, line: 531, type: !3786, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3789, declaration: !3788, retainedNodes: !200)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !97, !95}
!3788 = !DISubprogram(name: "destroy<ISG::Node *>", linkageName: "_ZNSt16allocator_traitsISaIPN3ISG4NodeEEE7destroyIS2_EEvRS3_PT_", scope: !88, file: !89, line: 531, type: !3786, scopeLine: 531, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !3789)
!3789 = !{!3037}
!3790 = !DILocalVariable(name: "__a", arg: 1, scope: !3785, file: !89, line: 531, type: !97)
!3791 = !DILocation(line: 531, column: 26, scope: !3785)
!3792 = !DILocalVariable(name: "__p", arg: 2, scope: !3785, file: !89, line: 531, type: !95)
!3793 = !DILocation(line: 531, column: 64, scope: !3785)
!3794 = !DILocation(line: 535, column: 4, scope: !3785)
!3795 = !DILocation(line: 535, column: 16, scope: !3785)
!3796 = !DILocation(line: 535, column: 8, scope: !3785)
!3797 = !DILocation(line: 539, column: 2, scope: !3785)
!3798 = distinct !DISubprogram(name: "__copy_move_a<true, __gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, __gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES9_ET1_T0_SB_SA_", scope: !2, file: !2841, line: 527, type: !3767, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3799, retainedNodes: !200)
!3799 = !{!3800, !3770, !3771}
!3800 = !DITemplateValueParameter(name: "_IsMove", type: !193, value: i8 1)
!3801 = !DILocalVariable(name: "__first", arg: 1, scope: !3798, file: !2841, line: 527, type: !410)
!3802 = !DILocation(line: 527, column: 23, scope: !3798)
!3803 = !DILocalVariable(name: "__last", arg: 2, scope: !3798, file: !2841, line: 527, type: !410)
!3804 = !DILocation(line: 527, column: 36, scope: !3798)
!3805 = !DILocalVariable(name: "__result", arg: 3, scope: !3798, file: !2841, line: 527, type: !410)
!3806 = !DILocation(line: 527, column: 48, scope: !3798)
!3807 = !DILocation(line: 529, column: 32, scope: !3798)
!3808 = !DILocation(line: 530, column: 50, scope: !3798)
!3809 = !DILocation(line: 530, column: 32, scope: !3798)
!3810 = !DILocation(line: 531, column: 29, scope: !3798)
!3811 = !DILocation(line: 531, column: 11, scope: !3798)
!3812 = !DILocation(line: 532, column: 29, scope: !3798)
!3813 = !DILocation(line: 532, column: 11, scope: !3798)
!3814 = !DILocation(line: 530, column: 3, scope: !3798)
!3815 = !DILocation(line: 529, column: 14, scope: !3798)
!3816 = !DILocation(line: 529, column: 7, scope: !3798)
!3817 = distinct !DISubprogram(name: "__miter_base<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > > >", linkageName: "_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEEET_SA_", scope: !2, file: !3818, line: 560, type: !3819, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2994, retainedNodes: !200)
!3818 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/cpp_type_traits.h", directory: "")
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!410, !410}
!3821 = !DILocalVariable(name: "__it", arg: 1, scope: !3817, file: !3818, line: 560, type: !410)
!3822 = !DILocation(line: 560, column: 28, scope: !3817)
!3823 = !DILocation(line: 561, column: 14, scope: !3817)
!3824 = !DILocation(line: 561, column: 7, scope: !3817)
!3825 = distinct !DISubprogram(name: "__niter_wrap<__gnu_cxx::__normal_iterator<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >, ISG::Node **>", linkageName: "_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPPN3ISG4NodeESt6vectorIS4_SaIS4_EEEES5_ET_SA_T0_", scope: !2, file: !2841, line: 328, type: !3826, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3828, retainedNodes: !200)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!410, !410, !95}
!3828 = !{!3829, !3830}
!3829 = !DITemplateTypeParameter(name: "_From", type: !410)
!3830 = !DITemplateTypeParameter(name: "_To", type: !95)
!3831 = !DILocalVariable(name: "__from", arg: 1, scope: !3825, file: !2841, line: 328, type: !410)
!3832 = !DILocation(line: 328, column: 24, scope: !3825)
!3833 = !DILocalVariable(name: "__res", arg: 2, scope: !3825, file: !2841, line: 328, type: !95)
!3834 = !DILocation(line: 328, column: 36, scope: !3825)
!3835 = !DILocation(line: 329, column: 24, scope: !3825)
!3836 = !DILocation(line: 329, column: 50, scope: !3825)
!3837 = !DILocation(line: 329, column: 32, scope: !3825)
!3838 = !DILocation(line: 329, column: 30, scope: !3825)
!3839 = !DILocation(line: 329, column: 21, scope: !3825)
!3840 = !DILocation(line: 329, column: 7, scope: !3825)
!3841 = distinct !DISubprogram(name: "__copy_move_a1<true, ISG::Node **, ISG::Node **>", linkageName: "_ZSt14__copy_move_a1ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_", scope: !2, file: !2841, line: 521, type: !3842, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3844, retainedNodes: !200)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!95, !95, !95, !95}
!3844 = !{!3800, !3845, !3846}
!3845 = !DITemplateTypeParameter(name: "_II", type: !95)
!3846 = !DITemplateTypeParameter(name: "_OI", type: !95)
!3847 = !DILocalVariable(name: "__first", arg: 1, scope: !3841, file: !2841, line: 521, type: !95)
!3848 = !DILocation(line: 521, column: 24, scope: !3841)
!3849 = !DILocalVariable(name: "__last", arg: 2, scope: !3841, file: !2841, line: 521, type: !95)
!3850 = !DILocation(line: 521, column: 37, scope: !3841)
!3851 = !DILocalVariable(name: "__result", arg: 3, scope: !3841, file: !2841, line: 521, type: !95)
!3852 = !DILocation(line: 521, column: 49, scope: !3841)
!3853 = !DILocation(line: 522, column: 43, scope: !3841)
!3854 = !DILocation(line: 522, column: 52, scope: !3841)
!3855 = !DILocation(line: 522, column: 60, scope: !3841)
!3856 = !DILocation(line: 522, column: 14, scope: !3841)
!3857 = !DILocation(line: 522, column: 7, scope: !3841)
!3858 = distinct !DISubprogram(name: "__niter_base<ISG::Node **, std::vector<ISG::Node *, std::allocator<ISG::Node *> > >", linkageName: "_ZSt12__niter_baseIPPN3ISG4NodeESt6vectorIS2_SaIS2_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE", scope: !2, file: !411, line: 1291, type: !3859, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !466, retainedNodes: !200)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!95, !410}
!3861 = !DILocalVariable(name: "__it", arg: 1, scope: !3858, file: !411, line: 1291, type: !410)
!3862 = !DILocation(line: 1291, column: 70, scope: !3858)
!3863 = !DILocation(line: 1293, column: 19, scope: !3858)
!3864 = !DILocation(line: 1293, column: 7, scope: !3858)
!3865 = distinct !DISubprogram(name: "__copy_move_a2<true, ISG::Node **, ISG::Node **>", linkageName: "_ZSt14__copy_move_a2ILb1EPPN3ISG4NodeES3_ET1_T0_S5_S4_", scope: !2, file: !2841, line: 486, type: !3842, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3844, retainedNodes: !200)
!3866 = !DILocalVariable(name: "__first", arg: 1, scope: !3865, file: !2841, line: 486, type: !95)
!3867 = !DILocation(line: 486, column: 24, scope: !3865)
!3868 = !DILocalVariable(name: "__last", arg: 2, scope: !3865, file: !2841, line: 486, type: !95)
!3869 = !DILocation(line: 486, column: 37, scope: !3865)
!3870 = !DILocalVariable(name: "__result", arg: 3, scope: !3865, file: !2841, line: 486, type: !95)
!3871 = !DILocation(line: 486, column: 49, scope: !3865)
!3872 = !DILocation(line: 495, column: 31, scope: !3865)
!3873 = !DILocation(line: 495, column: 40, scope: !3865)
!3874 = !DILocation(line: 495, column: 48, scope: !3865)
!3875 = !DILocation(line: 494, column: 14, scope: !3865)
!3876 = !DILocation(line: 494, column: 7, scope: !3865)
!3877 = distinct !DISubprogram(name: "__copy_m<ISG::Node *>", linkageName: "_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ISG4NodeEEEPT_PKS6_S9_S7_", scope: !3878, file: !2841, line: 420, type: !3882, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !149, declaration: !3884, retainedNodes: !200)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__copy_move<true, true, std::random_access_iterator_tag>", scope: !2, file: !2841, line: 415, size: 8, flags: DIFlagTypePassByValue, elements: !200, templateParams: !3879, identifier: "_ZTSSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE")
!3879 = !{!3800, !3880, !3881}
!3880 = !DITemplateValueParameter(name: "_IsSimple", type: !193, value: i8 1)
!3881 = !DITemplateTypeParameter(name: "_Category", type: !2870)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!95, !129, !129, !95}
!3884 = !DISubprogram(name: "__copy_m<ISG::Node *>", linkageName: "_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPN3ISG4NodeEEEPT_PKS6_S9_S7_", scope: !3878, file: !2841, line: 420, type: !3882, scopeLine: 420, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !149)
!3885 = !DILocalVariable(name: "__first", arg: 1, scope: !3877, file: !2841, line: 420, type: !129)
!3886 = !DILocation(line: 420, column: 22, scope: !3877)
!3887 = !DILocalVariable(name: "__last", arg: 2, scope: !3877, file: !2841, line: 420, type: !129)
!3888 = !DILocation(line: 420, column: 42, scope: !3877)
!3889 = !DILocalVariable(name: "__result", arg: 3, scope: !3877, file: !2841, line: 420, type: !95)
!3890 = !DILocation(line: 420, column: 55, scope: !3877)
!3891 = !DILocalVariable(name: "_Num", scope: !3877, file: !2841, line: 429, type: !3892)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!3893 = !DILocation(line: 429, column: 20, scope: !3877)
!3894 = !DILocation(line: 429, column: 27, scope: !3877)
!3895 = !DILocation(line: 429, column: 36, scope: !3877)
!3896 = !DILocation(line: 429, column: 34, scope: !3877)
!3897 = !DILocation(line: 430, column: 8, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3877, file: !2841, line: 430, column: 8)
!3899 = !DILocation(line: 430, column: 8, scope: !3877)
!3900 = !DILocation(line: 431, column: 24, scope: !3898)
!3901 = !DILocation(line: 431, column: 34, scope: !3898)
!3902 = !DILocation(line: 431, column: 57, scope: !3898)
!3903 = !DILocation(line: 431, column: 55, scope: !3898)
!3904 = !DILocation(line: 431, column: 6, scope: !3898)
!3905 = !DILocation(line: 432, column: 11, scope: !3877)
!3906 = !DILocation(line: 432, column: 22, scope: !3877)
!3907 = !DILocation(line: 432, column: 20, scope: !3877)
!3908 = !DILocation(line: 432, column: 4, scope: !3877)
!3909 = distinct !DISubprogram(name: "destroy<ISG::Node *>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7destroyIS3_EEvPT_", scope: !105, file: !106, line: 166, type: !3910, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !3789, declaration: !3912, retainedNodes: !200)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !111, !95}
!3912 = !DISubprogram(name: "destroy<ISG::Node *>", linkageName: "_ZN9__gnu_cxx13new_allocatorIPN3ISG4NodeEE7destroyIS3_EEvPT_", scope: !105, file: !106, line: 166, type: !3910, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !3789)
!3913 = !DILocalVariable(name: "this", arg: 1, scope: !3909, type: !2759, flags: DIFlagArtificial | DIFlagObjectPointer)
!3914 = !DILocation(line: 0, scope: !3909)
!3915 = !DILocalVariable(name: "__p", arg: 2, scope: !3909, file: !106, line: 166, type: !95)
!3916 = !DILocation(line: 166, column: 15, scope: !3909)
!3917 = !DILocation(line: 168, column: 4, scope: !3909)
!3918 = !DILocation(line: 168, column: 17, scope: !3909)
!3919 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEE4baseEv", scope: !472, file: !411, line: 1105, type: !522, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !521, retainedNodes: !200)
!3920 = !DILocalVariable(name: "this", arg: 1, scope: !3919, type: !3921, flags: DIFlagArtificial | DIFlagObjectPointer)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!3922 = !DILocation(line: 0, scope: !3919)
!3923 = !DILocation(line: 1106, column: 16, scope: !3919)
!3924 = !DILocation(line: 1106, column: 9, scope: !3919)
!3925 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPKPN3ISG4NodeESt6vectorIS3_SaIS3_EEEC2ERKS5_", scope: !472, file: !411, line: 1027, type: !480, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !479, retainedNodes: !200)
!3926 = !DILocalVariable(name: "this", arg: 1, scope: !3925, type: !3707, flags: DIFlagArtificial | DIFlagObjectPointer)
!3927 = !DILocation(line: 0, scope: !3925)
!3928 = !DILocalVariable(name: "__i", arg: 2, scope: !3925, file: !411, line: 1027, type: !482)
!3929 = !DILocation(line: 1027, column: 42, scope: !3925)
!3930 = !DILocation(line: 1028, column: 9, scope: !3925)
!3931 = !DILocation(line: 1028, column: 20, scope: !3925)
!3932 = !DILocation(line: 1028, column: 27, scope: !3925)
!3933 = distinct !DISubprogram(name: "rtWriteToArray", linkageName: "_Z14rtWriteToArrayPN3ISG9DataArrayENS_12SemanticTypeENS_10DataFormatEPhi14DataArrayFlags", scope: !29, file: !29, line: 197, type: !3934, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !200)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !2383, !682, !684, !3936, !67, !2443}
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!3937 = !DILocalVariable(name: "target", arg: 1, scope: !3933, file: !29, line: 197, type: !2383)
!3938 = !DILocation(line: 197, column: 43, scope: !3933)
!3939 = !DILocalVariable(name: "semanticType", arg: 2, scope: !3933, file: !29, line: 198, type: !682)
!3940 = !DILocation(line: 198, column: 21, scope: !3933)
!3941 = !DILocalVariable(name: "dataFormat", arg: 3, scope: !3933, file: !29, line: 199, type: !684)
!3942 = !DILocation(line: 199, column: 19, scope: !3933)
!3943 = !DILocalVariable(name: "ptr", arg: 4, scope: !3933, file: !29, line: 200, type: !3936)
!3944 = !DILocation(line: 200, column: 29, scope: !3933)
!3945 = !DILocalVariable(name: "count", arg: 5, scope: !3933, file: !29, line: 201, type: !67)
!3946 = !DILocation(line: 201, column: 12, scope: !3933)
!3947 = !DILocalVariable(name: "flags", arg: 6, scope: !3933, file: !29, line: 202, type: !2443)
!3948 = !DILocation(line: 202, column: 23, scope: !3933)
!3949 = !DILocation(line: 204, column: 3, scope: !3933)
!3950 = !DILocalVariable(name: "array", scope: !3933, file: !29, line: 205, type: !747)
!3951 = !DILocation(line: 205, column: 14, scope: !3933)
!3952 = !DILocation(line: 205, column: 48, scope: !3933)
!3953 = !DILocation(line: 206, column: 3, scope: !3933)
!3954 = !DILocation(line: 212, column: 8, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3933, file: !29, line: 212, column: 7)
!3956 = !DILocation(line: 212, column: 14, scope: !3955)
!3957 = !DILocation(line: 212, column: 35, scope: !3955)
!3958 = !DILocation(line: 212, column: 7, scope: !3933)
!3959 = !DILocation(line: 215, column: 7, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3955, file: !29, line: 213, column: 5)
!3961 = !DILocation(line: 215, column: 18, scope: !3960)
!3962 = !DILocation(line: 215, column: 31, scope: !3960)
!3963 = !DILocation(line: 215, column: 42, scope: !3960)
!3964 = !DILocation(line: 215, column: 46, scope: !3960)
!3965 = !DILocation(line: 215, column: 14, scope: !3960)
!3966 = !DILocation(line: 216, column: 5, scope: !3960)
!3967 = !DILocation(line: 219, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3955, file: !29, line: 218, column: 5)
!3969 = !DILocation(line: 219, column: 18, scope: !3968)
!3970 = !DILocation(line: 219, column: 31, scope: !3968)
!3971 = !DILocation(line: 219, column: 42, scope: !3968)
!3972 = !DILocation(line: 219, column: 46, scope: !3968)
!3973 = !DILocation(line: 219, column: 14, scope: !3968)
!3974 = !DILocation(line: 221, column: 1, scope: !3933)
!3975 = distinct !DISubprogram(name: "set", linkageName: "_ZN3ISG9DataArray3setENS_12SemanticTypeENS_10DataFormatEPviNS0_9OwnerTypeE", scope: !57, file: !13, line: 404, type: !700, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !699, retainedNodes: !200)
!3976 = !DILocalVariable(name: "this", arg: 1, scope: !3975, type: !747, flags: DIFlagArtificial | DIFlagObjectPointer)
!3977 = !DILocation(line: 0, scope: !3975)
!3978 = !DILocalVariable(name: "type", arg: 2, scope: !3975, file: !13, line: 404, type: !682)
!3979 = !DILocation(line: 404, column: 27, scope: !3975)
!3980 = !DILocalVariable(name: "sourceFormat", arg: 3, scope: !3975, file: !13, line: 404, type: !684)
!3981 = !DILocation(line: 404, column: 44, scope: !3975)
!3982 = !DILocalVariable(name: "ptr", arg: 4, scope: !3975, file: !13, line: 404, type: !688)
!3983 = !DILocation(line: 404, column: 64, scope: !3975)
!3984 = !DILocalVariable(name: "units", arg: 5, scope: !3975, file: !13, line: 404, type: !67)
!3985 = !DILocation(line: 404, column: 73, scope: !3975)
!3986 = !DILocalVariable(name: "owner", arg: 6, scope: !3975, file: !13, line: 404, type: !690)
!3987 = !DILocation(line: 404, column: 90, scope: !3975)
!3988 = !DILocalVariable(name: "internalFormat", scope: !3989, file: !13, line: 408, type: !3991)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !13, line: 407, column: 9)
!3990 = distinct !DILexicalBlock(scope: !3975, file: !13, line: 406, column: 11)
!3991 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !684, size: 64)
!3992 = !DILocation(line: 408, column: 23, scope: !3989)
!3993 = !DILocation(line: 408, column: 46, scope: !3989)
!3994 = !DILocation(line: 410, column: 21, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3989, file: !13, line: 410, column: 15)
!3996 = !DILocation(line: 410, column: 29, scope: !3995)
!3997 = !DILocation(line: 410, column: 26, scope: !3995)
!3998 = !DILocation(line: 410, column: 15, scope: !3989)
!3999 = !DILocation(line: 411, column: 23, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !13, line: 411, column: 17)
!4001 = distinct !DILexicalBlock(scope: !3995, file: !13, line: 410, column: 35)
!4002 = !DILocation(line: 411, column: 28, scope: !4000)
!4003 = !DILocation(line: 411, column: 17, scope: !4001)
!4004 = !DILocation(line: 412, column: 28, scope: !4000)
!4005 = !DILocation(line: 412, column: 21, scope: !4000)
!4006 = !DILocation(line: 412, column: 26, scope: !4000)
!4007 = !DILocation(line: 412, column: 15, scope: !4000)
!4008 = !DILocation(line: 414, column: 15, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4000, file: !13, line: 414, column: 15)
!4010 = !DILocation(line: 415, column: 11, scope: !4001)
!4011 = !DILocation(line: 419, column: 15, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3989, file: !13, line: 419, column: 15)
!4013 = !DILocation(line: 419, column: 30, scope: !4012)
!4014 = !DILocation(line: 419, column: 15, scope: !3989)
!4015 = !DILocation(line: 422, column: 30, scope: !4012)
!4016 = !DILocation(line: 422, column: 13, scope: !4012)
!4017 = !DILocation(line: 422, column: 28, scope: !4012)
!4018 = !DILocalVariable(name: "new_size_in_bytes", scope: !3989, file: !13, line: 424, type: !454)
!4019 = !DILocation(line: 424, column: 16, scope: !3989)
!4020 = !DILocation(line: 424, column: 36, scope: !3989)
!4021 = !DILocation(line: 424, column: 57, scope: !3989)
!4022 = !DILocation(line: 424, column: 44, scope: !3989)
!4023 = !DILocation(line: 424, column: 42, scope: !3989)
!4024 = !DILocation(line: 425, column: 27, scope: !3989)
!4025 = !DILocation(line: 425, column: 33, scope: !3989)
!4026 = !DILocation(line: 425, column: 19, scope: !3989)
!4027 = !DILocation(line: 425, column: 11, scope: !3989)
!4028 = !DILocation(line: 425, column: 17, scope: !3989)
!4029 = !DILocation(line: 426, column: 27, scope: !3989)
!4030 = !DILocation(line: 426, column: 11, scope: !3989)
!4031 = !DILocation(line: 426, column: 25, scope: !3989)
!4032 = !DILocation(line: 427, column: 25, scope: !3989)
!4033 = !DILocation(line: 427, column: 17, scope: !3989)
!4034 = !DILocation(line: 427, column: 23, scope: !3989)
!4035 = !DILocation(line: 428, column: 15, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3989, file: !13, line: 428, column: 15)
!4037 = !DILocation(line: 428, column: 33, scope: !4036)
!4038 = !DILocation(line: 428, column: 30, scope: !4036)
!4039 = !DILocation(line: 428, column: 15, scope: !3989)
!4040 = !DILocation(line: 429, column: 20, scope: !4036)
!4041 = !DILocation(line: 429, column: 26, scope: !4036)
!4042 = !DILocation(line: 429, column: 30, scope: !4036)
!4043 = !DILocation(line: 429, column: 13, scope: !4036)
!4044 = !DILocation(line: 431, column: 21, scope: !4036)
!4045 = !DILocation(line: 431, column: 13, scope: !4036)
!4046 = !DILocation(line: 433, column: 23, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4036, file: !13, line: 431, column: 37)
!4048 = !DILocation(line: 433, column: 15, scope: !4047)
!4049 = !DILocation(line: 435, column: 39, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !13, line: 433, column: 37)
!4051 = !DILocation(line: 435, column: 53, scope: !4050)
!4052 = !DILocation(line: 435, column: 57, scope: !4050)
!4053 = !DILocalVariable(name: "target", arg: 1, scope: !4054, file: !13, line: 251, type: !4057)
!4054 = distinct !DISubprogram(name: "array_convert<RTTL::RTVec_t<4, float, 0>, RTTL::RTVec_t<3, float, 0> >", linkageName: "_ZN3ISG13array_convertIN4RTTL7RTVec_tILi4EfLi0EEENS2_ILi3EfLi0EEEEEvPT_PT0_i", scope: !14, file: !13, line: 251, type: !4055, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4059, retainedNodes: !200)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !4057, !4058, !67}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!4059 = !{!4060, !4061}
!4060 = !DITemplateTypeParameter(name: "target_t", type: !767)
!4061 = !DITemplateTypeParameter(name: "source_t", type: !771)
!4062 = !DILocation(line: 251, column: 40, scope: !4054, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 435, column: 17, scope: !4050)
!4064 = !DILocalVariable(name: "source", arg: 2, scope: !4054, file: !13, line: 251, type: !4058)
!4065 = !DILocation(line: 251, column: 58, scope: !4054, inlinedAt: !4063)
!4066 = !DILocalVariable(name: "count", arg: 3, scope: !4054, file: !13, line: 251, type: !67)
!4067 = !DILocation(line: 251, column: 70, scope: !4054, inlinedAt: !4063)
!4068 = !DILocalVariable(name: "i", scope: !4069, file: !13, line: 253, type: !67)
!4069 = distinct !DILexicalBlock(scope: !4054, file: !13, line: 253, column: 5)
!4070 = !DILocation(line: 253, column: 14, scope: !4069, inlinedAt: !4063)
!4071 = !DILocation(line: 253, column: 10, scope: !4069, inlinedAt: !4063)
!4072 = !DILocation(line: 253, column: 18, scope: !4073, inlinedAt: !4063)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !13, line: 253, column: 5)
!4074 = !DILocation(line: 253, column: 20, scope: !4073, inlinedAt: !4063)
!4075 = !DILocation(line: 253, column: 19, scope: !4073, inlinedAt: !4063)
!4076 = !DILocation(line: 253, column: 5, scope: !4069, inlinedAt: !4063)
!4077 = !DILocation(line: 254, column: 22, scope: !4073, inlinedAt: !4063)
!4078 = !DILocation(line: 254, column: 29, scope: !4073, inlinedAt: !4063)
!4079 = !DILocation(line: 254, column: 32, scope: !4073, inlinedAt: !4063)
!4080 = !DILocation(line: 254, column: 39, scope: !4073, inlinedAt: !4063)
!4081 = !DILocalVariable(name: "target", arg: 1, scope: !4082, file: !13, line: 243, type: !4085)
!4082 = distinct !DISubprogram(name: "single_convert<RTTL::RTVec_t<4, float, 0>, RTTL::RTVec_t<3, float, 0> >", linkageName: "_ZN3ISG14single_convertIN4RTTL7RTVec_tILi4EfLi0EEENS2_ILi3EfLi0EEEEEvRT_RT0_", scope: !14, file: !13, line: 243, type: !4083, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4059, retainedNodes: !200)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !763, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !769, size: 64)
!4087 = !DILocation(line: 243, column: 38, scope: !4082, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 254, column: 7, scope: !4073, inlinedAt: !4063)
!4089 = !DILocalVariable(name: "source", arg: 2, scope: !4082, file: !13, line: 243, type: !4086)
!4090 = !DILocation(line: 243, column: 53, scope: !4082, inlinedAt: !4088)
!4091 = !DILocation(line: 244, column: 22, scope: !4082, inlinedAt: !4088)
!4092 = !DILocation(line: 244, column: 13, scope: !4082, inlinedAt: !4088)
!4093 = !DILocalVariable(name: "this", arg: 1, scope: !4094, type: !4058, flags: DIFlagArtificial | DIFlagObjectPointer)
!4094 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi3EfLi0EEaSERKS1_", scope: !771, file: !773, line: 74, type: !4095, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4100, retainedNodes: !200)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!4097, !4099, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4100 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi3EfLi0EEaSERKS1_", scope: !771, file: !773, line: 74, type: !4095, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4101 = !DILocation(line: 0, scope: !4094, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 244, column: 20, scope: !4082, inlinedAt: !4088)
!4103 = !DILocalVariable(name: "x", arg: 2, scope: !4094, file: !773, line: 74, type: !4097)
!4104 = !DILocation(line: 74, column: 53, scope: !4094, inlinedAt: !4102)
!4105 = !DILocalVariable(name: "t", scope: !4094, file: !773, line: 75, type: !4106)
!4106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !772, size: 64)
!4107 = !DILocation(line: 75, column: 20, scope: !4094, inlinedAt: !4102)
!4108 = !DILocation(line: 75, column: 24, scope: !4094, inlinedAt: !4102)
!4109 = !DILocalVariable(name: "xt", scope: !4094, file: !773, line: 76, type: !4110)
!4110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!4112 = !DILocation(line: 76, column: 26, scope: !4094, inlinedAt: !4102)
!4113 = !DILocation(line: 76, column: 31, scope: !4094, inlinedAt: !4102)
!4114 = !DILocation(line: 77, column: 9, scope: !4094, inlinedAt: !4102)
!4115 = !DILocation(line: 77, column: 18, scope: !4094, inlinedAt: !4102)
!4116 = !DILocalVariable(name: "this", arg: 1, scope: !4117, type: !4123, flags: DIFlagArtificial | DIFlagObjectPointer)
!4117 = distinct !DISubprogram(name: "assign<3, float, 0>", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE6assignILi3EfLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !774, file: !775, line: 43, type: !805, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !4119, declaration: !4118, retainedNodes: !200)
!4118 = !DISubprogram(name: "assign<3, float, 0>", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE6assignILi3EfLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !774, file: !775, line: 43, type: !805, scopeLine: 43, flags: DIFlagPrototyped, spFlags: 0, templateParams: !4119)
!4119 = !{!4120, !4121, !4122}
!4120 = !DITemplateValueParameter(name: "AnotherN", type: !67, value: i32 3)
!4121 = !DITemplateTypeParameter(name: "AnotherDataType", type: !779)
!4122 = !DITemplateValueParameter(name: "AnotherAlign", type: !67, value: i32 0)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!4124 = !DILocation(line: 0, scope: !4117, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 77, column: 11, scope: !4094, inlinedAt: !4102)
!4126 = !DILocalVariable(name: "v", arg: 2, scope: !4117, file: !775, line: 43, type: !807)
!4127 = !DILocation(line: 43, column: 86, scope: !4117, inlinedAt: !4125)
!4128 = !DILocation(line: 44, column: 13, scope: !4117, inlinedAt: !4125)
!4129 = !DILocalVariable(name: "i", scope: !4130, file: !775, line: 46, type: !67)
!4130 = distinct !DILexicalBlock(scope: !4117, file: !775, line: 46, column: 13)
!4131 = !DILocation(line: 46, column: 22, scope: !4130, inlinedAt: !4125)
!4132 = !DILocation(line: 46, column: 18, scope: !4130, inlinedAt: !4125)
!4133 = !DILocation(line: 46, column: 29, scope: !4134, inlinedAt: !4125)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !775, line: 46, column: 13)
!4135 = !DILocation(line: 46, column: 31, scope: !4134, inlinedAt: !4125)
!4136 = !DILocation(line: 46, column: 13, scope: !4130, inlinedAt: !4125)
!4137 = !DILocation(line: 47, column: 24, scope: !4134, inlinedAt: !4125)
!4138 = !DILocation(line: 47, column: 26, scope: !4134, inlinedAt: !4125)
!4139 = !DILocalVariable(name: "this", arg: 1, scope: !4140, type: !4141, flags: DIFlagArtificial | DIFlagObjectPointer)
!4140 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi3EfLi0EEixEi", scope: !774, file: !775, line: 52, type: !802, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !801, retainedNodes: !200)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!4142 = !DILocation(line: 0, scope: !4140, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 47, column: 24, scope: !4134, inlinedAt: !4125)
!4144 = !DILocalVariable(name: "index", arg: 2, scope: !4140, file: !775, line: 52, type: !67)
!4145 = !DILocation(line: 52, column: 41, scope: !4140, inlinedAt: !4143)
!4146 = !DILocation(line: 53, column: 22, scope: !4140, inlinedAt: !4143)
!4147 = !DILocation(line: 53, column: 20, scope: !4140, inlinedAt: !4143)
!4148 = !DILocation(line: 47, column: 19, scope: !4134, inlinedAt: !4125)
!4149 = !DILocation(line: 47, column: 17, scope: !4134, inlinedAt: !4125)
!4150 = !DILocation(line: 47, column: 22, scope: !4134, inlinedAt: !4125)
!4151 = !DILocation(line: 46, column: 37, scope: !4134, inlinedAt: !4125)
!4152 = !DILocation(line: 46, column: 13, scope: !4134, inlinedAt: !4125)
!4153 = distinct !{!4153, !4136, !4154, !2354}
!4154 = !DILocation(line: 47, column: 27, scope: !4130, inlinedAt: !4125)
!4155 = !DILocation(line: 253, column: 27, scope: !4073, inlinedAt: !4063)
!4156 = !DILocation(line: 253, column: 5, scope: !4073, inlinedAt: !4063)
!4157 = distinct !{!4157, !4076, !4158, !2354}
!4158 = !DILocation(line: 254, column: 41, scope: !4069, inlinedAt: !4063)
!4159 = !DILocation(line: 436, column: 17, scope: !4050)
!4160 = !DILocation(line: 438, column: 17, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4050, file: !13, line: 438, column: 17)
!4162 = !DILocation(line: 440, column: 15, scope: !4047)
!4163 = !DILocation(line: 442, column: 15, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4047, file: !13, line: 442, column: 15)
!4165 = !DILocation(line: 460, column: 5, scope: !3975)
!4166 = distinct !DISubprogram(name: "operator RTTL::RTData_t<3, float> &", linkageName: "_ZN4RTTL7RTVec_tILi3EfLi0EEcvRNS_8RTData_tILi3EfLi0EEEEv", scope: !771, file: !773, line: 213, type: !4167, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4169, retainedNodes: !200)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!4106, !4099}
!4169 = !DISubprogram(name: "operator RTTL::RTData_t<3, float> &", linkageName: "_ZN4RTTL7RTVec_tILi3EfLi0EEcvRNS_8RTData_tILi3EfLi0EEEEv", scope: !771, file: !773, line: 213, type: !4167, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4170 = !DILocalVariable(name: "this", arg: 1, scope: !4166, type: !4058, flags: DIFlagArtificial | DIFlagObjectPointer)
!4171 = !DILocation(line: 0, scope: !4166)
!4172 = !DILocation(line: 213, column: 64, scope: !4166)
!4173 = !DILocation(line: 213, column: 45, scope: !4166)
!4174 = distinct !DISubprogram(name: "operator const RTTL::RTData_t<3, float> &", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EEcvRKNS_8RTData_tILi3EfLi0EEEEv", scope: !771, file: !773, line: 214, type: !4175, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4178, retainedNodes: !200)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!4110, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!4178 = !DISubprogram(name: "operator const RTTL::RTData_t<3, float> &", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EEcvRKNS_8RTData_tILi3EfLi0EEEEv", scope: !771, file: !773, line: 214, type: !4175, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!4179 = !DILocalVariable(name: "this", arg: 1, scope: !4174, type: !4180, flags: DIFlagArtificial | DIFlagObjectPointer)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4181 = !DILocation(line: 0, scope: !4174)
!4182 = !DILocation(line: 214, column: 64, scope: !4174)
!4183 = !DILocation(line: 214, column: 45, scope: !4174)
!4184 = distinct !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi3EfLi0EE9nElementsEv", scope: !774, file: !775, line: 175, type: !65, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !833, retainedNodes: !200)
!4185 = !DILocation(line: 175, column: 34, scope: !4184)
!4186 = distinct !DISubprogram(name: "setIndices", linkageName: "_ZN3ISG8BaseMesh10setIndicesEPNS_9DataArrayE", scope: !743, file: !13, line: 573, type: !753, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !756, retainedNodes: !200)
!4187 = !DILocalVariable(name: "this", arg: 1, scope: !4186, type: !742, flags: DIFlagArtificial | DIFlagObjectPointer)
!4188 = !DILocation(line: 0, scope: !4186)
!4189 = !DILocalVariable(name: "i", arg: 2, scope: !4186, file: !13, line: 573, type: !747)
!4190 = !DILocation(line: 573, column: 32, scope: !4186)
!4191 = !DILocation(line: 575, column: 20, scope: !4186)
!4192 = !DILocation(line: 575, column: 7, scope: !4186)
!4193 = !DILocation(line: 576, column: 15, scope: !4186)
!4194 = !DILocation(line: 576, column: 7, scope: !4186)
!4195 = !DILocation(line: 576, column: 13, scope: !4186)
!4196 = !DILocation(line: 577, column: 7, scope: !4186)
!4197 = !DILocation(line: 577, column: 14, scope: !4186)
!4198 = !DILocation(line: 579, column: 5, scope: !4186)
!4199 = distinct !DISubprogram(name: "RootNode", linkageName: "_ZN3ISG8RootNodeC2Ev", scope: !2569, file: !13, line: 210, type: !2573, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2572, retainedNodes: !200)
!4200 = !DILocalVariable(name: "this", arg: 1, scope: !4199, type: !4201, flags: DIFlagArtificial | DIFlagObjectPointer)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!4202 = !DILocation(line: 0, scope: !4199)
!4203 = !DILocation(line: 210, column: 5, scope: !4199)
!4204 = !DILocation(line: 210, column: 34, scope: !4199)
!4205 = !DILocation(line: 210, column: 35, scope: !4199)
!4206 = distinct !DISubprogram(name: "GroupNode", linkageName: "_ZN3ISG9GroupNodeC2Ev", scope: !708, file: !13, line: 148, type: !4207, scopeLine: 148, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4209, retainedNodes: !200)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !715}
!4209 = !DISubprogram(name: "GroupNode", scope: !708, type: !4207, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!4210 = !DILocalVariable(name: "this", arg: 1, scope: !4206, type: !707, flags: DIFlagArtificial | DIFlagObjectPointer)
!4211 = !DILocation(line: 0, scope: !4206)
!4212 = !DILocation(line: 148, column: 10, scope: !4206)
!4213 = distinct !DISubprogram(name: "~RootNode", linkageName: "_ZN3ISG8RootNodeD2Ev", scope: !2569, file: !13, line: 207, type: !2573, scopeLine: 207, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4214, retainedNodes: !200)
!4214 = !DISubprogram(name: "~RootNode", scope: !2569, type: !2573, containingType: !2569, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4215 = !DILocalVariable(name: "this", arg: 1, scope: !4213, type: !4201, flags: DIFlagArtificial | DIFlagObjectPointer)
!4216 = !DILocation(line: 0, scope: !4213)
!4217 = !DILocation(line: 207, column: 10, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4213, file: !13, line: 207, column: 10)
!4219 = !DILocation(line: 207, column: 10, scope: !4213)
!4220 = distinct !DISubprogram(name: "~RootNode", linkageName: "_ZN3ISG8RootNodeD0Ev", scope: !2569, file: !13, line: 207, type: !2573, scopeLine: 207, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4214, retainedNodes: !200)
!4221 = !DILocalVariable(name: "this", arg: 1, scope: !4220, type: !4201, flags: DIFlagArtificial | DIFlagObjectPointer)
!4222 = !DILocation(line: 0, scope: !4220)
!4223 = !DILocation(line: 207, column: 10, scope: !4220)
!4224 = distinct !DISubprogram(name: "Node", linkageName: "_ZN3ISG4NodeC2Ev", scope: !60, file: !13, line: 36, type: !667, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !666, retainedNodes: !200)
!4225 = !DILocalVariable(name: "this", arg: 1, scope: !4224, type: !96, flags: DIFlagArtificial | DIFlagObjectPointer)
!4226 = !DILocation(line: 0, scope: !4224)
!4227 = !DILocation(line: 36, column: 12, scope: !4224)
!4228 = !DILocation(line: 36, column: 5, scope: !4224)
!4229 = !DILocation(line: 36, column: 13, scope: !4224)
!4230 = distinct !DISubprogram(name: "~GroupNode", linkageName: "_ZN3ISG9GroupNodeD2Ev", scope: !708, file: !13, line: 148, type: !4207, scopeLine: 148, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4231, retainedNodes: !200)
!4231 = !DISubprogram(name: "~GroupNode", scope: !708, type: !4207, containingType: !708, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!4232 = !DILocalVariable(name: "this", arg: 1, scope: !4230, type: !707, flags: DIFlagArtificial | DIFlagObjectPointer)
!4233 = !DILocation(line: 0, scope: !4230)
!4234 = !DILocation(line: 148, column: 10, scope: !4230)
!4235 = !DILocation(line: 148, column: 10, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4230, file: !13, line: 148, column: 10)
!4237 = distinct !DISubprogram(name: "~GroupNode", linkageName: "_ZN3ISG9GroupNodeD0Ev", scope: !708, file: !13, line: 148, type: !4207, scopeLine: 148, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !4231, retainedNodes: !200)
!4238 = !DILocalVariable(name: "this", arg: 1, scope: !4237, type: !707, flags: DIFlagArtificial | DIFlagObjectPointer)
!4239 = !DILocation(line: 0, scope: !4237)
!4240 = !DILocation(line: 148, column: 10, scope: !4237)
!4241 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_static_cube.cxx", scope: !1680, file: !1680, type: !4242, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !200)
!4242 = !DISubroutineType(types: !200)
!4243 = !DILocation(line: 0, scope: !4241)
