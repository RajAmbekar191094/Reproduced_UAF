; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_val.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_val.cpp"
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
%"struct.std::_Head_base.5" = type { i32 }
%"struct.std::_Head_base.6" = type { void (i32)* }
%"struct.std::default_delete" = type { i8 }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::__invoke_other" = type { i8 }
%"struct.std::_Tuple_impl.0" = type { i8 }
%"struct.std::_Head_base" = type { i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }

$_ZNSt6threadC2IRFviEJRiEvEEOT_DpOT0_ = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEC2IJRS3_RiEEEDpOT_ = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev = comdat any

$_ZNSt6thread6_StateC2Ev = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEC2IJRS2_RiEEEDpOT_ = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEE6_M_runEv = comdat any

$_ZNSt5tupleIJPFviEiEEC2IRS0_RiLb1EEEOT_OT0_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFviEiEEC2IRS0_JRiEvEEOT_DpOT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Tuple_implILm1EJiEEC2IRiEEOT_ = comdat any

$_ZNSt10_Head_baseILm0EPFviELb0EEC2ERKS1_ = comdat any

$_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_ = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEclEv = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE = comdat any

$_ZSt8__invokeIPFviEJiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_ = comdat any

$_ZSt3getILm0EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_ = comdat any

$_ZSt4moveIRSt5tupleIJPFviEiEEEONSt16remove_referenceIT_E4typeEOS6_ = comdat any

$_ZSt3getILm1EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_ = comdat any

$_ZSt13__invoke_implIvPFviEJiEET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZSt12__get_helperILm0EPFviEJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERS2_ = comdat any

$_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERS2_ = comdat any

$_ZSt12__get_helperILm1EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJiEE7_M_headERS0_ = comdat any

$_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_ = comdat any

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

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = comdat any

@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Value of x is:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED0Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEE6_M_runEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = linkonce_odr dso_local constant [60 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external dso_local constant i8*
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt6thread6_StateE to i8*) }, comdat, align 8
@_ZTVNSt6thread6_StateE = external dso_local unnamed_addr constant { [5 x i8*] }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11thread_funci(i32 noundef %x) #0 !dbg !1555 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !1557, metadata !DIExpression()), !dbg !1558
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !1559
  %0 = load i32, i32* %x.addr, align 4, !dbg !1560
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call, i32 noundef %0), !dbg !1561
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1562
  ret void, !dbg !1563
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #2

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14threadFunctionv() #0 !dbg !1564 {
entry:
  %x = alloca i32, align 4
  %t1 = alloca %"class.std::thread", align 8
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 10, i32* %x, align 4, !dbg !1566
  call void @llvm.dbg.declare(metadata %"class.std::thread"* %t1, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @_ZNSt6threadC2IRFviEJRiEvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t1, void (i32)* noundef nonnull @_Z11thread_funci, i32* noundef nonnull align 4 dereferenceable(4) %x), !dbg !1568
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t1) #13, !dbg !1569
  ret void, !dbg !1569
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2IRFviEJRiEvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, void (i32)* noundef nonnull %__f, i32* noundef nonnull align 4 dereferenceable(4) %__args) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1570 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca void (i32)*, align 8
  %__args.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::unique_ptr", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1581, metadata !DIExpression()), !dbg !1583
  store void (i32)* %__f, void (i32)** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__f.addr, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i32* %__args, i32** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__args.addr, metadata !1586, metadata !DIExpression()), !dbg !1587
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !1588
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id) #13, !dbg !1588
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 24) #14, !dbg !1589, !heapallocsite !466
  %0 = bitcast i8* %call to %"struct.std::thread::_State_impl"*, !dbg !1589
  %1 = load void (i32)*, void (i32)** %__f.addr, align 8, !dbg !1591
  %call2 = call noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %1) #13, !dbg !1592
  %2 = load i32*, i32** %__args.addr, align 8, !dbg !1593
  %call3 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %2) #13, !dbg !1594
  invoke void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEC2IJRS3_RiEEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %0, void (i32)* noundef nonnull %call2, i32* noundef nonnull align 4 dereferenceable(4) %call3)
          to label %invoke.cont unwind label %lpad, !dbg !1595

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"struct.std::thread::_State_impl"* %0 to %"struct.std::thread::_State"*, !dbg !1589
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, %"struct.std::thread::_State"* noundef %3) #13, !dbg !1596
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1, %"class.std::unique_ptr"* noundef %agg.tmp, void ()* noundef @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %invoke.cont5 unwind label %lpad4, !dbg !1597

invoke.cont5:                                     ; preds = %invoke.cont
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #13, !dbg !1597
  ret void, !dbg !1598

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !1599
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1599
  store i8* %5, i8** %exn.slot, align 8, !dbg !1599
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !1599
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !1599
  call void @_ZdlPv(i8* noundef %call) #15, !dbg !1589
  br label %eh.resume, !dbg !1589

lpad4:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1599
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1599
  store i8* %8, i8** %exn.slot, align 8, !dbg !1599
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1599
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1599
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #13, !dbg !1597
  br label %eh.resume, !dbg !1597

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1589
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1589
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1589
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1589
  resume { i8*, i32 } %lpad.val6, !dbg !1589
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1600 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1601, metadata !DIExpression()), !dbg !1602
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !1603
  br i1 %call, label %if.then, label %if.end, !dbg !1606

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #16, !dbg !1607
  unreachable, !dbg !1607

_ZSt11__terminatev.exit:                          ; No predecessors!
  unreachable, !dbg !1610

if.end:                                           ; preds = %entry
  ret void, !dbg !1611
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !1612 {
entry:
  call void @_Z14threadFunctionv(), !dbg !1613
  ret i32 0, !dbg !1614
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !1615 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !1616, metadata !DIExpression()), !dbg !1618
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !1619
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*, !dbg !1619
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*, !dbg !1619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !dbg !1619
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %agg.tmp2) #13, !dbg !1620
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0, !dbg !1621
  %2 = load i64, i64* %coerce.dive, align 8, !dbg !1621
  %coerce.dive3 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0, !dbg !1621
  %3 = load i64, i64* %coerce.dive3, align 8, !dbg !1621
  %call = call noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #13, !dbg !1621
  %lnot = xor i1 %call, true, !dbg !1622
  ret i1 %lnot, !dbg !1623
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #6 comdat !dbg !1624 {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__x, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__y, metadata !1629, metadata !DIExpression()), !dbg !1630
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0, !dbg !1631
  %0 = load i64, i64* %_M_thread, align 8, !dbg !1631
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0, !dbg !1632
  %1 = load i64, i64* %_M_thread2, align 8, !dbg !1632
  %cmp = icmp eq i64 %0, %1, !dbg !1633
  ret i1 %cmp, !dbg !1634
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1635 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %this.addr, metadata !1636, metadata !DIExpression()), !dbg !1638
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0, !dbg !1639
  store i64 0, i64* %_M_thread, align 8, !dbg !1639
  ret void, !dbg !1640
}

; Function Attrs: noreturn nounwind
declare dso_local void @_ZSt9terminatev() #8

declare dso_local void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8), %"class.std::unique_ptr"* noundef, void ()* noundef) #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %__t) #6 comdat !dbg !1641 {
entry:
  %__t.addr = alloca void (i32)*, align 8
  store void (i32)* %__t, void (i32)** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__t.addr, metadata !1650, metadata !DIExpression()), !dbg !1651
  %0 = load void (i32)*, void (i32)** %__t.addr, align 8, !dbg !1652
  ret void (i32)* %0, !dbg !1653
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %__t) #6 comdat !dbg !1654 {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__t.addr, metadata !1662, metadata !DIExpression()), !dbg !1663
  %0 = load i32*, i32** %__t.addr, align 8, !dbg !1664
  ret i32* %0, !dbg !1665
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEC2IJRS3_RiEEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this, void (i32)* noundef nonnull %__args, i32* noundef nonnull align 4 dereferenceable(4) %__args1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1666 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  %__args.addr = alloca void (i32)*, align 8
  %__args.addr2 = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1674, metadata !DIExpression()), !dbg !1676
  store void (i32)* %__args, void (i32)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__args.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  store i32* %__args1, i32** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32** %__args.addr2, metadata !1679, metadata !DIExpression()), !dbg !1678
  %this3 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !1680
  call void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1681
  %1 = bitcast %"struct.std::thread::_State_impl"* %this3 to i32 (...)***, !dbg !1680
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !1680
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this3, i32 0, i32 1, !dbg !1682
  %2 = load void (i32)*, void (i32)** %__args.addr, align 8, !dbg !1683
  %call = call noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %2) #13, !dbg !1684
  %3 = load i32*, i32** %__args.addr2, align 8, !dbg !1683
  %call4 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %3) #13, !dbg !1684
  invoke void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEC2IJRS2_RiEEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func, void (i32)* noundef nonnull %call, i32* noundef nonnull align 4 dereferenceable(4) %call4)
          to label %invoke.cont unwind label %lpad, !dbg !1682

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1685

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !1685
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1685
  store i8* %5, i8** %exn.slot, align 8, !dbg !1685
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !1685
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !1685
  %7 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !1686
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %7) #13, !dbg !1686
  br label %eh.resume, !dbg !1686

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1686
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1686
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1686
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1686
  resume { i8*, i32 } %lpad.val5, !dbg !1686
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1688 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !1692, metadata !DIExpression()), !dbg !1694
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !1695, metadata !DIExpression()), !dbg !1696
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !1697
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !1698
  invoke void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %_M_t, %"struct.std::thread::_State"* noundef %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1697

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1699

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1697
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !1697
  call void @__clang_call_terminate(i8* %2) #16, !dbg !1697
  unreachable, !dbg !1697
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 !dbg !1700 {
entry:
  call void bitcast (i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create to void ()*)(), !dbg !1701
  call void bitcast (i32 (i64, i8**)* @pthread_join to void ()*)(), !dbg !1702
  ret void, !dbg !1703
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1704 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca %"struct.std::thread::_State"**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !1705, metadata !DIExpression()), !dbg !1706
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__ptr, metadata !1707, metadata !DIExpression()), !dbg !1709
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !1710
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !1710
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1711
  store %"struct.std::thread::_State"** %call, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1709
  %1 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1712
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %1, align 8, !dbg !1712
  %cmp = icmp ne %"struct.std::thread::_State"* %2, null, !dbg !1714
  br i1 %cmp, label %if.then, label %if.end, !dbg !1715

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !1716
  %3 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1717
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %3) #13, !dbg !1718
  %4 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %call3, align 8, !dbg !1718
  invoke void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %call2, %"struct.std::thread::_State"* noundef %4)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1716

invoke.cont:                                      ; preds = %if.then
  br label %if.end, !dbg !1716

