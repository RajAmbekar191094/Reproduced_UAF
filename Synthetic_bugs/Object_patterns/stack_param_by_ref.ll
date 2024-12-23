; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_ref.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_ref.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { %"struct.std::thread::_State"* }
%"struct.std::thread::_State" = type { i32 (...)** }
%"struct.std::thread::_State_impl" = type { %"struct.std::thread::_State", %"struct.std::thread::_Invoker" }
%"struct.std::thread::_Invoker" = type { %"class.std::tuple.2" }
%"class.std::tuple.2" = type { %"struct.std::_Tuple_impl.3" }
%"struct.std::_Tuple_impl.3" = type { %"struct.std::_Tuple_impl.4", %"struct.std::_Head_base.6" }
%"struct.std::_Tuple_impl.4" = type { %"struct.std::_Head_base.5" }
%"struct.std::_Head_base.5" = type { i32* }
%"struct.std::_Head_base.6" = type { void (i32*)* }
%"struct.std::default_delete" = type { i8 }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::__invoke_other" = type { i8 }
%"struct.std::_Tuple_impl.0" = type { i8 }
%"struct.std::_Head_base" = type { i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }

$_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_ = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_ = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev = comdat any

$_ZNSt6thread6_StateC2Ev = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_ = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv = comdat any

$_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_ = comdat any

$_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_ = comdat any

$_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_ = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE = comdat any

$_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_ = comdat any

$_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_ = comdat any

$_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_ = comdat any

$_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_ = comdat any

$_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_ = comdat any

$_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_ = comdat any

$_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_ = comdat any

$_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_ = comdat any

$_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_ = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_ = comdat any

$_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev = comdat any

$_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev = comdat any

$_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_ = comdat any

$_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_ = comdat any

$_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_ = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv = comdat any

$_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_ = comdat any

$_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_ = comdat any

$_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_ = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = comdat any

@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Value of x is:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant [63 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external dso_local constant i8*
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt6thread6_StateE to i8*) }, comdat, align 8
@_ZTVNSt6thread6_StateE = external dso_local unnamed_addr constant { [5 x i8*] }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11thread_funcPi(i32* noundef %x) #0 !dbg !1558 {
entry:
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !1560, metadata !DIExpression()), !dbg !1561
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !1562
  %0 = load i32*, i32** %x.addr, align 8, !dbg !1563
  %1 = load i32, i32* %0, align 4, !dbg !1564
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call, i32 noundef %1), !dbg !1565
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1566
  ret void, !dbg !1567
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #2

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14threadFunctionv() #0 !dbg !1568 {
entry:
  %x = alloca i32, align 4
  %t1 = alloca %"class.std::thread", align 8
  %ref.tmp = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i32 10, i32* %x, align 4, !dbg !1570
  call void @llvm.dbg.declare(metadata %"class.std::thread"* %t1, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i32* %x, i32** %ref.tmp, align 8, !dbg !1573
  call void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t1, void (i32*)* noundef nonnull @_Z11thread_funcPi, i32** noundef nonnull align 8 dereferenceable(8) %ref.tmp), !dbg !1572
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t1) #13, !dbg !1574
  ret void, !dbg !1574
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)* noundef nonnull %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1575 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca void (i32*)*, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"class.std::unique_ptr", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1583, metadata !DIExpression()), !dbg !1585
  store void (i32*)* %__f, void (i32*)** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__f.addr, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !1588, metadata !DIExpression()), !dbg !1589
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !1590
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id) #13, !dbg !1590
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 24) #14, !dbg !1591, !heapallocsite !467
  %0 = bitcast i8* %call to %"struct.std::thread::_State_impl"*, !dbg !1591
  %1 = load void (i32*)*, void (i32*)** %__f.addr, align 8, !dbg !1593
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #13, !dbg !1594
  %2 = load i32**, i32*** %__args.addr, align 8, !dbg !1595
  %call3 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #13, !dbg !1596
  invoke void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %0, void (i32*)* noundef nonnull %call2, i32** noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont unwind label %lpad, !dbg !1597

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"struct.std::thread::_State_impl"* %0 to %"struct.std::thread::_State"*, !dbg !1591
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, %"struct.std::thread::_State"* noundef %3) #13, !dbg !1598
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1, %"class.std::unique_ptr"* noundef %agg.tmp, void ()* noundef @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %invoke.cont5 unwind label %lpad4, !dbg !1599

invoke.cont5:                                     ; preds = %invoke.cont
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #13, !dbg !1599
  ret void, !dbg !1600

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !1601
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1601
  store i8* %5, i8** %exn.slot, align 8, !dbg !1601
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !1601
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !1601
  call void @_ZdlPv(i8* noundef %call) #15, !dbg !1591
  br label %eh.resume, !dbg !1591

lpad4:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1601
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1601
  store i8* %8, i8** %exn.slot, align 8, !dbg !1601
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1601
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1601
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #13, !dbg !1599
  br label %eh.resume, !dbg !1599

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1591
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1591
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1591
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1591
  resume { i8*, i32 } %lpad.val6, !dbg !1591
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1602 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1603, metadata !DIExpression()), !dbg !1604
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !1605
  br i1 %call, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #16, !dbg !1609
  unreachable, !dbg !1609

_ZSt11__terminatev.exit:                          ; No predecessors!
  unreachable, !dbg !1612

if.end:                                           ; preds = %entry
  ret void, !dbg !1613
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !1614 {
entry:
  call void @_Z14threadFunctionv(), !dbg !1615
  ret i32 0, !dbg !1616
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !1617 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1618, metadata !DIExpression()), !dbg !1620
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !1621
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*, !dbg !1621
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*, !dbg !1621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !dbg !1621
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %agg.tmp2) #13, !dbg !1622
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0, !dbg !1623
  %2 = load i64, i64* %coerce.dive, align 8, !dbg !1623
  %coerce.dive3 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0, !dbg !1623
  %3 = load i64, i64* %coerce.dive3, align 8, !dbg !1623
  %call = call noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #13, !dbg !1623
  %lnot = xor i1 %call, true, !dbg !1624
  ret i1 %lnot, !dbg !1625
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #6 comdat !dbg !1626 {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__x, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__y, metadata !1631, metadata !DIExpression()), !dbg !1632
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0, !dbg !1633
  %0 = load i64, i64* %_M_thread, align 8, !dbg !1633
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0, !dbg !1634
  %1 = load i64, i64* %_M_thread2, align 8, !dbg !1634
  %cmp = icmp eq i64 %0, %1, !dbg !1635
  ret i1 %cmp, !dbg !1636
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1637 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %this.addr, metadata !1638, metadata !DIExpression()), !dbg !1640
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0, !dbg !1641
  store i64 0, i64* %_M_thread, align 8, !dbg !1641
  ret void, !dbg !1642
}

; Function Attrs: noreturn nounwind
declare dso_local void @_ZSt9terminatev() #8

declare dso_local void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8), %"class.std::unique_ptr"* noundef, void ()* noundef) #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %__t) #6 comdat !dbg !1643 {
entry:
  %__t.addr = alloca void (i32*)*, align 8
  store void (i32*)* %__t, void (i32*)** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__t.addr, metadata !1652, metadata !DIExpression()), !dbg !1653
  %0 = load void (i32*)*, void (i32*)** %__t.addr, align 8, !dbg !1654
  ret void (i32*)* %0, !dbg !1655
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !1656 {
entry:
  %__t.addr = alloca i32**, align 8
  store i32** %__t, i32*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__t.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load i32**, i32*** %__t.addr, align 8, !dbg !1666
  ret i32** %0, !dbg !1667
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1668 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1676, metadata !DIExpression()), !dbg !1678
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__args.addr, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i32** %__args1, i32*** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr2, metadata !1681, metadata !DIExpression()), !dbg !1680
  %this3 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !1682
  call void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1683
  %1 = bitcast %"struct.std::thread::_State_impl"* %this3 to i32 (...)***, !dbg !1682
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !1682
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this3, i32 0, i32 1, !dbg !1684
  %2 = load void (i32*)*, void (i32*)** %__args.addr, align 8, !dbg !1685
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %2) #13, !dbg !1686
  %3 = load i32**, i32*** %__args.addr2, align 8, !dbg !1685
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #13, !dbg !1686
  invoke void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4)
          to label %invoke.cont unwind label %lpad, !dbg !1684

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1687

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !1687
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1687
  store i8* %5, i8** %exn.slot, align 8, !dbg !1687
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !1687
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !1687
  %7 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !1688
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %7) #13, !dbg !1688
  br label %eh.resume, !dbg !1688

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1688
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1688
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1688
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1688
  resume { i8*, i32 } %lpad.val5, !dbg !1688
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1690 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !1694, metadata !DIExpression()), !dbg !1696
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !1697, metadata !DIExpression()), !dbg !1698
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !1699
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !1700
  invoke void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %_M_t, %"struct.std::thread::_State"* noundef %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1699

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1701

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1699
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !1699
  call void @__clang_call_terminate(i8* %2) #16, !dbg !1699
  unreachable, !dbg !1699
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 !dbg !1702 {
entry:
  call void bitcast (i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create to void ()*)(), !dbg !1703
  call void bitcast (i32 (i64, i8**)* @pthread_join to void ()*)(), !dbg !1704
  ret void, !dbg !1705
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1706 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca %"struct.std::thread::_State"**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !1707, metadata !DIExpression()), !dbg !1708
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__ptr, metadata !1709, metadata !DIExpression()), !dbg !1711
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !1712
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !1712
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1713
  store %"struct.std::thread::_State"** %call, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1711
  %1 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1714
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %1, align 8, !dbg !1714
  %cmp = icmp ne %"struct.std::thread::_State"* %2, null, !dbg !1716
  br i1 %cmp, label %if.then, label %if.end, !dbg !1717

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !1718
  %3 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1719
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %3) #13, !dbg !1720
  %4 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %call3, align 8, !dbg !1720
  invoke void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %call2, %"struct.std::thread::_State"* noundef %4)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1718

invoke.cont:                                      ; preds = %if.then
  br label %if.end, !dbg !1718