if.end:                                           ; preds = %invoke.cont, %entry
  %5 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !1719
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %5, align 8, !dbg !1720
  ret void, !dbg !1721

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1716
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1716
  call void @__clang_call_terminate(i8* %7) #16, !dbg !1716
  unreachable, !dbg !1716
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !1722 {
entry:
  %this.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::thread::_State"* %this, %"struct.std::thread::_State"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %this.addr, metadata !1724, metadata !DIExpression()), !dbg !1725
  %this1 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State"* %this1 to i32 (...)***, !dbg !1726
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread6_StateE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !1726
  ret void, !dbg !1726
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEC2IJRS2_RiEEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this, void (i32)* noundef nonnull %__args, i32* noundef nonnull align 4 dereferenceable(4) %__args1) unnamed_addr #4 comdat align 2 !dbg !1727 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %__args.addr = alloca void (i32)*, align 8
  %__args.addr2 = alloca i32*, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1731, metadata !DIExpression()), !dbg !1733
  store void (i32)* %__args, void (i32)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__args.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i32* %__args1, i32** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32** %__args.addr2, metadata !1736, metadata !DIExpression()), !dbg !1735
  %this3 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this3, i32 0, i32 0, !dbg !1737
  %0 = load void (i32)*, void (i32)** %__args.addr, align 8, !dbg !1738
  %call = call noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %0) #13, !dbg !1739
  %1 = load i32*, i32** %__args.addr2, align 8, !dbg !1738
  %call4 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !1739
  call void @_ZNSt5tupleIJPFviEiEEC2IRS0_RiLb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t, void (i32)* noundef nonnull %call, i32* noundef nonnull align 4 dereferenceable(4) %call4) #13, !dbg !1737
  ret void, !dbg !1740
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #4 comdat align 2 !dbg !1741 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1743, metadata !DIExpression()), !dbg !1744
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to %"struct.std::thread::_State"*, !dbg !1745
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1745
  ret void, !dbg !1747
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED0Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #4 comdat align 2 !dbg !1748 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1749, metadata !DIExpression()), !dbg !1750
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this1) #13, !dbg !1751
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to i8*, !dbg !1751
  call void @_ZdlPv(i8* noundef %0) #15, !dbg !1751
  ret void, !dbg !1751
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEE6_M_runEv(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #0 comdat align 2 !dbg !1752 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !1753, metadata !DIExpression()), !dbg !1754
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this1, i32 0, i32 1, !dbg !1755
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func), !dbg !1755
  ret void, !dbg !1756
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPFviEiEEC2IRS0_RiLb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %this, void (i32)* noundef nonnull %__a1, i32* noundef nonnull align 4 dereferenceable(4) %__a2) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1757 {
entry:
  %this.addr = alloca %"class.std::tuple.2"*, align 8
  %__a1.addr = alloca void (i32)*, align 8
  %__a2.addr = alloca i32*, align 8
  store %"class.std::tuple.2"* %this, %"class.std::tuple.2"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %this.addr, metadata !1765, metadata !DIExpression()), !dbg !1767
  store void (i32)* %__a1, void (i32)** %__a1.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__a1.addr, metadata !1768, metadata !DIExpression()), !dbg !1769
  store i32* %__a2, i32** %__a2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__a2.addr, metadata !1770, metadata !DIExpression()), !dbg !1771
  %this1 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.2"* %this1 to %"struct.std::_Tuple_impl.3"*, !dbg !1772
  %1 = load void (i32)*, void (i32)** %__a1.addr, align 8, !dbg !1773
  %call = call noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %1) #13, !dbg !1774
  %2 = load i32*, i32** %__a2.addr, align 8, !dbg !1775
  %call2 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %2) #13, !dbg !1776
  invoke void @_ZNSt11_Tuple_implILm0EJPFviEiEEC2IRS0_JRiEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0, void (i32)* noundef nonnull %call, i32* noundef nonnull align 4 dereferenceable(4) %call2)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1777

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1778

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1777
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !1777
  call void @__clang_call_terminate(i8* %4) #16, !dbg !1777
  unreachable, !dbg !1777
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPFviEiEEC2IRS0_JRiEvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %this, void (i32)* noundef nonnull %__head, i32* noundef nonnull align 4 dereferenceable(4) %__tail) unnamed_addr #3 comdat align 2 !dbg !1779 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  %__head.addr = alloca void (i32)*, align 8
  %__tail.addr = alloca i32*, align 8
  %ref.tmp = alloca void (i32)*, align 8
  store %"struct.std::_Tuple_impl.3"* %this, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %this.addr, metadata !1786, metadata !DIExpression()), !dbg !1788
  store void (i32)* %__head, void (i32)** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %__head.addr, metadata !1789, metadata !DIExpression()), !dbg !1790
  store i32* %__tail, i32** %__tail.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__tail.addr, metadata !1791, metadata !DIExpression()), !dbg !1792
  %this1 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to %"struct.std::_Tuple_impl.4"*, !dbg !1793
  %1 = load i32*, i32** %__tail.addr, align 8, !dbg !1794
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !1795
  call void @_ZNSt11_Tuple_implILm1EJiEEC2IRiEEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %call), !dbg !1796
  %2 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to i8*, !dbg !1793
  %3 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1793
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.6"*, !dbg !1793
  %5 = load void (i32)*, void (i32)** %__head.addr, align 8, !dbg !1797
  %call2 = call noundef nonnull void (i32)* @_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)* noundef nonnull %5) #13, !dbg !1798
  store void (i32)* %call2, void (i32)** %ref.tmp, align 8, !dbg !1798
  call void @_ZNSt10_Head_baseILm0EPFviELb0EEC2ERKS1_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %4, void (i32)** noundef nonnull align 8 dereferenceable(8) %ref.tmp), !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #13
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJiEEC2IRiEEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %this, i32* noundef nonnull align 4 dereferenceable(4) %__head) unnamed_addr #3 comdat align 2 !dbg !1801 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  %__head.addr = alloca i32*, align 8
  store %"struct.std::_Tuple_impl.4"* %this, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %this.addr, metadata !1807, metadata !DIExpression()), !dbg !1809
  store i32* %__head, i32** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__head.addr, metadata !1810, metadata !DIExpression()), !dbg !1811
  %this1 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.4"* %this1 to %"struct.std::_Head_base.5"*, !dbg !1812
  %1 = load i32*, i32** %__head.addr, align 8, !dbg !1813
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !1814
  call void @_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %call), !dbg !1815
  ret void, !dbg !1816
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPFviELb0EEC2ERKS1_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %this, void (i32)** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #4 comdat align 2 !dbg !1817 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.6"*, align 8
  %__h.addr = alloca void (i32)**, align 8
  store %"struct.std::_Head_base.6"* %this, %"struct.std::_Head_base.6"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %this.addr, metadata !1818, metadata !DIExpression()), !dbg !1820
  store void (i32)** %__h, void (i32)*** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)*** %__h.addr, metadata !1821, metadata !DIExpression()), !dbg !1822
  %this1 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %this1, i32 0, i32 0, !dbg !1823
  %0 = load void (i32)**, void (i32)*** %__h.addr, align 8, !dbg !1824
  %1 = load void (i32)*, void (i32)** %0, align 8, !dbg !1824
  store void (i32)* %1, void (i32)** %_M_head_impl, align 8, !dbg !1823
  ret void, !dbg !1825
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 4 dereferenceable(4) %this, i32* noundef nonnull align 4 dereferenceable(4) %__h) unnamed_addr #4 comdat align 2 !dbg !1826 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.5"*, align 8
  %__h.addr = alloca i32*, align 8
  store %"struct.std::_Head_base.5"* %this, %"struct.std::_Head_base.5"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %this.addr, metadata !1830, metadata !DIExpression()), !dbg !1832
  store i32* %__h, i32** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__h.addr, metadata !1833, metadata !DIExpression()), !dbg !1834
  %this1 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %this1, i32 0, i32 0, !dbg !1835
  %0 = load i32*, i32** %__h.addr, align 8, !dbg !1836
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #13, !dbg !1837
  %1 = load i32, i32* %call, align 4, !dbg !1837
  store i32 %1, i32* %_M_head_impl, align 4, !dbg !1835
  ret void, !dbg !1838
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 !dbg !1839 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1840, metadata !DIExpression()), !dbg !1841
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this1), !dbg !1842
  ret void, !dbg !1843
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 !dbg !1844 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !1857, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.declare(metadata %"struct.std::_Index_tuple"* %0, metadata !1859, metadata !DIExpression()), !dbg !1860
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !1861
  %call = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFviEiEEEONSt16remove_referenceIT_E4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t) #13, !dbg !1862
  %call2 = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt3getILm0EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call) #13, !dbg !1863
  %_M_t3 = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !1861
  %call4 = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFviEiEEEONSt16remove_referenceIT_E4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t3) #13, !dbg !1862
  %call5 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3getILm1EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call4) #13, !dbg !1863
  call void @_ZSt8__invokeIPFviEJiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_(void (i32)** noundef nonnull align 8 dereferenceable(8) %call2, i32* noundef nonnull align 4 dereferenceable(4) %call5), !dbg !1864
  ret void, !dbg !1865
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__invokeIPFviEJiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_(void (i32)** noundef nonnull align 8 dereferenceable(8) %__fn, i32* noundef nonnull align 4 dereferenceable(4) %__args) #0 comdat !dbg !442 {
entry:
  %__fn.addr = alloca void (i32)**, align 8
  %__args.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.std::__invoke_other", align 1
  store void (i32)** %__fn, void (i32)*** %__fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)*** %__fn.addr, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i32* %__args, i32** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__args.addr, metadata !1868, metadata !DIExpression()), !dbg !1869
  %0 = load void (i32)**, void (i32)*** %__fn.addr, align 8, !dbg !1870
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)** noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !1871
  %1 = load i32*, i32** %__args.addr, align 8, !dbg !1872
  %call1 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !1873
  call void @_ZSt13__invoke_implIvPFviEJiEET_St14__invoke_otherOT0_DpOT1_(void (i32)** noundef nonnull align 8 dereferenceable(8) %call, i32* noundef nonnull align 4 dereferenceable(4) %call1), !dbg !1874
  ret void, !dbg !1875
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt3getILm0EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1876 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1892, metadata !DIExpression()), !dbg !1893
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1894
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.3"*, !dbg !1894
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt12__get_helperILm0EPFviEJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %1) #13, !dbg !1895
  %call1 = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)** noundef nonnull align 8 dereferenceable(8) %call) #13, !dbg !1896
  ret void (i32)** %call1, !dbg !1897
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFviEiEEEONSt16remove_referenceIT_E4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1898 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1906, metadata !DIExpression()), !dbg !1907
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1908
  ret %"class.std::tuple.2"* %0, !dbg !1909
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3getILm1EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1910 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !1924, metadata !DIExpression()), !dbg !1925
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !1926
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.4"*, !dbg !1926
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt12__get_helperILm1EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !1927
  %call1 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %call) #13, !dbg !1928
  ret i32* %call1, !dbg !1929
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvPFviEJiEET_St14__invoke_otherOT0_DpOT1_(void (i32)** noundef nonnull align 8 dereferenceable(8) %__f, i32* noundef nonnull align 4 dereferenceable(4) %__args) #0 comdat !dbg !1930 {
entry:
  %0 = alloca %"struct.std::__invoke_other", align 1
  %__f.addr = alloca void (i32)**, align 8
  %__args.addr = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__invoke_other"* %0, metadata !1936, metadata !DIExpression()), !dbg !1937
  store void (i32)** %__f, void (i32)*** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)*** %__f.addr, metadata !1938, metadata !DIExpression()), !dbg !1939
  store i32* %__args, i32** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__args.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  %1 = load void (i32)**, void (i32)*** %__f.addr, align 8, !dbg !1942
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)** noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !1943
  %2 = load void (i32)*, void (i32)** %call, align 8, !dbg !1943
  %3 = load i32*, i32** %__args.addr, align 8, !dbg !1944
  %call1 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %3) #13, !dbg !1945
  %4 = load i32, i32* %call1, align 4, !dbg !1945
  call void %2(i32 noundef %4), !dbg !1943
  ret void, !dbg !1946
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE(void (i32)** noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !1947 {
entry:
  %__t.addr = alloca void (i32)**, align 8
  store void (i32)** %__t, void (i32)*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)*** %__t.addr, metadata !1955, metadata !DIExpression()), !dbg !1956
  %0 = load void (i32)**, void (i32)*** %__t.addr, align 8, !dbg !1957
  ret void (i32)** %0, !dbg !1958
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %__t) #6 comdat !dbg !1959 {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %__t.addr, metadata !1967, metadata !DIExpression()), !dbg !1968
  %0 = load i32*, i32** %__t.addr, align 8, !dbg !1969
  ret i32* %0, !dbg !1970
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZSt12__get_helperILm0EPFviEJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat !dbg !1971 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !1974, metadata !DIExpression()), !dbg !1975
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !1976
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERS2_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0) #13, !dbg !1977
  ret void (i32)** %call, !dbg !1978
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERS2_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #6 comdat align 2 !dbg !1979 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !1980, metadata !DIExpression()), !dbg !1981
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !1982
  %1 = bitcast %"struct.std::_Tuple_impl.3"* %0 to i8*, !dbg !1982
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1982
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.6"*, !dbg !1982
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %2) #13, !dbg !1983
  ret void (i32)** %call, !dbg !1984
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32)** @_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %__b) #6 comdat align 2 !dbg !1985 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.6"*, align 8
  store %"struct.std::_Head_base.6"* %__b, %"struct.std::_Head_base.6"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %__b.addr, metadata !1986, metadata !DIExpression()), !dbg !1987
  %0 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %__b.addr, align 8, !dbg !1988
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %0, i32 0, i32 0, !dbg !1989
  ret void (i32)** %_M_head_impl, !dbg !1990
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt12__get_helperILm1EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %__t) #6 comdat !dbg !1991 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !1994, metadata !DIExpression()), !dbg !1995
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !1996
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt11_Tuple_implILm1EJiEE7_M_headERS0_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %0) #13, !dbg !1997
  ret i32* %call, !dbg !1998
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt11_Tuple_implILm1EJiEE7_M_headERS0_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 4 dereferenceable(4) %__t) #6 comdat align 2 !dbg !1999 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !2002
  %1 = bitcast %"struct.std::_Tuple_impl.4"* %0 to %"struct.std::_Head_base.5"*, !dbg !2002
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_(%"struct.std::_Head_base.5"* noundef nonnull align 4 dereferenceable(4) %1) #13, !dbg !2003
  ret i32* %call, !dbg !2004
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_(%"struct.std::_Head_base.5"* noundef nonnull align 4 dereferenceable(4) %__b) #6 comdat align 2 !dbg !2005 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.5"*, align 8
  store %"struct.std::_Head_base.5"* %__b, %"struct.std::_Head_base.5"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %__b.addr, metadata !2006, metadata !DIExpression()), !dbg !2007
  %0 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %__b.addr, align 8, !dbg !2008
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %0, i32 0, i32 0, !dbg !2009
  ret i32* %_M_head_impl, !dbg !2010
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !2011 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__uniq_ptr_data"** %this.addr, metadata !2015, metadata !DIExpression()), !dbg !2017
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %.addr, metadata !2018, metadata !DIExpression()), !dbg !2017
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*, !dbg !2019
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %.addr, align 8, !dbg !2019
  call void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::thread::_State"* noundef %2), !dbg !2019
  ret void, !dbg !2019
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #4 comdat align 2 !dbg !2020 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2021, metadata !DIExpression()), !dbg !2023
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !2024, metadata !DIExpression()), !dbg !2025
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2026
  call void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2026
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !2027
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this1) #13, !dbg !2029
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %call, align 8, !dbg !2030
  ret void, !dbg !2031
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2032 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %this.addr, metadata !2038, metadata !DIExpression()), !dbg !2040
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*, !dbg !2041
  invoke void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2042

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2043

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2042
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2042
  call void @__clang_call_terminate(i8* %2) #16, !dbg !2042
  unreachable, !dbg !2042
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2044 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2045, metadata !DIExpression()), !dbg !2046
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2047
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2048
  ret %"struct.std::thread::_State"** %call, !dbg !2049
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 !dbg !2050 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %this.addr, metadata !2051, metadata !DIExpression()), !dbg !2053
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.0"*, !dbg !2054
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2055
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base.1"*, !dbg !2054
  call void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1), !dbg !2056
  ret void, !dbg !2057
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !2058 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %this, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %this.addr, metadata !2059, metadata !DIExpression()), !dbg !2061
  %this1 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.0"* %this1 to %"struct.std::_Head_base"*, !dbg !2062
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2063
  ret void, !dbg !2064
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 !dbg !2065 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %this, %"struct.std::_Head_base.1"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %this.addr, metadata !2066, metadata !DIExpression()), !dbg !2068
  %this1 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %this1, i32 0, i32 0, !dbg !2069
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %_M_head_impl, align 8, !dbg !2069
  ret void, !dbg !2070
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #4 comdat align 2 !dbg !2071 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %this.addr, metadata !2072, metadata !DIExpression()), !dbg !2074
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %this1 to %"struct.std::default_delete"*, !dbg !2075
  ret void, !dbg !2076
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2077 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2091, metadata !DIExpression()), !dbg !2092
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2093
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*, !dbg !2093
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !2094
  ret %"struct.std::thread::_State"** %call, !dbg !2095
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2096 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2099, metadata !DIExpression()), !dbg !2100
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2101
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2102
  ret %"struct.std::thread::_State"** %call, !dbg !2103
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat align 2 !dbg !2104 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2105, metadata !DIExpression()), !dbg !2106
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2107
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*, !dbg !2107
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #13, !dbg !2108
  ret %"struct.std::thread::_State"** %call, !dbg !2109
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #6 comdat align 2 !dbg !2110 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %__b.addr, metadata !2111, metadata !DIExpression()), !dbg !2112
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8, !dbg !2113
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0, !dbg !2114
  ret %"struct.std::thread::_State"** %_M_head_impl, !dbg !2115
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #11

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2116 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !2117, metadata !DIExpression()), !dbg !2118
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !2119
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !2119
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2120
  ret %"struct.std::default_delete"* %call, !dbg !2121
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.std::thread::_State"* noundef %__ptr) #6 comdat align 2 !dbg !2122 {
entry:
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  %__ptr.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::default_delete"** %this.addr, metadata !2123, metadata !DIExpression()), !dbg !2125
  store %"struct.std::thread::_State"* %__ptr, %"struct.std::thread::_State"** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__ptr.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__ptr.addr, align 8, !dbg !2128
  %isnull = icmp eq %"struct.std::thread::_State"* %0, null, !dbg !2129
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !2129

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.std::thread::_State"* %0 to void (%"struct.std::thread::_State"*)***, !dbg !2129
  %vtable = load void (%"struct.std::thread::_State"*)**, void (%"struct.std::thread::_State"*)*** %1, align 8, !dbg !2129
  %vfn = getelementptr inbounds void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vtable, i64 1, !dbg !2129
  %2 = load void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vfn, align 8, !dbg !2129
  call void %2(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #13, !dbg !2129
  br label %delete.end, !dbg !2129

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !2130
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2131 {
entry:
  %__t.addr = alloca %"struct.std::thread::_State"**, align 8
  store %"struct.std::thread::_State"** %__t, %"struct.std::thread::_State"*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__t.addr, metadata !2139, metadata !DIExpression()), !dbg !2140
  %0 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__t.addr, align 8, !dbg !2141
  ret %"struct.std::thread::_State"** %0, !dbg !2142
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 !dbg !2143 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2144, metadata !DIExpression()), !dbg !2145
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2146
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #13, !dbg !2147
  ret %"struct.std::default_delete"* %call, !dbg !2148
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #6 comdat !dbg !2149 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2163
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.0"*, !dbg !2163
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %1) #13, !dbg !2164
  ret %"struct.std::default_delete"* %call, !dbg !2165
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #6 comdat !dbg !2166 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2170
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #13, !dbg !2171
  ret %"struct.std::default_delete"* %call, !dbg !2172
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #6 comdat align 2 !dbg !2173 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2174, metadata !DIExpression()), !dbg !2175
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2176
  %1 = bitcast %"struct.std::_Tuple_impl.0"* %0 to %"struct.std::_Head_base"*, !dbg !2176
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %1) #13, !dbg !2177
  ret %"struct.std::default_delete"* %call, !dbg !2178
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %__b) #6 comdat align 2 !dbg !2179 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %__b.addr, metadata !2180, metadata !DIExpression()), !dbg !2181
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8, !dbg !2182
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %0 to %"struct.std::default_delete"*, !dbg !2183
  ret %"struct.std::default_delete"* %_M_head_impl, !dbg !2184
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
!llvm.module.flags = !{!1549, !1550, !1551, !1552, !1553}
!llvm.ident = !{!1554}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, imports: !663, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Object_patterns/stack_param_by_val.cpp", directory: "/home/cs22mtech12008/llvm-project/build/bin", checksumkind: CSK_MD5, checksum: "70a54b0f88f83f2f64c458de1065bf51")
!2 = !{!3, !440, !72, !9, !5, !96, !93, !143, !90, !210, !87, !83, !80, !77, !73, !466, !108, !482, !479, !548, !476, !473, !470}
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
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !442, file: !441, line: 95, baseType: !459)
!441 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/invoke.h", directory: "")
!442 = distinct !DISubprogram(name: "__invoke<void (*)(int), int>", linkageName: "_ZSt8__invokeIPFviEJiEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_", scope: !6, file: !441, line: 90, type: !443, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !454, retainedNodes: !154)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !449, !453}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !446, file: !307, line: 2258, baseType: null)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<void>", scope: !6, file: !307, line: 2257, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !447, identifier: "_ZTSSt14__success_typeIvE")
!447 = !{!448}
!448 = !DITemplateTypeParameter(name: "_Tp", type: null)
!449 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !115}
!453 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !115, size: 64)
!454 = !{!455, !456}
!455 = !DITemplateTypeParameter(name: "_Callable", type: !450)
!456 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !457)
!457 = !{!458}
!458 = !DITemplateTypeParameter(type: !115)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__invoke_type", scope: !460, file: !307, line: 2411, baseType: !465)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__result_of_success<void, std::__invoke_other>", scope: !6, file: !307, line: 2410, size: 8, flags: DIFlagTypePassByValue, elements: !461, templateParams: !463, identifier: "_ZTSSt19__result_of_successIvSt14__invoke_otherE")
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !460, baseType: !446, extraData: i32 0)
!463 = !{!448, !464}
!464 = !DITemplateTypeParameter(name: "_Tag", type: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__invoke_other", scope: !6, file: !307, line: 2406, size: 8, flags: DIFlagTypePassByValue, elements: !154, identifier: "_ZTSSt14__invoke_other")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State_impl<std::thread::_Invoker<std::tuple<void (*)(int), int> > >", scope: !5, file: !4, line: 234, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !467, vtableHolder: !108, templateParams: !661, identifier: "_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEE")
!467 = !{!468, !469, !657}
!468 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !466, baseType: !108, extraData: i32 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_M_func", scope: !466, file: !4, line: 236, baseType: !470, size: 128, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Invoker<std::tuple<void (*)(int), int> >", scope: !5, file: !4, line: 272, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !471, templateParams: !655, identifier: "_ZTSNSt6thread8_InvokerISt5tupleIJPFviEiEEEE")
!471 = !{!472, !651}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !470, file: !4, line: 280, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<void (*)(int), int>", scope: !6, file: !84, line: 1232, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !474, templateParams: !650, identifier: "_ZTSSt5tupleIJPFviEiEE")
!474 = !{!475, !625, !626, !632, !636, !642, !647}
!475 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !473, baseType: !476, flags: DIFlagPublic, extraData: i32 0)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, void (*)(int), int>", scope: !6, file: !84, line: 259, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !477, templateParams: !621, identifier: "_ZTSSt11_Tuple_implILm0EJPFviEiEE")
!477 = !{!478, !547, !582, !586, !591, !596, !601, !605, !608, !611, !614, !618}
!478 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !476, baseType: !479, extraData: i32 0)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, int>", scope: !6, file: !84, line: 489, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !480, templateParams: !545, identifier: "_ZTSSt11_Tuple_implILm1EJiEE")
!480 = !{!481, !516, !520, !525, !529, !532, !535, !538, !542}
!481 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !479, baseType: !482, flags: DIFlagPrivate, extraData: i32 0)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, int, false>", scope: !6, file: !84, line: 188, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !483, templateParams: !514, identifier: "_ZTSSt10_Head_baseILm1EiLb0EE")
!483 = !{!484, !485, !489, !494, !499, !503, !506, !511}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !482, file: !84, line: 239, baseType: !115, size: 32)
!485 = !DISubprogram(name: "_Head_base", scope: !482, file: !84, line: 190, type: !486, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!489 = !DISubprogram(name: "_Head_base", scope: !482, file: !84, line: 193, type: !490, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !488, !492}
!492 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!494 = !DISubprogram(name: "_Head_base", scope: !482, file: !84, line: 196, type: !495, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !488, !497}
!497 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!499 = !DISubprogram(name: "_Head_base", scope: !482, file: !84, line: 197, type: !500, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !488, !502}
!502 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !482, size: 64)
!503 = !DISubprogram(name: "_Head_base", scope: !482, file: !84, line: 204, type: !504, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !488, !143, !150}
!506 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_", scope: !482, file: !84, line: 234, type: !507, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !115, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !482, size: 64)
!511 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EiLb0EE7_M_headERKS0_", scope: !482, file: !84, line: 237, type: !512, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!492, !497}
!514 = !{!173, !515, !245}
!515 = !DITemplateTypeParameter(name: "_Head", type: !115)
!516 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJiEE7_M_headERS0_", scope: !479, file: !84, line: 497, type: !517, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!509, !519}
!519 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !479, size: 64)
!520 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJiEE7_M_headERKS0_", scope: !479, file: !84, line: 500, type: !521, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!492, !523}
!523 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!525 = !DISubprogram(name: "_Tuple_impl", scope: !479, file: !84, line: 503, type: !526, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!529 = !DISubprogram(name: "_Tuple_impl", scope: !479, file: !84, line: 507, type: !530, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !528, !492}
!532 = !DISubprogram(name: "_Tuple_impl", scope: !479, file: !84, line: 517, type: !533, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !528, !523}
!535 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJiEEaSERKS0_", scope: !479, file: !84, line: 521, type: !536, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!536 = !DISubroutineType(types: !537)
!537 = !{!519, !528, !523}
!538 = !DISubprogram(name: "_Tuple_impl", scope: !479, file: !84, line: 527, type: !539, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !528, !541}
!541 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !479, size: 64)
!542 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJiEE7_M_swapERS0_", scope: !479, file: !84, line: 666, type: !543, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !528, !519}
!545 = !{!173, !546}
!546 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !457)
!547 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !476, baseType: !548, offset: 64, flags: DIFlagPrivate, extraData: i32 0)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, void (*)(int), false>", scope: !6, file: !84, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !549, templateParams: !580, identifier: "_ZTSSt10_Head_baseILm0EPFviELb0EE")
!549 = !{!550, !551, !555, !560, !565, !569, !572, !577}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !548, file: !84, line: 239, baseType: !450, size: 64)
!551 = !DISubprogram(name: "_Head_base", scope: !548, file: !84, line: 190, type: !552, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!555 = !DISubprogram(name: "_Head_base", scope: !548, file: !84, line: 193, type: !556, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !554, !558}
!558 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!560 = !DISubprogram(name: "_Head_base", scope: !548, file: !84, line: 196, type: !561, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !554, !563}
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!565 = !DISubprogram(name: "_Head_base", scope: !548, file: !84, line: 197, type: !566, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !554, !568}
!568 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !548, size: 64)
!569 = !DISubprogram(name: "_Head_base", scope: !548, file: !84, line: 204, type: !570, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !554, !143, !150}
!572 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERS2_", scope: !548, file: !84, line: 234, type: !573, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !450, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !548, size: 64)
!577 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERKS2_", scope: !548, file: !84, line: 237, type: !578, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!578 = !DISubroutineType(types: !579)
!579 = !{!558, !563}
!580 = !{!243, !581, !245}
!581 = !DITemplateTypeParameter(name: "_Head", type: !450)
!582 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERS2_", scope: !476, file: !84, line: 269, type: !583, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{!575, !585}
!585 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !476, size: 64)
!586 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERKS2_", scope: !476, file: !84, line: 272, type: !587, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!558, !589}
!589 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!591 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_tailERS2_", scope: !476, file: !84, line: 275, type: !592, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !585}
!594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !476, file: !84, line: 265, baseType: !479)
!596 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_tailERKS2_", scope: !476, file: !84, line: 278, type: !597, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !589}
!599 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!601 = !DISubprogram(name: "_Tuple_impl", scope: !476, file: !84, line: 280, type: !602, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!605 = !DISubprogram(name: "_Tuple_impl", scope: !476, file: !84, line: 284, type: !606, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !604, !558, !492}
!608 = !DISubprogram(name: "_Tuple_impl", scope: !476, file: !84, line: 296, type: !609, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !604, !589}
!611 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEEaSERKS2_", scope: !476, file: !84, line: 300, type: !612, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!612 = !DISubroutineType(types: !613)
!613 = !{!585, !604, !589}
!614 = !DISubprogram(name: "_Tuple_impl", scope: !476, file: !84, line: 302, type: !615, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !604, !617}
!617 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !476, size: 64)
!618 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_swapERS2_", scope: !476, file: !84, line: 469, type: !619, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !604, !585}
!621 = !{!243, !622}
!622 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !623)
!623 = !{!624, !458}
!624 = !DITemplateTypeParameter(type: !450)
!625 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPFviEiEE31__nothrow_default_constructibleEv", scope: !473, file: !84, line: 1286, type: !290, scopeLine: 1286, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!626 = !DISubprogram(name: "tuple", scope: !473, file: !84, line: 1349, type: !627, scopeLine: 1349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629, !630}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!630 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!632 = !DISubprogram(name: "tuple", scope: !473, file: !84, line: 1351, type: !633, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !629, !635}
!635 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !473, size: 64)
!636 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFviEiEEaSERKS2_", scope: !473, file: !84, line: 1605, type: !637, scopeLine: 1605, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !629, !640}
!639 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !473, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*const &)(int), const int &>(), const std::tuple<void (*)(int), int> &, const std::__nonesuch &>", scope: !6, file: !307, line: 134, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<void (*)(int), int> &, const std::__nonesuch &>", scope: !309, file: !307, line: 122, baseType: !630)
!642 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFviEiEEaSEOS2_", scope: !473, file: !84, line: 1616, type: !643, scopeLine: 1616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!639, !629, !645}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*)(int), int>(), std::tuple<void (*)(int), int> &&, std::__nonesuch &&>", scope: !6, file: !307, line: 134, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<void (*)(int), int> &&, std::__nonesuch &&>", scope: !309, file: !307, line: 122, baseType: !635)
!647 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPFviEiEE4swapERS2_", scope: !473, file: !84, line: 1731, type: !648, scopeLine: 1731, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !629, !639}
!650 = !{!622}
!651 = !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEclEv", scope: !470, file: !4, line: 295, type: !652, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!445, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!655 = !{!656}
!656 = !DITemplateTypeParameter(name: "_Tuple", type: !473)
!657 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEE6_M_runEv", scope: !466, file: !4, line: 244, type: !658, scopeLine: 244, containingType: !466, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!661 = !{!662}
!662 = !DITemplateTypeParameter(name: "_Callable", type: !470)
!663 = !{!664, !682, !685, !690, !698, !706, !710, !717, !721, !725, !727, !729, !733, !744, !748, !754, !760, !762, !766, !770, !774, !778, !791, !793, !797, !801, !805, !807, !813, !817, !821, !823, !825, !829, !837, !841, !845, !849, !851, !857, !859, !866, !871, !875, !880, !884, !888, !892, !894, !896, !900, !904, !908, !910, !914, !918, !920, !922, !926, !932, !937, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !956, !960, !965, !969, !973, !978, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1014, !1018, !1022, !1028, !1030, !1034, !1036, !1040, !1044, !1048, !1056, !1060, !1064, !1066, !1070, !1074, !1078, !1082, !1086, !1090, !1094, !1098, !1102, !1104, !1106, !1110, !1114, !1120, !1124, !1128, !1130, !1134, !1138, !1144, !1146, !1150, !1154, !1158, !1162, !1166, !1170, !1174, !1175, !1176, !1177, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1189, !1195, !1200, !1204, !1206, !1208, !1210, !1212, !1219, !1223, !1227, !1231, !1235, !1239, !1244, !1248, !1250, !1254, !1260, !1264, !1269, !1271, !1273, !1277, !1281, !1283, !1285, !1287, !1289, !1293, !1295, !1297, !1301, !1305, !1309, !1313, !1317, !1321, !1323, !1327, !1331, !1335, !1339, !1341, !1343, !1347, !1351, !1352, !1353, !1354, !1355, !1356, !1364, !1367, !1368, !1370, !1372, !1374, !1376, !1380, !1382, !1384, !1386, !1388, !1390, !1392, !1394, !1396, !1400, !1404, !1406, !1410, !1414, !1420, !1424, !1426, !1429, !1432, !1434, !1436, !1438, !1441, !1444, !1447, !1450, !1453, !1455, !1460, !1464, !1467, !1470, !1472, !1474, !1476, !1478, !1481, !1484, !1487, !1490, !1493, !1495, !1500, !1504, !1505, !1510, !1514, !1519, !1524, !1528, !1534, !1538, !1540, !1544}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !665, file: !681, line: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !666, line: 6, baseType: !667)
!666 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !668, line: 21, baseType: !669)
!668 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !670, identifier: "_ZTS11__mbstate_t")
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !669, file: !668, line: 15, baseType: !115, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !669, file: !668, line: 20, baseType: !673, size: 32, offset: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !668, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !674, identifier: "_ZTSN11__mbstate_tUt_E")
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !673, file: !668, line: 18, baseType: !68, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !673, file: !668, line: 19, baseType: !677, size: 32)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 32, elements: !679)
!678 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!679 = !{!680}
!680 = !DISubrange(count: 4)
!681 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !683, file: !681, line: 141)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !684, line: 20, baseType: !68)
!684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !686, file: !681, line: 143)
!686 = !DISubprogram(name: "btowc", scope: !687, file: !687, line: 284, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!688 = !DISubroutineType(types: !689)
!689 = !{!683, !115}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !691, file: !681, line: 144)
!691 = !DISubprogram(name: "fgetwc", scope: !687, file: !687, line: 726, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!683, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !696, line: 5, baseType: !697)
!696 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !699, file: !681, line: 145)
!699 = !DISubprogram(name: "fgetws", scope: !687, file: !687, line: 755, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !704, !115, !705}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !702)
!705 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !694)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !707, file: !681, line: 146)
!707 = !DISubprogram(name: "fputwc", scope: !687, file: !687, line: 740, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!683, !703, !694}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !711, file: !681, line: 147)
!711 = !DISubprogram(name: "fputws", scope: !687, file: !687, line: 762, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!115, !714, !705}
!714 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !718, file: !681, line: 148)
!718 = !DISubprogram(name: "fwide", scope: !687, file: !687, line: 573, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!115, !694, !115}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !722, file: !681, line: 149)
!722 = !DISubprogram(name: "fwprintf", scope: !687, file: !687, line: 580, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!115, !705, !714, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !726, file: !681, line: 150)
!726 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !687, file: !687, line: 640, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !728, file: !681, line: 151)
!728 = !DISubprogram(name: "getwc", scope: !687, file: !687, line: 727, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !730, file: !681, line: 152)
!730 = !DISubprogram(name: "getwchar", scope: !687, file: !687, line: 733, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!683}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !734, file: !681, line: 153)
!734 = !DISubprogram(name: "mbrlen", scope: !687, file: !687, line: 307, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !739, !737, !742}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !738, line: 46, baseType: !17)
!738 = !DIFile(filename: "lib/clang/14.0.6/include/stddef.h", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!739 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!742 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !745, file: !681, line: 154)
!745 = !DISubprogram(name: "mbrtowc", scope: !687, file: !687, line: 296, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!737, !704, !739, !737, !742}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !749, file: !681, line: 155)
!749 = !DISubprogram(name: "mbsinit", scope: !687, file: !687, line: 292, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!115, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !755, file: !681, line: 156)
!755 = !DISubprogram(name: "mbsrtowcs", scope: !687, file: !687, line: 337, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!737, !704, !758, !737, !742}
!758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !761, file: !681, line: 157)
!761 = !DISubprogram(name: "putwc", scope: !687, file: !687, line: 741, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !763, file: !681, line: 158)
!763 = !DISubprogram(name: "putwchar", scope: !687, file: !687, line: 747, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!683, !703}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !767, file: !681, line: 160)
!767 = !DISubprogram(name: "swprintf", scope: !687, file: !687, line: 590, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!115, !704, !737, !714, null}
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !771, file: !681, line: 162)
!771 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !687, file: !687, line: 647, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!115, !714, !714, null}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !775, file: !681, line: 163)
!775 = !DISubprogram(name: "ungetwc", scope: !687, file: !687, line: 770, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!683, !683, !694}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !779, file: !681, line: 164)
!779 = !DISubprogram(name: "vfwprintf", scope: !687, file: !687, line: 598, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!115, !705, !714, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !784, identifier: "_ZTS13__va_list_tag")
!784 = !{!785, !787, !788, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !783, file: !786, baseType: !68, size: 32)
!786 = !DIFile(filename: "Reproduced_UAF/Object_patterns/stack_param_by_val.cpp", directory: "/home/cs22mtech12008")
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !783, file: !786, baseType: !68, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !783, file: !786, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !783, file: !786, baseType: !789, size: 64, offset: 128)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !792, file: !681, line: 166)
!792 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !687, file: !687, line: 693, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !794, file: !681, line: 169)
!794 = !DISubprogram(name: "vswprintf", scope: !687, file: !687, line: 611, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!115, !704, !737, !714, !782}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !798, file: !681, line: 172)
!798 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !687, file: !687, line: 700, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!115, !714, !714, !782}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !802, file: !681, line: 174)
!802 = !DISubprogram(name: "vwprintf", scope: !687, file: !687, line: 606, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!115, !714, !782}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !806, file: !681, line: 176)
!806 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !687, file: !687, line: 697, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !808, file: !681, line: 178)
!808 = !DISubprogram(name: "wcrtomb", scope: !687, file: !687, line: 301, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!737, !811, !703, !742}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !814, file: !681, line: 179)
!814 = !DISubprogram(name: "wcscat", scope: !687, file: !687, line: 97, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!702, !704, !714}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !818, file: !681, line: 180)
!818 = !DISubprogram(name: "wcscmp", scope: !687, file: !687, line: 106, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!115, !715, !715}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !822, file: !681, line: 181)
!822 = !DISubprogram(name: "wcscoll", scope: !687, file: !687, line: 131, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !824, file: !681, line: 182)
!824 = !DISubprogram(name: "wcscpy", scope: !687, file: !687, line: 87, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !826, file: !681, line: 183)
!826 = !DISubprogram(name: "wcscspn", scope: !687, file: !687, line: 187, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!737, !715, !715}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !830, file: !681, line: 184)
!830 = !DISubprogram(name: "wcsftime", scope: !687, file: !687, line: 834, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!737, !704, !737, !714, !833}
!833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !687, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !838, file: !681, line: 185)
!838 = !DISubprogram(name: "wcslen", scope: !687, file: !687, line: 222, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!737, !715}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !842, file: !681, line: 186)
!842 = !DISubprogram(name: "wcsncat", scope: !687, file: !687, line: 101, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!702, !704, !714, !737}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !846, file: !681, line: 187)
!846 = !DISubprogram(name: "wcsncmp", scope: !687, file: !687, line: 109, type: !847, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DISubroutineType(types: !848)
!848 = !{!115, !715, !715, !737}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !850, file: !681, line: 188)
!850 = !DISubprogram(name: "wcsncpy", scope: !687, file: !687, line: 92, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !852, file: !681, line: 189)
!852 = !DISubprogram(name: "wcsrtombs", scope: !687, file: !687, line: 343, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!737, !811, !855, !737, !742}
!855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !858, file: !681, line: 190)
!858 = !DISubprogram(name: "wcsspn", scope: !687, file: !687, line: 191, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !860, file: !681, line: 191)
!860 = !DISubprogram(name: "wcstod", scope: !687, file: !687, line: 377, type: !861, flags: DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !714, !864}
!863 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !867, file: !681, line: 193)
!867 = !DISubprogram(name: "wcstof", scope: !687, file: !687, line: 382, type: !868, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !714, !864}
!870 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !872, file: !681, line: 195)
!872 = !DISubprogram(name: "wcstok", scope: !687, file: !687, line: 217, type: !873, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!702, !704, !714, !864}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !876, file: !681, line: 196)
!876 = !DISubprogram(name: "wcstol", scope: !687, file: !687, line: 428, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!879, !714, !864, !115}
!879 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !881, file: !681, line: 197)
!881 = !DISubprogram(name: "wcstoul", scope: !687, file: !687, line: 433, type: !882, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!17, !714, !864, !115}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !885, file: !681, line: 198)
!885 = !DISubprogram(name: "wcsxfrm", scope: !687, file: !687, line: 135, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!737, !704, !714, !737}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !889, file: !681, line: 199)
!889 = !DISubprogram(name: "wctob", scope: !687, file: !687, line: 288, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!115, !683}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !893, file: !681, line: 200)
!893 = !DISubprogram(name: "wmemcmp", scope: !687, file: !687, line: 258, type: !847, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !895, file: !681, line: 201)
!895 = !DISubprogram(name: "wmemcpy", scope: !687, file: !687, line: 262, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !897, file: !681, line: 202)
!897 = !DISubprogram(name: "wmemmove", scope: !687, file: !687, line: 267, type: !898, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!702, !702, !715, !737}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !901, file: !681, line: 203)
!901 = !DISubprogram(name: "wmemset", scope: !687, file: !687, line: 271, type: !902, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!702, !702, !703, !737}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !905, file: !681, line: 204)
!905 = !DISubprogram(name: "wprintf", scope: !687, file: !687, line: 587, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!115, !714, null}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !909, file: !681, line: 205)
!909 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !687, file: !687, line: 644, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !911, file: !681, line: 206)
!911 = !DISubprogram(name: "wcschr", scope: !687, file: !687, line: 164, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!702, !715, !703}
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !915, file: !681, line: 207)
!915 = !DISubprogram(name: "wcspbrk", scope: !687, file: !687, line: 201, type: !916, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DISubroutineType(types: !917)
!917 = !{!702, !715, !715}
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !919, file: !681, line: 208)
!919 = !DISubprogram(name: "wcsrchr", scope: !687, file: !687, line: 174, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !921, file: !681, line: 209)
!921 = !DISubprogram(name: "wcsstr", scope: !687, file: !687, line: 212, type: !916, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !923, file: !681, line: 210)
!923 = !DISubprogram(name: "wmemchr", scope: !687, file: !687, line: 253, type: !924, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!702, !715, !703, !737}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !928, file: !681, line: 251)
!927 = !DINamespace(name: "__gnu_cxx", scope: null)
!928 = !DISubprogram(name: "wcstold", scope: !687, file: !687, line: 384, type: !929, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DISubroutineType(types: !930)
!930 = !{!931, !714, !864}
!931 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !933, file: !681, line: 260)
!933 = !DISubprogram(name: "wcstoll", scope: !687, file: !687, line: 441, type: !934, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DISubroutineType(types: !935)
!935 = !{!936, !714, !864, !115}
!936 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !938, file: !681, line: 261)
!938 = !DISubprogram(name: "wcstoull", scope: !687, file: !687, line: 448, type: !939, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DISubroutineType(types: !940)
!940 = !{!941, !714, !864, !115}
!941 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !928, file: !681, line: 267)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !933, file: !681, line: 268)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !938, file: !681, line: 269)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !867, file: !681, line: 283)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !792, file: !681, line: 286)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !798, file: !681, line: 289)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !806, file: !681, line: 292)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !928, file: !681, line: 296)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !933, file: !681, line: 297)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !938, file: !681, line: 298)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !953, file: !954, line: 66)
!953 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !955, file: !954, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!954 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!955 = !DINamespace(name: "__exception_ptr", scope: !6)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !955, entity: !957, file: !954, line: 85)
!957 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !6, file: !954, line: 81, type: !958, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !953}
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !961, file: !954, line: 243)
!961 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !955, file: !954, line: 230, type: !962, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !964, !964}
!964 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !953, size: 64)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !966, file: !968, line: 53)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !967, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!967 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!968 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !970, file: !968, line: 54)
!970 = !DISubprogram(name: "setlocale", scope: !967, file: !967, line: 122, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DISubroutineType(types: !972)
!972 = !{!812, !115, !740}
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !974, file: !968, line: 55)
!974 = !DISubprogram(name: "localeconv", scope: !967, file: !967, line: 125, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DISubroutineType(types: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !979, file: !983, line: 64)
!979 = !DISubprogram(name: "isalnum", scope: !980, file: !980, line: 108, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!980 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!981 = !DISubroutineType(types: !982)
!982 = !{!115, !115}
!983 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !985, file: !983, line: 65)
!985 = !DISubprogram(name: "isalpha", scope: !980, file: !980, line: 109, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !987, file: !983, line: 66)
!987 = !DISubprogram(name: "iscntrl", scope: !980, file: !980, line: 110, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !989, file: !983, line: 67)
!989 = !DISubprogram(name: "isdigit", scope: !980, file: !980, line: 111, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !991, file: !983, line: 68)
!991 = !DISubprogram(name: "isgraph", scope: !980, file: !980, line: 113, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !993, file: !983, line: 69)
!993 = !DISubprogram(name: "islower", scope: !980, file: !980, line: 112, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !995, file: !983, line: 70)
!995 = !DISubprogram(name: "isprint", scope: !980, file: !980, line: 114, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !997, file: !983, line: 71)
!997 = !DISubprogram(name: "ispunct", scope: !980, file: !980, line: 115, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !999, file: !983, line: 72)
!999 = !DISubprogram(name: "isspace", scope: !980, file: !980, line: 116, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1001, file: !983, line: 73)
!1001 = !DISubprogram(name: "isupper", scope: !980, file: !980, line: 117, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1003, file: !983, line: 74)
!1003 = !DISubprogram(name: "isxdigit", scope: !980, file: !980, line: 118, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1005, file: !983, line: 75)
!1005 = !DISubprogram(name: "tolower", scope: !980, file: !980, line: 122, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1007, file: !983, line: 76)
!1007 = !DISubprogram(name: "toupper", scope: !980, file: !980, line: 125, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1009, file: !983, line: 87)
!1009 = !DISubprogram(name: "isblank", scope: !980, file: !980, line: 130, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1011, entity: !1012, file: !1013, line: 58)
!1011 = !DINamespace(name: "__gnu_debug", scope: null)
!1012 = !DINamespace(name: "__debug", scope: !6)
!1013 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1015, file: !1017, line: 52)
!1015 = !DISubprogram(name: "abs", scope: !1016, file: !1016, line: 840, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1017 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1019, file: !1021, line: 131)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1016, line: 62, baseType: !1020)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1021 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1023, file: !1021, line: 132)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1016, line: 70, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1025, identifier: "_ZTS6ldiv_t")
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1024, file: !1016, line: 68, baseType: !879, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1024, file: !1016, line: 69, baseType: !879, size: 64, offset: 64)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1029, file: !1021, line: 134)
!1029 = !DISubprogram(name: "abort", scope: !1016, file: !1016, line: 591, type: !30, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1031, file: !1021, line: 138)
!1031 = !DISubprogram(name: "atexit", scope: !1016, file: !1016, line: 595, type: !1032, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!115, !72}
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1035, file: !1021, line: 141)
!1035 = !DISubprogram(name: "at_quick_exit", scope: !1016, file: !1016, line: 600, type: !1032, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1037, file: !1021, line: 144)
!1037 = !DISubprogram(name: "atof", scope: !1016, file: !1016, line: 101, type: !1038, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!863, !740}
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1041, file: !1021, line: 145)
!1041 = !DISubprogram(name: "atoi", scope: !1016, file: !1016, line: 104, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!115, !740}
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1045, file: !1021, line: 146)
!1045 = !DISubprogram(name: "atol", scope: !1016, file: !1016, line: 107, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!879, !740}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1049, file: !1021, line: 147)
!1049 = !DISubprogram(name: "bsearch", scope: !1016, file: !1016, line: 820, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!789, !162, !162, !737, !737, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1016, line: 808, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!115, !162, !162}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1057, file: !1021, line: 148)
!1057 = !DISubprogram(name: "calloc", scope: !1016, file: !1016, line: 542, type: !1058, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!789, !737, !737}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1061, file: !1021, line: 149)
!1061 = !DISubprogram(name: "div", scope: !1016, file: !1016, line: 852, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!1019, !115, !115}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1065, file: !1021, line: 150)
!1065 = !DISubprogram(name: "exit", scope: !1016, file: !1016, line: 617, type: !451, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1067, file: !1021, line: 151)
!1067 = !DISubprogram(name: "free", scope: !1016, file: !1016, line: 565, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !789}
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1071, file: !1021, line: 152)
!1071 = !DISubprogram(name: "getenv", scope: !1016, file: !1016, line: 634, type: !1072, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!812, !740}
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1075, file: !1021, line: 153)
!1075 = !DISubprogram(name: "labs", scope: !1016, file: !1016, line: 841, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!879, !879}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1079, file: !1021, line: 154)
!1079 = !DISubprogram(name: "ldiv", scope: !1016, file: !1016, line: 854, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1023, !879, !879}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1083, file: !1021, line: 155)
!1083 = !DISubprogram(name: "malloc", scope: !1016, file: !1016, line: 539, type: !1084, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!789, !737}
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1087, file: !1021, line: 157)
!1087 = !DISubprogram(name: "mblen", scope: !1016, file: !1016, line: 922, type: !1088, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!115, !740, !737}
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1091, file: !1021, line: 158)
!1091 = !DISubprogram(name: "mbstowcs", scope: !1016, file: !1016, line: 933, type: !1092, flags: DIFlagPrototyped, spFlags: 0)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!737, !704, !739, !737}
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1095, file: !1021, line: 159)
!1095 = !DISubprogram(name: "mbtowc", scope: !1016, file: !1016, line: 925, type: !1096, flags: DIFlagPrototyped, spFlags: 0)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!115, !704, !739, !737}
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1099, file: !1021, line: 161)
!1099 = !DISubprogram(name: "qsort", scope: !1016, file: !1016, line: 830, type: !1100, flags: DIFlagPrototyped, spFlags: 0)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !789, !737, !737, !1052}
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1103, file: !1021, line: 164)
!1103 = !DISubprogram(name: "quick_exit", scope: !1016, file: !1016, line: 623, type: !451, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1105, file: !1021, line: 167)
!1105 = !DISubprogram(name: "rand", scope: !1016, file: !1016, line: 453, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1107, file: !1021, line: 168)
!1107 = !DISubprogram(name: "realloc", scope: !1016, file: !1016, line: 550, type: !1108, flags: DIFlagPrototyped, spFlags: 0)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!789, !789, !737}
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1111, file: !1021, line: 169)
!1111 = !DISubprogram(name: "srand", scope: !1016, file: !1016, line: 455, type: !1112, flags: DIFlagPrototyped, spFlags: 0)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !68}
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1115, file: !1021, line: 170)
!1115 = !DISubprogram(name: "strtod", scope: !1016, file: !1016, line: 117, type: !1116, flags: DIFlagPrototyped, spFlags: 0)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!863, !739, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1121, file: !1021, line: 171)
!1121 = !DISubprogram(name: "strtol", scope: !1016, file: !1016, line: 176, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!879, !739, !1118, !115}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1125, file: !1021, line: 172)
!1125 = !DISubprogram(name: "strtoul", scope: !1016, file: !1016, line: 180, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!17, !739, !1118, !115}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1129, file: !1021, line: 173)
!1129 = !DISubprogram(name: "system", scope: !1016, file: !1016, line: 784, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1131, file: !1021, line: 175)
!1131 = !DISubprogram(name: "wcstombs", scope: !1016, file: !1016, line: 936, type: !1132, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!737, !811, !714, !737}
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1135, file: !1021, line: 176)
!1135 = !DISubprogram(name: "wctomb", scope: !1016, file: !1016, line: 929, type: !1136, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!115, !812, !703}
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1139, file: !1021, line: 204)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1016, line: 80, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1141, identifier: "_ZTS7lldiv_t")
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1140, file: !1016, line: 78, baseType: !936, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1140, file: !1016, line: 79, baseType: !936, size: 64, offset: 64)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1145, file: !1021, line: 210)
!1145 = !DISubprogram(name: "_Exit", scope: !1016, file: !1016, line: 629, type: !451, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1147, file: !1021, line: 214)
!1147 = !DISubprogram(name: "llabs", scope: !1016, file: !1016, line: 844, type: !1148, flags: DIFlagPrototyped, spFlags: 0)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!936, !936}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1151, file: !1021, line: 220)
!1151 = !DISubprogram(name: "lldiv", scope: !1016, file: !1016, line: 858, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1139, !936, !936}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1155, file: !1021, line: 231)
!1155 = !DISubprogram(name: "atoll", scope: !1016, file: !1016, line: 112, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!936, !740}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1159, file: !1021, line: 232)
!1159 = !DISubprogram(name: "strtoll", scope: !1016, file: !1016, line: 200, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!936, !739, !1118, !115}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1163, file: !1021, line: 233)
!1163 = !DISubprogram(name: "strtoull", scope: !1016, file: !1016, line: 205, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!941, !739, !1118, !115}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1167, file: !1021, line: 235)
!1167 = !DISubprogram(name: "strtof", scope: !1016, file: !1016, line: 123, type: !1168, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!870, !739, !1118}
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1171, file: !1021, line: 236)
!1171 = !DISubprogram(name: "strtold", scope: !1016, file: !1016, line: 126, type: !1172, flags: DIFlagPrototyped, spFlags: 0)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!931, !739, !1118}
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1139, file: !1021, line: 244)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1145, file: !1021, line: 246)
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1147, file: !1021, line: 248)
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1178, file: !1021, line: 249)
!1178 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !927, file: !1021, line: 217, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1151, file: !1021, line: 250)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1155, file: !1021, line: 252)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1167, file: !1021, line: 253)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1159, file: !1021, line: 254)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1163, file: !1021, line: 255)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1171, file: !1021, line: 256)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1186, file: !1188, line: 98)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1187, line: 7, baseType: !697)
!1187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1188 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1190, file: !1188, line: 99)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1191, line: 84, baseType: !1192)
!1191 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1193, line: 14, baseType: !1194)
!1193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1193, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1196, file: !1188, line: 101)
!1196 = !DISubprogram(name: "clearerr", scope: !1191, file: !1191, line: 757, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1201, file: !1188, line: 102)
!1201 = !DISubprogram(name: "fclose", scope: !1191, file: !1191, line: 213, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!115, !1199}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1205, file: !1188, line: 103)
!1205 = !DISubprogram(name: "feof", scope: !1191, file: !1191, line: 759, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1207, file: !1188, line: 104)
!1207 = !DISubprogram(name: "ferror", scope: !1191, file: !1191, line: 761, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1209, file: !1188, line: 105)
!1209 = !DISubprogram(name: "fflush", scope: !1191, file: !1191, line: 218, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1211, file: !1188, line: 106)
!1211 = !DISubprogram(name: "fgetc", scope: !1191, file: !1191, line: 485, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1213, file: !1188, line: 107)
!1213 = !DISubprogram(name: "fgetpos", scope: !1191, file: !1191, line: 731, type: !1214, flags: DIFlagPrototyped, spFlags: 0)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!115, !1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1199)
!1217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1220, file: !1188, line: 108)
!1220 = !DISubprogram(name: "fgets", scope: !1191, file: !1191, line: 564, type: !1221, flags: DIFlagPrototyped, spFlags: 0)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!812, !811, !115, !1216}
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1224, file: !1188, line: 109)
!1224 = !DISubprogram(name: "fopen", scope: !1191, file: !1191, line: 246, type: !1225, flags: DIFlagPrototyped, spFlags: 0)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1199, !739, !739}
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1228, file: !1188, line: 110)
!1228 = !DISubprogram(name: "fprintf", scope: !1191, file: !1191, line: 326, type: !1229, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!115, !1216, !739, null}
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1232, file: !1188, line: 111)
!1232 = !DISubprogram(name: "fputc", scope: !1191, file: !1191, line: 521, type: !1233, flags: DIFlagPrototyped, spFlags: 0)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!115, !115, !1199}
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1236, file: !1188, line: 112)
!1236 = !DISubprogram(name: "fputs", scope: !1191, file: !1191, line: 626, type: !1237, flags: DIFlagPrototyped, spFlags: 0)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!115, !739, !1216}
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1240, file: !1188, line: 113)
!1240 = !DISubprogram(name: "fread", scope: !1191, file: !1191, line: 646, type: !1241, flags: DIFlagPrototyped, spFlags: 0)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!737, !1243, !737, !737, !1216}
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !789)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1245, file: !1188, line: 114)
!1245 = !DISubprogram(name: "freopen", scope: !1191, file: !1191, line: 252, type: !1246, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1199, !739, !739, !1216}
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1249, file: !1188, line: 115)
!1249 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1191, file: !1191, line: 407, type: !1229, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1251, file: !1188, line: 116)
!1251 = !DISubprogram(name: "fseek", scope: !1191, file: !1191, line: 684, type: !1252, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!115, !1199, !879, !115}
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1255, file: !1188, line: 117)
!1255 = !DISubprogram(name: "fsetpos", scope: !1191, file: !1191, line: 736, type: !1256, flags: DIFlagPrototyped, spFlags: 0)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!115, !1199, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1261, file: !1188, line: 118)
!1261 = !DISubprogram(name: "ftell", scope: !1191, file: !1191, line: 689, type: !1262, flags: DIFlagPrototyped, spFlags: 0)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!879, !1199}
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1265, file: !1188, line: 119)
!1265 = !DISubprogram(name: "fwrite", scope: !1191, file: !1191, line: 652, type: !1266, flags: DIFlagPrototyped, spFlags: 0)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!737, !1268, !737, !737, !1216}
!1268 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1270, file: !1188, line: 120)
!1270 = !DISubprogram(name: "getc", scope: !1191, file: !1191, line: 486, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1272, file: !1188, line: 121)
!1272 = !DISubprogram(name: "getchar", scope: !1191, file: !1191, line: 492, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1274, file: !1188, line: 126)
!1274 = !DISubprogram(name: "perror", scope: !1191, file: !1191, line: 775, type: !1275, flags: DIFlagPrototyped, spFlags: 0)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !740}
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1278, file: !1188, line: 127)
!1278 = !DISubprogram(name: "printf", scope: !1191, file: !1191, line: 332, type: !1279, flags: DIFlagPrototyped, spFlags: 0)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!115, !739, null}
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1282, file: !1188, line: 128)
!1282 = !DISubprogram(name: "putc", scope: !1191, file: !1191, line: 522, type: !1233, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1284, file: !1188, line: 129)
!1284 = !DISubprogram(name: "putchar", scope: !1191, file: !1191, line: 528, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1286, file: !1188, line: 130)
!1286 = !DISubprogram(name: "puts", scope: !1191, file: !1191, line: 632, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1288, file: !1188, line: 131)
!1288 = !DISubprogram(name: "remove", scope: !1191, file: !1191, line: 146, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1290, file: !1188, line: 132)
!1290 = !DISubprogram(name: "rename", scope: !1191, file: !1191, line: 148, type: !1291, flags: DIFlagPrototyped, spFlags: 0)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!115, !740, !740}
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1294, file: !1188, line: 133)
!1294 = !DISubprogram(name: "rewind", scope: !1191, file: !1191, line: 694, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1296, file: !1188, line: 134)
!1296 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1191, file: !1191, line: 410, type: !1279, flags: DIFlagPrototyped, spFlags: 0)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1298, file: !1188, line: 135)
!1298 = !DISubprogram(name: "setbuf", scope: !1191, file: !1191, line: 304, type: !1299, flags: DIFlagPrototyped, spFlags: 0)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1216, !811}
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1302, file: !1188, line: 136)
!1302 = !DISubprogram(name: "setvbuf", scope: !1191, file: !1191, line: 308, type: !1303, flags: DIFlagPrototyped, spFlags: 0)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!115, !1216, !811, !115, !737}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1306, file: !1188, line: 137)
!1306 = !DISubprogram(name: "sprintf", scope: !1191, file: !1191, line: 334, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!115, !811, !739, null}
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1310, file: !1188, line: 138)
!1310 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1191, file: !1191, line: 412, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!115, !739, !739, null}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1314, file: !1188, line: 139)
!1314 = !DISubprogram(name: "tmpfile", scope: !1191, file: !1191, line: 173, type: !1315, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1199}
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1318, file: !1188, line: 141)
!1318 = !DISubprogram(name: "tmpnam", scope: !1191, file: !1191, line: 187, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!812, !812}
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1322, file: !1188, line: 143)
!1322 = !DISubprogram(name: "ungetc", scope: !1191, file: !1191, line: 639, type: !1233, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1324, file: !1188, line: 144)
!1324 = !DISubprogram(name: "vfprintf", scope: !1191, file: !1191, line: 341, type: !1325, flags: DIFlagPrototyped, spFlags: 0)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!115, !1216, !739, !782}
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1328, file: !1188, line: 145)
!1328 = !DISubprogram(name: "vprintf", scope: !1191, file: !1191, line: 347, type: !1329, flags: DIFlagPrototyped, spFlags: 0)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!115, !739, !782}
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1332, file: !1188, line: 146)
!1332 = !DISubprogram(name: "vsprintf", scope: !1191, file: !1191, line: 349, type: !1333, flags: DIFlagPrototyped, spFlags: 0)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!115, !811, !739, !782}
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1336, file: !1188, line: 175)
!1336 = !DISubprogram(name: "snprintf", scope: !1191, file: !1191, line: 354, type: !1337, flags: DIFlagPrototyped, spFlags: 0)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!115, !811, !737, !739, null}
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1340, file: !1188, line: 176)
!1340 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1191, file: !1191, line: 451, type: !1325, flags: DIFlagPrototyped, spFlags: 0)
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1342, file: !1188, line: 177)
!1342 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1191, file: !1191, line: 456, type: !1329, flags: DIFlagPrototyped, spFlags: 0)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1344, file: !1188, line: 178)
!1344 = !DISubprogram(name: "vsnprintf", scope: !1191, file: !1191, line: 358, type: !1345, flags: DIFlagPrototyped, spFlags: 0)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!115, !811, !737, !739, !782}
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !927, entity: !1348, file: !1188, line: 179)
!1348 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1191, file: !1191, line: 459, type: !1349, flags: DIFlagPrototyped, spFlags: 0)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!115, !739, !739, !782}
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1336, file: !1188, line: 185)
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1340, file: !1188, line: 186)
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1342, file: !1188, line: 187)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1344, file: !1188, line: 188)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1348, file: !1188, line: 189)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1357, file: !1363, line: 82)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1358, line: 48, baseType: !1359)
!1358 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1362, line: 41, baseType: !115)
!1362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!1363 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1365, file: !1363, line: 83)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1366, line: 38, baseType: !17)
!1366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !683, file: !1363, line: 84)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1369, file: !1363, line: 86)
!1369 = !DISubprogram(name: "iswalnum", scope: !1366, file: !1366, line: 95, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1371, file: !1363, line: 87)
!1371 = !DISubprogram(name: "iswalpha", scope: !1366, file: !1366, line: 101, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1373, file: !1363, line: 89)
!1373 = !DISubprogram(name: "iswblank", scope: !1366, file: !1366, line: 146, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1375, file: !1363, line: 91)
!1375 = !DISubprogram(name: "iswcntrl", scope: !1366, file: !1366, line: 104, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1377, file: !1363, line: 92)
!1377 = !DISubprogram(name: "iswctype", scope: !1366, file: !1366, line: 159, type: !1378, flags: DIFlagPrototyped, spFlags: 0)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!115, !683, !1365}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1381, file: !1363, line: 93)
!1381 = !DISubprogram(name: "iswdigit", scope: !1366, file: !1366, line: 108, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1383, file: !1363, line: 94)
!1383 = !DISubprogram(name: "iswgraph", scope: !1366, file: !1366, line: 112, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1385, file: !1363, line: 95)
!1385 = !DISubprogram(name: "iswlower", scope: !1366, file: !1366, line: 117, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1387, file: !1363, line: 96)
!1387 = !DISubprogram(name: "iswprint", scope: !1366, file: !1366, line: 120, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1389, file: !1363, line: 97)
!1389 = !DISubprogram(name: "iswpunct", scope: !1366, file: !1366, line: 125, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1391, file: !1363, line: 98)
!1391 = !DISubprogram(name: "iswspace", scope: !1366, file: !1366, line: 130, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1393, file: !1363, line: 99)
!1393 = !DISubprogram(name: "iswupper", scope: !1366, file: !1366, line: 135, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1395, file: !1363, line: 100)
!1395 = !DISubprogram(name: "iswxdigit", scope: !1366, file: !1366, line: 140, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1397, file: !1363, line: 101)
!1397 = !DISubprogram(name: "towctrans", scope: !1358, file: !1358, line: 55, type: !1398, flags: DIFlagPrototyped, spFlags: 0)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!683, !683, !1357}
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1401, file: !1363, line: 102)
!1401 = !DISubprogram(name: "towlower", scope: !1366, file: !1366, line: 166, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!683, !683}
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1405, file: !1363, line: 103)
!1405 = !DISubprogram(name: "towupper", scope: !1366, file: !1366, line: 169, type: !1402, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1407, file: !1363, line: 104)
!1407 = !DISubprogram(name: "wctrans", scope: !1358, file: !1358, line: 52, type: !1408, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1357, !740}
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1411, file: !1363, line: 105)
!1411 = !DISubprogram(name: "wctype", scope: !1366, file: !1366, line: 155, type: !1412, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1365, !740}
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1415, file: !1419, line: 51)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1416, line: 24, baseType: !1417)
!1416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1362, line: 37, baseType: !1418)
!1418 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1419 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1421, file: !1419, line: 52)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1416, line: 25, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1362, line: 39, baseType: !1423)
!1423 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1425, file: !1419, line: 53)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1416, line: 26, baseType: !1361)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1427, file: !1419, line: 54)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1416, line: 27, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1362, line: 44, baseType: !879)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1430, file: !1419, line: 56)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1431, line: 58, baseType: !1418)
!1431 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1433, file: !1419, line: 57)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1431, line: 60, baseType: !879)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1435, file: !1419, line: 58)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1431, line: 61, baseType: !879)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1437, file: !1419, line: 59)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1431, line: 62, baseType: !879)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1439, file: !1419, line: 61)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1431, line: 43, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1362, line: 52, baseType: !1417)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1442, file: !1419, line: 62)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1431, line: 44, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1362, line: 54, baseType: !1422)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1445, file: !1419, line: 63)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1431, line: 45, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1362, line: 56, baseType: !1361)
!1447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1448, file: !1419, line: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1431, line: 46, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1362, line: 58, baseType: !1428)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1451, file: !1419, line: 66)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1431, line: 101, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1362, line: 72, baseType: !879)
!1453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1454, file: !1419, line: 67)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1431, line: 87, baseType: !879)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1456, file: !1419, line: 69)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1457, line: 24, baseType: !1458)
!1457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1362, line: 38, baseType: !1459)
!1459 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1461, file: !1419, line: 70)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1457, line: 25, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1362, line: 40, baseType: !1463)
!1463 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1465, file: !1419, line: 71)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1457, line: 26, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1362, line: 42, baseType: !68)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1468, file: !1419, line: 72)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1457, line: 27, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1362, line: 45, baseType: !17)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1471, file: !1419, line: 74)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1431, line: 71, baseType: !1459)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1473, file: !1419, line: 75)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1431, line: 73, baseType: !17)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1475, file: !1419, line: 76)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1431, line: 74, baseType: !17)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1477, file: !1419, line: 77)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1431, line: 75, baseType: !17)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1479, file: !1419, line: 79)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1431, line: 49, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1362, line: 53, baseType: !1458)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1482, file: !1419, line: 80)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1431, line: 50, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1362, line: 55, baseType: !1462)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1485, file: !1419, line: 81)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1431, line: 51, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1362, line: 57, baseType: !1466)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1488, file: !1419, line: 82)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1431, line: 52, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1362, line: 59, baseType: !1469)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1491, file: !1419, line: 84)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1431, line: 102, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1362, line: 73, baseType: !17)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1494, file: !1419, line: 85)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1431, line: 90, baseType: !17)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1496, file: !1499, line: 60)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1497, line: 7, baseType: !1498)
!1497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1362, line: 156, baseType: !879)
!1499 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1501, file: !1499, line: 61)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1502, line: 7, baseType: !1503)
!1502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1362, line: 160, baseType: !879)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !836, file: !1499, line: 62)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1506, file: !1499, line: 64)
!1506 = !DISubprogram(name: "clock", scope: !1507, file: !1507, line: 72, type: !1508, flags: DIFlagPrototyped, spFlags: 0)
!1507 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1496}
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1511, file: !1499, line: 65)
!1511 = !DISubprogram(name: "difftime", scope: !1507, file: !1507, line: 78, type: !1512, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!863, !1501, !1501}
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1515, file: !1499, line: 66)
!1515 = !DISubprogram(name: "mktime", scope: !1507, file: !1507, line: 82, type: !1516, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1501, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1520, file: !1499, line: 67)
!1520 = !DISubprogram(name: "time", scope: !1507, file: !1507, line: 75, type: !1521, flags: DIFlagPrototyped, spFlags: 0)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!1501, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1525, file: !1499, line: 68)
!1525 = !DISubprogram(name: "asctime", scope: !1507, file: !1507, line: 139, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!812, !834}
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1529, file: !1499, line: 69)
!1529 = !DISubprogram(name: "ctime", scope: !1507, file: !1507, line: 142, type: !1530, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!812, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1535, file: !1499, line: 70)
!1535 = !DISubprogram(name: "gmtime", scope: !1507, file: !1507, line: 119, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1518, !1532}
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1539, file: !1499, line: 71)
!1539 = !DISubprogram(name: "localtime", scope: !1507, file: !1507, line: 123, type: !1536, flags: DIFlagPrototyped, spFlags: 0)
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !1541, file: !1499, line: 72)
!1541 = !DISubprogram(name: "strftime", scope: !1507, file: !1507, line: 88, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!737, !811, !737, !739, !833}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1545, entity: !1546, file: !1548, line: 1447)
!1545 = !DINamespace(name: "chrono", scope: !6)
!1546 = !DINamespace(name: "chrono_literals", scope: !1547, exportSymbols: true)
!1547 = !DINamespace(name: "literals", scope: !6, exportSymbols: true)
!1548 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!1549 = !{i32 7, !"Dwarf Version", i32 5}
!1550 = !{i32 2, !"Debug Info Version", i32 3}
!1551 = !{i32 1, !"wchar_size", i32 4}
!1552 = !{i32 7, !"uwtable", i32 1}
!1553 = !{i32 7, !"frame-pointer", i32 2}
!1554 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!1555 = distinct !DISubprogram(name: "thread_func", linkageName: "_Z11thread_funci", scope: !1556, file: !1556, line: 4, type: !451, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1556 = !DIFile(filename: "Reproduced_UAF/Object_patterns/stack_param_by_val.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "70a54b0f88f83f2f64c458de1065bf51")
!1557 = !DILocalVariable(name: "x", arg: 1, scope: !1555, file: !1556, line: 4, type: !115)
!1558 = !DILocation(line: 4, column: 22, scope: !1555)
!1559 = !DILocation(line: 5, column: 14, scope: !1555)
!1560 = !DILocation(line: 5, column: 34, scope: !1555)
!1561 = !DILocation(line: 5, column: 32, scope: !1555)
!1562 = !DILocation(line: 5, column: 35, scope: !1555)
!1563 = !DILocation(line: 7, column: 1, scope: !1555)
!1564 = distinct !DISubprogram(name: "threadFunction", linkageName: "_Z14threadFunctionv", scope: !1556, file: !1556, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1565 = !DILocalVariable(name: "x", scope: !1564, file: !1556, line: 9, type: !115)
!1566 = !DILocation(line: 9, column: 9, scope: !1564)
!1567 = !DILocalVariable(name: "t1", scope: !1564, file: !1556, line: 10, type: !5)
!1568 = !DILocation(line: 10, column: 17, scope: !1564)
!1569 = !DILocation(line: 12, column: 1, scope: !1564)
!1570 = distinct !DISubprogram(name: "thread<void (&)(int), int &, void>", linkageName: "_ZNSt6threadC2IRFviEJRiEvEEOT_DpOT0_", scope: !5, file: !4, line: 154, type: !1571, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1575, declaration: !1574, retainedNodes: !154)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !28, !1573, !509}
!1573 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !451, size: 64)
!1574 = !DISubprogram(name: "thread<void (&)(int), int &, void>", scope: !5, file: !4, line: 154, type: !1571, scopeLine: 154, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1575)
!1575 = !{!1576, !1577, !1580}
!1576 = !DITemplateTypeParameter(name: "_Callable", type: !1573)
!1577 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !1578)
!1578 = !{!1579}
!1579 = !DITemplateTypeParameter(type: !509)
!1580 = !DITemplateTypeParameter(type: null)
!1581 = !DILocalVariable(name: "this", arg: 1, scope: !1570, type: !1582, flags: DIFlagArtificial | DIFlagObjectPointer)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1583 = !DILocation(line: 0, scope: !1570)
!1584 = !DILocalVariable(name: "__f", arg: 2, scope: !1570, file: !4, line: 154, type: !1573)
!1585 = !DILocation(line: 154, column: 26, scope: !1570)
!1586 = !DILocalVariable(name: "__args", arg: 3, scope: !1570, file: !4, line: 154, type: !509)
!1587 = !DILocation(line: 154, column: 42, scope: !1570)
!1588 = !DILocation(line: 154, column: 7, scope: !1570)
!1589 = !DILocation(line: 164, column: 29, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1570, file: !4, line: 155, column: 7)
!1591 = !DILocation(line: 165, column: 32, scope: !1590)
!1592 = !DILocation(line: 165, column: 8, scope: !1590)
!1593 = !DILocation(line: 165, column: 58, scope: !1590)
!1594 = !DILocation(line: 165, column: 38, scope: !1590)
!1595 = !DILocation(line: 164, column: 33, scope: !1590)
!1596 = !DILocation(line: 164, column: 18, scope: !1590)
!1597 = !DILocation(line: 164, column: 2, scope: !1590)
!1598 = !DILocation(line: 167, column: 7, scope: !1570)
!1599 = !DILocation(line: 167, column: 7, scope: !1590)
!1600 = distinct !DISubprogram(name: "~thread", linkageName: "_ZNSt6threadD2Ev", scope: !5, file: !4, line: 170, type: !26, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !32, retainedNodes: !154)
!1601 = !DILocalVariable(name: "this", arg: 1, scope: !1600, type: !1582, flags: DIFlagArtificial | DIFlagObjectPointer)
!1602 = !DILocation(line: 0, scope: !1600)
!1603 = !DILocation(line: 172, column: 11, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !4, line: 172, column: 11)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !4, line: 171, column: 5)
!1606 = !DILocation(line: 172, column: 11, scope: !1605)
!1607 = !DILocation(line: 322, column: 5, scope: !1608, inlinedAt: !1609)
!1608 = distinct !DISubprogram(name: "__terminate", linkageName: "_ZSt11__terminatev", scope: !392, file: !392, line: 319, type: !30, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1609 = distinct !DILocation(line: 173, column: 2, scope: !1604)
!1610 = !DILocation(line: 173, column: 2, scope: !1604)
!1611 = !DILocation(line: 174, column: 5, scope: !1600)
!1612 = distinct !DISubprogram(name: "main", scope: !1556, file: !1556, line: 13, type: !113, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1613 = !DILocation(line: 14, column: 5, scope: !1612)
!1614 = !DILocation(line: 16, column: 1, scope: !1612)
!1615 = distinct !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !5, file: !4, line: 196, type: !53, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !52, retainedNodes: !154)
!1616 = !DILocalVariable(name: "this", arg: 1, scope: !1615, type: !1617, flags: DIFlagArtificial | DIFlagObjectPointer)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1618 = !DILocation(line: 0, scope: !1615)
!1619 = !DILocation(line: 197, column: 16, scope: !1615)
!1620 = !DILocation(line: 197, column: 25, scope: !1615)
!1621 = !DILocation(line: 197, column: 22, scope: !1615)
!1622 = !DILocation(line: 197, column: 14, scope: !1615)
!1623 = !DILocation(line: 197, column: 7, scope: !1615)
!1624 = distinct !DISubprogram(name: "operator==", linkageName: "_ZSteqNSt6thread2idES0_", scope: !6, file: !4, line: 324, type: !1625, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !154)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!55, !9, !9}
!1627 = !DILocalVariable(name: "__x", arg: 1, scope: !1624, file: !4, line: 324, type: !9)
!1628 = !DILocation(line: 324, column: 25, scope: !1624)
!1629 = !DILocalVariable(name: "__y", arg: 2, scope: !1624, file: !4, line: 324, type: !9)
!1630 = !DILocation(line: 324, column: 41, scope: !1624)
!1631 = !DILocation(line: 330, column: 16, scope: !1624)
!1632 = !DILocation(line: 330, column: 33, scope: !1624)
!1633 = !DILocation(line: 330, column: 26, scope: !1624)
!1634 = !DILocation(line: 330, column: 5, scope: !1624)
!1635 = distinct !DISubprogram(name: "id", linkageName: "_ZNSt6thread2idC2Ev", scope: !9, file: !4, line: 97, type: !19, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !18, retainedNodes: !154)
!1636 = !DILocalVariable(name: "this", arg: 1, scope: !1635, type: !1637, flags: DIFlagArtificial | DIFlagObjectPointer)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1638 = !DILocation(line: 0, scope: !1635)
!1639 = !DILocation(line: 97, column: 23, scope: !1635)
!1640 = !DILocation(line: 97, column: 37, scope: !1635)
!1641 = distinct !DISubprogram(name: "forward<void (&)(int)>", linkageName: "_ZSt7forwardIRFviEEOT_RNSt16remove_referenceIS2_E4typeE", scope: !6, file: !1642, line: 70, type: !1643, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1648, retainedNodes: !154)
!1642 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/move.h", directory: "", checksumkind: CSK_MD5, checksum: "666aabd4a7b2d63fc1081b35311b7ac1")
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1573, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1647, file: !307, line: 1620, baseType: !451)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (&)(int)>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1648, identifier: "_ZTSSt16remove_referenceIRFviEE")
!1648 = !{!1649}
!1649 = !DITemplateTypeParameter(name: "_Tp", type: !1573)
!1650 = !DILocalVariable(name: "__t", arg: 1, scope: !1641, file: !1642, line: 70, type: !1645)
!1651 = !DILocation(line: 70, column: 56, scope: !1641)
!1652 = !DILocation(line: 71, column: 33, scope: !1641)
!1653 = !DILocation(line: 71, column: 7, scope: !1641)
!1654 = distinct !DISubprogram(name: "forward<int &>", linkageName: "_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE", scope: !6, file: !1642, line: 70, type: !1655, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1660, retainedNodes: !154)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!509, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1659, file: !307, line: 1620, baseType: !115)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int &>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1660, identifier: "_ZTSSt16remove_referenceIRiE")
!1660 = !{!1661}
!1661 = !DITemplateTypeParameter(name: "_Tp", type: !509)
!1662 = !DILocalVariable(name: "__t", arg: 1, scope: !1654, file: !1642, line: 70, type: !1657)
!1663 = !DILocation(line: 70, column: 56, scope: !1654)
!1664 = !DILocation(line: 71, column: 33, scope: !1654)
!1665 = !DILocation(line: 71, column: 7, scope: !1654)
!1666 = distinct !DISubprogram(name: "_State_impl<void (&)(int), int &>", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEEC2IJRS3_RiEEEDpOT_", scope: !466, file: !4, line: 239, type: !1667, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1670, declaration: !1669, retainedNodes: !154)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !660, !1573, !509}
!1669 = !DISubprogram(name: "_State_impl<void (&)(int), int &>", scope: !466, file: !4, line: 239, type: !1667, scopeLine: 239, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1670)
!1670 = !{!1671}
!1671 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !1672)
!1672 = !{!1673, !1579}
!1673 = !DITemplateTypeParameter(type: !1573)
!1674 = !DILocalVariable(name: "this", arg: 1, scope: !1666, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1676 = !DILocation(line: 0, scope: !1666)
!1677 = !DILocalVariable(name: "__args", arg: 2, scope: !1666, file: !4, line: 239, type: !1573)
!1678 = !DILocation(line: 239, column: 27, scope: !1666)
!1679 = !DILocalVariable(name: "__args", arg: 3, scope: !1666, file: !4, line: 239, type: !509)
!1680 = !DILocation(line: 241, column: 4, scope: !1666)
!1681 = !DILocation(line: 239, column: 4, scope: !1666)
!1682 = !DILocation(line: 240, column: 6, scope: !1666)
!1683 = !DILocation(line: 240, column: 34, scope: !1666)
!1684 = !DILocation(line: 240, column: 14, scope: !1666)
!1685 = !DILocation(line: 241, column: 6, scope: !1666)
!1686 = !DILocation(line: 241, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1666, file: !4, line: 241, column: 4)
!1688 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_", scope: !73, file: !74, line: 317, type: !428, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1690, declaration: !1689, retainedNodes: !154)
!1689 = !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", scope: !73, file: !74, line: 317, type: !428, scopeLine: 317, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1690)
!1690 = !{!1691, !1580}
!1691 = !DITemplateTypeParameter(name: "_Del", type: !96)
!1692 = !DILocalVariable(name: "this", arg: 1, scope: !1688, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1694 = !DILocation(line: 0, scope: !1688)
!1695 = !DILocalVariable(name: "__p", arg: 2, scope: !1688, file: !74, line: 317, type: !409)
!1696 = !DILocation(line: 317, column: 21, scope: !1688)
!1697 = !DILocation(line: 318, column: 4, scope: !1688)
!1698 = !DILocation(line: 318, column: 9, scope: !1688)
!1699 = !DILocation(line: 319, column: 11, scope: !1688)
!1700 = distinct !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !5, file: !4, line: 143, type: !30, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !29, retainedNodes: !154)
!1701 = !DILocation(line: 145, column: 7, scope: !1700)
!1702 = !DILocation(line: 146, column: 7, scope: !1700)
!1703 = !DILocation(line: 148, column: 5, scope: !1700)
!1704 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev", scope: !73, file: !74, line: 398, type: !382, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !381, retainedNodes: !154)
!1705 = !DILocalVariable(name: "this", arg: 1, scope: !1704, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1706 = !DILocation(line: 0, scope: !1704)
!1707 = !DILocalVariable(name: "__ptr", scope: !1708, file: !74, line: 402, type: !345)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !74, line: 399, column: 7)
!1709 = !DILocation(line: 402, column: 8, scope: !1708)
!1710 = !DILocation(line: 402, column: 16, scope: !1708)
!1711 = !DILocation(line: 402, column: 21, scope: !1708)
!1712 = !DILocation(line: 403, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !74, line: 403, column: 6)
!1714 = !DILocation(line: 403, column: 12, scope: !1713)
!1715 = !DILocation(line: 403, column: 6, scope: !1708)
!1716 = !DILocation(line: 404, column: 4, scope: !1713)
!1717 = !DILocation(line: 404, column: 28, scope: !1713)
!1718 = !DILocation(line: 404, column: 18, scope: !1713)
!1719 = !DILocation(line: 405, column: 2, scope: !1708)
!1720 = !DILocation(line: 405, column: 8, scope: !1708)
!1721 = !DILocation(line: 406, column: 7, scope: !1704)
!1722 = distinct !DISubprogram(name: "_State", linkageName: "_ZNSt6thread6_StateC2Ev", scope: !108, file: !4, line: 225, type: !117, scopeLine: 225, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1723, retainedNodes: !154)
!1723 = !DISubprogram(name: "_State", scope: !108, type: !117, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1724 = !DILocalVariable(name: "this", arg: 1, scope: !1722, type: !107, flags: DIFlagArtificial | DIFlagObjectPointer)
!1725 = !DILocation(line: 0, scope: !1722)
!1726 = !DILocation(line: 225, column: 12, scope: !1722)
!1727 = distinct !DISubprogram(name: "_Invoker<void (&)(int), int &>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEC2IJRS2_RiEEEDpOT_", scope: !470, file: !4, line: 276, type: !1728, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1670, declaration: !1730, retainedNodes: !154)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !654, !1573, !509}
!1730 = !DISubprogram(name: "_Invoker<void (&)(int), int &>", scope: !470, file: !4, line: 276, type: !1728, scopeLine: 276, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1670)
!1731 = !DILocalVariable(name: "this", arg: 1, scope: !1727, type: !1732, flags: DIFlagArtificial | DIFlagObjectPointer)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!1733 = !DILocation(line: 0, scope: !1727)
!1734 = !DILocalVariable(name: "__args", arg: 2, scope: !1727, file: !4, line: 276, type: !1573)
!1735 = !DILocation(line: 276, column: 24, scope: !1727)
!1736 = !DILocalVariable(name: "__args", arg: 3, scope: !1727, file: !4, line: 276, type: !509)
!1737 = !DILocation(line: 277, column: 6, scope: !1727)
!1738 = !DILocation(line: 277, column: 31, scope: !1727)
!1739 = !DILocation(line: 277, column: 11, scope: !1727)
!1740 = !DILocation(line: 278, column: 6, scope: !1727)
!1741 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED2Ev", scope: !466, file: !4, line: 234, type: !658, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1742, retainedNodes: !154)
!1742 = !DISubprogram(name: "~_State_impl", scope: !466, type: !658, containingType: !466, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1743 = !DILocalVariable(name: "this", arg: 1, scope: !1741, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1744 = !DILocation(line: 0, scope: !1741)
!1745 = !DILocation(line: 234, column: 14, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !4, line: 234, column: 14)
!1747 = !DILocation(line: 234, column: 14, scope: !1741)
!1748 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEED0Ev", scope: !466, file: !4, line: 234, type: !658, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !1742, retainedNodes: !154)
!1749 = !DILocalVariable(name: "this", arg: 1, scope: !1748, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1750 = !DILocation(line: 0, scope: !1748)
!1751 = !DILocation(line: 234, column: 14, scope: !1748)
!1752 = distinct !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFviEiEEEEE6_M_runEv", scope: !466, file: !4, line: 244, type: !658, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !657, retainedNodes: !154)
!1753 = !DILocalVariable(name: "this", arg: 1, scope: !1752, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1754 = !DILocation(line: 0, scope: !1752)
!1755 = !DILocation(line: 244, column: 13, scope: !1752)
!1756 = !DILocation(line: 244, column: 24, scope: !1752)
!1757 = distinct !DISubprogram(name: "tuple<void (&)(int), int &, true>", linkageName: "_ZNSt5tupleIJPFviEiEEC2IRS0_RiLb1EEEOT_OT0_", scope: !473, file: !84, line: 1338, type: !1758, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1761, declaration: !1760, retainedNodes: !154)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !629, !1573, !509}
!1760 = !DISubprogram(name: "tuple<void (&)(int), int &, true>", scope: !473, file: !84, line: 1338, type: !1758, scopeLine: 1338, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DITemplateTypeParameter(name: "_U1", type: !1573)
!1763 = !DITemplateTypeParameter(name: "_U2", type: !509)
!1764 = !DITemplateValueParameter(type: !55, defaulted: true, value: i8 1)
!1765 = !DILocalVariable(name: "this", arg: 1, scope: !1757, type: !1766, flags: DIFlagArtificial | DIFlagObjectPointer)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1767 = !DILocation(line: 0, scope: !1757)
!1768 = !DILocalVariable(name: "__a1", arg: 2, scope: !1757, file: !84, line: 1338, type: !1573)
!1769 = !DILocation(line: 1338, column: 14, scope: !1757)
!1770 = !DILocalVariable(name: "__a2", arg: 3, scope: !1757, file: !84, line: 1338, type: !509)
!1771 = !DILocation(line: 1338, column: 26, scope: !1757)
!1772 = !DILocation(line: 1340, column: 65, scope: !1757)
!1773 = !DILocation(line: 1340, column: 33, scope: !1757)
!1774 = !DILocation(line: 1340, column: 15, scope: !1757)
!1775 = !DILocation(line: 1340, column: 58, scope: !1757)
!1776 = !DILocation(line: 1340, column: 40, scope: !1757)
!1777 = !DILocation(line: 1340, column: 4, scope: !1757)
!1778 = !DILocation(line: 1340, column: 67, scope: !1757)
!1779 = distinct !DISubprogram(name: "_Tuple_impl<void (&)(int), int &, void>", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEEC2IRS0_JRiEvEEOT_DpOT0_", scope: !476, file: !84, line: 291, type: !1780, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1783, declaration: !1782, retainedNodes: !154)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !604, !1573, !509}
!1782 = !DISubprogram(name: "_Tuple_impl<void (&)(int), int &, void>", scope: !476, file: !84, line: 291, type: !1780, scopeLine: 291, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1783)
!1783 = !{!1784, !1785, !1580}
!1784 = !DITemplateTypeParameter(name: "_UHead", type: !1573)
!1785 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UTail", value: !1578)
!1786 = !DILocalVariable(name: "this", arg: 1, scope: !1779, type: !1787, flags: DIFlagArtificial | DIFlagObjectPointer)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!1788 = !DILocation(line: 0, scope: !1779)
!1789 = !DILocalVariable(name: "__head", arg: 2, scope: !1779, file: !84, line: 291, type: !1573)
!1790 = !DILocation(line: 291, column: 23, scope: !1779)
!1791 = !DILocalVariable(name: "__tail", arg: 3, scope: !1779, file: !84, line: 291, type: !509)
!1792 = !DILocation(line: 291, column: 43, scope: !1779)
!1793 = !DILocation(line: 294, column: 2, scope: !1779)
!1794 = !DILocation(line: 292, column: 36, scope: !1779)
!1795 = !DILocation(line: 292, column: 15, scope: !1779)
!1796 = !DILocation(line: 292, column: 4, scope: !1779)
!1797 = !DILocation(line: 293, column: 31, scope: !1779)
!1798 = !DILocation(line: 293, column: 10, scope: !1779)
!1799 = !DILocation(line: 293, column: 4, scope: !1779)
!1800 = !DILocation(line: 294, column: 4, scope: !1779)
!1801 = distinct !DISubprogram(name: "_Tuple_impl<int &>", linkageName: "_ZNSt11_Tuple_implILm1EJiEEC2IRiEEOT_", scope: !479, file: !84, line: 513, type: !1802, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1805, declaration: !1804, retainedNodes: !154)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !528, !509}
!1804 = !DISubprogram(name: "_Tuple_impl<int &>", scope: !479, file: !84, line: 513, type: !1802, scopeLine: 513, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1805)
!1805 = !{!1806}
!1806 = !DITemplateTypeParameter(name: "_UHead", type: !509)
!1807 = !DILocalVariable(name: "this", arg: 1, scope: !1801, type: !1808, flags: DIFlagArtificial | DIFlagObjectPointer)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1809 = !DILocation(line: 0, scope: !1801)
!1810 = !DILocalVariable(name: "__head", arg: 2, scope: !1801, file: !84, line: 513, type: !509)
!1811 = !DILocation(line: 513, column: 23, scope: !1801)
!1812 = !DILocation(line: 515, column: 2, scope: !1801)
!1813 = !DILocation(line: 514, column: 31, scope: !1801)
!1814 = !DILocation(line: 514, column: 10, scope: !1801)
!1815 = !DILocation(line: 514, column: 4, scope: !1801)
!1816 = !DILocation(line: 515, column: 4, scope: !1801)
!1817 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPFviELb0EEC2ERKS1_", scope: !548, file: !84, line: 193, type: !556, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !555, retainedNodes: !154)
!1818 = !DILocalVariable(name: "this", arg: 1, scope: !1817, type: !1819, flags: DIFlagArtificial | DIFlagObjectPointer)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1820 = !DILocation(line: 0, scope: !1817)
!1821 = !DILocalVariable(name: "__h", arg: 2, scope: !1817, file: !84, line: 193, type: !558)
!1822 = !DILocation(line: 193, column: 41, scope: !1817)
!1823 = !DILocation(line: 194, column: 9, scope: !1817)
!1824 = !DILocation(line: 194, column: 22, scope: !1817)
!1825 = !DILocation(line: 194, column: 29, scope: !1817)
!1826 = distinct !DISubprogram(name: "_Head_base<int &>", linkageName: "_ZNSt10_Head_baseILm1EiLb0EEC2IRiEEOT_", scope: !482, file: !84, line: 200, type: !1827, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1805, declaration: !1829, retainedNodes: !154)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !488, !509}
!1829 = !DISubprogram(name: "_Head_base<int &>", scope: !482, file: !84, line: 200, type: !1827, scopeLine: 200, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1805)
!1830 = !DILocalVariable(name: "this", arg: 1, scope: !1826, type: !1831, flags: DIFlagArtificial | DIFlagObjectPointer)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1832 = !DILocation(line: 0, scope: !1826)
!1833 = !DILocalVariable(name: "__h", arg: 2, scope: !1826, file: !84, line: 200, type: !509)
!1834 = !DILocation(line: 200, column: 39, scope: !1826)
!1835 = !DILocation(line: 201, column: 4, scope: !1826)
!1836 = !DILocation(line: 201, column: 38, scope: !1826)
!1837 = !DILocation(line: 201, column: 17, scope: !1826)
!1838 = !DILocation(line: 201, column: 46, scope: !1826)
!1839 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEEclEv", scope: !470, file: !4, line: 295, type: !652, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !651, retainedNodes: !154)
!1840 = !DILocalVariable(name: "this", arg: 1, scope: !1839, type: !1732, flags: DIFlagArtificial | DIFlagObjectPointer)
!1841 = !DILocation(line: 0, scope: !1839)
!1842 = !DILocation(line: 299, column: 11, scope: !1839)
!1843 = !DILocation(line: 299, column: 4, scope: !1839)
!1844 = distinct !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !470, file: !4, line: 291, type: !1845, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1855, declaration: !1854, retainedNodes: !154)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!445, !654, !1847}
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Index_tuple<0UL, 1UL>", scope: !6, file: !1848, line: 140, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1849, identifier: "_ZTSSt12_Index_tupleIJLm0ELm1EEE")
!1848 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/utility.h", directory: "")
!1849 = !{!1850}
!1850 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indexes", value: !1851)
!1851 = !{!1852, !1853}
!1852 = !DITemplateValueParameter(type: !17, value: i64 0)
!1853 = !DITemplateValueParameter(type: !17, value: i64 1)
!1854 = !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFviEiEEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !470, file: !4, line: 291, type: !1845, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1855)
!1855 = !{!1856}
!1856 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ind", value: !1851)
!1857 = !DILocalVariable(name: "this", arg: 1, scope: !1844, type: !1732, flags: DIFlagArtificial | DIFlagObjectPointer)
!1858 = !DILocation(line: 0, scope: !1844)
!1859 = !DILocalVariable(arg: 2, scope: !1844, file: !4, line: 291, type: !1847)
!1860 = !DILocation(line: 291, column: 35, scope: !1844)
!1861 = !DILocation(line: 292, column: 52, scope: !1844)
!1862 = !DILocation(line: 292, column: 42, scope: !1844)
!1863 = !DILocation(line: 292, column: 27, scope: !1844)
!1864 = !DILocation(line: 292, column: 13, scope: !1844)
!1865 = !DILocation(line: 292, column: 6, scope: !1844)
!1866 = !DILocalVariable(name: "__fn", arg: 1, scope: !442, file: !441, line: 90, type: !449)
!1867 = !DILocation(line: 90, column: 26, scope: !442)
!1868 = !DILocalVariable(name: "__args", arg: 2, scope: !442, file: !441, line: 90, type: !453)
!1869 = !DILocation(line: 90, column: 43, scope: !442)
!1870 = !DILocation(line: 96, column: 74, scope: !442)
!1871 = !DILocation(line: 96, column: 50, scope: !442)
!1872 = !DILocation(line: 97, column: 26, scope: !442)
!1873 = !DILocation(line: 97, column: 6, scope: !442)
!1874 = !DILocation(line: 96, column: 14, scope: !442)
!1875 = !DILocation(line: 96, column: 7, scope: !442)
!1876 = distinct !DISubprogram(name: "get<0UL, void (*)(int), int>", linkageName: "_ZSt3getILm0EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_", scope: !6, file: !84, line: 1801, type: !1877, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1891, retainedNodes: !154)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1879, !635}
!1879 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<void (*)(int), int> >", scope: !6, file: !1848, line: 84, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1882, file: !84, line: 1768, baseType: !1886)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<void (*)(int), int> >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1883, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPFviEiEEE")
!1883 = !{!1884, !1885}
!1884 = !DITemplateValueParameter(name: "__i", type: !17, value: i64 0)
!1885 = !DITemplateTypeParameter(name: "_Tp", type: !473)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1887, file: !1848, line: 255, baseType: !450)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, void (*)(int), int>", scope: !6, file: !1848, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1888, identifier: "_ZTSSt9_Nth_typeILm0EJPFviEiEE")
!1888 = !{!1889, !1890}
!1889 = !DITemplateValueParameter(name: "_Np", type: !17, value: i64 0)
!1890 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !623)
!1891 = !{!1884, !622}
!1892 = !DILocalVariable(name: "__t", arg: 1, scope: !1876, file: !84, line: 1801, type: !635)
!1893 = !DILocation(line: 1801, column: 31, scope: !1876)
!1894 = !DILocation(line: 1804, column: 66, scope: !1876)
!1895 = !DILocation(line: 1804, column: 43, scope: !1876)
!1896 = !DILocation(line: 1804, column: 14, scope: !1876)
!1897 = !DILocation(line: 1804, column: 7, scope: !1876)
!1898 = distinct !DISubprogram(name: "move<std::tuple<void (*)(int), int> &>", linkageName: "_ZSt4moveIRSt5tupleIJPFviEiEEEONSt16remove_referenceIT_E4typeEOS6_", scope: !6, file: !1642, line: 97, type: !1899, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1904, retainedNodes: !154)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1901, !639}
!1901 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1903, file: !307, line: 1620, baseType: !473)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::tuple<void (*)(int), int> &>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1904, identifier: "_ZTSSt16remove_referenceIRSt5tupleIJPFviEiEEE")
!1904 = !{!1905}
!1905 = !DITemplateTypeParameter(name: "_Tp", type: !639)
!1906 = !DILocalVariable(name: "__t", arg: 1, scope: !1898, file: !1642, line: 97, type: !639)
!1907 = !DILocation(line: 97, column: 16, scope: !1898)
!1908 = !DILocation(line: 98, column: 71, scope: !1898)
!1909 = !DILocation(line: 98, column: 7, scope: !1898)
!1910 = distinct !DISubprogram(name: "get<1UL, void (*)(int), int>", linkageName: "_ZSt3getILm1EJPFviEiEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_", scope: !6, file: !84, line: 1801, type: !1911, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1923, retainedNodes: !154)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!1913, !635}
!1913 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<void (*)(int), int> >", scope: !6, file: !1848, line: 84, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1916, file: !84, line: 1768, baseType: !1919)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<void (*)(int), int> >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1917, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPFviEiEEE")
!1917 = !{!1918, !1885}
!1918 = !DITemplateValueParameter(name: "__i", type: !17, value: i64 1)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1920, file: !1848, line: 237, baseType: !115)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, void (*)(int), int>", scope: !6, file: !1848, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1921, identifier: "_ZTSSt9_Nth_typeILm1EJPFviEiEE")
!1921 = !{!1922, !1890}
!1922 = !DITemplateValueParameter(name: "_Np", type: !17, value: i64 1)
!1923 = !{!1918, !622}
!1924 = !DILocalVariable(name: "__t", arg: 1, scope: !1910, file: !84, line: 1801, type: !635)
!1925 = !DILocation(line: 1801, column: 31, scope: !1910)
!1926 = !DILocation(line: 1804, column: 66, scope: !1910)
!1927 = !DILocation(line: 1804, column: 43, scope: !1910)
!1928 = !DILocation(line: 1804, column: 14, scope: !1910)
!1929 = !DILocation(line: 1804, column: 7, scope: !1910)
!1930 = distinct !DISubprogram(name: "__invoke_impl<void, void (*)(int), int>", linkageName: "_ZSt13__invoke_implIvPFviEJiEET_St14__invoke_otherOT0_DpOT1_", scope: !6, file: !441, line: 60, type: !1931, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1933, retainedNodes: !154)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !465, !449, !453}
!1933 = !{!1934, !1935, !456}
!1934 = !DITemplateTypeParameter(name: "_Res", type: null)
!1935 = !DITemplateTypeParameter(name: "_Fn", type: !450)
!1936 = !DILocalVariable(arg: 1, scope: !1930, file: !441, line: 60, type: !465)
!1937 = !DILocation(line: 60, column: 33, scope: !1930)
!1938 = !DILocalVariable(name: "__f", arg: 2, scope: !1930, file: !441, line: 60, type: !449)
!1939 = !DILocation(line: 60, column: 41, scope: !1930)
!1940 = !DILocalVariable(name: "__args", arg: 3, scope: !1930, file: !441, line: 60, type: !453)
!1941 = !DILocation(line: 60, column: 57, scope: !1930)
!1942 = !DILocation(line: 61, column: 32, scope: !1930)
!1943 = !DILocation(line: 61, column: 14, scope: !1930)
!1944 = !DILocation(line: 61, column: 57, scope: !1930)
!1945 = !DILocation(line: 61, column: 37, scope: !1930)
!1946 = !DILocation(line: 61, column: 7, scope: !1930)
!1947 = distinct !DISubprogram(name: "forward<void (*)(int)>", linkageName: "_ZSt7forwardIPFviEEOT_RNSt16remove_referenceIS2_E4typeE", scope: !6, file: !1642, line: 70, type: !1948, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1953, retainedNodes: !154)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!449, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1952, file: !307, line: 1616, baseType: !450)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*)(int)>", scope: !6, file: !307, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1953, identifier: "_ZTSSt16remove_referenceIPFviEE")
!1953 = !{!1954}
!1954 = !DITemplateTypeParameter(name: "_Tp", type: !450)
!1955 = !DILocalVariable(name: "__t", arg: 1, scope: !1947, file: !1642, line: 70, type: !1950)
!1956 = !DILocation(line: 70, column: 56, scope: !1947)
!1957 = !DILocation(line: 71, column: 33, scope: !1947)
!1958 = !DILocation(line: 71, column: 7, scope: !1947)
!1959 = distinct !DISubprogram(name: "forward<int>", linkageName: "_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE", scope: !6, file: !1642, line: 70, type: !1960, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1965, retainedNodes: !154)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!453, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1964, file: !307, line: 1616, baseType: !115)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int>", scope: !6, file: !307, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !1965, identifier: "_ZTSSt16remove_referenceIiE")
!1965 = !{!1966}
!1966 = !DITemplateTypeParameter(name: "_Tp", type: !115)
!1967 = !DILocalVariable(name: "__t", arg: 1, scope: !1959, file: !1642, line: 70, type: !1962)
!1968 = !DILocation(line: 70, column: 56, scope: !1959)
!1969 = !DILocation(line: 71, column: 33, scope: !1959)
!1970 = !DILocation(line: 71, column: 7, scope: !1959)
!1971 = distinct !DISubprogram(name: "__get_helper<0UL, void (*)(int), int>", linkageName: "_ZSt12__get_helperILm0EPFviEJiEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE", scope: !6, file: !84, line: 1773, type: !583, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1972, retainedNodes: !154)
!1972 = !{!1884, !581, !1973}
!1973 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !457)
!1974 = !DILocalVariable(name: "__t", arg: 1, scope: !1971, file: !84, line: 1773, type: !585)
!1975 = !DILocation(line: 1773, column: 53, scope: !1971)
!1976 = !DILocation(line: 1774, column: 57, scope: !1971)
!1977 = !DILocation(line: 1774, column: 14, scope: !1971)
!1978 = !DILocation(line: 1774, column: 7, scope: !1971)
!1979 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFviEiEE7_M_headERS2_", scope: !476, file: !84, line: 269, type: !583, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !582, retainedNodes: !154)
!1980 = !DILocalVariable(name: "__t", arg: 1, scope: !1979, file: !84, line: 269, type: !585)
!1981 = !DILocation(line: 269, column: 28, scope: !1979)
!1982 = !DILocation(line: 269, column: 66, scope: !1979)
!1983 = !DILocation(line: 269, column: 51, scope: !1979)
!1984 = !DILocation(line: 269, column: 44, scope: !1979)
!1985 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFviELb0EE7_M_headERS2_", scope: !548, file: !84, line: 234, type: !573, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !572, retainedNodes: !154)
!1986 = !DILocalVariable(name: "__b", arg: 1, scope: !1985, file: !84, line: 234, type: !576)
!1987 = !DILocation(line: 234, column: 27, scope: !1985)
!1988 = !DILocation(line: 234, column: 50, scope: !1985)
!1989 = !DILocation(line: 234, column: 54, scope: !1985)
!1990 = !DILocation(line: 234, column: 43, scope: !1985)
!1991 = distinct !DISubprogram(name: "__get_helper<1UL, int>", linkageName: "_ZSt12__get_helperILm1EiJEERT0_RSt11_Tuple_implIXT_EJS0_DpT1_EE", scope: !6, file: !84, line: 1773, type: !517, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !1992, retainedNodes: !154)
!1992 = !{!1918, !515, !1993}
!1993 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !154)
!1994 = !DILocalVariable(name: "__t", arg: 1, scope: !1991, file: !84, line: 1773, type: !519)
!1995 = !DILocation(line: 1773, column: 53, scope: !1991)
!1996 = !DILocation(line: 1774, column: 57, scope: !1991)
!1997 = !DILocation(line: 1774, column: 14, scope: !1991)
!1998 = !DILocation(line: 1774, column: 7, scope: !1991)
!1999 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJiEE7_M_headERS0_", scope: !479, file: !84, line: 497, type: !517, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !516, retainedNodes: !154)
!2000 = !DILocalVariable(name: "__t", arg: 1, scope: !1999, file: !84, line: 497, type: !519)
!2001 = !DILocation(line: 497, column: 28, scope: !1999)
!2002 = !DILocation(line: 497, column: 66, scope: !1999)
!2003 = !DILocation(line: 497, column: 51, scope: !1999)
!2004 = !DILocation(line: 497, column: 44, scope: !1999)
!2005 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EiLb0EE7_M_headERS0_", scope: !482, file: !84, line: 234, type: !507, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !506, retainedNodes: !154)
!2006 = !DILocalVariable(name: "__b", arg: 1, scope: !2005, file: !84, line: 234, type: !510)
!2007 = !DILocation(line: 234, column: 27, scope: !2005)
!2008 = !DILocation(line: 234, column: 50, scope: !2005)
!2009 = !DILocation(line: 234, column: 54, scope: !2005)
!2010 = !DILocation(line: 234, column: 43, scope: !2005)
!2011 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_", scope: !77, file: !74, line: 241, type: !2012, scopeLine: 241, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !2014, retainedNodes: !154)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !369, !327}
!2014 = !DISubprogram(name: "__uniq_ptr_impl", scope: !77, type: !2012, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2015 = !DILocalVariable(name: "this", arg: 1, scope: !2011, type: !2016, flags: DIFlagArtificial | DIFlagObjectPointer)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2017 = !DILocation(line: 0, scope: !2011)
!2018 = !DILocalVariable(arg: 2, scope: !2011, type: !327, flags: DIFlagArtificial)
!2019 = !DILocation(line: 241, column: 40, scope: !2011)
!2020 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_", scope: !80, file: !74, line: 176, type: !325, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !324, retainedNodes: !154)
!2021 = !DILocalVariable(name: "this", arg: 1, scope: !2020, type: !2022, flags: DIFlagArtificial | DIFlagObjectPointer)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2023 = !DILocation(line: 0, scope: !2020)
!2024 = !DILocalVariable(name: "__p", arg: 2, scope: !2020, file: !74, line: 176, type: !327)
!2025 = !DILocation(line: 176, column: 31, scope: !2020)
!2026 = !DILocation(line: 176, column: 38, scope: !2020)
!2027 = !DILocation(line: 176, column: 58, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2020, file: !74, line: 176, column: 45)
!2029 = !DILocation(line: 176, column: 47, scope: !2028)
!2030 = !DILocation(line: 176, column: 56, scope: !2028)
!2031 = !DILocation(line: 176, column: 63, scope: !2020)
!2032 = distinct !DISubprogram(name: "tuple<true, true>", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv", scope: !83, file: !84, line: 1310, type: !2033, scopeLine: 1312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2036, declaration: !2035, retainedNodes: !154)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !295}
!2035 = !DISubprogram(name: "tuple<true, true>", scope: !83, file: !84, line: 1310, type: !2033, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2036)
!2036 = !{!2037, !1764}
!2037 = !DITemplateValueParameter(name: "_Dummy", type: !55, defaulted: true, value: i8 1)
!2038 = !DILocalVariable(name: "this", arg: 1, scope: !2032, type: !2039, flags: DIFlagArtificial | DIFlagObjectPointer)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2040 = !DILocation(line: 0, scope: !2032)
!2041 = !DILocation(line: 1312, column: 17, scope: !2032)
!2042 = !DILocation(line: 1312, column: 4, scope: !2032)
!2043 = !DILocation(line: 1312, column: 19, scope: !2032)
!2044 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !80, file: !74, line: 197, type: !343, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !342, retainedNodes: !154)
!2045 = !DILocalVariable(name: "this", arg: 1, scope: !2044, type: !2022, flags: DIFlagArtificial | DIFlagObjectPointer)
!2046 = !DILocation(line: 0, scope: !2044)
!2047 = !DILocation(line: 197, column: 57, scope: !2044)
!2048 = !DILocation(line: 197, column: 45, scope: !2044)
!2049 = !DILocation(line: 197, column: 38, scope: !2044)
!2050 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev", scope: !87, file: !84, line: 280, type: !266, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !265, retainedNodes: !154)
!2051 = !DILocalVariable(name: "this", arg: 1, scope: !2050, type: !2052, flags: DIFlagArtificial | DIFlagObjectPointer)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2053 = !DILocation(line: 0, scope: !2050)
!2054 = !DILocation(line: 281, column: 31, scope: !2050)
!2055 = !DILocation(line: 281, column: 9, scope: !2050)
!2056 = !DILocation(line: 281, column: 23, scope: !2050)
!2057 = !DILocation(line: 281, column: 33, scope: !2050)
!2058 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev", scope: !90, file: !84, line: 503, type: !186, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !185, retainedNodes: !154)
!2059 = !DILocalVariable(name: "this", arg: 1, scope: !2058, type: !2060, flags: DIFlagArtificial | DIFlagObjectPointer)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2061 = !DILocation(line: 0, scope: !2058)
!2062 = !DILocation(line: 504, column: 17, scope: !2058)
!2063 = !DILocation(line: 504, column: 9, scope: !2058)
!2064 = !DILocation(line: 504, column: 19, scope: !2058)
!2065 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev", scope: !210, file: !84, line: 190, type: !214, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !213, retainedNodes: !154)
!2066 = !DILocalVariable(name: "this", arg: 1, scope: !2065, type: !2067, flags: DIFlagArtificial | DIFlagObjectPointer)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2068 = !DILocation(line: 0, scope: !2065)
!2069 = !DILocation(line: 191, column: 9, scope: !2065)
!2070 = !DILocation(line: 191, column: 26, scope: !2065)
!2071 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev", scope: !93, file: !84, line: 81, type: !124, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !123, retainedNodes: !154)
!2072 = !DILocalVariable(name: "this", arg: 1, scope: !2071, type: !2073, flags: DIFlagArtificial | DIFlagObjectPointer)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocation(line: 82, column: 9, scope: !2071)
!2076 = !DILocation(line: 82, column: 26, scope: !2071)
!2077 = distinct !DISubprogram(name: "get<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !6, file: !84, line: 1789, type: !2078, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2090, retainedNodes: !154)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2080, !305}
!2080 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !1848, line: 84, baseType: !2082)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2083, file: !84, line: 1768, baseType: !2086)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2084, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2084 = !{!1884, !2085}
!2085 = !DITemplateTypeParameter(name: "_Tp", type: !83)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2087, file: !1848, line: 255, baseType: !107)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !1848, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2088, identifier: "_ZTSSt9_Nth_typeILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2088 = !{!1889, !2089}
!2089 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !287)
!2090 = !{!1884, !286}
!2091 = !DILocalVariable(name: "__t", arg: 1, scope: !2077, file: !84, line: 1789, type: !305)
!2092 = !DILocation(line: 1789, column: 30, scope: !2077)
!2093 = !DILocation(line: 1790, column: 37, scope: !2077)
!2094 = !DILocation(line: 1790, column: 14, scope: !2077)
!2095 = !DILocation(line: 1790, column: 7, scope: !2077)
!2096 = distinct !DISubprogram(name: "__get_helper<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE", scope: !6, file: !84, line: 1773, type: !247, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2097, retainedNodes: !154)
!2097 = !{!1884, !244, !2098}
!2098 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !207)
!2099 = !DILocalVariable(name: "__t", arg: 1, scope: !2096, file: !84, line: 1773, type: !249)
!2100 = !DILocation(line: 1773, column: 53, scope: !2096)
!2101 = !DILocation(line: 1774, column: 57, scope: !2096)
!2102 = !DILocation(line: 1774, column: 14, scope: !2096)
!2103 = !DILocation(line: 1774, column: 7, scope: !2096)
!2104 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !87, file: !84, line: 269, type: !247, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !246, retainedNodes: !154)
!2105 = !DILocalVariable(name: "__t", arg: 1, scope: !2104, file: !84, line: 269, type: !249)
!2106 = !DILocation(line: 269, column: 28, scope: !2104)
!2107 = !DILocation(line: 269, column: 66, scope: !2104)
!2108 = !DILocation(line: 269, column: 51, scope: !2104)
!2109 = !DILocation(line: 269, column: 44, scope: !2104)
!2110 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !210, file: !84, line: 234, type: !235, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !234, retainedNodes: !154)
!2111 = !DILocalVariable(name: "__b", arg: 1, scope: !2110, file: !84, line: 234, type: !238)
!2112 = !DILocation(line: 234, column: 27, scope: !2110)
!2113 = !DILocation(line: 234, column: 50, scope: !2110)
!2114 = !DILocation(line: 234, column: 54, scope: !2110)
!2115 = !DILocation(line: 234, column: 43, scope: !2110)
!2116 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !73, file: !74, line: 475, type: !412, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !411, retainedNodes: !154)
!2117 = !DILocalVariable(name: "this", arg: 1, scope: !2116, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!2118 = !DILocation(line: 0, scope: !2116)
!2119 = !DILocation(line: 476, column: 16, scope: !2116)
!2120 = !DILocation(line: 476, column: 21, scope: !2116)
!2121 = !DILocation(line: 476, column: 9, scope: !2116)
!2122 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !96, file: !74, line: 93, type: !103, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !102, retainedNodes: !154)
!2123 = !DILocalVariable(name: "this", arg: 1, scope: !2122, type: !2124, flags: DIFlagArtificial | DIFlagObjectPointer)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2125 = !DILocation(line: 0, scope: !2122)
!2126 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2122, file: !74, line: 93, type: !107)
!2127 = !DILocation(line: 93, column: 23, scope: !2122)
!2128 = !DILocation(line: 99, column: 9, scope: !2122)
!2129 = !DILocation(line: 99, column: 2, scope: !2122)
!2130 = !DILocation(line: 100, column: 7, scope: !2122)
!2131 = distinct !DISubprogram(name: "move<std::thread::_State *&>", linkageName: "_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_", scope: !6, file: !1642, line: 97, type: !2132, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2137, retainedNodes: !154)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2134, !237}
!2134 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2136, file: !307, line: 1620, baseType: !107)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::thread::_State *&>", scope: !6, file: !307, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2137, identifier: "_ZTSSt16remove_referenceIRPNSt6thread6_StateEE")
!2137 = !{!2138}
!2138 = !DITemplateTypeParameter(name: "_Tp", type: !237)
!2139 = !DILocalVariable(name: "__t", arg: 1, scope: !2131, file: !1642, line: 97, type: !237)
!2140 = !DILocation(line: 97, column: 16, scope: !2131)
!2141 = !DILocation(line: 98, column: 71, scope: !2131)
!2142 = !DILocation(line: 98, column: 7, scope: !2131)
!2143 = distinct !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !80, file: !74, line: 201, type: !352, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !351, retainedNodes: !154)
!2144 = !DILocalVariable(name: "this", arg: 1, scope: !2143, type: !2022, flags: DIFlagArtificial | DIFlagObjectPointer)
!2145 = !DILocation(line: 0, scope: !2143)
!2146 = !DILocation(line: 201, column: 61, scope: !2143)
!2147 = !DILocation(line: 201, column: 49, scope: !2143)
!2148 = !DILocation(line: 201, column: 42, scope: !2143)
!2149 = distinct !DISubprogram(name: "get<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !6, file: !84, line: 1789, type: !2150, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2160, retainedNodes: !154)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2152, !305}
!2152 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !1848, line: 84, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2155, file: !84, line: 1768, baseType: !2157)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !6, file: !84, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2156, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2156 = !{!1918, !2085}
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2158, file: !1848, line: 237, baseType: !96)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !6, file: !1848, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !154, templateParams: !2159, identifier: "_ZTSSt9_Nth_typeILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2159 = !{!1922, !2089}
!2160 = !{!1918, !286}
!2161 = !DILocalVariable(name: "__t", arg: 1, scope: !2149, file: !84, line: 1789, type: !305)
!2162 = !DILocation(line: 1789, column: 30, scope: !2149)
!2163 = !DILocation(line: 1790, column: 37, scope: !2149)
!2164 = !DILocation(line: 1790, column: 14, scope: !2149)
!2165 = !DILocation(line: 1790, column: 7, scope: !2149)
!2166 = distinct !DISubprogram(name: "__get_helper<1UL, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE", scope: !6, file: !84, line: 1773, type: !177, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !2167, retainedNodes: !154)
!2167 = !{!1918, !174, !1993}
!2168 = !DILocalVariable(name: "__t", arg: 1, scope: !2166, file: !84, line: 1773, type: !179)
!2169 = !DILocation(line: 1773, column: 53, scope: !2166)
!2170 = !DILocation(line: 1774, column: 57, scope: !2166)
!2171 = !DILocation(line: 1774, column: 14, scope: !2166)
!2172 = !DILocation(line: 1774, column: 7, scope: !2166)
!2173 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !90, file: !84, line: 497, type: !177, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !176, retainedNodes: !154)
!2174 = !DILocalVariable(name: "__t", arg: 1, scope: !2173, file: !84, line: 497, type: !179)
!2175 = !DILocation(line: 497, column: 28, scope: !2173)
!2176 = !DILocation(line: 497, column: 66, scope: !2173)
!2177 = !DILocation(line: 497, column: 51, scope: !2173)
!2178 = !DILocation(line: 497, column: 44, scope: !2173)
!2179 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !93, file: !84, line: 125, type: !165, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !164, retainedNodes: !154)
!2180 = !DILocalVariable(name: "__b", arg: 1, scope: !2179, file: !84, line: 125, type: !168)
!2181 = !DILocation(line: 125, column: 27, scope: !2179)
!2182 = !DILocation(line: 125, column: 50, scope: !2179)
!2183 = !DILocation(line: 125, column: 54, scope: !2179)
!2184 = !DILocation(line: 125, column: 43, scope: !2179)