if.end:                                           ; preds = %invoke.cont, %entry
  %5 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1721
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %5, align 8, !dbg !1722
  ret void, !dbg !1723

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1718
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1718
  call void @__clang_call_terminate(i8* %7) #16, !dbg !1718
  unreachable, !dbg !1718
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1724 {
entry:
  %this.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::thread::_State"* %this, %"struct.std::thread::_State"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %this.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  %this1 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State"* %this1 to i32 (...)***, !dbg !1728
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread6_StateE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !1728
  ret void, !dbg !1728
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #4 comdat align 2 !dbg !1729 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1733, metadata !DIExpression()), !dbg !1735
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__args.addr, metadata !1736, metadata !DIExpression()), !dbg !1737
  store i32** %__args1, i32*** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr2, metadata !1738, metadata !DIExpression()), !dbg !1737
  %this3 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this3, i32 0, i32 0, !dbg !1739
  %0 = load void (i32*)*, void (i32*)** %__args.addr, align 8, !dbg !1740
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %0) #13, !dbg !1741
  %1 = load i32**, i32*** %__args.addr2, align 8, !dbg !1740
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1741
  call void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4) #13, !dbg !1739
  ret void, !dbg !1742
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #4 comdat align 2 !dbg !1743 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1745, metadata !DIExpression()), !dbg !1746
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to %"struct.std::thread::_State"*, !dbg !1747
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1747
  ret void, !dbg !1749
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #4 comdat align 2 !dbg !1750 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1751, metadata !DIExpression()), !dbg !1752
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this1) #13, !dbg !1753
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to i8*, !dbg !1753
  call void @_ZdlPv(i8* noundef %0) #15, !dbg !1753
  ret void, !dbg !1753
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #0 comdat align 2 !dbg !1754 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1755, metadata !DIExpression()), !dbg !1756
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this1, i32 0, i32 1, !dbg !1757
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func), !dbg !1757
  ret void, !dbg !1758
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__a1, i32** noundef nonnull align 8 dereferenceable(8) %__a2) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1759 {
entry:
  %this.addr = alloca %"class.std::tuple.2"*, align 8
  %__a1.addr = alloca void (i32*)*, align 8
  %__a2.addr = alloca i32**, align 8
  store %"class.std::tuple.2"* %this, %"class.std::tuple.2"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %this.addr, metadata !1767, metadata !DIExpression()), !dbg !1769
  store void (i32*)* %__a1, void (i32*)** %__a1.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__a1.addr, metadata !1770, metadata !DIExpression()), !dbg !1771
  store i32** %__a2, i32*** %__a2.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__a2.addr, metadata !1772, metadata !DIExpression()), !dbg !1773
  %this1 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.2"* %this1 to %"struct.std::_Tuple_impl.3"*, !dbg !1774
  %1 = load void (i32*)*, void (i32*)** %__a1.addr, align 8, !dbg !1775
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #13, !dbg !1776
  %2 = load i32**, i32*** %__a2.addr, align 8, !dbg !1777
  %call2 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #13, !dbg !1778
  invoke void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call2)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1779

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1780

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1779
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !1779
  call void @__clang_call_terminate(i8* %4) #16, !dbg !1779
  unreachable, !dbg !1779
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__head, i32** noundef nonnull align 8 dereferenceable(8) %__tail) unnamed_addr #3 comdat align 2 !dbg !1781 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  %__head.addr = alloca void (i32*)*, align 8
  %__tail.addr = alloca i32**, align 8
  %ref.tmp = alloca void (i32*)*, align 8
  store %"struct.std::_Tuple_impl.3"* %this, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %this.addr, metadata !1788, metadata !DIExpression()), !dbg !1790
  store void (i32*)* %__head, void (i32*)** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__head.addr, metadata !1791, metadata !DIExpression()), !dbg !1792
  store i32** %__tail, i32*** %__tail.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__tail.addr, metadata !1793, metadata !DIExpression()), !dbg !1794
  %this1 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to %"struct.std::_Tuple_impl.4"*, !dbg !1795
  %1 = load i32**, i32*** %__tail.addr, align 8, !dbg !1796
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1797
  call void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call), !dbg !1798
  %2 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to i8*, !dbg !1795
  %3 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1795
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.6"*, !dbg !1795
  %5 = load void (i32*)*, void (i32*)** %__head.addr, align 8, !dbg !1799
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %5) #13, !dbg !1800
  store void (i32*)* %call2, void (i32*)** %ref.tmp, align 8, !dbg !1800
  call void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %4, void (i32*)** noundef nonnull align 8 dereferenceable(8) %ref.tmp), !dbg !1801
  ret void, !dbg !1802
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #13
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__head) unnamed_addr #3 comdat align 2 !dbg !1803 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  %__head.addr = alloca i32**, align 8
  store %"struct.std::_Tuple_impl.4"* %this, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %this.addr, metadata !1809, metadata !DIExpression()), !dbg !1811
  store i32** %__head, i32*** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__head.addr, metadata !1812, metadata !DIExpression()), !dbg !1813
  %this1 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.4"* %this1 to %"struct.std::_Head_base.5"*, !dbg !1814
  %1 = load i32**, i32*** %__head.addr, align 8, !dbg !1815
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1816
  call void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call), !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #4 comdat align 2 !dbg !1819 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.6"*, align 8
  %__h.addr = alloca void (i32*)**, align 8
  store %"struct.std::_Head_base.6"* %this, %"struct.std::_Head_base.6"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %this.addr, metadata !1820, metadata !DIExpression()), !dbg !1822
  store void (i32*)** %__h, void (i32*)*** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__h.addr, metadata !1823, metadata !DIExpression()), !dbg !1824
  %this1 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %this1, i32 0, i32 0, !dbg !1825
  %0 = load void (i32*)**, void (i32*)*** %__h.addr, align 8, !dbg !1826
  %1 = load void (i32*)*, void (i32*)** %0, align 8, !dbg !1826
  store void (i32*)* %1, void (i32*)** %_M_head_impl, align 8, !dbg !1825
  ret void, !dbg !1827
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #4 comdat align 2 !dbg !1828 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.5"*, align 8
  %__h.addr = alloca i32**, align 8
  store %"struct.std::_Head_base.5"* %this, %"struct.std::_Head_base.5"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %this.addr, metadata !1832, metadata !DIExpression()), !dbg !1834
  store i32** %__h, i32*** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__h.addr, metadata !1835, metadata !DIExpression()), !dbg !1836
  %this1 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %this1, i32 0, i32 0, !dbg !1837
  %0 = load i32**, i32*** %__h.addr, align 8, !dbg !1838
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1839
  %1 = load i32*, i32** %call, align 8, !dbg !1839
  store i32* %1, i32** %_M_head_impl, align 8, !dbg !1837
  ret void, !dbg !1840
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 !dbg !1841 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1842, metadata !DIExpression()), !dbg !1843
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this1), !dbg !1844
  ret void, !dbg !1845
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 !dbg !1846 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1859, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.declare(metadata %"struct.std::_Index_tuple"* %0, metadata !1861, metadata !DIExpression()), !dbg !1862
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !1863
  %call = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t) #13, !dbg !1864
  %call2 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call) #13, !dbg !1865
  %_M_t3 = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !1863
  %call4 = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t3) #13, !dbg !1864
  %call5 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call4) #13, !dbg !1865
  call void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call2, i32** noundef nonnull align 8 dereferenceable(8) %call5), !dbg !1866
  ret void, !dbg !1867
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__fn, i32** noundef nonnull align 8 dereferenceable(8) %__args) #0 comdat !dbg !442 {
entry:
  %__fn.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"struct.std::__invoke_other", align 1
  store void (i32*)** %__fn, void (i32*)*** %__fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__fn.addr, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load void (i32*)**, void (i32*)*** %__fn.addr, align 8, !dbg !1872
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1873
  %1 = load i32**, i32*** %__args.addr, align 8, !dbg !1874
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1875
  call void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call, i32** noundef nonnull align 8 dereferenceable(8) %call1), !dbg !1876
  ret void, !dbg !1877
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1878 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1894, metadata !DIExpression()), !dbg !1895
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1896
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.3"*, !dbg !1896
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %1) #13, !dbg !1897
  %call1 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call) #13, !dbg !1898
  ret void (i32*)** %call1, !dbg !1899
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1900 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1908, metadata !DIExpression()), !dbg !1909
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1910
  ret %"class.std::tuple.2"* %0, !dbg !1911
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1912 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1926, metadata !DIExpression()), !dbg !1927
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1928
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.4"*, !dbg !1928
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1929
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %call) #13, !dbg !1930
  ret i32** %call1, !dbg !1931
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) #0 comdat !dbg !1932 {
entry:
  %0 = alloca %"struct.std::__invoke_other", align 1
  %__f.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__invoke_other"* %0, metadata !1938, metadata !DIExpression()), !dbg !1939
  store void (i32*)** %__f, void (i32*)*** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__f.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %1 = load void (i32*)**, void (i32*)*** %__f.addr, align 8, !dbg !1944
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1945
  %2 = load void (i32*)*, void (i32*)** %call, align 8, !dbg !1945
  %3 = load i32**, i32*** %__args.addr, align 8, !dbg !1946
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #13, !dbg !1947
  %4 = load i32*, i32** %call1, align 8, !dbg !1947
  call void %2(i32* noundef %4), !dbg !1945
  ret void, !dbg !1948
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !1949 {
entry:
  %__t.addr = alloca void (i32*)**, align 8
  store void (i32*)** %__t, void (i32*)*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__t.addr, metadata !1957, metadata !DIExpression()), !dbg !1958
  %0 = load void (i32*)**, void (i32*)*** %__t.addr, align 8, !dbg !1959
  ret void (i32*)** %0, !dbg !1960
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1961 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !1964, metadata !DIExpression()), !dbg !1965
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !1966
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0) #13, !dbg !1967
  ret void (i32*)** %call, !dbg !1968
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat align 2 !dbg !1969 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !1970, metadata !DIExpression()), !dbg !1971
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !1972
  %1 = bitcast %"struct.std::_Tuple_impl.3"* %0 to i8*, !dbg !1972
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1972
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.6"*, !dbg !1972
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %2) #13, !dbg !1973
  ret void (i32*)** %call, !dbg !1974
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %__b) #6 comdat align 2 !dbg !1975 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.6"*, align 8
  store %"struct.std::_Head_base.6"* %__b, %"struct.std::_Head_base.6"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %__b.addr, metadata !1976, metadata !DIExpression()), !dbg !1977
  %0 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %__b.addr, align 8, !dbg !1978
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %0, i32 0, i32 0, !dbg !1979
  ret void (i32*)** %_M_head_impl, !dbg !1980
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !1981 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !1984, metadata !DIExpression()), !dbg !1985
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !1986
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1987
  ret i32** %call, !dbg !1988
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat align 2 !dbg !1989 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !1992
  %1 = bitcast %"struct.std::_Tuple_impl.4"* %0 to %"struct.std::_Head_base.5"*, !dbg !1992
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1993
  ret i32** %call, !dbg !1994
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %__b) #6 comdat align 2 !dbg !1995 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.5"*, align 8
  store %"struct.std::_Head_base.5"* %__b, %"struct.std::_Head_base.5"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %__b.addr, metadata !1996, metadata !DIExpression()), !dbg !1997
  %0 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %__b.addr, align 8, !dbg !1998
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %0, i32 0, i32 0, !dbg !1999
  ret i32** %_M_head_impl, !dbg !2000
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !2001 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__uniq_ptr_data"** %this.addr, metadata !2005, metadata !DIExpression()), !dbg !2007
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %.addr, metadata !2008, metadata !DIExpression()), !dbg !2007
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*, !dbg !2009
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %.addr, align 8, !dbg !2009
  call void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::thread::_State"* noundef %2), !dbg !2009
  ret void, !dbg !2009
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #4 comdat align 2 !dbg !2010 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2011, metadata !DIExpression()), !dbg !2013
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2016
  call void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2016
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !2017
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !2019
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %call, align 8, !dbg !2020
  ret void, !dbg !2021
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2022 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %this.addr, metadata !2028, metadata !DIExpression()), !dbg !2030
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*, !dbg !2031
  invoke void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2032

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2033

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2032
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2032
  call void @__clang_call_terminate(i8* %2) #16, !dbg !2032
  unreachable, !dbg !2032
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2034 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2035, metadata !DIExpression()), !dbg !2036
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2037
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2038
  ret %"struct.std::thread::_State"** %call, !dbg !2039
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 !dbg !2040 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %this.addr, metadata !2041, metadata !DIExpression()), !dbg !2043
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.0"*, !dbg !2044
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2045
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base.1"*, !dbg !2044
  call void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1), !dbg !2046
  ret void, !dbg !2047
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !2048 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %this, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %this.addr, metadata !2049, metadata !DIExpression()), !dbg !2051
  %this1 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.0"* %this1 to %"struct.std::_Head_base"*, !dbg !2052
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2053
  ret void, !dbg !2054
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !2055 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %this, %"struct.std::_Head_base.1"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %this.addr, metadata !2056, metadata !DIExpression()), !dbg !2058
  %this1 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %this1, i32 0, i32 0, !dbg !2059
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %_M_head_impl, align 8, !dbg !2059
  ret void, !dbg !2060
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #4 comdat align 2 !dbg !2061 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %this.addr, metadata !2062, metadata !DIExpression()), !dbg !2064
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %this1 to %"struct.std::default_delete"*, !dbg !2065
  ret void, !dbg !2066
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2067 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2081, metadata !DIExpression()), !dbg !2082
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2083
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*, !dbg !2083
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !2084
  ret %"struct.std::thread::_State"** %call, !dbg !2085
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2086 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2089, metadata !DIExpression()), !dbg !2090
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2091
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2092
  ret %"struct.std::thread::_State"** %call, !dbg !2093
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat align 2 !dbg !2094 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2095, metadata !DIExpression()), !dbg !2096
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2097
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*, !dbg !2097
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !2098
  ret %"struct.std::thread::_State"** %call, !dbg !2099
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #6 comdat align 2 !dbg !2100 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %__b.addr, metadata !2101, metadata !DIExpression()), !dbg !2102
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8, !dbg !2103
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0, !dbg !2104
  ret %"struct.std::thread::_State"** %_M_head_impl, !dbg !2105
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #11

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2106 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !2107, metadata !DIExpression()), !dbg !2108
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !2109
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !2109
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2110
  ret %"struct.std::default_delete"* %call, !dbg !2111
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.std::thread::_State"* noundef %__ptr) #6 comdat align 2 !dbg !2112 {
entry:
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  %__ptr.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::default_delete"** %this.addr, metadata !2113, metadata !DIExpression()), !dbg !2115
  store %"struct.std::thread::_State"* %__ptr, %"struct.std::thread::_State"** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__ptr.addr, metadata !2116, metadata !DIExpression()), !dbg !2117
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__ptr.addr, align 8, !dbg !2118
  %isnull = icmp eq %"struct.std::thread::_State"* %0, null, !dbg !2119
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !2119

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.std::thread::_State"* %0 to void (%"struct.std::thread::_State"*)***, !dbg !2119
  %vtable = load void (%"struct.std::thread::_State"*)**, void (%"struct.std::thread::_State"*)*** %1, align 8, !dbg !2119
  %vfn = getelementptr inbounds void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vtable, i64 1, !dbg !2119
  %2 = load void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vfn, align 8, !dbg !2119
  call void %2(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2119
  br label %delete.end, !dbg !2119

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !2120
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2121 {
entry:
  %__t.addr = alloca %"struct.std::thread::_State"**, align 8
  store %"struct.std::thread::_State"** %__t, %"struct.std::thread::_State"*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__t.addr, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__t.addr, align 8, !dbg !2131
  ret %"struct.std::thread::_State"** %0, !dbg !2132
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2133 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2134, metadata !DIExpression()), !dbg !2135
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2136
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2137
  ret %"struct.std::default_delete"* %call, !dbg !2138
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2139 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2151, metadata !DIExpression()), !dbg !2152
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2153
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.0"*, !dbg !2153
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %1) #13, !dbg !2154
  ret %"struct.std::default_delete"* %call, !dbg !2155
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #6 comdat !dbg !2156 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2160
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #13, !dbg !2161
  ret %"struct.std::default_delete"* %call, !dbg !2162
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #6 comdat align 2 !dbg !2163 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2166
  %1 = bitcast %"struct.std::_Tuple_impl.0"* %0 to %"struct.std::_Head_base"*, !dbg !2166
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %1) #13, !dbg !2167
  ret %"struct.std::default_delete"* %call, !dbg !2168
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %__b) #6 comdat align 2 !dbg !2169 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %__b.addr, metadata !2170, metadata !DIExpression()), !dbg !2171
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8, !dbg !2172
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %0 to %"struct.std::default_delete"*, !dbg !2173
  ret %"struct.std::default_delete"* %_M_head_impl, !dbg !2174
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1552, !1553, !1554, !1555, !1556}
!llvm.ident = !{!1557}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, imports: !664, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_ref.cpp", directory: "/home/cs22mtech12008/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "71b3ec96bfa9ca5c86602fe279ade7fb")
!2 = !{!3, !440, !72, !9, !5, !96, !93, !143, !90, !210, !87, !83, !80, !77, !73, !467, !108, !483, !480, !549, !477, !474, !471}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "_State_ptr", scope: !5, file: !4, line: 230, baseType: !73)
!4 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_thread.h", directory: "")
!5 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !6, file: !4, line: 78, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7, identifier: "_ZTSSt6thread")
!6 = !DINamespace(name: "std", scope: null)
!7 = !{!8, !25, !29, !32, !33, !38, !42, !46, !49, !52, !57, !58, !59, !62, !65, !69}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_M_id", scope: !5, file: !4, line: 123, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !5, file: !4, line: 92, size: 64, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !10, identifier: "_ZTSNSt6thread2idE")
!10 = !{!11, !18, !22}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_M_thread", scope: !9, file: !4, line: 94, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !5, file: !4, line: 82, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gthread_t", file: !14, line: 47, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/gthr-default.h", directory: "", checksumkind: CSK_MD5, checksum: "3b8e3be5a8b1d69cfdfb7aff03749ca6")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DISubprogram(name: "id", scope: !9, file: !4, line: 97, type: !19, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!22 = !DISubprogram(name: "id", scope: !9, file: !4, line: 100, type: !23, scopeLine: 100, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !21, !12}
!25 = !DISubprogram(name: "thread", scope: !5, file: !4, line: 132, type: !26, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!29 = !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !5, file: !4, line: 143, type: !30, scopeLine: 143, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !DISubprogram(name: "~thread", scope: !5, file: !4, line: 170, type: !26, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!33 = !DISubprogram(name: "thread", scope: !5, file: !4, line: 176, type: !34, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !28, !36}
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!38 = !DISubprogram(name: "thread", scope: !5, file: !4, line: 178, type: !39, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !28, !41}
!41 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !5, size: 64)
!42 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSERKS_", scope: !5, file: !4, line: 181, type: !43, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !28, !36}
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5, size: 64)
!46 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSEOS_", scope: !5, file: !4, line: 183, type: !47, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!47 = !DISubroutineType(types: !48)
!48 = !{!45, !28, !41}
!49 = !DISubprogram(name: "swap", linkageName: "_ZNSt6thread4swapERS_", scope: !5, file: !4, line: 192, type: !50, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !28, !45}
!52 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !5, file: !4, line: 196, type: !53, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !56}
!55 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !DISubprogram(name: "join", linkageName: "_ZNSt6thread4joinEv", scope: !5, file: !4, line: 200, type: !26, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubprogram(name: "detach", linkageName: "_ZNSt6thread6detachEv", scope: !5, file: !4, line: 203, type: !26, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!59 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt6thread6get_idEv", scope: !5, file: !4, line: 206, type: !60, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{!9, !56}
!62 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt6thread13native_handleEv", scope: !5, file: !4, line: 212, type: !63, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!63 = !DISubroutineType(types: !64)
!64 = !{!12, !28}
!65 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt6thread20hardware_concurrencyEv", scope: !5, file: !4, line: 217, type: !66, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DISubprogram(name: "_M_start_thread", linkageName: "_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE", scope: !5, file: !4, line: 248, type: !70, scopeLine: 248, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !28, !3, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !6, file: !74, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !75, templateParams: !364, identifier: "_ZTSSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE")
!74 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/unique_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "b1c5f017599d59426bf764ae91a55ae0")
!75 = !{!76, !376, !381, !384, !388, !394, !406, !410, !411, !416, !421, !424, !427, !430, !433, !437}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !73, file: !74, line: 283, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<std::thread::_State, std::default_delete<std::thread::_State>, true, true>", scope: !6, file: !74, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !78, templateParams: !375, identifier: "_ZTSSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EE")
!78 = !{!79, !366, !371}
!79 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !77, baseType: !80, extraData: i32 0)
!80 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !6, file: !74, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !81, templateParams: !364, identifier: "_ZTSSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE")
!81 = !{!82, !320, !324, !334, !338, !342, !346, !351, !354, !357, !358, !361}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !80, file: !74, line: 232, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !84, line: 1232, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !85, templateParams: !319, identifier: "_ZTSSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!84 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/tuple", directory: "")
!85 = !{!86, !289, !292, !298, !302, !311, !316}
!86 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !83, baseType: !87, flags: DIFlagPublic, extraData: i32 0)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !84, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !88, templateParams: !285, identifier: "_ZTSSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!88 = !{!89, !209, !246, !250, !255, !260, !265, !269, !272, !275, !278, !282}
!89 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !87, baseType: !90, extraData: i32 0)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<std::thread::_State> >", scope: !6, file: !84, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !91, templateParams: !205, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE")
!91 = !{!92, !176, !180, !185, !189, !192, !195, !198, !202}
!92 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !90, baseType: !93, flags: DIFlagPrivate, extraData: i32 0)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<std::thread::_State>, true>", scope: !6, file: !84, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !94, templateParams: !172, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE")
!94 = !{!95, !123, !127, !131, !136, !140, !164, !169}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !93, file: !84, line: 130, baseType: !96, size: 8)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::thread::_State>", scope: !6, file: !74, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !97, templateParams: !121, identifier: "_ZTSSt14default_deleteINSt6thread6_StateEE")
!97 = !{!98, !102}
!98 = !DISubprogram(name: "default_delete", scope: !96, file: !74, line: 78, type: !99, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !96, file: !74, line: 93, type: !103, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105, !107}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State", scope: !5, file: !4, line: 225, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !109, vtableHolder: !108)
!109 = !{!110, !116, !120}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$_State", scope: !4, file: !4, baseType: !111, size: 64, flags: DIFlagArtificial)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115}
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DISubprogram(name: "~_State", scope: !108, file: !4, line: 227, type: !117, scopeLine: 227, containingType: !108, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread6_State6_M_runEv", scope: !108, file: !4, line: 228, type: !117, scopeLine: 228, containingType: !108, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!121 = !{!122}
!122 = !DITemplateTypeParameter(name: "_Tp", type: !108)
!123 = !DISubprogram(name: "_Head_base", scope: !93, file: !84, line: 81, type: !124, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = !DISubprogram(name: "_Head_base", scope: !93, file: !84, line: 84, type: !128, scopeLine: 84, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !126, !130}
!130 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 64)
!131 = !DISubprogram(name: "_Head_base", scope: !93, file: !84, line: 87, type: !132, scopeLine: 87, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !126, !134}
!134 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!136 = !DISubprogram(name: "_Head_base", scope: !93, file: !84, line: 88, type: !137, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !126, !139}
!139 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !93, size: 64)
!140 = !DISubprogram(name: "_Head_base", scope: !93, file: !84, line: 95, type: !141, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !126, !143, !150}
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !6, file: !144, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !145, identifier: "_ZTSSt15allocator_arg_t")
!144 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/uses_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "2e154584f12c218d65e98047872045fc")
!145 = !{!146}
!146 = !DISubprogram(name: "allocator_arg_t", scope: !143, file: !144, line: 56, type: !147, scopeLine: 56, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !6, file: !144, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !151, identifier: "_ZTSSt13__uses_alloc0")
!151 = !{!152, !155}
!152 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !150, baseType: !153, extraData: i32 0)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !6, file: !144, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !154, identifier: "_ZTSSt17__uses_alloc_base")
!154 = !{}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_M_a", scope: !150, file: !144, line: 81, baseType: !156, size: 8)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !150, file: !144, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !157, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!157 = !{!158}
!158 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__uses_alloc05_SinkaSEPKv", scope: !156, file: !144, line: 81, type: !159, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, !162}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !93, file: !84, line: 125, type: !165, scopeLine: 125, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !96, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 64)
!169 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERKS4_", scope: !93, file: !84, line: 128, type: !170, scopeLine: 128, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!130, !134}
!172 = !{!173, !174, !175}
!173 = !DITemplateValueParameter(name: "_Idx", type: !17, value: i64 1)
!174 = !DITemplateTypeParameter(name: "_Head", type: !96)
!175 = !DITemplateValueParameter(type: !55, value: i8 1)
!176 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !90, file: !84, line: 497, type: !177, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!167, !179}
!179 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!180 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERKS4_", scope: !90, file: !84, line: 500, type: !181, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!130, !183}
!183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!185 = !DISubprogram(name: "_Tuple_impl", scope: !90, file: !84, line: 503, type: !186, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DISubprogram(name: "_Tuple_impl", scope: !90, file: !84, line: 507, type: !190, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !188, !130}
!192 = !DISubprogram(name: "_Tuple_impl", scope: !90, file: !84, line: 517, type: !193, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !188, !183}
!195 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEaSERKS4_", scope: !90, file: !84, line: 521, type: !196, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!196 = !DISubroutineType(types: !197)
!197 = !{!179, !188, !183}
!198 = !DISubprogram(name: "_Tuple_impl", scope: !90, file: !84, line: 527, type: !199, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !188, !201}
!201 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !90, size: 64)
!202 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_swapERS4_", scope: !90, file: !84, line: 666, type: !203, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !188, !179}
!205 = !{!173, !206}
!206 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !207)
!207 = !{!208}
!208 = !DITemplateTypeParameter(type: !96)
!209 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !87, baseType: !210, flags: DIFlagPrivate, extraData: i32 0)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, std::thread::_State *, false>", scope: !6, file: !84, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !211, templateParams: !242, identifier: "_ZTSSt10_Head_baseILm0EPNSt6thread6_StateELb0EE")
!211 = !{!212, !213, !217, !222, !227, !231, !234, !239}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !210, file: !84, line: 239, baseType: !107, size: 64)
!213 = !DISubprogram(name: "_Head_base", scope: !210, file: !84, line: 190, type: !214, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!217 = !DISubprogram(name: "_Head_base", scope: !210, file: !84, line: 193, type: !218, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !216, !220}
!220 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!222 = !DISubprogram(name: "_Head_base", scope: !210, file: !84, line: 196, type: !223, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !216, !225}
!225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!227 = !DISubprogram(name: "_Head_base", scope: !210, file: !84, line: 197, type: !228, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !216, !230}
!230 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !210, size: 64)
!231 = !DISubprogram(name: "_Head_base", scope: !210, file: !84, line: 204, type: !232, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !216, !143, !150}
!234 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !210, file: !84, line: 234, type: !235, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !107, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!239 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERKS3_", scope: !210, file: !84, line: 237, type: !240, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!240 = !DISubroutineType(types: !241)
!241 = !{!220, !225}
!242 = !{!243, !244, !245}
!243 = !DITemplateValueParameter(name: "_Idx", type: !17, value: i64 0)
!244 = !DITemplateTypeParameter(name: "_Head", type: !107)
!245 = !DITemplateValueParameter(type: !55, value: i8 0)
!246 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !87, file: !84, line: 269, type: !247, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!237, !249}
!249 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!250 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERKS5_", scope: !87, file: !84, line: 272, type: !251, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!220, !253}
!253 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!255 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERS5_", scope: !87, file: !84, line: 275, type: !256, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !249}
!258 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !87, file: !84, line: 265, baseType: !90)
!260 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERKS5_", scope: !87, file: !84, line: 278, type: !261, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !253}
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!265 = !DISubprogram(name: "_Tuple_impl", scope: !87, file: !84, line: 280, type: !266, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!269 = !DISubprogram(name: "_Tuple_impl", scope: !87, file: !84, line: 284, type: !270, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !268, !220, !130}
!272 = !DISubprogram(name: "_Tuple_impl", scope: !87, file: !84, line: 296, type: !273, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !268, !253}
!275 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !87, file: !84, line: 300, type: !276, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!276 = !DISubroutineType(types: !277)
!277 = !{!249, !268, !253}
!278 = !DISubprogram(name: "_Tuple_impl", scope: !87, file: !84, line: 302, type: !279, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !268, !281}
!281 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !87, size: 64)
!282 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_swapERS5_", scope: !87, file: !84, line: 469, type: !283, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !268, !249}
!285 = !{!243, !286}
!286 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !287)
!287 = !{!288, !208}
!288 = !DITemplateTypeParameter(type: !107)
!289 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE31__nothrow_default_constructibleEv", scope: !83, file: !84, line: 1286, type: !290, scopeLine: 1286, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!55}
!292 = !DISubprogram(name: "tuple", scope: !83, file: !84, line: 1349, type: !293, scopeLine: 1349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295, !296}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!298 = !DISubprogram(name: "tuple", scope: !83, file: !84, line: 1351, type: !299, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !295, !301}
!301 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !83, size: 64)
!302 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !83, file: !84, line: 1605, type: !303, scopeLine: 1605, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !295, !306}
!305 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !83, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *const &, const std::default_delete<std::thread::_State> &>(), const std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &, const std::__nonesuch &>", scope: !6, file: !307, line: 134, baseType: !308)
!307 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &, const std::__nonesuch &>", scope: !309, file: !307, line: 122, baseType: !296)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !6, file: !307, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !310, identifier: "_ZTSSt13__conditionalILb1EE")
!310 = !{!175}
!311 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSEOS5_", scope: !83, file: !84, line: 1616, type: !312, scopeLine: 1616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!305, !295, !314}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *, std::default_delete<std::thread::_State> >(), std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &&, std::__nonesuch &&>", scope: !6, file: !307, line: 134, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &&, std::__nonesuch &&>", scope: !309, file: !307, line: 122, baseType: !301)
!316 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE4swapERS5_", scope: !83, file: !84, line: 1731, type: !317, scopeLine: 1731, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !295, !305}
!319 = !{!286}
!320 = !DISubprogram(name: "__uniq_ptr_impl", scope: !80, file: !74, line: 174, type: !321, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!324 = !DISubprogram(name: "__uniq_ptr_impl", scope: !80, file: !74, line: 176, type: !325, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !323, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !80, file: !74, line: 168, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !329, file: !74, line: 153, baseType: !107)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<std::thread::_State, std::default_delete<std::thread::_State>, void>", scope: !80, file: !74, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !330, identifier: "_ZTSNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4_PtrIS1_S3_vEE")
!330 = !{!331, !332, !333}
!331 = !DITemplateTypeParameter(name: "_Up", type: !108)
!332 = !DITemplateTypeParameter(name: "_Ep", type: !96)
!333 = !DITemplateTypeParameter(type: null, defaulted: true)
!334 = !DISubprogram(name: "__uniq_ptr_impl", scope: !80, file: !74, line: 184, type: !335, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !323, !337}
!337 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !80, size: 64)
!338 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !80, file: !74, line: 189, type: !339, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !323, !337}
!341 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !80, size: 64)
!342 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !80, file: !74, line: 197, type: !343, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !323}
!345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !327, size: 64)
!346 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !80, file: !74, line: 199, type: !347, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!327, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!351 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !80, file: !74, line: 201, type: !352, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!167, !323}
!354 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !80, file: !74, line: 203, type: !355, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{!130, !349}
!357 = !DISubprogram(name: "reset", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !80, file: !74, line: 206, type: !325, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!358 = !DISubprogram(name: "release", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !80, file: !74, line: 215, type: !359, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{!327, !323}
!361 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !80, file: !74, line: 224, type: !362, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !323, !341}
!364 = !{!122, !365}
!365 = !DITemplateTypeParameter(name: "_Dp", type: !96)
!366 = !DISubprogram(name: "__uniq_ptr_data", scope: !77, file: !74, line: 242, type: !367, scopeLine: 242, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369, !370}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!370 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !77, size: 64)
!371 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EEaSEOS4_", scope: !77, file: !74, line: 243, type: !372, scopeLine: 243, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !369, !370}
!374 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !77, size: 64)
!375 = !{!122, !365, !175, !175}
!376 = !DISubprogram(name: "unique_ptr", scope: !73, file: !74, line: 366, type: !377, scopeLine: 366, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !380}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !73, size: 64)
!381 = !DISubprogram(name: "~unique_ptr", scope: !73, file: !74, line: 398, type: !382, scopeLine: 398, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !379}
!384 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !73, file: !74, line: 414, type: !385, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !379, !380}
!387 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!388 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEDn", scope: !73, file: !74, line: 440, type: !389, scopeLine: 440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!389 = !DISubroutineType(types: !390)
!390 = !{!387, !379, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !6, file: !392, line: 312, baseType: !393)
!392 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "0bd4d19ae337473fb101b6a02c4b83e7")
!393 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!394 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEdeEv", scope: !73, file: !74, line: 451, type: !395, scopeLine: 451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !404}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !398, file: !307, line: 1630, baseType: !399)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::thread::_State>", scope: !6, file: !307, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !121, identifier: "_ZTSSt20add_lvalue_referenceINSt6thread6_StateEE")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__add_lval_ref_t<std::thread::_State>", scope: !6, file: !307, line: 1071, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !401, file: !307, line: 1068, baseType: !403)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<std::thread::_State, void>", scope: !6, file: !307, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !402, identifier: "_ZTSSt29__add_lvalue_reference_helperINSt6thread6_StateEvE")
!402 = !{!122, !333}
!403 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!406 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEptEv", scope: !73, file: !74, line: 460, type: !407, scopeLine: 460, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !404}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !73, file: !74, line: 286, baseType: !327)
!410 = !DISubprogram(name: "get", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE3getEv", scope: !73, file: !74, line: 469, type: !407, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !73, file: !74, line: 475, type: !412, scopeLine: 475, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !379}
!414 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !73, file: !74, line: 288, baseType: !96)
!416 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !73, file: !74, line: 481, type: !417, scopeLine: 481, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !404}
!419 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!421 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEcvbEv", scope: !73, file: !74, line: 486, type: !422, scopeLine: 486, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!55, !404}
!424 = !DISubprogram(name: "release", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !73, file: !74, line: 494, type: !425, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!409, !379}
!427 = !DISubprogram(name: "reset", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !73, file: !74, line: 505, type: !428, scopeLine: 505, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !379, !409}
!430 = !DISubprogram(name: "swap", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !73, file: !74, line: 515, type: !431, scopeLine: 515, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !379, !387}
!433 = !DISubprogram(name: "unique_ptr", scope: !73, file: !74, line: 522, type: !434, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !379, !436}
!436 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !405, size: 64)
!437 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSERKS4_", scope: !73, file: !74, line: 523, type: !438, scopeLine: 523, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!438 = !DISubroutineType(types: !439)
!439 = !{!387, !379, !436}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !442, file: !441, line: 95, baseType: !460)
!441 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/invoke.h", directory: "")
!442 = distinct !DISubprogram(name: "__invoke<void (*)(int *), int *>", linkageName: "_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_", scope: !6, file: !441, line: 90, type: !443, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !455, retainedNodes: !154)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !449, !454}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !446, file: !307, line: 2258, baseType: null)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<void>", scope: !6, file: !307, line: 2257, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !447, identifier: "_ZTSSt14__success_typeIvE")
!447 = !{!448}
!448 = !DITemplateTypeParameter(name: "_Tp", type: null)
!449 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !453, size: 64)
!455 = !{!456, !457}
!456 = !DITemplateTypeParameter(name: "_Callable", type: !450)
!457 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !458)
!458 = !{!459}
!459 = !DITemplateTypeParameter(type: !453)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__invoke_type", scope: !461, file: !307, line: 2411, baseType: !466)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__result_of_success<void, std::__invoke_other>", scope: !6, file: !307, line: 2410, size: 8, flags: DIFlagTypePassByValue, elements: !462, templateParams: !464, identifier: "_ZTSSt19__result_of_successIvSt14__invoke_otherE")
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !461, baseType: !446, extraData: i32 0)
!464 = !{!448, !465}
!465 = !DITemplateTypeParameter(name: "_Tag", type: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__invoke_other", scope: !6, file: !307, line: 2406, size: 8, flags: DIFlagTypePassByValue, elements: !154, identifier: "_ZTSSt14__invoke_other")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State_impl<std::thread::_Invoker<std::tuple<void (*)(int *), int *> > >", scope: !5, file: !4, line: 234, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !468, vtableHolder: !108, templateParams: !662, identifier: "_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE")
!468 = !{!469, !470, !658}
!469 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !467, baseType: !108, extraData: i32 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_M_func", scope: !467, file: !4, line: 236, baseType: !471, size: 128, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Invoker<std::tuple<void (*)(int *), int *> >", scope: !5, file: !4, line: 272, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !472, templateParams: !656, identifier: "_ZTSNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEE")
!472 = !{!473, !652}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !471, file: !4, line: 280, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<void (*)(int *), int *>", scope: !6, file: !84, line: 1232, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !475, templateParams: !651, identifier: "_ZTSSt5tupleIJPFvPiES0_EE")
!475 = !{!476, !626, !627, !633, !637, !643, !648}
!476 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !474, baseType: !477, flags: DIFlagPublic, extraData: i32 0)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, void (*)(int *), int *>", scope: !6, file: !84, line: 259, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !478, templateParams: !622, identifier: "_ZTSSt11_Tuple_implILm0EJPFvPiES0_EE")
!478 = !{!479, !548, !583, !587, !592, !597, !602, !606, !609, !612, !615, !619}
!479 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !477, baseType: !480, extraData: i32 0)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, int *>", scope: !6, file: !84, line: 489, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !481, templateParams: !546, identifier: "_ZTSSt11_Tuple_implILm1EJPiEE")
!481 = !{!482, !517, !521, !526, !530, !533, !536, !539, !543}
!482 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !480, baseType: !483, flags: DIFlagPrivate, extraData: i32 0)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, int *, false>", scope: !6, file: !84, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !484, templateParams: !515, identifier: "_ZTSSt10_Head_baseILm1EPiLb0EE")
!484 = !{!485, !486, !490, !495, !500, !504, !507, !512}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !483, file: !84, line: 239, baseType: !453, size: 64)
!486 = !DISubprogram(name: "_Head_base", scope: !483, file: !84, line: 190, type: !487, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!490 = !DISubprogram(name: "_Head_base", scope: !483, file: !84, line: 193, type: !491, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !489, !493}
!493 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!495 = !DISubprogram(name: "_Head_base", scope: !483, file: !84, line: 196, type: !496, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !489, !498}
!498 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!500 = !DISubprogram(name: "_Head_base", scope: !483, file: !84, line: 197, type: !501, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !489, !503}
!503 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !483, size: 64)
!504 = !DISubprogram(name: "_Head_base", scope: !483, file: !84, line: 204, type: !505, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !489, !143, !150}
!507 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_", scope: !483, file: !84, line: 234, type: !508, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !453, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !483, size: 64)
!512 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERKS1_", scope: !483, file: !84, line: 237, type: !513, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!493, !498}
!515 = !{!173, !516, !245}
!516 = !DITemplateTypeParameter(name: "_Head", type: !453)
!517 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_", scope: !480, file: !84, line: 497, type: !518, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!510, !520}
!520 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !480, size: 64)
!521 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERKS1_", scope: !480, file: !84, line: 500, type: !522, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!493, !524}
!524 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!526 = !DISubprogram(name: "_Tuple_impl", scope: !480, file: !84, line: 503, type: !527, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!530 = !DISubprogram(name: "_Tuple_impl", scope: !480, file: !84, line: 507, type: !531, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !529, !493}
!533 = !DISubprogram(name: "_Tuple_impl", scope: !480, file: !84, line: 517, type: !534, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !529, !524}
!536 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJPiEEaSERKS1_", scope: !480, file: !84, line: 521, type: !537, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!537 = !DISubroutineType(types: !538)
!538 = !{!520, !529, !524}
!539 = !DISubprogram(name: "_Tuple_impl", scope: !480, file: !84, line: 527, type: !540, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !529, !542}
!542 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !480, size: 64)
!543 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_swapERS1_", scope: !480, file: !84, line: 666, type: !544, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !529, !520}
!546 = !{!173, !547}
!547 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !458)
!548 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !477, baseType: !549, offset: 64, flags: DIFlagPrivate, extraData: i32 0)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, void (*)(int *), false>", scope: !6, file: !84, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !550, templateParams: !581, identifier: "_ZTSSt10_Head_baseILm0EPFvPiELb0EE")
!550 = !{!551, !552, !556, !561, !566, !570, !573, !578}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !549, file: !84, line: 239, baseType: !450, size: 64)
!552 = !DISubprogram(name: "_Head_base", scope: !549, file: !84, line: 190, type: !553, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!556 = !DISubprogram(name: "_Head_base", scope: !549, file: !84, line: 193, type: !557, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !555, !559}
!559 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!561 = !DISubprogram(name: "_Head_base", scope: !549, file: !84, line: 196, type: !562, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !555, !564}
!564 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!566 = !DISubprogram(name: "_Head_base", scope: !549, file: !84, line: 197, type: !567, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !555, !569}
!569 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !549, size: 64)
!570 = !DISubprogram(name: "_Head_base", scope: !549, file: !84, line: 204, type: !571, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !555, !143, !150}
!573 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_", scope: !549, file: !84, line: 234, type: !574, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !450, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !549, size: 64)
!578 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERKS3_", scope: !549, file: !84, line: 237, type: !579, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!559, !564}
!581 = !{!243, !582, !245}
!582 = !DITemplateTypeParameter(name: "_Head", type: !450)
!583 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_", scope: !477, file: !84, line: 269, type: !584, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!576, !586}
!586 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !477, size: 64)
!587 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERKS3_", scope: !477, file: !84, line: 272, type: !588, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!559, !590}
!590 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!592 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_tailERS3_", scope: !477, file: !84, line: 275, type: !593, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !586}
!595 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !477, file: !84, line: 265, baseType: !480)
!597 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_tailERKS3_", scope: !477, file: !84, line: 278, type: !598, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !590}
!600 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!602 = !DISubprogram(name: "_Tuple_impl", scope: !477, file: !84, line: 280, type: !603, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!606 = !DISubprogram(name: "_Tuple_impl", scope: !477, file: !84, line: 284, type: !607, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !605, !559, !493}
!609 = !DISubprogram(name: "_Tuple_impl", scope: !477, file: !84, line: 296, type: !610, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !605, !590}
!612 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EEaSERKS3_", scope: !477, file: !84, line: 300, type: !613, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!613 = !DISubroutineType(types: !614)
!614 = !{!586, !605, !590}
!615 = !DISubprogram(name: "_Tuple_impl", scope: !477, file: !84, line: 302, type: !616, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !605, !618}
!618 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !477, size: 64)
!619 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_swapERS3_", scope: !477, file: !84, line: 469, type: !620, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !605, !586}
!622 = !{!243, !623}
!623 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !624)
!624 = !{!625, !459}
!625 = !DITemplateTypeParameter(type: !450)
!626 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPFvPiES0_EE31__nothrow_default_constructibleEv", scope: !474, file: !84, line: 1286, type: !290, scopeLine: 1286, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!627 = !DISubprogram(name: "tuple", scope: !474, file: !84, line: 1349, type: !628, scopeLine: 1349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630, !631}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!631 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!633 = !DISubprogram(name: "tuple", scope: !474, file: !84, line: 1351, type: !634, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !630, !636}
!636 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !474, size: 64)
!637 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvPiES0_EEaSERKS3_", scope: !474, file: !84, line: 1605, type: !638, scopeLine: 1605, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!640, !630, !641}
!640 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !474, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*const &)(int *), int *const &>(), const std::tuple<void (*)(int *), int *> &, const std::__nonesuch &>", scope: !6, file: !307, line: 134, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<void (*)(int *), int *> &, const std::__nonesuch &>", scope: !309, file: !307, line: 122, baseType: !631)
!643 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvPiES0_EEaSEOS3_", scope: !474, file: !84, line: 1616, type: !644, scopeLine: 1616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{!640, !630, !646}
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*)(int *), int *>(), std::tuple<void (*)(int *), int *> &&, std::__nonesuch &&>", scope: !6, file: !307, line: 134, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<void (*)(int *), int *> &&, std::__nonesuch &&>", scope: !309, file: !307, line: 122, baseType: !636)
!648 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPFvPiES0_EE4swapERS3_", scope: !474, file: !84, line: 1731, type: !649, scopeLine: 1731, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !630, !640}
!651 = !{!623}
!652 = !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv", scope: !471, file: !4, line: 295, type: !653, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!445, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!656 = !{!657}
!657 = !DITemplateTypeParameter(name: "_Tuple", type: !474)
!658 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv", scope: !467, file: !4, line: 244, type: !659, scopeLine: 244, containingType: !467, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!662 = !{!663}
!663 = !DITemplateTypeParameter(name: "_Callable", type: !471)
!664 = !{!665, !683, !686, !691, !699, !707, !711, !718, !722, !726, !728, !730, !734, !745, !749, !755, !761, !763, !767, !771, !775, !779, !792, !794, !798, !802, !806, !808, !814, !818, !822, !824, !826, !830, !838, !842, !846, !850, !852, !858, !860, !867, !872, !876, !881, !885, !889, !893, !895, !897, !901, !905, !909, !911, !915, !919, !921, !923, !927, !933, !938, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !957, !961, !966, !970, !974, !979, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1015, !1019, !1023, !1029, !1031, !1035, !1037, !1041, !1045, !1049, !1057, !1061, !1065, !1069, !1073, !1077, !1081, !1085, !1089, !1093, !1097, !1101, !1105, !1107, !1109, !1113, !1117, !1123, !1127, !1131, !1133, !1137, !1141, !1147, !1149, !1153, !1157, !1161, !1165, !1169, !1173, !1177, !1178, !1179, !1180, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1192, !1198, !1203, !1207, !1209, !1211, !1213, !1215, !1222, !1226, !1230, !1234, !1238, !1242, !1247, !1251, !1253, !1257, !1263, !1267, !1272, !1274, !1276, !1280, !1284, !1286, !1288, !1290, !1292, !1296, !1298, !1300, !1304, !1308, !1312, !1316, !1320, !1324, !1326, !1330, !1334, !1338, !1342, !1344, !1346, !1350, !1354, !1355, !1356, !1357, !1358, !1359, !1367, !1370, !1371, !1373, !1375, !1377, !1379, !1383, !1385, !1387, !1389, !1391, !1393, !1395, !1397, !1399, !1403, !1407, !1409, !1413, !1417, !1423, !1427, !1429, !1432, !1435, !1437, !1439, !1441, !1444, !1447, !1450, !1453, !1456, !1458, !1463, !1467, !1470, !1473, !1475, !1477, !1479, !1481, !1484, !1487, !1490, !1493, !1496, !1498, !1503, !1507, !1508, !1513, !1517, !1522, !1527, !1531, !1537, !1541, !1543, !1547}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !666, file: !682, line: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !667, line: 6, baseType: !668)
!667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !669, line: 21, baseType: !670)
!669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !671, identifier: "_ZTS11__mbstate_t")
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !670, file: !669, line: 15, baseType: !115, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !670, file: !669, line: 20, baseType: !674, size: 32, offset: 32)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !669, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !675, identifier: "_ZTSN11__mbstate_tUt_E")
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !674, file: !669, line: 18, baseType: !68, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !674, file: !669, line: 19, baseType: !678, size: 32)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 32, elements: !680)
!679 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!680 = !{!681}
!681 = !DISubrange(count: 4)
!682 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !684, file: !682, line: 141)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !685, line: 20, baseType: !68)
!685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !687, file: !682, line: 143)
!687 = !DISubprogram(name: "btowc", scope: !688, file: !688, line: 284, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!689 = !DISubroutineType(types: !690)
!690 = !{!684, !115}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !692, file: !682, line: 144)
!692 = !DISubprogram(name: "fgetwc", scope: !688, file: !688, line: 726, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!684, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !697, line: 5, baseType: !698)
!697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !697, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !700, file: !682, line: 145)
!700 = !DISubprogram(name: "fgetws", scope: !688, file: !688, line: 755, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!703, !705, !115, !706}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!705 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !703)
!706 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !708, file: !682, line: 146)
!708 = !DISubprogram(name: "fputwc", scope: !688, file: !688, line: 740, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!684, !704, !695}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !712, file: !682, line: 147)
!712 = !DISubprogram(name: "fputws", scope: !688, file: !688, line: 762, type: !713, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!115, !715, !706}
!715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !719, file: !682, line: 148)
!719 = !DISubprogram(name: "fwide", scope: !688, file: !688, line: 573, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!115, !695, !115}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !723, file: !682, line: 149)
!723 = !DISubprogram(name: "fwprintf", scope: !688, file: !688, line: 580, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!115, !706, !715, null}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !727, file: !682, line: 150)
!727 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !688, file: !688, line: 640, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !729, file: !682, line: 151)
!729 = !DISubprogram(name: "getwc", scope: !688, file: !688, line: 727, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !731, file: !682, line: 152)
!731 = !DISubprogram(name: "getwchar", scope: !688, file: !688, line: 733, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!684}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !735, file: !682, line: 153)
!735 = !DISubprogram(name: "mbrlen", scope: !688, file: !688, line: 307, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !740, !738, !743}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !739, line: 46, baseType: !17)
!739 = !DIFile(filename: "lib/clang/14.0.6/include/stddef.h", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !746, file: !682, line: 154)
!746 = !DISubprogram(name: "mbrtowc", scope: !688, file: !688, line: 296, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{!738, !705, !740, !738, !743}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !750, file: !682, line: 155)
!750 = !DISubprogram(name: "mbsinit", scope: !688, file: !688, line: 292, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubroutineType(types: !752)
!752 = !{!115, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !756, file: !682, line: 156)
!756 = !DISubprogram(name: "mbsrtowcs", scope: !688, file: !688, line: 337, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!738, !705, !759, !738, !743}
!759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !762, file: !682, line: 157)
!762 = !DISubprogram(name: "putwc", scope: !688, file: !688, line: 741, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !764, file: !682, line: 158)
!764 = !DISubprogram(name: "putwchar", scope: !688, file: !688, line: 747, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!684, !704}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !768, file: !682, line: 160)
!768 = !DISubprogram(name: "swprintf", scope: !688, file: !688, line: 590, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!115, !705, !738, !715, null}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !772, file: !682, line: 162)
!772 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !688, file: !688, line: 647, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!115, !715, !715, null}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !776, file: !682, line: 163)
!776 = !DISubprogram(name: "ungetwc", scope: !688, file: !688, line: 770, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!684, !684, !695}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !780, file: !682, line: 164)
!780 = !DISubprogram(name: "vfwprintf", scope: !688, file: !688, line: 598, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!115, !706, !715, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !785, identifier: "_ZTS13__va_list_tag")
!785 = !{!786, !788, !789, !791}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !784, file: !787, baseType: !68, size: 32)
!787 = !DIFile(filename: "Reproduced_UAF/Object_patterns/stack_param_by_ref.cpp", directory: "/home/cs22mtech12008")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !784, file: !787, baseType: !68, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !784, file: !787, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !784, file: !787, baseType: !790, size: 64, offset: 128)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !793, file: !682, line: 166)
!793 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !688, file: !688, line: 693, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !795, file: !682, line: 169)
!795 = !DISubprogram(name: "vswprintf", scope: !688, file: !688, line: 611, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DISubroutineType(types: !797)
!797 = !{!115, !705, !738, !715, !783}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !799, file: !682, line: 172)
!799 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !688, file: !688, line: 700, type: !800, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{!115, !715, !715, !783}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !803, file: !682, line: 174)
!803 = !DISubprogram(name: "vwprintf", scope: !688, file: !688, line: 606, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DISubroutineType(types: !805)
!805 = !{!115, !715, !783}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !807, file: !682, line: 176)
!807 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !688, file: !688, line: 697, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !809, file: !682, line: 178)
!809 = !DISubprogram(name: "wcrtomb", scope: !688, file: !688, line: 301, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!738, !812, !704, !743}
!812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !815, file: !682, line: 179)
!815 = !DISubprogram(name: "wcscat", scope: !688, file: !688, line: 97, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!703, !705, !715}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !819, file: !682, line: 180)
!819 = !DISubprogram(name: "wcscmp", scope: !688, file: !688, line: 106, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!115, !716, !716}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !823, file: !682, line: 181)
!823 = !DISubprogram(name: "wcscoll", scope: !688, file: !688, line: 131, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !825, file: !682, line: 182)
!825 = !DISubprogram(name: "wcscpy", scope: !688, file: !688, line: 87, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !827, file: !682, line: 183)
!827 = !DISubprogram(name: "wcscspn", scope: !688, file: !688, line: 187, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!738, !716, !716}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !831, file: !682, line: 184)
!831 = !DISubprogram(name: "wcsftime", scope: !688, file: !688, line: 834, type: !832, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DISubroutineType(types: !833)
!833 = !{!738, !705, !738, !715, !834}
!834 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !688, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !839, file: !682, line: 185)
!839 = !DISubprogram(name: "wcslen", scope: !688, file: !688, line: 222, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!738, !716}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !843, file: !682, line: 186)
!843 = !DISubprogram(name: "wcsncat", scope: !688, file: !688, line: 101, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!703, !705, !715, !738}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !847, file: !682, line: 187)
!847 = !DISubprogram(name: "wcsncmp", scope: !688, file: !688, line: 109, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{!115, !716, !716, !738}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !851, file: !682, line: 188)
!851 = !DISubprogram(name: "wcsncpy", scope: !688, file: !688, line: 92, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !853, file: !682, line: 189)
!853 = !DISubprogram(name: "wcsrtombs", scope: !688, file: !688, line: 343, type: !854, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DISubroutineType(types: !855)
!855 = !{!738, !812, !856, !738, !743}
!856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !859, file: !682, line: 190)
!859 = !DISubprogram(name: "wcsspn", scope: !688, file: !688, line: 191, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !861, file: !682, line: 191)
!861 = !DISubprogram(name: "wcstod", scope: !688, file: !688, line: 377, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !715, !865}
!864 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !868, file: !682, line: 193)
!868 = !DISubprogram(name: "wcstof", scope: !688, file: !688, line: 382, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubroutineType(types: !870)
!870 = !{!871, !715, !865}
!871 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !873, file: !682, line: 195)
!873 = !DISubprogram(name: "wcstok", scope: !688, file: !688, line: 217, type: !874, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{!703, !705, !715, !865}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !877, file: !682, line: 196)
!877 = !DISubprogram(name: "wcstol", scope: !688, file: !688, line: 428, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !715, !865, !115}
!880 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !882, file: !682, line: 197)
!882 = !DISubprogram(name: "wcstoul", scope: !688, file: !688, line: 433, type: !883, flags: DIFlagPrototyped, spFlags: 0)
!883 = !DISubroutineType(types: !884)
!884 = !{!17, !715, !865, !115}
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !886, file: !682, line: 198)
!886 = !DISubprogram(name: "wcsxfrm", scope: !688, file: !688, line: 135, type: !887, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DISubroutineType(types: !888)
!888 = !{!738, !705, !715, !738}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !890, file: !682, line: 199)
!890 = !DISubprogram(name: "wctob", scope: !688, file: !688, line: 288, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!115, !684}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !894, file: !682, line: 200)
!894 = !DISubprogram(name: "wmemcmp", scope: !688, file: !688, line: 258, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !896, file: !682, line: 201)
!896 = !DISubprogram(name: "wmemcpy", scope: !688, file: !688, line: 262, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !898, file: !682, line: 202)
!898 = !DISubprogram(name: "wmemmove", scope: !688, file: !688, line: 267, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!703, !703, !716, !738}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !902, file: !682, line: 203)
!902 = !DISubprogram(name: "wmemset", scope: !688, file: !688, line: 271, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!703, !703, !704, !738}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !906, file: !682, line: 204)
!906 = !DISubprogram(name: "wprintf", scope: !688, file: !688, line: 587, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!115, !715, null}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !910, file: !682, line: 205)
!910 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !688, file: !688, line: 644, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !912, file: !682, line: 206)
!912 = !DISubprogram(name: "wcschr", scope: !688, file: !688, line: 164, type: !913, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DISubroutineType(types: !914)
!914 = !{!703, !716, !704}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !916, file: !682, line: 207)
!916 = !DISubprogram(name: "wcspbrk", scope: !688, file: !688, line: 201, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!703, !716, !716}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !920, file: !682, line: 208)
!920 = !DISubprogram(name: "wcsrchr", scope: !688, file: !688, line: 174, type: !913, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !922, file: !682, line: 209)
!922 = !DISubprogram(name: "wcsstr", scope: !688, file: !688, line: 212, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !924, file: !682, line: 210)
!924 = !DISubprogram(name: "wmemchr", scope: !688, file: !688, line: 253, type: !925, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DISubroutineType(types: !926)
!926 = !{!703, !716, !704, !738}
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !929, file: !682, line: 251)
!928 = !DINamespace(name: "__gnu_cxx", scope: null)
!929 = !DISubprogram(name: "wcstold", scope: !688, file: !688, line: 384, type: !930, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{!932, !715, !865}
!932 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !934, file: !682, line: 260)
!934 = !DISubprogram(name: "wcstoll", scope: !688, file: !688, line: 441, type: !935, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DISubroutineType(types: !936)
!936 = !{!937, !715, !865, !115}
!937 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !939, file: !682, line: 261)
!939 = !DISubprogram(name: "wcstoull", scope: !688, file: !688, line: 448, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!942, !715, !865, !115}
!942 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !929, file: !682, line: 267)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !934, file: !682, line: 268)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !939, file: !682, line: 269)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !868, file: !682, line: 283)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !793, file: !682, line: 286)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !799, file: !682, line: 289)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !807, file: !682, line: 292)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !929, file: !682, line: 296)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !934, file: !682, line: 297)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !939, file: !682, line: 298)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !954, file: !955, line: 66)
!954 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !956, file: !955, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!955 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!956 = !DINamespace(name: "__exception_ptr", scope: !6)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !956, entity: !958, file: !955, line: 85)
!958 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !6, file: !955, line: 81, type: !959, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !954}
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !962, file: !955, line: 243)
!962 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !956, file: !955, line: 230, type: !963, flags: DIFlagPrototyped, spFlags: 0)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !965, !965}
!965 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !954, size: 64)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !967, file: !969, line: 53)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !968, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!968 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!969 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !971, file: !969, line: 54)
!971 = !DISubprogram(name: "setlocale", scope: !968, file: !968, line: 122, type: !972, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DISubroutineType(types: !973)
!973 = !{!813, !115, !741}
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !975, file: !969, line: 55)
!975 = !DISubprogram(name: "localeconv", scope: !968, file: !968, line: 125, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DISubroutineType(types: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !980, file: !984, line: 64)
!980 = !DISubprogram(name: "isalnum", scope: !981, file: !981, line: 108, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!982 = !DISubroutineType(types: !983)
!983 = !{!115, !115}
!984 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !986, file: !984, line: 65)
!986 = !DISubprogram(name: "isalpha", scope: !981, file: !981, line: 109, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !988, file: !984, line: 66)
!988 = !DISubprogram(name: "iscntrl", scope: !981, file: !981, line: 110, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !990, file: !984, line: 67)
!990 = !DISubprogram(name: "isdigit", scope: !981, file: !981, line: 111, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !992, file: !984, line: 68)
!992 = !DISubprogram(name: "isgraph", scope: !981, file: !981, line: 113, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !994, file: !984, line: 69)
!994 = !DISubprogram(name: "islower", scope: !981, file: !981, line: 112, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !996, file: !984, line: 70)
!996 = !DISubprogram(name: "isprint", scope: !981, file: !981, line: 114, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !998, file: !984, line: 71)
!998 = !DISubprogram(name: "ispunct", scope: !981, file: !981, line: 115, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1000, file: !984, line: 72)
!1000 = !DISubprogram(name: "isspace", scope: !981, file: !981, line: 116, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1002, file: !984, line: 73)
!1002 = !DISubprogram(name: "isupper", scope: !981, file: !981, line: 117, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1004, file: !984, line: 74)
!1004 = !DISubprogram(name: "isxdigit", scope: !981, file: !981, line: 118, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1006, file: !984, line: 75)
!1006 = !DISubprogram(name: "tolower", scope: !981, file: !981, line: 122, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1008, file: !984, line: 76)
!1008 = !DISubprogram(name: "toupper", scope: !981, file: !981, line: 125, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1010, file: !984, line: 87)
!1010 = !DISubprogram(name: "isblank", scope: !981, file: !981, line: 130, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1012, entity: !1013, file: !1014, line: 58)
!1012 = !DINamespace(name: "__gnu_debug", scope: null)
!1013 = !DINamespace(name: "__debug", scope: !6)
!1014 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1016, file: !1018, line: 52)
!1016 = !DISubprogram(name: "abs", scope: !1017, file: !1017, line: 840, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1018 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1020, file: !1022, line: 131)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1017, line: 62, baseType: !1021)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1022 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1024, file: !1022, line: 132)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1017, line: 70, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1026, identifier: "_ZTS6ldiv_t")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1025, file: !1017, line: 68, baseType: !880, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1025, file: !1017, line: 69, baseType: !880, size: 64, offset: 64)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1030, file: !1022, line: 134)
!1030 = !DISubprogram(name: "abort", scope: !1017, file: !1017, line: 591, type: !30, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1032, file: !1022, line: 138)
!1032 = !DISubprogram(name: "atexit", scope: !1017, file: !1017, line: 595, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!115, !72}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1036, file: !1022, line: 141)
!1036 = !DISubprogram(name: "at_quick_exit", scope: !1017, file: !1017, line: 600, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1038, file: !1022, line: 144)
!1038 = !DISubprogram(name: "atof", scope: !1017, file: !1017, line: 101, type: !1039, flags: DIFlagPrototyped, spFlags: 0)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!864, !741}
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1042, file: !1022, line: 145)
!1042 = !DISubprogram(name: "atoi", scope: !1017, file: !1017, line: 104, type: !1043, flags: DIFlagPrototyped, spFlags: 0)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!115, !741}
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1046, file: !1022, line: 146)
!1046 = !DISubprogram(name: "atol", scope: !1017, file: !1017, line: 107, type: !1047, flags: DIFlagPrototyped, spFlags: 0)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!880, !741}
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1050, file: !1022, line: 147)
!1050 = !DISubprogram(name: "bsearch", scope: !1017, file: !1017, line: 820, type: !1051, flags: DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!790, !162, !162, !738, !738, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1017, line: 808, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!115, !162, !162}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1058, file: !1022, line: 148)
!1058 = !DISubprogram(name: "calloc", scope: !1017, file: !1017, line: 542, type: !1059, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!790, !738, !738}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1062, file: !1022, line: 149)
!1062 = !DISubprogram(name: "div", scope: !1017, file: !1017, line: 852, type: !1063, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1020, !115, !115}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1066, file: !1022, line: 150)
!1066 = !DISubprogram(name: "exit", scope: !1017, file: !1017, line: 617, type: !1067, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !115}
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1070, file: !1022, line: 151)
!1070 = !DISubprogram(name: "free", scope: !1017, file: !1017, line: 565, type: !1071, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !790}
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1074, file: !1022, line: 152)
!1074 = !DISubprogram(name: "getenv", scope: !1017, file: !1017, line: 634, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!813, !741}
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1078, file: !1022, line: 153)
!1078 = !DISubprogram(name: "labs", scope: !1017, file: !1017, line: 841, type: !1079, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!880, !880}
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1082, file: !1022, line: 154)
!1082 = !DISubprogram(name: "ldiv", scope: !1017, file: !1017, line: 854, type: !1083, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1024, !880, !880}
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1086, file: !1022, line: 155)
!1086 = !DISubprogram(name: "malloc", scope: !1017, file: !1017, line: 539, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!790, !738}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1090, file: !1022, line: 157)
!1090 = !DISubprogram(name: "mblen", scope: !1017, file: !1017, line: 922, type: !1091, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!115, !741, !738}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1094, file: !1022, line: 158)
!1094 = !DISubprogram(name: "mbstowcs", scope: !1017, file: !1017, line: 933, type: !1095, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!738, !705, !740, !738}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1098, file: !1022, line: 159)
!1098 = !DISubprogram(name: "mbtowc", scope: !1017, file: !1017, line: 925, type: !1099, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!115, !705, !740, !738}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1102, file: !1022, line: 161)
!1102 = !DISubprogram(name: "qsort", scope: !1017, file: !1017, line: 830, type: !1103, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !790, !738, !738, !1053}
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1106, file: !1022, line: 164)
!1106 = !DISubprogram(name: "quick_exit", scope: !1017, file: !1017, line: 623, type: !1067, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1108, file: !1022, line: 167)
!1108 = !DISubprogram(name: "rand", scope: !1017, file: !1017, line: 453, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1110, file: !1022, line: 168)
!1110 = !DISubprogram(name: "realloc", scope: !1017, file: !1017, line: 550, type: !1111, flags: DIFlagPrototyped, spFlags: 0)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!790, !790, !738}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1114, file: !1022, line: 169)
!1114 = !DISubprogram(name: "srand", scope: !1017, file: !1017, line: 455, type: !1115, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !68}
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1118, file: !1022, line: 170)
!1118 = !DISubprogram(name: "strtod", scope: !1017, file: !1017, line: 117, type: !1119, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!864, !740, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1124, file: !1022, line: 171)
!1124 = !DISubprogram(name: "strtol", scope: !1017, file: !1017, line: 176, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!880, !740, !1121, !115}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1128, file: !1022, line: 172)
!1128 = !DISubprogram(name: "strtoul", scope: !1017, file: !1017, line: 180, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!17, !740, !1121, !115}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1132, file: !1022, line: 173)
!1132 = !DISubprogram(name: "system", scope: !1017, file: !1017, line: 784, type: !1043, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1134, file: !1022, line: 175)
!1134 = !DISubprogram(name: "wcstombs", scope: !1017, file: !1017, line: 936, type: !1135, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!738, !812, !715, !738}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1138, file: !1022, line: 176)
!1138 = !DISubprogram(name: "wctomb", scope: !1017, file: !1017, line: 929, type: !1139, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!115, !813, !704}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1142, file: !1022, line: 204)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1017, line: 80, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1144, identifier: "_ZTS7lldiv_t")
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1143, file: !1017, line: 78, baseType: !937, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1143, file: !1017, line: 79, baseType: !937, size: 64, offset: 64)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1148, file: !1022, line: 210)
!1148 = !DISubprogram(name: "_Exit", scope: !1017, file: !1017, line: 629, type: !1067, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1150, file: !1022, line: 214)
!1150 = !DISubprogram(name: "llabs", scope: !1017, file: !1017, line: 844, type: !1151, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!937, !937}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1154, file: !1022, line: 220)
!1154 = !DISubprogram(name: "lldiv", scope: !1017, file: !1017, line: 858, type: !1155, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1142, !937, !937}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1158, file: !1022, line: 231)
!1158 = !DISubprogram(name: "atoll", scope: !1017, file: !1017, line: 112, type: !1159, flags: DIFlagPrototyped, spFlags: 0)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!937, !741}
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1162, file: !1022, line: 232)
!1162 = !DISubprogram(name: "strtoll", scope: !1017, file: !1017, line: 200, type: !1163, flags: DIFlagPrototyped, spFlags: 0)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!937, !740, !1121, !115}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1166, file: !1022, line: 233)
!1166 = !DISubprogram(name: "strtoull", scope: !1017, file: !1017, line: 205, type: !1167, flags: DIFlagPrototyped, spFlags: 0)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!942, !740, !1121, !115}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1170, file: !1022, line: 235)
!1170 = !DISubprogram(name: "strtof", scope: !1017, file: !1017, line: 123, type: !1171, flags: DIFlagPrototyped, spFlags: 0)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!871, !740, !1121}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1174, file: !1022, line: 236)
!1174 = !DISubprogram(name: "strtold", scope: !1017, file: !1017, line: 126, type: !1175, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!932, !740, !1121}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1142, file: !1022, line: 244)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1148, file: !1022, line: 246)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1150, file: !1022, line: 248)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1181, file: !1022, line: 249)
!1181 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !928, file: !1022, line: 217, type: !1155, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1154, file: !1022, line: 250)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1158, file: !1022, line: 252)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1170, file: !1022, line: 253)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1162, file: !1022, line: 254)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1166, file: !1022, line: 255)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1174, file: !1022, line: 256)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1189, file: !1191, line: 98)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1190, line: 7, baseType: !698)
!1190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1191 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1193, file: !1191, line: 99)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1194, line: 84, baseType: !1195)
!1194 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1196, line: 14, baseType: !1197)
!1196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1196, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1199, file: !1191, line: 101)
!1199 = !DISubprogram(name: "clearerr", scope: !1194, file: !1194, line: 757, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1204, file: !1191, line: 102)
!1204 = !DISubprogram(name: "fclose", scope: !1194, file: !1194, line: 213, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!115, !1202}
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1208, file: !1191, line: 103)
!1208 = !DISubprogram(name: "feof", scope: !1194, file: !1194, line: 759, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1210, file: !1191, line: 104)
!1210 = !DISubprogram(name: "ferror", scope: !1194, file: !1194, line: 761, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1212, file: !1191, line: 105)
!1212 = !DISubprogram(name: "fflush", scope: !1194, file: !1194, line: 218, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1214, file: !1191, line: 106)
!1214 = !DISubprogram(name: "fgetc", scope: !1194, file: !1194, line: 485, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1216, file: !1191, line: 107)
!1216 = !DISubprogram(name: "fgetpos", scope: !1194, file: !1194, line: 731, type: !1217, flags: DIFlagPrototyped, spFlags: 0)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!115, !1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1202)
!1220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1223, file: !1191, line: 108)
!1223 = !DISubprogram(name: "fgets", scope: !1194, file: !1194, line: 564, type: !1224, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!813, !812, !115, !1219}
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1227, file: !1191, line: 109)
!1227 = !DISubprogram(name: "fopen", scope: !1194, file: !1194, line: 246, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1202, !740, !740}
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1231, file: !1191, line: 110)
!1231 = !DISubprogram(name: "fprintf", scope: !1194, file: !1194, line: 326, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!115, !1219, !740, null}
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1235, file: !1191, line: 111)
!1235 = !DISubprogram(name: "fputc", scope: !1194, file: !1194, line: 521, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!115, !115, !1202}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1239, file: !1191, line: 112)
!1239 = !DISubprogram(name: "fputs", scope: !1194, file: !1194, line: 626, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!115, !740, !1219}
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1243, file: !1191, line: 113)
!1243 = !DISubprogram(name: "fread", scope: !1194, file: !1194, line: 646, type: !1244, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!738, !1246, !738, !738, !1219}
!1246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !790)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1248, file: !1191, line: 114)
!1248 = !DISubprogram(name: "freopen", scope: !1194, file: !1194, line: 252, type: !1249, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1202, !740, !740, !1219}
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1252, file: !1191, line: 115)
!1252 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1194, file: !1194, line: 407, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1254, file: !1191, line: 116)
!1254 = !DISubprogram(name: "fseek", scope: !1194, file: !1194, line: 684, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!115, !1202, !880, !115}
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1258, file: !1191, line: 117)
!1258 = !DISubprogram(name: "fsetpos", scope: !1194, file: !1194, line: 736, type: !1259, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!115, !1202, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1264, file: !1191, line: 118)
!1264 = !DISubprogram(name: "ftell", scope: !1194, file: !1194, line: 689, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!880, !1202}
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1268, file: !1191, line: 119)
!1268 = !DISubprogram(name: "fwrite", scope: !1194, file: !1194, line: 652, type: !1269, flags: DIFlagPrototyped, spFlags: 0)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!738, !1271, !738, !738, !1219}
!1271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1273, file: !1191, line: 120)
!1273 = !DISubprogram(name: "getc", scope: !1194, file: !1194, line: 486, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1275, file: !1191, line: 121)
!1275 = !DISubprogram(name: "getchar", scope: !1194, file: !1194, line: 492, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1277, file: !1191, line: 126)
!1277 = !DISubprogram(name: "perror", scope: !1194, file: !1194, line: 775, type: !1278, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !741}
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1281, file: !1191, line: 127)
!1281 = !DISubprogram(name: "printf", scope: !1194, file: !1194, line: 332, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!115, !740, null}
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1285, file: !1191, line: 128)
!1285 = !DISubprogram(name: "putc", scope: !1194, file: !1194, line: 522, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1287, file: !1191, line: 129)
!1287 = !DISubprogram(name: "putchar", scope: !1194, file: !1194, line: 528, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1289, file: !1191, line: 130)
!1289 = !DISubprogram(name: "puts", scope: !1194, file: !1194, line: 632, type: !1043, flags: DIFlagPrototyped, spFlags: 0)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1291, file: !1191, line: 131)
!1291 = !DISubprogram(name: "remove", scope: !1194, file: !1194, line: 146, type: !1043, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1293, file: !1191, line: 132)
!1293 = !DISubprogram(name: "rename", scope: !1194, file: !1194, line: 148, type: !1294, flags: DIFlagPrototyped, spFlags: 0)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!115, !741, !741}
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1297, file: !1191, line: 133)
!1297 = !DISubprogram(name: "rewind", scope: !1194, file: !1194, line: 694, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1299, file: !1191, line: 134)
!1299 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1194, file: !1194, line: 410, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1301, file: !1191, line: 135)
!1301 = !DISubprogram(name: "setbuf", scope: !1194, file: !1194, line: 304, type: !1302, flags: DIFlagPrototyped, spFlags: 0)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1219, !812}
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1305, file: !1191, line: 136)
!1305 = !DISubprogram(name: "setvbuf", scope: !1194, file: !1194, line: 308, type: !1306, flags: DIFlagPrototyped, spFlags: 0)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!115, !1219, !812, !115, !738}
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1309, file: !1191, line: 137)
!1309 = !DISubprogram(name: "sprintf", scope: !1194, file: !1194, line: 334, type: !1310, flags: DIFlagPrototyped, spFlags: 0)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!115, !812, !740, null}
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1313, file: !1191, line: 138)
!1313 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1194, file: !1194, line: 412, type: !1314, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!115, !740, !740, null}
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1317, file: !1191, line: 139)
!1317 = !DISubprogram(name: "tmpfile", scope: !1194, file: !1194, line: 173, type: !1318, flags: DIFlagPrototyped, spFlags: 0)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1202}
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1321, file: !1191, line: 141)
!1321 = !DISubprogram(name: "tmpnam", scope: !1194, file: !1194, line: 187, type: !1322, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!813, !813}
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1325, file: !1191, line: 143)
!1325 = !DISubprogram(name: "ungetc", scope: !1194, file: !1194, line: 639, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1327, file: !1191, line: 144)
!1327 = !DISubprogram(name: "vfprintf", scope: !1194, file: !1194, line: 341, type: !1328, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!115, !1219, !740, !783}
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1331, file: !1191, line: 145)
!1331 = !DISubprogram(name: "vprintf", scope: !1194, file: !1194, line: 347, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!115, !740, !783}
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1335, file: !1191, line: 146)
!1335 = !DISubprogram(name: "vsprintf", scope: !1194, file: !1194, line: 349, type: !1336, flags: DIFlagPrototyped, spFlags: 0)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!115, !812, !740, !783}
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1339, file: !1191, line: 175)
!1339 = !DISubprogram(name: "snprintf", scope: !1194, file: !1194, line: 354, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!115, !812, !738, !740, null}
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1343, file: !1191, line: 176)
!1343 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1194, file: !1194, line: 451, type: !1328, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1345, file: !1191, line: 177)
!1345 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1194, file: !1194, line: 456, type: !1332, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1347, file: !1191, line: 178)
!1347 = !DISubprogram(name: "vsnprintf", scope: !1194, file: !1194, line: 358, type: !1348, flags: DIFlagPrototyped, spFlags: 0)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!115, !812, !738, !740, !783}
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !928, entity: !1351, file: !1191, line: 179)
!1351 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1194, file: !1194, line: 459, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!115, !740, !740, !783}
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1339, file: !1191, line: 185)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1343, file: !1191, line: 186)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1345, file: !1191, line: 187)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1347, file: !1191, line: 188)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1351, file: !1191, line: 189)
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1360, file: !1366, line: 82)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1361, line: 48, baseType: !1362)
!1361 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1365, line: 41, baseType: !115)
!1365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!1366 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1368, file: !1366, line: 83)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1369, line: 38, baseType: !17)
!1369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !684, file: !1366, line: 84)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1372, file: !1366, line: 86)
!1372 = !DISubprogram(name: "iswalnum", scope: !1369, file: !1369, line: 95, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1374, file: !1366, line: 87)
!1374 = !DISubprogram(name: "iswalpha", scope: !1369, file: !1369, line: 101, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1376, file: !1366, line: 89)
!1376 = !DISubprogram(name: "iswblank", scope: !1369, file: !1369, line: 146, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1378, file: !1366, line: 91)
!1378 = !DISubprogram(name: "iswcntrl", scope: !1369, file: !1369, line: 104, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1380, file: !1366, line: 92)
!1380 = !DISubprogram(name: "iswctype", scope: !1369, file: !1369, line: 159, type: !1381, flags: DIFlagPrototyped, spFlags: 0)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!115, !684, !1368}
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1384, file: !1366, line: 93)
!1384 = !DISubprogram(name: "iswdigit", scope: !1369, file: !1369, line: 108, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1386, file: !1366, line: 94)
!1386 = !DISubprogram(name: "iswgraph", scope: !1369, file: !1369, line: 112, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1388, file: !1366, line: 95)
!1388 = !DISubprogram(name: "iswlower", scope: !1369, file: !1369, line: 117, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1390, file: !1366, line: 96)
!1390 = !DISubprogram(name: "iswprint", scope: !1369, file: !1369, line: 120, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1392, file: !1366, line: 97)
!1392 = !DISubprogram(name: "iswpunct", scope: !1369, file: !1369, line: 125, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1394, file: !1366, line: 98)
!1394 = !DISubprogram(name: "iswspace", scope: !1369, file: !1369, line: 130, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1396, file: !1366, line: 99)
!1396 = !DISubprogram(name: "iswupper", scope: !1369, file: !1369, line: 135, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1398, file: !1366, line: 100)
!1398 = !DISubprogram(name: "iswxdigit", scope: !1369, file: !1369, line: 140, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1400, file: !1366, line: 101)
!1400 = !DISubprogram(name: "towctrans", scope: !1361, file: !1361, line: 55, type: !1401, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!684, !684, !1360}
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1404, file: !1366, line: 102)
!1404 = !DISubprogram(name: "towlower", scope: !1369, file: !1369, line: 166, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!684, !684}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1408, file: !1366, line: 103)
!1408 = !DISubprogram(name: "towupper", scope: !1369, file: !1369, line: 169, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1410, file: !1366, line: 104)
!1410 = !DISubprogram(name: "wctrans", scope: !1361, file: !1361, line: 52, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1360, !741}
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1414, file: !1366, line: 105)
!1414 = !DISubprogram(name: "wctype", scope: !1369, file: !1369, line: 155, type: !1415, flags: DIFlagPrototyped, spFlags: 0)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1368, !741}
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1418, file: !1422, line: 51)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1419, line: 24, baseType: !1420)
!1419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1365, line: 37, baseType: !1421)
!1421 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1422 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1424, file: !1422, line: 52)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1419, line: 25, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1365, line: 39, baseType: !1426)
!1426 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1428, file: !1422, line: 53)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1419, line: 26, baseType: !1364)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1430, file: !1422, line: 54)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1419, line: 27, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1365, line: 44, baseType: !880)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1433, file: !1422, line: 56)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1434, line: 58, baseType: !1421)
!1434 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1436, file: !1422, line: 57)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1434, line: 60, baseType: !880)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1438, file: !1422, line: 58)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1434, line: 61, baseType: !880)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1440, file: !1422, line: 59)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1434, line: 62, baseType: !880)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1442, file: !1422, line: 61)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1434, line: 43, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1365, line: 52, baseType: !1420)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1445, file: !1422, line: 62)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1434, line: 44, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1365, line: 54, baseType: !1425)
!1447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1448, file: !1422, line: 63)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1434, line: 45, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1365, line: 56, baseType: !1364)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1451, file: !1422, line: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1434, line: 46, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1365, line: 58, baseType: !1431)
!1453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1454, file: !1422, line: 66)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1434, line: 101, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1365, line: 72, baseType: !880)
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1457, file: !1422, line: 67)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1434, line: 87, baseType: !880)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1459, file: !1422, line: 69)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1460, line: 24, baseType: !1461)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1365, line: 38, baseType: !1462)
!1462 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1464, file: !1422, line: 70)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1460, line: 25, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1365, line: 40, baseType: !1466)
!1466 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1468, file: !1422, line: 71)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1460, line: 26, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1365, line: 42, baseType: !68)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1471, file: !1422, line: 72)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1460, line: 27, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1365, line: 45, baseType: !17)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1474, file: !1422, line: 74)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1434, line: 71, baseType: !1462)
!1475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1476, file: !1422, line: 75)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1434, line: 73, baseType: !17)
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1478, file: !1422, line: 76)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1434, line: 74, baseType: !17)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1480, file: !1422, line: 77)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1434, line: 75, baseType: !17)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1482, file: !1422, line: 79)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1434, line: 49, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1365, line: 53, baseType: !1461)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1485, file: !1422, line: 80)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1434, line: 50, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1365, line: 55, baseType: !1465)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1488, file: !1422, line: 81)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1434, line: 51, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1365, line: 57, baseType: !1469)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1491, file: !1422, line: 82)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1434, line: 52, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1365, line: 59, baseType: !1472)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1494, file: !1422, line: 84)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1434, line: 102, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1365, line: 73, baseType: !17)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1497, file: !1422, line: 85)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1434, line: 90, baseType: !17)
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1499, file: !1502, line: 60)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1500, line: 7, baseType: !1501)
!1500 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1365, line: 156, baseType: !880)
!1502 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1504, file: !1502, line: 61)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1505, line: 7, baseType: !1506)
!1505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1365, line: 160, baseType: !880)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !837, file: !1502, line: 62)
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1509, file: !1502, line: 64)
!1509 = !DISubprogram(name: "clock", scope: !1510, file: !1510, line: 72, type: !1511, flags: DIFlagPrototyped, spFlags: 0)
!1510 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1499}
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1514, file: !1502, line: 65)
!1514 = !DISubprogram(name: "difftime", scope: !1510, file: !1510, line: 78, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!864, !1504, !1504}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1518, file: !1502, line: 66)
!1518 = !DISubprogram(name: "mktime", scope: !1510, file: !1510, line: 82, type: !1519, flags: DIFlagPrototyped, spFlags: 0)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1504, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1523, file: !1502, line: 67)
!1523 = !DISubprogram(name: "time", scope: !1510, file: !1510, line: 75, type: !1524, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1504, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1528, file: !1502, line: 68)
!1528 = !DISubprogram(name: "asctime", scope: !1510, file: !1510, line: 139, type: !1529, flags: DIFlagPrototyped, spFlags: 0)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!813, !835}
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1532, file: !1502, line: 69)
!1532 = !DISubprogram(name: "ctime", scope: !1510, file: !1510, line: 142, type: !1533, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!813, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1538, file: !1502, line: 70)
!1538 = !DISubprogram(name: "gmtime", scope: !1510, file: !1510, line: 119, type: !1539, flags: DIFlagPrototyped, spFlags: 0)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1521, !1535}
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1542, file: !1502, line: 71)
!1542 = !DISubprogram(name: "localtime", scope: !1510, file: !1510, line: 123, type: !1539, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1544, file: !1502, line: 72)
!1544 = !DISubprogram(name: "strftime", scope: !1510, file: !1510, line: 88, type: !1545, flags: DIFlagPrototyped, spFlags: 0)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!738, !812, !738, !740, !834}
!1547 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1548, entity: !1549, file: !1551, line: 1447)
!1548 = !DINamespace(name: "chrono", scope: !6)
!1549 = !DINamespace(name: "chrono_literals", scope: !1550, exportSymbols: true)
!1550 = !DINamespace(name: "literals", scope: !6, exportSymbols: true)
!1551 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!1552 = !{i32 7, !"Dwarf Version", i32 5}
!1553 = !{i32 2, !"Debug Info Version", i32 3}
!1554 = !{i32 1, !"wchar_size", i32 4}
!1555 = !{i32 7, !"uwtable", i32 1}
!1556 = !{i32 7, !"frame-pointer", i32 2}
!1557 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!1558 = distinct !DISubprogram(name: "thread_func", linkageName: "_Z11thread_funcPi", scope: !1559, file: !1559, line: 3, type: !451, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1559 = !DIFile(filename: "Reproduced_UAF/Object_patterns/stack_param_by_ref.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "71b3ec96bfa9ca5c86602fe279ade7fb")
!1560 = !DILocalVariable(name: "x", arg: 1, scope: !1558, file: !1559, line: 3, type: !453)
!1561 = !DILocation(line: 3, column: 23, scope: !1558)
!1562 = !DILocation(line: 4, column: 14, scope: !1558)
!1563 = !DILocation(line: 4, column: 35, scope: !1558)
!1564 = !DILocation(line: 4, column: 34, scope: !1558)
!1565 = !DILocation(line: 4, column: 32, scope: !1558)
!1566 = !DILocation(line: 4, column: 36, scope: !1558)
!1567 = !DILocation(line: 6, column: 1, scope: !1558)
!1568 = distinct !DISubprogram(name: "threadFunction", linkageName: "_Z14threadFunctionv", scope: !1559, file: !1559, line: 7, type: !30, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1569 = !DILocalVariable(name: "x", scope: !1568, file: !1559, line: 8, type: !115)
!1570 = !DILocation(line: 8, column: 9, scope: !1568)
!1571 = !DILocalVariable(name: "t1", scope: !1568, file: !1559, line: 9, type: !5)
!1572 = !DILocation(line: 9, column: 17, scope: !1568)
!1573 = !DILocation(line: 9, column: 32, scope: !1568)
!1574 = !DILocation(line: 11, column: 1, scope: !1568)
!1575 = distinct !DISubprogram(name: "thread<void (&)(int *), int *, void>", linkageName: "_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_", scope: !5, file: !4, line: 154, type: !1576, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1580, declaration: !1579, retainedNodes: !154)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !28, !1578, !454}
!1578 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !451, size: 64)
!1579 = !DISubprogram(name: "thread<void (&)(int *), int *, void>", scope: !5, file: !4, line: 154, type: !1576, scopeLine: 154, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1580)
!1580 = !{!1581, !457, !1582}
!1581 = !DITemplateTypeParameter(name: "_Callable", type: !1578)
!1582 = !DITemplateTypeParameter(type: null)
!1583 = !DILocalVariable(name: "this", arg: 1, scope: !1575, type: !1584, flags: DIFlagArtificial | DIFlagObjectPointer)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1585 = !DILocation(line: 0, scope: !1575)
!1586 = !DILocalVariable(name: "__f", arg: 2, scope: !1575, file: !4, line: 154, type: !1578)
!1587 = !DILocation(line: 154, column: 26, scope: !1575)
!1588 = !DILocalVariable(name: "__args", arg: 3, scope: !1575, file: !4, line: 154, type: !454)
!1589 = !DILocation(line: 154, column: 42, scope: !1575)
!1590 = !DILocation(line: 154, column: 7, scope: !1575)
!1591 = !DILocation(line: 164, column: 29, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1575, file: !4, line: 155, column: 7)
!1593 = !DILocation(line: 165, column: 32, scope: !1592)
!1594 = !DILocation(line: 165, column: 8, scope: !1592)
!1595 = !DILocation(line: 165, column: 58, scope: !1592)
!1596 = !DILocation(line: 165, column: 38, scope: !1592)
!1597 = !DILocation(line: 164, column: 33, scope: !1592)
!1598 = !DILocation(line: 164, column: 18, scope: !1592)
!1599 = !DILocation(line: 164, column: 2, scope: !1592)
!1600 = !DILocation(line: 167, column: 7, scope: !1575)
!1601 = !DILocation(line: 167, column: 7, scope: !1592)
!1602 = distinct !DISubprogram(name: "~thread", linkageName: "_ZNSt6threadD2Ev", scope: !5, file: !4, line: 170, type: !26, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !32, retainedNodes: !154)
!1603 = !DILocalVariable(name: "this", arg: 1, scope: !1602, type: !1584, flags: DIFlagArtificial | DIFlagObjectPointer)
!1604 = !DILocation(line: 0, scope: !1602)
!1605 = !DILocation(line: 172, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !4, line: 172, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !4, line: 171, column: 5)
!1608 = !DILocation(line: 172, column: 11, scope: !1607)
!1609 = !DILocation(line: 322, column: 5, scope: !1610, inlinedAt: !1611)
!1610 = distinct !DISubprogram(name: "__terminate", linkageName: "_ZSt11__terminatev", scope: !392, file: !392, line: 319, type: !30, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1611 = distinct !DILocation(line: 173, column: 2, scope: !1606)
!1612 = !DILocation(line: 173, column: 2, scope: !1606)
!1613 = !DILocation(line: 174, column: 5, scope: !1602)
!1614 = distinct !DISubprogram(name: "main", scope: !1559, file: !1559, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1615 = !DILocation(line: 13, column: 5, scope: !1614)
!1616 = !DILocation(line: 15, column: 1, scope: !1614)
!1617 = distinct !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !5, file: !4, line: 196, type: !53, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !52, retainedNodes: !154)
!1618 = !DILocalVariable(name: "this", arg: 1, scope: !1617, type: !1619, flags: DIFlagArtificial | DIFlagObjectPointer)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1620 = !DILocation(line: 0, scope: !1617)
!1621 = !DILocation(line: 197, column: 16, scope: !1617)
!1622 = !DILocation(line: 197, column: 25, scope: !1617)
!1623 = !DILocation(line: 197, column: 22, scope: !1617)
!1624 = !DILocation(line: 197, column: 14, scope: !1617)
!1625 = !DILocation(line: 197, column: 7, scope: !1617)
!1626 = distinct !DISubprogram(name: "operator==", linkageName: "_ZSteqNSt6thread2idES0_", scope: !6, file: !4, line: 324, type: !1627, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!55, !9, !9}
!1629 = !DILocalVariable(name: "__x", arg: 1, scope: !1626, file: !4, line: 324, type: !9)
!1630 = !DILocation(line: 324, column: 25, scope: !1626)
!1631 = !DILocalVariable(name: "__y", arg: 2, scope: !1626, file: !4, line: 324, type: !9)
!1632 = !DILocation(line: 324, column: 41, scope: !1626)
!1633 = !DILocation(line: 330, column: 16, scope: !1626)
!1634 = !DILocation(line: 330, column: 33, scope: !1626)
!1635 = !DILocation(line: 330, column: 26, scope: !1626)
!1636 = !DILocation(line: 330, column: 5, scope: !1626)
!1637 = distinct !DISubprogram(name: "id", linkageName: "_ZNSt6thread2idC2Ev", scope: !9, file: !4, line: 97, type: !19, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !18, retainedNodes: !154)
!1638 = !DILocalVariable(name: "this", arg: 1, scope: !1637, type: !1639, flags: DIFlagArtificial | DIFlagObjectPointer)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1640 = !DILocation(line: 0, scope: !1637)
!1641 = !DILocation(line: 97, column: 23, scope: !1637)
!1642 = !DILocation(line: 97, column: 37, scope: !1637)
!1643 = distinct !DISubprogram(name: "forward<void (&)(int *)>", linkageName: "_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE", scope: !6, file: !1644, line: 70, type: !1645, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1650, retainedNodes: !154)
!1644 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/move.h", directory: "", checksumkind: CSK_MD5, checksum: "666aabd4a7b2d63fc1081b35311b7ac1")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1578, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1649, file: !307, line: 1620, baseType: !451)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (&)(int *)>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1650, identifier: "_ZTSSt16remove_referenceIRFvPiEE")
!1650 = !{!1651}
!1651 = !DITemplateTypeParameter(name: "_Tp", type: !1578)
!1652 = !DILocalVariable(name: "__t", arg: 1, scope: !1643, file: !1644, line: 70, type: !1647)
!1653 = !DILocation(line: 70, column: 56, scope: !1643)
!1654 = !DILocation(line: 71, column: 33, scope: !1643)
!1655 = !DILocation(line: 71, column: 7, scope: !1643)
!1656 = distinct !DISubprogram(name: "forward<int *>", linkageName: "_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE", scope: !6, file: !1644, line: 70, type: !1657, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1662, retainedNodes: !154)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!454, !1659}
!1659 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1661, file: !307, line: 1616, baseType: !453)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int *>", scope: !6, file: !307, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1662, identifier: "_ZTSSt16remove_referenceIPiE")
!1662 = !{!1663}
!1663 = !DITemplateTypeParameter(name: "_Tp", type: !453)
!1664 = !DILocalVariable(name: "__t", arg: 1, scope: !1656, file: !1644, line: 70, type: !1659)
!1665 = !DILocation(line: 70, column: 56, scope: !1656)
!1666 = !DILocation(line: 71, column: 33, scope: !1656)
!1667 = !DILocation(line: 71, column: 7, scope: !1656)
!1668 = distinct !DISubprogram(name: "_State_impl<void (&)(int *), int *>", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_", scope: !467, file: !4, line: 239, type: !1669, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1672, declaration: !1671, retainedNodes: !154)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !661, !1578, !454}
!1671 = !DISubprogram(name: "_State_impl<void (&)(int *), int *>", scope: !467, file: !4, line: 239, type: !1669, scopeLine: 239, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1672)
!1672 = !{!1673}
!1673 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !1674)
!1674 = !{!1675, !459}
!1675 = !DITemplateTypeParameter(type: !1578)
!1676 = !DILocalVariable(name: "this", arg: 1, scope: !1668, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1678 = !DILocation(line: 0, scope: !1668)
!1679 = !DILocalVariable(name: "__args", arg: 2, scope: !1668, file: !4, line: 239, type: !1578)
!1680 = !DILocation(line: 239, column: 27, scope: !1668)
!1681 = !DILocalVariable(name: "__args", arg: 3, scope: !1668, file: !4, line: 239, type: !454)
!1682 = !DILocation(line: 241, column: 4, scope: !1668)
!1683 = !DILocation(line: 239, column: 4, scope: !1668)
!1684 = !DILocation(line: 240, column: 6, scope: !1668)
!1685 = !DILocation(line: 240, column: 34, scope: !1668)
!1686 = !DILocation(line: 240, column: 14, scope: !1668)
!1687 = !DILocation(line: 241, column: 6, scope: !1668)
!1688 = !DILocation(line: 241, column: 6, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1668, file: !4, line: 241, column: 4)
!1690 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_", scope: !73, file: !74, line: 317, type: !428, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1692, declaration: !1691, retainedNodes: !154)
!1691 = !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", scope: !73, file: !74, line: 317, type: !428, scopeLine: 317, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1692)
!1692 = !{!1693, !1582}
!1693 = !DITemplateTypeParameter(name: "_Del", type: !96)
!1694 = !DILocalVariable(name: "this", arg: 1, scope: !1690, type: !1695, flags: DIFlagArtificial | DIFlagObjectPointer)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1696 = !DILocation(line: 0, scope: !1690)
!1697 = !DILocalVariable(name: "__p", arg: 2, scope: !1690, file: !74, line: 317, type: !409)
!1698 = !DILocation(line: 317, column: 21, scope: !1690)
!1699 = !DILocation(line: 318, column: 4, scope: !1690)
!1700 = !DILocation(line: 318, column: 9, scope: !1690)
!1701 = !DILocation(line: 319, column: 11, scope: !1690)
!1702 = distinct !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !5, file: !4, line: 143, type: !30, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !29, retainedNodes: !154)
!1703 = !DILocation(line: 145, column: 7, scope: !1702)
!1704 = !DILocation(line: 146, column: 7, scope: !1702)
!1705 = !DILocation(line: 148, column: 5, scope: !1702)
!1706 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev", scope: !73, file: !74, line: 398, type: !382, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !381, retainedNodes: !154)
!1707 = !DILocalVariable(name: "this", arg: 1, scope: !1706, type: !1695, flags: DIFlagArtificial | DIFlagObjectPointer)
!1708 = !DILocation(line: 0, scope: !1706)
!1709 = !DILocalVariable(name: "__ptr", scope: !1710, file: !74, line: 402, type: !345)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !74, line: 399, column: 7)
!1711 = !DILocation(line: 402, column: 8, scope: !1710)
!1712 = !DILocation(line: 402, column: 16, scope: !1710)
!1713 = !DILocation(line: 402, column: 21, scope: !1710)
!1714 = !DILocation(line: 403, column: 6, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !74, line: 403, column: 6)
!1716 = !DILocation(line: 403, column: 12, scope: !1715)
!1717 = !DILocation(line: 403, column: 6, scope: !1710)
!1718 = !DILocation(line: 404, column: 4, scope: !1715)
!1719 = !DILocation(line: 404, column: 28, scope: !1715)
!1720 = !DILocation(line: 404, column: 18, scope: !1715)
!1721 = !DILocation(line: 405, column: 2, scope: !1710)
!1722 = !DILocation(line: 405, column: 8, scope: !1710)
!1723 = !DILocation(line: 406, column: 7, scope: !1706)
!1724 = distinct !DISubprogram(name: "_State", linkageName: "_ZNSt6thread6_StateC2Ev", scope: !108, file: !4, line: 225, type: !117, scopeLine: 225, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1725, retainedNodes: !154)
!1725 = !DISubprogram(name: "_State", scope: !108, type: !117, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1726 = !DILocalVariable(name: "this", arg: 1, scope: !1724, type: !107, flags: DIFlagArtificial | DIFlagObjectPointer)
!1727 = !DILocation(line: 0, scope: !1724)
!1728 = !DILocation(line: 225, column: 12, scope: !1724)
!1729 = distinct !DISubprogram(name: "_Invoker<void (&)(int *), int *>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_", scope: !471, file: !4, line: 276, type: !1730, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1672, declaration: !1732, retainedNodes: !154)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !655, !1578, !454}
!1732 = !DISubprogram(name: "_Invoker<void (&)(int *), int *>", scope: !471, file: !4, line: 276, type: !1730, scopeLine: 276, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1672)
!1733 = !DILocalVariable(name: "this", arg: 1, scope: !1729, type: !1734, flags: DIFlagArtificial | DIFlagObjectPointer)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1735 = !DILocation(line: 0, scope: !1729)
!1736 = !DILocalVariable(name: "__args", arg: 2, scope: !1729, file: !4, line: 276, type: !1578)
!1737 = !DILocation(line: 276, column: 24, scope: !1729)
!1738 = !DILocalVariable(name: "__args", arg: 3, scope: !1729, file: !4, line: 276, type: !454)
!1739 = !DILocation(line: 277, column: 6, scope: !1729)
!1740 = !DILocation(line: 277, column: 31, scope: !1729)
!1741 = !DILocation(line: 277, column: 11, scope: !1729)
!1742 = !DILocation(line: 278, column: 6, scope: !1729)
!1743 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev", scope: !467, file: !4, line: 234, type: !659, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1744, retainedNodes: !154)
!1744 = !DISubprogram(name: "~_State_impl", scope: !467, type: !659, containingType: !467, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1745 = !DILocalVariable(name: "this", arg: 1, scope: !1743, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1746 = !DILocation(line: 0, scope: !1743)
!1747 = !DILocation(line: 234, column: 14, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !4, line: 234, column: 14)
!1749 = !DILocation(line: 234, column: 14, scope: !1743)
!1750 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev", scope: !467, file: !4, line: 234, type: !659, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1744, retainedNodes: !154)
!1751 = !DILocalVariable(name: "this", arg: 1, scope: !1750, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1752 = !DILocation(line: 0, scope: !1750)
!1753 = !DILocation(line: 234, column: 14, scope: !1750)
!1754 = distinct !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv", scope: !467, file: !4, line: 244, type: !659, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !658, retainedNodes: !154)
!1755 = !DILocalVariable(name: "this", arg: 1, scope: !1754, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1756 = !DILocation(line: 0, scope: !1754)
!1757 = !DILocation(line: 244, column: 13, scope: !1754)
!1758 = !DILocation(line: 244, column: 24, scope: !1754)
!1759 = distinct !DISubprogram(name: "tuple<void (&)(int *), int *, true>", linkageName: "_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_", scope: !474, file: !84, line: 1338, type: !1760, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1763, declaration: !1762, retainedNodes: !154)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !630, !1578, !454}
!1762 = !DISubprogram(name: "tuple<void (&)(int *), int *, true>", scope: !474, file: !84, line: 1338, type: !1760, scopeLine: 1338, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DITemplateTypeParameter(name: "_U1", type: !1578)
!1765 = !DITemplateTypeParameter(name: "_U2", type: !453)
!1766 = !DITemplateValueParameter(type: !55, defaulted: true, value: i8 1)
!1767 = !DILocalVariable(name: "this", arg: 1, scope: !1759, type: !1768, flags: DIFlagArtificial | DIFlagObjectPointer)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!1769 = !DILocation(line: 0, scope: !1759)
!1770 = !DILocalVariable(name: "__a1", arg: 2, scope: !1759, file: !84, line: 1338, type: !1578)
!1771 = !DILocation(line: 1338, column: 14, scope: !1759)
!1772 = !DILocalVariable(name: "__a2", arg: 3, scope: !1759, file: !84, line: 1338, type: !454)
!1773 = !DILocation(line: 1338, column: 26, scope: !1759)
!1774 = !DILocation(line: 1340, column: 65, scope: !1759)
!1775 = !DILocation(line: 1340, column: 33, scope: !1759)
!1776 = !DILocation(line: 1340, column: 15, scope: !1759)
!1777 = !DILocation(line: 1340, column: 58, scope: !1759)
!1778 = !DILocation(line: 1340, column: 40, scope: !1759)
!1779 = !DILocation(line: 1340, column: 4, scope: !1759)
!1780 = !DILocation(line: 1340, column: 67, scope: !1759)
!1781 = distinct !DISubprogram(name: "_Tuple_impl<void (&)(int *), int *, void>", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_", scope: !477, file: !84, line: 291, type: !1782, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1785, declaration: !1784, retainedNodes: !154)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !605, !1578, !454}
!1784 = !DISubprogram(name: "_Tuple_impl<void (&)(int *), int *, void>", scope: !477, file: !84, line: 291, type: !1782, scopeLine: 291, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1785)
!1785 = !{!1786, !1787, !1582}
!1786 = !DITemplateTypeParameter(name: "_UHead", type: !1578)
!1787 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UTail", value: !458)
!1788 = !DILocalVariable(name: "this", arg: 1, scope: !1781, type: !1789, flags: DIFlagArtificial | DIFlagObjectPointer)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!1790 = !DILocation(line: 0, scope: !1781)
!1791 = !DILocalVariable(name: "__head", arg: 2, scope: !1781, file: !84, line: 291, type: !1578)
!1792 = !DILocation(line: 291, column: 23, scope: !1781)
!1793 = !DILocalVariable(name: "__tail", arg: 3, scope: !1781, file: !84, line: 291, type: !454)
!1794 = !DILocation(line: 291, column: 43, scope: !1781)
!1795 = !DILocation(line: 294, column: 2, scope: !1781)
!1796 = !DILocation(line: 292, column: 36, scope: !1781)
!1797 = !DILocation(line: 292, column: 15, scope: !1781)
!1798 = !DILocation(line: 292, column: 4, scope: !1781)
!1799 = !DILocation(line: 293, column: 31, scope: !1781)
!1800 = !DILocation(line: 293, column: 10, scope: !1781)
!1801 = !DILocation(line: 293, column: 4, scope: !1781)
!1802 = !DILocation(line: 294, column: 4, scope: !1781)
!1803 = distinct !DISubprogram(name: "_Tuple_impl<int *>", linkageName: "_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_", scope: !480, file: !84, line: 513, type: !1804, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1807, declaration: !1806, retainedNodes: !154)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !529, !454}
!1806 = !DISubprogram(name: "_Tuple_impl<int *>", scope: !480, file: !84, line: 513, type: !1804, scopeLine: 513, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1807)
!1807 = !{!1808}
!1808 = !DITemplateTypeParameter(name: "_UHead", type: !453)
!1809 = !DILocalVariable(name: "this", arg: 1, scope: !1803, type: !1810, flags: DIFlagArtificial | DIFlagObjectPointer)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1811 = !DILocation(line: 0, scope: !1803)
!1812 = !DILocalVariable(name: "__head", arg: 2, scope: !1803, file: !84, line: 513, type: !454)
!1813 = !DILocation(line: 513, column: 23, scope: !1803)
!1814 = !DILocation(line: 515, column: 2, scope: !1803)
!1815 = !DILocation(line: 514, column: 31, scope: !1803)
!1816 = !DILocation(line: 514, column: 10, scope: !1803)
!1817 = !DILocation(line: 514, column: 4, scope: !1803)
!1818 = !DILocation(line: 515, column: 4, scope: !1803)
!1819 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_", scope: !549, file: !84, line: 193, type: !557, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !556, retainedNodes: !154)
!1820 = !DILocalVariable(name: "this", arg: 1, scope: !1819, type: !1821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1822 = !DILocation(line: 0, scope: !1819)
!1823 = !DILocalVariable(name: "__h", arg: 2, scope: !1819, file: !84, line: 193, type: !559)
!1824 = !DILocation(line: 193, column: 41, scope: !1819)
!1825 = !DILocation(line: 194, column: 9, scope: !1819)
!1826 = !DILocation(line: 194, column: 22, scope: !1819)
!1827 = !DILocation(line: 194, column: 29, scope: !1819)
!1828 = distinct !DISubprogram(name: "_Head_base<int *>", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_", scope: !483, file: !84, line: 200, type: !1829, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1807, declaration: !1831, retainedNodes: !154)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !489, !454}
!1831 = !DISubprogram(name: "_Head_base<int *>", scope: !483, file: !84, line: 200, type: !1829, scopeLine: 200, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1807)
!1832 = !DILocalVariable(name: "this", arg: 1, scope: !1828, type: !1833, flags: DIFlagArtificial | DIFlagObjectPointer)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1834 = !DILocation(line: 0, scope: !1828)
!1835 = !DILocalVariable(name: "__h", arg: 2, scope: !1828, file: !84, line: 200, type: !454)
!1836 = !DILocation(line: 200, column: 39, scope: !1828)
!1837 = !DILocation(line: 201, column: 4, scope: !1828)
!1838 = !DILocation(line: 201, column: 38, scope: !1828)
!1839 = !DILocation(line: 201, column: 17, scope: !1828)
!1840 = !DILocation(line: 201, column: 46, scope: !1828)
!1841 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv", scope: !471, file: !4, line: 295, type: !653, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !652, retainedNodes: !154)
!1842 = !DILocalVariable(name: "this", arg: 1, scope: !1841, type: !1734, flags: DIFlagArtificial | DIFlagObjectPointer)
!1843 = !DILocation(line: 0, scope: !1841)
!1844 = !DILocation(line: 299, column: 11, scope: !1841)
!1845 = !DILocation(line: 299, column: 4, scope: !1841)
!1846 = distinct !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !471, file: !4, line: 291, type: !1847, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1857, declaration: !1856, retainedNodes: !154)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!445, !655, !1849}
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Index_tuple<0UL, 1UL>", scope: !6, file: !1850, line: 140, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1851, identifier: "_ZTSSt12_Index_tupleIJLm0ELm1EEE")
!1850 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/utility.h", directory: "")
!1851 = !{!1852}
!1852 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indexes", value: !1853)
!1853 = !{!1854, !1855}
!1854 = !DITemplateValueParameter(type: !17, value: i64 0)
!1855 = !DITemplateValueParameter(type: !17, value: i64 1)
!1856 = !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !471, file: !4, line: 291, type: !1847, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1857)
!1857 = !{!1858}
!1858 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ind", value: !1853)
!1859 = !DILocalVariable(name: "this", arg: 1, scope: !1846, type: !1734, flags: DIFlagArtificial | DIFlagObjectPointer)
!1860 = !DILocation(line: 0, scope: !1846)
!1861 = !DILocalVariable(arg: 2, scope: !1846, file: !4, line: 291, type: !1849)
!1862 = !DILocation(line: 291, column: 35, scope: !1846)
!1863 = !DILocation(line: 292, column: 52, scope: !1846)
!1864 = !DILocation(line: 292, column: 42, scope: !1846)
!1865 = !DILocation(line: 292, column: 27, scope: !1846)
!1866 = !DILocation(line: 292, column: 13, scope: !1846)
!1867 = !DILocation(line: 292, column: 6, scope: !1846)
!1868 = !DILocalVariable(name: "__fn", arg: 1, scope: !442, file: !441, line: 90, type: !449)
!1869 = !DILocation(line: 90, column: 26, scope: !442)
!1870 = !DILocalVariable(name: "__args", arg: 2, scope: !442, file: !441, line: 90, type: !454)
!1871 = !DILocation(line: 90, column: 43, scope: !442)
!1872 = !DILocation(line: 96, column: 74, scope: !442)
!1873 = !DILocation(line: 96, column: 50, scope: !442)
!1874 = !DILocation(line: 97, column: 26, scope: !442)
!1875 = !DILocation(line: 97, column: 6, scope: !442)
!1876 = !DILocation(line: 96, column: 14, scope: !442)
!1877 = !DILocation(line: 96, column: 7, scope: !442)
!1878 = distinct !DISubprogram(name: "get<0UL, void (*)(int *), int *>", linkageName: "_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_", scope: !6, file: !84, line: 1801, type: !1879, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1893, retainedNodes: !154)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1881, !636}
!1881 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<void (*)(int *), int *> >", scope: !6, file: !1850, line: 84, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1884, file: !84, line: 1768, baseType: !1888)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<void (*)(int *), int *> >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1885, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPFvPiES1_EEE")
!1885 = !{!1886, !1887}
!1886 = !DITemplateValueParameter(name: "__i", type: !17, value: i64 0)
!1887 = !DITemplateTypeParameter(name: "_Tp", type: !474)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1889, file: !1850, line: 255, baseType: !450)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, void (*)(int *), int *>", scope: !6, file: !1850, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1890, identifier: "_ZTSSt9_Nth_typeILm0EJPFvPiES0_EE")
!1890 = !{!1891, !1892}
!1891 = !DITemplateValueParameter(name: "_Np", type: !17, value: i64 0)
!1892 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !624)
!1893 = !{!1886, !623}
!1894 = !DILocalVariable(name: "__t", arg: 1, scope: !1878, file: !84, line: 1801, type: !636)
!1895 = !DILocation(line: 1801, column: 31, scope: !1878)
!1896 = !DILocation(line: 1804, column: 66, scope: !1878)
!1897 = !DILocation(line: 1804, column: 43, scope: !1878)
!1898 = !DILocation(line: 1804, column: 14, scope: !1878)
!1899 = !DILocation(line: 1804, column: 7, scope: !1878)
!1900 = distinct !DISubprogram(name: "move<std::tuple<void (*)(int *), int *> &>", linkageName: "_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_", scope: !6, file: !1644, line: 97, type: !1901, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1906, retainedNodes: !154)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1903, !640}
!1903 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1905, file: !307, line: 1620, baseType: !474)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::tuple<void (*)(int *), int *> &>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1906, identifier: "_ZTSSt16remove_referenceIRSt5tupleIJPFvPiES1_EEE")
!1906 = !{!1907}
!1907 = !DITemplateTypeParameter(name: "_Tp", type: !640)
!1908 = !DILocalVariable(name: "__t", arg: 1, scope: !1900, file: !1644, line: 97, type: !640)
!1909 = !DILocation(line: 97, column: 16, scope: !1900)
!1910 = !DILocation(line: 98, column: 71, scope: !1900)
!1911 = !DILocation(line: 98, column: 7, scope: !1900)
!1912 = distinct !DISubprogram(name: "get<1UL, void (*)(int *), int *>", linkageName: "_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_", scope: !6, file: !84, line: 1801, type: !1913, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1925, retainedNodes: !154)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !636}
!1915 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<void (*)(int *), int *> >", scope: !6, file: !1850, line: 84, baseType: !1917)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1918, file: !84, line: 1768, baseType: !1921)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<void (*)(int *), int *> >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1919, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPFvPiES1_EEE")
!1919 = !{!1920, !1887}
!1920 = !DITemplateValueParameter(name: "__i", type: !17, value: i64 1)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1922, file: !1850, line: 237, baseType: !453)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, void (*)(int *), int *>", scope: !6, file: !1850, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1923, identifier: "_ZTSSt9_Nth_typeILm1EJPFvPiES0_EE")
!1923 = !{!1924, !1892}
!1924 = !DITemplateValueParameter(name: "_Np", type: !17, value: i64 1)
!1925 = !{!1920, !623}
!1926 = !DILocalVariable(name: "__t", arg: 1, scope: !1912, file: !84, line: 1801, type: !636)
!1927 = !DILocation(line: 1801, column: 31, scope: !1912)
!1928 = !DILocation(line: 1804, column: 66, scope: !1912)
!1929 = !DILocation(line: 1804, column: 43, scope: !1912)
!1930 = !DILocation(line: 1804, column: 14, scope: !1912)
!1931 = !DILocation(line: 1804, column: 7, scope: !1912)
!1932 = distinct !DISubprogram(name: "__invoke_impl<void, void (*)(int *), int *>", linkageName: "_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_", scope: !6, file: !441, line: 60, type: !1933, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1935, retainedNodes: !154)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !466, !449, !454}
!1935 = !{!1936, !1937, !457}
!1936 = !DITemplateTypeParameter(name: "_Res", type: null)
!1937 = !DITemplateTypeParameter(name: "_Fn", type: !450)
!1938 = !DILocalVariable(arg: 1, scope: !1932, file: !441, line: 60, type: !466)
!1939 = !DILocation(line: 60, column: 33, scope: !1932)
!1940 = !DILocalVariable(name: "__f", arg: 2, scope: !1932, file: !441, line: 60, type: !449)
!1941 = !DILocation(line: 60, column: 41, scope: !1932)
!1942 = !DILocalVariable(name: "__args", arg: 3, scope: !1932, file: !441, line: 60, type: !454)
!1943 = !DILocation(line: 60, column: 57, scope: !1932)
!1944 = !DILocation(line: 61, column: 32, scope: !1932)
!1945 = !DILocation(line: 61, column: 14, scope: !1932)
!1946 = !DILocation(line: 61, column: 57, scope: !1932)
!1947 = !DILocation(line: 61, column: 37, scope: !1932)
!1948 = !DILocation(line: 61, column: 7, scope: !1932)
!1949 = distinct !DISubprogram(name: "forward<void (*)(int *)>", linkageName: "_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE", scope: !6, file: !1644, line: 70, type: !1950, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1955, retainedNodes: !154)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!449, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1954, file: !307, line: 1616, baseType: !450)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*)(int *)>", scope: !6, file: !307, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1955, identifier: "_ZTSSt16remove_referenceIPFvPiEE")
!1955 = !{!1956}
!1956 = !DITemplateTypeParameter(name: "_Tp", type: !450)
!1957 = !DILocalVariable(name: "__t", arg: 1, scope: !1949, file: !1644, line: 70, type: !1952)
!1958 = !DILocation(line: 70, column: 56, scope: !1949)
!1959 = !DILocation(line: 71, column: 33, scope: !1949)
!1960 = !DILocation(line: 71, column: 7, scope: !1949)
!1961 = distinct !DISubprogram(name: "__get_helper<0UL, void (*)(int *), int *>", linkageName: "_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE", scope: !6, file: !84, line: 1773, type: !584, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1962, retainedNodes: !154)
!1962 = !{!1886, !582, !1963}
!1963 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !458)
!1964 = !DILocalVariable(name: "__t", arg: 1, scope: !1961, file: !84, line: 1773, type: !586)
!1965 = !DILocation(line: 1773, column: 53, scope: !1961)
!1966 = !DILocation(line: 1774, column: 57, scope: !1961)
!1967 = !DILocation(line: 1774, column: 14, scope: !1961)
!1968 = !DILocation(line: 1774, column: 7, scope: !1961)
!1969 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_", scope: !477, file: !84, line: 269, type: !584, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !583, retainedNodes: !154)
!1970 = !DILocalVariable(name: "__t", arg: 1, scope: !1969, file: !84, line: 269, type: !586)
!1971 = !DILocation(line: 269, column: 28, scope: !1969)
!1972 = !DILocation(line: 269, column: 66, scope: !1969)
!1973 = !DILocation(line: 269, column: 51, scope: !1969)
!1974 = !DILocation(line: 269, column: 44, scope: !1969)
!1975 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_", scope: !549, file: !84, line: 234, type: !574, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !573, retainedNodes: !154)
!1976 = !DILocalVariable(name: "__b", arg: 1, scope: !1975, file: !84, line: 234, type: !577)
!1977 = !DILocation(line: 234, column: 27, scope: !1975)
!1978 = !DILocation(line: 234, column: 50, scope: !1975)
!1979 = !DILocation(line: 234, column: 54, scope: !1975)
!1980 = !DILocation(line: 234, column: 43, scope: !1975)
!1981 = distinct !DISubprogram(name: "__get_helper<1UL, int *>", linkageName: "_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE", scope: !6, file: !84, line: 1773, type: !518, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1982, retainedNodes: !154)
!1982 = !{!1920, !516, !1983}
!1983 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !154)
!1984 = !DILocalVariable(name: "__t", arg: 1, scope: !1981, file: !84, line: 1773, type: !520)
!1985 = !DILocation(line: 1773, column: 53, scope: !1981)
!1986 = !DILocation(line: 1774, column: 57, scope: !1981)
!1987 = !DILocation(line: 1774, column: 14, scope: !1981)
!1988 = !DILocation(line: 1774, column: 7, scope: !1981)
!1989 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_", scope: !480, file: !84, line: 497, type: !518, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !517, retainedNodes: !154)
!1990 = !DILocalVariable(name: "__t", arg: 1, scope: !1989, file: !84, line: 497, type: !520)
!1991 = !DILocation(line: 497, column: 28, scope: !1989)
!1992 = !DILocation(line: 497, column: 66, scope: !1989)
!1993 = !DILocation(line: 497, column: 51, scope: !1989)
!1994 = !DILocation(line: 497, column: 44, scope: !1989)
!1995 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_", scope: !483, file: !84, line: 234, type: !508, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !507, retainedNodes: !154)
!1996 = !DILocalVariable(name: "__b", arg: 1, scope: !1995, file: !84, line: 234, type: !511)
!1997 = !DILocation(line: 234, column: 27, scope: !1995)
!1998 = !DILocation(line: 234, column: 50, scope: !1995)
!1999 = !DILocation(line: 234, column: 54, scope: !1995)
!2000 = !DILocation(line: 234, column: 43, scope: !1995)
!2001 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_", scope: !77, file: !74, line: 241, type: !2002, scopeLine: 241, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !2004, retainedNodes: !154)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !369, !327}
!2004 = !DISubprogram(name: "__uniq_ptr_impl", scope: !77, type: !2002, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2005 = !DILocalVariable(name: "this", arg: 1, scope: !2001, type: !2006, flags: DIFlagArtificial | DIFlagObjectPointer)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2007 = !DILocation(line: 0, scope: !2001)
!2008 = !DILocalVariable(arg: 2, scope: !2001, type: !327, flags: DIFlagArtificial)
!2009 = !DILocation(line: 241, column: 40, scope: !2001)
!2010 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_", scope: !80, file: !74, line: 176, type: !325, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !324, retainedNodes: !154)
!2011 = !DILocalVariable(name: "this", arg: 1, scope: !2010, type: !2012, flags: DIFlagArtificial | DIFlagObjectPointer)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2013 = !DILocation(line: 0, scope: !2010)
!2014 = !DILocalVariable(name: "__p", arg: 2, scope: !2010, file: !74, line: 176, type: !327)
!2015 = !DILocation(line: 176, column: 31, scope: !2010)
!2016 = !DILocation(line: 176, column: 38, scope: !2010)
!2017 = !DILocation(line: 176, column: 58, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !74, line: 176, column: 45)
!2019 = !DILocation(line: 176, column: 47, scope: !2018)
!2020 = !DILocation(line: 176, column: 56, scope: !2018)
!2021 = !DILocation(line: 176, column: 63, scope: !2010)
!2022 = distinct !DISubprogram(name: "tuple<true, true>", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv", scope: !83, file: !84, line: 1310, type: !2023, scopeLine: 1312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2026, declaration: !2025, retainedNodes: !154)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !295}
!2025 = !DISubprogram(name: "tuple<true, true>", scope: !83, file: !84, line: 1310, type: !2023, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2026)
!2026 = !{!2027, !1766}
!2027 = !DITemplateValueParameter(name: "_Dummy", type: !55, defaulted: true, value: i8 1)
!2028 = !DILocalVariable(name: "this", arg: 1, scope: !2022, type: !2029, flags: DIFlagArtificial | DIFlagObjectPointer)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2030 = !DILocation(line: 0, scope: !2022)
!2031 = !DILocation(line: 1312, column: 17, scope: !2022)
!2032 = !DILocation(line: 1312, column: 4, scope: !2022)
!2033 = !DILocation(line: 1312, column: 19, scope: !2022)
!2034 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !80, file: !74, line: 197, type: !343, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !342, retainedNodes: !154)
!2035 = !DILocalVariable(name: "this", arg: 1, scope: !2034, type: !2012, flags: DIFlagArtificial | DIFlagObjectPointer)
!2036 = !DILocation(line: 0, scope: !2034)
!2037 = !DILocation(line: 197, column: 57, scope: !2034)
!2038 = !DILocation(line: 197, column: 45, scope: !2034)
!2039 = !DILocation(line: 197, column: 38, scope: !2034)
!2040 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev", scope: !87, file: !84, line: 280, type: !266, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !265, retainedNodes: !154)
!2041 = !DILocalVariable(name: "this", arg: 1, scope: !2040, type: !2042, flags: DIFlagArtificial | DIFlagObjectPointer)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2043 = !DILocation(line: 0, scope: !2040)
!2044 = !DILocation(line: 281, column: 31, scope: !2040)
!2045 = !DILocation(line: 281, column: 9, scope: !2040)
!2046 = !DILocation(line: 281, column: 23, scope: !2040)
!2047 = !DILocation(line: 281, column: 33, scope: !2040)
!2048 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev", scope: !90, file: !84, line: 503, type: !186, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !185, retainedNodes: !154)
!2049 = !DILocalVariable(name: "this", arg: 1, scope: !2048, type: !2050, flags: DIFlagArtificial | DIFlagObjectPointer)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2051 = !DILocation(line: 0, scope: !2048)
!2052 = !DILocation(line: 504, column: 17, scope: !2048)
!2053 = !DILocation(line: 504, column: 9, scope: !2048)
!2054 = !DILocation(line: 504, column: 19, scope: !2048)
!2055 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev", scope: !210, file: !84, line: 190, type: !214, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !213, retainedNodes: !154)
!2056 = !DILocalVariable(name: "this", arg: 1, scope: !2055, type: !2057, flags: DIFlagArtificial | DIFlagObjectPointer)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2058 = !DILocation(line: 0, scope: !2055)
!2059 = !DILocation(line: 191, column: 9, scope: !2055)
!2060 = !DILocation(line: 191, column: 26, scope: !2055)
!2061 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev", scope: !93, file: !84, line: 81, type: !124, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !123, retainedNodes: !154)
!2062 = !DILocalVariable(name: "this", arg: 1, scope: !2061, type: !2063, flags: DIFlagArtificial | DIFlagObjectPointer)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2064 = !DILocation(line: 0, scope: !2061)
!2065 = !DILocation(line: 82, column: 9, scope: !2061)
!2066 = !DILocation(line: 82, column: 26, scope: !2061)
!2067 = distinct !DISubprogram(name: "get<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !6, file: !84, line: 1789, type: !2068, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2080, retainedNodes: !154)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !305}
!2070 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !1850, line: 84, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2073, file: !84, line: 1768, baseType: !2076)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2074, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2074 = !{!1886, !2075}
!2075 = !DITemplateTypeParameter(name: "_Tp", type: !83)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2077, file: !1850, line: 255, baseType: !107)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !1850, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2078, identifier: "_ZTSSt9_Nth_typeILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2078 = !{!1891, !2079}
!2079 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !287)
!2080 = !{!1886, !286}
!2081 = !DILocalVariable(name: "__t", arg: 1, scope: !2067, file: !84, line: 1789, type: !305)
!2082 = !DILocation(line: 1789, column: 30, scope: !2067)
!2083 = !DILocation(line: 1790, column: 37, scope: !2067)
!2084 = !DILocation(line: 1790, column: 14, scope: !2067)
!2085 = !DILocation(line: 1790, column: 7, scope: !2067)
!2086 = distinct !DISubprogram(name: "__get_helper<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE", scope: !6, file: !84, line: 1773, type: !247, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2087, retainedNodes: !154)
!2087 = !{!1886, !244, !2088}
!2088 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !207)
!2089 = !DILocalVariable(name: "__t", arg: 1, scope: !2086, file: !84, line: 1773, type: !249)
!2090 = !DILocation(line: 1773, column: 53, scope: !2086)
!2091 = !DILocation(line: 1774, column: 57, scope: !2086)
!2092 = !DILocation(line: 1774, column: 14, scope: !2086)
!2093 = !DILocation(line: 1774, column: 7, scope: !2086)
!2094 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !87, file: !84, line: 269, type: !247, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !246, retainedNodes: !154)
!2095 = !DILocalVariable(name: "__t", arg: 1, scope: !2094, file: !84, line: 269, type: !249)
!2096 = !DILocation(line: 269, column: 28, scope: !2094)
!2097 = !DILocation(line: 269, column: 66, scope: !2094)
!2098 = !DILocation(line: 269, column: 51, scope: !2094)
!2099 = !DILocation(line: 269, column: 44, scope: !2094)
!2100 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !210, file: !84, line: 234, type: !235, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !234, retainedNodes: !154)
!2101 = !DILocalVariable(name: "__b", arg: 1, scope: !2100, file: !84, line: 234, type: !238)
!2102 = !DILocation(line: 234, column: 27, scope: !2100)
!2103 = !DILocation(line: 234, column: 50, scope: !2100)
!2104 = !DILocation(line: 234, column: 54, scope: !2100)
!2105 = !DILocation(line: 234, column: 43, scope: !2100)
!2106 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !73, file: !74, line: 475, type: !412, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !411, retainedNodes: !154)
!2107 = !DILocalVariable(name: "this", arg: 1, scope: !2106, type: !1695, flags: DIFlagArtificial | DIFlagObjectPointer)
!2108 = !DILocation(line: 0, scope: !2106)
!2109 = !DILocation(line: 476, column: 16, scope: !2106)
!2110 = !DILocation(line: 476, column: 21, scope: !2106)
!2111 = !DILocation(line: 476, column: 9, scope: !2106)
!2112 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !96, file: !74, line: 93, type: !103, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !102, retainedNodes: !154)
!2113 = !DILocalVariable(name: "this", arg: 1, scope: !2112, type: !2114, flags: DIFlagArtificial | DIFlagObjectPointer)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2115 = !DILocation(line: 0, scope: !2112)
!2116 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2112, file: !74, line: 93, type: !107)
!2117 = !DILocation(line: 93, column: 23, scope: !2112)
!2118 = !DILocation(line: 99, column: 9, scope: !2112)
!2119 = !DILocation(line: 99, column: 2, scope: !2112)
!2120 = !DILocation(line: 100, column: 7, scope: !2112)
!2121 = distinct !DISubprogram(name: "move<std::thread::_State *&>", linkageName: "_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_", scope: !6, file: !1644, line: 97, type: !2122, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2127, retainedNodes: !154)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !237}
!2124 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2126, file: !307, line: 1620, baseType: !107)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::thread::_State *&>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2127, identifier: "_ZTSSt16remove_referenceIRPNSt6thread6_StateEE")
!2127 = !{!2128}
!2128 = !DITemplateTypeParameter(name: "_Tp", type: !237)
!2129 = !DILocalVariable(name: "__t", arg: 1, scope: !2121, file: !1644, line: 97, type: !237)
!2130 = !DILocation(line: 97, column: 16, scope: !2121)
!2131 = !DILocation(line: 98, column: 71, scope: !2121)
!2132 = !DILocation(line: 98, column: 7, scope: !2121)
!2133 = distinct !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !80, file: !74, line: 201, type: !352, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !351, retainedNodes: !154)
!2134 = !DILocalVariable(name: "this", arg: 1, scope: !2133, type: !2012, flags: DIFlagArtificial | DIFlagObjectPointer)
!2135 = !DILocation(line: 0, scope: !2133)
!2136 = !DILocation(line: 201, column: 61, scope: !2133)
!2137 = !DILocation(line: 201, column: 49, scope: !2133)
!2138 = !DILocation(line: 201, column: 42, scope: !2133)
!2139 = distinct !DISubprogram(name: "get<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !6, file: !84, line: 1789, type: !2140, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2150, retainedNodes: !154)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!2142, !305}
!2142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !1850, line: 84, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2145, file: !84, line: 1768, baseType: !2147)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2146, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2146 = !{!1920, !2075}
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2148, file: !1850, line: 237, baseType: !96)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !1850, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2149, identifier: "_ZTSSt9_Nth_typeILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2149 = !{!1924, !2079}
!2150 = !{!1920, !286}
!2151 = !DILocalVariable(name: "__t", arg: 1, scope: !2139, file: !84, line: 1789, type: !305)
!2152 = !DILocation(line: 1789, column: 30, scope: !2139)
!2153 = !DILocation(line: 1790, column: 37, scope: !2139)
!2154 = !DILocation(line: 1790, column: 14, scope: !2139)
!2155 = !DILocation(line: 1790, column: 7, scope: !2139)
!2156 = distinct !DISubprogram(name: "__get_helper<1UL, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE", scope: !6, file: !84, line: 1773, type: !177, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2157, retainedNodes: !154)
!2157 = !{!1920, !174, !1983}
!2158 = !DILocalVariable(name: "__t", arg: 1, scope: !2156, file: !84, line: 1773, type: !179)
!2159 = !DILocation(line: 1773, column: 53, scope: !2156)
!2160 = !DILocation(line: 1774, column: 57, scope: !2156)
!2161 = !DILocation(line: 1774, column: 14, scope: !2156)
!2162 = !DILocation(line: 1774, column: 7, scope: !2156)
!2163 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !90, file: !84, line: 497, type: !177, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !176, retainedNodes: !154)
!2164 = !DILocalVariable(name: "__t", arg: 1, scope: !2163, file: !84, line: 497, type: !179)
!2165 = !DILocation(line: 497, column: 28, scope: !2163)
!2166 = !DILocation(line: 497, column: 66, scope: !2163)
!2167 = !DILocation(line: 497, column: 51, scope: !2163)
!2168 = !DILocation(line: 497, column: 44, scope: !2163)
!2169 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !93, file: !84, line: 125, type: !165, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !164, retainedNodes: !154)
!2170 = !DILocalVariable(name: "__b", arg: 1, scope: !2169, file: !84, line: 125, type: !168)
!2171 = !DILocation(line: 125, column: 27, scope: !2169)
!2172 = !DILocation(line: 125, column: 50, scope: !2169)
!2173 = !DILocation(line: 125, column: 54, scope: !2169)
!2174 = !DILocation(line: 125, column: 43, scope: !2169)
